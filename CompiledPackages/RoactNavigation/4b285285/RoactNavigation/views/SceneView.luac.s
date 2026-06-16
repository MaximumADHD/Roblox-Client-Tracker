PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["screenProps"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["component"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["navigation"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["Provider"]
       18 DUPTABLE                         R6 K7 [{"value"}]
       19 SETTABLEKS                       R3 R6 K6 ["value"]
       21 DUPTABLE                         R7 K9 [{"Scene"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["createElement"]
       25 MOVE                             R9 R2
       26 DUPTABLE                         R10 K10 [{"screenProps", "navigation"}]
       27 SETTABLEKS                       R1 R10 K1 ["screenProps"]
       29 SETTABLEKS                       R3 R10 K3 ["navigation"]
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K8 ["Scene"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["Roact"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["NavigationContext"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R3 K7 ["PureComponent"]
       21 LOADK                            R7 K8 ["SceneView"]
       22 NAMECALL                         R5 R5 K9 ["extend"]
       24 CALL                             R5 2 1
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R6 R5 K11 ["render"]
       30 RETURN                           R5 1
