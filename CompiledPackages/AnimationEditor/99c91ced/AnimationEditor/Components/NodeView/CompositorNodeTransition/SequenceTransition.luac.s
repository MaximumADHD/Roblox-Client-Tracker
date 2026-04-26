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
       65 GETUPVAL                         R9 3
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+2]
       68 LOADNIL                          R8
       69 JUMP                             ; [+1]
       70 LOADK                            R8 K27 [0.1]
       71 SETTABLEKS                       R8 R7 K21 ["Step"]
       73 GETUPVAL                         R9 3
       74 CALL                             R9 0 1
       75 JUMPIFNOT                        R9 ; [+2]
       76 LOADNIL                          R8
       77 JUMP                             ; [+5]
       78 GETUPVAL                         R10 4
       79 GETTABLEKS                       R9 R10 K28 ["NUMBER_PRECISION"]
       81 GETTABLEKS                       R8 R9 K29 ["Float"]
       83 SETTABLEKS                       R8 R7 K22 ["Precision"]
       85 CALL                             R6 1 1
       86 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       88 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       90 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Choices", "Value"}]
       91 LOADK                            R8 K32 ["Curve"]
       92 SETTABLEKS                       R8 R7 K12 ["Name"]
       94 LOADK                            R8 K32 ["Curve"]
       95 SETTABLEKS                       R8 R7 K13 ["Label"]
       97 LOADK                            R8 K33 ["Enum.PoseEasingStyle"]
       98 SETTABLEKS                       R8 R7 K14 ["Type"]
      100 NEWTABLE                         R8 2 0
      102 GETIMPORT                        R9 K37 [Enum.PoseEasingStyle.Linear]
      104 LOADK                            R10 K36 ["Linear"]
      105 SETTABLE                         R10 R8 R9
      106 GETIMPORT                        R9 K39 [Enum.PoseEasingStyle.CubicV2]
      108 LOADK                            R10 K40 ["In/Out"]
      109 SETTABLE                         R10 R8 R9
      110 SETTABLEKS                       R8 R7 K30 ["Choices"]
      112 GETTABLEKS                       R8 R0 K20 ["Transition"]
      114 JUMPIFNOT                        R8 ; [+4]
      115 GETTABLEKS                       R9 R0 K20 ["Transition"]
      117 GETTABLEKS                       R8 R9 K32 ["Curve"]
      119 SETTABLEKS                       R8 R7 K15 ["Value"]
      121 CALL                             R6 1 1
      122 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
      124 CALL                             R2 3 -1
      125 RETURN                           R2 -1

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
