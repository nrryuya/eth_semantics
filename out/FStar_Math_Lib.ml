open Prims
let lemma_div_def : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let mul_lemma : Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let mul_lemma' : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let mul_div_lemma : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let slash_decr_axiom : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let lemma_mul_minus_distr_l :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let slash_star_axiom : Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let rec log_2 : Prims.pos -> Prims.nat =
  fun x  ->
    if x >= (Prims.parse_int "2")
    then (Prims.parse_int "1") + (log_2 (x / (Prims.parse_int "2")))
    else (Prims.parse_int "0")
  
let rec powx : Prims.int -> Prims.nat -> Prims.int =
  fun x  ->
    fun n  ->
      match n with
      | _0_3 when _0_3 = (Prims.parse_int "0") -> (Prims.parse_int "1")
      | n1 -> x * (powx x (n1 - (Prims.parse_int "1")))
  
let abs : Prims.int -> Prims.int =
  fun x  -> if x >= (Prims.parse_int "0") then x else - x 
let max : Prims.int -> Prims.int -> Prims.int =
  fun x  -> fun y  -> if x >= y then x else y 
let min : Prims.int -> Prims.int -> Prims.int =
  fun x  -> fun y  -> if x >= y then y else x 
let div : Prims.int -> Prims.pos -> Prims.int =
  fun a  ->
    fun b  ->
      if a < (Prims.parse_int "0")
      then
        (if (a mod b) = (Prims.parse_int "0")
         then (Prims.parse_int "0") - ((Prims.parse_int "0") - (a / b))
         else
           ((Prims.parse_int "0") - ((Prims.parse_int "0") - (a / b))) -
             (Prims.parse_int "1"))
      else a / b
  
let div_non_eucl : Prims.int -> Prims.pos -> Prims.int =
  fun a  ->
    fun b  ->
      if a < (Prims.parse_int "0")
      then (Prims.parse_int "0") - (((Prims.parse_int "0") - a) / b)
      else a / b
  
let shift_left : Prims.int -> Prims.nat -> Prims.int =
  fun v  -> fun i  -> v * (Prims.pow2 i) 
let arithmetic_shift_right : Prims.int -> Prims.nat -> Prims.int =
  fun v  -> fun i  -> div v (Prims.pow2 i) 
let signed_modulo : Prims.int -> Prims.pos -> Prims.int =
  fun v  ->
    fun p  ->
      if v >= (Prims.parse_int "0")
      then v mod p
      else (Prims.parse_int "0") - (((Prims.parse_int "0") - v) mod p)
  
let op_Plus_Percent : Prims.int -> Prims.pos -> Prims.int =
  fun a  -> fun p  -> signed_modulo a p 
let powx_lemma1 : Prims.int -> Prims.unit = fun a  -> () 
let rec powx_lemma2 : Prims.int -> Prims.nat -> Prims.nat -> Prims.unit =
  fun x  -> fun n  -> fun m  -> () 
let abs_mul_lemma : Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> () 
let signed_modulo_property : Prims.int -> Prims.pos -> Prims.unit =
  fun v  -> fun p  -> () 
let div_non_eucl_decr_lemma : Prims.int -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let div_non_eucl_bigger_denom_lemma : Prims.int -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 