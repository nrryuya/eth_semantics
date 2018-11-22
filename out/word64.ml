(*Generated by Lem from word64.lem.*)
(*
  Copyright 2016 Sami MÃ¤kelÃ¤

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)

open Lem_pervasives
open Lem_word

(*type word64 = W64 of bool * list bool*)

(* perhaps should truncate here? *)
(*val bs_to_w64 : bitSequence -> word64*)
(*let bs_to_w64 seq:word64=  match resizeBitSeq (Just 64) seq with
 | BitSeq _ s b -> W64 s b
end*)

(*val w64_to_bs : word64 -> bitSequence*)
(*let w64_to_bs (W64 s b):bitSequence=  BitSeq (Just 64) s b*)

(*val word64BinTest : forall 'a. (bitSequence -> bitSequence -> 'a) -> word64 -> word64 -> 'a*)
let word64BinTest binop w1 w2:'a=  (binop ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w1) ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w2))

(*val word64BinOp : (bitSequence -> bitSequence -> bitSequence) -> word64 -> word64 -> word64*)
let word64BinOp binop w1 w2:Int64.t=  ((fun w -> Nat_big_num.to_int64 (integerFromBitSeq w)) (binop ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w1) ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w2)))

(*val word64NatOp : (bitSequence -> nat -> bitSequence) -> word64 -> nat -> word64*)
let word64NatOp binop w1 n:Int64.t=  ((fun w -> Nat_big_num.to_int64 (integerFromBitSeq w)) (binop ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w1) n))

(*val word64UnaryOp : (bitSequence -> bitSequence) -> word64 -> word64*)
let word64UnaryOp op w:Int64.t=  ((fun w -> Nat_big_num.to_int64 (integerFromBitSeq w)) (op ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w)))

(*val size64 : integer*)
let size64:Nat_big_num.num=  (Nat_big_num.pow_int(Nat_big_num.of_int 2)( 64))

(*val word64ToInteger : word64 -> integer*)
(*let word64ToInteger w:integer=  integerFromBitSeq (w64_to_bs w)*)

(*val word64ToNatural : word64 -> natural*)
(*let word64ToNatural w:natural=  naturalFromInteger ((Instance_Num_NumRemainder_Num_integer.mod) (word64ToInteger w) size64)*)

(*val word64FromInteger : integer -> word64*)
(*let word64FromInteger i:word64=  bs_to_w64 (bitSeqFromInteger (Just 64) i)*)

(*val word64FromInt : int -> word64*)
(*let word64FromInt i:word64=  bs_to_w64 (bitSeqFromInteger (Just 64) (integerFromInt i))*)

(*val word64FromNatural : natural -> word64*)
(*let word64FromNatural i:word64=  word64FromInteger (integerFromNatural i)*)

(*val word64FromNat : nat -> word64*)
(*let word64FromNat i:word64=  word64FromInteger (integerFromNat i)*)

(*val word64FromBoollist : list bool -> word64*)
let word64FromBoollist lst:Int64.t=  ((match bitSeqFromBoolList (List.rev lst) with
 | None -> (fun w -> Nat_big_num.to_int64 (integerFromBitSeq w))(bitSeqFromInteger None (Nat_big_num.of_int 0))
 | Some a -> (fun w -> Nat_big_num.to_int64 (integerFromBitSeq w)) a
))

(*val boolListFromWord64 : word64 -> list bool*)
let boolListFromWord64 w:(bool)list=  (List.rev (boolListFrombitSeq( 64) ((fun w -> bitSeqFromInteger (Some 64) (Nat_big_num.of_int64 w)) w)))

(*val word64FromNumeral : numeral -> word64*)
(*let word64FromNumeral w:word64=  bs_to_w64 (Instance_Num_Numeral_Word_bitSequence.fromNumeral w)*)

(*val w64Eq : word64 -> word64 -> bool*)
let w64Eq:Int64.t ->Int64.t ->bool=  (=)

(*val w64Less : word64 -> word64 -> bool*)
(*let w64Less bs1 bs2:bool=  word64BinTest  
  (Instance_Basic_classes_Ord_Word_bitSequence.<) bs1 bs2*)

