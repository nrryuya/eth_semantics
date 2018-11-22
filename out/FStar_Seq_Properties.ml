open Prims
type ('Aa,'As,'Aj) indexable = Prims.unit[@@deriving show]
let lemma_append_inj_l :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq ->
          'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun t1  -> fun t2  -> fun i  -> () 
let lemma_append_inj_r :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq ->
          'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun t1  -> fun t2  -> fun i  -> () 
let lemma_append_len_disj :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun s1  -> fun s2  -> fun t1  -> fun t2  -> () 
let lemma_append_inj :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun s1  -> fun s2  -> fun t1  -> fun t2  -> () 
let head : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa =
  fun s  -> FStar_Seq_Base.index s (Prims.parse_int "0") 
let tail : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq =
  fun s  ->
    FStar_Seq_Base.slice s (Prims.parse_int "1") (FStar_Seq_Base.length s)
  
let lemma_head_append :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let lemma_tail_append :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let last : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa =
  fun s  ->
    FStar_Seq_Base.index s
      ((FStar_Seq_Base.length s) - (Prims.parse_int "1"))
  
let cons : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq =
  fun x  ->
    fun s  ->
      FStar_Seq_Base.append (FStar_Seq_Base.create (Prims.parse_int "1") x) s
  
let lemma_cons_inj :
  'Aa .
    'Aa ->
      'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun v1  -> fun v2  -> fun s1  -> fun s2  -> () 
let split :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat ->
        ('Aa FStar_Seq_Base.seq,'Aa FStar_Seq_Base.seq)
          FStar_Pervasives_Native.tuple2
  =
  fun s  ->
    fun i  ->
      ((FStar_Seq_Base.slice s (Prims.parse_int "0") i),
        (FStar_Seq_Base.slice s i (FStar_Seq_Base.length s)))
  
let lemma_split : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> () 
let split_eq :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat ->
        ('Aa FStar_Seq_Base.seq,'Aa FStar_Seq_Base.seq)
          FStar_Pervasives_Native.tuple2
  = fun s  -> fun i  -> split s i 
let rec count : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.nat =
  fun x  ->
    fun s  ->
      if (FStar_Seq_Base.length s) = (Prims.parse_int "0")
      then (Prims.parse_int "0")
      else
        if (head s) = x
        then (Prims.parse_int "1") + (count x (tail s))
        else count x (tail s)
  
let mem : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.bool =
  fun x  -> fun l  -> (count x l) > (Prims.parse_int "0") 
let rec mem_index : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun x  -> fun s  -> () 
let swap :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> 'Aa FStar_Seq_Base.seq
  =
  fun s  ->
    fun i  ->
      fun j  ->
        FStar_Seq_Base.upd
          (FStar_Seq_Base.upd s j (FStar_Seq_Base.index s i)) i
          (FStar_Seq_Base.index s j)
  
let lemma_slice_append :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let rec lemma_slice_first_in_append :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> () 
let slice_upd :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> 'Aa -> Prims.unit
  = fun s  -> fun i  -> fun j  -> fun k  -> fun v  -> () 
let upd_slice :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> 'Aa -> Prims.unit
  = fun s  -> fun i  -> fun j  -> fun k  -> fun v  -> () 
let rec lemma_append_cons :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let lemma_tl : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun hd1  -> fun tl1  -> () 
let rec sorted :
  'Aa . ('Aa -> 'Aa -> Prims.bool) -> 'Aa FStar_Seq_Base.seq -> Prims.bool =
  fun f  ->
    fun s  ->
      if (FStar_Seq_Base.length s) <= (Prims.parse_int "1")
      then true
      else
        (f (head s) (FStar_Seq_Base.index s (Prims.parse_int "1"))) &&
          (sorted f (tail s))
  
let rec lemma_append_count :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun lo  -> fun hi  -> () 
let lemma_append_count_aux :
  'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun x  -> fun lo  -> fun hi  -> () 
let lemma_mem_inversion : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s  -> () 
let rec lemma_mem_count :
  'Aa . 'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> Prims.unit =
  fun s  -> fun f  -> () 
let lemma_count_slice :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> () 
type ('Aa,'Af) total_order = Prims.unit[@@deriving show]
type 'Aa tot_ord = 'Aa -> 'Aa -> Prims.bool[@@deriving show]
let rec sorted_concat_lemma :
  'Aa .
    ('Aa -> 'Aa -> Prims.bool) ->
      'Aa FStar_Seq_Base.seq -> 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun f  -> fun lo  -> fun pivot  -> fun hi  -> () 
let split_5 :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> 'Aa FStar_Seq_Base.seq FStar_Seq_Base.seq
  =
  fun s  ->
    fun i  ->
      fun j  ->
        match split_eq s i with
        | (frag_lo,rest) ->
            (match split_eq rest (Prims.parse_int "1") with
             | (frag_i,rest1) ->
                 (match split_eq rest1 (j - (i + (Prims.parse_int "1"))) with
                  | (frag_mid,rest2) ->
                      (match split_eq rest2 (Prims.parse_int "1") with
                       | (frag_j,frag_hi) ->
                           FStar_Seq_Base.upd
                             (FStar_Seq_Base.upd
                                (FStar_Seq_Base.upd
                                   (FStar_Seq_Base.upd
                                      (FStar_Seq_Base.create
                                         (Prims.parse_int "5") frag_lo)
                                      (Prims.parse_int "1") frag_i)
                                   (Prims.parse_int "2") frag_mid)
                                (Prims.parse_int "3") frag_j)
                             (Prims.parse_int "4") frag_hi)))
  
let lemma_swap_permutes_aux_frag_eq :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun i  -> fun j  -> fun i'  -> fun j'  -> () 
let lemma_swap_permutes_aux :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> 'Aa -> Prims.unit
  = fun s  -> fun i  -> fun j  -> fun x  -> () 
type ('Aa,'As1,'As2) permutation = Prims.unit[@@deriving show]
let lemma_swap_permutes :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let cons_perm :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun tl1  -> fun s  -> () 
let lemma_mem_append :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let lemma_slice_cons :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let lemma_slice_snoc :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let lemma_ordering_lo_snoc :
  'Aa .
    'Aa tot_ord ->
      'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> 'Aa -> Prims.unit
  = fun f  -> fun s  -> fun i  -> fun j  -> fun pv  -> () 
let lemma_ordering_hi_cons :
  'Aa .
    'Aa tot_ord ->
      'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> 'Aa -> Prims.unit
  = fun f  -> fun s  -> fun back  -> fun len  -> fun pv  -> () 
let swap_frame_lo :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun lo  -> fun i  -> fun j  -> () 
let swap_frame_lo' :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun lo  -> fun i'  -> fun i  -> fun j  -> () 
let swap_frame_hi :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun i  -> fun j  -> fun k  -> fun hi  -> () 
let lemma_swap_slice_commute :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun start  -> fun i  -> fun j  -> fun len  -> () 
let lemma_swap_permutes_slice :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun start  -> fun i  -> fun j  -> fun len  -> () 
let splice :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat ->
        'Aa FStar_Seq_Base.seq -> Prims.nat -> 'Aa FStar_Seq_Base.seq
  =
  fun s1  ->
    fun i  ->
      fun s2  ->
        fun j  ->
          FStar_Seq_Base.append
            (FStar_Seq_Base.slice s1 (Prims.parse_int "0") i)
            (FStar_Seq_Base.append (FStar_Seq_Base.slice s2 i j)
               (FStar_Seq_Base.slice s1 j (FStar_Seq_Base.length s1)))
  
let splice_refl :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let lemma_swap_splice :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun start  -> fun i  -> fun j  -> fun len  -> () 
let lemma_seq_frame_hi :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun m  -> fun n  -> () 
let lemma_seq_frame_lo :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun m  -> fun n  -> () 
let lemma_tail_slice :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let lemma_weaken_frame_right :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun k  -> () 
let lemma_weaken_frame_left :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun k  -> () 
let lemma_trans_frame :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun s3  -> fun i  -> fun j  -> () 
let lemma_weaken_perm_left :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun k  -> () 
let lemma_weaken_perm_right :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun i  -> fun j  -> fun k  -> () 
let lemma_trans_perm :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq ->
        'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s1  -> fun s2  -> fun s3  -> fun i  -> fun j  -> () 
let snoc : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> 'Aa FStar_Seq_Base.seq =
  fun s  ->
    fun x  ->
      FStar_Seq_Base.append s (FStar_Seq_Base.create (Prims.parse_int "1") x)
  
let lemma_cons_snoc :
  'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun hd1  -> fun s  -> fun tl1  -> () 
let lemma_tail_snoc : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let lemma_snoc_inj :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq -> 'Aa -> 'Aa -> Prims.unit
  = fun s1  -> fun s2  -> fun v1  -> fun v2  -> () 
let lemma_mem_snoc : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let rec find_l :
  'Aa .
    ('Aa -> Prims.bool) ->
      'Aa FStar_Seq_Base.seq -> 'Aa FStar_Pervasives_Native.option
  =
  fun f  ->
    fun l  ->
      if (FStar_Seq_Base.length l) = (Prims.parse_int "0")
      then FStar_Pervasives_Native.None
      else
        if f (head l)
        then FStar_Pervasives_Native.Some (head l)
        else find_l f (tail l)
  
let rec find_append_some :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> Prims.unit
  = fun s1  -> fun s2  -> fun f  -> () 
let rec find_append_none :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> Prims.unit
  = fun s1  -> fun s2  -> fun f  -> () 
let rec find_append_none_s2 :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> Prims.unit
  = fun s1  -> fun s2  -> fun f  -> () 
let find_snoc :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> ('Aa -> Prims.bool) -> Prims.unit =
  fun s  -> fun x  -> fun f  -> () 
let un_snoc :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      ('Aa FStar_Seq_Base.seq,'Aa) FStar_Pervasives_Native.tuple2
  =
  fun s  ->
    match split s ((FStar_Seq_Base.length s) - (Prims.parse_int "1")) with
    | (s',a) -> (s', (FStar_Seq_Base.index a (Prims.parse_int "0")))
  
let un_snoc_snoc : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let rec find_r :
  'Aa .
    ('Aa -> Prims.bool) ->
      'Aa FStar_Seq_Base.seq -> 'Aa FStar_Pervasives_Native.option
  =
  fun f  ->
    fun l  ->
      if (FStar_Seq_Base.length l) = (Prims.parse_int "0")
      then FStar_Pervasives_Native.None
      else
        (match un_snoc l with
         | (prefix,last1) ->
             if f last1
             then FStar_Pervasives_Native.Some last1
             else find_r f prefix)
  
type 'Ai found = Prims.unit[@@deriving show]
let rec seq_find_aux :
  'Aa .
    ('Aa -> Prims.bool) ->
      'Aa FStar_Seq_Base.seq ->
        Prims.nat -> 'Aa FStar_Pervasives_Native.option
  =
  fun f  ->
    fun l  ->
      fun ctr  ->
        match ctr with
        | _0_2 when _0_2 = (Prims.parse_int "0") ->
            FStar_Pervasives_Native.None
        | uu____4876 ->
            if f (FStar_Seq_Base.index l (ctr - (Prims.parse_int "1")))
            then
              FStar_Pervasives_Native.Some
                (FStar_Seq_Base.index l (ctr - (Prims.parse_int "1")))
            else seq_find_aux f l (ctr - (Prims.parse_int "1"))
  
let seq_find :
  'Aa .
    ('Aa -> Prims.bool) ->
      'Aa FStar_Seq_Base.seq -> 'Aa FStar_Pervasives_Native.option
  = fun f  -> fun l  -> seq_find_aux f l (FStar_Seq_Base.length l) 
let find_mem :
  'Aa . 'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> 'Aa -> Prims.unit =
  fun s  -> fun f  -> fun x  -> () 
let for_all :
  'Aa . ('Aa -> Prims.bool) -> 'Aa FStar_Seq_Base.seq -> Prims.bool =
  fun f  ->
    fun l  ->
      FStar_Pervasives_Native.uu___is_None
        (seq_find (fun i  -> Prims.op_Negation (f i)) l)
  
let rec seq_mem_k : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun s  -> fun n  -> () 
let rec seq_to_list : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa Prims.list =
  fun s  ->
    if (FStar_Seq_Base.length s) = (Prims.parse_int "0")
    then []
    else (FStar_Seq_Base.index s (Prims.parse_int "0")) ::
      (seq_to_list
         (FStar_Seq_Base.slice s (Prims.parse_int "1")
            (FStar_Seq_Base.length s)))
  
let rec seq_of_list : 'Aa . 'Aa Prims.list -> 'Aa FStar_Seq_Base.seq =
  fun l  ->
    match l with
    | [] -> FStar_Seq_Base.createEmpty ()
    | hd1::tl1 ->
        FStar_Seq_Base.op_At_Bar
          (FStar_Seq_Base.create (Prims.parse_int "1") hd1) (seq_of_list tl1)
  
let rec lemma_seq_list_bij : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s  -> () 
let rec lemma_list_seq_bij : 'Aa . 'Aa Prims.list -> Prims.unit =
  fun l  -> () 
type ('Aa,'Al,'As) createL_post = Prims.unit[@@deriving show]
let createL : 'Aa . 'Aa Prims.list -> 'Aa FStar_Seq_Base.seq =
  fun l  -> seq_of_list l 
let rec lemma_index_is_nth :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> () 
type ('Aa,'As,'Ax) contains = Prims.unit[@@deriving show]
let contains_intro :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> 'Aa -> Prims.unit =
  fun s  -> fun k  -> fun x  -> () 
let contains_elim : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let lemma_contains_empty : 'Aa . Prims.unit = () 
let lemma_contains_singleton : 'Aa . 'Aa -> Prims.unit = fun x  -> () 
let intro_append_contains_from_disjunction :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit
  = fun s1  -> fun s2  -> fun x  -> () 
let append_contains_equiv :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit
  = fun s1  -> fun s2  -> fun x  -> () 
let contains_snoc : 'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit =
  fun s  -> fun x  -> () 
let rec lemma_find_l_contains :
  'Aa . ('Aa -> Prims.bool) -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun f  -> fun l  -> () 
let contains_cons : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa -> Prims.unit
  = fun hd1  -> fun tl1  -> fun x  -> () 
let append_cons_snoc :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun u  -> fun x  -> fun v  -> () 
let append_slices :
  'Aa . 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s1  -> fun s2  -> () 
let rec find_l_none_no_index :
  'Aa . 'Aa FStar_Seq_Base.seq -> ('Aa -> Prims.bool) -> Prims.unit =
  fun s  -> fun f  -> () 
type ('Aa,'As_suff,'As) suffix_of = Prims.unit[@@deriving show]
let cons_head_tail : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s  -> () 
let head_cons : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun x  -> fun s  -> () 
let suffix_of_tail : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun s  -> () 
let index_cons_l : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun c  -> fun s  -> () 
let index_cons_r :
  'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun c  -> fun s  -> fun i  -> () 
let append_cons :
  'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> 'Aa FStar_Seq_Base.seq -> Prims.unit
  = fun c  -> fun s1  -> fun s2  -> () 
let index_tail : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> () 
let mem_cons : 'Aa . 'Aa -> 'Aa FStar_Seq_Base.seq -> Prims.unit =
  fun x  -> fun s  -> () 
let snoc_slice_index :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let cons_index_slice :
  'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.nat -> Prims.unit =
  fun s  -> fun i  -> fun j  -> () 
let slice_is_empty : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.nat -> Prims.unit
  = fun s  -> fun i  -> () 
let slice_length : 'Aa . 'Aa FStar_Seq_Base.seq -> Prims.unit = fun s  -> () 
let slice_slice :
  'Aa .
    'Aa FStar_Seq_Base.seq ->
      Prims.nat -> Prims.nat -> Prims.nat -> Prims.nat -> Prims.unit
  = fun s  -> fun i1  -> fun j1  -> fun i2  -> fun j2  -> () 
let seq_of_list_tl : 'Aa . 'Aa Prims.list -> Prims.unit = fun l  -> () 
let rec mem_seq_of_list : 'Aa . 'Aa -> 'Aa Prims.list -> Prims.unit =
  fun x  -> fun l  -> () 