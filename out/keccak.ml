(*Generated by Lem from keccak.lem.*)
(**)
(* Copyright 2016 Sami MÃ¤kelÃ¤ *)
(**)
(* Licensed under the Apache License; Version 2.0 (the "License"); *)
(* you may not use this file except in compliance with the License. *)
(* You may obtain a copy of the License at *)
(* *)
(*     http://www.apache.org/licenses/LICENSE-2.0 *)
(* *)
(* Unless required by applicable law or agreed to in writing; software *)
(* distributed under the License is distributed on an "AS IS" BASIS; *)
(* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND; either express or implied. *)
(* See the License for the specific language governing permissions and *)
(* limitations under the License. *)

open Lem_pervasives
open Word8
open Word256
open Word64

(*
definition "rotl64 (x :: 64 word) n = (word_rotl n x :: 64 word)"
*)

(*val rotl64 : word64 -> nat -> word64*)
let rotl64 w n:Int64.t=  (Int64.logor ( Int64.shift_right_logical w ( Nat_num.nat_monus( 64) n)) ( Int64.shift_left w n))

(*val big : word64*)
let big:Int64.t=  (Int64.shift_left(Int64.of_int 1)( 63))

(*val two31 : word64*)
let two31:Int64.t=  (Int64.shift_left(Int64.of_int 1)( 31))

(*val two15 : word64*)
let two15:Int64.t=  (Int64.shift_left(Int64.of_int 1)( 15))

(*val keccakf_randc : list word64*)
let keccakf_randc:(Int64.t)list=  ([Int64.of_int 0X0000000000000001; Int64.logor(Int64.of_int 0X0000000000000082) two15; Int64.logor (Int64.logor(Int64.of_int 0X000000000000008a) big) two15; Int64.logor (Int64.logor (Int64.logor(Int64.of_int 0X0000000000000000) big) two31) two15; Int64.logor(Int64.of_int 0X000000000000008b) two15; Int64.logor(Int64.of_int 0X0000000000000001) two31; Int64.logor (Int64.logor (Int64.logor(Int64.of_int 0X0000000000000081) big) two31) two15; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000009) big) two15;Int64.of_int 0X000000000000008a;Int64.of_int 0X0000000000000088; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000009) two31) two15;  Int64.logor(Int64.of_int 0X000000000000000a) two31; Int64.logor (Int64.logor(Int64.of_int 0X000000000000008b) two31) two15; Int64.logor(Int64.of_int 0X000000000000008b) big; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000089) big) two15; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000003) big) two15; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000002) big) two15; Int64.logor(Int64.of_int 0X0000000000000080) big; Int64.logor(Int64.of_int 0X000000000000000a) two15; Int64.logor (Int64.logor(Int64.of_int 0X000000000000000a) big) two31; Int64.logor (Int64.logor (Int64.logor(Int64.of_int 0X0000000000000081) big) two31) two15; Int64.logor (Int64.logor(Int64.of_int 0X0000000000000080) big) two15; Int64.logor(Int64.of_int 0X0000000000000001) two31; Int64.logor (Int64.logor (Int64.logor(Int64.of_int 0X0000000000000008) big) two31) two15
])

(*val keccakf_rotc : list nat*)
let keccakf_rotc:(int)list=  ([ 1; 3; 6; 10; 15; 21; 28; 36; 45; 55; 2; 14; 27; 41; 56; 8; 25; 43; 62; 18; 39; 61; 20; 44
])

(*val keccakf_piln : list nat*)
let keccakf_piln:(int)list=  ([ 10; 7; 11; 17; 18; 3; 5; 16; 8; 21; 24; 4; 15; 23; 19; 13; 12; 2; 20; 14; 22; 9; 6; 1
])

(*val get : list word64 -> nat -> word64*)
let get lst n:Int64.t=  ((match list_index lst n with
 | Some x -> x
 | None ->Int64.of_int 0
))

(*val get_n : list nat -> nat -> nat*)
let get_n lst n:int=  ((match list_index lst n with
 | Some x -> x
 | None -> 0
))

