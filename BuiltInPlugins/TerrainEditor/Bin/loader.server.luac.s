PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R0 K0 ["TerrainEditorLuaToolbarName"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["Editor"]
        1 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["PluginButtonEditorTooltip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["Title"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["main"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["TestService"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K3 [script]
       18 LOADK                            R4 K10 ["TerrainEditor"]
       19 NAMECALL                         R2 R2 K11 ["FindFirstAncestor"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K13 [pcall]
       24 DUPCLOSURE                       R4 K14 [PROTO_0]
       25 CALL                             R3 1 2
       26 JUMPIFNOT                        R3 ; [+91]
       27 GETIMPORT                        R5 K1 [require]
       29 GETTABLEKS                       R6 R2 K15 ["Packages"]
       31 GETTABLEKS                       R6 R6 K16 ["Dev"]
       33 GETTABLEKS                       R6 R6 K17 ["Jest"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R5 R5 K18 ["runCLI"]
       38 GETIMPORT                        R6 K20 [_G]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       43 GETIMPORT                        R6 K20 [_G]
       45 LOADB                            R7 1
       46 SETTABLEKS                       R7 R6 K22 ["__ROACT_17_INLINE_ACT__"]
       48 GETIMPORT                        R6 K7 [game]
       50 LOADK                            R8 K23 ["DebugAvatarPreviewerTestPathPattern"]
       51 LOADK                            R9 K24 [""]
       52 NAMECALL                         R6 R6 K25 ["DefineFastString"]
       54 CALL                             R6 3 1
       55 MOVE                             R7 R5
       56 GETTABLEKS                       R8 R2 K26 ["Src"]
       58 DUPTABLE                         R9 K30 [{"verbose", "ci", "testPathPattern"}]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K27 ["verbose"]
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R9 K28 ["ci"]
       65 JUMPIFNOTEQKS                    R6 K24 [""] ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+1]
       69 MOVE                             R10 R6
       70 SETTABLEKS                       R10 R9 K29 ["testPathPattern"]
       72 NEWTABLE                         R10 0 1
       74 GETTABLEKS                       R11 R2 K26 ["Src"]
       76 SETLIST                          R10 R11 1 [1]
       78 CALL                             R7 3 1
       79 NAMECALL                         R7 R7 K31 ["awaitStatus"]
       81 CALL                             R7 1 2
       82 JUMPIFNOTEQKS                    R7 K32 ["Resolved"] ; [+15]
       84 GETTABLEKS                       R9 R8 K33 ["results"]
       86 GETTABLEKS                       R9 R9 K34 ["numFailedTestSuites"]
       88 LOADN                            R10 0
       89 JUMPIFLT                         R10 R9 ; [+8]
       91 GETTABLEKS                       R9 R8 K33 ["results"]
       93 GETTABLEKS                       R9 R9 K35 ["numFailedTests"]
       95 LOADN                            R10 0
       96 JUMPIFNOTLT                      R10 R9 ; [+16]
       98 JUMPIFNOTEQKS                    R7 K36 ["Rejected"] ; [+5]
      100 GETIMPORT                        R9 K38 [print]
      102 MOVE                             R10 R8
      103 CALL                             R9 1 0
      104 LOADK                            R11 K39 ["Jest 3 test run failed"]
      105 NAMECALL                         R9 R1 K40 ["Error"]
      107 CALL                             R9 2 0
      108 LOADN                            R11 1
      109 NAMECALL                         R9 R4 K41 ["ExitAsync"]
      111 CALL                             R9 2 0
      112 RETURN                           R0 0
      113 LOADN                            R11 0
      114 NAMECALL                         R9 R4 K41 ["ExitAsync"]
      116 CALL                             R9 2 0
      117 RETURN                           R0 0
      118 GETIMPORT                        R5 K1 [require]
      120 GETTABLEKS                       R6 R2 K15 ["Packages"]
      122 GETTABLEKS                       R6 R6 K42 ["PluginLoader"]
      124 CALL                             R5 1 1
      125 GETTABLEKS                       R6 R5 K43 ["PluginLoaderBuilder"]
      127 GETTABLEKS                       R7 R2 K26 ["Src"]
      129 GETTABLEKS                       R7 R7 K44 ["Resources"]
      131 GETTABLEKS                       R7 R7 K45 ["Localization"]
      133 GETTABLEKS                       R7 R7 K46 ["SourceStrings"]
      135 GETTABLEKS                       R8 R2 K26 ["Src"]
      137 GETTABLEKS                       R8 R8 K44 ["Resources"]
      139 GETTABLEKS                       R8 R8 K45 ["Localization"]
      141 GETTABLEKS                       R8 R8 K47 ["LocalizedStrings"]
      143 DUPTABLE                         R9 K57 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
      144 GETIMPORT                        R10 K58 [plugin]
      146 SETTABLEKS                       R10 R9 K48 ["plugin"]
      148 LOADK                            R10 K10 ["TerrainEditor"]
      149 SETTABLEKS                       R10 R9 K49 ["pluginName"]
      151 SETTABLEKS                       R8 R9 K50 ["translationResourceTable"]
      153 SETTABLEKS                       R7 R9 K51 ["fallbackResourceTable"]
      155 LOADNIL                          R10
      156 SETTABLEKS                       R10 R9 K52 ["overrideLocaleId"]
      158 LOADNIL                          R10
      159 SETTABLEKS                       R10 R9 K53 ["localizationNamespace"]
      161 DUPCLOSURE                       R10 K59 [PROTO_1]
      162 SETTABLEKS                       R10 R9 K54 ["getToolbarName"]
      164 DUPTABLE                         R10 K65 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      165 DUPCLOSURE                       R11 K66 [PROTO_2]
      166 SETTABLEKS                       R11 R10 K60 ["getName"]
      168 DUPCLOSURE                       R11 K67 [PROTO_3]
      169 SETTABLEKS                       R11 R10 K61 ["getDescription"]
      171 LOADK                            R11 K24 [""]
      172 SETTABLEKS                       R11 R10 K62 ["icon"]
      174 LOADNIL                          R11
      175 SETTABLEKS                       R11 R10 K63 ["text"]
      177 LOADB                            R11 1
      178 SETTABLEKS                       R11 R10 K64 ["clickableWhenViewportHidden"]
      180 SETTABLEKS                       R10 R9 K55 ["buttonInfo"]
      182 DUPTABLE                         R10 K72 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      183 LOADK                            R11 K10 ["TerrainEditor"]
      184 SETTABLEKS                       R11 R10 K68 ["id"]
      186 GETIMPORT                        R11 K75 [DockWidgetPluginGuiInfo.new]
      188 GETIMPORT                        R12 K79 [Enum.InitialDockState.Left]
      190 LOADB                            R13 1
      191 LOADB                            R14 0
      192 LOADN                            R15 94
      193 LOADN                            R16 88
      194 LOADN                            R17 94
      195 LOADN                            R18 200
      196 CALL                             R11 7 1
      197 SETTABLEKS                       R11 R10 K69 ["dockWidgetPluginGuiInfo"]
      199 DUPCLOSURE                       R11 K80 [PROTO_4]
      200 SETTABLEKS                       R11 R10 K70 ["getDockTitle"]
      202 GETIMPORT                        R11 K83 [Enum.ZIndexBehavior.Sibling]
      204 SETTABLEKS                       R11 R10 K71 ["zIndexBehavior"]
      206 SETTABLEKS                       R10 R9 K56 ["dockWidgetInfo"]
      208 GETTABLEKS                       R10 R6 K84 ["build"]
      210 MOVE                             R11 R9
      211 CALL                             R10 1 1
      212 GETTABLEKS                       R11 R10 K85 ["pluginLoader"]
      214 NAMECALL                         R11 R11 K86 ["waitForUserInteraction"]
      216 CALL                             R11 1 1
      217 JUMPIF                           R11 ; [+1]
      218 RETURN                           R0 0
      219 MOVE                             R12 R0
      220 GETIMPORT                        R13 K58 [plugin]
      222 MOVE                             R14 R10
      223 CALL                             R12 2 0
      224 RETURN                           R0 0
