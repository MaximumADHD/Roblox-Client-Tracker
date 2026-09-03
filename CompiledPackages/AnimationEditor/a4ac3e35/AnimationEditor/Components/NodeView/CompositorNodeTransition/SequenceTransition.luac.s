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
       18 DUPTABLE                         R5 K12 [{"Transition_WaitFor", "Transition_Duration", "Transition_Curve", "Transition_When"}]
       19 GETTABLEKS                       R6 R1 K13 ["nextTransitionProperty"]
       21 DUPTABLE                         R7 K22 [{["Name"] = "WaitFor", ["Label"] = "Wait For", ["Type"] = "Enum.AnimationNodeWaitFor", ["ExtraProps"], ["Value"]}]
       22 DUPTABLE                         R8 K25 [{["Minimum"] = 0}]
       23 SETTABLEKS                       R8 R7 K20 ["ExtraProps"]
       25 GETTABLEKS                       R8 R0 K26 ["Transition"]
       27 JUMPIFNOT                        R8 ; [+4]
       28 GETTABLEKS                       R8 R0 K26 ["Transition"]
       30 GETTABLEKS                       R8 R8 K15 ["WaitFor"]
       32 SETTABLEKS                       R8 R7 K21 ["Value"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K8 ["Transition_WaitFor"]
       37 GETTABLEKS                       R6 R1 K13 ["nextTransitionProperty"]
       39 DUPTABLE                         R7 K30 [{["Name"] = "Duration", ["Label"] = "Length", ["Type"] = "Timestamp", ["Value"]}]
       40 GETTABLEKS                       R8 R0 K26 ["Transition"]
       42 JUMPIFNOT                        R8 ; [+4]
       43 GETTABLEKS                       R8 R0 K26 ["Transition"]
       45 GETTABLEKS                       R8 R8 K27 ["Duration"]
       47 SETTABLEKS                       R8 R7 K21 ["Value"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K9 ["Transition_Duration"]
       52 GETTABLEKS                       R6 R1 K13 ["nextTransitionProperty"]
       54 DUPTABLE                         R7 K34 [{["Name"] = "Curve", ["Label"] = "Curve", ["Type"] = "Enum.PoseEasingStyle", ["Choices"], ["Value"]}]
       55 NEWTABLE                         R8 2 0
       57 GETIMPORT                        R9 K38 [Enum.PoseEasingStyle.Linear]
       59 LOADK                            R10 K37 ["Linear"]
       60 SETTABLE                         R10 R8 R9
       61 GETIMPORT                        R9 K40 [Enum.PoseEasingStyle.CubicV2]
       63 LOADK                            R10 K41 ["In/Out"]
       64 SETTABLE                         R10 R8 R9
       65 SETTABLEKS                       R8 R7 K33 ["Choices"]
       67 GETTABLEKS                       R8 R0 K26 ["Transition"]
       69 JUMPIFNOT                        R8 ; [+4]
       70 GETTABLEKS                       R8 R0 K26 ["Transition"]
       72 GETTABLEKS                       R8 R8 K31 ["Curve"]
       74 SETTABLEKS                       R8 R7 K21 ["Value"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K10 ["Transition_Curve"]
       79 GETUPVAL                         R7 3
       80 CALL                             R7 0 1
       81 JUMPIFNOT                        R7 ; [+37]
       82 GETTABLEKS                       R7 R0 K26 ["Transition"]
       84 JUMPIFNOT                        R7 ; [+34]
       85 GETTABLEKS                       R7 R0 K26 ["Transition"]
       87 GETTABLEKS                       R7 R7 K15 ["WaitFor"]
       89 GETIMPORT                        R8 K44 [Enum.AnimationNodeWaitFor.Finished]
       91 JUMPIFNOTEQ                      R7 R8 ; [+27]
       93 GETTABLEKS                       R6 R1 K13 ["nextTransitionProperty"]
       95 DUPTABLE                         R7 K47 [{["Name"] = "When", ["Label"] = "When", ["Type"] = "Enum.AnimationNodeTransitionWhen", ["Choices"], ["Value"]}]
       96 NEWTABLE                         R8 2 0
       98 GETIMPORT                        R9 K49 [Enum.AnimationNodeTransitionWhen.Finished]
      100 LOADK                            R10 K43 ["Finished"]
      101 SETTABLE                         R10 R8 R9
      102 GETIMPORT                        R9 K51 [Enum.AnimationNodeTransitionWhen.BeforeFinished]
      104 LOADK                            R10 K52 ["Before Finished"]
      105 SETTABLE                         R10 R8 R9
      106 SETTABLEKS                       R8 R7 K33 ["Choices"]
      108 GETTABLEKS                       R8 R0 K26 ["Transition"]
      110 JUMPIFNOT                        R8 ; [+4]
      111 GETTABLEKS                       R8 R0 K26 ["Transition"]
      113 GETTABLEKS                       R8 R8 K45 ["When"]
      115 SETTABLEKS                       R8 R7 K21 ["Value"]
      117 CALL                             R6 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R6
      120 SETTABLEKS                       R6 R5 K11 ["Transition_When"]
      122 CALL                             R2 3 -1
      123 RETURN                           R2 -1

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
