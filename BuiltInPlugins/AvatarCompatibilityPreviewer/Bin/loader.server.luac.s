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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["TestService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["TestLoader"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K12 [plugin]
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R3 K14 [pcall]
       26 DUPCLOSURE                       R4 K15 [PROTO_0]
       27 CALL                             R3 1 2
       28 JUMPIFNOT                        R3 ; [+102]
       29 GETIMPORT                        R5 K8 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Packages"]
       33 GETTABLEKS                       R6 R6 K16 ["Dev"]
       35 GETTABLEKS                       R6 R6 K17 ["Jest"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R5 R5 K18 ["runCLI"]
       40 GETIMPORT                        R6 K20 [_G]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       45 GETIMPORT                        R6 K20 [_G]
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R6 K22 ["__ROACT_17_INLINE_ACT__"]
       50 GETIMPORT                        R6 K4 [game]
       52 LOADK                            R8 K23 ["DebugAvatarPreviewerUpdateSnapshots"]
       53 LOADB                            R9 0
       54 NAMECALL                         R6 R6 K24 ["DefineFastFlag"]
       56 CALL                             R6 3 1
       57 GETIMPORT                        R7 K4 [game]
       59 LOADK                            R9 K25 ["DebugAvatarPreviewerTestPathPattern"]
       60 LOADK                            R10 K26 [""]
       61 NAMECALL                         R7 R7 K27 ["DefineFastString"]
       63 CALL                             R7 3 1
       64 MOVE                             R8 R5
       65 GETTABLEKS                       R9 R0 K28 ["Src"]
       67 DUPTABLE                         R10 K33 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
       68 LOADB                            R11 1
       69 SETTABLEKS                       R11 R10 K29 ["verbose"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K30 ["ci"]
       74 SETTABLEKS                       R6 R10 K31 ["updateSnapshot"]
       76 JUMPIFNOTEQKS                    R7 K26 [""] ; [+3]
       78 LOADNIL                          R11
       79 JUMP                             ; [+1]
       80 MOVE                             R11 R7
       81 SETTABLEKS                       R11 R10 K32 ["testPathPattern"]
       83 NEWTABLE                         R11 0 2
       85 GETTABLEKS                       R12 R0 K28 ["Src"]
       87 GETTABLEKS                       R13 R0 K34 ["RhodiumTests"]
       89 SETLIST                          R11 R12 2 [1]
       91 CALL                             R8 3 1
       92 NAMECALL                         R8 R8 K35 ["awaitStatus"]
       94 CALL                             R8 1 2
       95 JUMPIFNOTEQKS                    R8 K36 ["Resolved"] ; [+15]
       97 GETTABLEKS                       R10 R9 K37 ["results"]
       99 GETTABLEKS                       R10 R10 K38 ["numFailedTestSuites"]
      101 LOADN                            R11 0
      102 JUMPIFLT                         R11 R10 ; [+8]
      104 GETTABLEKS                       R10 R9 K37 ["results"]
      106 GETTABLEKS                       R10 R10 K39 ["numFailedTests"]
      108 LOADN                            R11 0
      109 JUMPIFNOTLT                      R11 R10 ; [+16]
      111 JUMPIFNOTEQKS                    R8 K40 ["Rejected"] ; [+5]
      113 GETIMPORT                        R10 K42 [print]
      115 MOVE                             R11 R9
      116 CALL                             R10 1 0
      117 LOADK                            R12 K43 ["Jest 3 test run failed"]
      118 NAMECALL                         R10 R1 K44 ["Error"]
      120 CALL                             R10 2 0
      121 LOADN                            R12 1
      122 NAMECALL                         R10 R4 K45 ["ExitAsync"]
      124 CALL                             R10 2 0
      125 RETURN                           R0 0
      126 LOADN                            R12 0
      127 NAMECALL                         R10 R4 K45 ["ExitAsync"]
      129 CALL                             R10 2 0
      130 RETURN                           R0 0
      131 GETTABLEKS                       R5 R2 K46 ["launch"]
      133 LOADK                            R6 K47 ["AvatarCompatibilityPreviewer"]
      134 GETTABLEKS                       R7 R0 K28 ["Src"]
      136 CALL                             R5 2 0
      137 GETTABLEKS                       R5 R2 K48 ["isCli"]
      139 CALL                             R5 0 1
      140 JUMPIFNOT                        R5 ; [+1]
      141 RETURN                           R0 0
      142 GETIMPORT                        R5 K8 [require]
      144 GETTABLEKS                       R6 R0 K9 ["Packages"]
      146 GETTABLEKS                       R6 R6 K49 ["PluginLoader"]
      148 CALL                             R5 1 1
      149 GETTABLEKS                       R6 R5 K50 ["PluginLoaderBuilder"]
      151 GETTABLEKS                       R7 R0 K28 ["Src"]
      153 GETTABLEKS                       R7 R7 K51 ["Resources"]
      155 GETTABLEKS                       R7 R7 K52 ["Localization"]
      157 GETTABLEKS                       R7 R7 K53 ["SourceStrings"]
      159 GETTABLEKS                       R8 R0 K28 ["Src"]
      161 GETTABLEKS                       R8 R8 K51 ["Resources"]
      163 GETTABLEKS                       R8 R8 K52 ["Localization"]
      165 GETTABLEKS                       R8 R8 K54 ["LocalizedStrings"]
      167 DUPTABLE                         R9 K63 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
      168 GETIMPORT                        R10 K12 [plugin]
      170 SETTABLEKS                       R10 R9 K11 ["plugin"]
      172 LOADK                            R10 K47 ["AvatarCompatibilityPreviewer"]
      173 SETTABLEKS                       R10 R9 K55 ["pluginName"]
      175 SETTABLEKS                       R8 R9 K56 ["translationResourceTable"]
      177 SETTABLEKS                       R7 R9 K57 ["fallbackResourceTable"]
      179 LOADNIL                          R10
      180 SETTABLEKS                       R10 R9 K58 ["overrideLocaleId"]
      182 LOADNIL                          R10
      183 SETTABLEKS                       R10 R9 K59 ["localizationNamespace"]
      185 DUPCLOSURE                       R10 K64 [PROTO_1]
      186 SETTABLEKS                       R10 R9 K60 ["getToolbarName"]
      188 DUPTABLE                         R10 K69 [{"getName", "getDescription", "icon", "text"}]
      189 DUPCLOSURE                       R11 K70 [PROTO_2]
      190 SETTABLEKS                       R11 R10 K65 ["getName"]
      192 DUPCLOSURE                       R11 K71 [PROTO_3]
      193 SETTABLEKS                       R11 R10 K66 ["getDescription"]
      195 LOADK                            R11 K26 [""]
      196 SETTABLEKS                       R11 R10 K67 ["icon"]
      198 LOADNIL                          R11
      199 SETTABLEKS                       R11 R10 K68 ["text"]
      201 SETTABLEKS                       R10 R9 K61 ["buttonInfo"]
      203 DUPTABLE                         R10 K76 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      204 LOADK                            R11 K47 ["AvatarCompatibilityPreviewer"]
      205 SETTABLEKS                       R11 R10 K72 ["id"]
      207 GETIMPORT                        R11 K79 [DockWidgetPluginGuiInfo.new]
      209 GETIMPORT                        R12 K83 [Enum.InitialDockState.Left]
      211 LOADB                            R13 0
      212 LOADB                            R14 0
      213 LOADN                            R15 194
      214 LOADN                            R16 88
      215 LOADN                            R17 240
      216 LOADN                            R18 250
      217 CALL                             R11 7 1
      218 SETTABLEKS                       R11 R10 K73 ["dockWidgetPluginGuiInfo"]
      220 DUPCLOSURE                       R11 K84 [PROTO_4]
      221 SETTABLEKS                       R11 R10 K74 ["getDockTitle"]
      223 GETIMPORT                        R11 K87 [Enum.ZIndexBehavior.Sibling]
      225 SETTABLEKS                       R11 R10 K75 ["zIndexBehavior"]
      227 SETTABLEKS                       R10 R9 K62 ["dockWidgetInfo"]
      229 GETTABLEKS                       R10 R6 K88 ["build"]
      231 MOVE                             R11 R9
      232 CALL                             R10 1 1
      233 GETTABLEKS                       R11 R10 K89 ["pluginLoader"]
      235 NAMECALL                         R11 R11 K90 ["waitForUserInteraction"]
      237 CALL                             R11 1 1
      238 JUMPIF                           R11 ; [+1]
      239 RETURN                           R0 0
      240 GETIMPORT                        R12 K8 [require]
      242 GETIMPORT                        R13 K1 [script]
      244 GETTABLEKS                       R13 R13 K2 ["Parent"]
      246 GETTABLEKS                       R13 R13 K91 ["main"]
      248 CALL                             R12 1 1
      249 MOVE                             R13 R12
      250 GETIMPORT                        R14 K12 [plugin]
      252 MOVE                             R15 R10
      253 CALL                             R13 2 0
      254 RETURN                           R0 0
