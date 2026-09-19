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
       18 DUPTABLE                         R5 K11 [{"Transition_Duration", "Transition_Curve", "Transition_When"}]
       19 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       21 DUPTABLE                         R7 K21 [{["Name"] = "Duration", ["Label"] = "Length", ["Type"] = "Timestamp", ["ExtraProps"], ["Value"]}]
       22 DUPTABLE                         R8 K24 [{["Minimum"] = 0}]
       23 SETTABLEKS                       R8 R7 K19 ["ExtraProps"]
       25 GETTABLEKS                       R8 R0 K25 ["Transition"]
       27 JUMPIFNOT                        R8 ; [+4]
       28 GETTABLEKS                       R8 R0 K25 ["Transition"]
       30 GETTABLEKS                       R8 R8 K14 ["Duration"]
       32 SETTABLEKS                       R8 R7 K20 ["Value"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K8 ["Transition_Duration"]
       37 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       39 DUPTABLE                         R7 K29 [{["Name"] = "Curve", ["Label"] = "Curve", ["Type"] = "Enum.PoseEasingStyle", ["Choices"], ["Value"]}]
       40 NEWTABLE                         R8 2 0
       42 GETIMPORT                        R9 K33 [Enum.PoseEasingStyle.Linear]
       44 LOADK                            R10 K32 ["Linear"]
       45 SETTABLE                         R10 R8 R9
       46 GETIMPORT                        R9 K35 [Enum.PoseEasingStyle.CubicV2]
       48 LOADK                            R10 K36 ["In/Out"]
       49 SETTABLE                         R10 R8 R9
       50 SETTABLEKS                       R8 R7 K28 ["Choices"]
       52 GETTABLEKS                       R8 R0 K25 ["Transition"]
       54 JUMPIFNOT                        R8 ; [+4]
       55 GETTABLEKS                       R8 R0 K25 ["Transition"]
       57 GETTABLEKS                       R8 R8 K26 ["Curve"]
       59 SETTABLEKS                       R8 R7 K20 ["Value"]
       61 CALL                             R6 1 1
       62 SETTABLEKS                       R6 R5 K9 ["Transition_Curve"]
       64 GETUPVAL                         R7 3
       65 CALL                             R7 0 1
       66 JUMPIFNOT                        R7 ; [+26]
       67 GETTABLEKS                       R6 R1 K12 ["nextTransitionProperty"]
       69 DUPTABLE                         R7 K39 [{["Name"] = "When", ["Label"] = "When", ["Type"] = "Enum.AnimationNodeTransitionWhen", ["Choices"], ["Value"]}]
       70 NEWTABLE                         R8 2 0
       72 GETIMPORT                        R9 K42 [Enum.AnimationNodeTransitionWhen.Finished]
       74 LOADK                            R10 K41 ["Finished"]
       75 SETTABLE                         R10 R8 R9
       76 GETIMPORT                        R9 K44 [Enum.AnimationNodeTransitionWhen.BeforeFinished]
       78 LOADK                            R10 K45 ["Before Finished"]
       79 SETTABLE                         R10 R8 R9
       80 SETTABLEKS                       R8 R7 K28 ["Choices"]
       82 GETTABLEKS                       R8 R0 K25 ["Transition"]
       84 JUMPIFNOT                        R8 ; [+4]
       85 GETTABLEKS                       R8 R0 K25 ["Transition"]
       87 GETTABLEKS                       R8 R8 K37 ["When"]
       89 SETTABLEKS                       R8 R7 K20 ["Value"]
       91 CALL                             R6 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 SETTABLEKS                       R6 R5 K10 ["Transition_When"]
       96 CALL                             R2 3 -1
       97 RETURN                           R2 -1

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
       43 GETTABLEKS                       R6 R6 K15 ["getEngineFeatureAnimGraphTransitionBeforeFinish"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
