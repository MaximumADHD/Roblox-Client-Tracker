PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TutorialService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetSessionId"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K1 ["GetClientId"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R4 R4 K2 ["GetMainViewSessionId"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K3 ["tutorial"]
       15 NAMECALL                         R5 R5 K4 ["getCurrentStep"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K5 ["telemetry"]
       21 MOVE                             R8 R0
       22 LOADNIL                          R9
       23 GETUPVAL                         R10 3
       24 DUPTABLE                         R11 K12 [{"tutorialId", "currentStep", "stepId", "studioSid", "clientId", "mainViewSessionId"}]
       25 GETUPVAL                         R15 2
       26 GETTABLEKS                       R14 R15 K3 ["tutorial"]
       28 GETTABLEKS                       R13 R14 K13 ["data"]
       30 GETTABLEKS                       R12 R13 K14 ["id"]
       32 SETTABLEKS                       R12 R11 K6 ["tutorialId"]
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R13 R14 K3 ["tutorial"]
       37 GETTABLEKS                       R12 R13 K7 ["currentStep"]
       39 SETTABLEKS                       R12 R11 K7 ["currentStep"]
       41 GETTABLEKS                       R13 R5 K13 ["data"]
       43 GETTABLEKS                       R12 R13 K14 ["id"]
       45 SETTABLEKS                       R12 R11 K8 ["stepId"]
       47 SETTABLEKS                       R2 R11 K9 ["studioSid"]
       49 SETTABLEKS                       R3 R11 K10 ["clientId"]
       51 SETTABLEKS                       R4 R11 K11 ["mainViewSessionId"]
       53 MOVE                             R12 R1
       54 CALL                             R10 2 -1
       55 NAMECALL                         R6 R6 K15 ["logRobloxTelemetryEvent"]
       57 CALL                             R6 -1 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tutorial"]
        3 NAMECALL                         R0 R0 K1 ["back"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tutorial"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["state"]
        6 GETTABLEKS                       R4 R5 K2 ["tutorialData"]
        8 GETTABLEKS                       R3 R4 K3 ["showNext"]
       10 NOT                              R2 R3
       11 NAMECALL                         R0 R0 K4 ["increment"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+33]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKS                    R0 K0 ["RibbonWalkthrough"] ; [+26]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["HideSpotlight"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K2 ["props"]
       12 GETTABLEKS                       R0 R1 K3 ["Plugin"]
       14 LOADK                            R3 K4 ["Spotlight"]
       15 NAMECALL                         R1 R0 K5 ["GetPluginComponent"]
       17 CALL                             R1 2 1
       18 NAMECALL                         R2 R1 K6 ["HideSpotlightAsync"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 DUPTABLE                         R4 K8 [{"isTutorialHidden"}]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K7 ["isTutorialHidden"]
       26 NAMECALL                         R2 R2 K9 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 4
       31 NAMECALL                         R0 R0 K10 ["PromptClosePlace"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 4
       36 NAMECALL                         R0 R0 K10 ["PromptClosePlace"]
       38 CALL                             R0 1 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["tutorial"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["selectTopic"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K7 [{"tutorialData", "tutorialDialogEnabled", "completed", "completedDialogEnabled", "pressedKeys", "widget", "isTutorialHidden"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["tutorialData"]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["tutorialDialogEnabled"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["completed"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["completedDialogEnabled"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K4 ["pressedKeys"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["widget"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K6 ["isTutorialHidden"]
       23 SETTABLEKS                       R2 R0 K8 ["state"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K9 ["Store"]
       28 GETTABLEKS                       R2 R3 K10 ["new"]
       30 GETUPVAL                         R3 1
       31 LOADNIL                          R4
       32 NEWTABLE                         R5 0 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K11 ["thunkMiddleware"]
       37 SETLIST                          R5 R6 1 [1]
       39 LOADNIL                          R6
       40 CALL                             R2 4 1
       41 SETTABLEKS                       R2 R0 K12 ["store"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K10 ["new"]
       46 CALL                             R2 0 1
       47 SETTABLEKS                       R2 R0 K13 ["telemetry"]
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R3 R4 K14 ["Localization"]
       52 GETTABLEKS                       R2 R3 K10 ["new"]
       54 DUPTABLE                         R3 K19 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
       55 GETUPVAL                         R4 4
       56 SETTABLEKS                       R4 R3 K15 ["stringResourceTable"]
       58 GETUPVAL                         R4 5
       59 SETTABLEKS                       R4 R3 K16 ["translationResourceTable"]
       61 LOADK                            R4 K20 ["Tutorials"]
       62 SETTABLEKS                       R4 R3 K17 ["pluginName"]
       64 NEWTABLE                         R4 1 0
       66 GETUPVAL                         R7 6
       67 GETTABLEKS                       R6 R7 K21 ["Resources"]
       69 GETTABLEKS                       R5 R6 K22 ["LOCALIZATION_PROJECT_NAME"]
       71 DUPTABLE                         R6 K23 [{"stringResourceTable", "translationResourceTable"}]
       72 GETUPVAL                         R9 6
       73 GETTABLEKS                       R8 R9 K21 ["Resources"]
       75 GETTABLEKS                       R7 R8 K24 ["SourceStrings"]
       77 SETTABLEKS                       R7 R6 K15 ["stringResourceTable"]
       79 GETUPVAL                         R9 6
       80 GETTABLEKS                       R8 R9 K21 ["Resources"]
       82 GETTABLEKS                       R7 R8 K25 ["LocalizedStrings"]
       84 SETTABLEKS                       R7 R6 K16 ["translationResourceTable"]
       86 SETTABLE                         R6 R4 R5
       87 SETTABLEKS                       R4 R3 K18 ["libraries"]
       89 CALL                             R2 1 1
       90 SETTABLEKS                       R2 R0 K26 ["localization"]
       92 GETUPVAL                         R4 3
       93 GETTABLEKS                       R3 R4 K27 ["Analytics"]
       95 GETTABLEKS                       R2 R3 K10 ["new"]
       97 DUPCLOSURE                       R3 K28 [PROTO_1]
       98 NEWTABLE                         R4 0 0
      100 CALL                             R2 2 1
      101 SETTABLEKS                       R2 R0 K29 ["analytics"]
      103 NEWCLOSURE                       R2 P1
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U9
      108 SETTABLEKS                       R2 R0 K30 ["log"]
      110 GETUPVAL                         R3 10
      111 GETTABLEKS                       R2 R3 K10 ["new"]
      113 LOADK                            R3 K31 ["Toolbox"]
      114 CALL                             R2 1 1
      115 SETTABLEKS                       R2 R0 K32 ["toolboxConnection"]
      117 LOADNIL                          R2
      118 GETUPVAL                         R3 11
      119 JUMPIFNOT                        R3 ; [+9]
      120 GETUPVAL                         R3 12
      121 NAMECALL                         R3 R3 K33 ["ShouldLaunchTutorial"]
      123 CALL                             R3 1 1
      124 JUMPIFNOT                        R3 ; [+2]
      125 LOADK                            R2 K34 ["StudioTour3"]
      126 JUMP                             ; [+3]
      127 LOADK                            R2 K35 ["RibbonWalkthrough"]
      128 JUMP                             ; [+1]
      129 LOADK                            R2 K34 ["StudioTour3"]
      130 GETUPVAL                         R5 13
      131 GETTABLEKS                       R4 R5 K36 ["Src"]
      133 GETTABLEKS                       R3 R4 K20 ["Tutorials"]
      135 MOVE                             R5 R2
      136 NAMECALL                         R3 R3 K37 ["FindFirstChild"]
      138 CALL                             R3 2 1
      139 JUMPIFNOT                        R3 ; [+29]
      140 LOADK                            R6 K38 ["ModuleScript"]
      141 NAMECALL                         R4 R3 K39 ["IsA"]
      143 CALL                             R4 2 1
      144 JUMPIFNOT                        R4 ; [+24]
      145 GETIMPORT                        R4 K41 [require]
      147 MOVE                             R5 R3
      148 CALL                             R4 1 1
      149 GETUPVAL                         R6 14
      150 GETTABLEKS                       R5 R6 K10 ["new"]
      152 GETIMPORT                        R6 K43 [game]
      154 MOVE                             R7 R4
      155 GETTABLEKS                       R8 R0 K26 ["localization"]
      157 GETTABLEKS                       R9 R0 K32 ["toolboxConnection"]
      159 GETTABLEKS                       R10 R1 K44 ["Plugin"]
      161 CALL                             R5 5 1
      162 SETTABLEKS                       R5 R0 K45 ["tutorial"]
      164 GETTABLEKS                       R7 R0 K45 ["tutorial"]
      166 NAMECALL                         R5 R0 K46 ["loadTutorial"]
      168 CALL                             R5 2 0
      169 NEWCLOSURE                       R4 P2
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R4 R0 K47 ["onBack"]
      173 NEWCLOSURE                       R4 P3
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R4 R0 K48 ["onNext"]
      177 NEWCLOSURE                       R4 P4
      178 CAPTURE                          UPVAL U11
      179 CAPTURE                          REF R2
      180 CAPTURE                          UPVAL U15
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U8
      183 SETTABLEKS                       R4 R0 K49 ["onQuit"]
      185 NEWCLOSURE                       R4 P5
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R4 R0 K50 ["onSelectTopic"]
      189 CLOSEUPVALS                      R2
      190 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SendPlayStep"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["state"]
        5 GETTABLEKS                       R3 R4 K2 ["tutorialData"]
        7 NAMECALL                         R0 R0 K3 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETTABLEKS                       R2 R0 K1 ["state"]
        5 GETTABLEKS                       R1 R2 K2 ["widget"]
        7 JUMPIF                           R1 ; [+15]
        8 NAMECALL                         R1 R0 K3 ["createWidget"]
       10 CALL                             R1 1 1
       11 DUPTABLE                         R4 K4 [{"widget"}]
       12 SETTABLEKS                       R1 R4 K2 ["widget"]
       14 NAMECALL                         R2 R0 K5 ["setState"]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K0 ["tutorial"]
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R2 K6 ["setWidget"]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K7 ["props"]
       25 GETTABLEKS                       R1 R2 K8 ["Plugin"]
       27 LOADK                            R4 K9 ["GetPlayStep"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R2 R1 K10 ["OnInvoke"]
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R0 K11 ["connection"]
       36 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 LOADK                            R3 K2 ["TourWidget"]
        5 DUPTABLE                         R4 K9 [{"Callout", "MinSize", "Modal", "InitialEnabled", "Size", "Title"}]
        6 LOADB                            R5 1
        7 SETTABLEKS                       R5 R4 K3 ["Callout"]
        9 GETIMPORT                        R5 K12 [Vector2.new]
       11 LOADN                            R6 19
       12 LOADN                            R7 94
       13 CALL                             R5 2 1
       14 SETTABLEKS                       R5 R4 K4 ["MinSize"]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K5 ["Modal"]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K6 ["InitialEnabled"]
       22 GETIMPORT                        R5 K12 [Vector2.new]
       24 LOADN                            R6 19
       25 LOADN                            R7 94
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K7 ["Size"]
       29 LOADK                            R5 K2 ["TourWidget"]
       30 SETTABLEKS                       R5 R4 K8 ["Title"]
       32 NAMECALL                         R1 R1 K13 ["CreateQWidgetPluginGui"]
       34 CALL                             R1 3 1
       35 LOADK                            R2 K2 ["TourWidget"]
       36 SETTABLEKS                       R2 R1 K14 ["Name"]
       38 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"completed", "completedDialogEnabled"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["completed"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOT                        R5 ; [+2]
        7 MOVE                             R4 R0
        8 JUMP                             ; [+1]
        9 LOADNIL                          R4
       10 SETTABLEKS                       R4 R3 K1 ["completedDialogEnabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 DUPTABLE                         R3 K4 [{"key", "index", "pressed"}]
        3 GETTABLEKS                       R4 R1 K0 ["Name"]
        5 SETTABLEKS                       R4 R3 K1 ["key"]
        7 SETTABLEKS                       R0 R3 K2 ["index"]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K3 ["pressed"]
       12 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["None"]
        3 GETTABLEKS                       R3 R0 K1 ["step"]
        5 GETTABLEKS                       R2 R3 K2 ["kind"]
        7 JUMPIFNOTEQKS                    R2 K3 ["Focus"] ; [+17]
        9 NEWTABLE                         R2 0 1
       11 DUPTABLE                         R3 K7 [{"key", "index", "pressed"}]
       12 LOADK                            R4 K8 ["F"]
       13 SETTABLEKS                       R4 R3 K4 ["key"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["index"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K6 ["pressed"]
       21 SETLIST                          R2 R3 1 [1]
       23 MOVE                             R1 R2
       24 JUMP                             ; [+13]
       25 GETTABLEKS                       R3 R0 K1 ["step"]
       27 GETTABLEKS                       R2 R3 K9 ["keys"]
       29 JUMPIFNOT                        R2 ; [+8]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R4 R0 K1 ["step"]
       33 GETTABLEKS                       R3 R4 K9 ["keys"]
       35 DUPCLOSURE                       R4 K10 [PROTO_13]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 GETUPVAL                         R2 2
       39 DUPTABLE                         R4 K13 [{"tutorialData", "pressedKeys"}]
       40 SETTABLEKS                       R0 R4 K11 ["tutorialData"]
       42 SETTABLEKS                       R1 R4 K12 ["pressedKeys"]
       44 NAMECALL                         R2 R2 K14 ["setState"]
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R3 R0 K1 ["step"]
       49 GETTABLEKS                       R2 R3 K2 ["kind"]
       51 JUMPIFNOTEQKS                    R2 K15 ["Skipped"] ; [+7]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R2 R3 K16 ["log"]
       56 GETUPVAL                         R3 3
       57 CALL                             R2 1 0
       58 JUMP                             ; [+17]
       59 GETTABLEKS                       R3 R0 K1 ["step"]
       61 GETTABLEKS                       R2 R3 K2 ["kind"]
       63 JUMPIFNOTEQKS                    R2 K17 ["Completed"] ; [+7]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R2 R3 K16 ["log"]
       68 GETUPVAL                         R3 4
       69 CALL                             R2 1 0
       70 JUMP                             ; [+5]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R2 R3 K16 ["log"]
       74 GETUPVAL                         R3 5
       75 CALL                             R2 1 0
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R3 R4 K18 ["props"]
       79 GETTABLEKS                       R2 R3 K19 ["Plugin"]
       81 LOADK                            R5 K20 ["SendPlayStep"]
       82 MOVE                             R6 R0
       83 NAMECALL                         R3 R2 K21 ["Invoke"]
       85 CALL                             R3 3 0
       86 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["pressedKeys"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 DUPTABLE                         R2 K1 [{"pressedKeys"}]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R1
        8 NEWTABLE                         R5 1 0
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K2 ["Name"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K2 ["Name"]
       16 GETTABLE                         R8 R1 R9
       17 JUMPIFNOT                        R8 ; [+11]
       18 GETUPVAL                         R7 0
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R9 R10 K2 ["Name"]
       22 GETTABLE                         R8 R1 R9
       23 DUPTABLE                         R9 K4 [{"pressed"}]
       24 LOADB                            R10 1
       25 SETTABLEKS                       R10 R9 K3 ["pressed"]
       27 CALL                             R7 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLE                         R7 R5 R6
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R2 K0 ["pressedKeys"]
       34 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"action", "actionKeyCode"}]
        5 LOADK                            R4 K4 ["KeyPress"]
        6 SETTABLEKS                       R4 R3 K1 ["action"]
        8 GETTABLEKS                       R4 R0 K5 ["Name"]
       10 SETTABLEKS                       R4 R3 K2 ["actionKeyCode"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R1 R1 K6 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayClient]
        5 JUMPIFNOTEQ                      R0 R1 ; [+19]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K5 ["startPlaying"]
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K5 ["startPlaying"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K6 ["log"]
       18 GETUPVAL                         R1 3
       19 DUPTABLE                         R2 K8 [{"action"}]
       20 LOADK                            R3 K9 ["StartPlaytest"]
       21 SETTABLEKS                       R3 R2 K7 ["action"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
       28 GETIMPORT                        R1 K11 [Enum.StudioDataModelType.Edit]
       30 JUMPIFNOTEQ                      R0 R1 ; [+18]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R0 R1 K12 ["stopPlaying"]
       35 JUMPIFNOT                        R0 ; [+13]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K12 ["stopPlaying"]
       39 CALL                             R0 0 0
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R0 R1 K6 ["log"]
       43 GETUPVAL                         R1 3
       44 DUPTABLE                         R2 K8 [{"action"}]
       45 LOADK                            R3 K13 ["StopPlaytest"]
       46 SETTABLEKS                       R3 R2 K7 ["action"]
       48 CALL                             R0 2 0
       49 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["callouts"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 NAMECALL                         R5 R3 K3 ["Destroy"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 1 ; [-4]
       12 RETURN                           R0 0

PROTO_19:
        0 JUMPIFEQKS                       R0 K0 ["Color"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Material"] ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["log"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K5 [{"action", "actionKeyCode"}]
        9 LOADK                            R4 K6 ["ChangeProperty"]
       10 SETTABLEKS                       R4 R3 K3 ["action"]
       12 SETTABLEKS                       R0 R3 K4 ["actionKeyCode"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"action", "actionKeyCode"}]
        5 LOADK                            R4 K4 ["InsertObject"]
        6 SETTABLEKS                       R4 R3 K1 ["action"]
        8 GETTABLEKS                       R4 R0 K5 ["ClassName"]
       10 SETTABLEKS                       R4 R3 K2 ["actionKeyCode"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K6 ["Changed"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R1 R1 K7 ["Connect"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R3 R1 K1 ["onCompleted"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 SETTABLEKS                       R3 R1 K2 ["onStepChanged"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 SETTABLEKS                       R3 R1 K3 ["onKeyPressed"]
       22 GETTABLEKS                       R4 R2 K4 ["Plugin"]
       24 GETTABLEKS                       R3 R4 K5 ["MultipleDocumentInterfaceInstance"]
       26 GETTABLEKS                       R4 R3 K6 ["FocusedDataModelSession"]
       28 GETTABLEKS                       R5 R4 K7 ["CurrentDataModelTypeChanged"]
       30 NEWCLOSURE                       R7 P3
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U8
       35 NAMECALL                         R5 R5 K8 ["Connect"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R0 K9 ["connection"]
       40 GETTABLEKS                       R6 R2 K4 ["Plugin"]
       42 GETTABLEKS                       R5 R6 K10 ["Unloading"]
       44 NEWCLOSURE                       R7 P4
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R5 R5 K8 ["Connect"]
       48 CALL                             R5 2 0
       49 NAMECALL                         R5 R1 K11 ["start"]
       51 CALL                             R5 1 0
       52 GETTABLEKS                       R6 R0 K12 ["tutorial"]
       54 GETTABLEKS                       R5 R6 K13 ["dataModel"]
       56 LOADK                            R8 K14 ["Workspace"]
       57 NAMECALL                         R6 R5 K15 ["GetService"]
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R7 R6 K16 ["ChildAdded"]
       62 NEWCLOSURE                       R9 P5
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U8
       65 NAMECALL                         R7 R7 K8 ["Connect"]
       67 CALL                             R7 2 0
       68 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"completedDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["completedDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"completedDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["completedDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"completedDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["completedDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K3 ["PromptClosePlace"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["props"]
        7 GETTABLEKS                       R2 R0 K2 ["state"]
        9 GETTABLEKS                       R3 R1 K3 ["Plugin"]
       11 GETTABLEKS                       R4 R2 K4 ["completed"]
       13 GETTABLEKS                       R5 R2 K5 ["completedDialogEnabled"]
       15 GETTABLEKS                       R6 R0 K6 ["localization"]
       17 GETTABLEKS                       R10 R0 K0 ["tutorial"]
       19 GETTABLEKS                       R9 R10 K7 ["data"]
       21 GETTABLEKS                       R8 R9 K8 ["id"]
       23 LOADK                            R9 K9 ["Title"]
       24 NAMECALL                         R6 R6 K10 ["getText"]
       26 CALL                             R6 3 1
       27 GETTABLEKS                       R8 R2 K11 ["widget"]
       29 JUMPIFNOT                        R8 ; [+37]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K12 ["createElement"]
       33 GETUPVAL                         R8 1
       34 DUPTABLE                         R9 K20 [{"OnBack", "OnNext", "OnQuit", "OnSelectTopic", "Plugin", "PressedKeys", "StepData", "Widget"}]
       35 GETTABLEKS                       R10 R0 K21 ["onBack"]
       37 SETTABLEKS                       R10 R9 K13 ["OnBack"]
       39 GETTABLEKS                       R10 R0 K22 ["onNext"]
       41 SETTABLEKS                       R10 R9 K14 ["OnNext"]
       43 GETTABLEKS                       R10 R0 K23 ["onQuit"]
       45 SETTABLEKS                       R10 R9 K15 ["OnQuit"]
       47 GETTABLEKS                       R10 R0 K24 ["onSelectTopic"]
       49 SETTABLEKS                       R10 R9 K16 ["OnSelectTopic"]
       51 SETTABLEKS                       R3 R9 K3 ["Plugin"]
       53 GETTABLEKS                       R10 R2 K25 ["pressedKeys"]
       55 SETTABLEKS                       R10 R9 K17 ["PressedKeys"]
       57 GETTABLEKS                       R10 R2 K26 ["tutorialData"]
       59 SETTABLEKS                       R10 R9 K18 ["StepData"]
       61 GETTABLEKS                       R10 R2 K11 ["widget"]
       63 SETTABLEKS                       R10 R9 K19 ["Widget"]
       65 CALL                             R7 2 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R8 R9 K27 ["provide"]
       71 NEWTABLE                         R9 0 6
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R11 R12 K3 ["Plugin"]
       76 GETTABLEKS                       R10 R11 K28 ["new"]
       78 MOVE                             R11 R3
       79 CALL                             R10 1 1
       80 GETUPVAL                         R12 3
       81 GETTABLEKS                       R11 R12 K28 ["new"]
       83 GETTABLEKS                       R12 R0 K29 ["store"]
       85 CALL                             R11 1 1
       86 GETUPVAL                         R13 4
       87 GETTABLEKS                       R12 R13 K28 ["new"]
       89 NAMECALL                         R13 R3 K30 ["getMouse"]
       91 CALL                             R13 1 -1
       92 CALL                             R12 -1 1
       93 GETUPVAL                         R13 5
       94 CALL                             R13 0 1
       95 GETTABLEKS                       R14 R0 K6 ["localization"]
       97 GETTABLEKS                       R15 R0 K31 ["analytics"]
       99 SETLIST                          R9 R10 6 [1]
      101 DUPTABLE                         R10 K33 [{"View"}]
      102 JUMPIFNOT                        R5 ; [+52]
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R11 R12 K12 ["createElement"]
      106 GETUPVAL                         R12 6
      107 DUPTABLE                         R13 K38 [{"Title", "Enabled", "Modal", "Size", "OnClose"}]
      108 GETTABLEKS                       R14 R0 K6 ["localization"]
      110 LOADK                            R16 K39 ["Completed"]
      111 LOADK                            R17 K9 ["Title"]
      112 NAMECALL                         R14 R14 K10 ["getText"]
      114 CALL                             R14 3 1
      115 MOVE                             R16 R6
      116 NAMECALL                         R14 R14 K40 ["format"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K9 ["Title"]
      121 SETTABLEKS                       R5 R13 K34 ["Enabled"]
      123 LOADB                            R14 1
      124 SETTABLEKS                       R14 R13 K35 ["Modal"]
      126 GETUPVAL                         R14 7
      127 SETTABLEKS                       R14 R13 K36 ["Size"]
      129 NEWCLOSURE                       R14 P0
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R14 R13 K37 ["OnClose"]
      133 DUPTABLE                         R14 K42 [{"Content"}]
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R15 R16 K12 ["createElement"]
      137 GETUPVAL                         R16 8
      138 DUPTABLE                         R17 K45 [{"Name", "OnClose", "OnReturn"}]
      139 SETTABLEKS                       R6 R17 K43 ["Name"]
      141 NEWCLOSURE                       R18 P1
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R18 R17 K37 ["OnClose"]
      145 NEWCLOSURE                       R18 P2
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U9
      148 SETTABLEKS                       R18 R17 K44 ["OnReturn"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K41 ["Content"]
      153 CALL                             R11 3 1
      154 JUMP                             ; [+14]
      155 GETUPVAL                         R12 10
      156 JUMPIFNOT                        R12 ; [+6]
      157 JUMPIF                           R4 ; [+5]
      158 GETTABLEKS                       R12 R2 K46 ["isTutorialHidden"]
      160 JUMPIF                           R12 ; [+2]
      161 MOVE                             R11 R7
      162 JUMP                             ; [+6]
      163 GETUPVAL                         R12 10
      164 JUMPIF                           R12 ; [+3]
      165 JUMPIF                           R4 ; [+2]
      166 MOVE                             R11 R7
      167 JUMP                             ; [+1]
      168 LOADNIL                          R11
      169 SETTABLEKS                       R11 R10 K32 ["View"]
      171 CALL                             R8 2 -1
      172 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [pcall]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R3 1 2
       27 JUMPIFNOT                        R3 ; [+2]
       28 MOVE                             R5 R4
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 GETIMPORT                        R6 K12 [game]
       33 LOADK                            R8 K13 ["RbxAnalyticsService"]
       34 NAMECALL                         R6 R6 K14 ["GetService"]
       36 CALL                             R6 2 1
       37 GETIMPORT                        R7 K12 [game]
       39 LOADK                            R9 K15 ["StudioWidgetsService"]
       40 NAMECALL                         R7 R7 K14 ["GetService"]
       42 CALL                             R7 2 1
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R10 R0 K5 ["Packages"]
       47 GETTABLEKS                       R9 R10 K16 ["Dash"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R8 K17 ["join"]
       52 GETTABLEKS                       R10 R8 K18 ["collect"]
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R13 R0 K5 ["Packages"]
       58 GETTABLEKS                       R12 R13 K19 ["Framework"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R11 K20 ["UI"]
       63 GETTABLEKS                       R13 R12 K21 ["Dialog"]
       65 GETTABLEKS                       R15 R11 K22 ["Util"]
       67 GETTABLEKS                       R14 R15 K23 ["CrossPluginCommunication"]
       69 GETTABLEKS                       R15 R11 K24 ["ContextServices"]
       71 GETTABLEKS                       R16 R15 K25 ["Mouse"]
       73 GETTABLEKS                       R17 R15 K26 ["Store"]
       75 GETIMPORT                        R18 K4 [require]
       77 GETTABLEKS                       R22 R0 K27 ["Src"]
       79 GETTABLEKS                       R21 R22 K22 ["Util"]
       81 GETTABLEKS                       R20 R21 K28 ["Telemetry"]
       83 GETTABLEKS                       R19 R20 K29 ["TelemetryProtocol"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETTABLEKS                       R23 R0 K27 ["Src"]
       90 GETTABLEKS                       R22 R23 K22 ["Util"]
       92 GETTABLEKS                       R21 R22 K28 ["Telemetry"]
       94 GETTABLEKS                       R20 R21 K30 ["SkipStep"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K4 [require]
       99 GETTABLEKS                       R24 R0 K27 ["Src"]
      101 GETTABLEKS                       R23 R24 K22 ["Util"]
      103 GETTABLEKS                       R22 R23 K28 ["Telemetry"]
      105 GETTABLEKS                       R21 R22 K31 ["StartStep"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K4 [require]
      110 GETTABLEKS                       R25 R0 K27 ["Src"]
      112 GETTABLEKS                       R24 R25 K22 ["Util"]
      114 GETTABLEKS                       R23 R24 K28 ["Telemetry"]
      116 GETTABLEKS                       R22 R23 K32 ["CompleteStep"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K4 [require]
      121 GETTABLEKS                       R26 R0 K27 ["Src"]
      123 GETTABLEKS                       R25 R26 K22 ["Util"]
      125 GETTABLEKS                       R24 R25 K28 ["Telemetry"]
      127 GETTABLEKS                       R23 R24 K33 ["IntermediateStep"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K4 [require]
      132 GETTABLEKS                       R27 R0 K27 ["Src"]
      134 GETTABLEKS                       R26 R27 K22 ["Util"]
      136 GETTABLEKS                       R25 R26 K28 ["Telemetry"]
      138 GETTABLEKS                       R24 R25 K34 ["ExtraAction"]
      140 CALL                             R23 1 1
      141 GETIMPORT                        R24 K4 [require]
      143 GETTABLEKS                       R28 R0 K27 ["Src"]
      145 GETTABLEKS                       R27 R28 K22 ["Util"]
      147 GETTABLEKS                       R26 R27 K28 ["Telemetry"]
      149 GETTABLEKS                       R25 R26 K35 ["TelemetryProtocolTypes"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K38 [Vector2.new]
      154 LOADN                            R26 204
      155 LOADN                            R27 44
      156 CALL                             R25 2 1
      157 GETTABLEKS                       R29 R0 K27 ["Src"]
      159 GETTABLEKS                       R28 R29 K39 ["Resources"]
      161 GETTABLEKS                       R27 R28 K40 ["Localization"]
      163 GETTABLEKS                       R26 R27 K41 ["SourceStrings"]
      165 GETTABLEKS                       R30 R0 K27 ["Src"]
      167 GETTABLEKS                       R29 R30 K39 ["Resources"]
      169 GETTABLEKS                       R28 R29 K40 ["Localization"]
      171 GETTABLEKS                       R27 R28 K42 ["LocalizedStrings"]
      173 GETIMPORT                        R28 K4 [require]
      175 GETTABLEKS                       R31 R0 K27 ["Src"]
      177 GETTABLEKS                       R30 R31 K43 ["Reducers"]
      179 GETTABLEKS                       R29 R30 K44 ["MainReducer"]
      181 CALL                             R28 1 1
      182 GETIMPORT                        R29 K4 [require]
      184 GETTABLEKS                       R32 R0 K27 ["Src"]
      186 GETTABLEKS                       R31 R32 K39 ["Resources"]
      188 GETTABLEKS                       R30 R31 K45 ["MakeTheme"]
      190 CALL                             R29 1 1
      191 GETIMPORT                        R30 K4 [require]
      193 GETTABLEKS                       R33 R0 K27 ["Src"]
      195 GETTABLEKS                       R32 R33 K22 ["Util"]
      197 GETTABLEKS                       R31 R32 K46 ["Tutorial"]
      199 CALL                             R30 1 1
      200 GETTABLEKS                       R32 R0 K27 ["Src"]
      202 GETTABLEKS                       R31 R32 K47 ["Components"]
      204 GETIMPORT                        R32 K4 [require]
      206 GETTABLEKS                       R33 R31 K48 ["CompletedTutorialDialog"]
      208 CALL                             R32 1 1
      209 GETIMPORT                        R33 K4 [require]
      211 GETTABLEKS                       R34 R31 K49 ["TourWidget"]
      213 CALL                             R33 1 1
      214 GETIMPORT                        R34 K4 [require]
      216 GETTABLEKS                       R37 R0 K27 ["Src"]
      218 GETTABLEKS                       R36 R37 K50 ["Flags"]
      220 GETTABLEKS                       R35 R36 K51 ["getFFlagEnableRibbonTour"]
      222 CALL                             R34 1 1
      223 CALL                             R34 0 1
      224 GETTABLEKS                       R35 R1 K52 ["PureComponent"]
      226 LOADK                            R37 K53 ["AssetRoot"]
      227 NAMECALL                         R35 R35 K54 ["extend"]
      229 CALL                             R35 2 1
      230 DUPCLOSURE                       R36 K55 [PROTO_7]
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R34
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R30
      246 CAPTURE                          VAL R7
      247 SETTABLEKS                       R36 R35 K56 ["init"]
      249 DUPCLOSURE                       R36 K57 [PROTO_9]
      250 SETTABLEKS                       R36 R35 K58 ["didMount"]
      252 DUPCLOSURE                       R36 K59 [PROTO_10]
      253 SETTABLEKS                       R36 R35 K60 ["createWidget"]
      255 DUPCLOSURE                       R36 K61 [PROTO_11]
      256 SETTABLEKS                       R36 R35 K62 ["willUnmount"]
      258 DUPCLOSURE                       R36 K63 [PROTO_21]
      259 CAPTURE                          VAL R34
      260 CAPTURE                          VAL R1
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R19
      263 CAPTURE                          VAL R21
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R22
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R23
      268 SETTABLEKS                       R36 R35 K64 ["loadTutorial"]
      270 DUPCLOSURE                       R36 K65 [PROTO_25]
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R33
      273 CAPTURE                          VAL R15
      274 CAPTURE                          VAL R17
      275 CAPTURE                          VAL R16
      276 CAPTURE                          VAL R29
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R32
      280 CAPTURE                          VAL R5
      281 CAPTURE                          VAL R34
      282 SETTABLEKS                       R36 R35 K66 ["render"]
      284 RETURN                           R35 1
