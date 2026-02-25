PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R3 K0 ["AvatarPreviewer"]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["previewAvatar"]
        1 RETURN                           R3 1

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
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["TestService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R0 K9 ["Packages"]
       17 GETTABLEKS                       R3 R4 K10 ["TestLoader"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R6 R0 K11 ["Src"]
       24 GETTABLEKS                       R5 R6 K12 ["Flags"]
       26 GETTABLEKS                       R4 R5 K13 ["getFFlagAvatarAutosetupOptionsInput"]
       28 CALL                             R3 1 1
       29 MOVE                             R4 R3
       30 CALL                             R4 0 1
       31 JUMPIF                           R4 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R4 K15 [plugin]
       35 JUMPIF                           R4 ; [+1]
       36 RETURN                           R0 0
       37 GETIMPORT                        R4 K17 [pcall]
       39 DUPCLOSURE                       R5 K18 [PROTO_0]
       40 CALL                             R4 1 2
       41 JUMPIFNOT                        R4 ; [+102]
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R10 R0 K9 ["Packages"]
       46 GETTABLEKS                       R9 R10 K19 ["Dev"]
       48 GETTABLEKS                       R8 R9 K20 ["Jest"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R6 R7 K21 ["runCLI"]
       53 GETIMPORT                        R7 K23 [_G]
       55 LOADB                            R8 1
       56 SETTABLEKS                       R8 R7 K24 ["__ROACT_17_MOCK_SCHEDULER__"]
       58 GETIMPORT                        R7 K23 [_G]
       60 LOADB                            R8 1
       61 SETTABLEKS                       R8 R7 K25 ["__ROACT_17_INLINE_ACT__"]
       63 GETIMPORT                        R7 K4 [game]
       65 LOADK                            R9 K26 ["DebugAvatarPreviewerUpdateSnapshots"]
       66 LOADB                            R10 0
       67 NAMECALL                         R7 R7 K27 ["DefineFastFlag"]
       69 CALL                             R7 3 1
       70 GETIMPORT                        R8 K4 [game]
       72 LOADK                            R10 K28 ["DebugAvatarPreviewerTestPathPattern"]
       73 LOADK                            R11 K29 [""]
       74 NAMECALL                         R8 R8 K30 ["DefineFastString"]
       76 CALL                             R8 3 1
       77 MOVE                             R9 R6
       78 GETTABLEKS                       R10 R0 K11 ["Src"]
       80 DUPTABLE                         R11 K35 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
       81 LOADB                            R12 1
       82 SETTABLEKS                       R12 R11 K31 ["verbose"]
       84 LOADB                            R12 1
       85 SETTABLEKS                       R12 R11 K32 ["ci"]
       87 SETTABLEKS                       R7 R11 K33 ["updateSnapshot"]
       89 JUMPIFNOTEQKS                    R8 K29 [""] ; [+3]
       91 LOADNIL                          R12
       92 JUMP                             ; [+1]
       93 MOVE                             R12 R8
       94 SETTABLEKS                       R12 R11 K34 ["testPathPattern"]
       96 NEWTABLE                         R12 0 2
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R14 R0 K36 ["RhodiumTests"]
      102 SETLIST                          R12 R13 2 [1]
      104 CALL                             R9 3 1
      105 NAMECALL                         R9 R9 K37 ["awaitStatus"]
      107 CALL                             R9 1 2
      108 JUMPIFNOTEQKS                    R9 K38 ["Resolved"] ; [+15]
      110 GETTABLEKS                       R12 R10 K39 ["results"]
      112 GETTABLEKS                       R11 R12 K40 ["numFailedTestSuites"]
      114 LOADN                            R12 0
      115 JUMPIFLT                         R12 R11 ; [+8]
      117 GETTABLEKS                       R12 R10 K39 ["results"]
      119 GETTABLEKS                       R11 R12 K41 ["numFailedTests"]
      121 LOADN                            R12 0
      122 JUMPIFNOTLT                      R12 R11 ; [+16]
      124 JUMPIFNOTEQKS                    R9 K42 ["Rejected"] ; [+5]
      126 GETIMPORT                        R11 K44 [print]
      128 MOVE                             R12 R10
      129 CALL                             R11 1 0
      130 LOADK                            R13 K45 ["Jest 3 test run failed"]
      131 NAMECALL                         R11 R1 K46 ["Error"]
      133 CALL                             R11 2 0
      134 LOADN                            R13 1
      135 NAMECALL                         R11 R5 K47 ["ExitAsync"]
      137 CALL                             R11 2 0
      138 RETURN                           R0 0
      139 LOADN                            R13 0
      140 NAMECALL                         R11 R5 K47 ["ExitAsync"]
      142 CALL                             R11 2 0
      143 RETURN                           R0 0
      144 GETTABLEKS                       R6 R2 K48 ["launch"]
      146 LOADK                            R7 K49 ["AvatarCompatibilityPreviewer"]
      147 GETTABLEKS                       R8 R0 K11 ["Src"]
      149 CALL                             R6 2 0
      150 GETTABLEKS                       R6 R2 K50 ["isCli"]
      152 CALL                             R6 0 1
      153 JUMPIFNOT                        R6 ; [+1]
      154 RETURN                           R0 0
      155 GETIMPORT                        R6 K8 [require]
      157 GETTABLEKS                       R8 R0 K9 ["Packages"]
      159 GETTABLEKS                       R7 R8 K51 ["PluginLoader"]
      161 CALL                             R6 1 1
      162 GETTABLEKS                       R7 R6 K52 ["PluginLoaderBuilder"]
      164 GETTABLEKS                       R11 R0 K11 ["Src"]
      166 GETTABLEKS                       R10 R11 K53 ["Resources"]
      168 GETTABLEKS                       R9 R10 K54 ["Localization"]
      170 GETTABLEKS                       R8 R9 K55 ["SourceStrings"]
      172 GETTABLEKS                       R12 R0 K11 ["Src"]
      174 GETTABLEKS                       R11 R12 K53 ["Resources"]
      176 GETTABLEKS                       R10 R11 K54 ["Localization"]
      178 GETTABLEKS                       R9 R10 K56 ["LocalizedStrings"]
      180 DUPTABLE                         R10 K65 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
      181 GETIMPORT                        R11 K15 [plugin]
      183 SETTABLEKS                       R11 R10 K14 ["plugin"]
      185 LOADK                            R11 K49 ["AvatarCompatibilityPreviewer"]
      186 SETTABLEKS                       R11 R10 K57 ["pluginName"]
      188 SETTABLEKS                       R9 R10 K58 ["translationResourceTable"]
      190 SETTABLEKS                       R8 R10 K59 ["fallbackResourceTable"]
      192 LOADNIL                          R11
      193 SETTABLEKS                       R11 R10 K60 ["overrideLocaleId"]
      195 LOADNIL                          R11
      196 SETTABLEKS                       R11 R10 K61 ["localizationNamespace"]
      198 DUPCLOSURE                       R11 K66 [PROTO_1]
      199 SETTABLEKS                       R11 R10 K62 ["getToolbarName"]
      201 DUPTABLE                         R11 K71 [{"getName", "getDescription", "icon", "text"}]
      202 DUPCLOSURE                       R12 K72 [PROTO_2]
      203 SETTABLEKS                       R12 R11 K67 ["getName"]
      205 DUPCLOSURE                       R12 K73 [PROTO_3]
      206 SETTABLEKS                       R12 R11 K68 ["getDescription"]
      208 LOADK                            R12 K29 [""]
      209 SETTABLEKS                       R12 R11 K69 ["icon"]
      211 LOADNIL                          R12
      212 SETTABLEKS                       R12 R11 K70 ["text"]
      214 SETTABLEKS                       R11 R10 K63 ["buttonInfo"]
      216 DUPTABLE                         R11 K78 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      217 LOADK                            R12 K49 ["AvatarCompatibilityPreviewer"]
      218 SETTABLEKS                       R12 R11 K74 ["id"]
      220 GETIMPORT                        R12 K81 [DockWidgetPluginGuiInfo.new]
      222 GETIMPORT                        R13 K85 [Enum.InitialDockState.Left]
      224 LOADB                            R14 0
      225 LOADB                            R15 0
      226 LOADN                            R16 194
      227 LOADN                            R17 88
      228 LOADN                            R18 240
      229 LOADN                            R19 250
      230 CALL                             R12 7 1
      231 SETTABLEKS                       R12 R11 K75 ["dockWidgetPluginGuiInfo"]
      233 DUPCLOSURE                       R12 K86 [PROTO_4]
      234 SETTABLEKS                       R12 R11 K76 ["getDockTitle"]
      236 GETIMPORT                        R12 K89 [Enum.ZIndexBehavior.Sibling]
      238 SETTABLEKS                       R12 R11 K77 ["zIndexBehavior"]
      240 SETTABLEKS                       R11 R10 K64 ["dockWidgetInfo"]
      242 GETTABLEKS                       R11 R7 K90 ["build"]
      244 MOVE                             R12 R10
      245 CALL                             R11 1 1
      246 GETTABLEKS                       R12 R11 K91 ["pluginLoader"]
      248 NAMECALL                         R12 R12 K92 ["waitForUserInteraction"]
      250 CALL                             R12 1 1
      251 JUMPIF                           R12 ; [+1]
      252 RETURN                           R0 0
      253 GETIMPORT                        R13 K8 [require]
      255 GETIMPORT                        R16 K1 [script]
      257 GETTABLEKS                       R15 R16 K2 ["Parent"]
      259 GETTABLEKS                       R14 R15 K93 ["main"]
      261 CALL                             R13 1 1
      262 MOVE                             R14 R13
      263 GETIMPORT                        R15 K15 [plugin]
      265 MOVE                             R16 R11
      266 CALL                             R14 2 0
      267 RETURN                           R0 0
