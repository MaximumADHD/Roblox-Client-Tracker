PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["View"]
       11 DUPTABLE                         R4 K5 [{"tag", "LayoutOrder"}]
       12 LOADK                            R5 K6 ["col auto-y gap-small size-full-700"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       17 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       19 DUPTABLE                         R5 K9 [{"Transition_Duration", "Transition_Curve"}]
       20 GETTABLEKS                       R6 R1 K10 ["nextTransitionProperty"]
       22 DUPTABLE                         R7 K15 [{"Name", "Label", "Type", "Value"}]
       23 LOADK                            R8 K16 ["Duration"]
       24 SETTABLEKS                       R8 R7 K11 ["Name"]
       26 LOADK                            R8 K17 ["Length"]
       27 SETTABLEKS                       R8 R7 K12 ["Label"]
       29 LOADK                            R8 K18 ["Timestamp"]
       30 SETTABLEKS                       R8 R7 K13 ["Type"]
       32 GETTABLEKS                       R8 R0 K19 ["Transition"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 GETTABLEKS                       R9 R0 K19 ["Transition"]
       37 GETTABLEKS                       R8 R9 K16 ["Duration"]
       39 SETTABLEKS                       R8 R7 K14 ["Value"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K7 ["Transition_Duration"]
       44 GETTABLEKS                       R6 R1 K10 ["nextTransitionProperty"]
       46 DUPTABLE                         R7 K21 [{"Name", "Label", "Type", "Choices", "Value"}]
       47 LOADK                            R8 K22 ["Curve"]
       48 SETTABLEKS                       R8 R7 K11 ["Name"]
       50 LOADK                            R8 K22 ["Curve"]
       51 SETTABLEKS                       R8 R7 K12 ["Label"]
       53 LOADK                            R8 K23 ["Enum.PoseEasingStyle"]
       54 SETTABLEKS                       R8 R7 K13 ["Type"]
       56 NEWTABLE                         R8 2 0
       58 GETIMPORT                        R9 K27 [Enum.PoseEasingStyle.Linear]
       60 LOADK                            R10 K26 ["Linear"]
       61 SETTABLE                         R10 R8 R9
       62 GETIMPORT                        R9 K29 [Enum.PoseEasingStyle.CubicV2]
       64 LOADK                            R10 K30 ["In/Out"]
       65 SETTABLE                         R10 R8 R9
       66 SETTABLEKS                       R8 R7 K20 ["Choices"]
       68 GETTABLEKS                       R8 R0 K19 ["Transition"]
       70 JUMPIFNOT                        R8 ; [+4]
       71 GETTABLEKS                       R9 R0 K19 ["Transition"]
       73 GETTABLEKS                       R8 R9 K22 ["Curve"]
       75 SETTABLEKS                       R8 R7 K14 ["Value"]
       77 CALL                             R6 1 1
       78 SETTABLEKS                       R6 R5 K8 ["Transition_Curve"]
       80 CALL                             R2 3 -1
       81 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R6 K10 ["Nodes"]
       27 GETTABLEKS                       R4 R5 K11 ["CompositorNodeUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Components"]
       34 GETTABLEKS                       R7 R8 K13 ["NodeView"]
       36 GETTABLEKS                       R6 R7 K14 ["CompositorNodeTransition"]
       38 GETTABLEKS                       R5 R6 K15 ["TransitionPanel"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K16 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 RETURN                           R5 1
