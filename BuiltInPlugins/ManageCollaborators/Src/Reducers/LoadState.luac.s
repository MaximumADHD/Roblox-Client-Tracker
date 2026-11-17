PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CurrentLoadState"}]
        7 GETTABLEKS                       R5 R1 K4 ["loadState"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentLoadState"]
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
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetLoadState"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K11 ["createReducer"]
       34 NEWTABLE                         R6 0 0
       36 NEWTABLE                         R7 2 0
       38 DUPCLOSURE                       R8 K12 [PROTO_0]
       39 SETTABLEKS                       R8 R7 K13 ["ResetStore"]
       41 GETTABLEKS                       R8 R4 K14 ["name"]
       43 DUPCLOSURE                       R9 K15 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 SETTABLE                         R9 R7 R8
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1
