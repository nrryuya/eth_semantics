open Prims
type 'An bv_t = Prims.bool FStar_Seq_Base.seq[@@deriving show]
let zero_vec : Prims.pos -> Prims.unit bv_t =
  fun n  -> FStar_Seq_Base.create n false 
let elem_vec : Prims.pos -> Prims.nat -> Prims.unit bv_t =
  fun n  ->
    fun i  -> FStar_Seq_Base.upd (FStar_Seq_Base.create n false) i true
  
let ones_vec : Prims.pos -> Prims.unit bv_t =
  fun n  -> FStar_Seq_Base.create n true 
let rec logand_vec :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      fun b  ->
        if n = (Prims.parse_int "1")
        then
          FStar_Seq_Base.create (Prims.parse_int "1")
            ((FStar_Seq_Base.index a (Prims.parse_int "0")) &&
               (FStar_Seq_Base.index b (Prims.parse_int "0")))
        else
          FStar_Seq_Base.append
            (FStar_Seq_Base.create (Prims.parse_int "1")
               ((FStar_Seq_Base.index a (Prims.parse_int "0")) &&
                  (FStar_Seq_Base.index b (Prims.parse_int "0"))))
            (logand_vec (n - (Prims.parse_int "1"))
               (FStar_Seq_Base.slice a (Prims.parse_int "1") n)
               (FStar_Seq_Base.slice b (Prims.parse_int "1") n))
  
let rec logxor_vec :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      fun b  ->
        if n = (Prims.parse_int "1")
        then
          FStar_Seq_Base.create (Prims.parse_int "1")
            ((FStar_Seq_Base.index a (Prims.parse_int "0")) <>
               (FStar_Seq_Base.index b (Prims.parse_int "0")))
        else
          FStar_Seq_Base.append
            (FStar_Seq_Base.create (Prims.parse_int "1")
               ((FStar_Seq_Base.index a (Prims.parse_int "0")) <>
                  (FStar_Seq_Base.index b (Prims.parse_int "0"))))
            (logxor_vec (n - (Prims.parse_int "1"))
               (FStar_Seq_Base.slice a (Prims.parse_int "1") n)
               (FStar_Seq_Base.slice b (Prims.parse_int "1") n))
  
let rec logor_vec :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      fun b  ->
        if n = (Prims.parse_int "1")
        then
          FStar_Seq_Base.create (Prims.parse_int "1")
            ((FStar_Seq_Base.index a (Prims.parse_int "0")) ||
               (FStar_Seq_Base.index b (Prims.parse_int "0")))
        else
          FStar_Seq_Base.append
            (FStar_Seq_Base.create (Prims.parse_int "1")
               ((FStar_Seq_Base.index a (Prims.parse_int "0")) ||
                  (FStar_Seq_Base.index b (Prims.parse_int "0"))))
            (logor_vec (n - (Prims.parse_int "1"))
               (FStar_Seq_Base.slice a (Prims.parse_int "1") n)
               (FStar_Seq_Base.slice b (Prims.parse_int "1") n))
  
let rec lognot_vec : Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      if n = (Prims.parse_int "1")
      then
        FStar_Seq_Base.create (Prims.parse_int "1")
          (Prims.op_Negation (FStar_Seq_Base.index a (Prims.parse_int "0")))
      else
        FStar_Seq_Base.append
          (FStar_Seq_Base.create (Prims.parse_int "1")
             (Prims.op_Negation
                (FStar_Seq_Base.index a (Prims.parse_int "0"))))
          (lognot_vec (n - (Prims.parse_int "1"))
             (FStar_Seq_Base.slice a (Prims.parse_int "1") n))
  
let rec logand_vec_definition :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let rec logxor_vec_definition :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let rec logor_vec_definition :
  Prims.pos -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> () 
let rec lognot_vec_definition :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun i  -> () 
let lemma_xor_bounded :
  Prims.pos -> Prims.nat -> Prims.unit bv_t -> Prims.unit bv_t -> Prims.unit
  = fun m  -> fun n  -> fun x  -> fun y  -> () 
type ('An,'Aa,'Ab) is_subset_vec = Prims.unit[@@deriving show]
type ('An,'Aa,'Ab) is_superset_vec = Prims.unit[@@deriving show]
let lemma_slice_subset_vec :
  Prims.pos ->
    Prims.unit bv_t ->
      Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> fun j  -> () 
let lemma_slice_superset_vec :
  Prims.pos ->
    Prims.unit bv_t ->
      Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit
  = fun n  -> fun a  -> fun b  -> fun i  -> fun j  -> () 
let shift_left_vec :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      fun s  ->
        if s >= n
        then zero_vec n
        else
          if s = (Prims.parse_int "0")
          then a
          else
            FStar_Seq_Base.append (FStar_Seq_Base.slice a s n) (zero_vec s)
  
let shift_right_vec :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.unit bv_t =
  fun n  ->
    fun a  ->
      fun s  ->
        if s >= n
        then zero_vec n
        else
          if s = (Prims.parse_int "0")
          then a
          else
            FStar_Seq_Base.append (zero_vec s)
              (FStar_Seq_Base.slice a (Prims.parse_int "0") (n - s))
  
let shift_left_vec_lemma_1 :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_left_vec_lemma_2 :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_right_vec_lemma_1 :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 
let shift_right_vec_lemma_2 :
  Prims.pos -> Prims.unit bv_t -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun a  -> fun s  -> fun i  -> () 