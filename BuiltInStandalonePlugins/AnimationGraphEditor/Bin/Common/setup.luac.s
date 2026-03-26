PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["React"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K1 [require]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["Packages"]
       13 GETTABLEKS                       R4 R5 K4 ["ReactRoblox"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R2 K5 ["createElement"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K8 [Instance.new]
       23 LOADK                            R6 K9 ["Frame"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R3 K10 ["createRoot"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 MOVE                             R9 R4
       30 NAMECALL                         R7 R6 K11 ["render"]
       32 CALL                             R7 2 0
       33 GETTABLEKS                       R8 R1 K12 ["Plugin"]
       35 GETTABLEKS                       R7 R8 K13 ["Unloading"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R7 R7 K14 ["Connect"]
       41 CALL                             R7 2 0
       42 RETURN                           R0 0

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
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_7:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 JUMPIFNOTEQKS                    R1 K1 ["ui"] ; [+196]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["getMigratePluginToggleToActions"]
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+43]
       14 NEWTABLE                         R4 0 1
       16 DUPTABLE                         R5 K12 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K13 ["Util"]
       20 GETTABLEKS                       R7 R8 K14 ["StudioUri"]
       22 GETTABLEKS                       R6 R7 K15 ["fromAction"]
       24 LOADK                            R7 K16 ["AnimationGraphEditor"]
       25 LOADK                            R8 K17 ["Toggle"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K3 ["uri"]
       29 GETUPVAL                         R6 3
       30 SETTABLEKS                       R6 R5 K4 ["isPreexistingAction"]
       32 DUPCLOSURE                       R6 K18 [PROTO_2]
       33 SETTABLEKS                       R6 R5 K5 ["getText"]
       35 DUPCLOSURE                       R6 K19 [PROTO_3]
       36 SETTABLEKS                       R6 R5 K6 ["getTooltip"]
       38 LOADK                            R6 K20 ["rbxlocaltheme://GameSettings"]
       39 SETTABLEKS                       R6 R5 K7 ["icon"]
       41 LOADB                            R6 1
       42 SETTABLEKS                       R6 R5 K8 ["enabled"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K9 ["visible"]
       47 LOADB                            R6 1
       48 SETTABLEKS                       R6 R5 K10 ["checkable"]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R5 K11 ["checked"]
       53 SETLIST                          R4 R5 1 [1]
       55 MOVE                             R3 R4
       56 JUMP                             ; [+14]
       57 DUPTABLE                         R4 K23 [{"getName", "getDescription", "icon", "enabled"}]
       58 DUPCLOSURE                       R5 K24 [PROTO_4]
       59 SETTABLEKS                       R5 R4 K21 ["getName"]
       61 DUPCLOSURE                       R5 K25 [PROTO_5]
       62 SETTABLEKS                       R5 R4 K22 ["getDescription"]
       64 LOADK                            R5 K20 ["rbxlocaltheme://GameSettings"]
       65 SETTABLEKS                       R5 R4 K7 ["icon"]
       67 LOADB                            R5 0
       68 SETTABLEKS                       R5 R4 K8 ["enabled"]
       70 MOVE                             R2 R4
       71 DUPTABLE                         R4 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
       72 SETTABLEKS                       R0 R4 K26 ["plugin"]
       74 LOADK                            R5 K16 ["AnimationGraphEditor"]
       75 SETTABLEKS                       R5 R4 K27 ["pluginName"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R8 R9 K35 ["Src"]
       80 GETTABLEKS                       R7 R8 K36 ["Resources"]
       82 GETTABLEKS                       R6 R7 K37 ["Localization"]
       84 GETTABLEKS                       R5 R6 K38 ["LocalizedStrings"]
       86 SETTABLEKS                       R5 R4 K28 ["translationResourceTable"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K35 ["Src"]
       91 GETTABLEKS                       R7 R8 K36 ["Resources"]
       93 GETTABLEKS                       R6 R7 K37 ["Localization"]
       95 GETTABLEKS                       R5 R6 K39 ["SourceStrings"]
       97 SETTABLEKS                       R5 R4 K29 ["fallbackResourceTable"]
       99 GETUPVAL                         R6 1
      100 GETTABLEKS                       R5 R6 K2 ["getMigratePluginToggleToActions"]
      102 CALL                             R5 0 1
      103 SETTABLEKS                       R5 R4 K30 ["noToolbar"]
      105 GETUPVAL                         R7 1
      106 GETTABLEKS                       R6 R7 K2 ["getMigratePluginToggleToActions"]
      108 CALL                             R6 0 1
      109 JUMPIFNOT                        R6 ; [+2]
      110 LOADNIL                          R5
      111 JUMP                             ; [+1]
      112 DUPCLOSURE                       R5 K40 [PROTO_6]
      113 SETTABLEKS                       R5 R4 K31 ["getToolbarName"]
      115 GETUPVAL                         R7 1
      116 GETTABLEKS                       R6 R7 K2 ["getMigratePluginToggleToActions"]
      118 CALL                             R6 0 1
      119 JUMPIFNOT                        R6 ; [+2]
      120 LOADNIL                          R5
      121 JUMP                             ; [+1]
      122 MOVE                             R5 R2
      123 SETTABLEKS                       R5 R4 K32 ["buttonInfo"]
      125 GETUPVAL                         R7 1
      126 GETTABLEKS                       R6 R7 K2 ["getMigratePluginToggleToActions"]
      128 CALL                             R6 0 1
      129 JUMPIFNOT                        R6 ; [+2]
      130 MOVE                             R5 R3
      131 JUMP                             ; [+1]
      132 LOADNIL                          R5
      133 SETTABLEKS                       R5 R4 K33 ["actionInfos"]
      135 GETUPVAL                         R6 1
      136 GETTABLEKS                       R5 R6 K2 ["getMigratePluginToggleToActions"]
      138 CALL                             R5 0 1
      139 JUMPIF                           R5 ; [+3]
      140 LOADB                            R5 1
      141 SETTABLEKS                       R5 R2 K8 ["enabled"]
      143 DUPTABLE                         R5 K45 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior", "uri"}]
      144 LOADK                            R6 K16 ["AnimationGraphEditor"]
      145 SETTABLEKS                       R6 R5 K41 ["id"]
      147 GETIMPORT                        R6 K48 [DockWidgetPluginGuiInfo.new]
      149 GETIMPORT                        R7 K52 [Enum.InitialDockState.Bottom]
      151 LOADB                            R8 0
      152 LOADB                            R9 0
      153 LOADN                            R10 128
      154 LOADN                            R11 224
      155 LOADN                            R12 250
      156 LOADN                            R13 200
      157 CALL                             R6 7 1
      158 SETTABLEKS                       R6 R5 K42 ["dockWidgetPluginGuiInfo"]
      160 DUPCLOSURE                       R6 K53 [PROTO_7]
      161 SETTABLEKS                       R6 R5 K43 ["getDockTitle"]
      163 GETIMPORT                        R6 K56 [Enum.ZIndexBehavior.Sibling]
      165 SETTABLEKS                       R6 R5 K44 ["zIndexBehavior"]
      167 GETUPVAL                         R6 4
      168 SETTABLEKS                       R6 R5 K3 ["uri"]
      170 SETTABLEKS                       R5 R4 K57 ["dockWidgetInfo"]
      172 GETUPVAL                         R7 5
      173 GETTABLEKS                       R6 R7 K58 ["PluginLoaderBuilder"]
      175 GETTABLEKS                       R5 R6 K59 ["build"]
      177 MOVE                             R6 R4
      178 CALL                             R5 1 1
      179 GETTABLEKS                       R6 R5 K60 ["pluginLoader"]
      181 NAMECALL                         R6 R6 K61 ["waitForUserInteraction"]
      183 CALL                             R6 1 1
      184 JUMPIF                           R6 ; [+1]
      185 RETURN                           R0 0
      186 GETUPVAL                         R7 6
      187 GETIMPORT                        R8 K63 [require]
      189 GETUPVAL                         R11 0
      190 GETTABLEKS                       R10 R11 K35 ["Src"]
      192 GETTABLEKS                       R9 R10 K64 ["UIDataModelMainPlugin"]
      194 CALL                             R8 1 1
      195 DUPTABLE                         R9 K67 [{"Plugin", "PluginLoaderContext"}]
      196 SETTABLEKS                       R0 R9 K65 ["Plugin"]
      198 SETTABLEKS                       R5 R9 K66 ["PluginLoaderContext"]
      200 CALL                             R7 2 0
      201 RETURN                           R0 0
      202 JUMPIFNOTEQKS                    R1 K68 ["editabledatamodel"] ; [+15]
      204 GETUPVAL                         R2 6
      205 GETIMPORT                        R3 K63 [require]
      207 GETUPVAL                         R6 0
      208 GETTABLEKS                       R5 R6 K35 ["Src"]
      210 GETTABLEKS                       R4 R5 K69 ["EditableDataModelMainPlugin"]
      212 CALL                             R3 1 1
      213 DUPTABLE                         R4 K70 [{"Plugin"}]
      214 SETTABLEKS                       R0 R4 K65 ["Plugin"]
      216 CALL                             R2 2 0
      217 RETURN                           R0 0
      218 JUMPIFNOTEQKS                    R1 K71 ["previewdatamodel"] ; [+15]
      220 GETUPVAL                         R2 6
      221 GETIMPORT                        R3 K63 [require]
      223 GETUPVAL                         R6 0
      224 GETTABLEKS                       R5 R6 K35 ["Src"]
      226 GETTABLEKS                       R4 R5 K72 ["PreviewDataModelMainPlugin"]
      228 CALL                             R3 1 1
      229 DUPTABLE                         R4 K70 [{"Plugin"}]
      230 SETTABLEKS                       R0 R4 K65 ["Plugin"]
      232 CALL                             R2 2 0
      233 RETURN                           R0 0
      234 GETIMPORT                        R2 K74 [error]
      236 LOADK                            R4 K75 ["Unknown plugin type: "]
      237 FASTCALL1                        TOSTRING R1 ; [+3]
      238 MOVE                             R6 R1
      239 GETIMPORT                        R5 K77 [tostring]
      241 CALL                             R5 1 1
      242 CONCAT                           R3 R4 R5
      243 CALL                             R2 1 0
      244 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["GuiUri"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["PluginLoader"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Bin"]
       32 GETTABLEKS                       R6 R7 K12 ["Common"]
       34 GETTABLEKS                       R5 R6 K13 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K15 [game]
       39 LOADK                            R7 K16 ["AnimationGraphEditorAction"]
       40 LOADB                            R8 0
       41 NAMECALL                         R5 R5 K17 ["DefineFastFlag"]
       43 CALL                             R5 3 1
       44 DUPCLOSURE                       R6 K18 [PROTO_1]
       45 CAPTURE                          VAL R0
       46 DUPCLOSURE                       R7 K19 [PROTO_8]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
