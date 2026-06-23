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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 LOADK                            R4 K6 ["AssetQualityValidation"]
       13 SETTABLEKS                       R4 R3 K4 ["pluginName"]
       15 CALL                             R2 1 1
       16 LOADK                            R5 K7 ["Plugin"]
       17 LOADK                            R6 K8 ["Name"]
       18 NAMECALL                         R3 R2 K9 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R0 K8 ["Name"]
       23 NAMECALL                         R3 R2 K10 ["destroy"]
       25 CALL                             R3 1 0
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 GETUPVAL                         R5 3
       29 JUMPIFNOT                        R5 ; [+46]
       30 NEWTABLE                         R5 0 1
       32 DUPTABLE                         R6 K19 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       33 DUPTABLE                         R7 K24 [{"DataModel", "PluginId", "Category", "ItemId"}]
       34 LOADK                            R8 K25 ["Standalone"]
       35 SETTABLEKS                       R8 R7 K20 ["DataModel"]
       37 LOADK                            R8 K6 ["AssetQualityValidation"]
       38 SETTABLEKS                       R8 R7 K21 ["PluginId"]
       40 LOADK                            R8 K26 ["Actions"]
       41 SETTABLEKS                       R8 R7 K22 ["Category"]
       43 LOADK                            R8 K27 ["Toggle"]
       44 SETTABLEKS                       R8 R7 K23 ["ItemId"]
       46 SETTABLEKS                       R7 R6 K11 ["uri"]
       48 LOADB                            R7 0
       49 SETTABLEKS                       R7 R6 K12 ["isPreexistingAction"]
       51 DUPCLOSURE                       R7 K28 [PROTO_0]
       52 SETTABLEKS                       R7 R6 K9 ["getText"]
       54 DUPCLOSURE                       R7 K29 [PROTO_1]
       55 SETTABLEKS                       R7 R6 K13 ["getTooltip"]
       57 LOADK                            R7 K30 ["rbxlocaltheme://GameSettings"]
       58 SETTABLEKS                       R7 R6 K14 ["icon"]
       60 LOADB                            R7 1
       61 SETTABLEKS                       R7 R6 K15 ["enabled"]
       63 LOADB                            R7 1
       64 SETTABLEKS                       R7 R6 K16 ["visible"]
       66 LOADB                            R7 1
       67 SETTABLEKS                       R7 R6 K17 ["checkable"]
       69 LOADB                            R7 0
       70 SETTABLEKS                       R7 R6 K18 ["checked"]
       72 SETLIST                          R5 R6 1 [1]
       74 MOVE                             R4 R5
       75 JUMP                             ; [+14]
       76 DUPTABLE                         R5 K33 [{"getName", "getDescription", "icon", "enabled"}]
       77 DUPCLOSURE                       R6 K34 [PROTO_2]
       78 SETTABLEKS                       R6 R5 K31 ["getName"]
       80 DUPCLOSURE                       R6 K35 [PROTO_3]
       81 SETTABLEKS                       R6 R5 K32 ["getDescription"]
       83 LOADK                            R6 K30 ["rbxlocaltheme://GameSettings"]
       84 SETTABLEKS                       R6 R5 K14 ["icon"]
       86 LOADB                            R6 0
       87 SETTABLEKS                       R6 R5 K15 ["enabled"]
       89 MOVE                             R3 R5
       90 DUPTABLE                         R5 K42 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       91 SETTABLEKS                       R0 R5 K36 ["plugin"]
       93 LOADK                            R6 K6 ["AssetQualityValidation"]
       94 SETTABLEKS                       R6 R5 K4 ["pluginName"]
       96 GETUPVAL                         R6 2
       97 SETTABLEKS                       R6 R5 K3 ["translationResourceTable"]
       99 GETUPVAL                         R6 1
      100 SETTABLEKS                       R6 R5 K37 ["fallbackResourceTable"]
      102 GETUPVAL                         R6 3
      103 SETTABLEKS                       R6 R5 K38 ["noToolbar"]
      105 GETUPVAL                         R7 3
      106 JUMPIFNOT                        R7 ; [+2]
      107 LOADNIL                          R6
      108 JUMP                             ; [+1]
      109 DUPCLOSURE                       R6 K43 [PROTO_4]
      110 SETTABLEKS                       R6 R5 K39 ["getToolbarName"]
      112 GETUPVAL                         R7 3
      113 JUMPIFNOT                        R7 ; [+2]
      114 LOADNIL                          R6
      115 JUMP                             ; [+1]
      116 MOVE                             R6 R3
      117 SETTABLEKS                       R6 R5 K40 ["buttonInfo"]
      119 GETUPVAL                         R7 3
      120 JUMPIFNOT                        R7 ; [+2]
      121 MOVE                             R6 R4
      122 JUMP                             ; [+1]
      123 LOADNIL                          R6
      124 SETTABLEKS                       R6 R5 K41 ["actionInfos"]
      126 GETIMPORT                        R6 K45 [game]
      128 LOADK                            R8 K46 ["RunService"]
      129 NAMECALL                         R6 R6 K47 ["GetService"]
      131 CALL                             R6 2 1
      132 GETUPVAL                         R8 4
      133 GETTABLEKS                       R8 R8 K48 ["get"]
      135 CALL                             R8 0 1
      136 GETUPVAL                         R9 4
      137 GETTABLEKS                       R9 R9 K25 ["Standalone"]
      139 JUMPIFEQ                         R8 R9 ; [+2]
      141 LOADB                            R7 0 +1
      142 LOADB                            R7 1
      143 NAMECALL                         R8 R6 K49 ["IsEdit"]
      145 CALL                             R8 1 1
      146 JUMPIF                           R7 ; [+1]
      147 JUMPIFNOT                        R8 ; [+48]
      148 GETUPVAL                         R9 3
      149 JUMPIF                           R9 ; [+3]
      150 LOADB                            R9 1
      151 SETTABLEKS                       R9 R3 K15 ["enabled"]
      153 DUPTABLE                         R9 K54 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      154 LOADK                            R10 K6 ["AssetQualityValidation"]
      155 SETTABLEKS                       R10 R9 K50 ["id"]
      157 GETIMPORT                        R10 K56 [DockWidgetPluginGuiInfo.new]
      159 GETIMPORT                        R11 K60 [Enum.InitialDockState.Bottom]
      161 LOADB                            R12 0
      162 LOADB                            R13 0
      163 LOADN                            R14 128
      164 LOADN                            R15 224
      165 LOADN                            R16 250
      166 LOADN                            R17 200
      167 CALL                             R10 7 1
      168 SETTABLEKS                       R10 R9 K51 ["dockWidgetPluginGuiInfo"]
      170 DUPCLOSURE                       R10 K61 [PROTO_5]
      171 SETTABLEKS                       R10 R9 K52 ["getDockTitle"]
      173 GETIMPORT                        R10 K64 [Enum.ZIndexBehavior.Sibling]
      175 SETTABLEKS                       R10 R9 K53 ["zIndexBehavior"]
      177 SETTABLEKS                       R9 R5 K65 ["dockWidgetInfo"]
      179 GETUPVAL                         R9 5
      180 GETTABLEKS                       R9 R9 K66 ["build"]
      182 MOVE                             R10 R5
      183 CALL                             R9 1 1
      184 GETTABLEKS                       R10 R9 K67 ["pluginLoader"]
      186 NAMECALL                         R10 R10 K68 ["waitForUserInteraction"]
      188 CALL                             R10 1 1
      189 JUMPIF                           R10 ; [+1]
      190 RETURN                           R0 0
      191 MOVE                             R11 R1
      192 MOVE                             R12 R0
      193 MOVE                             R13 R9
      194 CALL                             R11 2 0
      195 RETURN                           R0 0
      196 GETUPVAL                         R9 5
      197 GETTABLEKS                       R9 R9 K66 ["build"]
      199 MOVE                             R10 R5
      200 CALL                             R9 1 0
      201 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Resources"]
       31 GETTABLEKS                       R5 R5 K11 ["Localization"]
       33 GETTABLEKS                       R5 R5 K14 ["SourceStrings"]
       35 GETTABLEKS                       R6 R0 K12 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K11 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["LocalizedStrings"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K16 ["Bin"]
       47 GETTABLEKS                       R8 R8 K17 ["Common"]
       49 GETTABLEKS                       R8 R8 K18 ["pluginType"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["Bin"]
       56 GETTABLEKS                       R9 R9 K17 ["Common"]
       58 GETTABLEKS                       R9 R9 K19 ["defineLuaFlags"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K20 ["getFFlagRegisterActionsPluginLoader"]
       63 CALL                             R9 0 1
       64 DUPCLOSURE                       R10 K21 [PROTO_6]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 RETURN                           R10 1
