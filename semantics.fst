module Semantics

//modules
open FStar.Exn
open FStar.All
open FStar.Math.Lib
open FStar.String
open FStar.IO
open FStar.UInt
open FStar.Int
open FStar.Seq

//constants
let wordSize = 115792089237316195423570985008687907853269984665640564039457584007913129639936
let wordSizeDiv2 = 57896044618658097711785492504343953926634992332820282019728792003956564819968
let addressSize = 1461501637330902918203684832716283019655932542976
//let byteSize = 256

let gzero = 0
let gbase = 2
let gverylow = 3
let glow = 5
let gmid = 8
let ghigh = 10

//simple types

//type bytef = x:int {x >=0 && x < 256}
//type word = x:int {x >=0 && x < 115792089237316195423570985008687907853269984665640564039457584007913129639936}
//type signedWord = x:int {x >= (op_Minus wordSizeDiv2) && x < wordSizeDiv2}
//type address = x:int {x >=0 && x < 1461501637330902918203684832716283019655932542976}


type pds = x:int{x >= 1 && x <= 16}

type word = uint_t 256
type bytef = uint_t 8
type signedword = int_t 256
type address = int_t 160

type lStack = list word

type program = list word
let emptyProgram = []

val zero256: word
let zero256 = UInt.to_uint_t 256 0

val zero8: bytef
let zero8 = UInt.to_uint_t 8 0

type storage = word -> word
val emptyStorage: word -> word
let emptyStorage w = zero256

type mem = word -> bytef
val emptyMem : word -> bytef
let emptyMem w = zero8

type bytearray = string

type logRec = list word

//parser
type opcode =
  | STOP
  | PUSH: x:word -> opcode
  | POP: opcode
  | DUP: x:pds -> opcode
  | SWAP: x:pds -> opcode
	| ADD: opcode
  | MUL: opcode
	| SUB: opcode
  | DIVV: opcode
  | SDIVV: opcode
  | MOD: opcode
  | SMOD: opcode
  | ADDMOD: opcode
  | MULMOD: opcode
  | EXP: opcode
  | SIGNEXTEND: opcode
  | LT: opcode
  | GT: opcode
  | SLT: opcode
  | SGT: opcode
  | EQB: opcode
  | ISZERO: opcode
  | ANDB: opcode
  | ORB: opcode
  | XORB: opcode
  | BYTEB: opcode
  | NOTB: opcode
	| MLOAD: opcode
	| MSTORE: opcode
  | MSTORE8: opcode
  | JUMP: opcode
  | JUMPI: opcode
  | PC: opcode
  | MSIZE: opcode
  | GAS: opcode
  | JUMPDEST: opcode
  | ORIGIN: opcode
  | GASPRICE: opcode
  | BLOCKHASH: opcode
  | COINBASE: opcode
  | TIMESTAMP: opcode
  | NUMBERB: opcode
  | DIFFICULTY: opcode
  | GASLIMIT: opcode
	| CALLDATALOAD: opcode
	| CODECOPY: opcode
	| SSTORE: opcode
  | SLOAD: opcode
	| CREATE: opcode
	| RETURN
	| SELFDESTRUCT
  | UNKNOWN
	| CALL: opcode

val getOpcode: nat -> program -> (option opcode)

