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
       18 DUPTABLE                         R5 K10 [{"Transition_Duration", "Transition_Curve"}]
       19 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       21 DUPTABLE                         R7 K19 [{["Name"] = "Duration", ["Label"] = "Length", ["Type"] = "Timestamp", ["Value"]}]
       22 GETTABLEKS                       R8 R0 K20 ["Transition"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETTABLEKS                       R8 R0 K20 ["Transition"]
       27 GETTABLEKS                       R8 R8 K13 ["Duration"]
       29 SETTABLEKS                       R8 R7 K18 ["Value"]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       34 GETTABLEKS                       R6 R1 K11 ["nextTransitionProperty"]
       36 DUPTABLE                         R7 K24 [{["Name"] = "Curve", ["Label"] = "Curve", ["Type"] = "Enum.PoseEasingStyle", ["Choices"], ["Value"]}]
       37 NEWTABLE                         R8 2 0
       39 GETIMPORT                        R9 K28 [Enum.PoseEasingStyle.Linear]
       41 LOADK                            R10 K27 ["Linear"]
       42 SETTABLE                         R10 R8 R9
       43 GETIMPORT                        R9 K30 [Enum.PoseEasingStyle.CubicV2]
       45 LOADK                            R10 K31 ["In/Out"]
       46 SETTABLE                         R10 R8 R9
       47 SETTABLEKS                       R8 R7 K23 ["Choices"]
       49 GETTABLEKS                       R8 R0 K20 ["Transition"]
       51 JUMPIFNOT                        R8 ; [+4]
       52 GETTABLEKS                       R8 R0 K20 ["Transition"]
       54 GETTABLEKS                       R8 R8 K21 ["Curve"]
       56 SETTABLEKS                       R8 R7 K18 ["Value"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1

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
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
