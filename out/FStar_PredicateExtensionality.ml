open Prims
type 'Aa predicate = 'Aa -> Prims.prop[@@deriving show]
type ('Aa,'Ap1,'Ap2) peq = Prims.unit[@@deriving show]
let predicateExtensionality : 'Aa 'Ap1 'Ap2 . Prims.unit -> Prims.unit =
  fun uu____83  -> () 