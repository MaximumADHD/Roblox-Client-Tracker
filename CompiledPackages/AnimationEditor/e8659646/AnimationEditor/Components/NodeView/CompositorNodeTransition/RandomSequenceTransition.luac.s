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
       24 DUPTABLE                         R7 K18 [{"Name", "Label", "Type", "Value", "Step", "Precision"}]
       25 LOADK                            R8 K19 ["Duration"]
       26 SETTABLEKS                       R8 R7 K12 ["Name"]
       28 LOADK                            R8 K20 ["Length"]
       29 SETTABLEKS                       R8 R7 K13 ["Label"]
       31 LOADK                            R8 K21 ["Timestamp"]
       32 SETTABLEKS                       R8 R7 K14 ["Type"]
       34 GETTABLEKS                       R8 R0 K22 ["Transition"]
       36 JUMPIFNOT                        R8 ; [+4]
       37 GETTABLEKS                       R8 R0 K22 ["Transition"]
       39 GETTABLEKS                       R8 R8 K19 ["Duration"]
       41 SETTABLEKS                       R8 R7 K15 ["Value"]
       43 GETUPVAL                         R9 3
       44 CALL                             R9 0 1
       45 JUMPIFNOT                        R9 ; [+2]
       46 LOADNIL                          R8
       47 JUMP                             ; [+1]
       48 LOADK                            R8 K23 [0.1]
       49 SETTABLEKS                       R8 R7 K16 ["Step"]
       51 GETUPVAL                         R9 3
       52 CALL                             R9 0 1
       53 JUMPIFNOT                        R9 ; [+2]
       54 LOADNIL                          R8
       55 JUMP                             ; [+5]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R8 R8 K24 ["NUMBER_PRECISION"]
       59 GETTABLEKS                       R8 R8 K25 ["Float"]
       61 SETTABLEKS                       R8 R7 K17 ["Precision"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       66 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       68 DUPTABLE                         R7 K27 [{"Name", "Label", "Type", "Choices", "Value"}]
       69 LOADK                            R8 K28 ["Curve"]
       70 SETTABLEKS                       R8 R7 K12 ["Name"]
       72 LOADK                            R8 K28 ["Curve"]
       73 SETTABLEKS                       R8 R7 K13 ["Label"]
       75 LOADK                            R8 K29 ["Enum.PoseEasingStyle"]
       76 SETTABLEKS                       R8 R7 K14 ["Type"]
       78 NEWTABLE                         R8 2 0
       80 GETIMPORT                        R9 K33 [Enum.PoseEasingStyle.Linear]
       82 LOADK                            R10 K32 ["Linear"]
       83 SETTABLE                         R10 R8 R9
       84 GETIMPORT                        R9 K35 [Enum.PoseEasingStyle.CubicV2]
       86 LOADK                            R10 K36 ["In/Out"]
       87 SETTABLE                         R10 R8 R9
       88 SETTABLEKS                       R8 R7 K26 ["Choices"]
       90 GETTABLEKS                       R8 R0 K22 ["Transition"]
       92 JUMPIFNOT                        R8 ; [+4]
       93 GETTABLEKS                       R8 R0 K22 ["Transition"]
       95 GETTABLEKS                       R8 R8 K28 ["Curve"]
       97 SETTABLEKS                       R8 R7 K15 ["Value"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
      102 CALL                             R2 3 -1
      103 RETURN                           R2 -1

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
