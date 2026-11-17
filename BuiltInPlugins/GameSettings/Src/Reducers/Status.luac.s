PROTO_0:
        0 GETUPVAL                         R2 0
        1 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["currentStatus"]
        2 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["CurrentStatus"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K10 ["Closed"]
       27 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       29 MOVE                             R5 R3
       30 DUPTABLE                         R6 K14 [{"ResetStore", "SetCurrentStatus"}]
       31 DUPCLOSURE                       R7 K15 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R7 R6 K12 ["ResetStore"]
       35 DUPCLOSURE                       R7 K16 [PROTO_1]
       36 SETTABLEKS                       R7 R6 K13 ["SetCurrentStatus"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1
