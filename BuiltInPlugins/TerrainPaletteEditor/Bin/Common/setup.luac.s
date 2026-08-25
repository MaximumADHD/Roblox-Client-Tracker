PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["MenuItem"]
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
        4 LOADK                            R7 K1 ["MenuItem"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K13 [{["uri"], ["isPreexistingAction"] = True, ["getText"], ["getTooltip"], ["icon"] = "GameSettings", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "TerrainPaletteEditor", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R4 R3 K1 ["uri"]
       11 DUPCLOSURE                       R4 K23 [PROTO_0]
       12 SETTABLEKS                       R4 R3 K4 ["getText"]
       14 DUPCLOSURE                       R4 K24 [PROTO_1]
       15 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       17 SETLIST                          R2 R3 1 [1]
       19 DUPTABLE                         R3 K31 [{["plugin"], ["pluginName"] = "TerrainPaletteEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       20 SETTABLEKS                       R0 R3 K25 ["plugin"]
       22 GETUPVAL                         R4 1
       23 SETTABLEKS                       R4 R3 K27 ["translationResourceTable"]
       25 GETUPVAL                         R4 2
       26 SETTABLEKS                       R4 R3 K28 ["fallbackResourceTable"]
       28 SETTABLEKS                       R2 R3 K30 ["actionInfos"]
       30 GETIMPORT                        R4 K33 [game]
       32 LOADK                            R6 K34 ["RunService"]
       33 NAMECALL                         R4 R4 K35 ["GetService"]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K36 ["get"]
       39 CALL                             R6 0 1
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K15 ["Standalone"]
       43 JUMPIFEQ                         R6 R7 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 NAMECALL                         R6 R4 K37 ["IsEdit"]
       49 CALL                             R6 1 1
       50 JUMPIF                           R5 ; [+1]
       51 JUMPIFNOT                        R6 ; [+40]
       52 DUPTABLE                         R7 K42 [{["id"] = "TerrainPaletteEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       53 GETIMPORT                        R8 K45 [DockWidgetPluginGuiInfo.new]
       55 GETIMPORT                        R9 K49 [Enum.InitialDockState.Left]
       57 LOADB                            R10 0
       58 LOADB                            R11 0
       59 LOADN                            R12 300
       60 LOADN                            R13 600
       61 LOADN                            R14 250
       62 LOADN                            R15 400
       63 CALL                             R8 7 1
       64 SETTABLEKS                       R8 R7 K39 ["dockWidgetPluginGuiInfo"]
       66 DUPCLOSURE                       R8 K50 [PROTO_2]
       67 SETTABLEKS                       R8 R7 K40 ["getDockTitle"]
       69 GETIMPORT                        R8 K53 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R8 R7 K41 ["zIndexBehavior"]
       73 SETTABLEKS                       R7 R3 K54 ["dockWidgetInfo"]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K55 ["build"]
       78 MOVE                             R8 R3
       79 CALL                             R7 1 1
       80 GETTABLEKS                       R8 R7 K56 ["pluginLoader"]
       82 NAMECALL                         R8 R8 K57 ["waitForUserInteraction"]
       84 CALL                             R8 1 1
       85 JUMPIF                           R8 ; [+1]
       86 RETURN                           R0 0
       87 MOVE                             R9 R1
       88 MOVE                             R10 R0
       89 MOVE                             R11 R7
       90 CALL                             R9 2 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R7 R7 K55 ["build"]
       95 MOVE                             R8 R3
       96 CALL                             R7 1 0
       97 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
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
       41 DUPCLOSURE                       R6 K17 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
