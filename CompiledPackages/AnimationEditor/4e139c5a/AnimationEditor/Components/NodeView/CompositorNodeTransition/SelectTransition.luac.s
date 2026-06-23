PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["View"]
       13 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder"}]
       14 LOADK                            R5 K7 ["col auto-y gap-small size-full-700"]
       15 SETTABLEKS                       R5 R4 K4 ["tag"]
       17 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       21 DUPTABLE                         R5 K10 [{"Transition_Duration", "Transition_Curve"}]
       22 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       24 DUPTABLE                         R7 K16 [{"Name", "Label", "Type", "Value"}]
       25 LOADK                            R8 K17 ["Duration"]
       26 SETTABLEKS                       R8 R7 K12 ["Name"]
       28 LOADK                            R8 K18 ["Length"]
       29 SETTABLEKS                       R8 R7 K13 ["Label"]
       31 LOADK                            R8 K19 ["Timestamp"]
       32 SETTABLEKS                       R8 R7 K14 ["Type"]
       34 GETTABLEKS                       R8 R0 K20 ["Transition"]
       36 JUMPIFNOT                        R8 ; [+4]
       37 GETTABLEKS                       R8 R0 K20 ["Transition"]
       39 GETTABLEKS                       R8 R8 K17 ["Duration"]
       41 SETTABLEKS                       R8 R7 K15 ["Value"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       46 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       48 DUPTABLE                         R7 K22 [{"Name", "Label", "Type", "Choices", "Value"}]
       49 LOADK                            R8 K23 ["Curve"]
       50 SETTABLEKS                       R8 R7 K12 ["Name"]
       52 LOADK                            R8 K23 ["Curve"]
       53 SETTABLEKS                       R8 R7 K13 ["Label"]
       55 LOADK                            R8 K24 ["Enum.PoseEasingStyle"]
       56 SETTABLEKS                       R8 R7 K14 ["Type"]
       58 NEWTABLE                         R8 2 0
       60 GETIMPORT                        R9 K28 [Enum.PoseEasingStyle.Linear]
       62 LOADK                            R10 K27 ["Linear"]
       63 SETTABLE                         R10 R8 R9
       64 GETIMPORT                        R9 K30 [Enum.PoseEasingStyle.CubicV2]
       66 LOADK                            R10 K31 ["In/Out"]
       67 SETTABLE                         R10 R8 R9
       68 SETTABLEKS                       R8 R7 K21 ["Choices"]
       70 GETTABLEKS                       R8 R0 K20 ["Transition"]
       72 JUMPIFNOT                        R8 ; [+4]
       73 GETTABLEKS                       R8 R0 K20 ["Transition"]
       75 GETTABLEKS                       R8 R8 K23 ["Curve"]
       77 SETTABLEKS                       R8 R7 K15 ["Value"]
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K12 ["CompositorNodeTransition"]
       36 GETTABLEKS                       R5 R5 K13 ["TransitionPanel"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
