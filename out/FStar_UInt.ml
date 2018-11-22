open Prims
let pow2_values : Prims.nat -> Prims.unit = fun x  -> () 
let max_int : Prims.nat -> Prims.int =
  fun n  -> (Prims.pow2 n) - (Prims.parse_int "1") 
let min_int : Prims.nat -> Prims.int = fun n  -> (Prims.parse_int "0") 
let fits : Prims.int -> Prims.nat -> Prims.bool =
  fun x  -> fun n  -> ((min_int n) <= x) && (x <= (max_int n)) 
type ('Ax,'An) size = Prims.unit[@@deriving show]
type 'An uint_t = Prims.int[@@deriving show]
let zero : Prims.nat -> Prims.unit uint_t = fun n  -> (Prims.parse_int "0") 
let pow2_n : Prims.pos -> Prims.nat -> Prims.unit uint_t =
  fun n  -> fun p  -> Prims.pow2 p 
let one : Prims.pos -> Prims.unit uint_t = fun n  -> (Prims.parse_int "1") 
let ones : Prims.nat -> Prims.unit uint_t = fun n  -> max_int n 
let incr : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> a + (Prims.parse_int "1") 
let decr : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> a - (Prims.parse_int "1") 
let incr_underspec : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      if a < (max_int n) then a + (Prims.parse_int "1") else Prims.magic ()
  
let decr_underspec : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      if a > (min_int n) then a - (Prims.parse_int "1") else Prims.magic ()
  
let incr_mod : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> (a + (Prims.parse_int "1")) mod (Prims.pow2 n) 
let decr_mod : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> (a - (Prims.parse_int "1")) mod (Prims.pow2 n) 
let add :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a + b 
let add_underspec :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  -> fun b  -> if fits (a + b) n then a + b else Prims.magic ()
  
let add_mod :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> (a + b) mod (Prims.pow2 n) 
let sub :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a - b 
let sub_underspec :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  -> fun b  -> if fits (a - b) n then a - b else Prims.magic ()
  
let sub_mod :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> (a - b) mod (Prims.pow2 n) 
let mul :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a * b 
let mul_underspec :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  -> fun b  -> if fits (a * b) n then a * b else Prims.magic ()
  
let mul_mod :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> (a * b) mod (Prims.pow2 n) 
let mul_div :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> (a * b) / (Prims.pow2 n) 
let div :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a / b 
let div_underspec :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  -> fun b  -> if fits (a / b) n then a / b else Prims.magic ()
  
let div_size :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let udiv :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a / b 
let mod_ :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> fun b  -> a - ((a / b) * b) 
let eq : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.bool =
  fun n  -> fun a  -> fun b  -> a = b 
let gt : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.bool =
  fun n  -> fun a  -> fun b  -> a > b 
let gte : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.bool =
  fun n  -> fun a  -> fun b  -> a >= b 
let lt : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.bool =
  fun n  -> fun a  -> fun b  -> a < b 
let lte : Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.bool =
  fun n  -> fun a  -> fun b  -> a <= b 
let to_uint_t : Prims.nat -> Prims.int -> Prims.unit uint_t =
  fun m  -> fun a  -> a mod (Prims.pow2 m) 
let rec to_vec :
  Prims.nat -> Prims.unit uint_t -> Prims.unit FStar_BitVector.bv_t =
  fun n  ->
    fun num  ->
      if n = (Prims.parse_int "0")
      then FStar_Seq_Base.createEmpty ()
      else
        FStar_Seq_Base.append
          (to_vec (n - (Prims.parse_int "1")) (num / (Prims.parse_int "2")))
          (FStar_Seq_Base.create (Prims.parse_int "1")
             ((num mod (Prims.parse_int "2")) = (Prims.parse_int "1")))
  
let rec from_vec :
  Prims.nat -> Prims.unit FStar_BitVector.bv_t -> Prims.unit uint_t =
  fun n  ->
    fun vec  ->
      if n = (Prims.parse_int "0")
      then (Prims.parse_int "0")
      else
        ((Prims.parse_int "2") *
           (from_vec (n - (Prims.parse_int "1"))
              (FStar_Seq_Base.slice vec (Prims.parse_int "0")
                 (n - (Prims.parse_int "1")))))
          +
          (if FStar_Seq_Base.index vec (n - (Prims.parse_int "1"))
           then (Prims.parse_int "1")
           else (Prims.parse_int "0"))
  
let to_vec_lemma_1 :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let rec to_vec_lemma_2 :
  Prims.nat -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let rec inverse_aux :
  Prims.nat -> Prims.unit FStar_BitVector.bv_t -> Prims.nat -> Prims.unit =
  fun n  -> fun vec  -> fun i  -> () 
let inverse_vec_lemma :
  Prims.nat -> Prims.unit FStar_BitVector.bv_t -> Prims.unit =
  fun n  -> fun vec  -> () 
let inverse_num_lemma : Prims.nat -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun num  -> () 
let from_vec_lemma_1 :
  Prims.nat ->
    Prims.unit FStar_BitVector.bv_t ->
      Prims.unit FStar_BitVector.bv_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> () 
let from_vec_lemma_2 :
  Prims.nat ->
    Prims.unit FStar_BitVector.bv_t ->
      Prims.unit FStar_BitVector.bv_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> () 
let from_vec_aux :
  Prims.nat ->
    Prims.unit FStar_BitVector.bv_t -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun s1  -> fun s2  -> () 
