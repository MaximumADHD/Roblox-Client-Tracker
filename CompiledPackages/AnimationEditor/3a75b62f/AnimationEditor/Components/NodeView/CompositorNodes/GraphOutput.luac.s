PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"Input_Pose"}]
        6 GETTABLEKS                       R3 R1 K3 ["nextInput"]
        8 DUPTABLE                         R4 K6 [{"Input", "Builder"}]
        9 DUPTABLE                         R5 K8 [{"Name"}]
       10 LOADK                            R6 K9 ["Pose"]
       11 SETTABLEKS                       R6 R5 K7 ["Name"]
       13 SETTABLEKS                       R5 R4 K4 ["Input"]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K5 ["Builder"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K1 ["Input_Pose"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K10 ["createElement"]
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R0
       26 MOVE                             R6 R2
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R4 K11 ["CompositorNode"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["Nodes"]
       31 GETTABLEKS                       R4 R5 K14 ["CompositorNodeUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Components"]
       38 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       40 GETTABLEKS                       R6 R7 K15 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R6 K16 ["InputPanelTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R9 R0 K8 ["Components"]
       49 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       51 GETTABLEKS                       R7 R8 K15 ["CompositorNodeInput"]
       53 GETTABLEKS                       R6 R7 K17 ["SimpleInput"]
       55 CALL                             R5 1 1
       56 DUPCLOSURE                       R6 K18 [PROTO_0]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 RETURN                           R6 1
