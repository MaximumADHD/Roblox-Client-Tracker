PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = , ["widget"] = }]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K5 ["new"]
        6 DUPTABLE                         R2 K11 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Tutorials", ["libraries"]}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K6 ["stringResourceTable"]
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R3 R2 K7 ["translationResourceTable"]
       13 NEWTABLE                         R3 1 0
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K12 ["Resources"]
       18 GETTABLEKS                       R4 R4 K13 ["LOCALIZATION_PROJECT_NAME"]
       20 DUPTABLE                         R5 K14 [{"stringResourceTable", "translationResourceTable"}]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K12 ["Resources"]
       24 GETTABLEKS                       R6 R6 K15 ["SourceStrings"]
       26 SETTABLEKS                       R6 R5 K6 ["stringResourceTable"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K12 ["Resources"]
       31 GETTABLEKS                       R6 R6 K16 ["LocalizedStrings"]
       33 SETTABLEKS                       R6 R5 K7 ["translationResourceTable"]
       35 SETTABLE                         R5 R3 R4
       36 SETTABLEKS                       R3 R2 K10 ["libraries"]
       38 CALL                             R1 1 1
       39 SETTABLEKS                       R1 R0 K17 ["localization"]
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"stepData"}]
        2 SETTABLEKS                       R0 R3 K0 ["stepData"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K3 ["Panels"]
        9 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K9 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       14 GETUPVAL                         R6 3
       15 SETTABLEKS                       R6 R5 K5 ["TargetWidgetUri"]
       17 GETIMPORT                        R6 K12 [Vector2.new]
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K6 ["SubjectAnchorPoint"]
       24 GETIMPORT                        R6 K12 [Vector2.new]
       26 LOADN                            R7 0
       27 LOADN                            R8 0
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K7 ["TargetAnchorPoint"]
       31 GETIMPORT                        R6 K12 [Vector2.new]
       33 LOADN                            R7 20
       34 LOADN                            R8 20
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K8 ["Offset"]
       38 NAMECALL                         R2 R1 K13 ["SetAttachmentAsync"]
       40 CALL                             R2 3 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 LOADK                            R4 K2 ["PlaytestWidget"]
        5 DUPTABLE                         R5 K10 [{["Size"], ["MinSize"], ["Modal"] = False, ["Callout"] = True, ["InitialEnabled"] = True}]
        6 GETIMPORT                        R6 K13 [Vector2.new]
        8 LOADN                            R7 275
        9 LOADN                            R8 350
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K3 ["Size"]
       13 GETIMPORT                        R6 K13 [Vector2.new]
       15 LOADN                            R7 275
       16 LOADN                            R8 350
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K4 ["MinSize"]
       20 NAMECALL                         R2 R1 K14 ["CreateQWidgetPluginGui"]
       22 CALL                             R2 3 1
       23 LOADK                            R3 K2 ["PlaytestWidget"]
       24 SETTABLEKS                       R3 R2 K15 ["Name"]
       26 LOADK                            R5 K16 ["SendPlayStep"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R3 R1 K17 ["OnInvoke"]
       34 CALL                             R3 3 1
       35 SETTABLEKS                       R3 R0 K18 ["connection"]
       37 DUPTABLE                         R5 K20 [{"widget"}]
       38 SETTABLEKS                       R2 R5 K19 ["widget"]
       40 NAMECALL                         R3 R0 K21 ["setState"]
       42 CALL                             R3 2 0
       43 LOADK                            R5 K22 ["GetPlayStep"]
       44 NAMECALL                         R3 R1 K23 ["Invoke"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SkipStep"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TutorialService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K4 ["PromptClosePlace"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["widget"]
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["provide"]
       14 NEWTABLE                         R5 0 4
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K2 ["Plugin"]
       19 GETTABLEKS                       R6 R6 K5 ["new"]
       21 MOVE                             R7 R3
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K5 ["new"]
       26 NAMECALL                         R8 R3 K6 ["getMouse"]
       28 CALL                             R8 1 -1
       29 CALL                             R7 -1 1
       30 GETUPVAL                         R8 2
       31 CALL                             R8 0 1
       32 GETTABLEKS                       R9 R0 K7 ["localization"]
       34 SETLIST                          R5 R6 4 [1]
       36 DUPTABLE                         R6 K9 [{"Tour"}]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K10 ["createElement"]
       40 GETUPVAL                         R8 4
       41 DUPTABLE                         R9 K17 [{"OnNext", "OnSkip", "OnQuit", "Plugin", "PressedKeys", "StepData", "Widget"}]
       42 DUPCLOSURE                       R10 K18 [PROTO_4]
       43 SETTABLEKS                       R10 R9 K11 ["OnNext"]
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R10 R9 K12 ["OnSkip"]
       49 DUPCLOSURE                       R10 K19 [PROTO_6]
       50 SETTABLEKS                       R10 R9 K13 ["OnQuit"]
       52 SETTABLEKS                       R3 R9 K2 ["Plugin"]
       54 NEWTABLE                         R10 0 0
       56 SETTABLEKS                       R10 R9 K14 ["PressedKeys"]
       58 GETTABLEKS                       R10 R2 K20 ["stepData"]
       60 SETTABLEKS                       R10 R9 K15 ["StepData"]
       62 GETTABLEKS                       R10 R2 K3 ["widget"]
       64 SETTABLEKS                       R10 R9 K16 ["Widget"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K8 ["Tour"]
       69 CALL                             R4 2 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Mouse"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R6 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Resources"]
       33 GETTABLEKS                       R6 R6 K10 ["Localization"]
       35 GETTABLEKS                       R6 R6 K13 ["SourceStrings"]
       37 GETTABLEKS                       R7 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R7 K12 ["Resources"]
       41 GETTABLEKS                       R7 R7 K10 ["Localization"]
       43 GETTABLEKS                       R7 R7 K14 ["LocalizedStrings"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R9 R9 K12 ["Resources"]
       51 GETTABLEKS                       R9 R9 K15 ["MakeTheme"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["TourWidget"]
       62 CALL                             R9 1 1
       63 DUPTABLE                         R10 K28 [{["DataModel"] = "PlayClient", ["PluginType"] = "Standalone", ["PluginId"] = "Tutorials", ["Category"] = "Panels", ["ItemId"] = "PlaytestWidget"}]
       64 DUPTABLE                         R11 K32 [{["PluginId"] = "MainWindow", ["Category"] = "Widgets", ["ItemId"] = "Main"}]
       65 GETTABLEKS                       R12 R1 K33 ["PureComponent"]
       67 LOADK                            R14 K34 ["PlayRoot"]
       68 NAMECALL                         R12 R12 K35 ["extend"]
       70 CALL                             R12 2 1
       71 DUPCLOSURE                       R13 K36 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R13 R12 K37 ["init"]
       78 DUPCLOSURE                       R13 K38 [PROTO_2]
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R13 R12 K39 ["didMount"]
       83 DUPCLOSURE                       R13 K40 [PROTO_3]
       84 SETTABLEKS                       R13 R12 K41 ["willUnmount"]
       86 DUPCLOSURE                       R13 K42 [PROTO_7]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R13 R12 K43 ["render"]
       94 RETURN                           R12 1
