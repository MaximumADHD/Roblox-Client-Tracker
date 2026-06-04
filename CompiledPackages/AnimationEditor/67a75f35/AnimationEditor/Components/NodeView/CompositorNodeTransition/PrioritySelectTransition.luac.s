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
       21 DUPTABLE                         R5 K11 [{"Transition_Interruptible", "Transition_Duration", "Transition_Curve"}]
       22 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       24 DUPTABLE                         R7 K17 [{"Name", "Label", "Type", "Value"}]
       25 LOADK                            R8 K18 ["Interruptible"]
       26 SETTABLEKS                       R8 R7 K13 ["Name"]
       28 LOADK                            R8 K18 ["Interruptible"]
       29 SETTABLEKS                       R8 R7 K14 ["Label"]
       31 LOADK                            R8 K19 ["Enum.AnimationNodeInterruptible"]
       32 SETTABLEKS                       R8 R7 K15 ["Type"]
       34 GETTABLEKS                       R8 R0 K20 ["Transition"]
       36 JUMPIFNOT                        R8 ; [+4]
       37 GETTABLEKS                       R8 R0 K20 ["Transition"]
       39 GETTABLEKS                       R8 R8 K18 ["Interruptible"]
       41 SETTABLEKS                       R8 R7 K16 ["Value"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K8 ["Transition_Interruptible"]
       46 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       48 DUPTABLE                         R7 K23 [{"Name", "Label", "Type", "Value", "Step", "Precision"}]
       49 LOADK                            R8 K24 ["Duration"]
       50 SETTABLEKS                       R8 R7 K13 ["Name"]
       52 LOADK                            R8 K25 ["Length"]
       53 SETTABLEKS                       R8 R7 K14 ["Label"]
       55 LOADK                            R8 K26 ["Timestamp"]
       56 SETTABLEKS                       R8 R7 K15 ["Type"]
       58 GETTABLEKS                       R8 R0 K20 ["Transition"]
       60 JUMPIFNOT                        R8 ; [+4]
       61 GETTABLEKS                       R8 R0 K20 ["Transition"]
       63 GETTABLEKS                       R8 R8 K24 ["Duration"]
       65 SETTABLEKS                       R8 R7 K16 ["Value"]
       67 GETUPVAL                         R9 3
       68 CALL                             R9 0 1
       69 JUMPIFNOT                        R9 ; [+2]
       70 LOADNIL                          R8
       71 JUMP                             ; [+1]
       72 LOADK                            R8 K27 [0.1]
       73 SETTABLEKS                       R8 R7 K21 ["Step"]
       75 GETUPVAL                         R9 3
       76 CALL                             R9 0 1
       77 JUMPIFNOT                        R9 ; [+2]
       78 LOADNIL                          R8
       79 JUMP                             ; [+5]
       80 GETUPVAL                         R8 4
       81 GETTABLEKS                       R8 R8 K28 ["NUMBER_PRECISION"]
       83 GETTABLEKS                       R8 R8 K29 ["Float"]
       85 SETTABLEKS                       R8 R7 K22 ["Precision"]
       87 CALL                             R6 1 1
       88 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
       90 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       92 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Choices", "Value"}]
       93 LOADK                            R8 K32 ["Curve"]
       94 SETTABLEKS                       R8 R7 K13 ["Name"]
       96 LOADK                            R8 K32 ["Curve"]
       97 SETTABLEKS                       R8 R7 K14 ["Label"]
       99 LOADK                            R8 K33 ["Enum.PoseEasingStyle"]
      100 SETTABLEKS                       R8 R7 K15 ["Type"]
      102 NEWTABLE                         R8 2 0
      104 GETIMPORT                        R9 K37 [Enum.PoseEasingStyle.Linear]
      106 LOADK                            R10 K36 ["Linear"]
      107 SETTABLE                         R10 R8 R9
      108 GETIMPORT                        R9 K39 [Enum.PoseEasingStyle.CubicV2]
      110 LOADK                            R10 K40 ["In/Out"]
      111 SETTABLE                         R10 R8 R9
      112 SETTABLEKS                       R8 R7 K30 ["Choices"]
      114 GETTABLEKS                       R8 R0 K20 ["Transition"]
      116 JUMPIFNOT                        R8 ; [+4]
      117 GETTABLEKS                       R8 R0 K20 ["Transition"]
      119 GETTABLEKS                       R8 R8 K32 ["Curve"]
      121 SETTABLEKS                       R8 R7 K16 ["Value"]
      123 CALL                             R6 1 1
      124 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
      126 CALL                             R2 3 -1
      127 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K14 ["CompositorNodeTransition"]
       43 GETTABLEKS                       R6 R6 K15 ["TransitionPanel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Flags"]
       50 GETTABLEKS                       R7 R7 K17 ["getFFlagAnimGraphFloatStep003"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K18 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 RETURN                           R7 1
