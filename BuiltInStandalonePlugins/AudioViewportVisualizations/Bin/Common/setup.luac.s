PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Packages"]
        5 GETTABLEKS                       R3 R3 K3 ["React"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K1 [require]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Packages"]
       13 GETTABLEKS                       R4 R4 K4 ["ReactRoblox"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K1 [require]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K5 ["Src"]
       21 GETTABLEKS                       R5 R5 K6 ["MainPlugin"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K7 ["createElement"]
       26 MOVE                             R6 R4
       27 DUPTABLE                         R7 K10 [{"Plugin", "PluginLoaderContext"}]
       28 SETTABLEKS                       R0 R7 K8 ["Plugin"]
       30 SETTABLEKS                       R1 R7 K9 ["PluginLoaderContext"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K13 [Instance.new]
       35 LOADK                            R7 K14 ["Frame"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R3 K15 ["createRoot"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 MOVE                             R10 R5
       42 NAMECALL                         R8 R7 K16 ["render"]
       44 CALL                             R8 2 0
       45 GETTABLEKS                       R8 R0 K17 ["Unloading"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R7
       49 NAMECALL                         R8 R8 K18 ["Connect"]
       51 CALL                             R8 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["VisualizationModes"]
        3 LOADK                            R6 K1 ["StudioModes"]
        4 LOADK                            R7 K2 ["ShowAudioSources"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["VisualizationModes"]
        3 LOADK                            R6 K1 ["StudioModes"]
        4 LOADK                            R7 K2 ["ShowAudioSourcesToolTip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["VisualizationModes"]
        3 LOADK                            R6 K1 ["StudioModes"]
        4 LOADK                            R7 K2 ["ShowAudioInactiveSources"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["VisualizationModes"]
        3 LOADK                            R6 K1 ["StudioModes"]
        4 LOADK                            R7 K2 ["ShowAudioInactiveSourcesToolTip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 2
        7 DUPTABLE                         R3 K14 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"]}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K15 ["TOGGLE_ACTION_URI"]
       11 SETTABLEKS                       R4 R3 K1 ["uri"]
       13 DUPCLOSURE                       R4 K16 [PROTO_2]
       14 SETTABLEKS                       R4 R3 K4 ["getText"]
       16 DUPCLOSURE                       R4 K17 [PROTO_3]
       17 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K18 ["Standalone"]
       22 GETTABLEKS                       R4 R4 K19 ["isShowSourcesEnabled"]
       24 CALL                             R4 0 1
       25 SETTABLEKS                       R4 R3 K13 ["checked"]
       27 DUPTABLE                         R4 K14 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"]}]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K20 ["SHOW_INACTIVE_ACTION_URI"]
       31 SETTABLEKS                       R5 R4 K1 ["uri"]
       33 DUPCLOSURE                       R5 K21 [PROTO_4]
       34 SETTABLEKS                       R5 R4 K4 ["getText"]
       36 DUPCLOSURE                       R5 K22 [PROTO_5]
       37 SETTABLEKS                       R5 R4 K5 ["getTooltip"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K18 ["Standalone"]
       42 GETTABLEKS                       R5 R5 K23 ["isShowInactiveEnabled"]
       44 CALL                             R5 0 1
       45 SETTABLEKS                       R5 R4 K13 ["checked"]
       47 SETLIST                          R2 R3 2 [1]
       49 DUPTABLE                         R3 K31 [{["plugin"], ["pluginName"] = "AudioViewportVisualizations", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       50 SETTABLEKS                       R0 R3 K24 ["plugin"]
       52 GETUPVAL                         R4 3
       53 SETTABLEKS                       R4 R3 K27 ["translationResourceTable"]
       55 GETUPVAL                         R4 4
       56 SETTABLEKS                       R4 R3 K28 ["fallbackResourceTable"]
       58 SETTABLEKS                       R2 R3 K30 ["actionInfos"]
       60 GETIMPORT                        R4 K33 [game]
       62 LOADK                            R6 K34 ["RunService"]
       63 NAMECALL                         R4 R4 K35 ["GetService"]
       65 CALL                             R4 2 1
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K36 ["get"]
       69 CALL                             R6 0 1
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R7 R7 K18 ["Standalone"]
       73 JUMPIFEQ                         R6 R7 ; [+2]
       75 LOADB                            R5 0 +1
       76 LOADB                            R5 1
       77 NAMECALL                         R6 R4 K37 ["IsEdit"]
       79 CALL                             R6 1 1
       80 JUMPIFNOT                        R1 ; [+3]
       81 GETTABLEKS                       R7 R1 K38 ["onActionsCreated"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R7
       85 JUMPIF                           R5 ; [+1]
       86 JUMPIFNOT                        R6 ; [+20]
       87 GETUPVAL                         R8 6
       88 GETTABLEKS                       R8 R8 K39 ["build"]
       90 MOVE                             R9 R3
       91 CALL                             R8 1 1
       92 JUMPIFNOT                        R7 ; [+2]
       93 MOVE                             R9 R7
       94 CALL                             R9 0 0
       95 GETTABLEKS                       R9 R8 K40 ["pluginLoader"]
       97 NAMECALL                         R9 R9 K41 ["waitForUserInteraction"]
       99 CALL                             R9 1 1
      100 JUMPIF                           R9 ; [+1]
      101 RETURN                           R0 0
      102 GETUPVAL                         R10 7
      103 MOVE                             R11 R0
      104 MOVE                             R12 R8
      105 CALL                             R10 2 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R8 6
      108 GETTABLEKS                       R8 R8 K39 ["build"]
      110 MOVE                             R9 R3
      111 CALL                             R8 1 0
      112 JUMPIFNOT                        R7 ; [+2]
      113 MOVE                             R8 R7
      114 CALL                             R8 0 0
      115 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K17 ["Util"]
       47 GETTABLEKS                       R7 R7 K18 ["DMCoordinator"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K10 ["Resources"]
       56 GETTABLEKS                       R8 R8 K19 ["ActionUris"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K20 [PROTO_1]
       60 CAPTURE                          VAL R0
       61 DUPCLOSURE                       R9 K21 [PROTO_6]
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 RETURN                           R9 1
