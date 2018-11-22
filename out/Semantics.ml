open Prims
let wordSize : Prims.int =
  (Prims.parse_int "115792089237316195423570985008687907853269984665640564039457584007913129639936")
  
let wordSizeDiv2 : Prims.int =
  (Prims.parse_int "57896044618658097711785492504343953926634992332820282019728792003956564819968")
  
let addressSize : Prims.int =
  (Prims.parse_int "1461501637330902918203684832716283019655932542976") 
let byteSize : Prims.int = (Prims.parse_int "256") 
let gzero : Prims.int = (Prims.parse_int "0") 
let gbase : Prims.int = (Prims.parse_int "2") 
let gverylow : Prims.int = (Prims.parse_int "3") 
let glow : Prims.int = (Prims.parse_int "5") 
let gmid : Prims.int = (Prims.parse_int "8") 
let ghigh : Prims.int = (Prims.parse_int "10") 
type dupswap = Prims.int[@@deriving show]
type bytef = Prims.int[@@deriving show]
type word = Prims.int[@@deriving show]
type signedWord = Prims.int[@@deriving show]
type address = Prims.int[@@deriving show]
type lStack = word Prims.list[@@deriving show]
type program = word Prims.list[@@deriving show]
let emptyProgram : 'Auu____13 . Prims.unit -> 'Auu____13 Prims.list =
  fun uu____16  -> [] 
type mem = word -> bytef[@@deriving show]
let emptyMem : word -> bytef = fun w  -> (Prims.parse_int "0") 
type storage = word -> word[@@deriving show]
let emptyStorage : word -> word = fun w  -> (Prims.parse_int "0") 
type bytearray = Prims.string[@@deriving show]
type logRec = word Prims.list[@@deriving show]
type opcode =
  | STOP 
  | PUSH of word 
  | POP 
  | DUP of dupswap 
  | SWAP of dupswap 
  | ADD 
  | MUL 
  | SUB 
  | DIVV 
  | SDIVV 
  | MOD 
  | SMOD 
  | ADDMOD 
  | MULMOD 
  | EXP 
  | SIGNEXTEND 
  | LT 
  | GT 
  | SLT 
  | SGT 
  | EQB 
  | ISZERO 
  | ANDB 
  | ORB 
  | XORB 
  | BYTEB 
  | NOTB 
  | MLOAD 
  | MSTORE 
  | MSTORE8 
  | JUMP 
  | JUMPI 
  | PC 
  | MSIZE 
  | GAS 
  | JUMPDEST 
  | ORIGIN 
  | GASPRICE 
  | BLOCKHASH 
  | COINBASE 
  | TIMESTAMP 
  | NUMBERB 
  | DIFFICULTY 
  | GASLIMIT 
  | CALLDATALOAD 
  | CODECOPY 
  | SSTORE 
  | SLOAD 
  | CREATE 
  | RETURN 
  | SELFDESTRUCT 
  | UNKNOWN 
  | CALL [@@deriving show]
let uu___is_STOP : opcode -> Prims.bool =
  fun projectee  -> match projectee with | STOP  -> true | uu____87 -> false 
let uu___is_PUSH : opcode -> Prims.bool =
  fun projectee  -> match projectee with | PUSH x -> true | uu____96 -> false 
let __proj__PUSH__item__x : opcode -> word =
  fun projectee  -> match projectee with | PUSH x -> x 
let uu___is_POP : opcode -> Prims.bool =
  fun projectee  -> match projectee with | POP  -> true | uu____120 -> false 
let uu___is_DUP : opcode -> Prims.bool =
  fun projectee  -> match projectee with | DUP x -> true | uu____129 -> false 
let __proj__DUP__item__x : opcode -> dupswap =
  fun projectee  -> match projectee with | DUP x -> x 
let uu___is_SWAP : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SWAP x -> true | uu____155 -> false
  
let __proj__SWAP__item__x : opcode -> dupswap =
  fun projectee  -> match projectee with | SWAP x -> x 
let uu___is_ADD : opcode -> Prims.bool =
  fun projectee  -> match projectee with | ADD  -> true | uu____179 -> false 
let uu___is_MUL : opcode -> Prims.bool =
  fun projectee  -> match projectee with | MUL  -> true | uu____186 -> false 
let uu___is_SUB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | SUB  -> true | uu____193 -> false 
let uu___is_DIVV : opcode -> Prims.bool =
  fun projectee  -> match projectee with | DIVV  -> true | uu____200 -> false 
let uu___is_SDIVV : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SDIVV  -> true | uu____207 -> false
  
let uu___is_MOD : opcode -> Prims.bool =
  fun projectee  -> match projectee with | MOD  -> true | uu____214 -> false 
let uu___is_SMOD : opcode -> Prims.bool =
  fun projectee  -> match projectee with | SMOD  -> true | uu____221 -> false 
let uu___is_ADDMOD : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | ADDMOD  -> true | uu____228 -> false
  
let uu___is_MULMOD : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | MULMOD  -> true | uu____235 -> false
  
let uu___is_EXP : opcode -> Prims.bool =
  fun projectee  -> match projectee with | EXP  -> true | uu____242 -> false 
let uu___is_SIGNEXTEND : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SIGNEXTEND  -> true | uu____249 -> false
  
let uu___is_LT : opcode -> Prims.bool =
  fun projectee  -> match projectee with | LT  -> true | uu____256 -> false 
let uu___is_GT : opcode -> Prims.bool =
  fun projectee  -> match projectee with | GT  -> true | uu____263 -> false 
let uu___is_SLT : opcode -> Prims.bool =
  fun projectee  -> match projectee with | SLT  -> true | uu____270 -> false 
let uu___is_SGT : opcode -> Prims.bool =
  fun projectee  -> match projectee with | SGT  -> true | uu____277 -> false 
let uu___is_EQB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | EQB  -> true | uu____284 -> false 
let uu___is_ISZERO : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | ISZERO  -> true | uu____291 -> false
  
let uu___is_ANDB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | ANDB  -> true | uu____298 -> false 
let uu___is_ORB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | ORB  -> true | uu____305 -> false 
let uu___is_XORB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | XORB  -> true | uu____312 -> false 
let uu___is_BYTEB : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | BYTEB  -> true | uu____319 -> false
  
let uu___is_NOTB : opcode -> Prims.bool =
  fun projectee  -> match projectee with | NOTB  -> true | uu____326 -> false 
let uu___is_MLOAD : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | MLOAD  -> true | uu____333 -> false
  
let uu___is_MSTORE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | MSTORE  -> true | uu____340 -> false
  
let uu___is_MSTORE8 : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | MSTORE8  -> true | uu____347 -> false
  
let uu___is_JUMP : opcode -> Prims.bool =
  fun projectee  -> match projectee with | JUMP  -> true | uu____354 -> false 
let uu___is_JUMPI : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | JUMPI  -> true | uu____361 -> false
  
let uu___is_PC : opcode -> Prims.bool =
  fun projectee  -> match projectee with | PC  -> true | uu____368 -> false 
let uu___is_MSIZE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | MSIZE  -> true | uu____375 -> false
  
let uu___is_GAS : opcode -> Prims.bool =
  fun projectee  -> match projectee with | GAS  -> true | uu____382 -> false 
let uu___is_JUMPDEST : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | JUMPDEST  -> true | uu____389 -> false
  
let uu___is_ORIGIN : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | ORIGIN  -> true | uu____396 -> false
  
let uu___is_GASPRICE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | GASPRICE  -> true | uu____403 -> false
  
let uu___is_BLOCKHASH : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | BLOCKHASH  -> true | uu____410 -> false
  
let uu___is_COINBASE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | COINBASE  -> true | uu____417 -> false
  
let uu___is_TIMESTAMP : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | TIMESTAMP  -> true | uu____424 -> false
  
let uu___is_NUMBERB : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | NUMBERB  -> true | uu____431 -> false
  
let uu___is_DIFFICULTY : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | DIFFICULTY  -> true | uu____438 -> false
  
let uu___is_GASLIMIT : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | GASLIMIT  -> true | uu____445 -> false
  
let uu___is_CALLDATALOAD : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | CALLDATALOAD  -> true | uu____452 -> false
  
let uu___is_CODECOPY : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | CODECOPY  -> true | uu____459 -> false
  
let uu___is_SSTORE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SSTORE  -> true | uu____466 -> false
  
let uu___is_SLOAD : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SLOAD  -> true | uu____473 -> false
  
let uu___is_CREATE : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | CREATE  -> true | uu____480 -> false
  
let uu___is_RETURN : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | RETURN  -> true | uu____487 -> false
  
let uu___is_SELFDESTRUCT : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | SELFDESTRUCT  -> true | uu____494 -> false
  
let uu___is_UNKNOWN : opcode -> Prims.bool =
  fun projectee  ->
    match projectee with | UNKNOWN  -> true | uu____501 -> false
  
let uu___is_CALL : opcode -> Prims.bool =
  fun projectee  -> match projectee with | CALL  -> true | uu____508 -> false 
