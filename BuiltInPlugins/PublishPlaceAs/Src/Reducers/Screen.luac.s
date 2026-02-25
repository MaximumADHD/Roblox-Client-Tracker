PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"activationFailed"}]
        7 GETTABLEKS                       R5 R1 K4 ["isFailed"]
        9 SETTABLEKS                       R5 R4 K2 ["activationFailed"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K13 [{"screen", "activationFailed"}]
       33 GETTABLEKS                       R6 R3 K14 ["SCREENS"]
       35 GETTABLEKS                       R5 R6 K15 ["CREATE_NEW_GAME"]
       37 SETTABLEKS                       R5 R4 K11 ["screen"]
       39 LOADB                            R5 0
       40 SETTABLEKS                       R5 R4 K12 ["activationFailed"]
       42 GETTABLEKS                       R5 R1 K16 ["createReducer"]
       44 MOVE                             R6 R4
       45 DUPTABLE                         R7 K20 [{"SetScreen", "ResetInfo", "SetActivationFailed"}]
       46 DUPCLOSURE                       R8 K21 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R7 K17 ["SetScreen"]
       50 DUPCLOSURE                       R8 K22 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R7 K18 ["ResetInfo"]
       54 DUPCLOSURE                       R8 K23 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R8 R7 K19 ["SetActivationFailed"]
       58 CALL                             R5 2 -1
       59 RETURN                           R5 -1
