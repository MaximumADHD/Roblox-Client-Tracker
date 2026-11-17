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
       24 GETUPVAL                         R4 4
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETTABLEKS                       R4 R2 K2 ["teamCreateEnabled"]
       29 JUMPIFEQKB                       R4 TRUE ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 JUMP                             ; [+17]
       34 GETTABLEKS                       R3 R2 K3 ["useTeamCreateSetting"]
       36 JUMPIFNOT                        R3 ; [+14]
       37 GETUPVAL                         R4 5
       38 NAMECALL                         R4 R4 K4 ["getState"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K5 ["NewGameSettings"]
       43 GETTABLEKS                       R4 R4 K6 ["changed"]
       45 GETTABLEKS                       R4 R4 K2 ["teamCreateEnabled"]
       47 JUMPIFEQKB                       R4 TRUE ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K7 ["showPublishStatus"]
       54 DUPTABLE                         R5 K13 [{"publishStatusPanel", "studioPublishService", "universeId", "closeMode", "teamCreateEnabled", "closeSaveDialog", "funnelId"}]
       55 GETUPVAL                         R6 3
       56 SETTABLEKS                       R6 R5 K8 ["publishStatusPanel"]
       58 GETUPVAL                         R6 6
       59 SETTABLEKS                       R6 R5 K9 ["studioPublishService"]
       61 SETTABLEKS                       R1 R5 K10 ["universeId"]
       63 GETTABLEKS                       R6 R2 K11 ["closeMode"]
       65 SETTABLEKS                       R6 R5 K11 ["closeMode"]
       67 SETTABLEKS                       R3 R5 K2 ["teamCreateEnabled"]
       69 GETUPVAL                         R6 7
       70 SETTABLEKS                       R6 R5 K12 ["closeSaveDialog"]
       72 GETTABLEKS                       R6 R2 K0 ["funnelId"]
       74 SETTABLEKS                       R6 R5 K0 ["funnelId"]
       76 CALL                             R4 1 0
       77 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKB                       R0 TRUE ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["teamCreateEnabled"]
        9 RETURN                           R0 0

PROTO_6:
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
       17 DUPTABLE                         R4 K12 [{["closeMode"], ["teamCreateEnabled"] = False, ["useTeamCreateSetting"] = True, ["keepOnDialogOpen"] = False, ["funnelId"]}]
       18 SETTABLEKS                       R2 R4 K5 ["closeMode"]
       20 SETTABLEKS                       R3 R4 K11 ["funnelId"]
       22 SETUPVAL                         R4 2
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K13 ["reportDialogOpened"]
       26 MOVE                             R5 R3
       27 MOVE                             R6 R0
       28 CALL                             R4 2 0
       29 JUMP                             ; [+8]
       30 GETUPVAL                         R3 2
       31 JUMPIFNOT                        R3 ; [+4]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K10 ["keepOnDialogOpen"]
       35 JUMPIF                           R3 ; [+2]
       36 LOADNIL                          R3
       37 SETUPVAL                         R3 2
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K14 ["createElement"]
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K23 [{"focusGui", "localization", "mouse", "plugin", "store", "theme", "calloutController", "publishStatusPanel"}]
       43 GETUPVAL                         R6 5
       44 SETTABLEKS                       R6 R5 K15 ["focusGui"]
       46 GETUPVAL                         R6 6
       47 SETTABLEKS                       R6 R5 K16 ["localization"]
       49 GETUPVAL                         R6 7
       50 NAMECALL                         R6 R6 K24 ["getMouse"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K17 ["mouse"]
       55 GETUPVAL                         R6 7
       56 SETTABLEKS                       R6 R5 K18 ["plugin"]
       58 GETUPVAL                         R6 8
       59 SETTABLEKS                       R6 R5 K19 ["store"]
       61 GETUPVAL                         R6 9
       62 CALL                             R6 0 1
       63 SETTABLEKS                       R6 R5 K20 ["theme"]
       65 GETUPVAL                         R6 10
       66 SETTABLEKS                       R6 R5 K21 ["calloutController"]
       68 GETUPVAL                         R6 11
       69 SETTABLEKS                       R6 R5 K22 ["publishStatusPanel"]
       71 NEWTABLE                         R6 0 1
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K14 ["createElement"]
       76 GETUPVAL                         R8 12
       77 DUPTABLE                         R9 K30 [{"OnClose", "OnCreateNewGame", "IsPublish", "CloseMode", "IsSaveOrPublishAs"}]
       78 GETUPVAL                         R10 13
       79 SETTABLEKS                       R10 R9 K25 ["OnClose"]
       81 GETUPVAL                         R11 14
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+3]
       84 NEWCLOSURE                       R10 P0
       85 CAPTURE                          UPVAL U2
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K26 ["OnCreateNewGame"]
       90 SETTABLEKS                       R1 R9 K27 ["IsPublish"]
       92 SETTABLEKS                       R2 R9 K28 ["CloseMode"]
       94 SETTABLEKS                       R0 R9 K29 ["IsSaveOrPublishAs"]
       96 CALL                             R7 2 -1
       97 SETLIST                          R6 R7 -1 [1]
       99 CALL                             R3 3 1
      100 GETUPVAL                         R4 8
      101 GETUPVAL                         R6 15
      102 GETUPVAL                         R8 16
      103 JUMPIFNOT                        R8 ; [+7]
      104 GETUPVAL                         R7 6
      105 LOADK                            R9 K31 ["General"]
      106 LOADK                            R10 K32 ["UntitledExperience"]
      107 NAMECALL                         R7 R7 K33 ["getText"]
      109 CALL                             R7 3 1
      110 JUMP                             ; [+6]
      111 GETUPVAL                         R7 6
      112 LOADK                            R9 K31 ["General"]
      113 LOADK                            R10 K34 ["UntitledGame"]
      114 NAMECALL                         R7 R7 K33 ["getText"]
      116 CALL                             R7 3 1
      117 MOVE                             R8 R0
      118 CALL                             R6 2 -1
      119 NAMECALL                         R4 R4 K35 ["dispatch"]
      121 CALL                             R4 -1 0
      122 GETUPVAL                         R4 3
      123 GETTABLEKS                       R4 R4 K36 ["mount"]
      125 MOVE                             R5 R3
      126 GETUPVAL                         R6 5
      127 CALL                             R4 2 1
      128 SETUPVAL                         R4 17
      129 GETUPVAL                         R4 5
      130 LOADB                            R5 1
      131 SETTABLEKS                       R5 R4 K37 ["Enabled"]
      133 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+23]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["log"]
        4 CALL                             R3 0 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 2
        7 JUMPIFNOT                        R5 ; [+7]
        8 GETUPVAL                         R4 3
        9 LOADK                            R6 K1 ["General"]
       10 LOADK                            R7 K2 ["PublishExperience"]
       11 NAMECALL                         R4 R4 K3 ["getText"]
       13 CALL                             R4 3 1
       14 JUMP                             ; [+6]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K1 ["General"]
       17 LOADK                            R7 K4 ["PublishGame"]
       18 NAMECALL                         R4 R4 K3 ["getText"]
       20 CALL                             R4 3 1
       21 SETTABLEKS                       R4 R3 K5 ["Title"]
       23 JUMP                             ; [+18]
       24 GETUPVAL                         R3 1
       25 GETUPVAL                         R5 2
       26 JUMPIFNOT                        R5 ; [+7]
       27 GETUPVAL                         R4 3
       28 LOADK                            R6 K1 ["General"]
       29 LOADK                            R7 K6 ["SaveExperience"]
       30 NAMECALL                         R4 R4 K3 ["getText"]
       32 CALL                             R4 3 1
       33 JUMP                             ; [+6]
       34 GETUPVAL                         R4 3
       35 LOADK                            R6 K1 ["General"]
       36 LOADK                            R7 K7 ["SaveGame"]
       37 NAMECALL                         R4 R4 K3 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K5 ["Title"]
       42 GETUPVAL                         R3 4
       43 MOVE                             R4 R0
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 CALL                             R3 3 0
       47 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openPublishStatus"]
        3 DUPTABLE                         R1 K4 [{["publishStatusPanel"], ["source"] = "fileMenu"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["publishStatusPanel"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
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
       15 DUPTABLE                         R1 K9 [{["closeMode"], ["teamCreateEnabled"] = False, ["useTeamCreateSetting"] = False, ["keepOnDialogOpen"] = True}]
       16 GETIMPORT                        R2 K13 [Enum.StudioCloseMode.None]
       18 SETTABLEKS                       R2 R1 K3 ["closeMode"]
       20 SETUPVAL                         R1 2
       21 GETUPVAL                         R1 3
       22 LOADNIL                          R2
       23 SETUPVAL                         R2 3
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R3 R1 K14 ["success"]
       28 GETTABLEKS                       R4 R1 K15 ["universeId"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K2 [game]
       11 GETTABLEKS                       R0 R0 K3 ["PlaceId"]
       13 JUMPIFNOTEQKN                    R0 K4 [0] ; [+2]
       15 RETURN                           R0 0
       16 LOADB                            R1 1
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R1 3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U4
       30 NAMECALL                         R1 R1 K5 ["andThen"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_14:
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
       18 CAPTURE                          UPVAL U8
       19 NAMECALL                         R0 R0 K3 ["Connect"]
       21 CALL                             R0 2 0
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["signals"]
       25 GETTABLEKS                       R0 R1 K4 ["StudioPublishService.GamePublishFinished"]
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CAPTURE                          UPVAL U14
       34 NAMECALL                         R0 R0 K3 ["Connect"]
       36 CALL                             R0 2 0
       37 GETUPVAL                         R1 3
       38 GETTABLEKS                       R1 R1 K2 ["signals"]
       40 GETTABLEKS                       R0 R1 K5 ["StudioPublishService.GamePublishCancelled"]
       42 NEWCLOSURE                       R2 P2
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U15
       45 CAPTURE                          UPVAL U16
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          UPVAL U17
       48 CAPTURE                          UPVAL U18
       49 NAMECALL                         R0 R0 K3 ["Connect"]
       51 CALL                             R0 2 0
       52 GETUPVAL                         R0 11
       53 CALL                             R0 0 1
       54 JUMPIFNOT                        R0 ; [+38]
       55 GETUPVAL                         R0 3
       56 GETTABLEKS                       R0 R0 K6 ["actionTriggeredSignals"]
       58 JUMPIFNOT                        R0 ; [+4]
       59 GETUPVAL                         R1 3
       60 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       62 GETTABLEN                        R0 R1 1
       63 JUMPIFNOT                        R0 ; [+8]
       64 GETUPVAL                         R1 19
       65 JUMPIFNOT                        R1 ; [+6]
       66 NEWCLOSURE                       R3 P3
       67 CAPTURE                          UPVAL U16
       68 CAPTURE                          UPVAL U19
       69 NAMECALL                         R1 R0 K3 ["Connect"]
       71 CALL                             R1 2 0
       72 GETUPVAL                         R1 3
       73 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       75 JUMPIFNOT                        R1 ; [+4]
       76 GETUPVAL                         R2 3
       77 GETTABLEKS                       R2 R2 K6 ["actionTriggeredSignals"]
       79 GETTABLEN                        R1 R2 2
       80 JUMPIFNOT                        R1 ; [+12]
       81 GETUPVAL                         R2 19
       82 JUMPIFNOT                        R2 ; [+10]
       83 NEWCLOSURE                       R4 P4
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          UPVAL U15
       87 CAPTURE                          UPVAL U20
       88 CAPTURE                          UPVAL U13
       89 CAPTURE                          UPVAL U14
       90 NAMECALL                         R2 R1 K3 ["Connect"]
       92 CALL                             R2 2 0
       93 RETURN                           R0 0

PROTO_15:
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
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R15
      172 CAPTURE                          UPVAL U4
      173 CAPTURE                          VAL R24
      174 NEWCLOSURE                       R26 P3
      175 CAPTURE                          VAL R2
      176 CAPTURE                          REF R19
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          VAL R16
      180 CAPTURE                          UPVAL U6
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R24
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R28 R2 K10 ["Src"]
      187 GETTABLEKS                       R28 R28 K39 ["Util"]
      189 GETTABLEKS                       R28 R28 K40 ["CalloutController"]
      191 CALL                             R27 1 1
      192 GETTABLEKS                       R28 R27 K25 ["new"]
      194 CALL                             R28 0 1
      195 GETUPVAL                         R29 7
      196 JUMPIF                           R29 ; [+23]
      197 LOADK                            R31 K41 ["TcToggleCallout"]
      198 LOADK                            R32 K42 ["Title"]
      199 NAMECALL                         R29 R16 K43 ["getText"]
      201 CALL                             R29 3 1
      202 LOADK                            R32 K41 ["TcToggleCallout"]
      203 LOADK                            R33 K44 ["Description"]
      204 NAMECALL                         R30 R16 K43 ["getText"]
      206 CALL                             R30 3 1
      207 GETIMPORT                        R31 K46 [game]
      209 LOADK                            R33 K47 ["TeamCreateLink"]
      210 NAMECALL                         R31 R31 K48 ["GetFastString"]
      212 CALL                             R31 2 1
      213 LOADK                            R34 K49 ["PublishPlaceAsTeamCreateToggleCallout"]
      214 MOVE                             R35 R29
      215 MOVE                             R36 R30
      216 MOVE                             R37 R31
      217 NAMECALL                         R32 R28 K50 ["defineCallout"]
      219 CALL                             R32 5 0
      220 NEWCLOSURE                       R29 P4
      221 CAPTURE                          UPVAL U0
      222 CAPTURE                          UPVAL U2
      223 CAPTURE                          REF R20
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R7
      226 CAPTURE                          REF R19
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R28
      232 CAPTURE                          REF R17
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R24
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          VAL R11
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          REF R18
      239 NEWCLOSURE                       R30 P5
      240 CAPTURE                          VAL R0
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R1
      244 CAPTURE                          UPVAL U9
      245 CAPTURE                          REF R19
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R23
      251 CAPTURE                          UPVAL U0
      252 CAPTURE                          REF R21
      253 CAPTURE                          REF R22
      254 CAPTURE                          VAL R25
      255 CAPTURE                          REF R20
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          VAL R24
      259 CAPTURE                          REF R17
      260 CAPTURE                          UPVAL U10
      261 MOVE                             R31 R30
      262 CALL                             R31 0 0
      263 CLOSEUPVALS                      R17
      264 RETURN                           R0 0

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
       54 GETIMPORT                        R7 K11 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Flags"]
       60 GETTABLEKS                       R8 R8 K17 ["getFFlagSTUDIOPLAT45025PreserveTeamCreateOnPublishAs"]
       62 CALL                             R7 1 1
       63 MOVE                             R9 R6
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+10]
       66 GETIMPORT                        R8 K11 [require]
       68 GETTABLEKS                       R9 R0 K12 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Util"]
       72 GETTABLEKS                       R9 R9 K19 ["PublishStatusPanel"]
       74 CALL                             R8 1 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 GETIMPORT                        R9 K11 [require]
       79 GETTABLEKS                       R10 R0 K12 ["Src"]
       81 GETTABLEKS                       R10 R10 K18 ["Util"]
       83 GETTABLEKS                       R10 R10 K20 ["FirstPublishFlow"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K11 [require]
       88 GETTABLEKS                       R11 R0 K12 ["Src"]
       90 GETTABLEKS                       R11 R11 K18 ["Util"]
       92 GETTABLEKS                       R11 R11 K21 ["PublishExposure"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K11 [require]
       97 GETTABLEKS                       R12 R0 K12 ["Src"]
       99 GETTABLEKS                       R12 R12 K22 ["Network"]
      101 GETTABLEKS                       R12 R12 K23 ["Requests"]
      103 GETTABLEKS                       R12 R12 K24 ["ApiFetchPublishedVersionStatus"]
      105 CALL                             R11 1 1
      106 DUPCLOSURE                       R12 K25 [PROTO_15]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 RETURN                           R12 1