let getOpcode : Prims.nat -> program -> opcode FStar_Pervasives_Native.option
  =
  fun pc  ->
    fun pr  ->
      if pc > ((FStar_List_Tot_Base.length pr) - (Prims.parse_int "1"))
      then FStar_Pervasives_Native.Some STOP
      else
        (match FStar_List_Tot_Base.nth pr pc with
         | FStar_Pervasives_Native.Some _0_19 when
             _0_19 = (Prims.parse_int "0") ->
             FStar_Pervasives_Native.Some STOP
         | FStar_Pervasives_Native.Some _0_20 when
             _0_20 = (Prims.parse_int "1") ->
             FStar_Pervasives_Native.Some ADD
         | FStar_Pervasives_Native.Some _0_21 when
             _0_21 = (Prims.parse_int "2") ->
             FStar_Pervasives_Native.Some MUL
         | FStar_Pervasives_Native.Some _0_22 when
             _0_22 = (Prims.parse_int "3") ->
             FStar_Pervasives_Native.Some SUB
         | FStar_Pervasives_Native.Some _0_23 when
             _0_23 = (Prims.parse_int "4") ->
             FStar_Pervasives_Native.Some DIVV
         | FStar_Pervasives_Native.Some _0_24 when
             _0_24 = (Prims.parse_int "5") ->
             FStar_Pervasives_Native.Some SDIVV
         | FStar_Pervasives_Native.Some _0_25 when
             _0_25 = (Prims.parse_int "6") ->
             FStar_Pervasives_Native.Some MOD
         | FStar_Pervasives_Native.Some _0_26 when
             _0_26 = (Prims.parse_int "7") ->
             FStar_Pervasives_Native.Some SMOD
         | FStar_Pervasives_Native.Some _0_27 when
             _0_27 = (Prims.parse_int "8") ->
             FStar_Pervasives_Native.Some ADDMOD
         | FStar_Pervasives_Native.Some _0_28 when
             _0_28 = (Prims.parse_int "9") ->
             FStar_Pervasives_Native.Some MULMOD
         | FStar_Pervasives_Native.Some _0_29 when
             _0_29 = (Prims.parse_int "10") ->
             FStar_Pervasives_Native.Some EXP
         | FStar_Pervasives_Native.Some _0_30 when
             _0_30 = (Prims.parse_int "11") ->
             FStar_Pervasives_Native.Some SIGNEXTEND
         | FStar_Pervasives_Native.Some _0_31 when
             _0_31 = (Prims.parse_int "16") ->
             FStar_Pervasives_Native.Some LT
         | FStar_Pervasives_Native.Some _0_32 when
             _0_32 = (Prims.parse_int "17") ->
             FStar_Pervasives_Native.Some GT
         | FStar_Pervasives_Native.Some _0_33 when
             _0_33 = (Prims.parse_int "18") ->
             FStar_Pervasives_Native.Some SLT
         | FStar_Pervasives_Native.Some _0_34 when
             _0_34 = (Prims.parse_int "19") ->
             FStar_Pervasives_Native.Some SGT
         | FStar_Pervasives_Native.Some _0_35 when
             _0_35 = (Prims.parse_int "20") ->
             FStar_Pervasives_Native.Some EQB
         | FStar_Pervasives_Native.Some _0_36 when
             _0_36 = (Prims.parse_int "21") ->
             FStar_Pervasives_Native.Some ISZERO
         | FStar_Pervasives_Native.Some _0_37 when
             _0_37 = (Prims.parse_int "22") ->
             FStar_Pervasives_Native.Some ANDB
         | FStar_Pervasives_Native.Some _0_38 when
             _0_38 = (Prims.parse_int "23") ->
             FStar_Pervasives_Native.Some ORB
         | FStar_Pervasives_Native.Some _0_39 when
             _0_39 = (Prims.parse_int "24") ->
             FStar_Pervasives_Native.Some XORB
         | FStar_Pervasives_Native.Some _0_40 when
             _0_40 = (Prims.parse_int "25") ->
             FStar_Pervasives_Native.Some NOTB
         | FStar_Pervasives_Native.Some _0_41 when
             _0_41 = (Prims.parse_int "26") ->
             FStar_Pervasives_Native.Some BYTEB
         | FStar_Pervasives_Native.Some _0_42 when
             _0_42 = (Prims.parse_int "80") ->
             FStar_Pervasives_Native.Some POP
         | FStar_Pervasives_Native.Some _0_43 when
             _0_43 = (Prims.parse_int "81") ->
             FStar_Pervasives_Native.Some MLOAD
         | FStar_Pervasives_Native.Some _0_44 when
             _0_44 = (Prims.parse_int "82") ->
             FStar_Pervasives_Native.Some MSTORE
         | FStar_Pervasives_Native.Some _0_45 when
             _0_45 = (Prims.parse_int "83") ->
             FStar_Pervasives_Native.Some MSTORE8
         | FStar_Pervasives_Native.Some _0_46 when
             _0_46 = (Prims.parse_int "84") ->
             FStar_Pervasives_Native.Some SLOAD
         | FStar_Pervasives_Native.Some _0_47 when
             _0_47 = (Prims.parse_int "85") ->
             FStar_Pervasives_Native.Some SSTORE
         | FStar_Pervasives_Native.Some _0_48 when
             _0_48 = (Prims.parse_int "86") ->
             FStar_Pervasives_Native.Some JUMP
         | FStar_Pervasives_Native.Some _0_49 when
             _0_49 = (Prims.parse_int "87") ->
             FStar_Pervasives_Native.Some JUMPI
         | FStar_Pervasives_Native.Some _0_50 when
             _0_50 = (Prims.parse_int "88") ->
             FStar_Pervasives_Native.Some PC
         | FStar_Pervasives_Native.Some _0_51 when
             _0_51 = (Prims.parse_int "89") ->
             FStar_Pervasives_Native.Some MSIZE
         | FStar_Pervasives_Native.Some _0_52 when
             _0_52 = (Prims.parse_int "90") ->
             FStar_Pervasives_Native.Some GAS
         | FStar_Pervasives_Native.Some _0_53 when
             _0_53 = (Prims.parse_int "91") ->
             FStar_Pervasives_Native.Some JUMPDEST
         | FStar_Pervasives_Native.Some _0_54 when
             _0_54 = (Prims.parse_int "53") ->
             FStar_Pervasives_Native.Some CALLDATALOAD
         | FStar_Pervasives_Native.Some _0_55 when
             _0_55 = (Prims.parse_int "57") ->
             FStar_Pervasives_Native.Some CODECOPY
         | FStar_Pervasives_Native.Some _0_56 when
             _0_56 = (Prims.parse_int "50") ->
             FStar_Pervasives_Native.Some ORIGIN
         | FStar_Pervasives_Native.Some _0_57 when
             _0_57 = (Prims.parse_int "58") ->
             FStar_Pervasives_Native.Some GASPRICE
         | FStar_Pervasives_Native.Some _0_58 when
             _0_58 = (Prims.parse_int "64") ->
             FStar_Pervasives_Native.Some BLOCKHASH
         | FStar_Pervasives_Native.Some _0_59 when
             _0_59 = (Prims.parse_int "65") ->
             FStar_Pervasives_Native.Some COINBASE
         | FStar_Pervasives_Native.Some _0_60 when
             _0_60 = (Prims.parse_int "66") ->
             FStar_Pervasives_Native.Some TIMESTAMP
         | FStar_Pervasives_Native.Some _0_61 when
             _0_61 = (Prims.parse_int "67") ->
             FStar_Pervasives_Native.Some NUMBERB
         | FStar_Pervasives_Native.Some _0_62 when
             _0_62 = (Prims.parse_int "68") ->
             FStar_Pervasives_Native.Some DIFFICULTY
         | FStar_Pervasives_Native.Some _0_63 when
             _0_63 = (Prims.parse_int "69") ->
             FStar_Pervasives_Native.Some GASLIMIT
         | FStar_Pervasives_Native.Some _0_64 when
             _0_64 = (Prims.parse_int "128") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "1"))
         | FStar_Pervasives_Native.Some _0_65 when
             _0_65 = (Prims.parse_int "129") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "2"))
         | FStar_Pervasives_Native.Some _0_66 when
             _0_66 = (Prims.parse_int "130") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "3"))
         | FStar_Pervasives_Native.Some _0_67 when
             _0_67 = (Prims.parse_int "131") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "4"))
         | FStar_Pervasives_Native.Some _0_68 when
             _0_68 = (Prims.parse_int "132") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "5"))
         | FStar_Pervasives_Native.Some _0_69 when
             _0_69 = (Prims.parse_int "133") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "6"))
         | FStar_Pervasives_Native.Some _0_70 when
             _0_70 = (Prims.parse_int "134") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "7"))
         | FStar_Pervasives_Native.Some _0_71 when
             _0_71 = (Prims.parse_int "135") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "8"))
         | FStar_Pervasives_Native.Some _0_72 when
             _0_72 = (Prims.parse_int "136") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "9"))
         | FStar_Pervasives_Native.Some _0_73 when
             _0_73 = (Prims.parse_int "137") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "10"))
         | FStar_Pervasives_Native.Some _0_74 when
             _0_74 = (Prims.parse_int "138") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "11"))
         | FStar_Pervasives_Native.Some _0_75 when
             _0_75 = (Prims.parse_int "139") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "12"))
         | FStar_Pervasives_Native.Some _0_76 when
             _0_76 = (Prims.parse_int "140") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "13"))
         | FStar_Pervasives_Native.Some _0_77 when
             _0_77 = (Prims.parse_int "141") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "14"))
         | FStar_Pervasives_Native.Some _0_78 when
             _0_78 = (Prims.parse_int "142") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "15"))
         | FStar_Pervasives_Native.Some _0_79 when
             _0_79 = (Prims.parse_int "143") ->
             FStar_Pervasives_Native.Some (DUP (Prims.parse_int "16"))
         | FStar_Pervasives_Native.Some _0_80 when
             _0_80 = (Prims.parse_int "144") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "1"))
         | FStar_Pervasives_Native.Some _0_81 when
             _0_81 = (Prims.parse_int "145") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "2"))
         | FStar_Pervasives_Native.Some _0_82 when
             _0_82 = (Prims.parse_int "146") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "3"))
         | FStar_Pervasives_Native.Some _0_83 when
             _0_83 = (Prims.parse_int "147") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "4"))
         | FStar_Pervasives_Native.Some _0_84 when
             _0_84 = (Prims.parse_int "148") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "5"))
         | FStar_Pervasives_Native.Some _0_85 when
             _0_85 = (Prims.parse_int "149") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "6"))
         | FStar_Pervasives_Native.Some _0_86 when
             _0_86 = (Prims.parse_int "150") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "7"))
         | FStar_Pervasives_Native.Some _0_87 when
             _0_87 = (Prims.parse_int "151") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "8"))
         | FStar_Pervasives_Native.Some _0_88 when
             _0_88 = (Prims.parse_int "152") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "9"))
         | FStar_Pervasives_Native.Some _0_89 when
             _0_89 = (Prims.parse_int "153") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "10"))
         | FStar_Pervasives_Native.Some _0_90 when
             _0_90 = (Prims.parse_int "154") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "11"))
         | FStar_Pervasives_Native.Some _0_91 when
             _0_91 = (Prims.parse_int "155") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "12"))
         | FStar_Pervasives_Native.Some _0_92 when
             _0_92 = (Prims.parse_int "156") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "13"))
         | FStar_Pervasives_Native.Some _0_93 when
             _0_93 = (Prims.parse_int "157") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "14"))
         | FStar_Pervasives_Native.Some _0_94 when
             _0_94 = (Prims.parse_int "158") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "15"))
         | FStar_Pervasives_Native.Some _0_95 when
             _0_95 = (Prims.parse_int "159") ->
             FStar_Pervasives_Native.Some (SWAP (Prims.parse_int "16"))
         | FStar_Pervasives_Native.Some _0_96 when
             _0_96 = (Prims.parse_int "241") ->
             FStar_Pervasives_Native.Some CALL
         | FStar_Pervasives_Native.Some _0_97 when
             _0_97 = (Prims.parse_int "240") ->
             FStar_Pervasives_Native.Some CREATE
         | FStar_Pervasives_Native.Some _0_98 when
             _0_98 = (Prims.parse_int "243") ->
             FStar_Pervasives_Native.Some RETURN
         | FStar_Pervasives_Native.Some _0_99 when
             _0_99 = (Prims.parse_int "255") ->
             FStar_Pervasives_Native.Some SELFDESTRUCT
         | FStar_Pervasives_Native.Some _0_100 when
             _0_100 = (Prims.parse_int "96") ->
             (match FStar_List_Tot_Base.nth pr (pc + (Prims.parse_int "1"))
              with
              | FStar_Pervasives_Native.Some v1 ->
                  FStar_Pervasives_Native.Some (PUSH v1)
              | uu____577 -> FStar_Pervasives_Native.None)
         | FStar_Pervasives_Native.Some _0_101 when
             _0_101 = (Prims.parse_int "256") ->
             FStar_Pervasives_Native.Some UNKNOWN
         | uu____580 -> FStar_Pervasives_Native.None)
  
