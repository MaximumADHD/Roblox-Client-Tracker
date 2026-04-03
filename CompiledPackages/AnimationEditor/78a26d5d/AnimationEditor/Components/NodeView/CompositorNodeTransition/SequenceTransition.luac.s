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
       19 DUPTABLE                         R5 K10 [{"Transition_WaitFor", "Transition_Duration", "Transition_Curve"}]
       20 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       22 DUPTABLE                         R7 K16 [{"Name", "Label", "Type", "Value"}]
       23 LOADK                            R8 K17 ["WaitFor"]
       24 SETTABLEKS                       R8 R7 K12 ["Name"]
       26 LOADK                            R8 K18 ["Wait For"]
       27 SETTABLEKS                       R8 R7 K13 ["Label"]
       29 LOADK                            R8 K19 ["Enum.AnimationNodeWaitFor"]
       30 SETTABLEKS                       R8 R7 K14 ["Type"]
       32 GETTABLEKS                       R8 R0 K20 ["Transition"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 GETTABLEKS                       R9 R0 K20 ["Transition"]
       37 GETTABLEKS                       R8 R9 K17 ["WaitFor"]
       39 SETTABLEKS                       R8 R7 K15 ["Value"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K7 ["Transition_WaitFor"]
       44 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       46 DUPTABLE                         R7 K23 [{"Name", "Label", "Type", "Value", "Step", "Precision"}]
       47 LOADK                            R8 K24 ["Duration"]
       48 SETTABLEKS                       R8 R7 K12 ["Name"]
       50 LOADK                            R8 K25 ["Length"]
       51 SETTABLEKS                       R8 R7 K13 ["Label"]
       53 LOADK                            R8 K26 ["Timestamp"]
       54 SETTABLEKS                       R8 R7 K14 ["Type"]
       56 GETTABLEKS                       R8 R0 K20 ["Transition"]
       58 JUMPIFNOT                        R8 ; [+4]
       59 GETTABLEKS                       R9 R0 K20 ["Transition"]
       61 GETTABLEKS                       R8 R9 K24 ["Duration"]
       63 SETTABLEKS                       R8 R7 K15 ["Value"]
       65 LOADK                            R8 K27 [0.1]
       66 SETTABLEKS                       R8 R7 K21 ["Step"]
       68 LOADN                            R8 2
       69 SETTABLEKS                       R8 R7 K22 ["Precision"]
       71 CALL                             R6 1 1
       72 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       74 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       76 DUPTABLE                         R7 K29 [{"Name", "Label", "Type", "Choices", "Value"}]
       77 LOADK                            R8 K30 ["Curve"]
       78 SETTABLEKS                       R8 R7 K12 ["Name"]
       80 LOADK                            R8 K30 ["Curve"]
       81 SETTABLEKS                       R8 R7 K13 ["Label"]
       83 LOADK                            R8 K31 ["Enum.PoseEasingStyle"]
       84 SETTABLEKS                       R8 R7 K14 ["Type"]
       86 NEWTABLE                         R8 2 0
       88 GETIMPORT                        R9 K35 [Enum.PoseEasingStyle.Linear]
       90 LOADK                            R10 K34 ["Linear"]
       91 SETTABLE                         R10 R8 R9
       92 GETIMPORT                        R9 K37 [Enum.PoseEasingStyle.CubicV2]
       94 LOADK                            R10 K38 ["In/Out"]
       95 SETTABLE                         R10 R8 R9
       96 SETTABLEKS                       R8 R7 K28 ["Choices"]
       98 GETTABLEKS                       R8 R0 K20 ["Transition"]
      100 JUMPIFNOT                        R8 ; [+4]
      101 GETTABLEKS                       R9 R0 K20 ["Transition"]
      103 GETTABLEKS                       R8 R9 K30 ["Curve"]
      105 SETTABLEKS                       R8 R7 K15 ["Value"]
      107 CALL                             R6 1 1
      108 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
      110 CALL                             R2 3 -1
      111 RETURN                           R2 -1

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
