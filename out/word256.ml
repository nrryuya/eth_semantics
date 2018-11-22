(*Generated by Lem from word256.lem.*)

open Lem_pervasives
open Lem_word

type word256 = W256 of bool * bool list

(* perhaps should truncate here? *)
(*val bs_to_w256 : bitSequence -> word256*)
let bs_to_w256 seq:word256=  ((match resizeBitSeq (Some( 256)) seq with
 | BitSeq( _, s, b) -> W256( s, b)
))

(*val w256_to_bs : word256 -> bitSequence*)
let w256_to_bs (W256( s, b)):bitSequence=  (BitSeq( (Some( 256)), s, b))

(*val word256BinTest : forall 'a. (bitSequence -> bitSequence -> 'a) -> word256 -> word256 -> 'a*)
let word256BinTest binop w1 w2:'a=  (binop (w256_to_bs w1) (w256_to_bs w2))

(*val word256BinOp : (bitSequence -> bitSequence -> bitSequence) -> word256 -> word256 -> word256*)
let word256BinOp binop w1 w2:word256=  (bs_to_w256 (binop (w256_to_bs w1) (w256_to_bs w2)))

(*val word256NatOp : (bitSequence -> nat -> bitSequence) -> word256 -> nat -> word256*)
let word256NatOp binop w1 n:word256=  (bs_to_w256 (binop (w256_to_bs w1) n))

(*val word256UnaryOp : (bitSequence -> bitSequence) -> word256 -> word256*)
let word256UnaryOp op w:word256=  (bs_to_w256 (op (w256_to_bs w)))

(*val size256 : integer*)
let size256:Nat_big_num.num=  (Nat_big_num.pow_int(Nat_big_num.of_int 2)( 256))

(*val word256ToInteger : word256 -> integer*)
let word256ToInteger w:Nat_big_num.num=  (integerFromBitSeq (w256_to_bs w))


(*val word256ToNatural : word256 -> natural*)
let word256ToNatural w:Nat_big_num.num=  (Nat_big_num.abs ( Nat_big_num.modulus(word256ToInteger w) size256))

(*val word256FromInteger : integer -> word256*)
let word256FromInteger i:word256=  (bs_to_w256 (bitSeqFromInteger (Some( 256)) i))

(*val word256FromInt : int -> word256*)
let word256FromInt i:word256=  (bs_to_w256 (bitSeqFromInteger (Some( 256)) (Nat_big_num.of_int i)))

(*val word256FromNatural : natural -> word256*)
let word256FromNatural i:word256=  (word256FromInteger ( i))

(*val word256FromNat : nat -> word256*)
let word256FromNat i:word256=  (word256FromInteger (Nat_big_num.of_int i))

(*val word256FromBoollist : list bool -> word256*)
let word256FromBoollist lst:word256=  ((match bitSeqFromBoolList (List.rev lst) with
 | None -> bs_to_w256(bitSeqFromInteger None (Nat_big_num.of_int 0))
 | Some a -> bs_to_w256 a
))

(*val boolListFromWord256 : word256 -> list bool*)
let boolListFromWord256 w:(bool)list=  (List.rev (boolListFrombitSeq( 256) (w256_to_bs w)))

(*val word256FromNumeral : numeral -> word256*)
let word256FromNumeral w:word256=  (bs_to_w256 (bitSeqFromInteger None (Nat_big_num.of_int w)))

(*val w256Eq : word256 -> word256 -> bool*)
let w256Eq:word256 ->word256 ->bool=  (=)

(*val w256Less : word256 -> word256 -> bool*)
let w256Less bs1 bs2:bool=  (word256BinTest bitSeqLess bs1 bs2)

(*val w256LessEqual : word256 -> word256 -> bool*)
let w256LessEqual bs1 bs2:bool=  (word256BinTest bitSeqLessEqual bs1 bs2)

(*val w256Greater : word256 -> word256 -> bool*)
let w256Greater bs1 bs2:bool=  (word256BinTest bitSeqGreater bs1 bs2)

(*val w256GreaterEqual : word256 -> word256 -> bool*)
let w256GreaterEqual bs1 bs2:bool=  (word256BinTest bitSeqGreaterEqual bs1 bs2)

(*val w256Compare : word256 -> word256 -> ordering*)
let w256Compare bs1 bs2:int=  (word256BinTest bitSeqCompare bs1 bs2)

let instance_Basic_classes_Ord_Word256_word256_dict:(word256)ord_class= ({

  compare_method = w256Compare;

  isLess_method = w256Less;

  isLessEqual_method = w256LessEqual;

  isGreater_method = w256Greater;

  isGreaterEqual_method = w256GreaterEqual})

let instance_Basic_classes_SetType_Word256_word256_dict:(word256)setType_class= ({

  setElemCompare_method = w256Compare})

(*val word256Negate : word256 -> word256*)
let word256Negate:word256 ->word256=  (word256UnaryOp bitSeqNegate)

(*val word256Succ : word256 -> word256*)
let word256Succ:word256 ->word256=  (word256UnaryOp bitSeqSucc)

(*val word256Pred : word256 -> word256*)
let word256Pred:word256 ->word256=  (word256UnaryOp bitSeqPred)

(*val word256Lnot : word256 -> word256*)
let word256Lnot:word256 ->word256=  (word256UnaryOp bitSeqNot)

