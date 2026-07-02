PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"PlayerAcceptance"}]
        7 GETTABLEKS                       R5 R1 K4 ["playerAcceptance"]
        9 SETTABLEKS                       R5 R4 K2 ["PlayerAcceptance"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{["PlayerAcceptance"] = False}]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K10 [{["PlayerAcceptance"] = False}]
       24 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       26 MOVE                             R5 R3
       27 DUPTABLE                         R6 K14 [{"SetPlayerAcceptance", "ResetInfo"}]
       28 DUPCLOSURE                       R7 K15 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R7 R6 K12 ["SetPlayerAcceptance"]
       32 DUPCLOSURE                       R7 K16 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R7 R6 K13 ["ResetInfo"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1
