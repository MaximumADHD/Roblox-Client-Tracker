PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+27]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+25]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["funnelId"]
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["getState"]
       12 CALL                             R0 1 1
       13 GETTABLEKS                       R0 R0 K2 ["PublishedPlace"]
       15 GETTABLEKS                       R0 R0 K3 ["isPublishing"]
       17 JUMPIF                           R0 ; [+12]
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K4 ["reportFinished"]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K0 ["funnelId"]
       24 LOADB                            R2 0
       25 LOADNIL                          R3
       26 LOADK                            R4 K5 ["cancelled"]
       27 CALL                             R0 4 0
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 1
       30 GETUPVAL                         R0 4
       31 JUMPIFNOT                        R0 ; [+5]
       32 GETUPVAL                         R0 5
       33 GETTABLEKS                       R0 R0 K6 ["unmount"]
       35 GETUPVAL                         R1 4
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 6
       38 LOADB                            R1 0
       39 SETTABLEKS                       R1 R0 K7 ["Enabled"]
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETUPVAL                         R3 1
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETTABLEKS                       R3 R2 K0 ["funnelId"]
       10 JUMPIFNOT                        R3 ; [+8]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["reportFinished"]
       14 GETTABLEKS                       R4 R2 K0 ["funnelId"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R3 3 0
       19 JUMPIFNOT                        R0 ; [+3]
       20 JUMPIFNOT                        R2 ; [+2]
       21 GETUPVAL                         R3 3
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R2 K2 ["useTeamCreateSetting"]
       26 JUMPIFNOT                        R3 ; [+14]
       27 GETUPVAL                         R4 4
       28 NAMECALL                         R4 R4 K3 ["getState"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K4 ["NewGameSettings"]
       33 GETTABLEKS                       R4 R4 K5 ["changed"]
       35 GETTABLEKS                       R4 R4 K6 ["teamCreateEnabled"]
       37 JUMPIFEQKB                       R4 TRUE ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K7 ["showPublishStatus"]
       44 DUPTABLE                         R5 K13 [{"publishStatusPanel", "studioPublishService", "universeId", "closeMode", "teamCreateEnabled", "closeSaveDialog", "funnelId"}]
       45 GETUPVAL                         R6 3
       46 SETTABLEKS                       R6 R5 K8 ["publishStatusPanel"]
       48 GETUPVAL                         R6 5
       49 SETTABLEKS                       R6 R5 K9 ["studioPublishService"]
       51 SETTABLEKS                       R1 R5 K10 ["universeId"]
       53 GETTABLEKS                       R6 R2 K11 ["closeMode"]
       55 SETTABLEKS                       R6 R5 K11 ["closeMode"]
       57 SETTABLEKS                       R3 R5 K6 ["teamCreateEnabled"]
       59 GETUPVAL                         R6 6
       60 SETTABLEKS                       R6 R5 K12 ["closeSaveDialog"]
       62 GETTABLEKS                       R6 R2 K0 ["funnelId"]
       64 SETTABLEKS                       R6 R5 K0 ["funnelId"]
       66 CALL                             R4 1 0
       67 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["SaveOrPublishPlaceToRobloxIsCanceled"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K9 [{["Size"], ["MinSize"], ["MaxSize"], ["Resizable"] = True, ["Modal"], ["InitialEnabled"] = False}]
        6 GETIMPORT                        R5 K12 [Vector2.new]
        8 LOADN                            R6 960
        9 LOADN                            R7 720
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETIMPORT                        R5 K12 [Vector2.new]
       15 LOADN                            R6 890
       16 LOADN                            R7 550
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["MinSize"]
       20 GETIMPORT                        R5 K12 [Vector2.new]
       22 LOADN                            R6 960
       23 LOADN                            R7 750
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K3 ["MaxSize"]
       27 GETUPVAL                         R6 3
       28 NOT                              R5 R6
       29 SETTABLEKS                       R5 R4 K6 ["Modal"]
       31 NAMECALL                         R1 R1 K13 ["CreateQWidgetPluginGui"]
       33 CALL                             R1 3 1
       34 SETUPVAL                         R1 1
       35 GETUPVAL                         R1 1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K0 ["Name"]
       39 SETTABLEKS                       R2 R1 K0 ["Name"]
       41 GETUPVAL                         R1 1
       42 GETUPVAL                         R2 4
       43 LOADK                            R4 K14 ["General"]
       44 LOADK                            R5 K15 ["PublishPlace"]
       45 NAMECALL                         R2 R2 K16 ["getText"]
       47 CALL                             R2 3 1
       48 SETTABLEKS                       R2 R1 K17 ["Title"]
       50 GETUPVAL                         R1 1
       51 GETIMPORT                        R2 K21 [Enum.ZIndexBehavior.Sibling]
       53 SETTABLEKS                       R2 R1 K19 ["ZIndexBehavior"]
       55 GETUPVAL                         R1 1
       56 NEWCLOSURE                       R3 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 NAMECALL                         R1 R1 K22 ["BindToClose"]
       62 CALL                             R1 2 0
       63 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+35]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["isFirstPublish"]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R5 K2 [game]
        9 GETTABLEKS                       R5 R5 K3 ["GameId"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+17]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["createFunnelId"]
       16 CALL                             R3 0 1
       17 DUPTABLE                         R4 K11 [{["closeMode"], ["useTeamCreateSetting"] = True, ["keepOnDialogOpen"] = False, ["funnelId"]}]
       18 SETTABLEKS                       R2 R4 K5 ["closeMode"]
       20 SETTABLEKS                       R3 R4 K10 ["funnelId"]
       22 SETUPVAL                         R4 2
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K12 ["reportDialogOpened"]
       26 MOVE                             R5 R3
       27 MOVE                             R6 R0
       28 CALL                             R4 2 0
       29 JUMP                             ; [+8]
       30 GETUPVAL                         R3 2
       31 JUMPIFNOT                        R3 ; [+4]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K8 ["keepOnDialogOpen"]
       35 JUMPIF                           R3 ; [+2]
       36 LOADNIL                          R3
       37 SETUPVAL                         R3 2
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K13 ["createElement"]
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K22 [{"focusGui", "localization", "mouse", "plugin", "store", "theme", "calloutController", "publishStatusPanel"}]
       43 GETUPVAL                         R6 5
       44 SETTABLEKS                       R6 R5 K14 ["focusGui"]
       46 GETUPVAL                         R6 6
       47 SETTABLEKS                       R6 R5 K15 ["localization"]
       49 GETUPVAL                         R6 7
       50 NAMECALL                         R6 R6 K23 ["getMouse"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K16 ["mouse"]
       55 GETUPVAL                         R6 7
       56 SETTABLEKS                       R6 R5 K17 ["plugin"]
       58 GETUPVAL                         R6 8
       59 SETTABLEKS                       R6 R5 K18 ["store"]
       61 GETUPVAL                         R6 9
       62 CALL                             R6 0 1
       63 SETTABLEKS                       R6 R5 K19 ["theme"]
       65 GETUPVAL                         R6 10
       66 SETTABLEKS                       R6 R5 K20 ["calloutController"]
       68 GETUPVAL                         R6 11
       69 SETTABLEKS                       R6 R5 K21 ["publishStatusPanel"]
       71 NEWTABLE                         R6 0 1
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K13 ["createElement"]
       76 GETUPVAL                         R8 12
       77 DUPTABLE                         R9 K28 [{"OnClose", "IsPublish", "CloseMode", "IsSaveOrPublishAs"}]
       78 GETUPVAL                         R10 13
       79 SETTABLEKS                       R10 R9 K24 ["OnClose"]
       81 SETTABLEKS                       R1 R9 K25 ["IsPublish"]
       83 SETTABLEKS                       R2 R9 K26 ["CloseMode"]
       85 SETTABLEKS                       R0 R9 K27 ["IsSaveOrPublishAs"]
       87 CALL                             R7 2 -1
       88 SETLIST                          R6 R7 -1 [1]
       90 CALL                             R3 3 1
       91 GETUPVAL                         R4 8
       92 GETUPVAL                         R6 14
       93 GETUPVAL                         R8 15
       94 JUMPIFNOT                        R8 ; [+7]
       95 GETUPVAL                         R7 6
       96 LOADK                            R9 K29 ["General"]
       97 LOADK                            R10 K30 ["UntitledExperience"]
       98 NAMECALL                         R7 R7 K31 ["getText"]
      100 CALL                             R7 3 1
      101 JUMP                             ; [+6]
      102 GETUPVAL                         R7 6
      103 LOADK                            R9 K29 ["General"]
      104 LOADK                            R10 K32 ["UntitledGame"]
      105 NAMECALL                         R7 R7 K31 ["getText"]
      107 CALL                             R7 3 1
      108 MOVE                             R8 R0
      109 CALL                             R6 2 -1
      110 NAMECALL                         R4 R4 K33 ["dispatch"]
      112 CALL                             R4 -1 0
      113 GETUPVAL                         R4 3
      114 GETTABLEKS                       R4 R4 K34 ["mount"]
      116 MOVE                             R5 R3
      117 GETUPVAL                         R6 5
      118 CALL                             R4 2 1
      119 SETUPVAL                         R4 16
      120 GETUPVAL                         R4 5
      121 LOADB                            R5 1
      122 SETTABLEKS                       R5 R4 K35 ["Enabled"]
      124 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+19]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+7]
        4 GETUPVAL                         R4 2
        5 LOADK                            R6 K0 ["General"]
        6 LOADK                            R7 K1 ["PublishExperience"]
        7 NAMECALL                         R4 R4 K2 ["getText"]
        9 CALL                             R4 3 1
       10 JUMP                             ; [+6]
       11 GETUPVAL                         R4 2
       12 LOADK                            R6 K0 ["General"]
       13 LOADK                            R7 K3 ["PublishGame"]
       14 NAMECALL                         R4 R4 K2 ["getText"]
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K4 ["Title"]
       19 JUMP                             ; [+18]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 1
       22 JUMPIFNOT                        R5 ; [+7]
       23 GETUPVAL                         R4 2
       24 LOADK                            R6 K0 ["General"]
       25 LOADK                            R7 K5 ["SaveExperience"]
       26 NAMECALL                         R4 R4 K2 ["getText"]
       28 CALL                             R4 3 1
       29 JUMP                             ; [+6]
       30 GETUPVAL                         R4 2
       31 LOADK                            R6 K0 ["General"]
       32 LOADK                            R7 K6 ["SaveGame"]
       33 NAMECALL                         R4 R4 K2 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K4 ["Title"]
       38 GETUPVAL                         R3 3
       39 MOVE                             R4 R0
       40 MOVE                             R5 R1
       41 MOVE                             R6 R2
       42 CALL                             R3 3 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 LOADB                            R5 0
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["dispatch"]
        6 CALL                             R2 -1 0
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+7]
       12 DUPTABLE                         R2 K3 [{"success", "universeId"}]
       13 SETTABLEKS                       R0 R2 K1 ["success"]
       15 SETTABLEKS                       R1 R2 K2 ["universeId"]
       17 SETUPVAL                         R2 4
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 5
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["funnelId"]
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["reportFinished"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["funnelId"]
       15 LOADB                            R2 0
       16 LOADNIL                          R3
       17 LOADK                            R4 K2 ["cancelled"]
       18 CALL                             R0 4 0
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 1
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 3
       23 GETUPVAL                         R0 4
       24 NAMECALL                         R0 R0 K3 ["clearUploadNames"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 5
       28 CALL                             R0 0 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openPublishStatus"]
        3 DUPTABLE                         R1 K4 [{["publishStatusPanel"], ["source"] = "fileMenu"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["publishStatusPanel"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETIMPORT                        R1 K1 [game]
        4 GETTABLEKS                       R1 R1 K2 ["PlaceId"]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQ                      R1 R2 ; [+3]
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+3]
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 3
       13 RETURN                           R0 0
       14 JUMPIF                           R0 ; [+6]
       15 DUPTABLE                         R1 K8 [{["closeMode"], ["useTeamCreateSetting"] = False, ["keepOnDialogOpen"] = True}]
       16 GETIMPORT                        R2 K12 [Enum.StudioCloseMode.None]
       18 SETTABLEKS                       R2 R1 K3 ["closeMode"]
       20 SETUPVAL                         R1 2
       21 GETUPVAL                         R1 3
       22 LOADNIL                          R2
       23 SETUPVAL                         R2 3
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R3 R1 K13 ["success"]
       28 GETTABLEKS                       R4 R1 K14 ["universeId"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 1
        4 GETIMPORT                        R1 K1 [warn]
        6 LOADK                            R2 K2 ["Failed to check for published place versions: %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K1 [game]
        7 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        9 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
       11 RETURN                           R0 0
       12 LOADB                            R1 1
       13 SETUPVAL                         R1 0
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K4 ["andThen"]
       28 CALL                             R1 3 0
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K2 ["signals"]
       11 GETTABLEKS                       R0 R1 K1 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 NAMECALL                         R0 R0 K3 ["Connect"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K2 ["signals"]
       24 GETTABLEKS                       R0 R1 K4 ["StudioPublishService.GamePublishFinished"]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 NAMECALL                         R0 R0 K3 ["Connect"]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R1 3
       37 GETTABLEKS                       R1 R1 K2 ["signals"]
       39 GETTABLEKS                       R0 R1 K5 ["StudioPublishService.GamePublishCancelled"]
       41 NEWCLOSURE                       R2 P2
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U14
       44 CAPTURE                          UPVAL U15
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U16
       47 CAPTURE                          UPVAL U17
       48 NAMECALL                         R0 R0 K3 ["Connect"]
       50 CALL                             R0 2 0
       51 GETUPVAL                         R0 10
       52 CALL                             R0 0 1
       53 JUMPIFNOT                        R0 ; [+37]
       54 GETUPVAL                         R0 3
       55 GETTABLEKS                       R0 R0 K6 ["actionTriggeredSignals"]
       57 JUMPIFNOT                        R0 ; [+4]
       58 GETUPVAL                         R1 3
       59 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       61 GETTABLEN                        R0 R1 1
       62 JUMPIFNOT                        R0 ; [+8]
       63 GETUPVAL                         R1 18
       64 JUMPIFNOT                        R1 ; [+6]
       65 NEWCLOSURE                       R3 P3
       66 CAPTURE                          UPVAL U15
       67 CAPTURE                          UPVAL U18
       68 NAMECALL                         R1 R0 K3 ["Connect"]
       70 CALL                             R1 2 0
       71 GETUPVAL                         R1 3
       72 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       74 JUMPIFNOT                        R1 ; [+4]
       75 GETUPVAL                         R2 3
       76 GETTABLEKS                       R2 R2 K6 ["actionTriggeredSignals"]
       78 GETTABLEN                        R1 R2 2
       79 JUMPIFNOT                        R1 ; [+11]
       80 GETUPVAL                         R2 18
       81 JUMPIFNOT                        R2 ; [+9]
       82 NEWCLOSURE                       R4 P4
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U14
       85 CAPTURE                          UPVAL U19
       86 CAPTURE                          UPVAL U12
       87 CAPTURE                          UPVAL U13
       88 NAMECALL                         R2 R1 K3 ["Connect"]
       90 CALL                             R2 2 0
       91 RETURN                           R0 0

PROTO_14:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [require]
       10 GETTABLEKS                       R4 R2 K5 ["Packages"]
       12 GETTABLEKS                       R4 R4 K6 ["Roact"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R5 R2 K5 ["Packages"]
       19 GETTABLEKS                       R5 R5 K7 ["Rodux"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R2 K5 ["Packages"]
       26 GETTABLEKS                       R6 R6 K8 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K9 ["ContextServices"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R2 K10 ["Src"]
       35 GETTABLEKS                       R8 R8 K11 ["Components"]
       37 GETTABLEKS                       R8 R8 K12 ["ServiceWrapper"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R2 K10 ["Src"]
       44 GETTABLEKS                       R9 R9 K11 ["Components"]
       46 GETTABLEKS                       R9 R9 K13 ["ScreenSelect"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R2 K10 ["Src"]
       53 GETTABLEKS                       R10 R10 K14 ["Reducers"]
       55 GETTABLEKS                       R10 R10 K15 ["MainReducer"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R2 K10 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Middleware"]
       64 GETTABLEKS                       R11 R11 K17 ["MainMiddleware"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R12 R2 K10 ["Src"]
       71 GETTABLEKS                       R12 R12 K18 ["Actions"]
       73 GETTABLEKS                       R12 R12 K19 ["ResetInfo"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R13 R2 K10 ["Src"]
       80 GETTABLEKS                       R13 R13 K20 ["Resources"]
       82 GETTABLEKS                       R13 R13 K21 ["MakeTheme"]
       84 CALL                             R12 1 1
       85 GETTABLEKS                       R13 R2 K10 ["Src"]
       87 GETTABLEKS                       R13 R13 K20 ["Resources"]
       89 GETTABLEKS                       R13 R13 K22 ["SourceStrings"]
       91 GETTABLEKS                       R14 R2 K10 ["Src"]
       93 GETTABLEKS                       R14 R14 K20 ["Resources"]
       95 GETTABLEKS                       R14 R14 K23 ["LocalizedStrings"]
       97 GETTABLEKS                       R15 R4 K24 ["Store"]
       99 GETTABLEKS                       R15 R15 K25 ["new"]
      101 MOVE                             R16 R9
      102 NEWTABLE                         R17 0 0
      104 MOVE                             R18 R10
      105 CALL                             R15 3 1
      106 GETTABLEKS                       R16 R6 K26 ["Localization"]
      108 GETTABLEKS                       R16 R16 K25 ["new"]
      110 DUPTABLE                         R17 K30 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
      111 GETTABLEKS                       R18 R2 K31 ["Name"]
      113 SETTABLEKS                       R18 R17 K27 ["pluginName"]
      115 SETTABLEKS                       R13 R17 K28 ["stringResourceTable"]
      117 SETTABLEKS                       R14 R17 K29 ["translationResourceTable"]
      119 CALL                             R16 1 1
      120 LOADNIL                          R17
      121 GETUPVAL                         R18 0
      122 CALL                             R18 0 1
      123 JUMPIFNOT                        R18 ; [+19]
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R18 R18 K25 ["new"]
      127 DUPTABLE                         R19 K35 [{"plugin", "localization", "store"}]
      128 SETTABLEKS                       R0 R19 K32 ["plugin"]
      130 SETTABLEKS                       R16 R19 K33 ["localization"]
      132 SETTABLEKS                       R15 R19 K34 ["store"]
      134 CALL                             R18 1 1
      135 MOVE                             R17 R18
      136 GETTABLEKS                       R18 R0 K36 ["Unloading"]
      138 NEWCLOSURE                       R20 P0
      139 CAPTURE                          REF R17
      140 NAMECALL                         R18 R18 K37 ["Connect"]
      142 CALL                             R18 2 0
      143 LOADNIL                          R18
      144 LOADNIL                          R19
      145 LOADNIL                          R20
      146 LOADB                            R21 0
      147 LOADNIL                          R22
      148 GETIMPORT                        R23 K4 [require]
      150 GETTABLEKS                       R24 R2 K10 ["Src"]
      152 GETTABLEKS                       R24 R24 K18 ["Actions"]
      154 GETTABLEKS                       R24 R24 K38 ["SetIsPublishing"]
      156 CALL                             R23 1 1
      157 NEWCLOSURE                       R24 P1
      158 CAPTURE                          UPVAL U0
      159 CAPTURE                          REF R20
      160 CAPTURE                          VAL R15
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          REF R18
      163 CAPTURE                          VAL R3
      164 CAPTURE                          REF R19
      165 NEWCLOSURE                       R25 P2
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          REF R20
      168 CAPTURE                          UPVAL U2
      169 CAPTURE                          REF R17
      170 CAPTURE                          VAL R15
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          VAL R24
      173 NEWCLOSURE                       R26 P3
      174 CAPTURE                          VAL R2
      175 CAPTURE                          REF R19
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          VAL R16
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          VAL R24
      182 GETIMPORT                        R27 K4 [require]
      184 GETTABLEKS                       R28 R2 K10 ["Src"]
      186 GETTABLEKS                       R28 R28 K39 ["Util"]
      188 GETTABLEKS                       R28 R28 K40 ["CalloutController"]
      190 CALL                             R27 1 1
      191 GETTABLEKS                       R28 R27 K25 ["new"]
      193 CALL                             R28 0 1
      194 GETUPVAL                         R29 6
      195 JUMPIF                           R29 ; [+23]
      196 LOADK                            R31 K41 ["TcToggleCallout"]
      197 LOADK                            R32 K42 ["Title"]
      198 NAMECALL                         R29 R16 K43 ["getText"]
      200 CALL                             R29 3 1
      201 LOADK                            R32 K41 ["TcToggleCallout"]
      202 LOADK                            R33 K44 ["Description"]
      203 NAMECALL                         R30 R16 K43 ["getText"]
      205 CALL                             R30 3 1
      206 GETIMPORT                        R31 K46 [game]
      208 LOADK                            R33 K47 ["TeamCreateLink"]
      209 NAMECALL                         R31 R31 K48 ["GetFastString"]
      211 CALL                             R31 2 1
      212 LOADK                            R34 K49 ["PublishPlaceAsTeamCreateToggleCallout"]
      213 MOVE                             R35 R29
      214 MOVE                             R36 R30
      215 MOVE                             R37 R31
      216 NAMECALL                         R32 R28 K50 ["defineCallout"]
      218 CALL                             R32 5 0
      219 NEWCLOSURE                       R29 P4
      220 CAPTURE                          UPVAL U0
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          REF R20
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R7
      225 CAPTURE                          REF R19
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R28
      231 CAPTURE                          REF R17
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R11
      235 CAPTURE                          UPVAL U7
      236 CAPTURE                          REF R18
      237 NEWCLOSURE                       R30 P5
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R26
      241 CAPTURE                          VAL R1
      242 CAPTURE                          REF R19
      243 CAPTURE                          UPVAL U7
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R23
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          REF R21
      250 CAPTURE                          REF R22
      251 CAPTURE                          VAL R25
      252 CAPTURE                          REF R20
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          VAL R24
      256 CAPTURE                          REF R17
      257 CAPTURE                          UPVAL U8
      258 MOVE                             R31 R30
      259 CALL                             R31 0 0
      260 CLOSEUPVALS                      R17
      261 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["StudioPublishService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K4 [game]
       15 LOADK                            R4 K7 ["DebugBuiltInPluginModalsNotBlocking"]
       16 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K4 [game]
       21 LOADK                            R5 K9 ["COLLAB9041NewTeamCreateDisabled"]
       22 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Flags"]
       31 GETTABLEKS                       R5 R5 K14 ["getFFlagPublishPlaceAsGameToExperience"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 GETIMPORT                        R5 K11 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Flags"]
       41 GETTABLEKS                       R6 R6 K15 ["getFFlagSTUDIOPLAT42559FixSaveDialogXClose"]
       43 CALL                             R5 1 1
       44 CALL                             R5 0 1
       45 GETIMPORT                        R6 K11 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K13 ["Flags"]
       51 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureStudioUnifiedPublishAction"]
       53 CALL                             R6 1 1
       54 MOVE                             R8 R6
       55 CALL                             R8 0 1
       56 JUMPIFNOT                        R8 ; [+10]
       57 GETIMPORT                        R7 K11 [require]
       59 GETTABLEKS                       R8 R0 K12 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Util"]
       63 GETTABLEKS                       R8 R8 K18 ["PublishStatusPanel"]
       65 CALL                             R7 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 GETIMPORT                        R8 K11 [require]
       70 GETTABLEKS                       R9 R0 K12 ["Src"]
       72 GETTABLEKS                       R9 R9 K17 ["Util"]
       74 GETTABLEKS                       R9 R9 K19 ["FirstPublishFlow"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K11 [require]
       79 GETTABLEKS                       R10 R0 K12 ["Src"]
       81 GETTABLEKS                       R10 R10 K20 ["Network"]
       83 GETTABLEKS                       R10 R10 K21 ["Requests"]
       85 GETTABLEKS                       R10 R10 K22 ["ApiFetchPublishedVersionStatus"]
       87 CALL                             R9 1 1
       88 DUPCLOSURE                       R10 K23 [PROTO_14]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R9
       98 RETURN                           R10 1
