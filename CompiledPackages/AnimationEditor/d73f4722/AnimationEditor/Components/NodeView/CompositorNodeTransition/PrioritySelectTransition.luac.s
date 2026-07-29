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
       36 DUPTABLE                         R7 K25 [{["Name"] = "Duration", ["Label"] = "Length", ["Type"] = "Timestamp", ["ExtraProps"], ["Value"]}]
       37 GETUPVAL                         R9 3
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 DUPTABLE                         R8 K28 [{["Minimum"] = 0}]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R8
       43 SETTABLEKS                       R8 R7 K24 ["ExtraProps"]
       45 GETTABLEKS                       R8 R0 K20 ["Transition"]
       47 JUMPIFNOT                        R8 ; [+4]
       48 GETTABLEKS                       R8 R0 K20 ["Transition"]
       50 GETTABLEKS                       R8 R8 K21 ["Duration"]
       52 SETTABLEKS                       R8 R7 K18 ["Value"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
       57 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       59 DUPTABLE                         R7 K32 [{["Name"] = "Curve", ["Label"] = "Curve", ["Type"] = "Enum.PoseEasingStyle", ["Choices"], ["Value"]}]
       60 NEWTABLE                         R8 2 0
       62 GETIMPORT                        R9 K36 [Enum.PoseEasingStyle.Linear]
       64 LOADK                            R10 K35 ["Linear"]
       65 SETTABLE                         R10 R8 R9
       66 GETIMPORT                        R9 K38 [Enum.PoseEasingStyle.CubicV2]
       68 LOADK                            R10 K39 ["In/Out"]
       69 SETTABLE                         R10 R8 R9
       70 SETTABLEKS                       R8 R7 K31 ["Choices"]
       72 GETTABLEKS                       R8 R0 K20 ["Transition"]
       74 JUMPIFNOT                        R8 ; [+4]
       75 GETTABLEKS                       R8 R0 K20 ["Transition"]
       77 GETTABLEKS                       R8 R8 K29 ["Curve"]
       79 SETTABLEKS                       R8 R7 K18 ["Value"]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
       84 CALL                             R2 3 -1
       85 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K12 ["CompositorNodeTransition"]
       36 GETTABLEKS                       R5 R5 K13 ["TransitionPanel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Flags"]
       43 GETTABLEKS                       R6 R6 K15 ["getFFlagAnimGraphUIClampTransitionDuration"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
