PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Utils"]
        9 GETTABLEKS                       R2 R2 K6 ["isCli"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Utils"]
       16 GETTABLEKS                       R3 R3 K7 ["isFtf"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 1 0
       21 DUPTABLE                         R4 K9 [{"__index"}]
       22 DUPCLOSURE                       R5 K10 [PROTO_1]
       23 SETTABLEKS                       R5 R4 K8 ["__index"]
       25 DUPTABLE                         R5 K15 [{"AssetService", "InsertService", "SoundService", "TelemetryService"}]
       26 NEWTABLE                         R7 0 0
       28 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       30 MOVE                             R8 R4
       31 GETIMPORT                        R6 K17 [setmetatable]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K11 ["AssetService"]
       36 NEWTABLE                         R7 0 0
       38 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       40 MOVE                             R8 R4
       41 GETIMPORT                        R6 K17 [setmetatable]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K12 ["InsertService"]
       46 NEWTABLE                         R7 0 0
       48 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       50 MOVE                             R8 R4
       51 GETIMPORT                        R6 K17 [setmetatable]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K13 ["SoundService"]
       56 NEWTABLE                         R7 0 0
       58 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       60 MOVE                             R8 R4
       61 GETIMPORT                        R6 K17 [setmetatable]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K14 ["TelemetryService"]
       66 MOVE                             R6 R1
       67 CALL                             R6 0 1
       68 JUMPIF                           R6 ; [+3]
       69 MOVE                             R6 R2
       70 CALL                             R6 0 1
       71 JUMPIFNOT                        R6 ; [+5]
       72 DUPCLOSURE                       R6 K18 [PROTO_2]
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R6 R3 K19 ["GetService"]
       76 RETURN                           R3 1
       77 DUPCLOSURE                       R6 K20 [PROTO_3]
       78 SETTABLEKS                       R6 R3 K19 ["GetService"]
       80 RETURN                           R3 1
