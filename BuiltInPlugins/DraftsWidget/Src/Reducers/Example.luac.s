PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["message"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"message"}]
        9 SETTABLEKS                       R2 R5 K0 ["message"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

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
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K11 [{["message"] = }]
       26 DUPTABLE                         R5 K13 [{"ExampleAction"}]
       27 DUPCLOSURE                       R6 K14 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R5 K12 ["ExampleAction"]
       31 CALL                             R3 2 1
       32 RETURN                           R3 1
