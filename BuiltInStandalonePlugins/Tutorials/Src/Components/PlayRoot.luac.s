PROTO_0:
        0 DUPTABLE                         R1 K2 [{"stepData", "widget"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["stepData"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["widget"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["new"]
       12 DUPTABLE                         R2 K9 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
       13 GETUPVAL                         R3 1
       14 SETTABLEKS                       R3 R2 K5 ["stringResourceTable"]
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R3 R2 K6 ["translationResourceTable"]
       19 LOADK                            R3 K10 ["Tutorials"]
       20 SETTABLEKS                       R3 R2 K7 ["pluginName"]
       22 NEWTABLE                         R3 1 0
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K11 ["Resources"]
       27 GETTABLEKS                       R4 R4 K12 ["LOCALIZATION_PROJECT_NAME"]
       29 DUPTABLE                         R5 K13 [{"stringResourceTable", "translationResourceTable"}]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K11 ["Resources"]
       33 GETTABLEKS                       R6 R6 K14 ["SourceStrings"]
       35 SETTABLEKS                       R6 R5 K5 ["stringResourceTable"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K11 ["Resources"]
       40 GETTABLEKS                       R6 R6 K15 ["LocalizedStrings"]
       42 SETTABLEKS                       R6 R5 K6 ["translationResourceTable"]
       44 SETTABLE                         R5 R3 R4
       45 SETTABLEKS                       R3 R2 K8 ["libraries"]
       47 CALL                             R1 1 1
       48 SETTABLEKS                       R1 R0 K16 ["localization"]
       50 RETURN                           R0 0

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
        5 DUPTABLE                         R5 K8 [{"Size", "MinSize", "Modal", "Callout", "InitialEnabled"}]
        6 GETIMPORT                        R6 K11 [Vector2.new]
        8 LOADN                            R7 19
        9 LOADN                            R8 94
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K3 ["Size"]
       13 GETIMPORT                        R6 K11 [Vector2.new]
       15 LOADN                            R7 19
       16 LOADN                            R8 94
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K4 ["MinSize"]
       20 LOADB                            R6 0
       21 SETTABLEKS                       R6 R5 K5 ["Modal"]
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K6 ["Callout"]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K7 ["InitialEnabled"]
       29 NAMECALL                         R2 R1 K12 ["CreateQWidgetPluginGui"]
       31 CALL                             R2 3 1
       32 LOADK                            R3 K2 ["PlaytestWidget"]
       33 SETTABLEKS                       R3 R2 K13 ["Name"]
       35 LOADK                            R5 K14 ["SendPlayStep"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R3 R1 K15 ["OnInvoke"]
       43 CALL                             R3 3 1
       44 SETTABLEKS                       R3 R0 K16 ["connection"]
       46 DUPTABLE                         R5 K18 [{"widget"}]
       47 SETTABLEKS                       R2 R5 K17 ["widget"]
       49 NAMECALL                         R3 R0 K19 ["setState"]
       51 CALL                             R3 2 0
       52 LOADK                            R5 K20 ["GetPlayStep"]
       53 NAMECALL                         R3 R1 K21 ["Invoke"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

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
       63 DUPTABLE                         R10 K23 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       64 LOADK                            R11 K24 ["PlayClient"]
       65 SETTABLEKS                       R11 R10 K18 ["DataModel"]
       67 LOADK                            R11 K25 ["Standalone"]
       68 SETTABLEKS                       R11 R10 K19 ["PluginType"]
       70 LOADK                            R11 K26 ["Tutorials"]
       71 SETTABLEKS                       R11 R10 K20 ["PluginId"]
       73 LOADK                            R11 K27 ["Panels"]
       74 SETTABLEKS                       R11 R10 K21 ["Category"]
       76 LOADK                            R11 K28 ["PlaytestWidget"]
       77 SETTABLEKS                       R11 R10 K22 ["ItemId"]
       79 DUPTABLE                         R11 K29 [{"PluginId", "Category", "ItemId"}]
       80 LOADK                            R12 K30 ["MainWindow"]
       81 SETTABLEKS                       R12 R11 K20 ["PluginId"]
       83 LOADK                            R12 K31 ["Widgets"]
       84 SETTABLEKS                       R12 R11 K21 ["Category"]
       86 LOADK                            R12 K32 ["Main"]
       87 SETTABLEKS                       R12 R11 K22 ["ItemId"]
       89 GETTABLEKS                       R12 R1 K33 ["PureComponent"]
       91 LOADK                            R14 K34 ["PlayRoot"]
       92 NAMECALL                         R12 R12 K35 ["extend"]
       94 CALL                             R12 2 1
       95 DUPCLOSURE                       R13 K36 [PROTO_0]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R13 R12 K37 ["init"]
      102 DUPCLOSURE                       R13 K38 [PROTO_2]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R13 R12 K39 ["didMount"]
      107 DUPCLOSURE                       R13 K40 [PROTO_3]
      108 SETTABLEKS                       R13 R12 K41 ["willUnmount"]
      110 DUPCLOSURE                       R13 K42 [PROTO_7]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R9
      116 SETTABLEKS                       R13 R12 K43 ["render"]
      118 RETURN                           R12 1
