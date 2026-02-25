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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K5 [{"getName", "getDescription", "icon", "enabled"}]
        6 DUPCLOSURE                       R3 K6 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K7 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K8 ["rbxlocaltheme://GameSettings"]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K4 ["enabled"]
       18 DUPTABLE                         R3 K15 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       19 SETTABLEKS                       R0 R3 K9 ["plugin"]
       21 LOADK                            R4 K16 ["ConnectionIndicator"]
       22 SETTABLEKS                       R4 R3 K10 ["pluginName"]
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       27 GETUPVAL                         R4 2
       28 SETTABLEKS                       R4 R3 K12 ["fallbackResourceTable"]
       30 DUPCLOSURE                       R4 K17 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K13 ["getToolbarName"]
       33 SETTABLEKS                       R2 R3 K14 ["buttonInfo"]
       35 GETIMPORT                        R4 K19 [game]
       37 LOADK                            R6 K20 ["RunService"]
       38 NAMECALL                         R4 R4 K21 ["GetService"]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R6 R7 K22 ["get"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R7 R8 K23 ["Standalone"]
       48 JUMPIFEQ                         R6 R7 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 NAMECALL                         R6 R4 K24 ["IsEdit"]
       54 CALL                             R6 1 1
       55 JUMPIF                           R5 ; [+1]
       56 JUMPIFNOT                        R6 ; [+46]
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R2 K4 ["enabled"]
       60 DUPTABLE                         R7 K29 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       61 LOADK                            R8 K16 ["ConnectionIndicator"]
       62 SETTABLEKS                       R8 R7 K25 ["id"]
       64 GETIMPORT                        R8 K32 [DockWidgetPluginGuiInfo.new]
       66 GETIMPORT                        R9 K36 [Enum.InitialDockState.Bottom]
       68 LOADB                            R10 0
       69 LOADB                            R11 0
       70 LOADN                            R12 128
       71 LOADN                            R13 224
       72 LOADN                            R14 250
       73 LOADN                            R15 200
       74 CALL                             R8 7 1
       75 SETTABLEKS                       R8 R7 K26 ["dockWidgetPluginGuiInfo"]
       77 DUPCLOSURE                       R8 K37 [PROTO_3]
       78 SETTABLEKS                       R8 R7 K27 ["getDockTitle"]
       80 GETIMPORT                        R8 K40 [Enum.ZIndexBehavior.Sibling]
       82 SETTABLEKS                       R8 R7 K28 ["zIndexBehavior"]
       84 SETTABLEKS                       R7 R3 K41 ["dockWidgetInfo"]
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R7 R8 K42 ["build"]
       89 MOVE                             R8 R3
       90 CALL                             R7 1 1
       91 GETTABLEKS                       R8 R7 K43 ["pluginLoader"]
       93 NAMECALL                         R8 R8 K44 ["waitForUserInteraction"]
       95 CALL                             R8 1 1
       96 JUMPIF                           R8 ; [+1]
       97 RETURN                           R0 0
       98 MOVE                             R9 R1
       99 MOVE                             R10 R0
      100 MOVE                             R11 R7
      101 CALL                             R9 2 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R8 4
      104 GETTABLEKS                       R7 R8 K42 ["build"]
      106 MOVE                             R8 R3
      107 CALL                             R7 1 0
      108 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K14 ["Bin"]
       36 GETTABLEKS                       R7 R8 K15 ["Common"]
       38 GETTABLEKS                       R6 R7 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_4]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