let valid : Prims.nat -> Prims.nat -> Prims.int -> Prims.bool =
  fun g  ->
    fun c  ->
      fun sz  ->
        ((c <= g) && (sz >= (Prims.parse_int "0"))) &&
          (sz <= (Prims.parse_int "1024"))
  
let computeBlockHash : Prims.nat -> word =
  fun a422  ->
    (Obj.magic
       (fun uu____631  -> failwith "Not yet implemented:computeBlockHash"))
      a422
  
type blockInfo =
  | BlockInfo of Prims.nat * Prims.nat * Prims.nat * Prims.nat * Prims.nat *
  Prims.nat * address * Prims.nat [@@deriving show]
let uu___is_BlockInfo : blockInfo -> Prims.bool = fun projectee  -> true 
let __proj__BlockInfo__item___0 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _0
  
let __proj__BlockInfo__item___1 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _1
  
let __proj__BlockInfo__item___2 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _2
  
let __proj__BlockInfo__item___3 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _3
  
let __proj__BlockInfo__item___4 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _4
  
let __proj__BlockInfo__item___5 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _5
  
let __proj__BlockInfo__item___6 : blockInfo -> address =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _6
  
let __proj__BlockInfo__item___7 : blockInfo -> Prims.nat =
  fun projectee  ->
    match projectee with | BlockInfo (_0,_1,_2,_3,_4,_5,_6,_7) -> _7
  
type mState =
  | MState of Prims.nat * Prims.nat * mem * Prims.nat * lStack [@@deriving
                                                                 show]
let uu___is_MState : mState -> Prims.bool = fun projectee  -> true 
let __proj__MState__item___0 : mState -> Prims.nat =
  fun projectee  -> match projectee with | MState (_0,_1,_2,_3,_4) -> _0 
let __proj__MState__item___1 : mState -> Prims.nat =
  fun projectee  -> match projectee with | MState (_0,_1,_2,_3,_4) -> _1 
let __proj__MState__item___2 : mState -> mem =
  fun projectee  -> match projectee with | MState (_0,_1,_2,_3,_4) -> _2 
let __proj__MState__item___3 : mState -> Prims.nat =
  fun projectee  -> match projectee with | MState (_0,_1,_2,_3,_4) -> _3 
let __proj__MState__item___4 : mState -> lStack =
  fun projectee  -> match projectee with | MState (_0,_1,_2,_3,_4) -> _4 
type exEnv =
  | ExEnv of address * bytearray * address * Prims.nat * program [@@deriving
                                                                   show]
let uu___is_ExEnv : exEnv -> Prims.bool = fun projectee  -> true 
let __proj__ExEnv__item___0 : exEnv -> address =
  fun projectee  -> match projectee with | ExEnv (_0,_1,_2,_3,_4) -> _0 
let __proj__ExEnv__item___1 : exEnv -> bytearray =
  fun projectee  -> match projectee with | ExEnv (_0,_1,_2,_3,_4) -> _1 
let __proj__ExEnv__item___2 : exEnv -> address =
  fun projectee  -> match projectee with | ExEnv (_0,_1,_2,_3,_4) -> _2 
let __proj__ExEnv__item___3 : exEnv -> Prims.nat =
  fun projectee  -> match projectee with | ExEnv (_0,_1,_2,_3,_4) -> _3 
let __proj__ExEnv__item___4 : exEnv -> program =
  fun projectee  -> match projectee with | ExEnv (_0,_1,_2,_3,_4) -> _4 
type account =
  | Acc of Prims.nat * Prims.nat * storage * program [@@deriving show]
let uu___is_Acc : account -> Prims.bool = fun projectee  -> true 
let __proj__Acc__item___0 : account -> Prims.nat =
  fun projectee  -> match projectee with | Acc (_0,_1,_2,_3) -> _0 
let __proj__Acc__item___1 : account -> Prims.nat =
  fun projectee  -> match projectee with | Acc (_0,_1,_2,_3) -> _1 
let __proj__Acc__item___2 : account -> storage =
  fun projectee  -> match projectee with | Acc (_0,_1,_2,_3) -> _2 
let __proj__Acc__item___3 : account -> program =
  fun projectee  -> match projectee with | Acc (_0,_1,_2,_3) -> _3 
type gState = address -> account FStar_Pervasives_Native.option[@@deriving
                                                                 show]
let emptyGState : address -> account FStar_Pervasives_Native.option =
  fun addr  -> FStar_Pervasives_Native.None 
type transEff =
  | TransEff of Prims.nat * address Prims.list * logRec [@@deriving show]
let uu___is_TransEff : transEff -> Prims.bool = fun projectee  -> true 
let __proj__TransEff__item___0 : transEff -> Prims.nat =
  fun projectee  -> match projectee with | TransEff (_0,_1,_2) -> _0 
let __proj__TransEff__item___1 : transEff -> address Prims.list =
  fun projectee  -> match projectee with | TransEff (_0,_1,_2) -> _1 
let __proj__TransEff__item___2 : transEff -> logRec =
  fun projectee  -> match projectee with | TransEff (_0,_1,_2) -> _2 
type exState =
  | ExState of mState * exEnv * gState * transEff * blockInfo [@@deriving
                                                                show]
let uu___is_ExState : exState -> Prims.bool = fun projectee  -> true 
let __proj__ExState__item___0 : exState -> mState =
  fun projectee  -> match projectee with | ExState (_0,_1,_2,_3,_4) -> _0 
let __proj__ExState__item___1 : exState -> exEnv =
  fun projectee  -> match projectee with | ExState (_0,_1,_2,_3,_4) -> _1 
let __proj__ExState__item___2 : exState -> gState =
  fun projectee  -> match projectee with | ExState (_0,_1,_2,_3,_4) -> _2 
let __proj__ExState__item___3 : exState -> transEff =
  fun projectee  -> match projectee with | ExState (_0,_1,_2,_3,_4) -> _3 
let __proj__ExState__item___4 : exState -> blockInfo =
  fun projectee  -> match projectee with | ExState (_0,_1,_2,_3,_4) -> _4 
type plainStack =
  | StackNil 
  | StackCons of exState * plainStack [@@deriving show]
let uu___is_StackNil : plainStack -> Prims.bool =
  fun projectee  ->
    match projectee with | StackNil  -> true | uu____1584 -> false
  
let uu___is_StackCons : plainStack -> Prims.bool =
  fun projectee  ->
    match projectee with | StackCons (_0,_1) -> true | uu____1595 -> false
  
let __proj__StackCons__item___0 : plainStack -> exState =
  fun projectee  -> match projectee with | StackCons (_0,_1) -> _0 
let __proj__StackCons__item___1 : plainStack -> plainStack =
  fun projectee  -> match projectee with | StackCons (_0,_1) -> _1 
type stack =
  | Plain of plainStack 
  | Exc of plainStack 
  | Halt of gState * transEff * Prims.nat * bytearray * plainStack [@@deriving
                                                                    show]
let uu___is_Plain : stack -> Prims.bool =
  fun projectee  ->
    match projectee with | Plain _0 -> true | uu____1668 -> false
  
let __proj__Plain__item___0 : stack -> plainStack =
  fun projectee  -> match projectee with | Plain _0 -> _0 
let uu___is_Exc : stack -> Prims.bool =
  fun projectee  ->
    match projectee with | Exc _0 -> true | uu____1688 -> false
  
let __proj__Exc__item___0 : stack -> plainStack =
  fun projectee  -> match projectee with | Exc _0 -> _0 
let uu___is_Halt : stack -> Prims.bool =
  fun projectee  ->
    match projectee with
    | Halt (_0,_1,_2,_3,_4) -> true
    | uu____1716 -> false
  
let __proj__Halt__item___0 : stack -> gState =
  fun projectee  -> match projectee with | Halt (_0,_1,_2,_3,_4) -> _0 
let __proj__Halt__item___1 : stack -> transEff =
  fun projectee  -> match projectee with | Halt (_0,_1,_2,_3,_4) -> _1 
let __proj__Halt__item___2 : stack -> Prims.nat =
  fun projectee  -> match projectee with | Halt (_0,_1,_2,_3,_4) -> _2 
