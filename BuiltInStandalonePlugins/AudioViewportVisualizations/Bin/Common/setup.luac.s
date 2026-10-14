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
        7 DUPTABLE                         R2 K14 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"] = False}]
        8 DUPTABLE                         R3 K23 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R3 R2 K1 ["uri"]
       11 DUPCLOSURE                       R3 K24 [PROTO_2]
       12 SETTABLEKS                       R3 R2 K4 ["getText"]
       14 DUPCLOSURE                       R3 K25 [PROTO_3]
       15 SETTABLEKS                       R3 R2 K5 ["getTooltip"]
       17 DUPTABLE                         R3 K26 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "AudioDeviceOutput", ["enabled"] = True, ["visible"] = True, ["visibleOnRibbon"] = False, ["checkable"] = True, ["checked"] = True}]
       18 DUPTABLE                         R4 K28 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "ToggleShowInactiveSources"}]
       19 SETTABLEKS                       R4 R3 K1 ["uri"]
       21 DUPCLOSURE                       R4 K29 [PROTO_4]
       22 SETTABLEKS                       R4 R3 K4 ["getText"]
       24 DUPCLOSURE                       R4 K30 [PROTO_5]
       25 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       27 SETLIST                          R1 R2 2 [1]
       29 DUPTABLE                         R2 K37 [{["plugin"], ["pluginName"] = "AudioViewportVisualizations", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       30 SETTABLEKS                       R0 R2 K31 ["plugin"]
       32 GETUPVAL                         R3 1
       33 SETTABLEKS                       R3 R2 K33 ["translationResourceTable"]
       35 GETUPVAL                         R3 2
       36 SETTABLEKS                       R3 R2 K34 ["fallbackResourceTable"]
       38 SETTABLEKS                       R1 R2 K36 ["actionInfos"]
       40 GETIMPORT                        R3 K39 [game]
       42 LOADK                            R5 K40 ["RunService"]
       43 NAMECALL                         R3 R3 K41 ["GetService"]
       45 CALL                             R3 2 1
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K42 ["get"]
       49 CALL                             R5 0 1
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K16 ["Standalone"]
       53 JUMPIFEQ                         R5 R6 ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 NAMECALL                         R5 R3 K43 ["IsEdit"]
       59 CALL                             R5 1 1
       60 JUMPIF                           R4 ; [+1]
       61 JUMPIFNOT                        R5 ; [+17]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K44 ["build"]
       65 MOVE                             R7 R2
       66 CALL                             R6 1 1
       67 GETTABLEKS                       R7 R6 K45 ["pluginLoader"]
       69 NAMECALL                         R7 R7 K46 ["waitForUserInteraction"]
       71 CALL                             R7 1 1
       72 JUMPIF                           R7 ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R8 5
       75 MOVE                             R9 R0
       76 MOVE                             R10 R6
       77 CALL                             R8 2 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R6 4
       80 GETTABLEKS                       R6 R6 K44 ["build"]
       82 MOVE                             R7 R2
       83 CALL                             R6 1 0
       84 RETURN                           R0 0

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
       41 DUPCLOSURE                       R6 K17 [PROTO_1]
       42 CAPTURE                          VAL R0
       43 DUPCLOSURE                       R7 K18 [PROTO_6]
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
