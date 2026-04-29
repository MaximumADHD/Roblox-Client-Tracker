PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LENGTH                           R0 R1
        7 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        9 GETUPVAL                         R0 0
       10 RETURN                           R0 1
       11 NEWTABLE                         R1 0 0
       13 GETVARARGS                       R2 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 GETTABLEN                        R0 R1 1
       17 SETUPVAL                         R0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K1 ["displayName"]
       21 JUMPIFNOTEQKNIL                  R1 ; [+4]
       23 GETUPVAL                         R1 1
       24 SETTABLEKS                       R0 R1 K1 ["displayName"]
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+84]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+80]
        9 LOADK                            R3 K3 [""]
       10 JUMPIFEQKNIL                     R0 ; [+16]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K5 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+12]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K7 ["keys"]
       22 MOVE                             R6 R0
       23 CALL                             R5 1 1
       24 LENGTH                           R4 R5
       25 JUMPIFNOTEQKN                    R4 K8 [0] ; [+4]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K9 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       29 CONCAT                           R3 R4 R5
       30 LOADNIL                          R4
       31 JUMPIFNOTEQKNIL                  R0 ; [+3]
       33 LOADK                            R4 K10 ["nil"]
       34 JUMP                             ; [+47]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K11 ["isArray"]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 1
       40 JUMPIFNOT                        R5 ; [+2]
       41 LOADK                            R4 K12 ["array"]
       42 JUMP                             ; [+39]
       43 JUMPIFEQKNIL                     R0 ; [+25]
       45 FASTCALL1                        TYPEOF R0 ; [+3]
       46 MOVE                             R6 R0
       47 GETIMPORT                        R5 K5 [typeof]
       49 CALL                             R5 1 1
       50 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+18]
       52 GETTABLEKS                       R5 R0 K13 ["$$typeof"]
       54 GETUPVAL                         R6 3
       55 JUMPIFNOTEQ                      R5 R6 ; [+13]
       57 LOADK                            R5 K14 ["<%s />"]
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R9 R0 K16 ["type"]
       61 CALL                             R8 1 1
       62 ORK                              R7 R8 K15 ["UNKNOWN"]
       63 NAMECALL                         R5 R5 K17 ["format"]
       65 CALL                             R5 2 1
       66 MOVE                             R4 R5
       67 LOADK                            R3 K18 [" Did you accidentally export a JSX literal or Element instead of a component?"]
       68 JUMP                             ; [+13]
       69 FASTCALL1                        TYPEOF R0 ; [+3]
       70 MOVE                             R6 R0
       71 GETIMPORT                        R5 K5 [typeof]
       73 CALL                             R5 1 1
       74 MOVE                             R4 R5
       75 JUMPIFEQKNIL                     R0 ; [+6]
       77 LOADK                            R5 K19 ["\n"]
       78 GETUPVAL                         R6 5
       79 MOVE                             R7 R0
       80 CALL                             R6 1 1
       81 CONCAT                           R3 R5 R6
       82 GETUPVAL                         R6 6
       83 GETTABLEKS                       R5 R6 K20 ["error"]
       85 LOADK                            R6 K21 ["memo: The first argument must be a component. Instead received: `%s`.%s"]
       86 MOVE                             R7 R4
       87 MOVE                             R8 R3
       88 CALL                             R5 3 0
       89 NEWTABLE                         R2 4 0
       91 GETUPVAL                         R3 7
       92 SETTABLEKS                       R3 R2 K13 ["$$typeof"]
       94 SETTABLEKS                       R0 R2 K16 ["type"]
       96 ORK                              R3 R1 K22 []
       97 SETTABLEKS                       R3 R2 K23 ["compare"]
       99 GETIMPORT                        R4 K1 [_G]
      101 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
      103 JUMPIFNOT                        R3 ; [+7]
      104 LOADNIL                          R3
      105 NEWCLOSURE                       R4 P0
      106 CAPTURE                          REF R3
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R4 R2 K24 ["displayName"]
      110 CLOSEUPVALS                      R3
      111 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K8 ["Array"]
       21 GETTABLEKS                       R5 R3 K9 ["Object"]
       23 GETTABLEKS                       R7 R3 K10 ["util"]
       25 GETTABLEKS                       R6 R7 K11 ["inspect"]
       27 GETTABLEKS                       R7 R1 K12 ["ReactSymbols"]
       29 GETTABLEKS                       R8 R7 K13 ["REACT_MEMO_TYPE"]
       31 GETTABLEKS                       R9 R7 K14 ["REACT_ELEMENT_TYPE"]
       33 GETTABLEKS                       R10 R1 K15 ["isValidElementType"]
       35 GETTABLEKS                       R11 R1 K16 ["getComponentName"]
       37 NEWTABLE                         R12 1 0
       39 DUPCLOSURE                       R13 K17 [PROTO_1]
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R11
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R8
       48 SETTABLEKS                       R13 R12 K18 ["memo"]
       50 RETURN                           R12 1