let __proj__Halt__item___3 : stack -> bytearray =
  fun projectee  -> match projectee with | Halt (_0,_1,_2,_3,_4) -> _3 
let __proj__Halt__item___4 : stack -> plainStack =
  fun projectee  -> match projectee with | Halt (_0,_1,_2,_3,_4) -> _4 
type exOutcome =
  | Bot 
  | Reg of gState * transEff * Prims.nat * bytearray 
  | Err [@@deriving show]
let uu___is_Bot : exOutcome -> Prims.bool =
  fun projectee  -> match projectee with | Bot  -> true | uu____1859 -> false 
let uu___is_Reg : exOutcome -> Prims.bool =
  fun projectee  ->
    match projectee with | Reg (_0,_1,_2,_3) -> true | uu____1874 -> false
  
let __proj__Reg__item___0 : exOutcome -> gState =
  fun projectee  -> match projectee with | Reg (_0,_1,_2,_3) -> _0 
let __proj__Reg__item___1 : exOutcome -> transEff =
  fun projectee  -> match projectee with | Reg (_0,_1,_2,_3) -> _1 
let __proj__Reg__item___2 : exOutcome -> Prims.nat =
  fun projectee  -> match projectee with | Reg (_0,_1,_2,_3) -> _2 
let __proj__Reg__item___3 : exOutcome -> bytearray =
  fun projectee  -> match projectee with | Reg (_0,_1,_2,_3) -> _3 
let uu___is_Err : exOutcome -> Prims.bool =
  fun projectee  -> match projectee with | Err  -> true | uu____1964 -> false 
type stepOutcome =
  | Fin of exOutcome 
  | Next of stack [@@deriving show]
let uu___is_Fin : stepOutcome -> Prims.bool =
  fun projectee  ->
    match projectee with | Fin _0 -> true | uu____1981 -> false
  
let __proj__Fin__item___0 : stepOutcome -> exOutcome =
  fun projectee  -> match projectee with | Fin _0 -> _0 
let uu___is_Next : stepOutcome -> Prims.bool =
  fun projectee  ->
    match projectee with | Next _0 -> true | uu____2001 -> false
  
let __proj__Next__item___0 : stepOutcome -> stack =
  fun projectee  -> match projectee with | Next _0 -> _0 
type nextState =
  | LocalStep of mState * gState * transEff 
  | GlobalStep of exEnv * gState * Prims.nat 
  | ErrState 
  | HaltState of gState * Prims.nat * bytearray 
  | BotState [@@deriving show]
let uu___is_LocalStep : nextState -> Prims.bool =
  fun projectee  ->
    match projectee with | LocalStep (_0,_1,_2) -> true | uu____2087 -> false
  
let __proj__LocalStep__item___0 : nextState -> mState =
  fun projectee  -> match projectee with | LocalStep (_0,_1,_2) -> _0 
let __proj__LocalStep__item___1 : nextState -> gState =
  fun projectee  -> match projectee with | LocalStep (_0,_1,_2) -> _1 
let __proj__LocalStep__item___2 : nextState -> transEff =
  fun projectee  -> match projectee with | LocalStep (_0,_1,_2) -> _2 
let uu___is_GlobalStep : nextState -> Prims.bool =
  fun projectee  ->
    match projectee with
    | GlobalStep (_0,_1,_2) -> true
    | uu____2154 -> false
  
let __proj__GlobalStep__item___0 : nextState -> exEnv =
  fun projectee  -> match projectee with | GlobalStep (_0,_1,_2) -> _0 
let __proj__GlobalStep__item___1 : nextState -> gState =
  fun projectee  -> match projectee with | GlobalStep (_0,_1,_2) -> _1 
let __proj__GlobalStep__item___2 : nextState -> Prims.nat =
  fun projectee  -> match projectee with | GlobalStep (_0,_1,_2) -> _2 
let uu___is_ErrState : nextState -> Prims.bool =
  fun projectee  ->
    match projectee with | ErrState  -> true | uu____2221 -> false
  
let uu___is_HaltState : nextState -> Prims.bool =
  fun projectee  ->
    match projectee with | HaltState (_0,_1,_2) -> true | uu____2234 -> false
  
let __proj__HaltState__item___0 : nextState -> gState =
  fun projectee  -> match projectee with | HaltState (_0,_1,_2) -> _0 
let __proj__HaltState__item___1 : nextState -> Prims.nat =
  fun projectee  -> match projectee with | HaltState (_0,_1,_2) -> _1 
let __proj__HaltState__item___2 : nextState -> bytearray =
  fun projectee  -> match projectee with | HaltState (_0,_1,_2) -> _2 
let uu___is_BotState : nextState -> Prims.bool =
  fun projectee  ->
    match projectee with | BotState  -> true | uu____2301 -> false
  
let wordToNat : word -> Prims.nat =
  fun a423  ->
    (Obj.magic (fun uu____2315  -> failwith "Not yet implemented:wordToNat"))
      a423
  
let andb : word -> word -> word =
  fun a424  ->
    fun a425  ->
      (Obj.magic
         (fun uu____2338  ->
            fun uu____2339  -> failwith "Not yet implemented:andb")) a424
        a425
  
let orb : word -> word -> word =
  fun a426  ->
    fun a427  ->
      (Obj.magic
         (fun uu____2364  ->
            fun uu____2365  -> failwith "Not yet implemented:orb")) a426 a427
  
let xorb : word -> word -> word =
  fun a428  ->
    fun a429  ->
      (Obj.magic
         (fun uu____2390  ->
            fun uu____2391  -> failwith "Not yet implemented:xorb")) a428
        a429
  
let notb : word -> word =
  fun a430  ->
    (Obj.magic (fun uu____2409  -> failwith "Not yet implemented:notb")) a430
  
let byteb : word -> word =
  fun a431  ->
    (Obj.magic (fun uu____2425  -> failwith "Not yet implemented:byteb"))
      a431
  
let signextend : word -> word =
  fun a432  ->
    (Obj.magic (fun uu____2441  -> failwith "Not yet implemented:signextend"))
      a432
  
let divCeiling : Prims.int -> Prims.pos -> Prims.nat =
  fun a433  ->
    fun a434  ->
      (Obj.magic
         (fun uu____2460  ->
            fun uu____2461  -> failwith "Not yet implemented:divCeiling"))
        a433 a434
  
let divFloor : Prims.nat -> Prims.pos -> Prims.nat =
  fun a  -> fun b  -> a / b 
let unsignedMul : Prims.nat -> Prims.nat -> Prims.nat =
  fun a  -> fun b  -> a * b 
let m : Prims.nat -> word -> Prims.nat -> Prims.nat =
  fun i  ->
    fun o  ->
      fun s  ->
        if s = (Prims.parse_int "0")
        then i
        else FStar_Math_Lib.max i (divCeiling (o + s) (Prims.parse_int "32"))
  
