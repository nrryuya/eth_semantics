open Yojson.Basic
open TestResult
open Semantics
open Hextolistword
open VmTestParser

let rec toStorage_sem (storage_spec : (Big_int.big_int * string) list) (storage_sem : storage) : storage =
  match storage_spec with
    | [] -> storage_sem
    | (ind, value)::storage_spec' -> let indii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int ind) in
      let vali = parse_big_int_from_string value in
      let valii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int vali) in
      let storage_sem' = swrite storage_sem indii valii in
      toStorage_sem storage_spec' storage_sem'

let rec checkStorage_sem (storage_spec : (Big_int.big_int * string) list) (storage_sem : storage) : bool =
  match storage_spec with
    | [] -> true
    | (ind, value)::storage_spec' -> let indii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int ind) in
      let vali = parse_big_int_from_string value in
      let valii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int vali) in
      let storage_val_sem = storage_sem indii in
      if storage_val_sem = valii then checkStorage_sem storage_spec' storage_sem else false

let rec toGst_sem (pre : (string * account_state) list) (gst: gState): gState =
        match pre with
          | [] -> gst
          | (addr, acc_state)::pre' -> let addri = parse_big_int_from_string addr in
            let addrii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int addri) in
            let balance = Big_int_Z.big_int_of_string (Big_int.string_of_big_int acc_state.balance) in
            let nonce = Big_int_Z.big_int_of_string (Big_int.string_of_big_int acc_state.nonce) in
            let accCode = acc_state.code in
            let storage = toStorage_sem acc_state.storage emptyStorage in
            let account = Acc (nonce, balance, storage, accCode) in
            let gst = update gst addrii account in
            toGst_sem pre' gst

let rec checkGst_sem (post : (string * account_state) list) (gst: gState): bool =
  match post with
    | [] -> true
    | (addr, acc_state)::post' -> let addri = parse_big_int_from_string addr in
      let addrii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int addri) in
      let balance = Big_int_Z.big_int_of_string (Big_int.string_of_big_int acc_state.balance) in
      let nonce = Big_int_Z.big_int_of_string (Big_int.string_of_big_int acc_state.nonce) in
      let accCode = acc_state.code in
      let storage_spec = acc_state.storage in
      let account_sem = gst addrii in
      match account_sem with
        | None -> false
        | Some Acc (nonce', balance', storage', accCode') ->
          let checkS = checkStorage_sem storage_spec storage' in (* check the storage comparison *)
          let checkN = if nonce = nonce' then true else false in
          let checkB = if balance = balance' then true else false in
          let checkC =
            if accCode = accCode' then true else false in
          if (checkS && checkN && checkB && checkC) then checkGst_sem post' gst else false

let test_one_case label j : testResult =
  (try  let test_case :test_case = parse_test_case j in
  let initgas = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.gas) in
  let address = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.address) in
  let data = test_case.exec.data in
  let code = test_case.exec.code in
  let value = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.value) in
  let caller = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.caller) in
  let memory = emptyMem in
  let actwords = (Big_int_Z.big_int_of_int 0) in
  let mst = MState ((Big_int_Z.big_int_of_int 0), initgas, memory, actwords, []) in
  let exenv = ExEnv (address, data, caller, value, code) in
  let teff = TransEff ((Big_int_Z.big_int_of_int 0), [], []) in
  let pre = test_case.pre in
  let gst = toGst_sem pre emptyGState in
  let coinbase = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.env.currentCoinbase) in
  let difficulty = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.env.currentDifficulty) in
  let gaslimit = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.env.currentGasLimit) in
  let numberb = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.env.currentNumber) in
  let timestamp = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.env.currentTimestamp) in
  let origin = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.origin) in
  let gasprice = Big_int_Z.big_int_of_string (Big_int.string_of_big_int test_case.exec.gasPrice) in
  let blockhash = (match test_case.env.previousHash with
                    | None -> (Big_int_Z.big_int_of_int 0)
                    | Some bh -> Big_int_Z.big_int_of_string (Big_int.string_of_big_int bh)
                  ) in
  let blinfo = BlockInfo (blockhash, coinbase, timestamp, numberb, difficulty, gaslimit, origin, gasprice) in
  let exState = ExState (mst, exenv, gst, teff, blinfo) in
  let stack = StackCons (exState, StackNil) in
  let plainStack = Plain (stack) in
  let ret = execution plainStack in
  match ret with
    | Bot -> let () = Printf.printf "Bot termination, should never happen\n" in TestFailure
    | Reg (gst', teff', gas', data') ->
      let gasMatch =
      (match test_case.gas with
        | None ->   let () = Printf.printf "Reg termination but gas not specified\n" in false
        | Some g -> let gi = parse_big_int_from_string g in
                    let gii = Big_int_Z.big_int_of_string (Big_int.string_of_big_int gi) in
                    let giis = Big_int_Z.string_of_big_int gii in
                    let () = Printf.printf "Spec gas: %s\n" giis in
                    let g' = Big_int_Z.string_of_big_int gas' in
                    let () = Printf.printf "Computed gas: %s\n" g' in
                    if gas' = gii then true else false) in
      let outMatch = (* check the out match *)
      (match test_case.out with
        | None ->   let () = Printf.printf "Reg termination but out not specified\n" in false
        | Some o -> let () = Printf.printf "Spec out: %s\n" o in
                    let () = Printf.printf "Computed out: %s\n" data' in
                    if o = data' then true else false) in
      let post = test_case.post in
      let gstMatch =
        (match post with
          | None -> true
          | Some pst -> checkGst_sem pst gst') in
      (*if gasMatch && outMatch && gstMatch then TestSuccess else TestFailure*)
      if outMatch && gstMatch then TestSuccess else let () = Printf.printf "Storage don't match for test %s\n" label in TestFailure
    | Err -> let () = Printf.printf "Error termination\n" in
              let erOutMatch =
              (match test_case.out with
                  | None -> true
                  | Some o -> false) in
              let erGstMatch =
              (match test_case.post with
                | None -> true
                | Some pst -> false
              ) in
              if erOutMatch && erGstMatch then TestSuccess else TestSkipped
    with Failure str -> TestSkipped)

let test_one_file ((num_success : int ref), (num_failure : int ref), (num_skipped : int ref)) (case_name : string option) (path : string) : unit =
  let vm_arithmetic_test : json = Yojson.Basic.from_file path in
  let vm_arithmetic_test_assoc : (string * json) list = Util.to_assoc vm_arithmetic_test in
  let () =  List.iter
    (fun (label, j) ->
      let hit =
        match case_name with
        | Some search ->
           (try
             let _ = BatString.find label search in
             true
           with Not_found -> false)
        | None -> true
      in
      if hit then
        begin
          let () = Printf.printf "===========================test case: %s\n" label in
          match test_one_case label j with
          | TestSuccess -> num_success := !num_success + 1
          | TestFailure -> num_failure := !num_failure + 1
          | TestSkipped -> num_skipped := !num_skipped + 1
        end
    )
    vm_arithmetic_test_assoc in
  ()

let () =
  let case_name : string option =
    if Array.length BatSys.argv > 1 then Some (Array.get BatSys.argv 1) else None in
  let num_success = ref 0 in
  let num_failure = ref 0 in
  let num_skipped = ref 0 in
  let counters = (num_success, num_failure, num_skipped) in
  let () = TraverseJsons.traverse "../tests/VMTests" (test_one_file counters case_name) in
  let () = Printf.printf "success: %i\n" !num_success in
  let () = Printf.printf "failure: %i\n" !num_failure in
  let () = Printf.printf "skipped: %i\n" !num_skipped in
  ()
