PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Actions"]
       27 GETTABLEKS                       R5 R5 K10 ["NetworkError"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K14 [{["networkError"] = , ["networkErrorAction"] = }]
       31 GETTABLEKS                       R6 R3 K15 ["createReducer"]
       33 MOVE                             R7 R5
       34 NEWTABLE                         R8 1 0
       36 GETTABLEKS                       R9 R4 K16 ["name"]
       38 DUPCLOSURE                       R10 K17 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 SETTABLE                         R10 R8 R9
       41 CALL                             R6 2 -1
       42 RETURN                           R6 -1