(*val setf : list word64 -> nat -> word64 -> list word64*)
let setf lst n w:(Int64.t)list=  
 (if List.length lst < n then  List.rev_append (List.rev (List.rev_append (List.rev lst) (genlist (fun _ ->Int64.of_int 0) ( Nat_num.nat_monus (Nat_num.nat_monus(List.length lst) n)( 1))))) [w]
  else  List.rev_append (List.rev (List.rev_append (List.rev (take n lst)) [w])) (drop (n+ 1) lst))

(*val theta1 : nat -> list word64 -> word64*)
let theta1 i st:Int64.t=  (Int64.logxor (Int64.logxor (Int64.logxor (Int64.logxor
  (get st i)
  (get st (i + 5)))
  (get st (i + 10)))
  (get st (i + 15)))
  (get st (i + 20)))

(*val theta_t : nat -> list word64 -> word64*)
let theta_t i bc:Int64.t=  (Int64.logxor
  (get bc ((i + 4) mod  5)) (rotl64 (get bc ((i + 1) mod  5))( 1)))

(*val theta : list word64 -> list word64*)
let theta st:(Int64.t)list=  
 (let bc = (genlist (fun i -> theta1 i st)( 5)) in
  let t = (genlist (fun i -> theta_t i bc)( 5)) in
  genlist (fun ji -> Int64.logxor (get st ji) (get t (ji mod  5)))( 25))

(*val rho_pi_inner : word64 * list word64 -> nat -> word64 * list word64*)
let rho_pi_inner t_st i:Int64.t*(Int64.t)list=  
 (let j = (get_n keccakf_piln i) in
  let bc = (get (snd t_st) j) in
  (bc, setf (snd t_st) j (rotl64 (fst t_st) (get_n keccakf_rotc i))))


(*val rho_pi_changes : nat -> word64 * list word64 -> word64 * list word64*)
let rho_pi_changes i t_st:Int64.t*(Int64.t)list=  (List.fold_left rho_pi_inner t_st (genlist (fun x -> x) i))

(*val rho_pi : list word64 -> list word64*)
let rho_pi st:(Int64.t)list=  (snd (rho_pi_changes( 24) (get st( 1), st)))

(*val chi_for_j : list word64 -> list word64*)
let chi_for_j st_slice:(Int64.t)list=  
 (genlist (fun i -> Int64.logxor (get st_slice i) ( Int64.logand(Int64.lognot (get st_slice ((i + 1) mod  5))) (get st_slice ((i + 2) mod  5))))( 5))

