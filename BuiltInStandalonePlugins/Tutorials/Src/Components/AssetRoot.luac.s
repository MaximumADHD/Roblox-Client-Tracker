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
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["tutorial"]
       15 NAMECALL                         R5 R5 K4 ["getCurrentStep"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["telemetry"]
       21 MOVE                             R8 R0
       22 LOADNIL                          R9
       23 GETUPVAL                         R10 3
       24 DUPTABLE                         R11 K12 [{"tutorialId", "currentStep", "stepId", "studioSid", "clientId", "mainViewSessionId"}]
       25 GETUPVAL                         R12 2
       26 GETTABLEKS                       R12 R12 K3 ["tutorial"]
       28 GETTABLEKS                       R12 R12 K13 ["data"]
       30 GETTABLEKS                       R12 R12 K14 ["id"]
       32 SETTABLEKS                       R12 R11 K6 ["tutorialId"]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K3 ["tutorial"]
       37 GETTABLEKS                       R12 R12 K7 ["currentStep"]
       39 SETTABLEKS                       R12 R11 K7 ["currentStep"]
       41 GETTABLEKS                       R12 R5 K13 ["data"]
       43 GETTABLEKS                       R12 R12 K14 ["id"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tutorial"]
        3 NAMECALL                         R0 R0 K1 ["back"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tutorial"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["tutorialData"]
        8 GETTABLEKS                       R3 R3 K3 ["showNext"]
       10 NOT                              R2 R3
       11 NAMECALL                         R0 R0 K4 ["increment"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKS                    R0 K0 ["RibbonWalkthrough"] ; [+23]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["HideSpotlight"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K2 ["props"]
       12 GETTABLEKS                       R0 R0 K3 ["Plugin"]
       14 LOADK                            R3 K4 ["Spotlight"]
       15 NAMECALL                         R1 R0 K5 ["GetPluginComponent"]
       17 CALL                             R1 2 1
       18 NAMECALL                         R2 R1 K6 ["HideSpotlightAsync"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 DUPTABLE                         R4 K9 [{["isTutorialHidden"] = True}]
       23 NAMECALL                         R2 R2 K10 ["setState"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 4
       28 NAMECALL                         R0 R0 K11 ["PromptClosePlace"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R0 4
       33 NAMECALL                         R0 R0 K11 ["PromptClosePlace"]
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tutorial"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["selectTopic"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K10 [{[1] = , ["tutorialDialogEnabled"] = True, ["completed"] = False, ["completedDialogEnabled"] = False, ["pressedKeys"], ["widget"] = , ["isTutorialHidden"] = False}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K7 ["pressedKeys"]
        5 SETTABLEKS                       R2 R0 K11 ["state"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K12 ["Store"]
       10 GETTABLEKS                       R2 R2 K13 ["new"]
       12 GETUPVAL                         R3 1
       13 LOADNIL                          R4
       14 NEWTABLE                         R5 0 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K14 ["thunkMiddleware"]
       19 SETLIST                          R5 R6 1 [1]
       21 LOADNIL                          R6
       22 CALL                             R2 4 1
       23 SETTABLEKS                       R2 R0 K15 ["store"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K13 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R0 K16 ["telemetry"]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K17 ["Localization"]
       34 GETTABLEKS                       R2 R2 K13 ["new"]
       36 DUPTABLE                         R3 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Tutorials", ["libraries"]}]
       37 GETUPVAL                         R4 4
       38 SETTABLEKS                       R4 R3 K18 ["stringResourceTable"]
       40 GETUPVAL                         R4 5
       41 SETTABLEKS                       R4 R3 K19 ["translationResourceTable"]
       43 NEWTABLE                         R4 1 0
       45 GETUPVAL                         R5 6
       46 GETTABLEKS                       R5 R5 K24 ["Resources"]
       48 GETTABLEKS                       R5 R5 K25 ["LOCALIZATION_PROJECT_NAME"]
       50 DUPTABLE                         R6 K26 [{"stringResourceTable", "translationResourceTable"}]
       51 GETUPVAL                         R7 6
       52 GETTABLEKS                       R7 R7 K24 ["Resources"]
       54 GETTABLEKS                       R7 R7 K27 ["SourceStrings"]
       56 SETTABLEKS                       R7 R6 K18 ["stringResourceTable"]
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R7 R7 K24 ["Resources"]
       61 GETTABLEKS                       R7 R7 K28 ["LocalizedStrings"]
       63 SETTABLEKS                       R7 R6 K19 ["translationResourceTable"]
       65 SETTABLE                         R6 R4 R5
       66 SETTABLEKS                       R4 R3 K22 ["libraries"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K29 ["localization"]
       71 GETUPVAL                         R2 3
       72 GETTABLEKS                       R2 R2 K30 ["Analytics"]
       74 GETTABLEKS                       R2 R2 K13 ["new"]
       76 DUPCLOSURE                       R3 K31 [PROTO_1]
       77 NEWTABLE                         R4 0 0
       79 CALL                             R2 2 1
       80 SETTABLEKS                       R2 R0 K32 ["analytics"]
       82 NEWCLOSURE                       R2 P1
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U9
       87 SETTABLEKS                       R2 R0 K33 ["log"]
       89 GETUPVAL                         R2 10
       90 GETTABLEKS                       R2 R2 K13 ["new"]
       92 LOADK                            R3 K34 ["Toolbox"]
       93 CALL                             R2 1 1
       94 SETTABLEKS                       R2 R0 K35 ["toolboxConnection"]
       96 LOADNIL                          R2
       97 GETUPVAL                         R3 11
       98 JUMPIFNOT                        R3 ; [+9]
       99 GETUPVAL                         R3 12
      100 NAMECALL                         R3 R3 K36 ["ShouldLaunchTutorial"]
      102 CALL                             R3 1 1
      103 JUMPIFNOT                        R3 ; [+2]
      104 LOADK                            R2 K37 ["StudioTour3"]
      105 JUMP                             ; [+3]
      106 LOADK                            R2 K38 ["RibbonWalkthrough"]
      107 JUMP                             ; [+1]
      108 LOADK                            R2 K37 ["StudioTour3"]
      109 GETUPVAL                         R3 13
      110 GETTABLEKS                       R3 R3 K39 ["Src"]
      112 GETTABLEKS                       R3 R3 K21 ["Tutorials"]
      114 MOVE                             R5 R2
      115 NAMECALL                         R3 R3 K40 ["FindFirstChild"]
      117 CALL                             R3 2 1
      118 JUMPIFNOT                        R3 ; [+29]
      119 LOADK                            R6 K41 ["ModuleScript"]
      120 NAMECALL                         R4 R3 K42 ["IsA"]
      122 CALL                             R4 2 1
      123 JUMPIFNOT                        R4 ; [+24]
      124 GETIMPORT                        R4 K44 [require]
      126 MOVE                             R5 R3
      127 CALL                             R4 1 1
      128 GETUPVAL                         R5 14
      129 GETTABLEKS                       R5 R5 K13 ["new"]
      131 GETIMPORT                        R6 K46 [game]
      133 MOVE                             R7 R4
      134 GETTABLEKS                       R8 R0 K29 ["localization"]
      136 GETTABLEKS                       R9 R0 K35 ["toolboxConnection"]
      138 GETTABLEKS                       R10 R1 K47 ["Plugin"]
      140 CALL                             R5 5 1
      141 SETTABLEKS                       R5 R0 K48 ["tutorial"]
      143 GETTABLEKS                       R7 R0 K48 ["tutorial"]
      145 NAMECALL                         R5 R0 K49 ["loadTutorial"]
      147 CALL                             R5 2 0
      148 NEWCLOSURE                       R4 P2
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R4 R0 K50 ["onBack"]
      152 NEWCLOSURE                       R4 P3
      153 CAPTURE                          VAL R0
      154 SETTABLEKS                       R4 R0 K51 ["onNext"]
      156 NEWCLOSURE                       R4 P4
      157 CAPTURE                          UPVAL U11
      158 CAPTURE                          REF R2
      159 CAPTURE                          UPVAL U15
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U8
      162 SETTABLEKS                       R4 R0 K52 ["onQuit"]
      164 NEWCLOSURE                       R4 P5
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R4 R0 K53 ["onSelectTopic"]
      168 CLOSEUPVALS                      R2
      169 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SendPlayStep"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K2 ["tutorialData"]
        7 NAMECALL                         R0 R0 K3 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETTABLEKS                       R1 R0 K1 ["state"]
        5 GETTABLEKS                       R1 R1 K2 ["widget"]
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
       23 GETTABLEKS                       R1 R0 K7 ["props"]
       25 GETTABLEKS                       R1 R1 K8 ["Plugin"]
       27 LOADK                            R4 K9 ["GetPlayStep"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R2 R1 K10 ["OnInvoke"]
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R0 K11 ["connection"]
       36 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 LOADK                            R3 K2 ["TourWidget"]
        5 DUPTABLE                         R4 K11 [{["Callout"] = True, ["MinSize"], ["Modal"] = False, ["InitialEnabled"] = True, ["Size"], ["Title"] = "TourWidget"}]
        6 GETIMPORT                        R5 K14 [Vector2.new]
        8 LOADN                            R6 275
        9 LOADN                            R7 350
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K5 ["MinSize"]
       13 GETIMPORT                        R5 K14 [Vector2.new]
       15 LOADN                            R6 275
       16 LOADN                            R7 350
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K9 ["Size"]
       20 NAMECALL                         R1 R1 K15 ["CreateQWidgetPluginGui"]
       22 CALL                             R1 3 1
       23 LOADK                            R2 K2 ["TourWidget"]
       24 SETTABLEKS                       R2 R1 K16 ["Name"]
       26 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{[1] = True, ["completedDialogEnabled"]}]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+2]
        4 MOVE                             R4 R0
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R3 K2 ["completedDialogEnabled"]
        9 NAMECALL                         R1 R1 K4 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 DUPTABLE                         R3 K5 [{["key"], ["index"], ["pressed"] = False}]
        3 GETTABLEKS                       R4 R1 K0 ["Name"]
        5 SETTABLEKS                       R4 R3 K1 ["key"]
        7 SETTABLEKS                       R0 R3 K2 ["index"]
        9 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["None"]
        3 GETTABLEKS                       R2 R0 K1 ["step"]
        5 GETTABLEKS                       R2 R2 K2 ["kind"]
        7 JUMPIFNOTEQKS                    R2 K3 ["Focus"] ; [+8]
        9 NEWTABLE                         R2 0 1
       11 DUPTABLE                         R3 K10 [{["key"] = "F", ["index"] = 1, ["pressed"] = False}]
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+13]
       16 GETTABLEKS                       R2 R0 K1 ["step"]
       18 GETTABLEKS                       R2 R2 K11 ["keys"]
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R3 R0 K1 ["step"]
       24 GETTABLEKS                       R3 R3 K11 ["keys"]
       26 DUPCLOSURE                       R4 K12 [PROTO_13]
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 GETUPVAL                         R2 2
       30 DUPTABLE                         R4 K15 [{"tutorialData", "pressedKeys"}]
       31 SETTABLEKS                       R0 R4 K13 ["tutorialData"]
       33 SETTABLEKS                       R1 R4 K14 ["pressedKeys"]
       35 NAMECALL                         R2 R2 K16 ["setState"]
       37 CALL                             R2 2 0
       38 GETTABLEKS                       R2 R0 K1 ["step"]
       40 GETTABLEKS                       R2 R2 K2 ["kind"]
       42 JUMPIFNOTEQKS                    R2 K17 ["Skipped"] ; [+7]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K18 ["log"]
       47 GETUPVAL                         R3 3
       48 CALL                             R2 1 0
       49 JUMP                             ; [+17]
       50 GETTABLEKS                       R2 R0 K1 ["step"]
       52 GETTABLEKS                       R2 R2 K2 ["kind"]
       54 JUMPIFNOTEQKS                    R2 K19 ["Completed"] ; [+7]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K18 ["log"]
       59 GETUPVAL                         R3 4
       60 CALL                             R2 1 0
       61 JUMP                             ; [+5]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R2 R2 K18 ["log"]
       65 GETUPVAL                         R3 5
       66 CALL                             R2 1 0
       67 GETUPVAL                         R2 2
       68 GETTABLEKS                       R2 R2 K20 ["props"]
       70 GETTABLEKS                       R2 R2 K21 ["Plugin"]
       72 LOADK                            R5 K22 ["SendPlayStep"]
       73 MOVE                             R6 R0
       74 NAMECALL                         R3 R2 K23 ["Invoke"]
       76 CALL                             R3 3 0
       77 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["pressedKeys"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 DUPTABLE                         R2 K1 [{"pressedKeys"}]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R1
        8 NEWTABLE                         R5 1 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["Name"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K2 ["Name"]
       16 GETTABLE                         R8 R1 R9
       17 JUMPIFNOT                        R8 ; [+8]
       18 GETUPVAL                         R7 0
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K2 ["Name"]
       22 GETTABLE                         R8 R1 R9
       23 DUPTABLE                         R9 K5 [{["pressed"] = True}]
       24 CALL                             R7 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLE                         R7 R5 R6
       28 CALL                             R3 2 1
       29 SETTABLEKS                       R3 R2 K0 ["pressedKeys"]
       31 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["action"] = "KeyPress", ["actionKeyCode"]}]
        5 GETTABLEKS                       R4 R0 K5 ["Name"]
        7 SETTABLEKS                       R4 R3 K3 ["actionKeyCode"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R1 R1 K6 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayClient]
        5 JUMPIFNOTEQ                      R0 R1 ; [+16]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K5 ["startPlaying"]
       10 JUMPIFNOT                        R0 ; [+11]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K5 ["startPlaying"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K6 ["log"]
       18 GETUPVAL                         R1 3
       19 DUPTABLE                         R2 K9 [{["action"] = "StartPlaytest"}]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
       25 GETIMPORT                        R1 K11 [Enum.StudioDataModelType.Edit]
       27 JUMPIFNOTEQ                      R0 R1 ; [+15]
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K12 ["stopPlaying"]
       32 JUMPIFNOT                        R0 ; [+10]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K12 ["stopPlaying"]
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 2
       38 GETTABLEKS                       R0 R0 K6 ["log"]
       40 GETUPVAL                         R1 3
       41 DUPTABLE                         R2 K14 [{["action"] = "StopPlaytest"}]
       42 CALL                             R0 2 0
       43 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["callouts"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 NAMECALL                         R5 R3 K3 ["Destroy"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 1 ; [-4]
       12 RETURN                           R0 0

PROTO_19:
        0 JUMPIFEQKS                       R0 K0 ["Color"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Material"] ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["log"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K6 [{["action"] = "ChangeProperty", ["actionKeyCode"]}]
        9 SETTABLEKS                       R0 R3 K5 ["actionKeyCode"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["action"] = "InsertObject", ["actionKeyCode"]}]
        5 GETTABLEKS                       R4 R0 K5 ["ClassName"]
        7 SETTABLEKS                       R4 R3 K3 ["actionKeyCode"]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K6 ["Changed"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R1 R1 K7 ["Connect"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

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
       22 GETTABLEKS                       R3 R2 K4 ["Plugin"]
       24 GETTABLEKS                       R3 R3 K5 ["MultipleDocumentInterfaceInstance"]
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
       40 GETTABLEKS                       R5 R2 K4 ["Plugin"]
       42 GETTABLEKS                       R5 R5 K10 ["Unloading"]
       44 NEWCLOSURE                       R7 P4
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R5 R5 K8 ["Connect"]
       48 CALL                             R5 2 0
       49 NAMECALL                         R5 R1 K11 ["start"]
       51 CALL                             R5 1 0
       52 GETTABLEKS                       R5 R0 K12 ["tutorial"]
       54 GETTABLEKS                       R5 R5 K13 ["dataModel"]
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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K4 ["PromptClosePlace"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

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
       17 GETTABLEKS                       R8 R0 K0 ["tutorial"]
       19 GETTABLEKS                       R8 R8 K7 ["data"]
       21 GETTABLEKS                       R8 R8 K8 ["id"]
       23 LOADK                            R9 K9 ["Title"]
       24 NAMECALL                         R6 R6 K10 ["getText"]
       26 CALL                             R6 3 1
       27 GETTABLEKS                       R8 R2 K11 ["widget"]
       29 JUMPIFNOT                        R8 ; [+37]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K12 ["createElement"]
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
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K27 ["provide"]
       71 NEWTABLE                         R9 0 6
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R10 R10 K3 ["Plugin"]
       76 GETTABLEKS                       R10 R10 K28 ["new"]
       78 MOVE                             R11 R3
       79 CALL                             R10 1 1
       80 GETUPVAL                         R11 3
       81 GETTABLEKS                       R11 R11 K28 ["new"]
       83 GETTABLEKS                       R12 R0 K29 ["store"]
       85 CALL                             R11 1 1
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R12 R12 K28 ["new"]
       89 NAMECALL                         R13 R3 K30 ["getMouse"]
       91 CALL                             R13 1 -1
       92 CALL                             R12 -1 1
       93 GETUPVAL                         R13 5
       94 CALL                             R13 0 1
       95 GETTABLEKS                       R14 R0 K6 ["localization"]
       97 GETTABLEKS                       R15 R0 K31 ["analytics"]
       99 SETLIST                          R9 R10 6 [1]
      101 DUPTABLE                         R10 K33 [{"View"}]
      102 JUMPIFNOT                        R5 ; [+49]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K12 ["createElement"]
      106 GETUPVAL                         R12 6
      107 DUPTABLE                         R13 K39 [{["Title"], ["Enabled"], ["Modal"] = True, ["Size"], ["OnClose"]}]
      108 GETTABLEKS                       R14 R0 K6 ["localization"]
      110 LOADK                            R16 K40 ["Completed"]
      111 LOADK                            R17 K9 ["Title"]
      112 NAMECALL                         R14 R14 K10 ["getText"]
      114 CALL                             R14 3 1
      115 MOVE                             R16 R6
      116 NAMECALL                         R14 R14 K41 ["format"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K9 ["Title"]
      121 SETTABLEKS                       R5 R13 K34 ["Enabled"]
      123 GETUPVAL                         R14 7
      124 SETTABLEKS                       R14 R13 K37 ["Size"]
      126 NEWCLOSURE                       R14 P0
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R14 R13 K38 ["OnClose"]
      130 DUPTABLE                         R14 K43 [{"Content"}]
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R15 R15 K12 ["createElement"]
      134 GETUPVAL                         R16 8
      135 DUPTABLE                         R17 K46 [{"Name", "OnClose", "OnReturn"}]
      136 SETTABLEKS                       R6 R17 K44 ["Name"]
      138 NEWCLOSURE                       R18 P1
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R18 R17 K38 ["OnClose"]
      142 NEWCLOSURE                       R18 P2
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U9
      145 SETTABLEKS                       R18 R17 K45 ["OnReturn"]
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K42 ["Content"]
      150 CALL                             R11 3 1
      151 JUMP                             ; [+14]
      152 GETUPVAL                         R12 10
      153 JUMPIFNOT                        R12 ; [+6]
      154 JUMPIF                           R4 ; [+5]
      155 GETTABLEKS                       R12 R2 K47 ["isTutorialHidden"]
      157 JUMPIF                           R12 ; [+2]
      158 MOVE                             R11 R7
      159 JUMP                             ; [+6]
      160 GETUPVAL                         R12 10
      161 JUMPIF                           R12 ; [+3]
      162 JUMPIF                           R4 ; [+2]
      163 MOVE                             R11 R7
      164 JUMP                             ; [+1]
      165 LOADNIL                          R11
      166 SETTABLEKS                       R11 R10 K32 ["View"]
      168 CALL                             R8 2 -1
      169 RETURN                           R8 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
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
       45 GETTABLEKS                       R9 R0 K5 ["Packages"]
       47 GETTABLEKS                       R9 R9 K16 ["Dash"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R8 K17 ["join"]
       52 GETTABLEKS                       R10 R8 K18 ["collect"]
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R0 K5 ["Packages"]
       58 GETTABLEKS                       R12 R12 K19 ["Framework"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R11 K20 ["UI"]
       63 GETTABLEKS                       R13 R12 K21 ["Dialog"]
       65 GETTABLEKS                       R14 R11 K22 ["Util"]
       67 GETTABLEKS                       R14 R14 K23 ["CrossPluginCommunication"]
       69 GETTABLEKS                       R15 R11 K24 ["ContextServices"]
       71 GETTABLEKS                       R16 R15 K25 ["Mouse"]
       73 GETTABLEKS                       R17 R15 K26 ["Store"]
       75 GETIMPORT                        R18 K4 [require]
       77 GETTABLEKS                       R19 R0 K27 ["Src"]
       79 GETTABLEKS                       R19 R19 K22 ["Util"]
       81 GETTABLEKS                       R19 R19 K28 ["Telemetry"]
       83 GETTABLEKS                       R19 R19 K29 ["TelemetryProtocol"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETTABLEKS                       R20 R0 K27 ["Src"]
       90 GETTABLEKS                       R20 R20 K22 ["Util"]
       92 GETTABLEKS                       R20 R20 K28 ["Telemetry"]
       94 GETTABLEKS                       R20 R20 K30 ["SkipStep"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K4 [require]
       99 GETTABLEKS                       R21 R0 K27 ["Src"]
      101 GETTABLEKS                       R21 R21 K22 ["Util"]
      103 GETTABLEKS                       R21 R21 K28 ["Telemetry"]
      105 GETTABLEKS                       R21 R21 K31 ["StartStep"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K4 [require]
      110 GETTABLEKS                       R22 R0 K27 ["Src"]
      112 GETTABLEKS                       R22 R22 K22 ["Util"]
      114 GETTABLEKS                       R22 R22 K28 ["Telemetry"]
      116 GETTABLEKS                       R22 R22 K32 ["CompleteStep"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K4 [require]
      121 GETTABLEKS                       R23 R0 K27 ["Src"]
      123 GETTABLEKS                       R23 R23 K22 ["Util"]
      125 GETTABLEKS                       R23 R23 K28 ["Telemetry"]
      127 GETTABLEKS                       R23 R23 K33 ["IntermediateStep"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K4 [require]
      132 GETTABLEKS                       R24 R0 K27 ["Src"]
      134 GETTABLEKS                       R24 R24 K22 ["Util"]
      136 GETTABLEKS                       R24 R24 K28 ["Telemetry"]
      138 GETTABLEKS                       R24 R24 K34 ["ExtraAction"]
      140 CALL                             R23 1 1
      141 GETIMPORT                        R24 K4 [require]
      143 GETTABLEKS                       R25 R0 K27 ["Src"]
      145 GETTABLEKS                       R25 R25 K22 ["Util"]
      147 GETTABLEKS                       R25 R25 K28 ["Telemetry"]
      149 GETTABLEKS                       R25 R25 K35 ["TelemetryProtocolTypes"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K38 [Vector2.new]
      154 LOADN                            R26 460
      155 LOADN                            R27 300
      156 CALL                             R25 2 1
      157 GETTABLEKS                       R26 R0 K27 ["Src"]
      159 GETTABLEKS                       R26 R26 K39 ["Resources"]
      161 GETTABLEKS                       R26 R26 K40 ["Localization"]
      163 GETTABLEKS                       R26 R26 K41 ["SourceStrings"]
      165 GETTABLEKS                       R27 R0 K27 ["Src"]
      167 GETTABLEKS                       R27 R27 K39 ["Resources"]
      169 GETTABLEKS                       R27 R27 K40 ["Localization"]
      171 GETTABLEKS                       R27 R27 K42 ["LocalizedStrings"]
      173 GETIMPORT                        R28 K4 [require]
      175 GETTABLEKS                       R29 R0 K27 ["Src"]
      177 GETTABLEKS                       R29 R29 K43 ["Reducers"]
      179 GETTABLEKS                       R29 R29 K44 ["MainReducer"]
      181 CALL                             R28 1 1
      182 GETIMPORT                        R29 K4 [require]
      184 GETTABLEKS                       R30 R0 K27 ["Src"]
      186 GETTABLEKS                       R30 R30 K39 ["Resources"]
      188 GETTABLEKS                       R30 R30 K45 ["MakeTheme"]
      190 CALL                             R29 1 1
      191 GETIMPORT                        R30 K4 [require]
      193 GETTABLEKS                       R31 R0 K27 ["Src"]
      195 GETTABLEKS                       R31 R31 K22 ["Util"]
      197 GETTABLEKS                       R31 R31 K46 ["Tutorial"]
      199 CALL                             R30 1 1
      200 GETTABLEKS                       R31 R0 K27 ["Src"]
      202 GETTABLEKS                       R31 R31 K47 ["Components"]
      204 GETIMPORT                        R32 K4 [require]
      206 GETTABLEKS                       R33 R31 K48 ["CompletedTutorialDialog"]
      208 CALL                             R32 1 1
      209 GETIMPORT                        R33 K4 [require]
      211 GETTABLEKS                       R34 R31 K49 ["TourWidget"]
      213 CALL                             R33 1 1
      214 GETIMPORT                        R34 K4 [require]
      216 GETTABLEKS                       R35 R0 K27 ["Src"]
      218 GETTABLEKS                       R35 R35 K50 ["Flags"]
      220 GETTABLEKS                       R35 R35 K51 ["getFFlagEnableRibbonTour"]
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
