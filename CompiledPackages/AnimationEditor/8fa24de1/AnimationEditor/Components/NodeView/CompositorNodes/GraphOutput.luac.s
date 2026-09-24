PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K3 [{"Input_Pose"}]
        8 GETTABLEKS                       R3 R1 K4 ["nextInput"]
       10 DUPTABLE                         R4 K7 [{"Input", "Builder"}]
       11 DUPTABLE                         R5 K10 [{["Name"] = "Pose"}]
       12 SETTABLEKS                       R5 R4 K5 ["Input"]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K6 ["Builder"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K2 ["Input_Pose"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K11 ["createElement"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K12 ["CompositorNode"]
       26 GETTABLEKS                       R5 R1 K13 ["nodeProps"]
       28 DUPTABLE                         R6 K15 [{"ContextToolbar"}]
       29 GETTABLEKS                       R7 R1 K16 ["spotlightButton"]
       31 CALL                             R7 0 1
       32 SETTABLEKS                       R7 R6 K14 ["ContextToolbar"]
       34 CALL                             R5 1 1
       35 MOVE                             R6 R2
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R3 K11 ["InputPanelTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["NodeGraphing"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Components"]
       36 GETTABLEKS                       R5 R5 K9 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K10 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R5 K13 ["SimpleInput"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 RETURN                           R5 1