(*val filterI : forall 'a. list 'a -> (nat -> bool) -> list 'a*)
let filterI lst pred:'a list=  
 (Lem_list.map fst (List.filter (fun p -> pred (snd p)) (list_combine lst (genlist (fun i -> i) (List.length lst)))))

(*val chi : list word64 -> list word64*)
let chi st:(Int64.t)list=  
 (List.concat (genlist (fun j -> chi_for_j (filterI st (fun i -> ((j * 5) <= i) && (i <= ((j* 5) + 5)))))( 5)))

(*val iota : nat -> list word64 -> list word64*)
let iota r st:(Int64.t)list=  (setf st( 0) ( Int64.logxor(get st( 0)) (get keccakf_randc r)))

(*val for_inner : list word64 -> nat -> list word64*)
let for_inner st r:(Int64.t)list=  (iota r (chi (rho_pi (theta st))))

let keccakf_rounds : int= ( 24)

type byte = word8

(*
val boolList64_inner : word64 -> nat -> list bool
let rec boolList64_inner num rest = match rest with
 | 0 -> []
 | rest+1 ->
    let checked = 2 ** rest in
    let quo = num / checked in
    let taken = quo * checked in
    (quo <> 0) :: boolList64_inner (num - taken) rest
end

val boolListFromWord64 : word64 -> list bool
let boolListFromWord64 w = boolList64_inner w 64
declare isabelle target_rep function boolListFromWord64 = `to_bl`
*)

(*val word_rsplit_aux : list bool -> nat -> list byte*)
let rec word_rsplit_aux lst n:(word8)list= 
  (
  if(n =  0) then ([]) else
    (let n0 =(Nat_num.nat_monus n ( 1)) in
     word8FromBoollist (take ( 8) lst) :: word_rsplit_aux (drop ( 8) lst) n0))

(*val word_rsplit : word64 -> list byte*)
let word_rsplit w:(byte)list=  (word_rsplit_aux (boolListFromWord64 w)( 8))

(*
val word64FromBoollist : list bool -> word64
let rec word64FromBoollist lst = match lst with
 | true :: lst -> 1 + 2 * word64FromBoollist lst
 | false :: lst -> 2 * word64FromBoollist lst
 | [] -> 0
end
*)

(*val word_rcat_k : list byte -> word64*)
let word_rcat_k lst:Int64.t=  (word64FromBoollist (List.concat (map boolListFromWord8 lst)))

(*val invert_endian : word64 -> word64*)
let invert_endian w:Int64.t=  (word_rcat_k (List.rev (word_rsplit w)))

(*val keccakf : list word64 -> list word64*)
let keccakf st:(Int64.t)list=  (List.fold_left for_inner st (genlist (fun i -> i) keccakf_rounds))

let mdlen : int= ( 256 / 8)
let rsiz : int=  (Nat_num.nat_monus( 200) (mdlen * 2))

(*val word8_to_word64 : byte -> word64*)
let word8_to_word64 w:Int64.t=  (Int64.of_int (word8ToNat w))

(*val update_byte : byte -> nat -> list word64 -> list word64*)
let update_byte i p st:(Int64.t)list=  (setf st (p / 8) ( Int64.logxor(get st (p / 8)) ( Int64.shift_left(word8_to_word64 i) ( 8 * (p mod  8)))))

(*val sha3_update : list byte -> nat -> list word64 -> nat * list word64*)
let rec sha3_update lst pos st:int*(Int64.t)list=  ((match lst with
 | [] -> (pos, st)
 | c1 :: rest ->
    if (pos <= rsiz) then sha3_update rest (pos + 1) (update_byte c1 pos st)
   else sha3_update rest( 0) (keccakf (update_byte c1 pos st))
))

(*val keccak_final : nat -> list word64 -> list byte*)
let keccak_final p st:(word8)list=   
 (let st0 = (update_byte(word8FromNumeral 0X01) p st) in
   let st1 = (update_byte(word8FromNumeral 0X80) ( Nat_num.nat_monus rsiz( 1)) st0) in
   let st2 = (take( 4) (keccakf st1)) in
   List.concat (map (fun x -> List.rev (word_rsplit x)) st2))

let initial_st : Int64.t list=  (genlist (fun _ ->Int64.of_int 0)( 25))

let initial_pos : int= ( 0)

(*val keccak' : list byte -> list byte*)
let keccak' input:(byte)list=   
 (let mid = (sha3_update input initial_pos initial_st) in
   keccak_final (fst mid) (snd mid))

type w256 = word256

(*val list_fill_right : bool -> nat -> list bool -> list bool*)
let list_fill_right filled target orig:(bool)list=  
 (if List.length orig >= target then orig else
  let filling_len = (Nat_num.nat_monus target (List.length orig)) in
  List.rev_append (List.rev orig) (replicate filling_len filled))

(*val list_fill_left : bool -> nat -> list bool -> list bool*)
let list_fill_left filled target orig:(bool)list=  
 (if List.length orig >= target then orig else
  let filling_len = (Nat_num.nat_monus target (List.length orig)) in
  List.rev_append (List.rev (replicate filling_len filled)) orig)

(*val word_of_bytes : list byte -> w256*)
let word_of_bytes lst:word256=  (word256FromBoollist
                          (list_fill_left false( 256)
                            (List.concat (map boolListFromWord8 lst))))

(*val keccak : list byte -> Word256.word256*)
let keccak input:word256=  (word_of_bytes (keccak' input))


