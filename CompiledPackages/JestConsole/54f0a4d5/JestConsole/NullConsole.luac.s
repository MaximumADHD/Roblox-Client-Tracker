PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 1
        6 GETUPVAL                         R2 1
        7 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        9 GETIMPORT                        R0 K2 [setmetatable]
       11 CALL                             R0 2 1
       12 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R2 K1 [script]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETIMPORT                        R3 K4 [require]
        9 GETTABLEKS                       R4 R1 K5 ["CustomConsole"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K6 ["default"]
       14 NEWTABLE                         R4 16 0
       16 DUPTABLE                         R5 K8 [{"__index"}]
       17 SETTABLEKS                       R2 R5 K7 ["__index"]
       19 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       21 GETIMPORT                        R3 K10 [setmetatable]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R3 K7 ["__index"]
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K12 ["new"]
       31 DUPCLOSURE                       R4 K13 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K14 ["assert"]
       34 DUPCLOSURE                       R4 K15 [PROTO_2]
       35 SETTABLEKS                       R4 R3 K16 ["debug"]
       37 DUPCLOSURE                       R4 K17 [PROTO_3]
       38 SETTABLEKS                       R4 R3 K18 ["dir"]
       40 DUPCLOSURE                       R4 K19 [PROTO_4]
       41 SETTABLEKS                       R4 R3 K20 ["error"]
       43 DUPCLOSURE                       R4 K21 [PROTO_5]
       44 SETTABLEKS                       R4 R3 K22 ["info"]
       46 DUPCLOSURE                       R4 K23 [PROTO_6]
       47 SETTABLEKS                       R4 R3 K24 ["log"]
       49 DUPCLOSURE                       R4 K25 [PROTO_7]
       50 SETTABLEKS                       R4 R3 K26 ["time"]
       52 DUPCLOSURE                       R4 K27 [PROTO_8]
       53 SETTABLEKS                       R4 R3 K28 ["timeEnd"]
       55 DUPCLOSURE                       R4 K29 [PROTO_9]
       56 SETTABLEKS                       R4 R3 K30 ["timeLog"]
       58 DUPCLOSURE                       R4 K31 [PROTO_10]
       59 SETTABLEKS                       R4 R3 K32 ["trace"]
       61 DUPCLOSURE                       R4 K33 [PROTO_11]
       62 SETTABLEKS                       R4 R3 K34 ["warn"]
       64 DUPCLOSURE                       R4 K35 [PROTO_12]
       65 SETTABLEKS                       R4 R3 K36 ["group"]
       67 DUPCLOSURE                       R4 K37 [PROTO_13]
       68 SETTABLEKS                       R4 R3 K38 ["groupCollapsed"]
       70 DUPCLOSURE                       R4 K39 [PROTO_14]
       71 SETTABLEKS                       R4 R3 K40 ["groupEnd"]
       73 SETTABLEKS                       R3 R0 K6 ["default"]
       75 RETURN                           R0 1
