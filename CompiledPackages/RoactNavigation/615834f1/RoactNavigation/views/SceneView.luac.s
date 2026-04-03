PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["screenProps"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["component"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["navigation"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["createElement"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K5 ["Provider"]
       18 DUPTABLE                         R6 K6 [{"navigation"}]
       19 SETTABLEKS                       R3 R6 K3 ["navigation"]
       21 DUPTABLE                         R7 K8 [{"Scene"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["createElement"]
       25 MOVE                             R9 R2
       26 DUPTABLE                         R10 K9 [{"screenProps", "navigation"}]
       27 SETTABLEKS                       R1 R10 K1 ["screenProps"]
       29 SETTABLEKS                       R3 R10 K3 ["navigation"]
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K7 ["Scene"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R3 R4 K4 ["Parent"]
       20 GETTABLEKS                       R2 R3 K6 ["AppNavigationContext"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R0 K7 ["PureComponent"]
       25 LOADK                            R4 K8 ["SceneView"]
       26 NAMECALL                         R2 R2 K9 ["extend"]
       28 CALL                             R2 2 1
       29 DUPCLOSURE                       R3 K10 [PROTO_0]
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R3 R2 K11 ["render"]
       34 RETURN                           R2 1
