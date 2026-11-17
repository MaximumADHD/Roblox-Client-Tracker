PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K1 ["props"]
        7 DUPTABLE                         R5 K5 [{["Show2D"] = True, ["ShowTrail"] = True}]
        8 CALL                             R3 2 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["join"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["BlendBase"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["Blend2DVisualization"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R6 R5 K16 ["render"]
       44 RETURN                           R5 1
