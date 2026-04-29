PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["displayName"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 FASTCALL2                        RAWGET R0 R1 ; [+5]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 GETIMPORT                        R2 K2 [rawget]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["displayName"] ; [+19]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+19]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["displayName"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+14]
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 0
       17 SETTABLEKS                       R4 R3 K0 ["displayName"]
       19 RETURN                           R0 0
       20 FASTCALL3                        RAWSET R0 R1 R2
       22 MOVE                             R4 R0
       23 MOVE                             R5 R1
       24 MOVE                             R6 R2
       25 GETIMPORT                        R3 K5 [rawset]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+84]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+80]
        8 LOADK                            R3 K1 [""]
        9 JUMPIFEQKNIL                     R0 ; [+16]
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K3 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+12]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K5 ["keys"]
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 LENGTH                           R4 R5
       24 JUMPIFNOTEQKN                    R4 K6 [0] ; [+4]
       26 MOVE                             R4 R3
       27 LOADK                            R5 K7 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       28 CONCAT                           R3 R4 R5
       29 LOADNIL                          R4
       30 JUMPIFNOTEQKNIL                  R0 ; [+3]
       32 LOADK                            R4 K8 ["nil"]
       33 JUMP                             ; [+47]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K9 ["isArray"]
       37 MOVE                             R6 R0
       38 CALL                             R5 1 1
       39 JUMPIFNOT                        R5 ; [+2]
       40 LOADK                            R4 K10 ["array"]
       41 JUMP                             ; [+39]
       42 JUMPIFEQKNIL                     R0 ; [+25]
       44 FASTCALL1                        TYPEOF R0 ; [+3]
       45 MOVE                             R6 R0
       46 GETIMPORT                        R5 K3 [typeof]
       48 CALL                             R5 1 1
       49 JUMPIFNOTEQKS                    R5 K4 ["table"] ; [+18]
       51 GETTABLEKS                       R5 R0 K11 ["$$typeof"]
       53 GETUPVAL                         R6 4
       54 JUMPIFNOTEQ                      R5 R6 ; [+13]
       56 GETIMPORT                        R5 K14 [string.format]
       58 LOADK                            R6 K15 ["<%s />"]
       59 GETUPVAL                         R8 5
       60 GETTABLEKS                       R9 R0 K17 ["type"]
       62 CALL                             R8 1 1
       63 ORK                              R7 R8 K16 ["UNKNOWN"]
       64 CALL                             R5 2 1
       65 MOVE                             R4 R5
       66 LOADK                            R3 K18 [" Did you accidentally export a JSX literal or Element instead of a component?"]
       67 JUMP                             ; [+13]
       68 FASTCALL1                        TYPEOF R0 ; [+3]
       69 MOVE                             R6 R0
       70 GETIMPORT                        R5 K3 [typeof]
       72 CALL                             R5 1 1
       73 MOVE                             R4 R5
       74 JUMPIFEQKNIL                     R0 ; [+6]
       76 LOADK                            R5 K19 ["\n"]
       77 GETUPVAL                         R6 6
       78 MOVE                             R7 R0
       79 CALL                             R6 1 1
       80 CONCAT                           R3 R5 R6
       81 GETUPVAL                         R6 7
       82 GETTABLEKS                       R5 R6 K20 ["error"]
       84 LOADK                            R6 K21 ["memo: The first argument must be a component. Instead received: `%s`.%s"]
       85 MOVE                             R7 R4
       86 MOVE                             R8 R3
       87 CALL                             R5 3 0
       88 NEWTABLE                         R2 4 0
       90 GETUPVAL                         R3 8
       91 SETTABLEKS                       R3 R2 K11 ["$$typeof"]
       93 SETTABLEKS                       R0 R2 K17 ["type"]
       95 ORK                              R3 R1 K22 []
       96 SETTABLEKS                       R3 R2 K23 ["compare"]
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R3 R4 K0 ["__DEV__"]
      101 JUMPIFNOT                        R3 ; [+18]
      102 LOADNIL                          R3
      103 DUPTABLE                         R6 K26 [{"__index", "__newindex"}]
      104 NEWCLOSURE                       R7 P0
      105 CAPTURE                          REF R3
      106 SETTABLEKS                       R7 R6 K24 ["__index"]
      108 NEWCLOSURE                       R7 P1
      109 CAPTURE                          REF R3
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R7 R6 K25 ["__newindex"]
      113 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      115 MOVE                             R5 R2
      116 GETIMPORT                        R4 K28 [setmetatable]
      118 CALL                             R4 2 0
      119 CLOSEUPVALS                      R3
      120 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["console"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["LuauPolyfill"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K9 ["Array"]
       26 GETTABLEKS                       R6 R4 K10 ["Object"]
       28 GETTABLEKS                       R8 R4 K11 ["util"]
       30 GETTABLEKS                       R7 R8 K12 ["inspect"]
       32 GETTABLEKS                       R8 R2 K13 ["ReactSymbols"]
       34 GETTABLEKS                       R9 R8 K14 ["REACT_MEMO_TYPE"]
       36 GETTABLEKS                       R10 R8 K15 ["REACT_ELEMENT_TYPE"]
       38 GETTABLEKS                       R11 R2 K16 ["isValidElementType"]
       40 GETTABLEKS                       R12 R2 K17 ["getComponentName"]
       42 NEWTABLE                         R13 1 0
       44 DUPCLOSURE                       R14 K18 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R11
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R9
       54 SETTABLEKS                       R14 R13 K19 ["memo"]
       56 RETURN                           R13 1
