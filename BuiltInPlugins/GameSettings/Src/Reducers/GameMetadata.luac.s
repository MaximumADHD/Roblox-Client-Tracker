PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"gameId"}]
        7 GETTABLEKS                       R5 R1 K2 ["gameId"]
        9 SETTABLEKS                       R5 R4 K2 ["gameId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"game"}]
        7 GETTABLEKS                       R5 R1 K2 ["game"]
        9 SETTABLEKS                       R5 R4 K2 ["game"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K12 [{["game"] = , ["gameId"] = }]
       26 DUPTABLE                         R5 K16 [{"ResetStore", "SetGameId", "SetGame"}]
       27 DUPCLOSURE                       R6 K17 [PROTO_0]
       28 SETTABLEKS                       R6 R5 K13 ["ResetStore"]
       30 DUPCLOSURE                       R6 K18 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K14 ["SetGameId"]
       34 DUPCLOSURE                       R6 K19 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R6 R5 K15 ["SetGame"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1
