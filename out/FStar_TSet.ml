open Prims
type 'Aa set = 'Aa -> Prims.prop[@@deriving show]
type ('Aa,'As1,'As2) equal = Prims.unit[@@deriving show]
type ('a,'Ax,'As) mem = 'As[@@deriving show]
type ('Aa,'Ax) empty = Prims.unit[@@deriving show]
type ('a,'Ax,'Ay) singleton = Prims.unit[@@deriving show]
type ('a,'As1,'As2,'Ax) union = Prims.unit[@@deriving show]
type ('a,'As1,'As2,'Ax) intersect = Prims.unit[@@deriving show]
type ('a,'As,'Ax) complement = Prims.unit[@@deriving show]
type ('Aa,'As1,'As2) subset = Prims.unit[@@deriving show]
let mem_empty : 'Aa . 'Aa -> Prims.unit = fun x  -> () 
let mem_singleton : 'Aa . 'Aa -> 'Aa -> Prims.unit = fun x  -> fun y  -> () 
let mem_union : 'Aa . 'Aa -> Prims.unit -> Prims.unit -> Prims.unit =
  fun x  -> fun s1  -> fun s2  -> () 
let mem_intersect : 'Aa . 'Aa -> Prims.unit -> Prims.unit -> Prims.unit =
  fun x  -> fun s1  -> fun s2  -> () 
let mem_complement : 'Aa . 'Aa -> Prims.unit -> Prims.unit =
  fun x  -> fun s  -> () 
let subset_mem : 'Aa 'As1 'As2 . Prims.unit = () 
let mem_subset : 'Aa 'As1 'As2 . Prims.unit = () 
let lemma_equal_intro : 'Aa 'As1 'As2 . Prims.unit = () 
let lemma_equal_elim : 'Aa 'As1 'As2 . Prims.unit -> Prims.unit =
  fun uu____660  -> () 
let lemma_equal_refl : 'Aa 'As1 'As2 . Prims.unit = () 
type ('Aa,'As,'Ax) tset_of_set = Prims.unit[@@deriving show]
let lemma_mem_tset_of_set_l : 'Aa . 'Aa FStar_Set.set -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let lemma_mem_tset_of_set_r : 'Aa . 'Aa FStar_Set.set -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let lemma_mem_tset_of_set : 'Aa . 'Aa FStar_Set.set -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
type ('Aa,'Af,'As,'Ax) filter = Prims.unit[@@deriving show]
let lemma_mem_filter : 'Aa 'Af 'As . 'Aa -> Prims.unit = fun x  -> () 
type ('Aa,'Ab,'As,'Af,'Ax) exists_y_in_s = Prims.unit[@@deriving show]
type ('Aa,'Ab,'Af,'As,'Auu____1048) map = Prims.unit[@@deriving show]
let lemma_mem_map : 'Aa 'Ab . ('Aa -> 'Ab) -> Prims.unit -> 'Ab -> Prims.unit
  = fun f  -> fun s  -> fun x  -> () 
let rec as_set' : 'Aa . 'Aa Prims.list -> 'Aa set =
  fun a127  -> (Obj.magic (fun l  -> ())) a127 