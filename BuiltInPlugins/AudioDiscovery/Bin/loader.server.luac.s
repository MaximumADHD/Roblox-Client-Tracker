PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["RetireAudioDiscoveryPlugin"]
       13 NAMECALL                         R1 R1 K9 ["GetFastFlag"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R1 K3 [script]
       20 GETTABLEKS                       R1 R1 K4 ["Parent"]
       22 GETTABLEKS                       R1 R1 K4 ["Parent"]
       24 GETIMPORT                        R2 K1 [require]
       26 GETTABLEKS                       R3 R1 K10 ["Src"]
       28 GETTABLEKS                       R3 R3 K11 ["Util"]
       30 GETTABLEKS                       R3 R3 K12 ["DebugFlags"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R3 R2 K13 ["RunningUnderCLI"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K1 [require]
       40 GETTABLEKS                       R4 R1 K14 ["Packages"]
       42 GETTABLEKS                       R4 R4 K15 ["PluginLoader"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R4 R3 K16 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R5 R1 K10 ["Src"]
       49 GETTABLEKS                       R5 R5 K17 ["Resources"]
       51 GETTABLEKS                       R5 R5 K18 ["Localization"]
       53 GETTABLEKS                       R5 R5 K19 ["SourceStrings"]
       55 GETTABLEKS                       R6 R1 K10 ["Src"]
       57 GETTABLEKS                       R6 R6 K17 ["Resources"]
       59 GETTABLEKS                       R6 R6 K18 ["Localization"]
       61 GETTABLEKS                       R6 R6 K20 ["LocalizedStrings"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 LOADNIL                          R9
       66 GETTABLEKS                       R10 R0 K21 ["shouldMigrateToActions"]
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R10 ; [+54]
       70 GETIMPORT                        R10 K1 [require]
       72 GETTABLEKS                       R11 R1 K14 ["Packages"]
       74 GETTABLEKS                       R11 R11 K22 ["StudioFoundation"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R10 K11 ["Util"]
       79 GETTABLEKS                       R11 R11 K23 ["StudioUri"]
       81 GETIMPORT                        R12 K25 [plugin]
       83 NAMECALL                         R12 R12 K26 ["GetUri"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R11 K27 ["join"]
       88 MOVE                             R14 R12
       89 DUPTABLE                         R15 K30 [{"Category", "ItemId"}]
       90 LOADK                            R16 K31 ["Actions"]
       91 SETTABLEKS                       R16 R15 K28 ["Category"]
       93 LOADK                            R16 K32 ["Toggle"]
       94 SETTABLEKS                       R16 R15 K29 ["ItemId"]
       96 CALL                             R13 2 1
       97 MOVE                             R8 R13
       98 DUPTABLE                         R13 K41 [{"getText", "getTooltip", "uri", "icon", "enabled", "visible", "checkable", "checked"}]
       99 DUPCLOSURE                       R14 K42 [PROTO_0]
      100 SETTABLEKS                       R14 R13 K33 ["getText"]
      102 DUPCLOSURE                       R14 K43 [PROTO_1]
      103 SETTABLEKS                       R14 R13 K34 ["getTooltip"]
      105 SETTABLEKS                       R8 R13 K35 ["uri"]
      107 LOADK                            R14 K44 ["ViewSounds"]
      108 SETTABLEKS                       R14 R13 K36 ["icon"]
      110 LOADB                            R14 0
      111 SETTABLEKS                       R14 R13 K37 ["enabled"]
      113 LOADB                            R14 1
      114 SETTABLEKS                       R14 R13 K38 ["visible"]
      116 LOADB                            R14 1
      117 SETTABLEKS                       R14 R13 K39 ["checkable"]
      119 LOADB                            R14 0
      120 SETTABLEKS                       R14 R13 K40 ["checked"]
      122 MOVE                             R7 R13
      123 JUMP                             ; [+14]
      124 DUPTABLE                         R10 K47 [{"getName", "getDescription", "icon", "enabled"}]
      125 DUPCLOSURE                       R11 K48 [PROTO_2]
      126 SETTABLEKS                       R11 R10 K45 ["getName"]
      128 DUPCLOSURE                       R11 K49 [PROTO_3]
      129 SETTABLEKS                       R11 R10 K46 ["getDescription"]
      131 LOADK                            R11 K50 ["rbxlocaltheme://ViewSounds"]
      132 SETTABLEKS                       R11 R10 K36 ["icon"]
      134 LOADB                            R11 0
      135 SETTABLEKS                       R11 R10 K37 ["enabled"]
      137 MOVE                             R9 R10
      138 DUPTABLE                         R10 K58 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "actionInfos", "buttonInfo", "noToolbar"}]
      139 GETIMPORT                        R11 K25 [plugin]
      141 SETTABLEKS                       R11 R10 K24 ["plugin"]
      143 LOADK                            R11 K59 ["AudioDiscovery"]
      144 SETTABLEKS                       R11 R10 K51 ["pluginName"]
      146 SETTABLEKS                       R6 R10 K52 ["translationResourceTable"]
      148 SETTABLEKS                       R5 R10 K53 ["fallbackResourceTable"]
      150 DUPCLOSURE                       R11 K60 [PROTO_4]
      151 SETTABLEKS                       R11 R10 K54 ["getToolbarName"]
      153 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      155 CALL                             R12 0 1
      156 JUMPIFNOT                        R12 ; [+6]
      157 NEWTABLE                         R11 0 1
      159 MOVE                             R12 R7
      160 SETLIST                          R11 R12 1 [1]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R11
      164 SETTABLEKS                       R11 R10 K55 ["actionInfos"]
      166 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      168 CALL                             R12 0 1
      169 JUMPIF                           R12 ; [+2]
      170 MOVE                             R11 R9
      171 JUMP                             ; [+1]
      172 LOADNIL                          R11
      173 SETTABLEKS                       R11 R10 K56 ["buttonInfo"]
      175 GETTABLEKS                       R11 R0 K21 ["shouldMigrateToActions"]
      177 CALL                             R11 0 1
      178 SETTABLEKS                       R11 R10 K57 ["noToolbar"]
      180 GETIMPORT                        R11 K7 [game]
      182 LOADK                            R13 K61 ["RunService"]
      183 NAMECALL                         R11 R11 K62 ["GetService"]
      185 CALL                             R11 2 1
      186 NAMECALL                         R12 R11 K63 ["IsEdit"]
      188 CALL                             R12 1 1
      189 JUMPIFNOT                        R12 ; [+70]
      190 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      192 CALL                             R12 0 1
      193 JUMPIFNOT                        R12 ; [+4]
      194 LOADB                            R12 1
      195 SETTABLEKS                       R12 R7 K37 ["enabled"]
      197 JUMP                             ; [+3]
      198 LOADB                            R12 1
      199 SETTABLEKS                       R12 R9 K37 ["enabled"]
      201 DUPTABLE                         R12 K68 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      202 LOADK                            R13 K59 ["AudioDiscovery"]
      203 SETTABLEKS                       R13 R12 K64 ["id"]
      205 GETIMPORT                        R13 K71 [DockWidgetPluginGuiInfo.new]
      207 GETIMPORT                        R14 K75 [Enum.InitialDockState.Bottom]
      209 LOADB                            R15 0
      210 LOADB                            R16 0
      211 LOADN                            R17 128
      212 LOADN                            R18 224
      213 LOADN                            R19 250
      214 LOADN                            R20 200
      215 CALL                             R13 7 1
      216 SETTABLEKS                       R13 R12 K65 ["dockWidgetPluginGuiInfo"]
      218 DUPCLOSURE                       R13 K76 [PROTO_5]
      219 SETTABLEKS                       R13 R12 K66 ["getDockTitle"]
      221 GETIMPORT                        R13 K79 [Enum.ZIndexBehavior.Sibling]
      223 SETTABLEKS                       R13 R12 K67 ["zIndexBehavior"]
      225 SETTABLEKS                       R12 R10 K80 ["dockWidgetInfo"]
      227 GETTABLEKS                       R12 R4 K81 ["build"]
      229 MOVE                             R13 R10
      230 CALL                             R12 1 1
      231 GETTABLEKS                       R13 R12 K82 ["pluginLoader"]
      233 NAMECALL                         R13 R13 K83 ["waitForUserInteraction"]
      235 CALL                             R13 1 1
      236 JUMPIF                           R13 ; [+1]
      237 RETURN                           R0 0
      238 GETIMPORT                        R14 K1 [require]
      240 GETIMPORT                        R15 K3 [script]
      242 GETTABLEKS                       R15 R15 K4 ["Parent"]
      244 GETTABLEKS                       R15 R15 K84 ["main"]
      246 CALL                             R14 1 1
      247 MOVE                             R15 R14
      248 GETIMPORT                        R16 K25 [plugin]
      250 MOVE                             R17 R12
      251 GETTABLEKS                       R19 R0 K21 ["shouldMigrateToActions"]
      253 CALL                             R19 0 1
      254 JUMPIFNOT                        R19 ; [+2]
      255 MOVE                             R18 R8
      256 JUMP                             ; [+1]
      257 LOADNIL                          R18
      258 CALL                             R15 3 0
      259 RETURN                           R0 0
      260 GETTABLEKS                       R12 R4 K81 ["build"]
      262 MOVE                             R13 R10
      263 CALL                             R12 1 0
      264 RETURN                           R0 0
