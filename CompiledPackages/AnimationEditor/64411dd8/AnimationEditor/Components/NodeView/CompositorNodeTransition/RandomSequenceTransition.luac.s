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
       41 GETUPVAL                         R9 3
       42 CALL                             R9 0 1
       43 JUMPIFNOT                        R9 ; [+2]
       44 LOADNIL                          R8
       45 JUMP                             ; [+1]
       46 LOADK                            R8 K22 [0.1]
       47 SETTABLEKS                       R8 R7 K15 ["Step"]
       49 GETUPVAL                         R9 3
       50 CALL                             R9 0 1
       51 JUMPIFNOT                        R9 ; [+2]
       52 LOADNIL                          R8
       53 JUMP                             ; [+5]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K23 ["NUMBER_PRECISION"]
       57 GETTABLEKS                       R8 R9 K24 ["Float"]
       59 SETTABLEKS                       R8 R7 K16 ["Precision"]
       61 CALL                             R6 1 1
       62 SETTABLEKS                       R6 R5 K7 ["Transition_Duration"]
       64 GETTABLEKS                       R6 R1 K10 ["nextTransitionProperty"]
       66 DUPTABLE                         R7 K26 [{"Name", "Label", "Type", "Choices", "Value"}]
       67 LOADK                            R8 K27 ["Curve"]
       68 SETTABLEKS                       R8 R7 K11 ["Name"]
       70 LOADK                            R8 K27 ["Curve"]
       71 SETTABLEKS                       R8 R7 K12 ["Label"]
       73 LOADK                            R8 K28 ["Enum.PoseEasingStyle"]
       74 SETTABLEKS                       R8 R7 K13 ["Type"]
       76 NEWTABLE                         R8 2 0
       78 GETIMPORT                        R9 K32 [Enum.PoseEasingStyle.Linear]
       80 LOADK                            R10 K31 ["Linear"]
       81 SETTABLE                         R10 R8 R9
       82 GETIMPORT                        R9 K34 [Enum.PoseEasingStyle.CubicV2]
       84 LOADK                            R10 K35 ["In/Out"]
       85 SETTABLE                         R10 R8 R9
       86 SETTABLEKS                       R8 R7 K25 ["Choices"]
       88 GETTABLEKS                       R8 R0 K21 ["Transition"]
       90 JUMPIFNOT                        R8 ; [+4]
       91 GETTABLEKS                       R9 R0 K21 ["Transition"]
       93 GETTABLEKS                       R8 R9 K27 ["Curve"]
       95 SETTABLEKS                       R8 R7 K14 ["Value"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K8 ["Transition_Curve"]
      100 CALL                             R2 3 -1
      101 RETURN                           R2 -1

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
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K17 ["Flags"]
       52 GETTABLEKS                       R7 R8 K18 ["getFFlagAnimGraphFloatStep003"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K19 [PROTO_0]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 RETURN                           R7 1
