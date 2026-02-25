PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"networkError", "networkErrorAction"}]
        7 GETTABLEKS                       R5 R1 K5 ["response"]
        9 SETTABLEKS                       R5 R4 K2 ["networkError"]
       11 GETTABLEKS                       R5 R1 K3 ["networkErrorAction"]
       13 SETTABLEKS                       R5 R4 K3 ["networkErrorAction"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Actions"]
       27 GETTABLEKS                       R5 R6 K10 ["NetworkError"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K13 [{"networkError", "networkErrorAction"}]
       31 LOADNIL                          R6
       32 SETTABLEKS                       R6 R5 K11 ["networkError"]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K12 ["networkErrorAction"]
       37 GETTABLEKS                       R6 R3 K14 ["createReducer"]
       39 MOVE                             R7 R5
       40 NEWTABLE                         R8 1 0
       42 GETTABLEKS                       R9 R4 K15 ["name"]
       44 DUPCLOSURE                       R10 K16 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 SETTABLE                         R10 R8 R9
       47 CALL                             R6 2 -1
       48 RETURN                           R6 -1
