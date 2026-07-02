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
        7 DUPTABLE                         R3 K13 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "rbxlocaltheme://GameSettings", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "PartyEmulator", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R4 R3 K1 ["uri"]
       11 DUPCLOSURE                       R4 K23 [PROTO_0]
       12 SETTABLEKS                       R4 R3 K4 ["getText"]
       14 DUPCLOSURE                       R4 K24 [PROTO_1]
       15 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       17 SETLIST                          R2 R3 1 [1]
       19 DUPTABLE                         R3 K31 [{["plugin"], ["pluginName"] = "PartyEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
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
       52 DUPTABLE                         R7 K42 [{["id"] = "PartyEmulator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       53 GETIMPORT                        R8 K45 [DockWidgetPluginGuiInfo.new]
       55 GETIMPORT                        R9 K49 [Enum.InitialDockState.Bottom]
       57 LOADB                            R10 0
       58 LOADB                            R11 0
       59 LOADN                            R12 640
       60 LOADN                            R13 480
       61 LOADN                            R14 250
       62 LOADN                            R15 200
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
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["pluginType"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["PluginLoaderBuilder"]
       25 GETTABLEKS                       R4 R0 K12 ["Src"]
       27 GETTABLEKS                       R4 R4 K13 ["Resources"]
       29 GETTABLEKS                       R4 R4 K14 ["Localization"]
       31 GETTABLEKS                       R4 R4 K15 ["SourceStrings"]
       33 GETTABLEKS                       R5 R0 K12 ["Src"]
       35 GETTABLEKS                       R5 R5 K13 ["Resources"]
       37 GETTABLEKS                       R5 R5 K14 ["Localization"]
       39 GETTABLEKS                       R5 R5 K16 ["LocalizedStrings"]
       41 DUPCLOSURE                       R6 K17 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 RETURN                           R6 1