(*val w64LessEqual : word64 -> word64 -> bool*)
(*let w64LessEqual bs1 bs2:bool=  word64BinTest  
  (Instance_Basic_classes_Ord_Word_bitSequence.<=) bs1 bs2*)

(*val w64Greater : word64 -> word64 -> bool*)
(*let w64Greater bs1 bs2:bool=  word64BinTest  
  (Instance_Basic_classes_Ord_Word_bitSequence.>) bs1 bs2*)

(*val w64GreaterEqual : word64 -> word64 -> bool*)
(*let w64GreaterEqual bs1 bs2:bool=  word64BinTest  
  (Instance_Basic_classes_Ord_Word_bitSequence.>=) bs1 bs2*)

(*val w64Compare : word64 -> word64 -> ordering*)
(*let w64Compare bs1 bs2:ordering=  word64BinTest  
  Instance_Basic_classes_Ord_Word_bitSequence.compare bs1 bs2*)

let instance_Basic_classes_Ord_Word64_word64_dict:(Int64.t)ord_class= ({

  compare_method = Int64.compare;

  isLess_method = (<);

  isLessEqual_method = (<=);

  isGreater_method = (>);

  isGreaterEqual_method = (>=)})

let instance_Basic_classes_SetType_Word64_word64_dict:(Int64.t)setType_class= ({

  setElemCompare_method = Int64.compare})

(*val word64Negate : word64 -> word64*)
(*let word64Negate:word64 ->word64=  word64UnaryOp  
  Instance_Num_NumNegate_Word_bitSequence.~*)

(*val word64Succ : word64 -> word64*)
(*let word64Succ:word64 ->word64=  word64UnaryOp  
  Instance_Num_NumSucc_Word_bitSequence.succ*)

(*val word64Pred : word64 -> word64*)
(*let word64Pred:word64 ->word64=  word64UnaryOp  
  Instance_Num_NumPred_Word_bitSequence.pred*)

(*val word64Lnot : word64 -> word64*)
(*let word64Lnot:word64 ->word64=  word64UnaryOp  
  Instance_Word_WordNot_Word_bitSequence.lnot*)

(*val word64Add : word64 -> word64 -> word64*)
(*let word64Add:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Num_NumAdd_Word_bitSequence.+)*)

(*val word64Minus : word64 -> word64 -> word64*)
(*let word64Minus:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Num_NumMinus_Word_bitSequence.-)*)

(*val word64Mult : word64 -> word64 -> word64*)
(*let word64Mult:word64 ->word64 ->word64=  word64BinOp  
  ( Instance_Num_NumMult_Word_bitSequence.* )*)

(*val word64IntegerDivision : word64 -> word64 -> word64*)
let word64IntegerDivision:Int64.t ->Int64.t ->Int64.t=  (word64BinOp bitSeqDiv)

(*val word64Division : word64 -> word64 -> word64*)
(*let word64Division:word64 ->word64 ->word64=  word64BinOp  
  Instance_Num_NumIntegerDivision_Word_bitSequence.div*)

(*val word64Remainder : word64 -> word64 -> word64*)
(*let word64Remainder:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Num_NumRemainder_Word_bitSequence.mod)*)

(*val word64Land : word64 -> word64 -> word64*)
(*let word64Land:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Word_WordAnd_Word_bitSequence.land)*)

(*val word64Lor : word64 -> word64 -> word64*)
(*let word64Lor:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Word_WordOr_Word_bitSequence.lor)*)

(*val word64Lxor : word64 -> word64 -> word64*)
(*let word64Lxor:word64 ->word64 ->word64=  word64BinOp  
  (Instance_Word_WordXor_Word_bitSequence.lxor)*)

(*val word64Min : word64 -> word64 -> word64*)
let word64Min:Int64.t ->Int64.t ->Int64.t=  (word64BinOp (bitSeqMin))

(*val word64Max : word64 -> word64 -> word64*)
let word64Max:Int64.t ->Int64.t ->Int64.t=  (word64BinOp (bitSeqMax))

