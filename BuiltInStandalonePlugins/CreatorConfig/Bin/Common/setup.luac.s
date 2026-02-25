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
        8 JUMPIFNOT                        R4 ; [+50]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       12 DUPTABLE                         R6 K15 [{"DataModel", "PluginId", "Category", "ItemId"}]
       13 LOADK                            R7 K16 ["Standalone"]
       14 SETTABLEKS                       R7 R6 K11 ["DataModel"]
       16 LOADK                            R7 K17 ["CreatorConfig"]
       17 SETTABLEKS                       R7 R6 K12 ["PluginId"]
       19 LOADK                            R7 K18 ["Actions"]
       20 SETTABLEKS                       R7 R6 K13 ["Category"]
       22 LOADK                            R7 K19 ["Toggle"]
       23 SETTABLEKS                       R7 R6 K14 ["ItemId"]
       25 SETTABLEKS                       R6 R5 K1 ["uri"]
       27 GETUPVAL                         R7 2
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADB                            R6 1
       30 JUMP                             ; [+1]
       31 LOADB                            R6 0
       32 SETTABLEKS                       R6 R5 K2 ["isPreexistingAction"]
       34 DUPCLOSURE                       R6 K20 [PROTO_0]
       35 SETTABLEKS                       R6 R5 K3 ["getText"]
       37 DUPCLOSURE                       R6 K21 [PROTO_1]
       38 SETTABLEKS                       R6 R5 K4 ["getTooltip"]
       40 LOADK                            R6 K22 ["rbxlocaltheme://GameSettings"]
       41 SETTABLEKS                       R6 R5 K5 ["icon"]
       43 LOADB                            R6 1
       44 SETTABLEKS                       R6 R5 K6 ["enabled"]
       46 LOADB                            R6 0
       47 SETTABLEKS                       R6 R5 K7 ["visible"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K8 ["checkable"]
       52 LOADB                            R6 0
       53 SETTABLEKS                       R6 R5 K9 ["checked"]
       55 SETLIST                          R4 R5 1 [1]
       57 MOVE                             R3 R4
       58 JUMP                             ; [+14]
       59 DUPTABLE                         R4 K25 [{"getName", "getDescription", "icon", "enabled"}]
       60 DUPCLOSURE                       R5 K26 [PROTO_2]
       61 SETTABLEKS                       R5 R4 K23 ["getName"]
       63 DUPCLOSURE                       R5 K27 [PROTO_3]
       64 SETTABLEKS                       R5 R4 K24 ["getDescription"]
       66 LOADK                            R5 K22 ["rbxlocaltheme://GameSettings"]
       67 SETTABLEKS                       R5 R4 K5 ["icon"]
       69 LOADB                            R5 0
       70 SETTABLEKS                       R5 R4 K6 ["enabled"]
       72 MOVE                             R2 R4
       73 DUPTABLE                         R4 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       74 SETTABLEKS                       R0 R4 K28 ["plugin"]
       76 LOADK                            R5 K17 ["CreatorConfig"]
       77 SETTABLEKS                       R5 R4 K29 ["pluginName"]
       79 GETUPVAL                         R5 3
       80 SETTABLEKS                       R5 R4 K30 ["translationResourceTable"]
       82 GETUPVAL                         R5 4
       83 SETTABLEKS                       R5 R4 K31 ["fallbackResourceTable"]
       85 GETUPVAL                         R5 1
       86 SETTABLEKS                       R5 R4 K32 ["noToolbar"]
       88 GETUPVAL                         R6 1
       89 JUMPIFNOT                        R6 ; [+2]
       90 LOADNIL                          R5
       91 JUMP                             ; [+1]
       92 DUPCLOSURE                       R5 K37 [PROTO_4]
       93 SETTABLEKS                       R5 R4 K33 ["getToolbarName"]
       95 GETUPVAL                         R6 1
       96 JUMPIFNOT                        R6 ; [+2]
       97 LOADNIL                          R5
       98 JUMP                             ; [+1]
       99 MOVE                             R5 R2
      100 SETTABLEKS                       R5 R4 K34 ["buttonInfo"]
      102 GETUPVAL                         R6 1
      103 JUMPIFNOT                        R6 ; [+2]
      104 MOVE                             R5 R3
      105 JUMP                             ; [+1]
      106 LOADNIL                          R5
      107 SETTABLEKS                       R5 R4 K35 ["actionInfos"]
      109 GETIMPORT                        R5 K39 [game]
      111 LOADK                            R7 K40 ["RunService"]
      112 NAMECALL                         R5 R5 K41 ["GetService"]
      114 CALL                             R5 2 1
      115 GETUPVAL                         R8 5
      116 GETTABLEKS                       R7 R8 K42 ["get"]
      118 CALL                             R7 0 1
      119 GETUPVAL                         R9 5
      120 GETTABLEKS                       R8 R9 K16 ["Standalone"]
      122 JUMPIFEQ                         R7 R8 ; [+2]
      124 LOADB                            R6 0 +1
      125 LOADB                            R6 1
      126 NAMECALL                         R7 R5 K43 ["IsEdit"]
      128 CALL                             R7 1 1
      129 JUMPIF                           R6 ; [+1]
      130 JUMPIFNOT                        R7 ; [+48]
      131 GETUPVAL                         R8 1
      132 JUMPIF                           R8 ; [+3]
      133 LOADB                            R8 1
      134 SETTABLEKS                       R8 R2 K6 ["enabled"]
      136 DUPTABLE                         R8 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      137 LOADK                            R9 K17 ["CreatorConfig"]
      138 SETTABLEKS                       R9 R8 K44 ["id"]
      140 GETIMPORT                        R9 K51 [DockWidgetPluginGuiInfo.new]
      142 GETIMPORT                        R10 K55 [Enum.InitialDockState.Bottom]
      144 LOADB                            R11 0
      145 LOADB                            R12 0
      146 LOADN                            R13 128
      147 LOADN                            R14 224
      148 LOADN                            R15 250
      149 LOADN                            R16 200
      150 CALL                             R9 7 1
      151 SETTABLEKS                       R9 R8 K45 ["dockWidgetPluginGuiInfo"]
      153 DUPCLOSURE                       R9 K56 [PROTO_5]
      154 SETTABLEKS                       R9 R8 K46 ["getDockTitle"]
      156 GETIMPORT                        R9 K59 [Enum.ZIndexBehavior.Sibling]
      158 SETTABLEKS                       R9 R8 K47 ["zIndexBehavior"]
      160 SETTABLEKS                       R8 R4 K60 ["dockWidgetInfo"]
      162 GETUPVAL                         R9 6
      163 GETTABLEKS                       R8 R9 K61 ["build"]
      165 MOVE                             R9 R4
      166 CALL                             R8 1 1
      167 GETTABLEKS                       R9 R8 K62 ["pluginLoader"]
      169 NAMECALL                         R9 R9 K63 ["waitForUserInteraction"]
      171 CALL                             R9 1 1
      172 JUMPIF                           R9 ; [+1]
      173 RETURN                           R0 0
      174 MOVE                             R10 R1
      175 MOVE                             R11 R0
      176 MOVE                             R12 R8
      177 CALL                             R10 2 0
      178 RETURN                           R0 0
      179 GETUPVAL                         R9 6
      180 GETTABLEKS                       R8 R9 K61 ["build"]
      182 MOVE                             R9 R4
      183 CALL                             R8 1 0
      184 RETURN                           R0 0

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
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Bin"]
       45 GETTABLEKS                       R8 R9 K15 ["Common"]
       47 GETTABLEKS                       R7 R8 K17 ["defineLuaFlags"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["getFFlagRegisterActionsPluginLoader"]
       52 CALL                             R7 0 1
       53 GETTABLEKS                       R8 R6 K19 ["getFFlagEnableCreatorConfigSystemMenu"]
       55 CALL                             R8 0 1
       56 OR                               R9 R7 R8
       57 DUPCLOSURE                       R10 K20 [PROTO_6]
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R2
       65 RETURN                           R10 1
