PROTO_0:
        0 LOADN                            R1 0
        1 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 RETURN                           R3 1

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
        0 DUPTABLE                         R1 K1 [{"Disconnect"}]
        1 DUPCLOSURE                       R2 K2 [PROTO_6]
        2 SETTABLEKS                       R2 R1 K0 ["Disconnect"]
        4 RETURN                           R1 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"Disconnect"}]
        1 DUPCLOSURE                       R2 K2 [PROTO_8]
        2 SETTABLEKS                       R2 R1 K0 ["Disconnect"]
        4 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R1 K8 [{"UpdateQueryAsync", "GetResultsAsync", "OpenScriptToMatchAsync", "ReplaceAsync", "ReplaceAllAsync", "SetColorsAsync", "ResultsAvailable", "FindComplete"}]
        1 DUPCLOSURE                       R2 K9 [PROTO_0]
        2 SETTABLEKS                       R2 R1 K0 ["UpdateQueryAsync"]
        4 DUPCLOSURE                       R2 K10 [PROTO_1]
        5 SETTABLEKS                       R2 R1 K1 ["GetResultsAsync"]
        7 DUPCLOSURE                       R2 K11 [PROTO_2]
        8 SETTABLEKS                       R2 R1 K2 ["OpenScriptToMatchAsync"]
       10 DUPCLOSURE                       R2 K12 [PROTO_3]
       11 SETTABLEKS                       R2 R1 K3 ["ReplaceAsync"]
       13 DUPCLOSURE                       R2 K13 [PROTO_4]
       14 SETTABLEKS                       R2 R1 K4 ["ReplaceAllAsync"]
       16 DUPCLOSURE                       R2 K14 [PROTO_5]
       17 SETTABLEKS                       R2 R1 K5 ["SetColorsAsync"]
       19 DUPTABLE                         R2 K16 [{"Connect"}]
       20 DUPCLOSURE                       R3 K17 [PROTO_7]
       21 SETTABLEKS                       R3 R2 K15 ["Connect"]
       23 SETTABLEKS                       R2 R1 K6 ["ResultsAvailable"]
       25 DUPTABLE                         R2 K16 [{"Connect"}]
       26 DUPCLOSURE                       R3 K18 [PROTO_9]
       27 SETTABLEKS                       R3 R2 K15 ["Connect"]
       29 SETTABLEKS                       R2 R1 K7 ["FindComplete"]
       31 DUPTABLE                         R4 K20 [{"__index"}]
       32 GETUPVAL                         R5 0
       33 SETTABLEKS                       R5 R4 K19 ["__index"]
       35 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K22 [setmetatable]
       40 CALL                             R2 2 0
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_10]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1
