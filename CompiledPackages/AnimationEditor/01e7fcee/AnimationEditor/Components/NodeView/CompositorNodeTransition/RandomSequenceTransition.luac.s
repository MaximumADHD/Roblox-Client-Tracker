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
       22 DUPTABLE                         R7 K17 [{"Name", "Label", "Type", "Value", "Step", "Precision"}]
       23 LOADK                            R8 K18 ["Duration"]
       24 SETTABLEKS                       R8 R7 K11 ["Name"]
       26 LOADK                            R8 K19 ["Length"]
       27 SETTABLEKS                       R8 R7 K12 ["Label"]
       29 LOADK                            R8 K20 ["Timestamp"]
       30 SETTABLEKS                       R8 R7 K13 ["Type"]
       32 GETTABLEKS                       R8 R0 K21 ["Transition"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 GETTABLEKS                       R9 R0 K21 ["Transition"]
       37 GETTABLEKS                       R8 R9 K18 ["Duration"]
       39 SETTABLEKS                       R8 R7 K14 ["Value"]
       41 LOADK                            R8 K22 [0.1]
       42 SETTABLEKS                       R8 R7 K15 ["Step"]
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R9 R10 K23 ["NUMBER_PRECISION"]
       47 GETTABLEKS                       R8 R9 K24 ["Float"]
       49 SETTABLEKS                       R8 R7 K16 ["Precision"]
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R6 R5 K7 ["Transition_Duration"]
       54 GETTABLEKS                       R6 R1 K10 ["nextTransitionProperty"]
       56 DUPTABLE                         R7 K26 [{"Name", "Label", "Type", "Choices", "Value"}]
       57 LOADK                            R8 K27 ["Curve"]
       58 SETTABLEKS                       R8 R7 K11 ["Name"]
       60 LOADK                            R8 K27 ["Curve"]
       61 SETTABLEKS                       R8 R7 K12 ["Label"]
       63 LOADK                            R8 K28 ["Enum.PoseEasingStyle"]
       64 SETTABLEKS                       R8 R7 K13 ["Type"]
       66 NEWTABLE                         R8 2 0
       68 GETIMPORT                        R9 K32 [Enum.PoseEasingStyle.Linear]
       70 LOADK                            R10 K31 ["Linear"]
       71 SETTABLE                         R10 R8 R9
       72 GETIMPORT                        R9 K34 [Enum.PoseEasingStyle.CubicV2]
       74 LOADK                            R10 K35 ["In/Out"]
       75 SETTABLE                         R10 R8 R9
       76 SETTABLEKS                       R8 R7 K25 ["Choices"]
       78 GETTABLEKS                       R8 R0 K21 ["Transition"]
       80 JUMPIFNOT                        R8 ; [+4]
       81 GETTABLEKS                       R9 R0 K21 ["Transition"]
       83 GETTABLEKS                       R8 R9 K27 ["Curve"]
       85 SETTABLEKS                       R8 R7 K14 ["Value"]
       87 CALL                             R6 1 1
       88 SETTABLEKS                       R6 R5 K8 ["Transition_Curve"]
       90 CALL                             R2 3 -1
       91 RETURN                           R2 -1

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
       32 GETTABLEKS                       R6 R0 K9 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R9 R0 K13 ["Components"]
       41 GETTABLEKS                       R8 R9 K14 ["NodeView"]
       43 GETTABLEKS                       R7 R8 K15 ["CompositorNodeTransition"]
       45 GETTABLEKS                       R6 R7 K16 ["TransitionPanel"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K17 [PROTO_0]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 RETURN                           R6 1