(*val word256Add : word256 -> word256 -> word256*)
let word256Add:word256 ->word256 ->word256=  (word256BinOp bitSeqAdd)

(*val word256Minus : word256 -> word256 -> word256*)
let word256Minus:word256 ->word256 ->word256=  (word256BinOp bitSeqMinus)

(*val word256Mult : word256 -> word256 -> word256*)
let word256Mult:word256 ->word256 ->word256=  (word256BinOp bitSeqMult)

(*val word256IntegerDivision : word256 -> word256 -> word256*)
let word256IntegerDivision:word256 ->word256 ->word256=  (word256BinOp bitSeqDiv)

(*val word256Division : word256 -> word256 -> word256*)
let word256Division:word256 ->word256 ->word256=  (word256BinOp bitSeqDiv)

(*val word256Remainder : word256 -> word256 -> word256*)
let word256Remainder:word256 ->word256 ->word256=  (word256BinOp bitSeqMod)

(*val word256Land : word256 -> word256 -> word256*)
let word256Land:word256 ->word256 ->word256=  (word256BinOp bitSeqAnd)

(*val word256Lor : word256 -> word256 -> word256*)
let word256Lor:word256 ->word256 ->word256=  (word256BinOp bitSeqOr)

(*val word256Lxor : word256 -> word256 -> word256*)
let word256Lxor:word256 ->word256 ->word256=  (word256BinOp bitSeqXor)

(*val word256Min : word256 -> word256 -> word256*)
let word256Min:word256 ->word256 ->word256=  (word256BinOp (bitSeqMin))

(*val word256Max : word256 -> word256 -> word256*)
let word256Max:word256 ->word256 ->word256=  (word256BinOp (bitSeqMax))

(*val word256Power : word256 -> nat -> word256*)
let word256Power:word256 ->int ->word256=  (word256NatOp bitSeqPow)

(*val word256Asr : word256 -> nat -> word256*)
let word256Asr:word256 ->int ->word256=  (word256NatOp bitSeqArithmeticShiftRight)

(*val word256Lsr : word256 -> nat -> word256*)
let word256Lsr:word256 ->int ->word256=  (word256NatOp bitSeqLogicalShiftRight)

(*val word256Lsl : word256 -> nat -> word256*)
let word256Lsl:word256 ->int ->word256=  (word256NatOp bitSeqShiftLeft)


let instance_Num_NumNegate_Word256_word256_dict:(word256)numNegate_class= ({

  numNegate_method = word256Negate})

let instance_Num_NumAdd_Word256_word256_dict:(word256)numAdd_class= ({

  numAdd_method = word256Add})

let instance_Num_NumMinus_Word256_word256_dict:(word256)numMinus_class= ({

  numMinus_method = word256Minus})

let instance_Num_NumSucc_Word256_word256_dict:(word256)numSucc_class= ({

  succ_method = word256Succ})

let instance_Num_NumPred_Word256_word256_dict:(word256)numPred_class= ({

  pred_method = word256Pred})

let instance_Num_NumMult_Word256_word256_dict:(word256)numMult_class= ({

  numMult_method = word256Mult})

let instance_Num_NumPow_Word256_word256_dict:(word256)numPow_class= ({

  numPow_method = word256Power})

let instance_Num_NumIntegerDivision_Word256_word256_dict:(word256)numIntegerDivision_class= ({

  div_method = word256IntegerDivision})

let instance_Num_NumDivision_Word256_word256_dict:(word256)numDivision_class= ({

  numDivision_method = word256Division})

let instance_Num_NumRemainder_Word256_word256_dict:(word256)numRemainder_class= ({

  mod_method = word256Remainder})

let instance_Basic_classes_OrdMaxMin_Word256_word256_dict:(word256)ordMaxMin_class= ({

  max_method = word256Max;

  min_method = word256Min})

let instance_Word_WordNot_Word256_word256_dict:(word256)wordNot_class= ({

  lnot_method = word256Lnot})

let instance_Word_WordAnd_Word256_word256_dict:(word256)wordAnd_class= ({

  land_method = word256Land})

let instance_Word_WordOr_Word256_word256_dict:(word256)wordOr_class= ({

  lor_method = word256Lor})

let instance_Word_WordXor_Word256_word256_dict:(word256)wordXor_class= ({

  lxor_method = word256Lxor})

let instance_Word_WordLsl_Word256_word256_dict:(word256)wordLsl_class= ({

  lsl_method = word256Lsl})

let instance_Word_WordLsr_Word256_word256_dict:(word256)wordLsr_class= ({

  lsr_method = word256Lsr})

let instance_Word_WordAsr_Word256_word256_dict:(word256)wordAsr_class= ({

  asr_method = word256Asr})

(*val word256UGT : word256 -> word256 -> bool*)
let word256UGT a b:bool=  (Nat_big_num.greater (word256ToNatural a) (word256ToNatural b))

(*val word256ULT : word256 -> word256 -> bool*)
let word256ULT a b:bool=  (Nat_big_num.less (word256ToNatural a) (word256ToNatural b))

(*val word256UGE : word256 -> word256 -> bool*)
let word256UGE a b:bool=  (Nat_big_num.greater_equal (word256ToNatural a) (word256ToNatural b))

