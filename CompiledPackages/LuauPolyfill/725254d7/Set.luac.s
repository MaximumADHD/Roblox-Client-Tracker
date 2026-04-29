PROTO_0:
        0 GETIMPORT                        R1 K1 [next]
        2 GETTABLEKS                       R2 R0 K2 ["_array"]
        4 RETURN                           R1 2

PROTO_1:
        0 LOADK                            R1 K0 ["Set "]
        1 GETTABLEKS                       R3 R0 K1 ["_array"]
        3 LENGTH                           R2 R3
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+13]
        7 MOVE                             R2 R1
        8 LOADK                            R3 K2 ["("]
        9 GETTABLEKS                       R8 R0 K1 ["_array"]
       11 LENGTH                           R7 R8
       12 FASTCALL1                        TOSTRING R7 ; [+2]
       13 GETIMPORT                        R6 K4 [tostring]
       15 CALL                             R6 1 1
       16 MOVE                             R4 R6
       17 LOADK                            R5 K5 [") "]
       18 CONCAT                           R1 R2 R5
       19 MOVE                             R2 R1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K1 ["_array"]
       23 CALL                             R3 1 1
       24 CONCAT                           R1 R2 R3
       25 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 NEWTABLE                         R2 0 0
        3 JUMPIFEQKNIL                     R0 ; [+96]
        5 LOADNIL                          R3
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K1 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+37]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+6]
       17 GETIMPORT                        R4 K4 [table.clone]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 JUMP                             ; [+50]
       23 FASTCALL1                        GETMETATABLE R0 ; [+3]
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K6 [getmetatable]
       27 CALL                             R4 1 1
       28 JUMPIFNOT                        R4 ; [+10]
       29 FASTCALL2K                       RAWGET R4 K7 ; [+5]
       31 MOVE                             R6 R4
       32 LOADK                            R7 K7 ["__iter"]
       33 GETIMPORT                        R5 K9 [rawget]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R3 R0
       38 JUMP                             ; [+34]
       39 GETIMPORT                        R6 K11 [_G]
       41 GETTABLEKS                       R5 R6 K12 ["__DEV__"]
       43 JUMPIFNOT                        R5 ; [+29]
       44 GETIMPORT                        R5 K14 [error]
       46 LOADK                            R6 K15 ["cannot create array from an object-like table"]
       47 CALL                             R5 1 0
       48 JUMP                             ; [+24]
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R5 R0
       51 GETIMPORT                        R4 K1 [typeof]
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKS                    R4 K16 ["string"] ; [+6]
       56 GETUPVAL                         R4 1
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 MOVE                             R3 R4
       60 JUMP                             ; [+12]
       61 GETIMPORT                        R4 K14 [error]
       63 LOADK                            R5 K17 ["cannot create array from value of type `%s`"]
       64 FASTCALL1                        TYPEOF R0 ; [+3]
       65 MOVE                             R8 R0
       66 GETIMPORT                        R7 K1 [typeof]
       68 CALL                             R7 1 1
       69 NAMECALL                         R5 R5 K18 ["format"]
       71 CALL                             R5 2 -1
       72 CALL                             R4 -1 0
       73 JUMPIFNOT                        R3 ; [+23]
       74 GETIMPORT                        R4 K20 [table.create]
       76 LENGTH                           R5 R3
       77 CALL                             R4 1 1
       78 MOVE                             R1 R4
       79 MOVE                             R4 R3
       80 LOADNIL                          R5
       81 LOADNIL                          R6
       82 FORGPREP                         R4
       83 GETTABLE                         R9 R2 R8
       84 JUMPIF                           R9 ; [+9]
       85 LOADB                            R9 1
       86 SETTABLE                         R9 R2 R8
       87 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       89 MOVE                             R10 R1
       90 MOVE                             R11 R8
       91 GETIMPORT                        R9 K22 [table.insert]
       93 CALL                             R9 2 0
       94 FORGLOOP                         R4 2 ; [-12]
       96 JUMP                             ; [+5]
       97 NEWTABLE                         R1 0 0
       99 JUMP                             ; [+2]
      100 NEWTABLE                         R1 0 0
      102 DUPTABLE                         R4 K26 [{"size", "_map", "_array"}]
      103 LENGTH                           R5 R1
      104 SETTABLEKS                       R5 R4 K23 ["size"]
      106 SETTABLEKS                       R2 R4 K24 ["_map"]
      108 SETTABLEKS                       R1 R4 K25 ["_array"]
      110 GETUPVAL                         R5 2
      111 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      113 GETIMPORT                        R3 K28 [setmetatable]
      115 CALL                             R3 2 1
      116 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+17]
        4 GETTABLEKS                       R3 R0 K2 ["size"]
        6 ADDK                             R2 R3 K1 [1]
        7 SETTABLEKS                       R2 R0 K2 ["size"]
        9 GETTABLEKS                       R2 R0 K0 ["_map"]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 GETTABLEKS                       R3 R0 K3 ["_array"]
       15 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K6 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 1

