open Prims
let mem_empty : 'Aa . 'Aa -> Prims.unit = fun x  -> () 
let rec mem_existsb :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun xs  -> () 
let rec mem_count : 'Aa . 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun l  -> fun x  -> () 
let rec rev_acc_length : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l  -> fun acc  -> () 
let rev_length : 'a . 'a Prims.list -> Prims.unit = fun l  -> () 
let rec rev_acc_mem :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun l  -> fun acc  -> fun x  -> () 
let rev_mem : 'Aa . 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun l  -> fun x  -> () 
let append_nil_l : 'a . 'a Prims.list -> Prims.unit = fun l  -> () 
let rec append_l_nil : 'a . 'a Prims.list -> Prims.unit =
  fun uu___34_241  -> () 
let append_cons_l : 'a . 'a -> 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun hd1  -> fun tl1  -> fun l  -> () 
let rec append_l_cons :
  'a . 'a -> 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun hd1  -> fun tl1  -> fun l  -> () 
let rec append_assoc :
  'a . 'a Prims.list -> 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> fun l3  -> () 
let rec append_length : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec append_mem :
  'At . 'At Prims.list -> 'At Prims.list -> 'At -> Prims.unit =
  fun l1  -> fun l2  -> fun a  -> () 
let rec append_mem_forall :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec append_count :
  'At . 'At Prims.list -> 'At Prims.list -> 'At -> Prims.unit =
  fun l1  -> fun l2  -> fun a  -> () 
let rec append_count_forall :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let append_eq_nil : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let append_eq_singl : 'a . 'a Prims.list -> 'a Prims.list -> 'a -> Prims.unit
  = fun l1  -> fun l2  -> fun x  -> () 
let rec append_inv_head :
  'a . 'a Prims.list -> 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l  -> fun l1  -> fun l2  -> () 
let rec append_inv_tail :
  'a . 'a Prims.list -> 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l  -> fun l1  -> fun l2  -> () 
let rec append_length_inv_head :
  'Aa .
    'Aa Prims.list ->
      'Aa Prims.list -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit
  = fun left1  -> fun right1  -> fun left2  -> fun right2  -> () 
let append_length_inv_tail :
  'Aa .
    'Aa Prims.list ->
      'Aa Prims.list -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit
  = fun left1  -> fun right1  -> fun left2  -> fun right2  -> () 
let rec rev' : 'a . 'a Prims.list -> 'a Prims.list =
  fun uu___35_884  ->
    match uu___35_884 with
    | [] -> []
    | hd1::tl1 -> FStar_List_Tot_Base.op_At (rev' tl1) [hd1]
  
let rev'T :
  'Auu____897 .
    Prims.unit -> 'Auu____897 Prims.list -> 'Auu____897 Prims.list
  = fun uu____904  -> rev' 
let rec rev_acc_rev' : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l  -> fun acc  -> () 
let rev_rev' : 'a . 'a Prims.list -> Prims.unit = fun l  -> () 
let rec rev'_append : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rev_append : 'a . 'a Prims.list -> 'a Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec rev'_involutive : 'a . 'a Prims.list -> Prims.unit =
  fun uu___36_1024  -> () 
let rev_involutive : 'a . 'a Prims.list -> Prims.unit = fun l  -> () 
let rec rev'_list_ind :
  'a . ('a Prims.list -> Prims.bool) -> 'a Prims.list -> Prims.unit =
  fun p  -> fun uu___37_1075  -> () 
let rev_ind :
  'a . ('a Prims.list -> Prims.bool) -> 'a Prims.list -> Prims.unit =
  fun p  -> fun l  -> () 
let rec map_lemma : 'a 'b . ('a -> 'b) -> 'a Prims.list -> Prims.unit =
  fun f  -> fun l  -> () 
let rec partition_mem :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun f  -> fun l  -> fun x  -> () 
let rec partition_mem_forall :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l  -> () 
let rec partition_mem_p_forall :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> Prims.unit =
  fun p  -> fun l  -> () 
let rec partition_count :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun f  -> fun l  -> fun x  -> () 
let rec partition_count_forall :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l  -> () 
let rec sortWith_permutation :
  'Aa . ('Aa -> 'Aa -> Prims.int) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l  -> () 
let rec sorted : 'a . ('a -> 'a -> Prims.bool) -> 'a Prims.list -> Prims.bool
  =
  fun f  ->
    fun uu___38_1481  ->
      match uu___38_1481 with
      | [] -> true
      | uu____1488::[] -> true
      | x::y::tl1 -> (f x y) && (sorted f (y :: tl1))
  
type ('Aa,'Af) total_order = Prims.unit[@@deriving show]
let rec append_sorted :
  'Aa .
    ('Aa -> 'Aa -> Prims.bool) ->
      'Aa Prims.list -> 'Aa Prims.list -> 'Aa -> Prims.unit
  = fun f  -> fun l1  -> fun l2  -> fun pivot  -> () 
let rec sortWith_sorted :
  'Aa . ('Aa -> 'Aa -> Prims.int) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l  -> () 
