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
       26 JUMPIFNOT                        R3 ; [+85]
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
       58 DUPTABLE                         R9 K31 [{["verbose"] = True, ["ci"] = True, ["testPathPattern"]}]
       59 JUMPIFNOTEQKS                    R6 K24 [""] ; [+3]
       61 LOADNIL                          R10
       62 JUMP                             ; [+1]
       63 MOVE                             R10 R6
       64 SETTABLEKS                       R10 R9 K30 ["testPathPattern"]
       66 NEWTABLE                         R10 0 1
       68 GETTABLEKS                       R11 R2 K26 ["Src"]
       70 SETLIST                          R10 R11 1 [1]
       72 CALL                             R7 3 1
       73 NAMECALL                         R7 R7 K32 ["awaitStatus"]
       75 CALL                             R7 1 2
       76 JUMPIFNOTEQKS                    R7 K33 ["Resolved"] ; [+15]
       78 GETTABLEKS                       R9 R8 K34 ["results"]
       80 GETTABLEKS                       R9 R9 K35 ["numFailedTestSuites"]
       82 LOADN                            R10 0
       83 JUMPIFLT                         R10 R9 ; [+8]
       85 GETTABLEKS                       R9 R8 K34 ["results"]
       87 GETTABLEKS                       R9 R9 K36 ["numFailedTests"]
       89 LOADN                            R10 0
       90 JUMPIFNOTLT                      R10 R9 ; [+16]
       92 JUMPIFNOTEQKS                    R7 K37 ["Rejected"] ; [+5]
       94 GETIMPORT                        R9 K39 [print]
       96 MOVE                             R10 R8
       97 CALL                             R9 1 0
       98 LOADK                            R11 K40 ["Jest 3 test run failed"]
       99 NAMECALL                         R9 R1 K41 ["Error"]
      101 CALL                             R9 2 0
      102 LOADN                            R11 1
      103 NAMECALL                         R9 R4 K42 ["ExitAsync"]
      105 CALL                             R9 2 0
      106 RETURN                           R0 0
      107 LOADN                            R11 0
      108 NAMECALL                         R9 R4 K42 ["ExitAsync"]
      110 CALL                             R9 2 0
      111 RETURN                           R0 0
      112 GETIMPORT                        R5 K1 [require]
      114 GETTABLEKS                       R6 R2 K15 ["Packages"]
      116 GETTABLEKS                       R6 R6 K43 ["PluginLoader"]
      118 CALL                             R5 1 1
      119 GETTABLEKS                       R6 R5 K44 ["PluginLoaderBuilder"]
      121 GETTABLEKS                       R7 R2 K26 ["Src"]
      123 GETTABLEKS                       R7 R7 K45 ["Resources"]
      125 GETTABLEKS                       R7 R7 K46 ["Localization"]
      127 GETTABLEKS                       R7 R7 K47 ["SourceStrings"]
      129 GETTABLEKS                       R8 R2 K26 ["Src"]
      131 GETTABLEKS                       R8 R8 K45 ["Resources"]
      133 GETTABLEKS                       R8 R8 K46 ["Localization"]
      135 GETTABLEKS                       R8 R8 K48 ["LocalizedStrings"]
      137 GETIMPORT                        R9 K7 [game]
      139 LOADK                            R11 K49 ["RaiseAssistantVisibility"]
      140 NAMECALL                         R9 R9 K50 ["GetEngineFeature"]
      142 CALL                             R9 2 1
      143 DUPTABLE                         R10 K61 [{["plugin"], ["pluginName"] = "TerrainEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
      144 GETIMPORT                        R11 K62 [plugin]
      146 SETTABLEKS                       R11 R10 K51 ["plugin"]
      148 SETTABLEKS                       R8 R10 K53 ["translationResourceTable"]
      150 SETTABLEKS                       R7 R10 K54 ["fallbackResourceTable"]
      152 DUPCLOSURE                       R11 K63 [PROTO_1]
      153 SETTABLEKS                       R11 R10 K58 ["getToolbarName"]
      155 DUPTABLE                         R11 K69 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["clickableWhenViewportHidden"] = True}]
      156 DUPCLOSURE                       R12 K70 [PROTO_2]
      157 SETTABLEKS                       R12 R11 K64 ["getName"]
      159 DUPCLOSURE                       R12 K71 [PROTO_3]
      160 SETTABLEKS                       R12 R11 K65 ["getDescription"]
      162 SETTABLEKS                       R11 R10 K59 ["buttonInfo"]
      164 DUPTABLE                         R11 K76 [{["id"] = "TerrainEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      165 GETIMPORT                        R12 K79 [DockWidgetPluginGuiInfo.new]
      167 GETIMPORT                        R13 K83 [Enum.InitialDockState.Left]
      169 JUMPIFNOT                        R9 ; [+2]
      170 LOADB                            R14 0
      171 JUMP                             ; [+1]
      172 LOADB                            R14 1
      173 LOADB                            R15 0
      174 LOADN                            R16 350
      175 LOADN                            R17 600
      176 LOADN                            R18 350
      177 LOADN                            R19 200
      178 CALL                             R12 7 1
      179 SETTABLEKS                       R12 R11 K73 ["dockWidgetPluginGuiInfo"]
      181 DUPCLOSURE                       R12 K84 [PROTO_4]
      182 SETTABLEKS                       R12 R11 K74 ["getDockTitle"]
      184 GETIMPORT                        R12 K87 [Enum.ZIndexBehavior.Sibling]
      186 SETTABLEKS                       R12 R11 K75 ["zIndexBehavior"]
      188 SETTABLEKS                       R11 R10 K60 ["dockWidgetInfo"]
      190 GETTABLEKS                       R11 R6 K88 ["build"]
      192 MOVE                             R12 R10
      193 CALL                             R11 1 1
      194 GETTABLEKS                       R12 R11 K89 ["pluginLoader"]
      196 NAMECALL                         R12 R12 K90 ["waitForUserInteraction"]
      198 CALL                             R12 1 1
      199 JUMPIF                           R12 ; [+1]
      200 RETURN                           R0 0
      201 MOVE                             R13 R0
      202 GETIMPORT                        R14 K62 [plugin]
      204 MOVE                             R15 R11
      205 CALL                             R13 2 0
      206 RETURN                           R0 0
