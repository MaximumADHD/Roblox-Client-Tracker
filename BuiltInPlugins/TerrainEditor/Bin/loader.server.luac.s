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

PROTO_5:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["Terrain"]
        4 FASTCALL2K                       ASSERT R1 K3 ; [+4]
        6 LOADK                            R2 K3 ["Workspace must contain Terrain"]
        7 GETIMPORT                        R0 K5 [assert]
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R1 R0 K6 ["GridBackendReloadRequired"]
       12 RETURN                           R1 1

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
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R3 K14 [pcall]
       26 CALL                             R3 1 2
       27 JUMPIFNOT                        R3 ; [+85]
       28 GETIMPORT                        R5 K1 [require]
       30 GETTABLEKS                       R6 R2 K15 ["Packages"]
       32 GETTABLEKS                       R6 R6 K16 ["Dev"]
       34 GETTABLEKS                       R6 R6 K17 ["Jest"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R5 R5 K18 ["runCLI"]
       39 GETIMPORT                        R6 K20 [_G]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       44 GETIMPORT                        R6 K20 [_G]
       46 LOADB                            R7 1
       47 SETTABLEKS                       R7 R6 K22 ["__ROACT_17_INLINE_ACT__"]
       49 GETIMPORT                        R6 K7 [game]
       51 LOADK                            R8 K23 ["DebugAvatarPreviewerTestPathPattern"]
       52 LOADK                            R9 K24 [""]
       53 NAMECALL                         R6 R6 K25 ["DefineFastString"]
       55 CALL                             R6 3 1
       56 MOVE                             R7 R5
       57 GETTABLEKS                       R8 R2 K26 ["Src"]
       59 DUPTABLE                         R9 K31 [{["verbose"] = True, ["ci"] = True, ["testPathPattern"]}]
       60 JUMPIFNOTEQKS                    R6 K24 [""] ; [+3]
       62 LOADNIL                          R10
       63 JUMP                             ; [+1]
       64 MOVE                             R10 R6
       65 SETTABLEKS                       R10 R9 K30 ["testPathPattern"]
       67 NEWTABLE                         R10 0 1
       69 GETTABLEKS                       R11 R2 K26 ["Src"]
       71 SETLIST                          R10 R11 1 [1]
       73 CALL                             R7 3 1
       74 NAMECALL                         R7 R7 K32 ["awaitStatus"]
       76 CALL                             R7 1 2
       77 JUMPIFNOTEQKS                    R7 K33 ["Resolved"] ; [+15]
       79 GETTABLEKS                       R9 R8 K34 ["results"]
       81 GETTABLEKS                       R9 R9 K35 ["numFailedTestSuites"]
       83 LOADN                            R10 0
       84 JUMPIFLT                         R10 R9 ; [+8]
       86 GETTABLEKS                       R9 R8 K34 ["results"]
       88 GETTABLEKS                       R9 R9 K36 ["numFailedTests"]
       90 LOADN                            R10 0
       91 JUMPIFNOTLT                      R10 R9 ; [+16]
       93 JUMPIFNOTEQKS                    R7 K37 ["Rejected"] ; [+5]
       95 GETIMPORT                        R9 K39 [print]
       97 MOVE                             R10 R8
       98 CALL                             R9 1 0
       99 LOADK                            R11 K40 ["Jest 3 test run failed"]
      100 NAMECALL                         R9 R1 K41 ["Error"]
      102 CALL                             R9 2 0
      103 LOADN                            R11 1
      104 NAMECALL                         R9 R4 K42 ["ExitAsync"]
      106 CALL                             R9 2 0
      107 RETURN                           R0 0
      108 LOADN                            R11 0
      109 NAMECALL                         R9 R4 K42 ["ExitAsync"]
      111 CALL                             R9 2 0
      112 RETURN                           R0 0
      113 GETIMPORT                        R5 K1 [require]
      115 GETTABLEKS                       R6 R2 K15 ["Packages"]
      117 GETTABLEKS                       R6 R6 K43 ["PluginLoader"]
      119 CALL                             R5 1 1
      120 GETTABLEKS                       R6 R5 K44 ["PluginLoaderBuilder"]
      122 GETTABLEKS                       R7 R2 K26 ["Src"]
      124 GETTABLEKS                       R7 R7 K45 ["Resources"]
      126 GETTABLEKS                       R7 R7 K46 ["Localization"]
      128 GETTABLEKS                       R7 R7 K47 ["SourceStrings"]
      130 GETTABLEKS                       R8 R2 K26 ["Src"]
      132 GETTABLEKS                       R8 R8 K45 ["Resources"]
      134 GETTABLEKS                       R8 R8 K46 ["Localization"]
      136 GETTABLEKS                       R8 R8 K48 ["LocalizedStrings"]
      138 GETIMPORT                        R9 K7 [game]
      140 LOADK                            R11 K49 ["RaiseAssistantVisibility"]
      141 NAMECALL                         R9 R9 K50 ["GetEngineFeature"]
      143 CALL                             R9 2 1
      144 DUPTABLE                         R10 K62 [{["plugin"], ["pluginName"] = "TerrainEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"]}]
      145 GETIMPORT                        R11 K63 [plugin]
      147 SETTABLEKS                       R11 R10 K51 ["plugin"]
      149 SETTABLEKS                       R8 R10 K53 ["translationResourceTable"]
      151 SETTABLEKS                       R7 R10 K54 ["fallbackResourceTable"]
      153 DUPCLOSURE                       R11 K64 [PROTO_1]
      154 SETTABLEKS                       R11 R10 K58 ["getToolbarName"]
      156 DUPTABLE                         R11 K70 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["clickableWhenViewportHidden"] = True}]
      157 DUPCLOSURE                       R12 K71 [PROTO_2]
      158 SETTABLEKS                       R12 R11 K65 ["getName"]
      160 DUPCLOSURE                       R12 K72 [PROTO_3]
      161 SETTABLEKS                       R12 R11 K66 ["getDescription"]
      163 SETTABLEKS                       R11 R10 K59 ["buttonInfo"]
      165 DUPTABLE                         R11 K77 [{["id"] = "TerrainEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      166 GETIMPORT                        R12 K80 [DockWidgetPluginGuiInfo.new]
      168 GETIMPORT                        R13 K84 [Enum.InitialDockState.Left]
      170 JUMPIFNOT                        R9 ; [+2]
      171 LOADB                            R14 0
      172 JUMP                             ; [+1]
      173 LOADB                            R14 1
      174 LOADB                            R15 0
      175 LOADN                            R16 350
      176 LOADN                            R17 600
      177 LOADN                            R18 350
      178 LOADN                            R19 200
      179 CALL                             R12 7 1
      180 SETTABLEKS                       R12 R11 K74 ["dockWidgetPluginGuiInfo"]
      182 DUPCLOSURE                       R12 K85 [PROTO_4]
      183 SETTABLEKS                       R12 R11 K75 ["getDockTitle"]
      185 GETIMPORT                        R12 K88 [Enum.ZIndexBehavior.Sibling]
      187 SETTABLEKS                       R12 R11 K76 ["zIndexBehavior"]
      189 SETTABLEKS                       R11 R10 K60 ["dockWidgetInfo"]
      191 DUPTABLE                         R11 K90 [{"GridBackendReloadRequired"}]
      192 DUPCLOSURE                       R12 K91 [PROTO_5]
      193 SETTABLEKS                       R12 R11 K89 ["GridBackendReloadRequired"]
      195 SETTABLEKS                       R11 R10 K61 ["extraTriggers"]
      197 GETTABLEKS                       R11 R6 K92 ["build"]
      199 MOVE                             R12 R10
      200 CALL                             R11 1 1
      201 GETTABLEKS                       R12 R11 K93 ["pluginLoader"]
      203 NAMECALL                         R12 R12 K94 ["waitForUserInteraction"]
      205 CALL                             R12 1 1
      206 JUMPIF                           R12 ; [+1]
      207 RETURN                           R0 0
      208 MOVE                             R13 R0
      209 GETIMPORT                        R14 K63 [plugin]
      211 MOVE                             R15 R11
      212 CALL                             R13 2 0
      213 RETURN                           R0 0