let cmem : Prims.nat -> Prims.nat -> Prims.nat =
  fun aw  ->
    fun aw'  ->
      ((unsignedMul (Prims.parse_int "3") (aw' - aw)) +
         (divFloor (aw' * aw') (Prims.parse_int "512")))
        - (divFloor (aw * aw) (Prims.parse_int "512"))
  
let cbase : Prims.int -> Prims.bool -> Prims.nat =
  fun va  ->
    fun flag  ->
      ((Prims.parse_int "700") +
         (if va = (Prims.parse_int "0")
          then (Prims.parse_int "0")
          else (Prims.parse_int "6500")))
        +
        (if Prims.op_Negation flag
         then (Prims.parse_int "25000")
         else (Prims.parse_int "0"))
  
let lf : Prims.nat -> Prims.nat =
  fun n1  -> n1 - (divFloor n1 (Prims.parse_int "64")) 
let cgasgap : Prims.int -> Prims.bool -> Prims.nat -> Prims.nat -> Prims.nat
  =
  fun va  ->
    fun flag  ->
      fun g  ->
        fun gas  ->
          if
            (((Prims.parse_int "700") +
                (if va = (Prims.parse_int "0")
                 then (Prims.parse_int "0")
                 else (Prims.parse_int "9000")))
               +
               (if Prims.op_Negation flag
                then (Prims.parse_int "25000")
                else (Prims.parse_int "0")))
              > gas
          then g
          else
            (FStar_Math_Lib.min g
               (lf
                  (gas -
                     (((Prims.parse_int "700") +
                         (if va = (Prims.parse_int "0")
                          then (Prims.parse_int "0")
                          else (Prims.parse_int "9000")))
                        +
                        (if Prims.op_Negation flag
                         then (Prims.parse_int "25000")
                         else (Prims.parse_int "0"))))))
              +
              (if va = (Prims.parse_int "0")
               then (Prims.parse_int "0")
               else (Prims.parse_int "2300"))
  
let rec log256 : Prims.pos -> Prims.nat =
  fun x  ->
    if x >= (Prims.parse_int "256")
    then (Prims.parse_int "1") + (log256 (x / (Prims.parse_int "256")))
    else (Prims.parse_int "0")
  
let rec list_swap : lStack -> word -> word -> lStack =
  fun l  ->
    fun u  ->
      fun v1  ->
        match l with
        | [] -> []
        | h::t -> (if h = u then v1 else if h = v1 then u else h) ::
            (list_swap t u v1)
  
let write : mem -> word -> word -> mem =
  fun a435  ->
    fun a436  ->
      fun a437  ->
        (Obj.magic
           (fun uu____2891  ->
              fun uu____2892  ->
                fun uu____2893  -> failwith "Not yet implemented:write"))
          a435 a436 a437
  
let writeBytearray : mem -> word -> word -> bytearray -> mem =
  fun a438  ->
    fun a439  ->
      fun a440  ->
        fun a441  ->
          (Obj.magic
             (fun uu____2947  ->
                fun uu____2948  ->
                  fun uu____2949  ->
                    fun uu____2950  ->
                      failwith "Not yet implemented:writeBytearray")) a438
            a439 a440 a441
  
let writeCode : mem -> word -> word -> program -> mem =
  fun a442  ->
    fun a443  ->
      fun a444  ->
        fun a445  ->
          (Obj.magic
             (fun uu____3006  ->
                fun uu____3007  ->
                  fun uu____3008  ->
                    fun uu____3009  ->
                      failwith "Not yet implemented:writeCode")) a442 a443
            a444 a445
  
let subMem : mem -> word -> word -> bytearray =
  fun a446  ->
    fun a447  ->
      fun a448  ->
        (Obj.magic
           (fun uu____3050  ->
              fun uu____3051  ->
                fun uu____3052  -> failwith "Not yet implemented:subMem"))
          a446 a447 a448
  
let swrite : storage -> word -> word -> storage =
  fun st  ->
    fun ind  -> fun value  -> fun i  -> if i = ind then value else st i
  
let update : gState -> address -> account -> gState =
  fun gst  ->
    fun addr  ->
      fun acc  ->
        fun a  ->
          if a = addr then FStar_Pervasives_Native.Some acc else gst a
  
let extractWord : Prims.nat -> Prims.nat -> bytearray -> word =
  fun a449  ->
    fun a450  ->
      fun a451  ->
        (Obj.magic
           (fun from  ->
              fun size  ->
                fun bytecode  -> failwith "Not yet implemented:extractWord"))
          a449 a450 a451
  
let subBytearray : Prims.nat -> Prims.nat -> bytearray -> bytearray =
  fun a452  ->
    fun a453  ->
      fun a454  ->
        (Obj.magic
           (fun from  ->
              fun size  ->
                fun uu____3255  ->
                  failwith "Not yet implemented:subBytearray")) a452 a453
          a454
  
let bytearrayToCode : bytearray -> program =
  fun a455  ->
    (Obj.magic
       (fun uu____3269  -> failwith "Not yet implemented:bytearrayToCode"))
      a455
  
let emptyBytearray : bytearray = "0x" 
let sizeBytearray : bytearray -> Prims.nat =
  fun a456  ->
    (Obj.magic
       (fun uu____3279  -> failwith "Not yet implemented:sizeBytearray"))
      a456
  
let addressToWord : address -> word =
  fun a457  ->
    (Obj.magic
       (fun uu____3293  -> failwith "Not yet implemented:addressToWord"))
      a457
  
let newaddress : address -> Prims.nat -> address =
  fun a458  ->
    fun a459  ->
      (Obj.magic
         (fun uu____3316  ->
            fun uu____3317  -> failwith "Not yet implemented:newaddress"))
        a458 a459
  
let subCodeSTOP : Prims.nat -> Prims.nat -> program -> program =
  fun a460  ->
    fun a461  ->
      fun a462  ->
        (Obj.magic
           (fun from  ->
              fun size  ->
                fun uu____3351  -> failwith "Not yet implemented:subCodeSTOP"))
          a460 a461 a462
  
let rec plainStackSize : plainStack -> Prims.nat =
  fun pst  ->
    match pst with
    | StackNil  -> (Prims.parse_int "1")
    | StackCons (exstate,pst') ->
        (Prims.parse_int "1") + (plainStackSize pst')
  
let executionStackSize : stack -> Prims.nat =
  fun st  ->
    match st with
    | Plain pst -> plainStackSize pst
    | Exc pst -> (Prims.parse_int "1") + (plainStackSize pst)
    | Halt (uu____3387,uu____3388,uu____3389,uu____3390,pst) ->
        (Prims.parse_int "1") + (plainStackSize pst)
  
let toSigned : word -> signedWord =
  fun i  -> if i >= wordSizeDiv2 then i - wordSize else i 
let toUnsighned : signedWord -> word =
  fun i  -> if i < (Prims.parse_int "0") then i + wordSize else i 
let smod : signedWord -> signedWord -> signedWord =
  fun a463  ->
    fun a464  ->
      (Obj.magic
         (fun uu____3474  ->
            fun uu____3475  -> failwith "Not yet implemented:smod")) a463
        a464
  
let stepState :
  mState ->
    exEnv -> gState -> transEff -> Prims.nat -> blockInfo -> nextState
  =
  fun mst  ->
    fun exenv  ->
      fun gst  ->
        fun teff  ->
          fun estacksize  ->
            fun blinfo  ->
              match mst with
              | MState (pc,gas,memory,actwords,st) ->
                  (match exenv with
                   | ExEnv (actor,input,sender,value,code) ->
                       (match getOpcode pc code with
                        | FStar_Pervasives_Native.None  ->
                            (FStar_IO.print_string "Unspecified opcode!\n";
                             (match () with | () -> ErrState))
                        | FStar_Pervasives_Native.Some (STOP ) ->
                            HaltState (gst, gas, emptyBytearray)
                        | FStar_Pervasives_Native.Some (UNKNOWN ) ->
                            LocalStep
                              ((MState
                                  ((pc + (Prims.parse_int "1")), gas, memory,
                                    actwords, st)), gst, teff)
                        | FStar_Pervasives_Native.Some (RETURN ) ->
                            (match st with
                             | io::is::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        (cmem actwords (m actwords io is))
                                        (FStar_List_Tot_Base.length st))
                                 then ErrState
                                 else
                                   HaltState
                                     (gst,
                                       (gas -
                                          (cmem actwords (m actwords io is))),
                                       (subMem memory io is))
                             | uu____4150 -> ErrState)
                        | FStar_Pervasives_Native.Some (SELFDESTRUCT ) ->
                            (match st with
                             | aben::st' ->
                                 (match gst actor with
                                  | FStar_Pervasives_Native.None  -> BotState
                                  | FStar_Pervasives_Native.Some (Acc
                                      (an,ab,stor,excode)) ->
                                      (match gst (aben mod addressSize) with
                                       | FStar_Pervasives_Native.None  ->
                                           if
                                             Prims.op_Negation
                                               (valid gas
                                                  (Prims.parse_int "37000")
                                                  (FStar_List_Tot_Base.length
                                                     st))
                                           then ErrState
                                           else
                                             HaltState
                                               ((update gst actor
                                                   (Acc
                                                      (an,
                                                        (Prims.parse_int "0"),
                                                        stor, excode))),
                                                 (gas -
                                                    (Prims.parse_int "37000")),
                                                 emptyBytearray)
                                       | FStar_Pervasives_Native.Some (Acc
                                           (an',ab',stor',excode')) ->
                                           if
                                             Prims.op_Negation
                                               (valid gas
                                                  (Prims.parse_int "5000")
                                                  (FStar_List_Tot_Base.length
                                                     st))
                                           then ErrState
                                           else
                                             HaltState
                                               ((update gst
                                                   (aben mod addressSize)
                                                   (Acc
                                                      (an', (ab + ab'),
                                                        stor', excode'))),
                                                 (gas -
                                                    (Prims.parse_int "5000")),
                                                 emptyBytearray)))
                             | uu____4295 -> ErrState)
                        | FStar_Pervasives_Native.Some (DUP i) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "3")
                                   ((FStar_List_Tot_Base.length st) - i))
                            then ErrState
                            else
                              (match FStar_List_Tot_Base.nth st i with
                               | FStar_Pervasives_Native.None  -> ErrState
                               | FStar_Pervasives_Native.Some value1 ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - (Prims.parse_int "3")),
                                           memory, actwords, (value1 :: st))),
                                       gst, teff))
                        | FStar_Pervasives_Native.Some (SWAP i) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "3")
                                   ((FStar_List_Tot_Base.length st) -
                                      (i + (Prims.parse_int "1"))))
                            then ErrState
                            else
                              (match st with
                               | v1::st' ->
                                   (match FStar_List_Tot_Base.nth st
                                            (i + (Prims.parse_int "1"))
                                    with
                                    | FStar_Pervasives_Native.None  ->
                                        ErrState
                                    | FStar_Pervasives_Native.Some v2 ->
                                        LocalStep
                                          ((MState
                                              ((pc + (Prims.parse_int "1")),
                                                (gas - (Prims.parse_int "3")),
                                                memory, actwords,
                                                (list_swap st v1 v2))), gst,
                                            teff)))
                        | FStar_Pervasives_Native.Some (POP ) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "2")
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | value1::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - (Prims.parse_int "2")),
                                           memory, actwords, st')), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (PC ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              LocalStep
                                ((MState
                                    ((pc + (Prims.parse_int "1")),
                                      (gas - gbase), memory, actwords,
                                      ((pc mod wordSize) :: st))), gst, teff)
                        | FStar_Pervasives_Native.Some (MSIZE ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              LocalStep
                                ((MState
                                    ((pc + (Prims.parse_int "1")),
                                      (gas - gbase), memory, actwords,
                                      ((actwords mod wordSize) :: st))), gst,
                                  teff)
                        | FStar_Pervasives_Native.Some (GAS ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              LocalStep
                                ((MState
                                    ((pc + (Prims.parse_int "1")),
                                      (gas - gbase), memory, actwords,
                                      ((gas mod wordSize) :: st))), gst,
                                  teff)
                        | FStar_Pervasives_Native.Some (JUMPDEST ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   (FStar_List_Tot_Base.length st))
                            then ErrState
                            else
                              LocalStep
                                ((MState
                                    ((pc + (Prims.parse_int "1")),
                                      (gas - (Prims.parse_int "1")), memory,
                                      actwords, st)), gst, teff)
                        | FStar_Pervasives_Native.Some (JUMP ) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "8")
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | value1::st' ->
                                   (match getOpcode pc code with
                                    | FStar_Pervasives_Native.Some (JUMPDEST
                                        ) ->
                                        LocalStep
                                          ((MState
                                              (value1,
                                                (gas - (Prims.parse_int "8")),
                                                memory, actwords, st')), gst,
                                            teff)
                                    | uu____4756 -> ErrState))
                        | FStar_Pervasives_Native.Some (JUMPI ) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "10")
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | value1::cond::st' ->
                                   (match getOpcode pc code with
                                    | FStar_Pervasives_Native.Some (JUMPDEST
                                        ) ->
                                        if cond = (Prims.parse_int "0")
                                        then
                                          LocalStep
                                            ((MState
                                                ((pc + (Prims.parse_int "1")),
                                                  (gas -
                                                     (Prims.parse_int "10")),
                                                  memory, actwords, st')),
                                              gst, teff)
                                        else
                                          LocalStep
                                            ((MState
                                                (value1,
                                                  (gas -
                                                     (Prims.parse_int "8")),
                                                  memory, actwords, st')),
                                              gst, teff)
                                    | uu____4856 -> ErrState))
                        | FStar_Pervasives_Native.Some (PUSH i) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "3")
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              LocalStep
                                ((MState
                                    ((pc + (Prims.parse_int "2")),
                                      (gas - (Prims.parse_int "3")), memory,
                                      actwords, (i :: st))), gst, teff)
                        | FStar_Pervasives_Native.Some (MLOAD ) ->
                            (match st with
                             | ma::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        ((cmem actwords
                                            (m actwords ma
                                               (Prims.parse_int "32")))
                                           + (Prims.parse_int "3"))
                                        ((FStar_List_Tot_Base.length st) +
                                           (Prims.parse_int "1")))
                                 then ErrState
                                 else
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((cmem actwords
                                                  (m actwords ma
                                                     (Prims.parse_int "32")))
                                                 + (Prims.parse_int "3"))),
                                           memory,
                                           (m actwords ma
                                              (Prims.parse_int "32")),
                                           ((memory ma) :: st'))), gst, teff)
                             | uu____5014 -> ErrState)
                        | FStar_Pervasives_Native.Some (MSTORE8 ) ->
                            (match st with
                             | ma::mb::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        ((cmem actwords
                                            (m actwords ma
                                               (Prims.parse_int "32")))
                                           + (Prims.parse_int "3"))
                                        (FStar_List_Tot_Base.length st))
                                 then ErrState
                                 else
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((cmem actwords
                                                  (m actwords ma
                                                     (Prims.parse_int "32")))
                                                 + (Prims.parse_int "3"))),
                                           (write memory ma mb),
                                           (m actwords ma
                                              (Prims.parse_int "32")), st')),
                                       gst, teff)
                             | uu____5116 -> ErrState)
                        | FStar_Pervasives_Native.Some (MSTORE ) ->
                            (match st with
                             | ma::mb::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        ((cmem actwords
                                            (m actwords ma
                                               (Prims.parse_int "32")))
                                           + (Prims.parse_int "3"))
                                        (FStar_List_Tot_Base.length st))
                                 then ErrState
                                 else
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((cmem actwords
                                                  (m actwords ma
                                                     (Prims.parse_int "32")))
                                                 + (Prims.parse_int "3"))),
                                           (write memory ma mb),
                                           (m actwords ma
                                              (Prims.parse_int "32")), st')),
                                       gst, teff)
                             | uu____5218 -> ErrState)
                        | FStar_Pervasives_Native.Some (CALLDATALOAD ) ->
                            if
                              Prims.op_Negation
                                (valid gas (Prims.parse_int "3")
                                   (FStar_List_Tot_Base.length st))
                            then ErrState
                            else
                              (match st with
                               | a::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - (Prims.parse_int "3")),
                                           memory, actwords,
                                           ((extractWord a
                                               (FStar_Math_Lib.min
                                                  (FStar_Math_Lib.max
                                                     ((sizeBytearray input) -
                                                        a)
                                                     (Prims.parse_int "0"))
                                                  (Prims.parse_int "32"))
                                               input) :: st'))), gst, teff)
                               | uu____5278 -> ErrState)
                        | FStar_Pervasives_Native.Some (CODECOPY ) ->
                            (match st with
                             | posm::posb::size::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        (((cmem actwords
                                             (m actwords posm size))
                                            + (Prims.parse_int "3"))
                                           +
                                           ((Prims.parse_int "3") *
                                              (divCeiling size
                                                 (Prims.parse_int "32"))))
                                        (FStar_List_Tot_Base.length st))
                                 then ErrState
                                 else
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              (((cmem actwords
                                                   (m actwords posm size))
                                                  + (Prims.parse_int "3"))
                                                 +
                                                 ((Prims.parse_int "3") *
                                                    (divCeiling size
                                                       (Prims.parse_int "32"))))),
                                           (writeCode memory posb size
                                              (subCodeSTOP posb
                                                 (FStar_Math_Lib.min
                                                    (FStar_Math_Lib.max
                                                       ((FStar_List_Tot_Base.length
                                                           code)
                                                          - posb)
                                                       (Prims.parse_int "0"))
                                                    size) code)),
                                           (m actwords posm size), st')),
                                       gst, teff)
                             | uu____5427 -> ErrState)
                        | FStar_Pervasives_Native.Some (SLOAD ) ->
                            (match st with
                             | a::st' ->
                                 let account = gst actor  in
                                 (match account with
                                  | FStar_Pervasives_Native.None  ->
                                      (FStar_IO.print_string
                                         "Sload: no account!\n";
                                       (match () with | () -> ErrState))
                                  | FStar_Pervasives_Native.Some (Acc
                                      (an,ab,stor,excode)) ->
                                      let v1 = stor a  in
                                      let cost = (Prims.parse_int "200")  in
                                      if
                                        Prims.op_Negation
                                          (valid gas cost
                                             (FStar_List_Tot_Base.length st))
                                      then
                                        (FStar_IO.print_string
                                           "Sload: not valid!\n";
                                         (match () with | () -> ErrState))
                                      else
                                        LocalStep
                                          ((MState
                                              ((pc + (Prims.parse_int "1")),
                                                (gas - cost), memory,
                                                actwords, (v1 :: st'))), gst,
                                            teff))
                             | uu____5512 ->
                                 (FStar_IO.print_string "Sload: stack!\n";
                                  (match () with | () -> ErrState)))
                        | FStar_Pervasives_Native.Some (SSTORE ) ->
                            (match st with
                             | a::b::st' ->
                                 let account = gst actor  in
                                 (match account with
                                  | FStar_Pervasives_Native.None  ->
                                      (FStar_IO.print_string
                                         "Sstore: no account!\n";
                                       (match () with | () -> ErrState))
                                  | FStar_Pervasives_Native.Some (Acc
                                      (an,ab,stor,excode)) ->
                                      let v1 = stor a  in
                                      let cost =
                                        if
                                          (Prims.op_Negation
                                             (b = (Prims.parse_int "0")))
                                            && (v1 = (Prims.parse_int "0"))
                                        then (Prims.parse_int "20000")
                                        else (Prims.parse_int "5000")  in
                                      let stor' = swrite stor a b  in
                                      let account' =
                                        Acc (an, ab, stor', excode)  in
                                      let gst' = update gst actor account'
                                         in
                                      if
                                        Prims.op_Negation
                                          (valid gas cost
                                             (FStar_List_Tot_Base.length st))
                                      then
                                        (FStar_IO.print_string
                                           "Sstore: not valid!\n";
                                         (match () with | () -> ErrState))
                                      else
                                        LocalStep
                                          ((MState
                                              ((pc + (Prims.parse_int "1")),
                                                (gas - cost), memory,
                                                actwords, st')), gst', teff))
                             | uu____5667 ->
                                 (FStar_IO.print_string "Sstore: stack!\n";
                                  (match () with | () -> ErrState)))
                        | FStar_Pervasives_Native.Some (ORIGIN ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (GASPRICE ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (BLOCKHASH ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (COINBASE ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (TIMESTAMP ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (NUMBERB ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (DIFFICULTY ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (GASLIMIT ) ->
                            if
                              Prims.op_Negation
                                (valid gas gbase
                                   ((FStar_List_Tot_Base.length st) +
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match blinfo with
                               | BlockInfo
                                   (blockhash,coinbase,timestamp,numberb,difficulty,gaslimit,origin,gasprice)
                                   ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gbase), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ORIGIN  ->
                                                  addressToWord origin
                                              | GASPRICE  -> gasprice
                                              | BLOCKHASH  ->
                                                  computeBlockHash blockhash
                                              | COINBASE  -> coinbase
                                              | TIMESTAMP  -> timestamp
                                              | NUMBERB  -> numberb
                                              | DIFFICULTY  -> difficulty
                                              | GASLIMIT  -> gaslimit) mod
                                               wordSize) :: st))), gst, teff))
                        | FStar_Pervasives_Native.Some (EXP ) ->
                            (match st with
                             | x::y::st' ->
                                 if
                                   Prims.op_Negation
                                     (valid gas
                                        (if y = (Prims.parse_int "0")
                                         then (Prims.parse_int "10")
                                         else
                                           (Prims.parse_int "10") +
                                             ((Prims.parse_int "10") *
                                                ((Prims.parse_int "1") +
                                                   (log256 y))))
                                        ((FStar_List_Tot_Base.length st) -
                                           (Prims.parse_int "2")))
                                 then ErrState
                                 else
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              (if y = (Prims.parse_int "0")
                                               then (Prims.parse_int "10")
                                               else
                                                 (Prims.parse_int "10") +
                                                   ((Prims.parse_int "10") *
                                                      ((Prims.parse_int "1")
                                                         + (log256 y))))),
                                           memory, actwords,
                                           (((FStar_Math_Lib.powx x y) mod
                                               wordSize) :: st'))), gst,
                                       teff)
                             | uu____6463 -> ErrState)
                        | FStar_Pervasives_Native.Some (ADD ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (MUL ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SUB ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (DIVV ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SDIVV ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (MOD ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SMOD ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (ANDB ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (ORB ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (XORB ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (LT ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (GT ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SLT ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SGT ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (EQB ) ->
                            if
                              Prims.op_Negation
                                (valid gas
                                   (match FStar_Pervasives_Native.__proj__Some__item__v
                                            (getOpcode pc code)
                                    with
                                    | ANDB  -> gverylow
                                    | ORB  -> gverylow
                                    | XORB  -> gverylow
                                    | LT  -> gverylow
                                    | GT  -> gverylow
                                    | SLT  -> gverylow
                                    | SGT  -> gverylow
                                    | EQB  -> gverylow
                                    | ADD  -> gverylow
                                    | SUB  -> gverylow
                                    | MUL  -> glow
                                    | DIVV  -> glow
                                    | SDIVV  -> glow
                                    | MOD  -> glow
                                    | SMOD  -> glow)
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "2")))
                            then ErrState
                            else
                              (match st with
                               | x::y::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas -
                                              ((match FStar_Pervasives_Native.__proj__Some__item__v
                                                        (getOpcode pc code)
                                                with
                                                | ANDB  -> gverylow
                                                | ORB  -> gverylow
                                                | XORB  -> gverylow
                                                | LT  -> gverylow
                                                | GT  -> gverylow
                                                | SLT  -> gverylow
                                                | SGT  -> gverylow
                                                | EQB  -> gverylow
                                                | ADD  -> gverylow
                                                | SUB  -> gverylow
                                                | MUL  -> glow
                                                | DIVV  -> glow
                                                | SDIVV  -> glow
                                                | MOD  -> glow
                                                | SMOD  -> glow))), memory,
                                           actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADD  -> x + y
                                              | MUL  -> x * y
                                              | SUB  -> x - y
                                              | DIVV  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x / y
                                              | SDIVV  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (toSigned
                                                         ((if
                                                             (toSigned x) <
                                                               (Prims.parse_int "0")
                                                           then
                                                             -
                                                               ((-
                                                                   (toSigned
                                                                    x))
                                                                  /
                                                                  (toSigned y))
                                                           else
                                                             (toSigned x) /
                                                               (toSigned y))
                                                            mod wordSize))
                                              | MOD  ->
                                                  if
                                                    y = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else x mod y
                                              | SMOD  ->
                                                  if
                                                    (toSigned y) =
                                                      (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else
                                                    toUnsighned
                                                      (smod (toSigned x)
                                                         (toSigned y))
                                              | LT  ->
                                                  if x < y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SLT  ->
                                                  if
                                                    (toSigned x) <
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | GT  ->
                                                  if x > y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | SGT  ->
                                                  if
                                                    (toSigned x) >
                                                      (toSigned y)
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | EQB  ->
                                                  if x = y
                                                  then (Prims.parse_int "1")
                                                  else (Prims.parse_int "0")
                                              | ANDB  -> andb x y
                                              | ORB  -> orb x y
                                              | XORB  -> xorb x y) mod
                                               wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (SIGNEXTEND ) ->
                            if
                              Prims.op_Negation
                                (valid gas glow
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | x::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - glow), memory, actwords,
                                           ((signextend x) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (ISZERO ) ->
                            if
                              Prims.op_Negation
                                (valid gas gverylow
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | x::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gverylow), memory,
                                           actwords,
                                           ((if x = (Prims.parse_int "0")
                                             then (Prims.parse_int "1")
                                             else (Prims.parse_int "0")) ::
                                           st'))), gst, teff))
                        | FStar_Pervasives_Native.Some (NOTB ) ->
                            if
                              Prims.op_Negation
                                (valid gas gverylow
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | x::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gverylow), memory,
                                           actwords, ((notb x) :: st'))),
                                       gst, teff))
                        | FStar_Pervasives_Native.Some (BYTEB ) ->
                            if
                              Prims.op_Negation
                                (valid gas gverylow
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "1")))
                            then ErrState
                            else
                              (match st with
                               | x::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gverylow), memory,
                                           actwords, ((byteb x) :: st'))),
                                       gst, teff))
                        | FStar_Pervasives_Native.Some (ADDMOD ) ->
                            if
                              Prims.op_Negation
                                (valid gas gmid
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "3")))
                            then ErrState
                            else
                              (match st with
                               | x::y::z::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gmid), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADDMOD  ->
                                                  if
                                                    z = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else (x + y) mod z
                                              | MULMOD  ->
                                                  if
                                                    z = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else (x * y) mod z)
                                               mod wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (MULMOD ) ->
                            if
                              Prims.op_Negation
                                (valid gas gmid
                                   ((FStar_List_Tot_Base.length st) -
                                      (Prims.parse_int "3")))
                            then ErrState
                            else
                              (match st with
                               | x::y::z::st' ->
                                   LocalStep
                                     ((MState
                                         ((pc + (Prims.parse_int "1")),
                                           (gas - gmid), memory, actwords,
                                           (((match FStar_Pervasives_Native.__proj__Some__item__v
                                                      (getOpcode pc code)
                                              with
                                              | ADDMOD  ->
                                                  if
                                                    z = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else (x + y) mod z
                                              | MULMOD  ->
                                                  if
                                                    z = (Prims.parse_int "0")
                                                  then (Prims.parse_int "0")
                                                  else (x * y) mod z)
                                               mod wordSize) :: st'))), gst,
                                       teff))
                        | FStar_Pervasives_Native.Some (CALL ) ->
                            (match st with
                             | g::to_11144::va::io::is::oo::os::st' ->
                                 if
                                   (Prims.op_Negation
                                      (valid gas
                                         (((cbase va
                                              (match gst
                                                       (to_11144 mod
                                                          addressSize)
                                               with
                                               | FStar_Pervasives_Native.None
                                                    -> false
                                               | FStar_Pervasives_Native.Some
                                                   (Acc
                                                   (an',ab',stor',excode'))
                                                   -> true))
                                             +
                                             (cmem actwords
                                                (m (m actwords io is) oo os)))
                                            +
                                            (cgasgap va
                                               (match gst
                                                        (to_11144 mod
                                                           addressSize)
                                                with
                                                | FStar_Pervasives_Native.None
                                                     -> false
                                                | FStar_Pervasives_Native.Some
                                                    (Acc
                                                    (an',ab',stor',excode'))
                                                    -> true) g gas))
                                         ((FStar_List_Tot_Base.length st) +
                                            (Prims.parse_int "1"))))
                                     &&
                                     ((estacksize + (Prims.parse_int "1")) <=
                                        (Prims.parse_int "1024"))
                                 then ErrState
                                 else
                                   (match gst actor with
                                    | FStar_Pervasives_Native.None  ->
                                        ErrState
                                    | FStar_Pervasives_Native.Some (Acc
                                        (an,ab,stor,excode)) ->
                                        if ab < va
                                        then ErrState
                                        else
                                          (match gst
                                                   (to_11144 mod addressSize)
                                           with
                                           | FStar_Pervasives_Native.None  ->
                                               GlobalStep
                                                 ((ExEnv
                                                     ((Prims.parse_int "0"),
                                                       (subMem memory io is),
                                                       actor, va,
                                                       (emptyProgram ()))),
                                                   (update
                                                      (update gst actor
                                                         (Acc
                                                            (an, (ab - va),
                                                              stor, excode)))
                                                      (to_11144 mod
                                                         addressSize)
                                                      (Acc
                                                         ((Prims.parse_int "0"),
                                                           va, emptyStorage,
                                                           (emptyProgram ())))),
                                                   (cgasgap va
                                                      (match gst
                                                               (to_11144 mod
                                                                  addressSize)
                                                       with
                                                       | FStar_Pervasives_Native.None
                                                            -> false
                                                       | FStar_Pervasives_Native.Some
                                                           (Acc
                                                           (an',ab',stor',excode'))
                                                           -> true) g gas))
                                           | FStar_Pervasives_Native.Some
                                               (Acc (an',ab',stor',excode'))
                                               ->
                                               GlobalStep
                                                 ((ExEnv
                                                     ((to_11144 mod
                                                         addressSize),
                                                       (subMem memory io is),
                                                       actor, va, excode')),
                                                   (update
                                                      (update gst actor
                                                         (Acc
                                                            (an, (ab - va),
                                                              stor, excode)))
                                                      (to_11144 mod
                                                         addressSize)
                                                      (Acc
                                                         (an', (ab' + va),
                                                           stor', excode'))),
                                                   (cgasgap va
                                                      (match gst
                                                               (to_11144 mod
                                                                  addressSize)
                                                       with
                                                       | FStar_Pervasives_Native.None
                                                            -> false
                                                       | FStar_Pervasives_Native.Some
                                                           (Acc
                                                           (an'1,ab'1,stor'1,excode'1))
                                                           -> true) g gas))))
                             | uu____11539 -> ErrState)
                        | FStar_Pervasives_Native.Some (CREATE ) ->
                            (match st with
                             | va::io::is::st' ->
                                 if
                                   Prims.op_Negation
                                     ((valid gas
                                         ((cmem actwords (m actwords io is))
                                            + (Prims.parse_int "32000"))
                                         ((FStar_List_Tot_Base.length st) +
                                            (Prims.parse_int "1")))
                                        &&
                                        ((estacksize + (Prims.parse_int "1"))
                                           <= (Prims.parse_int "1024")))
                                 then ErrState
                                 else
                                   (match gst actor with
                                    | FStar_Pervasives_Native.None  ->
                                        BotState
                                    | FStar_Pervasives_Native.Some (Acc
                                        (an,ab,stor,excode)) ->
                                        if va > ab
                                        then ErrState
                                        else
                                          GlobalStep
                                            ((ExEnv
                                                ((newaddress actor an),
                                                  (subMem memory io is),
                                                  actor, va,
                                                  (emptyProgram ()))),
                                              (update
                                                 (update gst
                                                    (newaddress actor an)
                                                    (Acc
                                                       ((Prims.parse_int "0"),
                                                         (match gst
                                                                  (newaddress
                                                                    actor an)
                                                          with
                                                          | FStar_Pervasives_Native.None
                                                               -> va
                                                          | FStar_Pervasives_Native.Some
                                                              (Acc
                                                              (an',ab',stor',excode'))
                                                              -> ab' + va),
                                                         emptyStorage,
                                                         (emptyProgram ()))))
                                                 actor
                                                 (Acc
                                                    ((an +
                                                        (Prims.parse_int "1")),
                                                      (ab - va), stor,
                                                      excode))),
                                              (lf
                                                 (gas -
                                                    ((cmem actwords
                                                        (m actwords io is))
                                                       +
                                                       (Prims.parse_int "32000"))))))
                             | uu____11760 -> ErrState)))
  
let step : stack -> stepOutcome =
  fun s  ->
    match s with
    | Plain pstack ->
        (match pstack with
         | StackNil  -> Fin Bot
         | StackCons (state,s') ->
             (match state with
              | ExState (mst,exenv,gst,teff,blinfo) ->
                  let uu____11882 =
                    stepState mst exenv gst teff (executionStackSize s)
                      blinfo
                     in
                  (match uu____11882 with
                   | LocalStep (mst',gst',teff') ->
                       Next
                         (Plain
                            (StackCons
                               ((ExState (mst', exenv, gst', teff', blinfo)),
                                 s')))
                   | GlobalStep (exenv',gst',gas') ->
                       Next
                         (Plain
                            (StackCons
                               ((ExState
                                   ((MState
                                       ((Prims.parse_int "0"), gas',
                                         ((fun x  -> (Prims.parse_int "0"))),
                                         (Prims.parse_int "0"), [])), exenv',
                                     gst', teff, blinfo)), pstack)))
                   | ErrState  -> Next (Exc s')
                   | BotState  -> Fin Bot
                   | HaltState (gst',gas',data) ->
                       Next (Halt (gst', teff, gas', data, s')))))
    | Exc estack ->
        (match estack with
         | StackNil  -> Fin Err
         | StackCons (state,s') ->
             (match state with
              | ExState (mst,exenv,gst,teff,blinfo) ->
                  (match mst with
                   | MState (pc,gas,memory,actwords,st) ->
                       (match exenv with
                        | ExEnv (actor,input,sender,value,code) ->
                            (match getOpcode pc code with
                             | FStar_Pervasives_Native.None  -> Fin Bot
                             | FStar_Pervasives_Native.Some (CALL ) ->
                                 (match st with
                                  | g::to_11962::va::io::is::oo::os::st' ->
                                      if
                                        Prims.op_Negation
                                          (valid gas
                                             (((cbase va
                                                  (match gst
                                                           (to_11962 mod
                                                              addressSize)
                                                   with
                                                   | FStar_Pervasives_Native.None
                                                        -> false
                                                   | FStar_Pervasives_Native.Some
                                                       (Acc
                                                       (an',ab',stor',excode'))
                                                       -> true))
                                                 +
                                                 (cmem actwords
                                                    (m (m actwords io is) oo
                                                       os)))
                                                +
                                                (cgasgap va
                                                   (match gst
                                                            (to_11962 mod
                                                               addressSize)
                                                    with
                                                    | FStar_Pervasives_Native.None
                                                         -> false
                                                    | FStar_Pervasives_Native.Some
                                                        (Acc
                                                        (an',ab',stor',excode'))
                                                        -> true) g gas))
                                             (FStar_List_Tot_Base.length st))
                                      then Fin Err
                                      else
                                        Next
                                          (Plain
                                             (StackCons
                                                ((ExState
                                                    ((MState
                                                        ((pc +
                                                            (Prims.parse_int "1")),
                                                          (gas -
                                                             (((cbase va
                                                                  (match 
                                                                    gst
                                                                    (to_11962
                                                                    mod
                                                                    addressSize)
                                                                   with
                                                                   | 
                                                                   FStar_Pervasives_Native.None
                                                                     -> false
                                                                   | 
                                                                   FStar_Pervasives_Native.Some
                                                                    (Acc
                                                                    (an',ab',stor',excode'))
                                                                    -> true))
                                                                 +
                                                                 (cmem
                                                                    actwords
                                                                    (
                                                                    m
                                                                    (m
                                                                    actwords
                                                                    io is) oo
                                                                    os)))
                                                                +
                                                                (cgasgap va
                                                                   (match 
                                                                    gst
                                                                    (to_11962
                                                                    mod
                                                                    addressSize)
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                     -> false
                                                                    | 
                                                                    FStar_Pervasives_Native.Some
                                                                    (Acc
                                                                    (an',ab',stor',excode'))
                                                                    -> true)
                                                                   g gas))),
                                                          memory,
                                                          (m
                                                             (m actwords io
                                                                is) oo os),
                                                          ((Prims.parse_int "0")
                                                          :: st'))), exenv,
                                                      gst, teff, blinfo)),
                                                  s')))
                                  | uu____12180 -> Fin Bot)
                             | FStar_Pervasives_Native.Some (CREATE ) ->
                                 (match st with
                                  | va::io::is::st' ->
                                      Next
                                        (Plain
                                           (StackCons
                                              ((ExState
                                                  ((MState
                                                      ((pc +
                                                          (Prims.parse_int "1")),
                                                        (gas +
                                                           ((cmem actwords
                                                               (m actwords io
                                                                  is))
                                                              +
                                                              (Prims.parse_int "32000"))),
                                                        memory,
                                                        (m actwords io is),
                                                        ((Prims.parse_int "0")
                                                        :: st'))), exenv,
                                                    gst, teff, blinfo)), s')))
                                  | uu____12251 -> Fin Err)
                             | uu____12252 -> Fin Bot)))))
    | Halt (gst,teff,gas,data,hstack) ->
        (match hstack with
         | StackNil  -> Fin (Reg (gst, teff, gas, data))
         | StackCons (state,s') ->
             (match state with
              | ExState (mst,exenv,gst',teff',blinfo) ->
                  (match mst with
                   | MState (pc,gas',memory,actwords,st) ->
                       (match exenv with
                        | ExEnv (actor,input,sender,value,code) ->
                            (match getOpcode pc code with
                             | FStar_Pervasives_Native.None  -> Fin Bot
                             | FStar_Pervasives_Native.Some (CALL ) ->
                                 (match st with
                                  | g::to_12303::va::io::is::oo::os::st' ->
                                      if
                                        Prims.op_Negation
                                          (valid gas'
                                             (((cbase va
                                                  (match gst
                                                           (to_12303 mod
                                                              addressSize)
                                                   with
                                                   | FStar_Pervasives_Native.None
                                                        -> false
                                                   | FStar_Pervasives_Native.Some
                                                       (Acc
                                                       (an',ab',stor',excode'))
                                                       -> true))
                                                 +
                                                 (cmem actwords
                                                    (m (m actwords io is) oo
                                                       os)))
                                                +
                                                (cgasgap va
                                                   (match gst
                                                            (to_12303 mod
                                                               addressSize)
                                                    with
                                                    | FStar_Pervasives_Native.None
                                                         -> false
                                                    | FStar_Pervasives_Native.Some
                                                        (Acc
                                                        (an',ab',stor',excode'))
                                                        -> true) g gas))
                                             ((FStar_List_Tot_Base.length st)
                                                + (Prims.parse_int "1")))
                                      then Fin Err
                                      else
                                        Next
                                          (Plain
                                             (StackCons
                                                ((ExState
                                                    ((MState
                                                        ((pc +
                                                            (Prims.parse_int "1")),
                                                          (gas' +
                                                             (gas -
                                                                (((cbase va
                                                                    (match 
                                                                    gst
                                                                    (to_12303
                                                                    mod
                                                                    addressSize)
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                     -> false
                                                                    | 
                                                                    FStar_Pervasives_Native.Some
                                                                    (Acc
                                                                    (an',ab',stor',excode'))
                                                                    -> true))
                                                                    +
                                                                    (
                                                                    cmem
                                                                    actwords
                                                                    (m
                                                                    (m
                                                                    actwords
                                                                    io is) oo
                                                                    os)))
                                                                   +
                                                                   (cgasgap
                                                                    va
                                                                    (match 
                                                                    gst
                                                                    (to_12303
                                                                    mod
                                                                    addressSize)
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                     -> false
                                                                    | 
                                                                    FStar_Pervasives_Native.Some
                                                                    (Acc
                                                                    (an',ab',stor',excode'))
                                                                    -> true)
                                                                    g gas)))),
                                                          (writeBytearray
                                                             memory oo os
                                                             data),
                                                          (m
                                                             (m actwords io
                                                                is) oo os),
                                                          ((Prims.parse_int "1")
                                                          :: st'))), exenv,
                                                      gst, teff, blinfo)),
                                                  s')))
                                  | uu____12540 -> Fin Err)
                             | FStar_Pervasives_Native.Some (CREATE ) ->
                                 (match st with
                                  | va::io::is::st' ->
                                      (match gst actor with
                                       | FStar_Pervasives_Native.None  ->
                                           Fin Bot
                                       | FStar_Pervasives_Native.Some (Acc
                                           (an,ab,stor,excode)) ->
                                           (match gst (newaddress actor an)
                                            with
                                            | FStar_Pervasives_Native.None 
                                                -> Fin Bot
                                            | FStar_Pervasives_Native.Some
                                                (Acc (an',ab',stor',excode'))
                                                ->
                                                if
                                                  Prims.op_Negation
                                                    ((valid gas'
                                                        ((cmem actwords
                                                            (m actwords io is))
                                                           +
                                                           (Prims.parse_int "32000"))
                                                        ((FStar_List_Tot_Base.length
                                                            st)
                                                           +
                                                           (Prims.parse_int "1")))
                                                       &&
                                                       (gas >=
                                                          ((Prims.parse_int "200")
                                                             *
                                                             (sizeBytearray
                                                                data))))
                                                then Fin Err
                                                else
                                                  Next
                                                    (Plain
                                                       (StackCons
                                                          ((ExState
                                                              ((MState
                                                                  ((pc +
                                                                    (Prims.parse_int "1")),
                                                                    (
                                                                    ((gas' +
                                                                    gas) -
                                                                    ((Prims.parse_int "200")
                                                                    *
                                                                    (sizeBytearray
                                                                    data))) -
                                                                    ((cmem
                                                                    actwords
                                                                    (m
                                                                    actwords
                                                                    io is)) +
                                                                    (Prims.parse_int "32000"))),
                                                                    memory,
                                                                    (
                                                                    m
                                                                    actwords
                                                                    io is),
                                                                    ((
                                                                    addressToWord
                                                                    (newaddress
                                                                    actor an))
                                                                    :: st'))),
                                                                exenv,
                                                                (update gst
                                                                   (newaddress
                                                                    actor an)
                                                                   (Acc
                                                                    (an',
                                                                    ab',
                                                                    stor',
                                                                    (bytearrayToCode
                                                                    data)))),
                                                                teff, blinfo)),
                                                            s')))))
                                  | uu____12725 -> Fin Err)
                             | uu____12726 -> Fin Bot)))))
  
let rec execution : stack -> exOutcome =
  fun s  ->
    let uu____12737 = step s  in
    match uu____12737 with | Next s' -> execution s' | Fin eo -> eo
  