let getOpcode pc pr =
  let op_c = List.Tot.nth pr pc in
      if pc > ((List.length pr) - 1) then Some STOP else
      (match op_c with
      | Some 0 -> Some STOP
      | Some 1 -> Some ADD
      | Some 2 -> Some MUL
      | Some 3 -> Some SUB
      | Some 4 -> Some DIVV
      | Some 5 -> Some SDIVV
      | Some 6 -> Some MOD
      | Some 7 -> Some SMOD
      | Some 8 -> Some ADDMOD
      | Some 9 -> Some MULMOD
      | Some 10 -> Some EXP
      | Some 11 -> Some SIGNEXTEND
      | Some 16 -> Some LT
      | Some 17 -> Some GT
      | Some 18 -> Some SLT
      | Some 19 -> Some SGT
      | Some 20 -> Some EQB
      | Some 21 -> Some ISZERO
      | Some 22 -> Some ANDB
      | Some 23 -> Some ORB
      | Some 24 -> Some XORB
      | Some 25 -> Some NOTB
      | Some 26 -> Some BYTEB
      | Some 80 -> Some POP
      | Some 81 -> Some MLOAD
      | Some 82 -> Some MSTORE
      | Some 83 -> Some MSTORE8
      | Some 84 -> Some SLOAD
      | Some 85 -> Some SSTORE
      | Some 86 -> Some JUMP
      | Some 87 -> Some JUMPI
      | Some 88 -> Some PC
      | Some 89 -> Some MSIZE
      | Some 90 -> Some GAS
      | Some 91 -> Some JUMPDEST
      | Some 53 -> Some CALLDATALOAD
      | Some 57 -> Some CODECOPY
      | Some 50 -> Some ORIGIN
      | Some 58 -> Some GASPRICE
      | Some 64 -> Some BLOCKHASH
      | Some 65 -> Some COINBASE
      | Some 66 -> Some TIMESTAMP
      | Some 67 -> Some NUMBERB
      | Some 68 -> Some DIFFICULTY
      | Some 69 -> Some GASLIMIT
      | Some 128 -> Some (DUP 1)
      | Some 129 -> Some (DUP 2)
      | Some 130 -> Some (DUP 3)
      | Some 131 -> Some (DUP 4)
      | Some 132 -> Some (DUP 5)
      | Some 133 -> Some (DUP 6)
      | Some 134 -> Some (DUP 7)
      | Some 135 -> Some (DUP 8)
      | Some 136 -> Some (DUP 9)
      | Some 137 -> Some (DUP 10)
      | Some 138 -> Some (DUP 11)
      | Some 139 -> Some (DUP 12)
      | Some 140 -> Some (DUP 13)
      | Some 141 -> Some (DUP 14)
      | Some 142 -> Some (DUP 15)
      | Some 143 -> Some (DUP 16)
      | Some 144 -> Some (SWAP 1)
      | Some 145 -> Some (SWAP 2)
      | Some 146 -> Some (SWAP 3)
      | Some 147 -> Some (SWAP 4)
      | Some 148 -> Some (SWAP 5)
      | Some 149 -> Some (SWAP 6)
      | Some 150 -> Some (SWAP 7)
      | Some 151 -> Some (SWAP 8)
      | Some 152 -> Some (SWAP 9)
      | Some 153 -> Some (SWAP 10)
      | Some 154 -> Some (SWAP 11)
      | Some 155 -> Some (SWAP 12)
      | Some 156 -> Some (SWAP 13)
      | Some 157 -> Some (SWAP 14)
      | Some 158 -> Some (SWAP 15)
      | Some 159 -> Some (SWAP 16)
      | Some 241 -> Some CALL
      | Some 240 -> Some CREATE
      | Some 243 -> Some RETURN
      | Some 255 -> Some SELFDESTRUCT
      | Some 96 ->
        let value = List.Tot.nth pr (pc + 1) in
        (match value with
          | Some v -> Some (PUSH v)
          | _ -> None
        )
      | Some 256 -> Some UNKNOWN
      | _ -> None
      )

//semantic types
val valid: nat -> nat -> int -> bool

let valid g c sz = c <= g && sz >= 0 && sz <= 1024

(*block hash coinbase timestamp number difficulty gaslimit origin gasprice*)
type blockInfo =
  | BlockInfo: nat -> nat -> nat -> nat -> nat -> nat -> address -> nat -> blockInfo

noeq type mState =
	| MState: nat -> nat -> mem -> nat -> lStack -> mState

type exEnv =
	| ExEnv: address -> bytearray -> address -> nat -> program -> exEnv

noeq type account =
	| Acc: nat -> nat -> storage -> program -> account

type gState = address -> option account
val emptyGState: address -> option account
let emptyGState addr = None

type transEff =
	| TransEff: nat -> list address -> logRec -> transEff

noeq type exState =
	| ExState: mState -> exEnv -> gState -> transEff -> blockInfo -> exState

noeq type plainStack =
	| StackNil: plainStack
	| StackCons: exState -> plainStack -> plainStack

noeq type stack =
	| Plain: plainStack -> stack
	| Exc: plainStack -> stack
	| Halt: gState -> transEff -> nat -> bytearray -> plainStack -> stack

noeq type exOutcome =
	| Bot: exOutcome
	| Reg: gState -> transEff -> nat -> bytearray -> exOutcome
	| Err: exOutcome

noeq type stepOutcome =
	| Fin: exOutcome -> stepOutcome
	| Next: stack -> stepOutcome

noeq type nextState =
	| LocalStep: mState -> gState -> transEff -> nextState
	| GlobalStep: exEnv -> gState -> nat -> nextState
	| ErrState: nextState
	| HaltState: gState -> nat -> bytearray -> nextState
	| BotState: nextState

//arithmetics

val wordToNat: word -> nat
let wordToNat w = w

