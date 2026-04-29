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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
        8 DUPTABLE                         R4 K15 [{"DataModel", "PluginId", "Category", "ItemId"}]
        9 LOADK                            R5 K16 ["Standalone"]
       10 SETTABLEKS                       R5 R4 K11 ["DataModel"]
       12 LOADK                            R5 K17 ["CreatorConfig"]
       13 SETTABLEKS                       R5 R4 K12 ["PluginId"]
       15 LOADK                            R5 K18 ["Actions"]
       16 SETTABLEKS                       R5 R4 K13 ["Category"]
       18 LOADK                            R5 K19 ["Toggle"]
       19 SETTABLEKS                       R5 R4 K14 ["ItemId"]
       21 SETTABLEKS                       R4 R3 K1 ["uri"]
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K2 ["isPreexistingAction"]
       26 DUPCLOSURE                       R4 K20 [PROTO_0]
       27 SETTABLEKS                       R4 R3 K3 ["getText"]
       29 DUPCLOSURE                       R4 K21 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K4 ["getTooltip"]
       32 LOADK                            R4 K22 ["rbxlocaltheme://GameSettings"]
       33 SETTABLEKS                       R4 R3 K5 ["icon"]
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K6 ["enabled"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K7 ["visible"]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K8 ["checkable"]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K9 ["checked"]
       47 SETLIST                          R2 R3 1 [1]
       49 DUPTABLE                         R3 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "actionInfos"}]
       50 SETTABLEKS                       R0 R3 K23 ["plugin"]
       52 LOADK                            R4 K17 ["CreatorConfig"]
       53 SETTABLEKS                       R4 R3 K24 ["pluginName"]
       55 GETUPVAL                         R4 1
       56 SETTABLEKS                       R4 R3 K25 ["translationResourceTable"]
       58 GETUPVAL                         R4 2
       59 SETTABLEKS                       R4 R3 K26 ["fallbackResourceTable"]
       61 LOADB                            R4 1
       62 SETTABLEKS                       R4 R3 K27 ["noToolbar"]
       64 SETTABLEKS                       R2 R3 K28 ["actionInfos"]
       66 GETIMPORT                        R4 K31 [game]
       68 LOADK                            R6 K32 ["RunService"]
       69 NAMECALL                         R4 R4 K33 ["GetService"]
       71 CALL                             R4 2 1
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R6 R7 K34 ["get"]
       75 CALL                             R6 0 1
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R7 R8 K16 ["Standalone"]
       79 JUMPIFEQ                         R6 R7 ; [+2]
       81 LOADB                            R5 0 +1
       82 LOADB                            R5 1
       83 NAMECALL                         R6 R4 K35 ["IsEdit"]
       85 CALL                             R6 1 1
       86 JUMPIF                           R5 ; [+1]
       87 JUMPIFNOT                        R6 ; [+43]
       88 DUPTABLE                         R7 K40 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       89 LOADK                            R8 K17 ["CreatorConfig"]
       90 SETTABLEKS                       R8 R7 K36 ["id"]
       92 GETIMPORT                        R8 K43 [DockWidgetPluginGuiInfo.new]
       94 GETIMPORT                        R9 K47 [Enum.InitialDockState.Bottom]
       96 LOADB                            R10 0
       97 LOADB                            R11 0
       98 LOADN                            R12 128
       99 LOADN                            R13 224
      100 LOADN                            R14 250
      101 LOADN                            R15 200
      102 CALL                             R8 7 1
      103 SETTABLEKS                       R8 R7 K37 ["dockWidgetPluginGuiInfo"]
      105 DUPCLOSURE                       R8 K48 [PROTO_2]
      106 SETTABLEKS                       R8 R7 K38 ["getDockTitle"]
      108 GETIMPORT                        R8 K51 [Enum.ZIndexBehavior.Sibling]
      110 SETTABLEKS                       R8 R7 K39 ["zIndexBehavior"]
      112 SETTABLEKS                       R7 R3 K52 ["dockWidgetInfo"]
      114 GETUPVAL                         R8 4
      115 GETTABLEKS                       R7 R8 K53 ["build"]
      117 MOVE                             R8 R3
      118 CALL                             R7 1 1
      119 GETTABLEKS                       R8 R7 K54 ["pluginLoader"]
      121 NAMECALL                         R8 R8 K55 ["waitForUserInteraction"]
      123 CALL                             R8 1 1
      124 JUMPIF                           R8 ; [+1]
      125 RETURN                           R0 0
      126 MOVE                             R9 R1
      127 MOVE                             R10 R0
      128 MOVE                             R11 R7
      129 CALL                             R9 2 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R8 4
      132 GETTABLEKS                       R7 R8 K53 ["build"]
      134 MOVE                             R8 R3
      135 CALL                             R7 1 0
      136 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
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
       41 DUPCLOSURE                       R6 K17 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
