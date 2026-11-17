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
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 FASTPCALL                        pcall 1 ; [+2]
       26 GETIMPORT                        R3 K15 [pcall]
       28 CALL                             R3 1 2
       29 JUMPIFNOT                        R3 ; [+96]
       30 GETIMPORT                        R5 K8 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R6 R6 K16 ["Dev"]
       36 GETTABLEKS                       R6 R6 K17 ["Jest"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R5 R5 K18 ["runCLI"]
       41 GETIMPORT                        R6 K20 [_G]
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       46 GETIMPORT                        R6 K20 [_G]
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R6 K22 ["__ROACT_17_INLINE_ACT__"]
       51 GETIMPORT                        R6 K4 [game]
       53 LOADK                            R8 K23 ["DebugAvatarPreviewerUpdateSnapshots"]
       54 LOADB                            R9 0
       55 NAMECALL                         R6 R6 K24 ["DefineFastFlag"]
       57 CALL                             R6 3 1
       58 GETIMPORT                        R7 K4 [game]
       60 LOADK                            R9 K25 ["DebugAvatarPreviewerTestPathPattern"]
       61 LOADK                            R10 K26 [""]
       62 NAMECALL                         R7 R7 K27 ["DefineFastString"]
       64 CALL                             R7 3 1
       65 MOVE                             R8 R5
       66 GETTABLEKS                       R9 R0 K28 ["Src"]
       68 DUPTABLE                         R10 K34 [{["verbose"] = True, ["ci"] = True, ["updateSnapshot"], ["testPathPattern"]}]
       69 SETTABLEKS                       R6 R10 K32 ["updateSnapshot"]
       71 JUMPIFNOTEQKS                    R7 K26 [""] ; [+3]
       73 LOADNIL                          R11
       74 JUMP                             ; [+1]
       75 MOVE                             R11 R7
       76 SETTABLEKS                       R11 R10 K33 ["testPathPattern"]
       78 NEWTABLE                         R11 0 2
       80 GETTABLEKS                       R12 R0 K28 ["Src"]
       82 GETTABLEKS                       R13 R0 K35 ["RhodiumTests"]
       84 SETLIST                          R11 R12 2 [1]
       86 CALL                             R8 3 1
       87 NAMECALL                         R8 R8 K36 ["awaitStatus"]
       89 CALL                             R8 1 2
       90 JUMPIFNOTEQKS                    R8 K37 ["Resolved"] ; [+15]
       92 GETTABLEKS                       R10 R9 K38 ["results"]
       94 GETTABLEKS                       R10 R10 K39 ["numFailedTestSuites"]
       96 LOADN                            R11 0
       97 JUMPIFLT                         R11 R10 ; [+8]
       99 GETTABLEKS                       R10 R9 K38 ["results"]
      101 GETTABLEKS                       R10 R10 K40 ["numFailedTests"]
      103 LOADN                            R11 0
      104 JUMPIFNOTLT                      R11 R10 ; [+16]
      106 JUMPIFNOTEQKS                    R8 K41 ["Rejected"] ; [+5]
      108 GETIMPORT                        R10 K43 [print]
      110 MOVE                             R11 R9
      111 CALL                             R10 1 0
      112 LOADK                            R12 K44 ["Jest 3 test run failed"]
      113 NAMECALL                         R10 R1 K45 ["Error"]
      115 CALL                             R10 2 0
      116 LOADN                            R12 1
      117 NAMECALL                         R10 R4 K46 ["ExitAsync"]
      119 CALL                             R10 2 0
      120 RETURN                           R0 0
      121 LOADN                            R12 0
      122 NAMECALL                         R10 R4 K46 ["ExitAsync"]
      124 CALL                             R10 2 0
      125 RETURN                           R0 0
      126 GETTABLEKS                       R5 R2 K47 ["launch"]
      128 LOADK                            R6 K48 ["AvatarCompatibilityPreviewer"]
      129 GETTABLEKS                       R7 R0 K28 ["Src"]
      131 CALL                             R5 2 0
      132 GETTABLEKS                       R5 R2 K49 ["isCli"]
      134 CALL                             R5 0 1
      135 JUMPIFNOT                        R5 ; [+1]
      136 RETURN                           R0 0
      137 GETIMPORT                        R5 K8 [require]
      139 GETTABLEKS                       R6 R0 K9 ["Packages"]
      141 GETTABLEKS                       R6 R6 K50 ["PluginLoader"]
      143 CALL                             R5 1 1
      144 GETTABLEKS                       R6 R5 K51 ["PluginLoaderBuilder"]
      146 GETTABLEKS                       R7 R0 K28 ["Src"]
      148 GETTABLEKS                       R7 R7 K52 ["Resources"]
      150 GETTABLEKS                       R7 R7 K53 ["Localization"]
      152 GETTABLEKS                       R7 R7 K54 ["SourceStrings"]
      154 GETTABLEKS                       R8 R0 K28 ["Src"]
      156 GETTABLEKS                       R8 R8 K52 ["Resources"]
      158 GETTABLEKS                       R8 R8 K53 ["Localization"]
      160 GETTABLEKS                       R8 R8 K55 ["LocalizedStrings"]
      162 DUPTABLE                         R9 K65 [{["plugin"], ["pluginName"] = "AvatarCompatibilityPreviewer", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
      163 GETIMPORT                        R10 K12 [plugin]
      165 SETTABLEKS                       R10 R9 K11 ["plugin"]
      167 SETTABLEKS                       R8 R9 K57 ["translationResourceTable"]
      169 SETTABLEKS                       R7 R9 K58 ["fallbackResourceTable"]
      171 DUPCLOSURE                       R10 K66 [PROTO_1]
      172 SETTABLEKS                       R10 R9 K62 ["getToolbarName"]
      174 DUPTABLE                         R10 K71 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
      175 DUPCLOSURE                       R11 K72 [PROTO_2]
      176 SETTABLEKS                       R11 R10 K67 ["getName"]
      178 DUPCLOSURE                       R11 K73 [PROTO_3]
      179 SETTABLEKS                       R11 R10 K68 ["getDescription"]
      181 SETTABLEKS                       R10 R9 K63 ["buttonInfo"]
      183 DUPTABLE                         R10 K78 [{["id"] = "AvatarCompatibilityPreviewer", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      184 GETIMPORT                        R11 K81 [DockWidgetPluginGuiInfo.new]
      186 GETIMPORT                        R12 K85 [Enum.InitialDockState.Left]
      188 LOADB                            R13 0
      189 LOADB                            R14 0
      190 LOADN                            R15 450
      191 LOADN                            R16 600
      192 LOADN                            R17 240
      193 LOADN                            R18 250
      194 CALL                             R11 7 1
      195 SETTABLEKS                       R11 R10 K75 ["dockWidgetPluginGuiInfo"]
      197 DUPCLOSURE                       R11 K86 [PROTO_4]
      198 SETTABLEKS                       R11 R10 K76 ["getDockTitle"]
      200 GETIMPORT                        R11 K89 [Enum.ZIndexBehavior.Sibling]
      202 SETTABLEKS                       R11 R10 K77 ["zIndexBehavior"]
      204 SETTABLEKS                       R10 R9 K64 ["dockWidgetInfo"]
      206 GETTABLEKS                       R10 R6 K90 ["build"]
      208 MOVE                             R11 R9
      209 CALL                             R10 1 1
      210 GETTABLEKS                       R11 R10 K91 ["pluginLoader"]
      212 NAMECALL                         R11 R11 K92 ["waitForUserInteraction"]
      214 CALL                             R11 1 1
      215 JUMPIF                           R11 ; [+1]
      216 RETURN                           R0 0
      217 GETIMPORT                        R12 K8 [require]
      219 GETIMPORT                        R13 K1 [script]
      221 GETTABLEKS                       R13 R13 K2 ["Parent"]
      223 GETTABLEKS                       R13 R13 K93 ["main"]
      225 CALL                             R12 1 1
      226 MOVE                             R13 R12
      227 GETIMPORT                        R14 K12 [plugin]
      229 MOVE                             R15 R10
      230 CALL                             R13 2 0
      231 RETURN                           R0 0
