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
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K7 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://GameSettings", ["enabled"] = False}]
        6 DUPCLOSURE                       R3 K8 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K9 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K17 [{["plugin"], ["pluginName"] = "ConnectionIndicator", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
       13 SETTABLEKS                       R0 R3 K10 ["plugin"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K13 ["translationResourceTable"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K14 ["fallbackResourceTable"]
       21 DUPCLOSURE                       R4 K18 [PROTO_2]
       22 SETTABLEKS                       R4 R3 K15 ["getToolbarName"]
       24 SETTABLEKS                       R2 R3 K16 ["buttonInfo"]
       26 GETIMPORT                        R4 K20 [game]
       28 LOADK                            R6 K21 ["RunService"]
       29 NAMECALL                         R4 R4 K22 ["GetService"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K23 ["get"]
       35 CALL                             R6 0 1
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K24 ["Standalone"]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 NAMECALL                         R6 R4 K25 ["IsEdit"]
       45 CALL                             R6 1 1
       46 JUMPIF                           R5 ; [+1]
       47 JUMPIFNOT                        R6 ; [+43]
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R2 K5 ["enabled"]
       51 DUPTABLE                         R7 K30 [{["id"] = "ConnectionIndicator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       52 GETIMPORT                        R8 K33 [DockWidgetPluginGuiInfo.new]
       54 GETIMPORT                        R9 K37 [Enum.InitialDockState.Bottom]
       56 LOADB                            R10 0
       57 LOADB                            R11 0
       58 LOADN                            R12 640
       59 LOADN                            R13 480
       60 LOADN                            R14 250
       61 LOADN                            R15 200
       62 CALL                             R8 7 1
       63 SETTABLEKS                       R8 R7 K27 ["dockWidgetPluginGuiInfo"]
       65 DUPCLOSURE                       R8 K38 [PROTO_3]
       66 SETTABLEKS                       R8 R7 K28 ["getDockTitle"]
       68 GETIMPORT                        R8 K41 [Enum.ZIndexBehavior.Sibling]
       70 SETTABLEKS                       R8 R7 K29 ["zIndexBehavior"]
       72 SETTABLEKS                       R7 R3 K42 ["dockWidgetInfo"]
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R7 R7 K43 ["build"]
       77 MOVE                             R8 R3
       78 CALL                             R7 1 1
       79 GETTABLEKS                       R8 R7 K44 ["pluginLoader"]
       81 NAMECALL                         R8 R8 K45 ["waitForUserInteraction"]
       83 CALL                             R8 1 1
       84 JUMPIF                           R8 ; [+1]
       85 RETURN                           R0 0
       86 MOVE                             R9 R1
       87 MOVE                             R10 R0
       88 MOVE                             R11 R7
       89 CALL                             R9 2 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R7 4
       92 GETTABLEKS                       R7 R7 K43 ["build"]
       94 MOVE                             R8 R3
       95 CALL                             R7 1 0
       96 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
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
       41 DUPCLOSURE                       R6 K17 [PROTO_4]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