let seq_slice_lemma :
  Prims.nat ->
    Prims.unit FStar_BitVector.bv_t ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun s1  -> fun t1  -> fun s2  -> fun t2  -> () 
let rec from_vec_propriety :
  Prims.pos -> Prims.unit FStar_BitVector.bv_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let append_lemma :
  Prims.pos ->
    Prims.pos ->
      Prims.unit FStar_BitVector.bv_t ->
        Prims.unit FStar_BitVector.bv_t -> Prims.unit
  = fun n  -> fun m  -> fun a  -> fun b  -> () 
let slice_left_lemma :
  Prims.pos -> Prims.unit FStar_BitVector.bv_t -> Prims.pos -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let slice_right_lemma :
  Prims.pos -> Prims.unit FStar_BitVector.bv_t -> Prims.pos -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let rec zero_to_vec_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let zero_from_vec_lemma : Prims.pos -> Prims.unit = fun n  -> () 
let one_to_vec_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let rec pow2_to_vec_lemma : Prims.pos -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun p  -> fun i  -> () 
let pow2_from_vec_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun p  -> () 
let rec ones_to_vec_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let ones_from_vec_lemma : Prims.pos -> Prims.unit = fun n  -> () 
let nth : Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.bool =
  fun n  -> fun a  -> fun i  -> FStar_Seq_Base.index (to_vec n a) i 
let nth_lemma :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let rec zero_nth_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let pow2_nth_lemma : Prims.pos -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun p  -> fun i  -> () 
let one_nth_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let rec ones_nth_lemma : Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun i  -> () 
let logand :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      fun b  ->
        from_vec n (FStar_BitVector.logand_vec n (to_vec n a) (to_vec n b))
  
let logxor :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      fun b  ->
        from_vec n (FStar_BitVector.logxor_vec n (to_vec n a) (to_vec n b))
  
let logor :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      fun b  ->
        from_vec n (FStar_BitVector.logor_vec n (to_vec n a) (to_vec n b))
  
let lognot : Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t =
  fun n  -> fun a  -> from_vec n (FStar_BitVector.lognot_vec n (to_vec n a)) 
let logand_definition :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let logxor_definition :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let logor_definition :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let lognot_definition :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun i  -> () 
let logand_commutative :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let logand_associative :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun c  -> () 
let logand_self : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logand_lemma_1 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logand_lemma_2 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let rec subset_vec_le_lemma :
  Prims.pos ->
    Prims.unit FStar_BitVector.bv_t ->
      Prims.unit FStar_BitVector.bv_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> () 
let logand_le :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let logxor_commutative :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let logxor_associative :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun c  -> () 
let logxor_self : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logxor_lemma_1 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logxor_lemma_2 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let xor : Prims.bool -> Prims.bool -> Prims.bool =
  fun b  -> fun b'  -> b <> b' 
let xor_lemma : Prims.bool -> Prims.bool -> Prims.unit =
  fun a  -> fun b  -> () 
let logxor_inv :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let logor_commutative :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let logor_associative :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun c  -> () 
let logor_self : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logor_lemma_1 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let logor_lemma_2 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let rec superset_vec_ge_lemma :
  Prims.pos ->
    Prims.unit FStar_BitVector.bv_t ->
      Prims.unit FStar_BitVector.bv_t -> Prims.unit
  = fun n  -> fun a  -> fun b  -> () 
let logor_ge :
  Prims.pos -> Prims.unit uint_t -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> fun b  -> () 
let lognot_self : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let lognot_lemma_1 : Prims.pos -> Prims.unit = fun n  -> () 
let rec to_vec_mod_pow2 :
  Prims.nat -> Prims.unit uint_t -> Prims.pos -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun m  -> fun i  -> () 
let rec to_vec_lt_pow2 :
  Prims.nat -> Prims.unit uint_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun m  -> fun i  -> () 
let rec index_to_vec_ones : Prims.pos -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun m  -> fun i  -> () 
let logor_disjoint :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.pos -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun m  -> () 
let logand_mask : Prims.pos -> Prims.unit uint_t -> Prims.pos -> Prims.unit =
  fun n  -> fun a  -> fun m  -> () 
let shift_left :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      fun s  -> from_vec n (FStar_BitVector.shift_left_vec n (to_vec n a) s)
  
let shift_right :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit uint_t =
  fun n  ->
    fun a  ->
      fun s  -> from_vec n (FStar_BitVector.shift_right_vec n (to_vec n a) s)
  
let shift_left_lemma_1 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_left_lemma_2 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_right_lemma_1 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_right_lemma_2 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_left_logand_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_right_logand_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_left_logxor_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_right_logxor_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_left_logor_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_right_logor_lemma :
  Prims.pos ->
    Prims.unit uint_t -> Prims.unit uint_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun s  -> () 
let shift_left_value_aux_1 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let shift_left_value_aux_2 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let shift_left_value_aux_3 :
  Prims.pos -> Prims.unit uint_t -> Prims.pos -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let shift_left_value_lemma :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let shift_right_value_aux_1 :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let shift_right_value_aux_2 : Prims.pos -> Prims.unit uint_t -> Prims.unit =
  fun n  -> fun a  -> () 
let shift_right_value_aux_3 :
  Prims.pos -> Prims.unit uint_t -> Prims.pos -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 
let shift_right_value_lemma :
  Prims.pos -> Prims.unit uint_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> () 