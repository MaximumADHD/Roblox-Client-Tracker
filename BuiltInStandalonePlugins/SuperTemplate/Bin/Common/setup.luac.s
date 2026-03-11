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
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+46]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       12 DUPTABLE                         R6 K15 [{"DataModel", "PluginId", "Category", "ItemId"}]
       13 LOADK                            R7 K16 ["Standalone"]
       14 SETTABLEKS                       R7 R6 K11 ["DataModel"]
       16 LOADK                            R7 K17 ["SuperTemplate"]
       17 SETTABLEKS                       R7 R6 K12 ["PluginId"]
       19 LOADK                            R7 K18 ["Actions"]
       20 SETTABLEKS                       R7 R6 K13 ["Category"]
       22 LOADK                            R7 K19 ["Toggle"]
       23 SETTABLEKS                       R7 R6 K14 ["ItemId"]
       25 SETTABLEKS                       R6 R5 K1 ["uri"]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       30 DUPCLOSURE                       R6 K20 [PROTO_0]
       31 SETTABLEKS                       R6 R5 K3 ["getText"]
       33 DUPCLOSURE                       R6 K21 [PROTO_1]
       34 SETTABLEKS                       R6 R5 K4 ["getTooltip"]
       36 LOADK                            R6 K22 ["GameSettings"]
       37 SETTABLEKS                       R6 R5 K5 ["icon"]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K6 ["enabled"]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K7 ["visible"]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K8 ["checkable"]
       48 LOADB                            R6 0
       49 SETTABLEKS                       R6 R5 K9 ["checked"]
       51 SETLIST                          R4 R5 1 [1]
       53 MOVE                             R3 R4
       54 JUMP                             ; [+14]
       55 DUPTABLE                         R4 K25 [{"getName", "getDescription", "icon", "enabled"}]
       56 DUPCLOSURE                       R5 K26 [PROTO_2]
       57 SETTABLEKS                       R5 R4 K23 ["getName"]
       59 DUPCLOSURE                       R5 K27 [PROTO_3]
       60 SETTABLEKS                       R5 R4 K24 ["getDescription"]
       62 LOADK                            R5 K28 ["rbxlocaltheme://GameSettings"]
       63 SETTABLEKS                       R5 R4 K5 ["icon"]
       65 LOADB                            R5 0
       66 SETTABLEKS                       R5 R4 K6 ["enabled"]
       68 MOVE                             R2 R4
       69 DUPTABLE                         R4 K37 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       70 SETTABLEKS                       R0 R4 K29 ["plugin"]
       72 LOADK                            R5 K17 ["SuperTemplate"]
       73 SETTABLEKS                       R5 R4 K30 ["pluginName"]
       75 GETUPVAL                         R5 2
       76 SETTABLEKS                       R5 R4 K31 ["translationResourceTable"]
       78 GETUPVAL                         R5 3
       79 SETTABLEKS                       R5 R4 K32 ["fallbackResourceTable"]
       81 GETUPVAL                         R5 1
       82 SETTABLEKS                       R5 R4 K33 ["noToolbar"]
       84 GETUPVAL                         R6 1
       85 JUMPIFNOT                        R6 ; [+2]
       86 LOADNIL                          R5
       87 JUMP                             ; [+1]
       88 DUPCLOSURE                       R5 K38 [PROTO_4]
       89 SETTABLEKS                       R5 R4 K34 ["getToolbarName"]
       91 GETUPVAL                         R6 1
       92 JUMPIFNOT                        R6 ; [+2]
       93 LOADNIL                          R5
       94 JUMP                             ; [+1]
       95 MOVE                             R5 R2
       96 SETTABLEKS                       R5 R4 K35 ["buttonInfo"]
       98 GETUPVAL                         R6 1
       99 JUMPIFNOT                        R6 ; [+2]
      100 MOVE                             R5 R3
      101 JUMP                             ; [+1]
      102 LOADNIL                          R5
      103 SETTABLEKS                       R5 R4 K36 ["actionInfos"]
      105 GETIMPORT                        R5 K40 [game]
      107 LOADK                            R7 K41 ["RunService"]
      108 NAMECALL                         R5 R5 K42 ["GetService"]
      110 CALL                             R5 2 1
      111 GETUPVAL                         R8 4
      112 GETTABLEKS                       R7 R8 K43 ["get"]
      114 CALL                             R7 0 1
      115 GETUPVAL                         R9 4
      116 GETTABLEKS                       R8 R9 K16 ["Standalone"]
      118 JUMPIFEQ                         R7 R8 ; [+2]
      120 LOADB                            R6 0 +1
      121 LOADB                            R6 1
      122 NAMECALL                         R7 R5 K44 ["IsEdit"]
      124 CALL                             R7 1 1
      125 JUMPIF                           R6 ; [+1]
      126 JUMPIFNOT                        R7 ; [+48]
      127 GETUPVAL                         R8 1
      128 JUMPIF                           R8 ; [+3]
      129 LOADB                            R8 1
      130 SETTABLEKS                       R8 R2 K6 ["enabled"]
      132 DUPTABLE                         R8 K49 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      133 LOADK                            R9 K17 ["SuperTemplate"]
      134 SETTABLEKS                       R9 R8 K45 ["id"]
      136 GETIMPORT                        R9 K52 [DockWidgetPluginGuiInfo.new]
      138 GETIMPORT                        R10 K56 [Enum.InitialDockState.Bottom]
      140 LOADB                            R11 0
      141 LOADB                            R12 0
      142 LOADN                            R13 128
      143 LOADN                            R14 224
      144 LOADN                            R15 250
      145 LOADN                            R16 200
      146 CALL                             R9 7 1
      147 SETTABLEKS                       R9 R8 K46 ["dockWidgetPluginGuiInfo"]
      149 DUPCLOSURE                       R9 K57 [PROTO_5]
      150 SETTABLEKS                       R9 R8 K47 ["getDockTitle"]
      152 GETIMPORT                        R9 K60 [Enum.ZIndexBehavior.Sibling]
      154 SETTABLEKS                       R9 R8 K48 ["zIndexBehavior"]
      156 SETTABLEKS                       R8 R4 K61 ["dockWidgetInfo"]
      158 GETUPVAL                         R9 5
      159 GETTABLEKS                       R8 R9 K62 ["build"]
      161 MOVE                             R9 R4
      162 CALL                             R8 1 1
      163 GETTABLEKS                       R9 R8 K63 ["pluginLoader"]
      165 NAMECALL                         R9 R9 K64 ["waitForUserInteraction"]
      167 CALL                             R9 1 1
      168 JUMPIF                           R9 ; [+1]
      169 RETURN                           R0 0
      170 MOVE                             R10 R1
      171 MOVE                             R11 R0
      172 MOVE                             R12 R8
      173 CALL                             R10 2 0
      174 RETURN                           R0 0
      175 GETUPVAL                         R9 5
      176 GETTABLEKS                       R8 R9 K62 ["build"]
      178 MOVE                             R9 R4
      179 CALL                             R8 1 0
      180 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
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
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Bin"]
       45 GETTABLEKS                       R8 R9 K15 ["Common"]
       47 GETTABLEKS                       R7 R8 K17 ["defineLuaFlags"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["getFFlagRegisterActionsPluginLoader"]
       52 CALL                             R7 0 1
       53 DUPCLOSURE                       R8 K19 [PROTO_6]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
