PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 JUMPIFEQKNIL                     R0 ; [+70]
        6 LOADNIL                          R3
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K1 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+23]
       14 LENGTH                           R5 R0
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+12]
       18 GETTABLEN                        R6 R0 1
       19 FASTCALL1                        TYPEOF R6 ; [+2]
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFEQKS                       R5 K2 ["table"] ; [+5]
       25 GETIMPORT                        R5 K4 [error]
       27 LOADK                            R6 K5 ["cannot create Map from {K, V} form, it must be { {K, V}... }"]
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K6 ["from"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 MOVE                             R3 R5
       35 JUMP                             ; [+8]
       36 GETIMPORT                        R5 K4 [error]
       38 LOADK                            R6 K7 ["cannot create array from value of type `%s`"]
       39 MOVE                             R8 R4
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 -1
       43 CALL                             R5 -1 0
       44 GETIMPORT                        R5 K10 [ipairs]
       46 MOVE                             R6 R3
       47 CALL                             R5 1 3
       48 FORGPREP_INEXT                   R5
       49 GETTABLEN                        R10 R9 1
       50 GETIMPORT                        R11 K12 [_G]
       52 GETTABLEKS                       R11 R11 K13 ["__DEV__"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 JUMPIFNOTEQKNIL                  R10 ; [+5]
       57 GETIMPORT                        R11 K4 [error]
       59 LOADK                            R12 K14 ["cannot create Map from a table that isn't an array."]
       60 CALL                             R11 1 0
       61 GETTABLEN                        R11 R9 2
       62 GETTABLE                         R12 R2 R10
       63 JUMPIFNOTEQKNIL                  R12 ; [+8]
       65 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       67 MOVE                             R13 R1
       68 MOVE                             R14 R10
       69 GETIMPORT                        R12 K16 [table.insert]
       71 CALL                             R12 2 0
       72 SETTABLE                         R11 R2 R10
       73 FORGLOOP                         R5 2 [inext] ; [-25]
       75 DUPTABLE                         R4 K20 [{"size", "_map", "_array"}]
       76 LENGTH                           R5 R1
       77 SETTABLEKS                       R5 R4 K17 ["size"]
       79 SETTABLEKS                       R2 R4 K18 ["_map"]
       81 SETTABLEKS                       R1 R4 K19 ["_array"]
       83 GETUPVAL                         R5 1
       84 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       86 GETIMPORT                        R3 K22 [setmetatable]
       88 CALL                             R3 2 1
       89 RETURN                           R3 1

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
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R4 K5 ["callback is not a function"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K6 ["forEach"]
       14 GETTABLEKS                       R4 R0 K7 ["_array"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETTABLEKS                       R2 R0 K1 ["_array"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETTABLEKS                       R2 R0 K1 ["_array"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 NAMECALL                         R2 R0 K2 ["entries"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_14:
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

PROTO_15:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["set"]
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 JUMPIF                           R1 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["new"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["entries"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 -1
       15 CALL                             R1 -1 1
       16 RETURN                           R1 1

PROTO_17:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 SETTABLE                         R3 R0 R2
        3 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["reduce"]
        9 NAMECALL                         R2 R0 K1 ["entries"]
       11 CALL                             R2 1 1
       12 DUPCLOSURE                       R3 K2 [PROTO_17]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Array"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Object"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["instanceof"]
       19 CALL                             R3 1 1
       20 NEWTABLE                         R4 16 0
       22 DUPCLOSURE                       R5 K8 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R5 R4 K9 ["new"]
       27 DUPCLOSURE                       R5 K10 [PROTO_1]
       28 SETTABLEKS                       R5 R4 K11 ["set"]
       30 DUPCLOSURE                       R5 K12 [PROTO_2]
       31 SETTABLEKS                       R5 R4 K13 ["get"]
       33 DUPCLOSURE                       R5 K14 [PROTO_3]
       34 SETTABLEKS                       R5 R4 K15 ["clear"]
       36 DUPCLOSURE                       R5 K16 [PROTO_4]
       37 SETTABLEKS                       R5 R4 K17 ["delete"]
       39 DUPCLOSURE                       R5 K18 [PROTO_6]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R5 R4 K19 ["forEach"]
       43 DUPCLOSURE                       R5 K20 [PROTO_7]
       44 SETTABLEKS                       R5 R4 K21 ["has"]
       46 DUPCLOSURE                       R5 K22 [PROTO_8]
       47 SETTABLEKS                       R5 R4 K23 ["keys"]
       49 DUPCLOSURE                       R5 K24 [PROTO_10]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R5 R4 K25 ["values"]
       53 DUPCLOSURE                       R5 K26 [PROTO_12]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R5 R4 K27 ["entries"]
       57 DUPCLOSURE                       R5 K28 [PROTO_13]
       58 SETTABLEKS                       R5 R4 K29 ["ipairs"]
       60 DUPCLOSURE                       R5 K30 [PROTO_14]
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R5 R4 K31 ["__index"]
       64 DUPCLOSURE                       R5 K32 [PROTO_15]
       65 SETTABLEKS                       R5 R4 K33 ["__newindex"]
       67 DUPCLOSURE                       R5 K34 [PROTO_16]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R6 K35 [PROTO_18]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R1
       75 DUPTABLE                         R7 K39 [{"Map", "coerceToMap", "coerceToTable"}]
       76 SETTABLEKS                       R4 R7 K36 ["Map"]
       78 SETTABLEKS                       R5 R7 K37 ["coerceToMap"]
       80 SETTABLEKS                       R6 R7 K38 ["coerceToTable"]
       82 RETURN                           R7 1
