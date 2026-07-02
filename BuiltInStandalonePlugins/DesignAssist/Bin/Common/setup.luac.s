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
        5 LOADNIL                          R2
        6 NEWTABLE                         R3 0 1
        8 DUPTABLE                         R4 K13 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "GameSettings", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        9 DUPTABLE                         R5 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "DesignAssist", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       10 SETTABLEKS                       R5 R4 K1 ["uri"]
       12 DUPCLOSURE                       R5 K23 [PROTO_0]
       13 SETTABLEKS                       R5 R4 K4 ["getText"]
       15 DUPCLOSURE                       R5 K24 [PROTO_1]
       16 SETTABLEKS                       R5 R4 K5 ["getTooltip"]
       18 SETLIST                          R3 R4 1 [1]
       20 MOVE                             R2 R3
       21 DUPTABLE                         R3 K31 [{["plugin"], ["pluginName"] = "DesignAssist", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       22 SETTABLEKS                       R0 R3 K25 ["plugin"]
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R4 R3 K27 ["translationResourceTable"]
       27 GETUPVAL                         R4 2
       28 SETTABLEKS                       R4 R3 K28 ["fallbackResourceTable"]
       30 SETTABLEKS                       R2 R3 K30 ["actionInfos"]
       32 GETIMPORT                        R4 K33 [game]
       34 LOADK                            R6 K34 ["RunService"]
       35 NAMECALL                         R4 R4 K35 ["GetService"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K36 ["get"]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K15 ["Standalone"]
       45 JUMPIFEQ                         R6 R7 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 NAMECALL                         R6 R4 K37 ["IsEdit"]
       51 CALL                             R6 1 1
       52 JUMPIF                           R5 ; [+1]
       53 JUMPIFNOT                        R6 ; [+40]
       54 DUPTABLE                         R7 K42 [{["id"] = "DesignAssist", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       55 GETIMPORT                        R8 K45 [DockWidgetPluginGuiInfo.new]
       57 GETIMPORT                        R9 K49 [Enum.InitialDockState.Bottom]
       59 LOADB                            R10 0
       60 LOADB                            R11 0
       61 LOADN                            R12 640
       62 LOADN                            R13 480
       63 LOADN                            R14 250
       64 LOADN                            R15 200
       65 CALL                             R8 7 1
       66 SETTABLEKS                       R8 R7 K39 ["dockWidgetPluginGuiInfo"]
       68 DUPCLOSURE                       R8 K50 [PROTO_2]
       69 SETTABLEKS                       R8 R7 K40 ["getDockTitle"]
       71 GETIMPORT                        R8 K53 [Enum.ZIndexBehavior.Sibling]
       73 SETTABLEKS                       R8 R7 K41 ["zIndexBehavior"]
       75 SETTABLEKS                       R7 R3 K54 ["dockWidgetInfo"]
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R7 R7 K55 ["build"]
       80 MOVE                             R8 R3
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R7 K56 ["pluginLoader"]
       84 NAMECALL                         R8 R8 K57 ["waitForUserInteraction"]
       86 CALL                             R8 1 1
       87 JUMPIF                           R8 ; [+1]
       88 RETURN                           R0 0
       89 MOVE                             R9 R1
       90 MOVE                             R10 R0
       91 MOVE                             R11 R7
       92 CALL                             R9 2 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R7 4
       95 GETTABLEKS                       R7 R7 K55 ["build"]
       97 MOVE                             R8 R3
       98 CALL                             R7 1 0
       99 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
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
