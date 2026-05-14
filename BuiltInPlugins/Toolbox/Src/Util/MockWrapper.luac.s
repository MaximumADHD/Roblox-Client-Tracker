PROTO_0:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createThunkMiddleware"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["store"]
        6 JUMPIF                           R2 ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Store"]
       10 GETTABLEKS                       R2 R2 K3 ["new"]
       12 GETUPVAL                         R3 2
       13 LOADNIL                          R4
       14 MOVE                             R5 R1
       15 CALL                             R2 3 1
       16 GETTABLEKS                       R3 R0 K4 ["storeSetup"]
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETTABLEKS                       R3 R0 K4 ["storeSetup"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R3 R0 K5 ["plugin"]
       25 JUMPIF                           R3 ; [+4]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K3 ["new"]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R5 R0 K7 ["pluginGui"]
       32 ORK                              R4 R5 K6 []
       33 GETTABLEKS                       R5 R0 K8 ["settings"]
       35 JUMPIF                           R5 ; [+5]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K3 ["new"]
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R0 K9 ["theme"]
       43 JUMPIF                           R6 ; [+4]
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K10 ["createDummyThemeManager"]
       47 CALL                             R6 0 1
       48 GETTABLEKS                       R7 R0 K11 ["networkInterface"]
       50 JUMPIF                           R7 ; [+4]
       51 GETUPVAL                         R7 6
       52 GETTABLEKS                       R7 R7 K3 ["new"]
       54 CALL                             R7 0 1
       55 GETTABLEKS                       R8 R0 K12 ["ixpContext"]
       57 JUMPIF                           R8 ; [+4]
       58 GETUPVAL                         R8 7
       59 GETTABLEKS                       R8 R8 K13 ["createMock"]
       61 CALL                             R8 0 1
       62 GETUPVAL                         R9 8
       63 GETTABLEKS                       R9 R9 K3 ["new"]
       65 DUPTABLE                         R10 K15 [{"Icon"}]
       66 LOADK                            R11 K16 ["rbxasset://SystemCursors/Arrow"]
       67 SETTABLEKS                       R11 R10 K14 ["Icon"]
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 9
       71 GETTABLEKS                       R10 R10 K17 ["Focus"]
       73 GETTABLEKS                       R10 R10 K3 ["new"]
       75 GETTABLEKS                       R11 R0 K18 ["focus"]
       77 JUMPIF                           R11 ; [+4]
       78 GETIMPORT                        R11 K20 [Instance.new]
       80 LOADK                            R12 K21 ["ScreenGui"]
       81 CALL                             R11 1 1
       82 CALL                             R10 1 1
       83 GETUPVAL                         R11 9
       84 GETTABLEKS                       R11 R11 K22 ["Plugin"]
       86 GETTABLEKS                       R11 R11 K3 ["new"]
       88 MOVE                             R12 R3
       89 CALL                             R11 1 1
       90 GETUPVAL                         R12 10
       91 GETTABLEKS                       R12 R12 K3 ["new"]
       93 MOVE                             R13 R5
       94 CALL                             R12 1 1
       95 GETUPVAL                         R13 11
       96 GETUPVAL                         R14 12
       97 CALL                             R14 0 -1
       98 CALL                             R13 -1 1
       99 GETUPVAL                         R14 9
      100 GETTABLEKS                       R14 R14 K2 ["Store"]
      102 GETTABLEKS                       R14 R14 K3 ["new"]
      104 MOVE                             R15 R2
      105 CALL                             R14 1 1
      106 GETTABLEKS                       R16 R0 K23 ["WebViewManagerContext"]
      108 JUMPIFNOT                        R16 ; [+3]
      109 GETTABLEKS                       R15 R0 K23 ["WebViewManagerContext"]
      111 JUMP                             ; [+17]
      112 GETUPVAL                         R15 13
      113 GETTABLEKS                       R15 R15 K3 ["new"]
      115 DUPTABLE                         R16 K25 [{"namespace", "plugin"}]
      116 LOADK                            R17 K26 ["toolbox"]
      117 SETTABLEKS                       R17 R16 K24 ["namespace"]
      119 GETTABLEKS                       R17 R0 K5 ["plugin"]
      121 JUMPIF                           R17 ; [+4]
      122 GETUPVAL                         R17 3
      123 GETTABLEKS                       R17 R17 K3 ["new"]
      125 CALL                             R17 0 1
      126 SETTABLEKS                       R17 R16 K5 ["plugin"]
      128 CALL                             R15 1 1
      129 GETUPVAL                         R16 9
      130 GETTABLEKS                       R16 R16 K27 ["API"]
      132 GETTABLEKS                       R16 R16 K3 ["new"]
      134 DUPTABLE                         R17 K29 [{"networking"}]
      135 GETUPVAL                         R18 14
      136 GETTABLEKS                       R18 R18 K30 ["mock"]
      138 CALL                             R18 0 1
      139 SETTABLEKS                       R18 R17 K28 ["networking"]
      141 CALL                             R16 1 1
      142 GETUPVAL                         R17 9
      143 GETTABLEKS                       R17 R17 K31 ["Analytics"]
      145 GETTABLEKS                       R17 R17 K30 ["mock"]
      147 CALL                             R17 0 1
      148 GETUPVAL                         R18 15
      149 GETTABLEKS                       R18 R18 K3 ["new"]
      151 MOVE                             R19 R7
      152 CALL                             R18 1 1
      153 GETTABLEKS                       R20 R0 K32 ["publishServiceContext"]
      155 ORK                              R19 R20 K6 []
      156 GETTABLEKS                       R21 R0 K33 ["pluginGuiServiceContext"]
      158 ORK                              R20 R21 K6 []
      159 GETTABLEKS                       R22 R0 K34 ["contentProviderContext"]
      161 ORK                              R21 R22 K6 []
      162 GETUPVAL                         R22 16
      163 GETTABLEKS                       R22 R22 K3 ["new"]
      165 GETTABLEKS                       R23 R0 K35 ["assetAnalytics"]
      167 JUMPIF                           R23 ; [+4]
      168 GETUPVAL                         R23 17
      169 GETTABLEKS                       R23 R23 K30 ["mock"]
      171 CALL                             R23 0 1
      172 CALL                             R22 1 1
      173 GETUPVAL                         R23 18
      174 GETTABLEKS                       R23 R23 K36 ["Resources"]
      176 GETTABLEKS                       R23 R23 K37 ["Localization"]
      178 GETTABLEKS                       R23 R23 K38 ["SourceStrings"]
      180 GETUPVAL                         R24 18
      181 GETTABLEKS                       R24 R24 K36 ["Resources"]
      183 GETTABLEKS                       R24 R24 K37 ["Localization"]
      185 GETTABLEKS                       R24 R24 K39 ["LocalizedStrings"]
      187 GETUPVAL                         R25 9
      188 GETTABLEKS                       R25 R25 K37 ["Localization"]
      190 GETTABLEKS                       R25 R25 K3 ["new"]
      192 DUPTABLE                         R26 K47 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries", "overrideGetLocale", "overrideLocaleId", "overrideLocaleChangedSignal"}]
      193 SETTABLEKS                       R23 R26 K40 ["stringResourceTable"]
      195 SETTABLEKS                       R24 R26 K41 ["translationResourceTable"]
      197 LOADK                            R27 K48 ["Toolbox"]
      198 SETTABLEKS                       R27 R26 K42 ["pluginName"]
      200 NEWTABLE                         R27 1 0
      202 GETUPVAL                         R28 19
      203 GETTABLEKS                       R28 R28 K36 ["Resources"]
      205 GETTABLEKS                       R28 R28 K49 ["LOCALIZATION_PROJECT_NAME"]
      207 DUPTABLE                         R29 K50 [{"stringResourceTable", "translationResourceTable"}]
      208 GETUPVAL                         R30 19
      209 GETTABLEKS                       R30 R30 K36 ["Resources"]
      211 GETTABLEKS                       R30 R30 K38 ["SourceStrings"]
      213 SETTABLEKS                       R30 R29 K40 ["stringResourceTable"]
      215 GETUPVAL                         R30 19
      216 GETTABLEKS                       R30 R30 K36 ["Resources"]
      218 GETTABLEKS                       R30 R30 K39 ["LocalizedStrings"]
      220 SETTABLEKS                       R30 R29 K41 ["translationResourceTable"]
      222 SETTABLE                         R29 R27 R28
      223 SETTABLEKS                       R27 R26 K43 ["libraries"]
      225 DUPCLOSURE                       R27 K51 [PROTO_0]
      226 SETTABLEKS                       R27 R26 K44 ["overrideGetLocale"]
      228 LOADK                            R27 K52 ["en-us"]
      229 SETTABLEKS                       R27 R26 K45 ["overrideLocaleId"]
      231 GETUPVAL                         R27 20
      232 GETTABLEKS                       R27 R27 K3 ["new"]
      234 CALL                             R27 0 1
      235 SETTABLEKS                       R27 R26 K46 ["overrideLocaleChangedSignal"]
      237 CALL                             R25 1 1
      238 GETUPVAL                         R26 21
      239 GETTABLEKS                       R26 R26 K3 ["new"]
      241 CALL                             R26 0 1
      242 NEWTABLE                         R27 0 17
      244 MOVE                             R28 R14
      245 MOVE                             R29 R10
      246 MOVE                             R30 R9
      247 MOVE                             R31 R11
      248 MOVE                             R32 R12
      249 MOVE                             R33 R13
      250 MOVE                             R34 R16
      251 MOVE                             R35 R22
      252 MOVE                             R36 R17
      253 MOVE                             R37 R25
      254 MOVE                             R38 R8
      255 MOVE                             R39 R26
      256 MOVE                             R40 R18
      257 MOVE                             R41 R15
      258 MOVE                             R42 R19
      259 MOVE                             R43 R20
      260 SETLIST                          R27 R28 16 [1]
      262 MOVE                             R28 R21
      263 SETLIST                          R27 R28 1 [17]
      265 GETUPVAL                         R29 22
      266 GETTABLEKS                       R29 R29 K53 ["Children"]
      268 GETTABLE                         R28 R0 R29
      269 GETUPVAL                         R29 23
      270 CALL                             R29 0 1
      271 JUMPIFNOT                        R29 ; [+13]
      272 DUPTABLE                         R29 K55 [{"FoundationProvider"}]
      273 GETUPVAL                         R30 22
      274 GETTABLEKS                       R30 R30 K56 ["createElement"]
      276 GETUPVAL                         R31 24
      277 GETTABLEKS                       R31 R31 K54 ["FoundationProvider"]
      279 LOADNIL                          R32
      280 MOVE                             R33 R28
      281 CALL                             R30 3 1
      282 SETTABLEKS                       R30 R29 K54 ["FoundationProvider"]
      284 MOVE                             R28 R29
      285 GETUPVAL                         R29 22
      286 GETTABLEKS                       R29 R29 K56 ["createElement"]
      288 GETUPVAL                         R30 25
      289 DUPTABLE                         R31 K57 [{"store", "plugin", "pluginGui", "settings", "theme", "networkInterface"}]
      290 SETTABLEKS                       R2 R31 K1 ["store"]
      292 SETTABLEKS                       R3 R31 K5 ["plugin"]
      294 SETTABLEKS                       R4 R31 K7 ["pluginGui"]
      296 SETTABLEKS                       R5 R31 K8 ["settings"]
      298 SETTABLEKS                       R6 R31 K9 ["theme"]
      300 SETTABLEKS                       R7 R31 K11 ["networkInterface"]
      302 DUPTABLE                         R32 K59 [{"MockContextProvider"}]
      303 GETUPVAL                         R33 26
      304 MOVE                             R34 R27
      305 MOVE                             R35 R28
      306 CALL                             R33 2 1
      307 SETTABLEKS                       R33 R32 K58 ["MockContextProvider"]
      309 CALL                             R29 3 -1
      310 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["Framework"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K9 ["TestHelpers"]
       28 GETTABLEKS                       R5 R4 K10 ["provideMockContext"]
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R7 K12 ["Util"]
       36 GETTABLEKS                       R7 R7 K13 ["Settings"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K11 ["Src"]
       43 GETTABLEKS                       R8 R8 K12 ["Util"]
       45 GETTABLEKS                       R8 R8 K14 ["ToolboxTheme"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R9 K15 ["Reducers"]
       54 GETTABLEKS                       R9 R9 K16 ["ToolboxReducer"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Networking"]
       63 GETTABLEKS                       R10 R10 K18 ["NetworkInterfaceMock"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K11 ["Src"]
       70 GETTABLEKS                       R11 R11 K12 ["Util"]
       72 GETTABLEKS                       R11 R11 K19 ["Analytics"]
       74 GETTABLEKS                       R11 R11 K20 ["AssetAnalyticsContextItem"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Src"]
       81 GETTABLEKS                       R12 R12 K12 ["Util"]
       83 GETTABLEKS                       R12 R12 K19 ["Analytics"]
       85 GETTABLEKS                       R12 R12 K21 ["AssetAnalytics"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K11 ["Src"]
       92 GETTABLEKS                       R13 R13 K22 ["Components"]
       94 GETTABLEKS                       R13 R13 K23 ["ExternalServicesWrapper"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K11 ["Src"]
      101 GETTABLEKS                       R14 R14 K12 ["Util"]
      103 GETTABLEKS                       R14 R14 K24 ["makeTheme"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R1 K8 ["Framework"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R14 K25 ["Http"]
      113 GETTABLEKS                       R15 R15 K17 ["Networking"]
      115 GETTABLEKS                       R16 R14 K26 ["ContextServices"]
      117 GETTABLEKS                       R17 R16 K27 ["Mouse"]
      119 GETTABLEKS                       R18 R14 K12 ["Util"]
      121 GETTABLEKS                       R18 R18 K28 ["Signal"]
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R20 R0 K11 ["Src"]
      127 GETTABLEKS                       R20 R20 K26 ["ContextServices"]
      129 GETTABLEKS                       R20 R20 K13 ["Settings"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R21 R0 K11 ["Src"]
      136 GETTABLEKS                       R21 R21 K26 ["ContextServices"]
      138 GETTABLEKS                       R21 R21 K29 ["IXPContext"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R22 R0 K11 ["Src"]
      145 GETTABLEKS                       R22 R22 K26 ["ContextServices"]
      147 GETTABLEKS                       R22 R22 K30 ["NavigationContext"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R23 R0 K11 ["Src"]
      154 GETTABLEKS                       R23 R23 K31 ["Themes"]
      156 GETTABLEKS                       R23 R23 K32 ["getAssetConfigTheme"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K11 ["Src"]
      163 GETTABLEKS                       R24 R24 K26 ["ContextServices"]
      165 GETTABLEKS                       R24 R24 K33 ["NetworkContext"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETTABLEKS                       R25 R1 K34 ["WebView"]
      172 CALL                             R24 1 1
      173 GETTABLEKS                       R25 R24 K35 ["WebViewManagerContext"]
      175 GETIMPORT                        R26 K5 [require]
      177 GETTABLEKS                       R27 R0 K36 ["TestUtils"]
      179 GETTABLEKS                       R27 R27 K37 ["CoreTestUtils"]
      181 CALL                             R26 1 1
      182 GETTABLEKS                       R27 R14 K9 ["TestHelpers"]
      184 GETTABLEKS                       R27 R27 K38 ["Instances"]
      186 GETTABLEKS                       R27 R27 K39 ["MockPlugin"]
      188 GETIMPORT                        R28 K5 [require]
      190 GETTABLEKS                       R29 R1 K40 ["Foundation"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K5 [require]
      195 GETTABLEKS                       R30 R0 K11 ["Src"]
      197 GETTABLEKS                       R30 R30 K41 ["Flags"]
      199 GETTABLEKS                       R30 R30 K42 ["getFFlagToolboxAssetConfigFoundationMigration"]
      201 CALL                             R29 1 1
      202 DUPCLOSURE                       R30 K43 [PROTO_1]
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R29
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R5
      230 RETURN                           R30 1