val andb: word -> word -> word
let andb a b = UInt.logand a b

val orb: word -> word -> word
let orb a b = UInt.logor a b

val xorb: word -> word -> word
let xorb a b = UInt.logxor a b

val notb: word -> word
let notb a = UInt.lognot a

val byteb: word -> nat -> word
let byteb w offset =
  let vect = Seq.rev (UInt.to_vec #256 w) in
  if offset > 31 || offset < 0
    then zero256
    else
      let from = op_Multiply 8 offset in
      let to = 8 + (op_Multiply 8 offset) in
      let fraction = slice vect from to in
      let vec_el = BitVector.zero_vec #248 in
      let rez = append fraction vec_el in
      UInt.from_vec #256 (rev rez)

val signedextend: word -> word -> word
let signedextend w offset =
  let vect = Seq.rev (UInt.to_vec #256 w) in
  if offset > 30 || offset < 0 // we don't append a zero vector, hence > 30 not 31
    then w
    else
    begin
      let tmp = 256 - op_Multiply 8 (offset + 1) in
      assert (tmp >= 1);
      assert (tmp <= 255);
      assert (FStar.Seq.Base.length vect = 256);
      let bitAtIndex = index vect tmp in
      let vec_el =
        if bitAtIndex then BitVector.ones_vec #tmp
                      else BitVector.zero_vec #tmp in
      let vec_slice = slice vect tmp 256 in
      let rez = append vec_slice vec_el in
      UInt.from_vec #256 (rev rez)
    end

// sign operation
val toSigned: word -> signedword
let toSigned i = if i >= wordSizeDiv2 then i - wordSize else i

val toUnsighned: signedword -> word
let toUnsighned i = if i < 0 then i + wordSize else i

val smod: signedword -> signedword -> signedword
let smod a b = if b = 0 then 0 else Int.mod a b

assume val computeBlockHash: nat -> word

val divCeiling: nat -> pos -> nat
let divCeiling a b =
  if b = 0 then 0
    else let q = a / b in if (op_Multiply q b) < a then q + 1 else q

val divFloor: nat -> pos -> nat
let divFloor a b = op_Division a b

val unsignedMul: nat -> nat -> nat
let unsignedMul a b = op_Multiply a b

val m: nat -> word -> nat -> nat

let m i o s = if (s = 0) then i else (max i (divCeiling (o + s) 32))

val cmem: aw:nat -> aw':nat {aw' >= aw} -> nat

let cmem aw aw' = (unsignedMul 3 (aw' - aw)) + (divFloor (op_Multiply aw' aw') 512) - (divFloor (op_Multiply aw aw) 512)

val cbase: int -> bool -> nat
let cbase va flag = 700 + (if va = 0 then 0 else 6500) + (if not flag then 25000 else 0)

val lf: nat -> nat
let lf n = n - (divFloor n 64)

val cgasgap: int -> bool -> nat -> nat -> nat
let cgasgap va flag g gas = let cex = 700 + (if va = 0 then 0 else 9000) + (if not flag then 25000 else 0) in
														if cex > gas then g else let lrez = (lf (gas - cex)) in (min g lrez) + (if va = 0 then 0 else 2300)

let rec log256 : pos -> nat =
  fun x  ->
    if x >= 256
      then 1 + (log256 (x / 256))
      else 0

//stack operations
val list_swap: lStack -> word -> word -> lStack
let rec list_swap l u v =
  match l with
    | [] -> []
    | h::t -> (if h = u then v
                else if h = v then u
                  else h)::(list_swap t u v)

//memory operations
assume val write: mem -> word -> word -> mem
assume val read: mem -> word -> word

assume val writeBytearray: mem -> word -> word -> bytearray -> mem
assume val writeCode: mem -> word -> word -> program -> mem

assume val subMem: mem -> word -> word -> bytearray

//storage operations
val swrite: storage -> word -> word -> storage
let swrite st ind value =
  fun (i: word) -> if (i = ind) then value else st i

//global state update
val update: gState -> address -> account -> gState
let update gst addr acc =
  fun (a: address) -> if (a = addr) then Some acc else gst a

//bytearray extractors
assume val extractWord: (from:nat) -> (size:nat {size>=0 /\ size <=32}) -> (bytecode:bytearray) -> word

assume val subBytearray: (from:nat) -> (size:nat) -> bytearray -> bytearray

assume val bytearrayToCode: bytearray -> program

val emptyBytearray: bytearray
let emptyBytearray = "0x"

assume val sizeBytearray: bytearray -> nat

//address operations
assume val addressToWord: address -> word

