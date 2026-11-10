PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["pluginGui"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["delete"]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R2
       11 GETTABLEKS                       R5 R1 K2 ["duplicate"]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 GETTABLEKS                       R5 R1 K3 ["selectAll"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R5 R1 K4 ["clearSelection"]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R2
       26 GETTABLEKS                       R5 R1 K5 ["zoomExtents"]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R2
       31 GETTABLEKS                       R5 R1 K6 ["copy"]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 GETTABLEKS                       R5 R1 K7 ["cut"]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 1
       40 MOVE                             R4 R2
       41 GETTABLEKS                       R5 R1 K8 ["paste"]
       43 CALL                             R3 2 0
       44 LOADNIL                          R3
       45 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Hooks"]
       11 GETTABLEKS                       R2 R2 K7 ["useNodeStudioActions"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K8 ["useStudioActionOverride"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
