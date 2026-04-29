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
        3 JUMPIFEQKNIL                     R0 ; [+93]
        5 LOADNIL                          R3
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K1 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+34]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+6]
       17 GETIMPORT                        R4 K4 [table.clone]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 JUMP                             ; [+47]
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
       38 JUMP                             ; [+31]
       39 GETUPVAL                         R5 1
       40 JUMPIFNOT                        R5 ; [+29]
       41 GETIMPORT                        R5 K11 [error]
       43 LOADK                            R6 K12 ["cannot create array from an object-like table"]
       44 CALL                             R5 1 0
       45 JUMP                             ; [+24]
       46 FASTCALL1                        TYPEOF R0 ; [+3]
       47 MOVE                             R5 R0
       48 GETIMPORT                        R4 K1 [typeof]
       50 CALL                             R4 1 1
       51 JUMPIFNOTEQKS                    R4 K13 ["string"] ; [+6]
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R0
       55 CALL                             R4 1 1
       56 MOVE                             R3 R4
       57 JUMP                             ; [+12]
       58 GETIMPORT                        R4 K11 [error]
       60 LOADK                            R5 K14 ["cannot create array from value of type `%s`"]
       61 FASTCALL1                        TYPEOF R0 ; [+3]
       62 MOVE                             R8 R0
       63 GETIMPORT                        R7 K1 [typeof]
       65 CALL                             R7 1 1
       66 NAMECALL                         R5 R5 K15 ["format"]
       68 CALL                             R5 2 -1
       69 CALL                             R4 -1 0
       70 JUMPIFNOT                        R3 ; [+23]
       71 GETIMPORT                        R4 K17 [table.create]
       73 LENGTH                           R5 R3
       74 CALL                             R4 1 1
       75 MOVE                             R1 R4
       76 MOVE                             R4 R3
       77 LOADNIL                          R5
       78 LOADNIL                          R6
       79 FORGPREP                         R4
       80 GETTABLE                         R9 R2 R8
       81 JUMPIF                           R9 ; [+9]
       82 LOADB                            R9 1
       83 SETTABLE                         R9 R2 R8
       84 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       86 MOVE                             R10 R1
       87 MOVE                             R11 R8
       88 GETIMPORT                        R9 K19 [table.insert]
       90 CALL                             R9 2 0
       91 FORGLOOP                         R4 2 ; [-12]
       93 JUMP                             ; [+5]
       94 NEWTABLE                         R1 0 0
       96 JUMP                             ; [+2]
       97 NEWTABLE                         R1 0 0
       99 DUPTABLE                         R4 K23 [{"size", "_map", "_array"}]
      100 LENGTH                           R5 R1
      101 SETTABLEKS                       R5 R4 K20 ["size"]
      103 SETTABLEKS                       R2 R4 K21 ["_map"]
      105 SETTABLEKS                       R1 R4 K22 ["_array"]
      107 GETUPVAL                         R5 3
      108 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      110 GETIMPORT                        R3 K25 [setmetatable]
      112 CALL                             R3 2 1
      113 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETIMPORT                        R1 K1 [warn]
        4 GETIMPORT                        R2 K4 [debug.traceback]
        6 LOADK                            R3 K5 ["`for _,_ in mySet:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in mySet do` instead\n"]
        7 LOADN                            R4 2
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K7 [ipairs]
       12 GETTABLEKS                       R2 R0 K8 ["_array"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R1 R2 K5 ["Parent"]
        9 GETTABLEKS                       R2 R1 K5 ["Parent"]
       11 GETIMPORT                        R3 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["inspect"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K7 [require]
       18 GETTABLEKS                       R6 R1 K9 ["Array"]
       20 GETTABLEKS                       R5 R6 K10 ["isArray"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R7 R1 K9 ["Array"]
       27 GETTABLEKS                       R6 R7 K11 ["forEach"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R9 R1 K9 ["Array"]
       34 GETTABLEKS                       R8 R9 K12 ["from"]
       36 GETTABLEKS                       R7 R8 K13 ["fromString"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R2 K14 ["ES7Types"]
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K17 [{"__iter", "__tostring"}]
       45 DUPCLOSURE                       R9 K18 [PROTO_0]
       46 SETTABLEKS                       R9 R8 K15 ["__iter"]
       48 DUPCLOSURE                       R9 K19 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R9 R8 K16 ["__tostring"]
       52 SETTABLEKS                       R8 R8 K20 ["__index"]
       54 DUPCLOSURE                       R9 K21 [PROTO_2]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R9 R8 K22 ["new"]
       61 DUPCLOSURE                       R9 K23 [PROTO_3]
       62 SETTABLEKS                       R9 R8 K24 ["add"]
       64 DUPCLOSURE                       R9 K25 [PROTO_4]
       65 SETTABLEKS                       R9 R8 K26 ["clear"]
       67 DUPCLOSURE                       R9 K27 [PROTO_5]
       68 SETTABLEKS                       R9 R8 K28 ["delete"]
       70 DUPCLOSURE                       R9 K29 [PROTO_7]
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R9 R8 K11 ["forEach"]
       74 DUPCLOSURE                       R9 K30 [PROTO_8]
       75 SETTABLEKS                       R9 R8 K31 ["has"]
       77 DUPCLOSURE                       R9 K32 [PROTO_9]
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R9 R8 K33 ["ipairs"]
       81 RETURN                           R8 1