assume val newaddress: address -> nat -> address

//code Operations
assume val subCodeSTOP: (from:nat) -> (size:nat) -> program -> program

// execution stack size
val plainStackSize: plainStack -> nat
let rec plainStackSize pst =
  match pst with
    | StackNil -> 1
    | StackCons exstate pst' -> 1 + (plainStackSize pst')

val executionStackSize: stack -> nat
let executionStackSize st =
  match st with
    | Plain pst -> plainStackSize pst
    | Exc pst -> 1 + (plainStackSize pst)
    | Halt _ _ _ _ pst -> 1 + (plainStackSize pst)

val stepState: mState -> exEnv -> gState -> transEff -> nat -> blockInfo -> ML nextState

#set-options "--z3rlimit 150"
let stepState mst exenv gst teff estacksize blinfo = match mst with
	| MState pc gas memory actwords st -> match exenv with
		| ExEnv actor input sender value code -> match (getOpcode pc code) with
						| None -> let () = print_string "Unspecified opcode!\n" in let nn = wordToNat 1 in ErrState
								| Some STOP -> HaltState gst gas emptyBytearray
                | Some UNKNOWN -> LocalStep (MState (pc + 1) gas memory actwords st) gst teff
								| Some RETURN -> (match st with
																| io::is::st' ->
																	let aw = m actwords io is in
																	let c = cmem actwords aw in
																	let d = subMem memory io is in
																	if (not (valid gas c (List.length st)))
																		then ErrState
																		else HaltState gst (gas - c) d
																| _ -> ErrState
																)
								| Some SELFDESTRUCT -> (match st with
																|	aben::st' ->
																	let account = gst actor in
																		(match account with
																				| None -> BotState
																				| Some (Acc an ab stor excode) ->
																					let account' = gst (UInt.to_uint_t 160 aben) in
																					(match account' with
																						| None ->
																							let gst' = update gst actor (Acc an 0 stor excode) in
																							let gst'' = update gst' (UInt.to_uint_t 160 aben) (Acc 0 ab emptyStorage emptyProgram) in
																							if (not (valid gas 37000 (List.length st)))
																							then ErrState
																							else HaltState gst' (gas - 37000) emptyBytearray
																						| Some (Acc an' ab' stor' excode') ->
																							let gst' = update gst (UInt.to_uint_t 160 aben) (Acc an' (ab + ab') stor' excode') in
																							if (not (valid gas 5000 (List.length st)))
																							then ErrState
																							else HaltState gst' (gas - 5000) emptyBytearray
																					)
																		)
																| _ -> ErrState
																)
                | Some (DUP i) -> (if (not (valid gas 3 ((List.length st) - i)))
                                then ErrState
                                else let value = List.Tot.nth st i in
                                  (match value with
                                    | None -> ErrState
                                    | Some value -> LocalStep (MState (pc + 1) (gas - 3) memory actwords (value::st)) gst teff))
                | Some (SWAP i) -> (if (not (valid gas 3 ((List.length st) - (i + 1))))
                                then ErrState
                                else let v1::st' = st in
                                     let v2 = List.Tot.nth st (i + 1) in
                                      (match v2 with
                                        | None -> ErrState
                                        | Some v2 ->
                                          let st'' = list_swap st v1 v2 in
                                          LocalStep (MState (pc + 1) (gas - 3) memory actwords st'') gst teff))
                | Some POP -> (if (not (valid gas 2 ((List.length st) - 1)))
                                then ErrState
                              else
                                let value::st' = st in
                                LocalStep (MState (pc + 1) (gas - 2) memory actwords st') gst teff)

                | Some PC -> (if (not (valid gas gbase ((List.length st) + 1)))
                                  then ErrState
                                else
                                  let value = pc % wordSize in
                                  LocalStep (MState (pc + 1) (gas - gbase) memory actwords (value::st)) gst teff)

                | Some MSIZE -> (if (not (valid gas gbase ((List.length st) + 1)))
                                  then ErrState
                                else
                                  let value = actwords % wordSize in
                                  LocalStep (MState (pc + 1) (gas - gbase) memory actwords (value::st)) gst teff)
                | Some GAS -> (if (not (valid gas gbase ((List.length st) + 1)))
                                  then ErrState
                                else
                                  let value = gas % wordSize in
                                  LocalStep (MState (pc + 1) (gas - gbase) memory actwords (value::st)) gst teff)

                | Some JUMPDEST -> (if (not (valid gas gbase (List.length st)))
                                  then ErrState
                                else
                                  LocalStep (MState (pc + 1) (gas - 1) memory actwords st) gst teff)

                (* we use a simplified jump definition *)
                | Some JUMP -> (if (not (valid gas 8 ((List.length st) - 1)))
                                then ErrState
                                else
                                  let value::st' = st in
                                  let dest = (getOpcode pc code) in
                                  (match dest with
                                    | Some JUMPDEST -> LocalStep (MState value (gas - 8) memory actwords st') gst teff
                                    | _ -> ErrState))
                | Some JUMPI -> (if (not (valid gas 10 ((List.length st) - 2)))
                                then ErrState
                                else
                                  let value::cond::st' = st in
                                  let dest = (getOpcode pc code) in
                                  (match dest with
                                    | Some JUMPDEST -> if cond = 0 then LocalStep (MState (pc + 1) (gas - 10) memory actwords st') gst teff else LocalStep (MState value (gas - 8) memory actwords st') gst teff
                                    | _ -> ErrState
                                  )
                                )
                | Some (PUSH i)
														-> (if (not (valid gas 3 ((List.length st) + 1)))
																then ErrState
																else
																	let value = i in
																	LocalStep (MState (pc + 2) (gas - 3) memory actwords (value::st)) gst teff) //we jump over a pushed value
								| Some MLOAD -> (match st with
																| ma::st' ->
																	let aw' = (m actwords ma 32) in
																	let cost = (cmem actwords aw') + 3 in
																	(if (not (valid gas cost ((List.length st) + 1)))
																		then ErrState
																		else
																		let value = read memory ma in
																		LocalStep (MState (pc + 1) (gas - cost) memory aw' (value::st')) gst teff)
																| _ -> ErrState
																)
                | Some MSTORE8
								| Some MSTORE -> (match st with
																| ma::mb::st' ->
																	let aw' = (m actwords ma 32) in
																	let cost = (cmem actwords aw') + 3 in
																	(if (not (valid gas cost (List.length st)))
																		then ErrState
																		else
																		let memory' = (write memory ma mb) in
																		LocalStep (MState (pc + 1) (gas - cost) memory' aw' st') gst teff)
																| _ -> ErrState
																)
								| Some CALLDATALOAD -> (if (not (valid gas 3 (List.length st)))
																	then ErrState
																	else (match st with
																		| a::st' ->
																			let cs = max ((sizeBytearray input) - a) 0 in
																			let k = min cs 32 in
																			let v' = extractWord a k input in
																			let st'' = v'::st' in
																			LocalStep (MState (pc + 1) (gas - 3) memory actwords st'') gst teff
																		| _ -> ErrState
																		))
								| Some CODECOPY -> (match st with
																	  | posm::posb::size::st' ->
																				let aw' = m actwords posm size in
																				let cost = (cmem actwords aw') + 3 + (op_Multiply 3 (divCeiling size 32)) in
																				let cs = max ((List.length code) - posb) 0 in
																				let k = min cs size in
																				let c' = subCodeSTOP posb k code in
																				let memory' = writeCode memory posb size c' in
																				if (not (valid gas cost (List.length st)))
																					then ErrState
																					else LocalStep (MState (pc + 1) (gas - cost) memory' aw' st') gst teff
																		| _ -> ErrState
																	 )
                | Some SLOAD -> (match st with
                   								| a::st' ->
                   								  let account = gst actor in
                   									(match account with
                   											| None -> let () = print_string "Sload: no account!\n" in ErrState
                   											| Some (Acc an ab stor excode) ->
                   													(let v = stor a in
                   													let cost = 200 in
                   													if (not (valid gas cost (List.length st)))
                   														then let () = print_string "Sload: not valid!\n" in ErrState
                   														else LocalStep (MState (pc + 1) (gas - cost) memory actwords (v::st')) gst teff
                   										))
                   								| _ -> let () = print_string "Sload: stack!\n" in ErrState
                   							)
								| Some SSTORE -> (match st with
																	  | a::b::st' ->
																		  let account = gst actor in
																			(match account with
																				| None -> let () = print_string "Sstore: no account!\n" in ErrState
																				| Some (Acc an ab stor excode) ->
																				(let v = stor a in
																				let cost = if (not (b = 0)) && v = 0 then 20000 else 5000 in
																				let stor' = swrite stor a b in
																				let account' = Acc an ab stor' excode in
																				let gst' = update gst actor account' in
																				if (not (valid gas cost (List.length st)))
																					then let () = print_string "Sstore: not valid!\n" in ErrState
																					else LocalStep (MState (pc + 1) (gas - cost) memory actwords st') gst' teff
																			))
																		| _ -> let () = print_string "Sstore: stack!\n" in ErrState
																)
                | Some ORIGIN
                | Some GASPRICE
                | Some BLOCKHASH
                | Some COINBASE
                | Some TIMESTAMP
                | Some NUMBERB
                | Some DIFFICULTY
                | Some GASLIMIT -> (if (not (valid gas gbase ((List.length st) + 1)))
                                        then ErrState
                                        else
                                        let BlockInfo blockhash coinbase timestamp numberb difficulty gaslimit origin gasprice = blinfo in
                                        let rez = (match Some?.v (getOpcode pc code) with
                                                          | ORIGIN -> addressToWord origin
                                                          | GASPRICE -> gasprice
                                                          | BLOCKHASH -> computeBlockHash blockhash
                                                          | COINBASE -> coinbase
                                                          | TIMESTAMP -> timestamp
                                                          | NUMBERB -> numberb
                                                          | DIFFICULTY -> difficulty
                                                          | GASLIMIT -> gaslimit
                                                         ) % wordSize in LocalStep (MState (pc + 1) (gas - gbase) memory actwords (rez::st)) gst teff
                                   )

                | Some EXP -> (match st with
                                | x::y::st' ->
                                  let cost =
                                    if y = 0 then 10 else 10 + (op_Multiply 10 (1 + log256 y)) in
                                    if (not (valid gas cost ((List.length st) - 2)))
                                    then ErrState
                                    else let rez = (powx x y) % wordSize in
                                    LocalStep (MState (pc + 1) (gas - cost) memory actwords (rez::st')) gst teff
                                | _ -> ErrState
                              )
								| Some ADD
                | Some MUL
                | Some SUB
                | Some DIVV
                | Some SDIVV
                | Some MOD
                | Some SMOD
                | Some ANDB
                | Some ORB
                | Some XORB
                | Some LT
                | Some GT
                | Some SLT
                | Some SGT
                | Some EQB -> (let gSub =
                                (match Some?.v (getOpcode pc code) with
                                  | ANDB
                                  | ORB
                                  | XORB
                                  | LT
                                  | GT
                                  | SLT
                                  | SGT
                                  | EQB
                                  | ADD
                                  | SUB -> gverylow
                                  | MUL
                                  | DIVV
                                  | SDIVV
                                  | MOD
                                  | SMOD -> glow
                                ) in
                                if (not (valid gas gSub ((List.length st) - 2)))
																then ErrState
																else let x::y::st' = st in
																			let rez =
																			(match Some?.v (getOpcode pc code) with
																				| ADD -> UInt.add_mod x y
                                        | MUL -> UInt.mul_mod x y
																				| SUB -> UInt.sub_mod x y
                                        | DIVV -> if UInt.eq y 0 then 0 else UInt.udiv x y
                                        | SDIVV -> if Int.eq (toSigned y) 0 then 0 else
                                            let signedX = toSigned x in
                                            let signedY = toSigned y in
                                            let signedRez' = if UInt.eq y 0 then 0 else Int.div x y
                                            (*if (signedX < 0) then op_Minus (op_Division (op_Minus signedX) signedY)
                                                             else op_Division signedX signedY in
                                            let signedRez = toSigned (signedRez' % wordSize)*)
                                            in toUnsighned signedRez'
                                        | MOD -> if UInt.eq y 0 then 0 else UInt.mod x y
                                        | SMOD -> if Int.eq (toSigned y) 0 then 0 else toUnsighned (smod (toSigned x) (toSigned y))
                                        | LT -> if UInt.lt x y then 1 else 0
                                        | SLT -> if Int.lt (toSigned x) (toSigned y) then 1 else 0
                                        | GT -> if UInt.gt x y then 1 else 0
                                        | SGT -> if Int.gt (toSigned x) (toSigned y) then 1 else 0
                                        | EQB -> if UInt.eq x y then 1 else 0 (* for the momemnt we leave ANDB ORB XORB uninterpreted *)
                                        | ANDB -> andb x y
                                        | ORB -> orb x y
                                        | XORB -> xorb x y
																			) in LocalStep (MState (pc + 1) (gas - gSub) memory actwords (rez::st')) gst teff)

                | Some SIGNEXTEND -> (if (not (valid gas glow ((List.length st) - 2)))
                                        then ErrState
                                        else let offset::x::st' = st in
                                        let rez = signedextend x offset in
                                        LocalStep (MState (pc + 1) (gas - glow) memory actwords (rez::st')) gst teff)
                | Some ISZERO -> (if (not (valid gas gverylow ((List.length st) - 1)))
                                        then ErrState
                                        else let x::st' = st in let rez = if UInt.eq x 0 then 1 else 0 in LocalStep (MState (pc + 1) (gas - gverylow) memory actwords (rez::st')) gst teff)
                (* for the momemnt we leave NOTB BYTEB uninterpreted *)
                | Some NOTB -> (if (not (valid gas gverylow ((List.length st) - 1)))
                                        then ErrState
                                        else let x::st' = st in
                                        let rez = notb x in
                                        LocalStep (MState (pc + 1) (gas - gverylow) memory actwords (rez::st')) gst teff)
                | Some BYTEB -> (if (not (valid gas gverylow ((List.length st) - 1)))
                                        then ErrState
                                        else let offset::x::st' = st in
                                        let rez = byteb x offset in
                                        LocalStep (MState (pc + 1) (gas - gverylow) memory actwords (rez::st')) gst teff)
                | Some ADDMOD
                | Some MULMOD -> (if (not (valid gas gmid ((List.length st) - 3)))
                                  then ErrState
                                  else
                                    (let x::y::z::st' = st in
                                      let rez =
                                      (match Some?.v (getOpcode pc code) with
                                        | ADDMOD -> if z = 0 then 0 else UInt.mod (UInt.add_mod x y) z
                                        | MULMOD -> if z = 0 then 0 else UInt.mod (UInt.mul_mod x y) z
                                      ) in LocalStep (MState (pc + 1) (gas - gmid) memory actwords (rez::st')) gst teff))
								| Some CALL -> (match st with
																	  | g::to::va::io::is::oo::os::st' ->
																		let toacc = gst (UInt.to_uint_t 160 to) in
																		let flag =
																		(match toacc with
																			| None -> false
																			| Some (Acc an' ab' stor' excode') -> true
																		) in
																		let aw = (m (m actwords io is) oo os) in
																		let ccall = cgasgap va flag g gas in
																		let c = (cbase va flag) + (cmem actwords aw) + ccall in
																		let d = subMem memory io is in
																		if (not (valid gas c ((List.length st) + 1)) && (estacksize + 1 <= 1024))
																			then ErrState
																			else
																		(
																				let account = gst actor in
																				(match account with
																					| None -> ErrState
																					| Some (Acc an ab stor excode) ->
																					  if (ab < va) then
																							ErrState
																							else
																								let gst' = update gst actor (Acc an (ab - va) stor excode) in
																								(match toacc with
																									| None ->
																										let gst'' = update gst' (UInt.to_uint_t 160 to) (Acc 0 va emptyStorage emptyProgram) in
																										let exenv' = ExEnv 0 d actor va emptyProgram
																										in GlobalStep exenv' gst'' ccall
																									| Some (Acc an' ab' stor' excode') ->
																										let gst'' = update gst' (UInt.to_uint_t 160 to) (Acc an' (ab' + va) stor' excode') in
																										let exenv' = ExEnv (UInt.to_uint_t 160 to) d actor va excode'
																										in GlobalStep exenv' gst'' ccall
																								)
																					)
																		)
																		| _ -> ErrState
															 )
								| Some CREATE -> (match st with
																	  | va::io::is::st' ->
																			let aw = m actwords io is in
																			let c = (cmem actwords aw) + 32000 in
																			let d = subMem memory io is in
																			if (not (valid gas c ((List.length st) + 1) && (estacksize + 1 <= 1024)))
																				then ErrState
																				else
																					(let account = gst actor in
																						(match account with
																								| None -> BotState
																								| Some (Acc an ab stor excode) ->
																									if va > ab then ErrState
																									else
																										let p = newaddress actor an in
																										let newaccount = gst p in
																										let balance =
																										(match newaccount with
																											| None -> va
																											| Some (Acc an' ab' stor' excode') -> ab' + va
																										) in
																										let gst' = update gst p (Acc 0 balance emptyStorage emptyProgram) in
																										let gst'' = update gst' actor (Acc (an + 1) (ab - va) stor excode) in
																										let exenv' = ExEnv p d actor va emptyProgram in
																										GlobalStep exenv' gst'' (lf (gas - c))
																						)
																					)
																		| _ -> ErrState
																	)
val step: stack -> ML stepOutcome

(* Execution stack step definition *)

let step (s:stack) = match s with
	| Plain pstack -> (match pstack with
			| StackNil -> Fin Bot
			| StackCons state s' -> match state with
				| ExState mst exenv gst teff blinfo -> match stepState mst exenv gst teff (executionStackSize s) blinfo with
					| LocalStep mst' gst' teff' -> Next (Plain (StackCons (ExState mst' exenv gst' teff' blinfo) s'))
					| GlobalStep exenv' gst' gas' -> Next (Plain (StackCons (ExState (MState 0 gas' (fun (x:word) -> 0) 0 []) exenv' gst' teff blinfo) pstack))
					| ErrState -> Next (Exc s')
					| BotState -> Fin Bot
					| HaltState gst' gas' data -> Next (Halt gst' teff gas' data s'))
	| Exc estack -> (match estack with
			| StackNil -> Fin Err
			| StackCons state s' -> match state with
				| ExState mst exenv gst teff blinfo -> match mst with
					| MState pc gas memory actwords st -> match exenv with
						| ExEnv actor input sender value code -> match (getOpcode pc code) with
										| None -> Fin Bot
												| Some CALL -> (match st with
																					  | g::to::va::io::is::oo::os::st' ->
																							(let toacc = gst (UInt.to_uint_t 160 to) in
																							let flag =
																							(match toacc with
																								| None -> false
																								| Some (Acc an' ab' stor' excode') -> true
																							) in
																							let aw = (m (m actwords io is) oo os) in
																							let ccall = cgasgap va flag g gas in
																							let c = (cbase va flag) + (cmem actwords aw) + ccall in
																							let st'' = 0::st' in
																							if (not (valid gas c (List.length st)))
																								then Fin Err
																								else Next (Plain (StackCons (ExState (MState (pc + 1) (gas - c) memory aw st'') exenv gst teff blinfo) s'))
																							)
																						| _ -> Fin Bot
																			)
												| Some CREATE -> (match st with
																			| va::io::is::st' ->
																				let aw = m actwords io is in
																				let c = (cmem actwords aw) + 32000 in
																				let st'' = 0::st' in
																				Next (Plain (StackCons (ExState (MState (pc + 1) (gas + c) memory aw st'') exenv gst teff blinfo) s'))
																			| _ -> Fin Err)
												| _ -> Fin Bot
			)
	| Halt gst teff gas data hstack -> (match hstack with
			| StackNil -> Fin (Reg gst teff gas data)
			| StackCons state s' -> match state with
				| ExState mst exenv gst' teff' blinfo -> match mst with
					| MState pc gas' memory actwords st -> match exenv with
						| ExEnv actor input sender value code -> match (getOpcode pc code) with
										| None -> Fin Bot
												| Some CALL -> (match st with
																					  | g::to::va::io::is::oo::os::st' ->
																							(let toacc = gst (UInt.to_uint_t 160 to) in
																							let flag =
																							(match toacc with
																								| None -> false
																								| Some (Acc an' ab' stor' excode') -> true
																							) in
																							let aw = (m (m actwords io is) oo os) in
																							let ccall = cgasgap va flag g gas in
																							let c = (cbase va flag) + (cmem actwords aw) + ccall in
																							let memory' = writeBytearray memory oo os data in
																							let st'' = 1::st' in
																							if (not (valid gas' c ((List.length st) + 1)))
																								then Fin Err
																								else Next (Plain (StackCons (ExState (MState (pc + 1) (gas'+ (gas - c)) memory' aw st'') exenv gst teff blinfo) s'))
																							)
																						| _ -> Fin Err
																			)
												| Some CREATE -> (match st with
																					| va::io::is::st' ->
																						let aw = m actwords io is in
																						let c = (cmem actwords aw) + 32000 in
																						let account = gst actor in
																						(match account with
																								| None -> Fin Bot
																								| Some (Acc an ab stor excode) ->
																									let p = newaddress actor an in
																										let newaccount = gst p in
																										let st'' = (addressToWord p)::st' in
																										let cfinal = op_Multiply 200 (sizeBytearray data) in
																										(match newaccount with
																											| None -> Fin Bot
																											| Some (Acc an' ab' stor' excode') ->
																												let gst' = update gst p (Acc an' ab' stor' (bytearrayToCode data)) in
																												if not ((valid gas' c ((List.length st) + 1)) && (gas >= cfinal))
																													then Fin Err
																													else Next (Plain (StackCons (ExState (MState (pc + 1) (gas' + gas - cfinal - c) memory aw st'') exenv gst' teff blinfo) s'))
																										)
																					)
																					| _ -> Fin Err)
												| _ -> Fin Bot
		)

val execution: stack -> ML exOutcome

let rec execution s:ML exOutcome =
	match (step s) with
		| Next s' -> execution s'
		| Fin eo -> eo

#reset-options
