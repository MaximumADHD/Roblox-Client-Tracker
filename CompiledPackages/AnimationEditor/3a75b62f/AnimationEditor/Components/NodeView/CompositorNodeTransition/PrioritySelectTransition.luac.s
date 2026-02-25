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
       19 DUPTABLE                         R5 K11 [{"Transition_Interruptible", "Transition_InterruptibleExpression", "Transition_Duration", "Transition_Curve"}]
       20 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
       22 DUPTABLE                         R7 K17 [{"Name", "Label", "Type", "Value"}]
       23 LOADK                            R8 K18 ["Interruptible"]
       24 SETTABLEKS                       R8 R7 K13 ["Name"]
       26 LOADK                            R8 K18 ["Interruptible"]
       27 SETTABLEKS                       R8 R7 K14 ["Label"]
       29 LOADK                            R8 K19 ["Enum.AnimationNodeInterruptible"]
       30 SETTABLEKS                       R8 R7 K15 ["Type"]
       32 GETTABLEKS                       R8 R0 K20 ["Transition"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 GETTABLEKS                       R9 R0 K20 ["Transition"]
       37 GETTABLEKS                       R8 R9 K18 ["Interruptible"]
       39 SETTABLEKS                       R8 R7 K16 ["Value"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K7 ["Transition_Interruptible"]
       44 GETTABLEKS                       R8 R0 K20 ["Transition"]
       46 GETTABLEKS                       R7 R8 K18 ["Interruptible"]
       48 GETIMPORT                        R8 K24 [Enum.AnimationNodeInterruptible.Expression]
       50 JUMPIFNOTEQ                      R7 R8 ; [+24]
       52 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
       54 DUPTABLE                         R7 K17 [{"Name", "Label", "Type", "Value"}]
       55 LOADK                            R8 K25 ["InterruptibleExpression"]
       56 SETTABLEKS                       R8 R7 K13 ["Name"]
       58 LOADK                            R8 K26 ["Interruptible Expression"]
       59 SETTABLEKS                       R8 R7 K14 ["Label"]
       61 LOADK                            R8 K27 ["Boolean"]
       62 SETTABLEKS                       R8 R7 K15 ["Type"]
       64 GETTABLEKS                       R8 R0 K20 ["Transition"]
       66 JUMPIFNOT                        R8 ; [+4]
       67 GETTABLEKS                       R9 R0 K20 ["Transition"]
       69 GETTABLEKS                       R8 R9 K25 ["InterruptibleExpression"]
       71 SETTABLEKS                       R8 R7 K16 ["Value"]
       73 CALL                             R6 1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R6
       76 SETTABLEKS                       R6 R5 K8 ["Transition_InterruptibleExpression"]
       78 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
       80 DUPTABLE                         R7 K17 [{"Name", "Label", "Type", "Value"}]
       81 LOADK                            R8 K28 ["Duration"]
       82 SETTABLEKS                       R8 R7 K13 ["Name"]
       84 LOADK                            R8 K29 ["Length"]
       85 SETTABLEKS                       R8 R7 K14 ["Label"]
       87 LOADK                            R8 K30 ["Timestamp"]
       88 SETTABLEKS                       R8 R7 K15 ["Type"]
       90 GETTABLEKS                       R8 R0 K20 ["Transition"]
       92 JUMPIFNOT                        R8 ; [+4]
       93 GETTABLEKS                       R9 R0 K20 ["Transition"]
       95 GETTABLEKS                       R8 R9 K28 ["Duration"]
       97 SETTABLEKS                       R8 R7 K16 ["Value"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
      102 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
      104 DUPTABLE                         R7 K32 [{"Name", "Label", "Type", "Choices", "Value"}]
      105 LOADK                            R8 K33 ["Curve"]
      106 SETTABLEKS                       R8 R7 K13 ["Name"]
      108 LOADK                            R8 K33 ["Curve"]
      109 SETTABLEKS                       R8 R7 K14 ["Label"]
      111 LOADK                            R8 K34 ["Enum.PoseEasingStyle"]
      112 SETTABLEKS                       R8 R7 K15 ["Type"]
      114 NEWTABLE                         R8 2 0
      116 GETIMPORT                        R9 K37 [Enum.PoseEasingStyle.Linear]
      118 LOADK                            R10 K36 ["Linear"]
      119 SETTABLE                         R10 R8 R9
      120 GETIMPORT                        R9 K39 [Enum.PoseEasingStyle.Cubic]
      122 LOADK                            R10 K40 ["In/Out"]
      123 SETTABLE                         R10 R8 R9
      124 SETTABLEKS                       R8 R7 K31 ["Choices"]
      126 GETTABLEKS                       R8 R0 K20 ["Transition"]
      128 JUMPIFNOT                        R8 ; [+4]
      129 GETTABLEKS                       R9 R0 K20 ["Transition"]
      131 GETTABLEKS                       R8 R9 K33 ["Curve"]
      133 SETTABLEKS                       R8 R7 K16 ["Value"]
      135 CALL                             R6 1 1
      136 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
      138 CALL                             R2 3 -1
      139 RETURN                           R2 -1

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
