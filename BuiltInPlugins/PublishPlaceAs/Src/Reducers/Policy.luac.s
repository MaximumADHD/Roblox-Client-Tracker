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
        6 DUPTABLE                         R4 K3 [{"PlayerAcceptance"}]
        7 LOADB                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["PlayerAcceptance"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

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
       23 DUPTABLE                         R3 K9 [{"PlayerAcceptance"}]
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K8 ["PlayerAcceptance"]
       27 GETTABLEKS                       R4 R1 K10 ["createReducer"]
       29 MOVE                             R5 R3
       30 DUPTABLE                         R6 K13 [{"SetPlayerAcceptance", "ResetInfo"}]
       31 DUPCLOSURE                       R7 K14 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R7 R6 K11 ["SetPlayerAcceptance"]
       35 DUPCLOSURE                       R7 K15 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R7 R6 K12 ["ResetInfo"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1