PROTO_4:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["size"]
        3 GETIMPORT                        R1 K3 [table.clear]
        5 GETTABLEKS                       R2 R0 K4 ["_map"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K3 [table.clear]
       10 GETTABLEKS                       R2 R0 K5 ["_array"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K2 ["size"]
        8 SUBK                             R2 R3 K1 [1]
        9 SETTABLEKS                       R2 R0 K2 ["size"]
       11 GETTABLEKS                       R2 R0 K0 ["_map"]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R1
       15 GETIMPORT                        R2 K5 [table.find]
       17 GETTABLEKS                       R3 R0 K6 ["_array"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETIMPORT                        R3 K8 [table.remove]
       24 GETTABLEKS                       R4 R0 K6 ["_array"]
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 2
        8 CALL                             R1 4 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R4 K5 ["callback is not a function"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K6 ["_array"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R1 K4 [warn]
        7 GETIMPORT                        R2 K7 [debug.traceback]
        9 LOADK                            R3 K8 ["`for _,_ in mySet:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in mySet do` instead\n"]
       10 LOADN                            R4 2
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 GETIMPORT                        R1 K10 [ipairs]
       15 GETTABLEKS                       R2 R0 K11 ["_array"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["Array"]
        9 GETTABLEKS                       R2 R3 K6 ["isArray"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R5 R0 K5 ["Array"]
       16 GETTABLEKS                       R4 R5 K7 ["from"]
       18 GETTABLEKS                       R3 R4 K8 ["fromString"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Array"]
       25 GETTABLEKS                       R4 R5 K9 ["forEach"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K10 ["types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K11 ["util"]
       37 GETTABLEKS                       R6 R7 K12 ["inspect"]
       39 CALL                             R5 1 1
       40 DUPTABLE                         R6 K15 [{"__iter", "__tostring"}]
       41 DUPCLOSURE                       R7 K16 [PROTO_0]
       42 SETTABLEKS                       R7 R6 K13 ["__iter"]
       44 DUPCLOSURE                       R7 K17 [PROTO_1]
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R7 R6 K14 ["__tostring"]
       48 SETTABLEKS                       R6 R6 K18 ["__index"]
       50 DUPCLOSURE                       R7 K19 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R7 R6 K20 ["new"]
       56 DUPCLOSURE                       R7 K21 [PROTO_3]
       57 SETTABLEKS                       R7 R6 K22 ["add"]
       59 DUPCLOSURE                       R7 K23 [PROTO_4]
       60 SETTABLEKS                       R7 R6 K24 ["clear"]
       62 DUPCLOSURE                       R7 K25 [PROTO_5]
       63 SETTABLEKS                       R7 R6 K26 ["delete"]
       65 DUPCLOSURE                       R7 K27 [PROTO_7]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R7 R6 K9 ["forEach"]
       69 DUPCLOSURE                       R7 K28 [PROTO_8]
       70 SETTABLEKS                       R7 R6 K29 ["has"]
       72 DUPCLOSURE                       R7 K30 [PROTO_9]
       73 SETTABLEKS                       R7 R6 K31 ["ipairs"]
       75 RETURN                           R6 1
