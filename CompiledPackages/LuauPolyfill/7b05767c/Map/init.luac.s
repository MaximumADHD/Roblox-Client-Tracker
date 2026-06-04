PROTO_0:
        0 LOADNIL                          R1
        1 NEWTABLE                         R2 0 0
        3 JUMPIFEQKNIL                     R0 ; [+77]
        5 GETIMPORT                        R3 K1 [_G]
        7 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        9 JUMPIFNOT                        R3 ; [+31]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K4 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+17]
       17 LENGTH                           R4 R0
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+21]
       21 GETTABLEN                        R5 R0 1
       22 FASTCALL1                        TYPEOF R5 ; [+2]
       23 GETIMPORT                        R4 K4 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFEQKS                       R4 K5 ["table"] ; [+14]
       28 GETIMPORT                        R4 K7 [error]
       30 LOADK                            R5 K8 ["cannot create Map from {K, V} form, it must be { {K, V}... }"]
       31 CALL                             R4 1 0
       32 JUMP                             ; [+8]
       33 GETIMPORT                        R4 K7 [error]
       35 LOADK                            R5 K9 ["cannot create array from value of type `%s`"]
       36 MOVE                             R7 R3
       37 NAMECALL                         R5 R5 K10 ["format"]
       39 CALL                             R5 2 -1
       40 CALL                             R4 -1 0
       41 GETIMPORT                        R3 K12 [table.clone]
       43 MOVE                             R4 R0
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K14 [table.create]
       47 LENGTH                           R5 R3
       48 CALL                             R4 1 1
       49 MOVE                             R1 R4
       50 MOVE                             R4 R3
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 GETTABLEN                        R9 R8 1
       55 GETIMPORT                        R10 K1 [_G]
       57 GETTABLEKS                       R10 R10 K2 ["__DEV__"]
       59 JUMPIFNOT                        R10 ; [+6]
       60 JUMPIFNOTEQKNIL                  R9 ; [+5]
       62 GETIMPORT                        R10 K7 [error]
       64 LOADK                            R11 K15 ["cannot create Map from a table that isn't an array."]
       65 CALL                             R10 1 0
       66 GETTABLEN                        R10 R8 2
       67 GETTABLE                         R11 R2 R9
       68 JUMPIFNOTEQKNIL                  R11 ; [+8]
       70 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       72 MOVE                             R12 R1
       73 MOVE                             R13 R9
       74 GETIMPORT                        R11 K17 [table.insert]
       76 CALL                             R11 2 0
       77 SETTABLE                         R10 R2 R9
       78 FORGLOOP                         R4 2 ; [-25]
       80 JUMP                             ; [+2]
       81 NEWTABLE                         R1 0 0
       83 DUPTABLE                         R4 K21 [{"size", "_map", "_array"}]
       84 LENGTH                           R5 R1
       85 SETTABLEKS                       R5 R4 K18 ["size"]
       87 SETTABLEKS                       R2 R4 K19 ["_map"]
       89 SETTABLEKS                       R1 R4 K20 ["_array"]
       91 GETUPVAL                         R5 0
       92 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       94 GETIMPORT                        R3 K23 [setmetatable]
       96 CALL                             R3 2 1
       97 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+14]
        5 GETTABLEKS                       R4 R0 K2 ["size"]
        7 ADDK                             R3 R4 K1 [1]
        8 SETTABLEKS                       R3 R0 K2 ["size"]
       10 GETTABLEKS                       R4 R0 K3 ["_array"]
       12 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K6 [table.insert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R0 K0 ["_map"]
       20 SETTABLE                         R2 R3 R1
       21 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [table]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R0 K2 ["size"]
        5 GETTABLEKS                       R2 R1 K3 ["clear"]
        7 GETTABLEKS                       R3 R0 K4 ["_map"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K3 ["clear"]
       12 GETTABLEKS                       R3 R0 K5 ["_array"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["size"]
        9 SUBK                             R2 R3 K1 [1]
       10 SETTABLEKS                       R2 R0 K2 ["size"]
       12 GETTABLEKS                       R2 R0 K0 ["_map"]
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R1
       16 GETIMPORT                        R2 K5 [table.find]
       18 GETTABLEKS                       R3 R0 K6 ["_array"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETIMPORT                        R3 K8 [table.remove]
       25 GETTABLEKS                       R4 R0 K6 ["_array"]
       27 MOVE                             R5 R2
       28 CALL                             R3 2 0
       29 LOADB                            R3 1
       30 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_map"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 0
       12 CALL                             R2 4 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 0
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+11]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["function"] ; [+5]
       12 GETIMPORT                        R3 K7 [error]
       14 LOADK                            R4 K8 ["callback is not a function"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R0 K9 ["_array"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_array"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_map"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_array"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R1 0 2
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["_map"]
        6 GETTABLE                         R3 R4 R0
        7 SETLIST                          R1 R2 2 [1]
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_array"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R1 K4 [warn]
        7 GETIMPORT                        R2 K7 [debug.traceback]
        9 LOADK                            R3 K8 ["`for _,_ in myMap:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in myMap do` instead\n"]
       10 LOADN                            R4 2
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 GETIMPORT                        R1 K10 [ipairs]
       15 NAMECALL                         R2 R0 K11 ["entries"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 -1
       19 RETURN                           R1 -1

PROTO_14:
        0 GETIMPORT                        R1 K1 [next]
        2 NAMECALL                         R2 R0 K2 ["entries"]
        4 CALL                             R2 1 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        RAWGET R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawget]
        6 CALL                             R2 2 1
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["get"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_16:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["set"]
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Array"]
        9 GETTABLEKS                       R2 R2 K6 ["forEach"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Array"]
       16 GETTABLEKS                       R3 R3 K7 ["map"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["types"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 0 0
       26 DUPCLOSURE                       R5 K9 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R5 R4 K10 ["new"]
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 SETTABLEKS                       R5 R4 K12 ["set"]
       33 DUPCLOSURE                       R5 K13 [PROTO_2]
       34 SETTABLEKS                       R5 R4 K14 ["get"]
       36 DUPCLOSURE                       R5 K15 [PROTO_3]
       37 SETTABLEKS                       R5 R4 K16 ["clear"]
       39 DUPCLOSURE                       R5 K17 [PROTO_4]
       40 SETTABLEKS                       R5 R4 K18 ["delete"]
       42 DUPCLOSURE                       R5 K19 [PROTO_6]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R5 R4 K6 ["forEach"]
       46 DUPCLOSURE                       R5 K20 [PROTO_7]
       47 SETTABLEKS                       R5 R4 K21 ["has"]
       49 DUPCLOSURE                       R5 K22 [PROTO_8]
       50 SETTABLEKS                       R5 R4 K23 ["keys"]
       52 DUPCLOSURE                       R5 K24 [PROTO_10]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R4 K25 ["values"]
       56 DUPCLOSURE                       R5 K26 [PROTO_12]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R5 R4 K27 ["entries"]
       60 DUPCLOSURE                       R5 K28 [PROTO_13]
       61 SETTABLEKS                       R5 R4 K29 ["ipairs"]
       63 DUPCLOSURE                       R5 K30 [PROTO_14]
       64 SETTABLEKS                       R5 R4 K31 ["__iter"]
       66 DUPCLOSURE                       R5 K32 [PROTO_15]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R5 R4 K33 ["__index"]
       70 DUPCLOSURE                       R5 K34 [PROTO_16]
       71 SETTABLEKS                       R5 R4 K35 ["__newindex"]
       73 RETURN                           R4 1
