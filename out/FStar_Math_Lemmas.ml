open Prims
let euclidean_div_axiom : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let lemma_eucl_div_bound : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit
  = fun a  -> fun b  -> fun q  -> () 
let lemma_mult_le_left : Prims.pos -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_mult_le_right : Prims.nat -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_mult_lt_left : Prims.pos -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_mult_lt_right : Prims.nat -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_mult_lt_sqr : Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun m  -> fun k  -> () 
let distributivity_add_left :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let distributivity_add_right :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let distributivity_sub_left :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let distributivity_sub_right :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let paren_mul_left : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let paren_mul_right : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let paren_add_left : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let paren_add_right : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let addition_is_associative :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let subtraction_is_distributive :
  Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let swap_add_plus_minus : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let swap_mul : Prims.int -> Prims.int -> Prims.unit = fun a  -> fun b  -> () 
let neg_mul_left : Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> () 
let neg_mul_right : Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> () 
let swap_neg_mul : Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> () 
let mul_binds_tighter : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let mul_ineq1 :
  Prims.int -> Prims.nat -> Prims.int -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> fun d  -> () 
let nat_times_nat_is_nat : Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> () 
let pos_times_pos_is_pos : Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let nat_over_pos_is_nat : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let pow2_double_sum : Prims.nat -> Prims.unit = fun n  -> () 
let pow2_double_mult : Prims.nat -> Prims.unit = fun n  -> () 
let rec pow2_lt_compat : Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun m  -> () 
let pow2_le_compat : Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun m  -> () 
let rec pow2_plus : Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun m  -> () 
let pow2_minus : Prims.nat -> Prims.nat -> Prims.unit =
  fun n  -> fun m  -> () 
let multiply_fractions : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun n  -> () 
let modulo_lemma : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let lemma_div_mod : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let lemma_mod_lt : Prims.int -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let lemma_div_lt : Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun n  -> fun m  -> () 
let lemma_eq_trans_2 :
  Prims.int -> Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun w  -> fun x  -> fun y  -> fun z  -> () 
let lemma_mod_plus_0 : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let lemma_mod_plus_1 : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let lemma_mod_plus : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let lemma_mod_sub_0 : Prims.pos -> Prims.unit = fun a  -> () 
let lemma_mod_sub_1 : Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let lemma_mod_mul_distr_l_0 :
  Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let lemma_mod_mul_distr_l : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit
  = fun a  -> fun b  -> fun p  -> () 
let lemma_mod_injective : Prims.pos -> Prims.nat -> Prims.nat -> Prims.unit =
  fun p  -> fun a  -> fun b  -> () 
let lemma_mul_sub_distr : Prims.int -> Prims.int -> Prims.int -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_div_exact : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let div_exact_r : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let lemma_mod_spec : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let lemma_mod_spec2 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> () 
let lemma_mod_plus_injective_1 :
  Prims.pos -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun p  -> fun a  -> fun b  -> fun c  -> () 
let lemma_mod_plus_injective :
  Prims.pos -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun p  -> fun a  -> fun b  -> fun c  -> () 
let lemma_mod_plus_distr_l :
  Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let lemma_mod_plus_mul_distr :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> fun p  -> () 
let lemma_mod_mod : Prims.int -> Prims.int -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let euclidean_division_definition : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let modulo_range_lemma : Prims.int -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let small_modulo_lemma_1 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let small_modulo_lemma_2 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let small_division_lemma_1 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let small_division_lemma_2 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let multiplication_order_lemma :
  Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun p  -> () 
let division_propriety : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let division_definition_lemma_1 :
  Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun m  -> () 
let division_definition_lemma_2 :
  Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun m  -> () 
let division_definition : Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun m  -> () 
let multiple_division_lemma : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let multiple_modulo_lemma : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> () 
let division_addition_lemma :
  Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun n  -> () 
let lemma_div_le_ : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun d  -> () 
let lemma_div_le : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun d  -> () 
let division_sub_lemma : Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun n  -> () 
let modulo_distributivity : Prims.nat -> Prims.nat -> Prims.pos -> Prims.unit
  = fun a  -> fun b  -> fun c  -> () 
let modulo_addition_lemma : Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit
  = fun a  -> fun b  -> fun n  -> () 
let lemma_mod_sub : Prims.nat -> Prims.pos -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun n  -> () 
let mod_mult_exact : Prims.nat -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun p  -> fun q  -> () 
let mod_pow2_div2 : Prims.nat -> Prims.pos -> Prims.unit =
  fun a  -> fun m  -> () 
let division_multiplication_lemma :
  Prims.nat -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let lemma_mul_pos_pos_is_pos : Prims.pos -> Prims.pos -> Prims.unit =
  fun x  -> fun y  -> () 
let lemma_mul_nat_pos_is_nat : Prims.nat -> Prims.pos -> Prims.unit =
  fun x  -> fun y  -> () 
let modulo_division_lemma_0 :
  Prims.nat -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let modulo_division_lemma : Prims.nat -> Prims.pos -> Prims.pos -> Prims.unit
  = fun a  -> fun b  -> fun c  -> () 
let modulo_modulo_lemma : Prims.nat -> Prims.pos -> Prims.pos -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_multiplication_division_lemma_1 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_multiplication_division_lemma_2 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_multiplication_modulo_lemma_1 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_multiplication_modulo_lemma_2 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_modulo_division_lemma_1 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_modulo_division_lemma_2 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_modulo_modulo_lemma_1 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 
let pow2_modulo_modulo_lemma_2 :
  Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit =
  fun a  -> fun b  -> fun c  -> () 