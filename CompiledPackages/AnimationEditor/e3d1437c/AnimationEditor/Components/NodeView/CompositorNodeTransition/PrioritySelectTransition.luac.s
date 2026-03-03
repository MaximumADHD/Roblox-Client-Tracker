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
       80 DUPTABLE                         R7 K30 [{"Name", "Label", "Type", "Value", "Step", "Precision"}]
       81 LOADK                            R8 K31 ["Duration"]
       82 SETTABLEKS                       R8 R7 K13 ["Name"]
       84 LOADK                            R8 K32 ["Length"]
       85 SETTABLEKS                       R8 R7 K14 ["Label"]
       87 LOADK                            R8 K33 ["Timestamp"]
       88 SETTABLEKS                       R8 R7 K15 ["Type"]
       90 GETTABLEKS                       R8 R0 K20 ["Transition"]
       92 JUMPIFNOT                        R8 ; [+4]
       93 GETTABLEKS                       R9 R0 K20 ["Transition"]
       95 GETTABLEKS                       R8 R9 K31 ["Duration"]
       97 SETTABLEKS                       R8 R7 K16 ["Value"]
       99 LOADK                            R8 K34 [0.1]
      100 SETTABLEKS                       R8 R7 K28 ["Step"]
      102 LOADN                            R8 2
      103 SETTABLEKS                       R8 R7 K29 ["Precision"]
      105 CALL                             R6 1 1
      106 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
      108 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
      110 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Choices", "Value"}]
      111 LOADK                            R8 K37 ["Curve"]
      112 SETTABLEKS                       R8 R7 K13 ["Name"]
      114 LOADK                            R8 K37 ["Curve"]
      115 SETTABLEKS                       R8 R7 K14 ["Label"]
      117 LOADK                            R8 K38 ["Enum.PoseEasingStyle"]
      118 SETTABLEKS                       R8 R7 K15 ["Type"]
      120 NEWTABLE                         R8 2 0
      122 GETIMPORT                        R9 K41 [Enum.PoseEasingStyle.Linear]
      124 LOADK                            R10 K40 ["Linear"]
      125 SETTABLE                         R10 R8 R9
      126 GETIMPORT                        R9 K43 [Enum.PoseEasingStyle.Cubic]
      128 LOADK                            R10 K44 ["In/Out"]
      129 SETTABLE                         R10 R8 R9
      130 SETTABLEKS                       R8 R7 K35 ["Choices"]
      132 GETTABLEKS                       R8 R0 K20 ["Transition"]
      134 JUMPIFNOT                        R8 ; [+4]
      135 GETTABLEKS                       R9 R0 K20 ["Transition"]
      137 GETTABLEKS                       R8 R9 K37 ["Curve"]
      139 SETTABLEKS                       R8 R7 K16 ["Value"]
      141 CALL                             R6 1 1
      142 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
      144 CALL                             R2 3 -1
      145 RETURN                           R2 -1

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
