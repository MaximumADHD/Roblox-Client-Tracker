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
       28 JUMPIFNOT                        R3 ; [+96]
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
       67 DUPTABLE                         R10 K34 [{["verbose"] = True, ["ci"] = True, ["updateSnapshot"], ["testPathPattern"]}]
       68 SETTABLEKS                       R6 R10 K32 ["updateSnapshot"]
       70 JUMPIFNOTEQKS                    R7 K26 [""] ; [+3]
       72 LOADNIL                          R11
       73 JUMP                             ; [+1]
       74 MOVE                             R11 R7
       75 SETTABLEKS                       R11 R10 K33 ["testPathPattern"]
       77 NEWTABLE                         R11 0 2
       79 GETTABLEKS                       R12 R0 K28 ["Src"]
       81 GETTABLEKS                       R13 R0 K35 ["RhodiumTests"]
       83 SETLIST                          R11 R12 2 [1]
       85 CALL                             R8 3 1
       86 NAMECALL                         R8 R8 K36 ["awaitStatus"]
       88 CALL                             R8 1 2
       89 JUMPIFNOTEQKS                    R8 K37 ["Resolved"] ; [+15]
       91 GETTABLEKS                       R10 R9 K38 ["results"]
       93 GETTABLEKS                       R10 R10 K39 ["numFailedTestSuites"]
       95 LOADN                            R11 0
       96 JUMPIFLT                         R11 R10 ; [+8]
       98 GETTABLEKS                       R10 R9 K38 ["results"]
      100 GETTABLEKS                       R10 R10 K40 ["numFailedTests"]
      102 LOADN                            R11 0
      103 JUMPIFNOTLT                      R11 R10 ; [+16]
      105 JUMPIFNOTEQKS                    R8 K41 ["Rejected"] ; [+5]
      107 GETIMPORT                        R10 K43 [print]
      109 MOVE                             R11 R9
      110 CALL                             R10 1 0
      111 LOADK                            R12 K44 ["Jest 3 test run failed"]
      112 NAMECALL                         R10 R1 K45 ["Error"]
      114 CALL                             R10 2 0
      115 LOADN                            R12 1
      116 NAMECALL                         R10 R4 K46 ["ExitAsync"]
      118 CALL                             R10 2 0
      119 RETURN                           R0 0
      120 LOADN                            R12 0
      121 NAMECALL                         R10 R4 K46 ["ExitAsync"]
      123 CALL                             R10 2 0
      124 RETURN                           R0 0
      125 GETTABLEKS                       R5 R2 K47 ["launch"]
      127 LOADK                            R6 K48 ["AvatarCompatibilityPreviewer"]
      128 GETTABLEKS                       R7 R0 K28 ["Src"]
      130 CALL                             R5 2 0
      131 GETTABLEKS                       R5 R2 K49 ["isCli"]
      133 CALL                             R5 0 1
      134 JUMPIFNOT                        R5 ; [+1]
      135 RETURN                           R0 0
      136 GETIMPORT                        R5 K8 [require]
      138 GETTABLEKS                       R6 R0 K9 ["Packages"]
      140 GETTABLEKS                       R6 R6 K50 ["PluginLoader"]
      142 CALL                             R5 1 1
      143 GETTABLEKS                       R6 R5 K51 ["PluginLoaderBuilder"]
      145 GETTABLEKS                       R7 R0 K28 ["Src"]
      147 GETTABLEKS                       R7 R7 K52 ["Resources"]
      149 GETTABLEKS                       R7 R7 K53 ["Localization"]
      151 GETTABLEKS                       R7 R7 K54 ["SourceStrings"]
      153 GETTABLEKS                       R8 R0 K28 ["Src"]
      155 GETTABLEKS                       R8 R8 K52 ["Resources"]
      157 GETTABLEKS                       R8 R8 K53 ["Localization"]
      159 GETTABLEKS                       R8 R8 K55 ["LocalizedStrings"]
      161 DUPTABLE                         R9 K65 [{["plugin"], ["pluginName"] = "AvatarCompatibilityPreviewer", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
      162 GETIMPORT                        R10 K12 [plugin]
      164 SETTABLEKS                       R10 R9 K11 ["plugin"]
      166 SETTABLEKS                       R8 R9 K57 ["translationResourceTable"]
      168 SETTABLEKS                       R7 R9 K58 ["fallbackResourceTable"]
      170 DUPCLOSURE                       R10 K66 [PROTO_1]
      171 SETTABLEKS                       R10 R9 K62 ["getToolbarName"]
      173 DUPTABLE                         R10 K71 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
      174 DUPCLOSURE                       R11 K72 [PROTO_2]
      175 SETTABLEKS                       R11 R10 K67 ["getName"]
      177 DUPCLOSURE                       R11 K73 [PROTO_3]
      178 SETTABLEKS                       R11 R10 K68 ["getDescription"]
      180 SETTABLEKS                       R10 R9 K63 ["buttonInfo"]
      182 DUPTABLE                         R10 K78 [{["id"] = "AvatarCompatibilityPreviewer", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      183 GETIMPORT                        R11 K81 [DockWidgetPluginGuiInfo.new]
      185 GETIMPORT                        R12 K85 [Enum.InitialDockState.Left]
      187 LOADB                            R13 0
      188 LOADB                            R14 0
      189 LOADN                            R15 450
      190 LOADN                            R16 600
      191 LOADN                            R17 240
      192 LOADN                            R18 250
      193 CALL                             R11 7 1
      194 SETTABLEKS                       R11 R10 K75 ["dockWidgetPluginGuiInfo"]
      196 DUPCLOSURE                       R11 K86 [PROTO_4]
      197 SETTABLEKS                       R11 R10 K76 ["getDockTitle"]
      199 GETIMPORT                        R11 K89 [Enum.ZIndexBehavior.Sibling]
      201 SETTABLEKS                       R11 R10 K77 ["zIndexBehavior"]
      203 SETTABLEKS                       R10 R9 K64 ["dockWidgetInfo"]
      205 GETTABLEKS                       R10 R6 K90 ["build"]
      207 MOVE                             R11 R9
      208 CALL                             R10 1 1
      209 GETTABLEKS                       R11 R10 K91 ["pluginLoader"]
      211 NAMECALL                         R11 R11 K92 ["waitForUserInteraction"]
      213 CALL                             R11 1 1
      214 JUMPIF                           R11 ; [+1]
      215 RETURN                           R0 0
      216 GETIMPORT                        R12 K8 [require]
      218 GETIMPORT                        R13 K1 [script]
      220 GETTABLEKS                       R13 R13 K2 ["Parent"]
      222 GETTABLEKS                       R13 R13 K93 ["main"]
      224 CALL                             R12 1 1
      225 MOVE                             R13 R12
      226 GETIMPORT                        R14 K12 [plugin]
      228 MOVE                             R15 R10
      229 CALL                             R13 2 0
      230 RETURN                           R0 0
