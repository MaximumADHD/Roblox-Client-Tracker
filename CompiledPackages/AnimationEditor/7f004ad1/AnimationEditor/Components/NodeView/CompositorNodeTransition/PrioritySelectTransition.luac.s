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
       13 DUPTABLE                         R4 K7 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
       14 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       16 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       18 DUPTABLE                         R5 K11 [{"Transition_Interruptible", "Transition_Duration", "Transition_Curve"}]
       19 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       21 DUPTABLE                         R7 K19 [{["Name"] = "Interruptible", ["Label"] = "Interruptible", ["Type"] = "Enum.AnimationNodeInterruptible", ["Value"]}]
       22 GETTABLEKS                       R8 R0 K20 ["Transition"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETTABLEKS                       R8 R0 K20 ["Transition"]
       27 GETTABLEKS                       R8 R8 K14 ["Interruptible"]
       29 SETTABLEKS                       R8 R7 K18 ["Value"]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K8 ["Transition_Interruptible"]
       34 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       36 DUPTABLE                         R7 K26 [{["Name"] = "Duration", ["Label"] = "Length", ["Type"] = "Timestamp", ["Value"], ["Step"], ["Precision"]}]
       37 GETTABLEKS                       R8 R0 K20 ["Transition"]
       39 JUMPIFNOT                        R8 ; [+4]
       40 GETTABLEKS                       R8 R0 K20 ["Transition"]
       42 GETTABLEKS                       R8 R8 K21 ["Duration"]
       44 SETTABLEKS                       R8 R7 K18 ["Value"]
       46 GETUPVAL                         R9 3
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+2]
       49 LOADNIL                          R8
       50 JUMP                             ; [+1]
       51 LOADK                            R8 K27 [0.1]
       52 SETTABLEKS                       R8 R7 K24 ["Step"]
       54 GETUPVAL                         R9 3
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+2]
       57 LOADNIL                          R8
       58 JUMP                             ; [+5]
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K28 ["NUMBER_PRECISION"]
       62 GETTABLEKS                       R8 R8 K29 ["Float"]
       64 SETTABLEKS                       R8 R7 K25 ["Precision"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
       69 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       71 DUPTABLE                         R7 K33 [{["Name"] = "Curve", ["Label"] = "Curve", ["Type"] = "Enum.PoseEasingStyle", ["Choices"], ["Value"]}]
       72 NEWTABLE                         R8 2 0
       74 GETIMPORT                        R9 K37 [Enum.PoseEasingStyle.Linear]
       76 LOADK                            R10 K36 ["Linear"]
       77 SETTABLE                         R10 R8 R9
       78 GETIMPORT                        R9 K39 [Enum.PoseEasingStyle.CubicV2]
       80 LOADK                            R10 K40 ["In/Out"]
       81 SETTABLE                         R10 R8 R9
       82 SETTABLEKS                       R8 R7 K32 ["Choices"]
       84 GETTABLEKS                       R8 R0 K20 ["Transition"]
       86 JUMPIFNOT                        R8 ; [+4]
       87 GETTABLEKS                       R8 R0 K20 ["Transition"]
       89 GETTABLEKS                       R8 R8 K30 ["Curve"]
       91 SETTABLEKS                       R8 R7 K18 ["Value"]
       93 CALL                             R6 1 1
       94 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

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