let rec mem_memP : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun x  -> fun l  -> () 
let memP_empty : 'Aa . 'Aa -> Prims.unit = fun x  -> () 
let rec memP_existsb :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun xs  -> () 
let rec memP_map_intro :
  'Aa 'Ab . ('Aa -> 'Ab) -> 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun x  -> fun l  -> () 
let rec memP_map_elim :
  'Aa 'Ab . ('Aa -> 'Ab) -> 'Ab -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun y  -> fun l  -> () 
let noRepeats_nil : 'Aa . Prims.unit = () 
let noRepeats_cons : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun h  -> fun tl1  -> () 
let rec noRepeats_append_elim :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec noRepeats_append_intro :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let assoc_nil : 'Aa 'Ab . 'Aa -> Prims.unit = fun x  -> () 
let assoc_cons_eq :
  'Aa 'Ab .
    'Aa ->
      'Ab ->
        ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun y  -> fun q  -> () 
let assoc_cons_not_eq :
  'Aa 'Ab .
    'Aa ->
      'Aa ->
        'Ab ->
          ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun x'  -> fun y  -> fun q  -> () 
let rec assoc_append_elim_r :
  'Aa 'Ab .
    'Aa ->
      ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list ->
        ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun l1  -> fun l2  -> () 
let rec assoc_append_elim_l :
  'Aa 'Ab .
    'Aa ->
      ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list ->
        ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun l1  -> fun l2  -> () 
let rec assoc_memP_some :
  'Aa 'Ab .
    'Aa ->
      'Ab ->
        ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun y  -> fun l  -> () 
let rec assoc_memP_none :
  'Aa 'Ab .
    'Aa -> ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun l  -> () 
let assoc_mem :
  'Aa 'Ab .
    'Aa -> ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun x  -> fun l  -> () 
let rec fold_left_invar :
  'Aa 'Ab . ('Aa -> 'Ab -> 'Aa) -> 'Ab Prims.list -> Prims.unit -> Prims.unit
  = fun f  -> fun l  -> fun p  -> () 
let rec fold_left_map :
  'Aa 'Ab 'Ac .
    ('Aa -> 'Ab -> 'Aa) ->
      ('Ab -> 'Ac) -> ('Aa -> 'Ac -> 'Aa) -> 'Ab Prims.list -> Prims.unit
  = fun f_aba  -> fun f_bc  -> fun f_aca  -> fun l  -> () 
let rec map_append :
  'Aa 'Ab . ('Aa -> 'Ab) -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l1  -> fun l2  -> () 
let rec fold_left_append :
  'Aa 'Ab .
    ('Aa -> 'Ab -> 'Aa) -> 'Ab Prims.list -> 'Ab Prims.list -> Prims.unit
  = fun f  -> fun l1  -> fun l2  -> () 
let rec fold_left_monoid :
  'Aa . ('Aa -> 'Aa -> 'Aa) -> 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun opA  -> fun zeroA  -> fun l  -> () 
let fold_left_append_monoid :
  'Aa .
    ('Aa -> 'Aa -> 'Aa) ->
      'Aa -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit
  = fun f  -> fun z  -> fun l1  -> fun l2  -> () 
let rec index_extensionality_aux :
  'Aa .
    'Aa Prims.list ->
      'Aa Prims.list -> Prims.unit -> (Prims.nat -> Prims.unit) -> Prims.unit
  = fun l1  -> fun l2  -> fun l_len  -> fun l_index  -> () 
let index_extensionality :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec strict_prefix_of_nil : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun x  -> fun l  -> () 
let strict_prefix_of_or_eq_nil : 'Aa . 'Aa Prims.list -> Prims.unit =
  fun l  -> () 
let strict_prefix_of_cons : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun x  -> fun l  -> () 
let rec strict_prefix_of_trans :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> fun l3  -> () 
let rec strict_prefix_of_correct :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let rec map_strict_prefix_of :
  'Aa 'Ab . ('Aa -> 'Ab) -> 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun f  -> fun l1  -> fun l2  -> () 
let rec mem_strict_prefix_of :
  'Aa . 'Aa Prims.list -> 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun m  -> fun l2  -> () 
let rec strict_prefix_of_exists_append :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let strict_prefix_of_or_eq_exists_append :
  'Aa . 'Aa Prims.list -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun l2  -> () 
let precedes_tl : 'Aa . 'Aa Prims.list -> Prims.unit = fun l  -> () 
let rec precedes_append_cons_r :
  'Aa . 'Aa Prims.list -> 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun l1  -> fun x  -> fun l2  -> () 
let precedes_append_cons_prod_r :
  'Aa 'Ab .
    ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list ->
      ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list ->
        'Aa ->
          'Ab ->
            ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list -> Prims.unit
  = fun l  -> fun l1  -> fun x  -> fun y  -> fun l2  -> () 
let rec memP_precedes : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun x  -> fun l  -> () 
let assoc_precedes :
  'Aa 'Ab .
    'Aa ->
      ('Aa,'Ab) FStar_Pervasives_Native.tuple2 Prims.list ->
        'Ab -> Prims.unit
  = fun x  -> fun l  -> fun y  -> () 
let rec find_none :
  'Aa . ('Aa -> Prims.bool) -> 'Aa Prims.list -> 'Aa -> Prims.unit =
  fun f  -> fun l  -> fun x  -> () 