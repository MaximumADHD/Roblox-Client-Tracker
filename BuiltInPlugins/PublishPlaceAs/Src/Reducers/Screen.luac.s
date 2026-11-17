PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
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
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Resources"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K12 [{"screen"}]
       33 GETTABLEKS                       R5 R3 K13 ["SCREENS"]
       35 GETTABLEKS                       R5 R5 K14 ["CREATE_NEW_GAME"]
       37 SETTABLEKS                       R5 R4 K11 ["screen"]
       39 GETTABLEKS                       R5 R1 K15 ["createReducer"]
       41 MOVE                             R6 R4
       42 DUPTABLE                         R7 K18 [{"SetScreen", "ResetInfo"}]
       43 DUPCLOSURE                       R8 K19 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R8 R7 K16 ["SetScreen"]
       47 DUPCLOSURE                       R8 K20 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R8 R7 K17 ["ResetInfo"]
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1
