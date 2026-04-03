PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 GETTABLEKS                       R1 R2 K1 ["state"]
        4 GETTABLEKS                       R4 R1 K2 ["routes"]
        6 GETTABLEKS                       R5 R1 K3 ["index"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R2 R3 K4 ["key"]
       11 GETTABLEKS                       R4 R0 K5 ["descriptors"]
       13 GETTABLE                         R3 R4 R2
       14 GETTABLEKS                       R4 R3 K6 ["getComponent"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K7 ["createElement"]
       20 GETUPVAL                         R6 1
       21 DUPTABLE                         R7 K10 [{"component", "navigation", "screenProps"}]
       22 SETTABLEKS                       R4 R7 K8 ["component"]
       24 GETTABLEKS                       R8 R3 K0 ["navigation"]
       26 SETTABLEKS                       R8 R7 K0 ["navigation"]
       28 GETTABLEKS                       R8 R0 K9 ["screenProps"]
       30 SETTABLEKS                       R8 R7 K9 ["screenProps"]
       32 CALL                             R5 2 -1
       33 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K2 ["Parent"]
       22 GETTABLEKS                       R5 R6 K2 ["Parent"]
       24 GETTABLEKS                       R4 R5 K6 ["SceneView"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K7 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
