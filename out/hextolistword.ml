open Keccak
open Evm
open Semantics
open Word256
open Conv

module IntMap = BatMap.Make(BatInt)

let empty_program : program = []

let rec add_unknown_bytes_from (lst : byte list) (orig : program) : program =
  match lst with
  | [] -> orig
  | h :: t ->
     add_unknown_bytes_from t ((Big_int_Z.big_int_of_int 256)::orig)

(** The payload of PUSH instructions are stored as Unknown *)
let store_instruction (inst : inst) (orig : program) : program =
  match inst with
    | Misc STOP -> (Big_int_Z.big_int_of_int 0)::orig
    | Arith ADD -> (Big_int_Z.big_int_of_int 1)::orig
    | Arith MUL -> (Big_int_Z.big_int_of_int 2)::orig
    | Arith SUB -> (Big_int_Z.big_int_of_int 3)::orig
    | Arith DIV -> (Big_int_Z.big_int_of_int 4)::orig
    | Sarith SDIV -> (Big_int_Z.big_int_of_int 5)::orig
    | Arith MOD -> (Big_int_Z.big_int_of_int 6)::orig
    | Sarith SMOD -> (Big_int_Z.big_int_of_int 7)::orig
    | Arith ADDMOD -> (Big_int_Z.big_int_of_int 8)::orig
    | Arith MULMOD -> (Big_int_Z.big_int_of_int 9)::orig
    | Arith EXP -> (Big_int_Z.big_int_of_int 10)::orig
    | Sarith SIGNEXTEND -> (Big_int_Z.big_int_of_int 11)::orig
    | Memory MLOAD -> (Big_int_Z.big_int_of_int 81)::orig
    | Memory MSTORE -> (Big_int_Z.big_int_of_int 82)::orig
    | Memory MSTORE8 -> (Big_int_Z.big_int_of_int 83)::orig
    | Storage SLOAD -> (Big_int_Z.big_int_of_int 84)::orig
    | Storage SSTORE -> (Big_int_Z.big_int_of_int 85)::orig
    | Pc JUMP -> (Big_int_Z.big_int_of_int 86)::orig
    | Pc JUMPI -> (Big_int_Z.big_int_of_int 87)::orig
    | Pc PC -> (Big_int_Z.big_int_of_int 88)::orig
    | Memory MSIZE -> (Big_int_Z.big_int_of_int 89)::orig
    | Info GAS -> (Big_int_Z.big_int_of_int 90)::orig
    | Pc JUMPDEST -> (Big_int_Z.big_int_of_int 91)::orig
    | Stack POP -> (Big_int_Z.big_int_of_int 80)::orig
    | Dup i -> (Big_int_Z.big_int_of_int (127 + (Word4.word4ToNat i)))::orig
    | Swap i -> (Big_int_Z.big_int_of_int (143 + (Word4.word4ToNat i)))::orig
    | Arith Inst_LT -> (Big_int_Z.big_int_of_int 16)::orig
    | Arith Inst_GT -> (Big_int_Z.big_int_of_int 17)::orig
    | Sarith SLT -> (Big_int_Z.big_int_of_int 18)::orig
    | Sarith SGT -> (Big_int_Z.big_int_of_int 19)::orig
    | Arith Inst_EQ -> (Big_int_Z.big_int_of_int 20)::orig
    | Arith ISZERO -> (Big_int_Z.big_int_of_int 21)::orig
    | Bits Inst_AND -> (Big_int_Z.big_int_of_int 22)::orig
    | Bits Inst_OR -> (Big_int_Z.big_int_of_int 23)::orig
    | Bits Inst_XOR -> (Big_int_Z.big_int_of_int 24)::orig
    | Bits Inst_NOT -> (Big_int_Z.big_int_of_int 25)::orig
    | Stack CALLDATALOAD -> (Big_int_Z.big_int_of_int 53)::orig
    | Memory CODECOPY -> (Big_int_Z.big_int_of_int 57)::orig
    | Bits BYTE -> (Big_int_Z.big_int_of_int 26)::orig
    | Info ORIGIN -> (Big_int_Z.big_int_of_int 50)::orig
    | Info GASPRICE -> (Big_int_Z.big_int_of_int 58)::orig
    | Info BLOCKHASH -> (Big_int_Z.big_int_of_int 64)::orig
    | Info COINBASE -> (Big_int_Z.big_int_of_int 65)::orig
    | Info TIMESTAMP -> (Big_int_Z.big_int_of_int 66)::orig
    | Info NUMBER -> (Big_int_Z.big_int_of_int 67)::orig
    | Info DIFFICULTY -> (Big_int_Z.big_int_of_int 68)::orig
    | Info GASLIMIT -> (Big_int_Z.big_int_of_int 69)::orig
    | Misc CREATE -> (Big_int_Z.big_int_of_int 240)::orig
    | Misc CALL -> (Big_int_Z.big_int_of_int 241)::orig
    | Misc RETURN -> (Big_int_Z.big_int_of_int 243)::orig
    | Misc SUICIDE -> (Big_int_Z.big_int_of_int 255)::orig
    | Stack (PUSH_N lst) ->
       let stringVal = hex_str_of_bl_inner "0x" lst in
       let valSemInt = Big_int_Z.big_int_of_string stringVal in
       let newprog = valSemInt::(Big_int_Z.big_int_of_int 96)::orig in
       let opc::lst' = lst in (* we skip one byte because we place the value on the parsed code *)
       add_unknown_bytes_from lst' newprog
    | _ -> failwith "Unknown opcode"