(*val word64Power : word64 -> nat -> word64*)
let word64Power a b:Int64.t=  (gen_pow(Int64.of_int 1) Int64.mul a b)

(*val word64Asr : word64 -> nat -> word64*)
(*let word64Asr:word64 ->nat ->word64=  word64NatOp  
  (Instance_Word_WordAsr_Word_bitSequence.asr)*)

(*val word64Lsr : word64 -> nat -> word64*)
(*let word64Lsr:word64 ->nat ->word64=  word64NatOp  
  (Instance_Word_WordLsr_Word_bitSequence.lsr)*)

(*val word64Lsl : word64 -> nat -> word64*)
(*let word64Lsl:word64 ->nat ->word64=  word64NatOp  
  (Instance_Word_WordLsl_Word_bitSequence.lsl)*)


let instance_Num_NumNegate_Word64_word64_dict:(Int64.t)numNegate_class= ({

  numNegate_method = Int64.neg})

let instance_Num_NumAdd_Word64_word64_dict:(Int64.t)numAdd_class= ({

  numAdd_method = Int64.add})

let instance_Num_NumMinus_Word64_word64_dict:(Int64.t)numMinus_class= ({

  numMinus_method = Int64.sub})

let instance_Num_NumSucc_Word64_word64_dict:(Int64.t)numSucc_class= ({

  succ_method = Int64.succ})

let instance_Num_NumPred_Word64_word64_dict:(Int64.t)numPred_class= ({

  pred_method = Int64.pred})

let instance_Num_NumMult_Word64_word64_dict:(Int64.t)numMult_class= ({

  numMult_method = Int64.mul})

let instance_Num_NumPow_Word64_word64_dict:(Int64.t)numPow_class= ({

  numPow_method = word64Power})

let instance_Num_NumIntegerDivision_Word64_word64_dict:(Int64.t)numIntegerDivision_class= ({

  div_method = word64IntegerDivision})

let instance_Num_NumDivision_Word64_word64_dict:(Int64.t)numDivision_class= ({

  numDivision_method = Nat_num.int64_div})

let instance_Num_NumRemainder_Word64_word64_dict:(Int64.t)numRemainder_class= ({

  mod_method = Nat_num.int64_mod})

let instance_Basic_classes_OrdMaxMin_Word64_word64_dict:(Int64.t)ordMaxMin_class= ({

  max_method = word64Max;

  min_method = word64Min})

let instance_Word_WordNot_Word64_word64_dict:(Int64.t)wordNot_class= ({

  lnot_method = Int64.lognot})

let instance_Word_WordAnd_Word64_word64_dict:(Int64.t)wordAnd_class= ({

  land_method = Int64.logand})

let instance_Word_WordOr_Word64_word64_dict:(Int64.t)wordOr_class= ({

  lor_method = Int64.logor})

let instance_Word_WordXor_Word64_word64_dict:(Int64.t)wordXor_class= ({

  lxor_method = Int64.logxor})

let instance_Word_WordLsl_Word64_word64_dict:(Int64.t)wordLsl_class= ({

  lsl_method = Int64.shift_left})

let instance_Word_WordLsr_Word64_word64_dict:(Int64.t)wordLsr_class= ({

  lsr_method = Int64.shift_right_logical})

let instance_Word_WordAsr_Word64_word64_dict:(Int64.t)wordAsr_class= ({

  asr_method = Int64.shift_right})

(*val word64UGT : word64 -> word64 -> bool*)
let word64UGT a b:bool=  (Nat_big_num.greater (Nat_big_num.of_int64 a) (Nat_big_num.of_int64 b))

(*val word64ULT : word64 -> word64 -> bool*)
let word64ULT a b:bool=  (Nat_big_num.less (Nat_big_num.of_int64 a) (Nat_big_num.of_int64 b))

(*val word64UGE : word64 -> word64 -> bool*)
let word64UGE a b:bool=  (Nat_big_num.greater_equal (Nat_big_num.of_int64 a) (Nat_big_num.of_int64 b))