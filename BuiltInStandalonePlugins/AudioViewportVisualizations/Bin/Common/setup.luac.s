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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 SETTABLEKS                       R1 R0 K0 ["Name"]
        5 NEWTABLE                         R1 0 2
        7 DUPTABLE                         R2 K14 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"]}]
        8 DUPTABLE                         R3 K23 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R3 R2 K1 ["uri"]
       11 DUPCLOSURE                       R3 K24 [PROTO_2]
       12 SETTABLEKS                       R3 R2 K4 ["getText"]
       14 DUPCLOSURE                       R3 K25 [PROTO_3]
       15 SETTABLEKS                       R3 R2 K5 ["getTooltip"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K16 ["Standalone"]
       20 GETTABLEKS                       R3 R3 K26 ["isShowSourcesEnabled"]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K13 ["checked"]
       25 DUPTABLE                         R3 K14 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"]}]
       26 DUPTABLE                         R4 K28 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "ToggleShowInactiveSources"}]
       27 SETTABLEKS                       R4 R3 K1 ["uri"]
       29 DUPCLOSURE                       R4 K29 [PROTO_4]
       30 SETTABLEKS                       R4 R3 K4 ["getText"]
       32 DUPCLOSURE                       R4 K30 [PROTO_5]
       33 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K16 ["Standalone"]
       38 GETTABLEKS                       R4 R4 K31 ["isShowInactiveEnabled"]
       40 CALL                             R4 0 1
       41 SETTABLEKS                       R4 R3 K13 ["checked"]
       43 SETLIST                          R1 R2 2 [1]
       45 DUPTABLE                         R2 K38 [{["plugin"], ["pluginName"] = "AudioViewportVisualizations", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       46 SETTABLEKS                       R0 R2 K32 ["plugin"]
       48 GETUPVAL                         R3 2
       49 SETTABLEKS                       R3 R2 K34 ["translationResourceTable"]
       51 GETUPVAL                         R3 3
       52 SETTABLEKS                       R3 R2 K35 ["fallbackResourceTable"]
       54 SETTABLEKS                       R1 R2 K37 ["actionInfos"]
       56 GETIMPORT                        R3 K40 [game]
       58 LOADK                            R5 K41 ["RunService"]
       59 NAMECALL                         R3 R3 K42 ["GetService"]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K43 ["get"]
       65 CALL                             R5 0 1
       66 GETUPVAL                         R6 4
       67 GETTABLEKS                       R6 R6 K16 ["Standalone"]
       69 JUMPIFEQ                         R5 R6 ; [+2]
       71 LOADB                            R4 0 +1
       72 LOADB                            R4 1
       73 NAMECALL                         R5 R3 K44 ["IsEdit"]
       75 CALL                             R5 1 1
       76 JUMPIF                           R4 ; [+1]
       77 JUMPIFNOT                        R5 ; [+17]
       78 GETUPVAL                         R6 5
       79 GETTABLEKS                       R6 R6 K45 ["build"]
       81 MOVE                             R7 R2
       82 CALL                             R6 1 1
       83 GETTABLEKS                       R7 R6 K46 ["pluginLoader"]
       85 NAMECALL                         R7 R7 K47 ["waitForUserInteraction"]
       87 CALL                             R7 1 1
       88 JUMPIF                           R7 ; [+1]
       89 RETURN                           R0 0
       90 GETUPVAL                         R8 6
       91 MOVE                             R9 R0
       92 MOVE                             R10 R6
       93 CALL                             R8 2 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R6 5
       96 GETTABLEKS                       R6 R6 K45 ["build"]
       98 MOVE                             R7 R2
       99 CALL                             R6 1 0
      100 RETURN                           R0 0

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
       50 DUPCLOSURE                       R7 K19 [PROTO_1]
       51 CAPTURE                          VAL R0
       52 DUPCLOSURE                       R8 K20 [PROTO_6]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 RETURN                           R8 1
