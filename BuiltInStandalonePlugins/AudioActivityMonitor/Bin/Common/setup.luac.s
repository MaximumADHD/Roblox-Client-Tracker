PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K13 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "Sound", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioActivityMonitor", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R4 R3 K1 ["uri"]
       11 GETUPVAL                         R4 1
       12 SETTABLEKS                       R4 R3 K2 ["isPreexistingAction"]
       14 DUPCLOSURE                       R4 K23 [PROTO_0]
       15 SETTABLEKS                       R4 R3 K3 ["getText"]
       17 DUPCLOSURE                       R4 K24 [PROTO_1]
       18 SETTABLEKS                       R4 R3 K4 ["getTooltip"]
       20 SETLIST                          R2 R3 1 [1]
       22 DUPTABLE                         R3 K34 [{["plugin"], ["pluginName"] = "AudioActivityMonitor", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["getToolbarName"] = , ["buttonInfo"] = , ["actionInfos"]}]
       23 SETTABLEKS                       R0 R3 K25 ["plugin"]
       25 GETUPVAL                         R4 2
       26 SETTABLEKS                       R4 R3 K27 ["translationResourceTable"]
       28 GETUPVAL                         R4 3
       29 SETTABLEKS                       R4 R3 K28 ["fallbackResourceTable"]
       31 SETTABLEKS                       R2 R3 K33 ["actionInfos"]
       33 GETIMPORT                        R4 K36 [game]
       35 LOADK                            R6 K37 ["RunService"]
       36 NAMECALL                         R4 R4 K38 ["GetService"]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K39 ["get"]
       42 CALL                             R6 0 1
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K15 ["Standalone"]
       46 JUMPIFEQ                         R6 R7 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 NAMECALL                         R6 R4 K40 ["IsEdit"]
       52 CALL                             R6 1 1
       53 JUMPIF                           R5 ; [+1]
       54 JUMPIFNOT                        R6 ; [+40]
       55 DUPTABLE                         R7 K45 [{["id"] = "AudioActivityMonitor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       56 GETIMPORT                        R8 K48 [DockWidgetPluginGuiInfo.new]
       58 GETIMPORT                        R9 K52 [Enum.InitialDockState.Bottom]
       60 LOADB                            R10 0
       61 LOADB                            R11 0
       62 LOADN                            R12 640
       63 LOADN                            R13 480
       64 LOADN                            R14 250
       65 LOADN                            R15 200
       66 CALL                             R8 7 1
       67 SETTABLEKS                       R8 R7 K42 ["dockWidgetPluginGuiInfo"]
       69 DUPCLOSURE                       R8 K53 [PROTO_2]
       70 SETTABLEKS                       R8 R7 K43 ["getDockTitle"]
       72 GETIMPORT                        R8 K56 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R8 R7 K44 ["zIndexBehavior"]
       76 SETTABLEKS                       R7 R3 K57 ["dockWidgetInfo"]
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R7 R7 K58 ["build"]
       81 MOVE                             R8 R3
       82 CALL                             R7 1 1
       83 GETTABLEKS                       R8 R7 K59 ["pluginLoader"]
       85 NAMECALL                         R8 R8 K60 ["waitForUserInteraction"]
       87 CALL                             R8 1 1
       88 JUMPIF                           R8 ; [+1]
       89 RETURN                           R0 0
       90 MOVE                             R9 R1
       91 MOVE                             R10 R0
       92 MOVE                             R11 R7
       93 CALL                             R9 2 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R7 5
       96 GETTABLEKS                       R7 R7 K58 ["build"]
       98 MOVE                             R8 R3
       99 CALL                             R7 1 0
      100 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
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
       43 GETTABLEKS                       R7 R0 K14 ["Bin"]
       45 GETTABLEKS                       R7 R7 K15 ["Common"]
       47 GETTABLEKS                       R7 R7 K17 ["defineLuaFlags"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["getFFlagEnableAudioActivityMonitorCpp"]
       52 CALL                             R7 0 1
       53 DUPCLOSURE                       R8 K19 [PROTO_3]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
