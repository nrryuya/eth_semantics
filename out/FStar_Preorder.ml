open Prims
type 'Aa relation = 'Aa -> 'Aa -> Obj.t[@@deriving show]
type 'Aa predicate = 'Aa -> Obj.t[@@deriving show]
type ('Aa,'Arel) preorder_rel = Prims.unit[@@deriving show]
type 'Aa preorder = 'Aa relation[@@deriving show]
type ('Aa,'Ap,'Arel) stable = Prims.unit[@@deriving show]