let string_right_fill (pad : char) (target : int) (orig : string) : string =
  let () = assert (target >= String.length orig) in
  let pad_len = target - String.length orig in
  let padding = String.make pad_len pad in
  orig ^ padding

let parse_instruction (str : string) : (inst * string) option =
  let opcode = BatString.left str 2 in
  let rest = BatString.tail str 2 in
  match opcode with
  | "" -> None
  | "00" -> Some (Misc STOP, rest)
  | "01" -> Some (Arith ADD, rest)
  | "02" -> Some (Arith MUL, rest)
  | "03" -> Some (Arith SUB, rest)
  | "04" -> Some (Arith DIV, rest)
  | "05" -> Some (Sarith SDIV, rest)
  | "06" -> Some (Arith MOD, rest)
  | "07" -> Some (Sarith SMOD, rest)
  | "08" -> Some (Arith ADDMOD, rest)
  | "09" -> Some (Arith MULMOD, rest)
  | "0a" -> Some (Arith EXP, rest)
  | "0b" -> Some (Sarith SIGNEXTEND, rest)
  | "10" -> Some (Arith Inst_LT, rest)
  | "11" -> Some (Arith Inst_GT, rest)
  | "12" -> Some (Sarith SLT, rest)
  | "13" -> Some (Sarith SGT, rest)
  | "14" -> Some (Arith Inst_EQ, rest)
  | "15" -> Some (Arith ISZERO, rest)
  | "16" -> Some (Bits Inst_AND, rest)
  | "17" -> Some (Bits Inst_OR, rest)
  | "18" -> Some (Bits Inst_XOR, rest)
  | "19" -> Some (Bits Inst_NOT, rest)
  | "1a" -> Some (Bits BYTE, rest)
  | "20" -> Some (Arith SHA3, rest)
  | "30" -> Some (Info ADDRESS, rest)
  | "31" -> Some (Info BALANCE, rest)
  | "32" -> Some (Info ORIGIN, rest)
  | "33" -> Some (Info CALLER, rest)
  | "34" -> Some (Info CALLVALUE, rest)
  | "35" -> Some (Stack CALLDATALOAD, rest)
  | "36" -> Some (Info CALLDATASIZE, rest)
  | "37" -> Some (Memory CALLDATACOPY, rest)
  | "38" -> Some (Info CODESIZE, rest)
  | "39" -> Some (Memory CODECOPY, rest)
  | "3a" -> Some (Info GASPRICE, rest)
  | "3b" -> Some (Info EXTCODESIZE, rest)
  | "3c" -> Some (Memory EXTCODECOPY, rest)
  | "40" -> Some (Info BLOCKHASH, rest)
  | "41" -> Some (Info COINBASE, rest)
  | "42" -> Some (Info TIMESTAMP, rest)
  | "43" -> Some (Info NUMBER, rest)
  | "44" -> Some (Info DIFFICULTY, rest)
  | "45" -> Some (Info GASLIMIT, rest)
  | "50" -> Some (Stack POP, rest)
  | "51" -> Some (Memory MLOAD, rest)
  | "52" -> Some (Memory MSTORE, rest)
  | "53" -> Some (Memory MSTORE8, rest)
  | "54" -> Some (Storage SLOAD, rest)
  | "55" -> Some (Storage SSTORE, rest)
  | "56" -> Some (Pc JUMP, rest)
  | "57" -> Some (Pc JUMPI, rest)
  | "58" -> Some (Pc PC, rest)
  | "59" -> Some (Memory MSIZE, rest)
  | "5a" -> Some (Info GAS, rest)
  | "5b" -> Some (Pc JUMPDEST, rest)
  | "a0" -> Some (Log LOG0, rest)
  | "a1" -> Some (Log LOG1, rest)
  | "a2" -> Some (Log LOG2, rest)
  | "a3" -> Some (Log LOG3, rest)
  | "a4" -> Some (Log LOG4, rest)
  | "f0" -> Some (Misc CREATE, rest)
  | "f1" -> Some (Misc CALL, rest)
  | "f2" -> Some (Misc CALLCODE, rest)
  | "f3" -> Some (Misc RETURN, rest)
  | "f4" -> Some (Misc DELEGATECALL, rest)
  | "ff" -> Some (Misc SUICIDE, rest)
  | _ ->
     let opcode_num = int_of_string ("0x"^opcode) in
     if 0x60 <= opcode_num && opcode_num <= 0x7f then
       let l = opcode_num - 0x60 + 1 in
       let (payload, rest) = BatString.(left rest (2 * l), tail rest (2 * l)) in
       let payload =
         if String.length payload < 2 * l then
           string_right_fill '0' (2*l) payload
         else
           payload in
       Some (Stack (PUSH_N (Conv.byte_list_of_hex_string payload)), rest)
     else if 0x80 <= opcode_num && opcode_num <= 0x8f then
       Some (Dup (Conv.nibble_of_int (opcode_num - 0x80)), rest)
     else if 0x90 <= opcode_num && opcode_num <= 0x9f then
       Some (Swap (Conv.nibble_of_int (opcode_num - 0x90)), rest)
     else if String.length opcode = 2 then
       Some (Unknown (Conv.byte_of_int opcode_num), rest)
     else
       None

let rec parse_code_inner (prog : program) (hex_inner : string) : program * string =
  match parse_instruction hex_inner with
  | None -> (prog, hex_inner)
  | Some (instr, rest) ->
     parse_code_inner (store_instruction instr prog) rest

(** [parse_code "0x...." returns a program and the
 * remaining string
 *)

let rec printcode (prog: program): unit =
 match prog with
  | [] -> ()
  | code::prog' -> let () = Printf.printf "%s\n" (Big_int_Z.string_of_big_int code) in printcode prog'

let parse_code (hex : string) : program * string =
  if BatString.left hex 2 <> "0x"
  then
    failwith "parse_code: prefix is not 0x"
  else
    let (parsed, remainingStr) = parse_code_inner empty_program (BatString.tail hex 2) in
    (*let () = Printf.printf "Printing code! ---------------\n" in
    let () = printcode (List.rev parsed) in
    let () = Printf.printf "Done! ---------------\n" in *)
    (List.rev parsed, remainingStr)
