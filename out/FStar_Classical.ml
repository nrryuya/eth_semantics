open Prims
let give_witness : 'Aa . 'Aa -> Prims.unit = fun x  -> () 
let get_squashed : 'Ab 'Aa . Prims.unit -> 'Aa =
  fun a121  -> (Obj.magic (fun uu____20  -> ())) a121 
let get_equality : 'At . 'At -> 'At -> ('At,Prims.unit,Prims.unit) Prims.eq2
  = fun a  -> fun b  -> () 
let get_forall : 'Aa 'Ap . Prims.unit -> ('Aa,'Ap) Prims.l_Forall =
  fun uu____96  -> () 
let impl_to_arrow :
  'Aa 'Ab . ('Aa,'Ab) Prims.l_imp -> 'Aa Prims.squash -> 'Ab Prims.squash =
  fun impl  -> fun sx  -> () 
let arrow_to_impl :
  'Aa 'Ab . ('Aa Prims.squash -> 'Ab Prims.squash) -> ('Aa,'Ab) Prims.l_imp =
  fun f  -> () 
let forall_intro_gtot :
  'Aa 'Ap . ('Aa -> 'Ap) -> ('Aa,'Ap) Prims.l_Forall Prims.squash =
  fun f  -> () 
let lemma_forall_intro_gtot : 'Aa 'Ap . ('Aa -> 'Ap) -> Prims.unit =
  fun f  -> () 
let gtot_to_lemma : 'Aa 'Ap . ('Aa -> 'Ap) -> 'Aa -> Prims.unit =
  fun f  -> fun x  -> () 
let lemma_to_squash_gtot :
  'Aa 'Ap . ('Aa -> Prims.unit) -> 'Aa -> 'Ap Prims.squash =
  fun f  -> fun x  -> () 
let forall_intro_squash_gtot :
  'Aa 'Ap .
    ('Aa -> 'Ap Prims.squash) -> ('Aa,'Ap) Prims.l_Forall Prims.squash
  = fun f  -> () 
let forall_intro_squash_gtot_join :
  'Aa 'Ap . ('Aa -> 'Ap Prims.squash) -> ('Aa,'Ap) Prims.l_Forall =
  fun f  -> () 
let forall_intro : 'Aa 'Ap . ('Aa -> Prims.unit) -> Prims.unit = fun f  -> () 
let forall_intro' : 'Aa 'Ap . ('Aa -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let forall_intro_2 : 'Aa 'Ab 'Ap . ('Aa -> 'Ab -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let forall_intro_3 :
  'Aa 'Ab 'Ac 'Ap . ('Aa -> 'Ab -> 'Ac -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let exists_intro : 'Aa 'Ap . 'Aa -> Prims.unit = fun witness  -> () 
let forall_to_exists : 'Aa 'Ap 'Ar . ('Aa -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let forall_to_exists_2 :
  'Aa 'Ap 'Ab 'Aq 'Ar . ('Aa -> 'Ab -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let impl_intro_gtot : 'Ap 'Aq . ('Ap -> 'Aq) -> ('Ap,'Aq) Prims.l_imp =
  fun f  -> () 
let impl_intro : 'Ap 'Aq . ('Ap -> Prims.unit) -> Prims.unit = fun f  -> () 
let exists_elim :
  'Agoal 'Aa 'Ap .
    ('Aa,'Ap) Prims.l_Exists Prims.squash ->
      ('Aa -> 'Agoal Prims.squash) -> Prims.unit
  = fun have  -> fun f  -> () 
let move_requires : 'Aa 'Ap 'Aq . ('Aa -> Prims.unit) -> 'Aa -> Prims.unit =
  fun f  -> fun x  -> () 
let forall_impl_intro :
  'Aa 'Ap 'Aq . ('Aa -> 'Ap Prims.squash -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let impl_intro_gen : 'Ap 'Aq . ('Ap Prims.squash -> Prims.unit) -> Prims.unit
  = fun f  -> () 
let ghost_lemma : 'Aa 'Ap 'Aq . ('Aa -> Prims.unit) -> Prims.unit =
  fun f  -> () 
let or_elim :
  'Al 'Ar 'Agoal .
    ('Al Prims.squash -> Prims.unit) ->
      ('Ar Prims.squash -> Prims.unit) -> Prims.unit
  = fun hl  -> fun hr  -> () 
let excluded_middle : 'Ap . Prims.unit = () 