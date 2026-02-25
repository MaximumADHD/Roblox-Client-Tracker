PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"focused"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["focused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"focused"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["focused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"enabled", "focused"}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+12]
        4 GETTABLEKS                       R4 R1 K4 ["Plugin"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K5 ["SETTINGS"]
        9 GETTABLEKS                       R6 R7 K6 ["WasEnabled"]
       11 NAMECALL                         R4 R4 K7 ["GetSetting"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K3 [False]
       15 JUMP                             ; [+1]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K0 ["enabled"]
       19 GETUPVAL                         R4 0
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADB                            R3 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K1 ["focused"]
       27 SETTABLEKS                       R2 R0 K8 ["state"]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K9 ["toggleEnabled"]
       33 NEWCLOSURE                       R2 P1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R0 K10 ["onClose"]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K11 ["onRestore"]
       41 NEWCLOSURE                       R2 P3
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K12 ["onWidgetEnabledChanged"]
       45 NEWCLOSURE                       R2 P4
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K13 ["onDockWidgetCreated"]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R3 R4 K14 ["Store"]
       52 GETTABLEKS                       R2 R3 K15 ["new"]
       54 GETUPVAL                         R3 3
       55 LOADNIL                          R4
       56 NEWTABLE                         R5 0 1
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R6 R7 K16 ["thunkMiddleware"]
       61 SETLIST                          R5 R6 1 [1]
       63 LOADNIL                          R6
       64 CALL                             R2 4 1
       65 SETTABLEKS                       R2 R0 K17 ["store"]
       67 GETUPVAL                         R4 4
       68 GETTABLEKS                       R3 R4 K18 ["Localization"]
       70 GETTABLEKS                       R2 R3 K15 ["new"]
       72 DUPTABLE                         R3 K22 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       73 GETUPVAL                         R4 5
       74 SETTABLEKS                       R4 R3 K19 ["stringResourceTable"]
       76 GETUPVAL                         R4 6
       77 SETTABLEKS                       R4 R3 K20 ["translationResourceTable"]
       79 LOADK                            R4 K23 ["CompositorDebugger"]
       80 SETTABLEKS                       R4 R3 K21 ["pluginName"]
       82 CALL                             R2 1 1
       83 SETTABLEKS                       R2 R0 K24 ["localization"]
       85 GETUPVAL                         R2 0
       86 CALL                             R2 0 1
       87 JUMPIFNOT                        R2 ; [+8]
       88 NEWCLOSURE                       R2 P5
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K25 ["onWidgetFocused"]
       92 NEWCLOSURE                       R2 P6
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K26 ["onWidgetFocusReleased"]
       96 GETUPVAL                         R4 4
       97 GETTABLEKS                       R3 R4 K27 ["Analytics"]
       99 GETTABLEKS                       R2 R3 K15 ["new"]
      101 GETUPVAL                         R3 7
      102 CALL                             R2 1 1
      103 SETTABLEKS                       R2 R0 K28 ["analytics"]
      105 GETUPVAL                         R3 8
      106 GETTABLEKS                       R2 R3 K15 ["new"]
      108 CALL                             R2 0 1
      109 SETTABLEKS                       R2 R0 K29 ["DEPRECATED_stylizer"]
      111 GETUPVAL                         R2 9
      112 GETTABLEKS                       R3 R1 K4 ["Plugin"]
      114 CALL                             R2 1 1
      115 SETTABLEKS                       R2 R0 K30 ["design"]
      117 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+16]
       16 GETTABLEKS                       R2 R0 K0 ["props"]
       18 GETTABLEKS                       R1 R2 K6 ["Plugin"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K7 ["SETTINGS"]
       23 GETTABLEKS                       R3 R4 K8 ["WasEnabled"]
       25 GETTABLEKS                       R5 R0 K3 ["state"]
       27 GETTABLEKS                       R4 R5 K4 ["enabled"]
       29 NAMECALL                         R1 R1 K9 ["SetSetting"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useThemeName"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["PropertyEntryProvider"]
       12 DUPTABLE                         R4 K5 [{"theme"}]
       13 GETTABLEKS                       R5 R1 K6 ["Name"]
       15 SETTABLEKS                       R5 R4 K4 ["theme"]
       17 GETTABLEKS                       R5 R0 K7 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useThemeName"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["AssetPickerProvider"]
       12 GETTABLEKS                       R3 R4 K4 ["StudioProvider"]
       14 DUPTABLE                         R4 K8 [{"plugin", "theme", "studioService"}]
       15 GETTABLEKS                       R5 R0 K5 ["plugin"]
       17 SETTABLEKS                       R5 R4 K5 ["plugin"]
       19 GETTABLEKS                       R5 R1 K9 ["Name"]
       21 SETTABLEKS                       R5 R4 K6 ["theme"]
       23 GETUPVAL                         R5 3
       24 SETTABLEKS                       R5 R4 K7 ["studioService"]
       26 GETTABLEKS                       R5 R0 K10 ["children"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 7
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K5 ["new"]
       28 GETTABLEKS                       R10 R0 K7 ["store"]
       30 CALL                             R9 1 1
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K8 ["Design"]
       34 GETTABLEKS                       R10 R11 K5 ["new"]
       36 GETTABLEKS                       R11 R0 K9 ["design"]
       38 CALL                             R10 1 1
       39 GETTABLEKS                       R11 R0 K10 ["localization"]
       41 GETTABLEKS                       R12 R0 K11 ["analytics"]
       43 GETTABLEKS                       R13 R0 K12 ["DEPRECATED_stylizer"]
       45 SETLIST                          R6 R7 7 [1]
       47 DUPTABLE                         R7 K14 [{"MainWidget"}]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R8 R9 K15 ["createElement"]
       51 GETUPVAL                         R9 5
       52 NEWTABLE                         R10 16 0
       54 LOADK                            R11 K16 ["CompositorDebugger"]
       55 SETTABLEKS                       R11 R10 K17 ["Id"]
       57 SETTABLEKS                       R4 R10 K18 ["Enabled"]
       59 GETUPVAL                         R12 6
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+2]
       62 LOADK                            R11 K19 ["Animation Graph Editor"]
       63 JUMP                             ; [+7]
       64 GETTABLEKS                       R11 R0 K10 ["localization"]
       66 LOADK                            R13 K2 ["Plugin"]
       67 LOADK                            R14 K20 ["Name"]
       68 NAMECALL                         R11 R11 K21 ["getText"]
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K22 ["Title"]
       73 GETIMPORT                        R11 K26 [Enum.ZIndexBehavior.Sibling]
       75 SETTABLEKS                       R11 R10 K24 ["ZIndexBehavior"]
       77 GETIMPORT                        R11 K29 [Enum.InitialDockState.Bottom]
       79 SETTABLEKS                       R11 R10 K27 ["InitialDockState"]
       81 GETIMPORT                        R11 K31 [Vector2.new]
       83 LOADN                            R12 128
       84 LOADN                            R13 224
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K32 ["Size"]
       88 GETIMPORT                        R11 K31 [Vector2.new]
       90 LOADN                            R12 250
       91 LOADN                            R13 200
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K33 ["MinSize"]
       95 GETTABLEKS                       R11 R0 K34 ["onClose"]
       97 SETTABLEKS                       R11 R10 K35 ["OnClose"]
       99 GETTABLEKS                       R12 R1 K36 ["PluginLoaderContext"]
      101 GETTABLEKS                       R11 R12 K37 ["mainDockWidget"]
      103 SETTABLEKS                       R11 R10 K38 ["Widget"]
      105 GETTABLEKS                       R11 R0 K39 ["onDockWidgetCreated"]
      107 SETTABLEKS                       R11 R10 K40 ["OnWidgetCreated"]
      109 GETUPVAL                         R12 6
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+3]
      112 GETTABLEKS                       R11 R0 K41 ["onWidgetFocused"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R11
      116 SETTABLEKS                       R11 R10 K42 ["OnWidgetFocused"]
      118 GETUPVAL                         R12 6
      119 CALL                             R12 0 1
      120 JUMPIFNOT                        R12 ; [+3]
      121 GETTABLEKS                       R11 R0 K43 ["onWidgetFocusReleased"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R11
      125 SETTABLEKS                       R11 R10 K44 ["OnWidgetFocusReleased"]
      127 GETUPVAL                         R13 4
      128 GETTABLEKS                       R12 R13 K45 ["Change"]
      130 GETTABLEKS                       R11 R12 K18 ["Enabled"]
      132 GETTABLEKS                       R12 R0 K46 ["onWidgetEnabledChanged"]
      134 SETTABLE                         R12 R10 R11
      135 DUPTABLE                         R11 K50 [{"DEPRECATED_MainComponent", "MainComponent", "StyleLink"}]
      136 GETUPVAL                         R13 6
      137 CALL                             R13 0 1
      138 JUMPIF                           R13 ; [+8]
      139 MOVE                             R12 R4
      140 JUMPIFNOT                        R12 ; [+7]
      141 GETUPVAL                         R13 4
      142 GETTABLEKS                       R12 R13 K15 ["createElement"]
      144 GETUPVAL                         R13 7
      145 CALL                             R12 1 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R12
      148 SETTABLEKS                       R12 R11 K47 ["DEPRECATED_MainComponent"]
      150 GETUPVAL                         R13 6
      151 CALL                             R13 0 1
      152 JUMPIFNOT                        R13 ; [+184]
      153 GETUPVAL                         R13 4
      154 GETTABLEKS                       R12 R13 K15 ["createElement"]
      156 GETUPVAL                         R14 8
      157 GETTABLEKS                       R13 R14 K51 ["ContextStack"]
      159 DUPTABLE                         R14 K53 [{"providers"}]
      160 NEWTABLE                         R15 0 17
      162 GETUPVAL                         R17 4
      163 GETTABLEKS                       R16 R17 K15 ["createElement"]
      165 GETUPVAL                         R19 9
      166 GETTABLEKS                       R18 R19 K54 ["Components"]
      168 GETTABLEKS                       R17 R18 K55 ["FoundationProviderAdapter"]
      170 DUPTABLE                         R18 K59 [{"device", "derives", "overlayGui"}]
      171 LOADK                            R19 K60 ["Desktop"]
      172 SETTABLEKS                       R19 R18 K56 ["device"]
      174 NEWTABLE                         R19 0 1
      176 GETTABLEKS                       R20 R0 K9 ["design"]
      178 SETLIST                          R19 R20 1 [1]
      180 SETTABLEKS                       R19 R18 K57 ["derives"]
      182 GETTABLEKS                       R20 R1 K36 ["PluginLoaderContext"]
      184 GETTABLEKS                       R19 R20 K37 ["mainDockWidget"]
      186 SETTABLEKS                       R19 R18 K58 ["overlayGui"]
      188 CALL                             R16 2 1
      189 GETUPVAL                         R18 4
      190 GETTABLEKS                       R17 R18 K15 ["createElement"]
      192 GETUPVAL                         R18 10
      193 CALL                             R17 1 1
      194 GETUPVAL                         R19 4
      195 GETTABLEKS                       R18 R19 K15 ["createElement"]
      197 GETUPVAL                         R19 11
      198 DUPTABLE                         R20 K62 [{"plugin"}]
      199 SETTABLEKS                       R3 R20 K61 ["plugin"]
      201 CALL                             R18 2 1
      202 GETUPVAL                         R20 4
      203 GETTABLEKS                       R19 R20 K15 ["createElement"]
      205 GETUPVAL                         R22 12
      206 GETTABLEKS                       R21 R22 K63 ["NetworkingContext"]
      208 GETTABLEKS                       R20 R21 K64 ["EditableDataModelProvider"]
      210 CALL                             R19 1 1
      211 GETUPVAL                         R21 4
      212 GETTABLEKS                       R20 R21 K15 ["createElement"]
      214 GETUPVAL                         R23 12
      215 GETTABLEKS                       R22 R23 K65 ["GraphDebugDataContext"]
      217 GETTABLEKS                       R21 R22 K64 ["EditableDataModelProvider"]
      219 CALL                             R20 1 1
      220 GETUPVAL                         R22 4
      221 GETTABLEKS                       R21 R22 K15 ["createElement"]
      223 GETUPVAL                         R24 12
      224 GETTABLEKS                       R23 R24 K66 ["PopupContext"]
      226 GETTABLEKS                       R22 R23 K67 ["StudioProvider"]
      228 CALL                             R21 1 1
      229 GETUPVAL                         R23 4
      230 GETTABLEKS                       R22 R23 K15 ["createElement"]
      232 GETUPVAL                         R25 12
      233 GETTABLEKS                       R24 R25 K68 ["PlayStateContext"]
      235 GETTABLEKS                       R23 R24 K69 ["UIDataModelProvider"]
      237 CALL                             R22 1 1
      238 GETUPVAL                         R24 4
      239 GETTABLEKS                       R23 R24 K15 ["createElement"]
      241 GETUPVAL                         R25 13
      242 GETTABLEKS                       R24 R25 K64 ["EditableDataModelProvider"]
      244 CALL                             R23 1 1
      245 GETUPVAL                         R25 4
      246 GETTABLEKS                       R24 R25 K15 ["createElement"]
      248 GETUPVAL                         R27 12
      249 GETTABLEKS                       R26 R27 K70 ["AnimationParameterContext"]
      251 GETTABLEKS                       R25 R26 K64 ["EditableDataModelProvider"]
      253 CALL                             R24 1 1
      254 GETUPVAL                         R26 4
      255 GETTABLEKS                       R25 R26 K15 ["createElement"]
      257 GETUPVAL                         R28 12
      258 GETTABLEKS                       R27 R28 K71 ["ParameterOverrideContext"]
      260 GETTABLEKS                       R26 R27 K64 ["EditableDataModelProvider"]
      262 CALL                             R25 1 1
      263 GETUPVAL                         R27 4
      264 GETTABLEKS                       R26 R27 K15 ["createElement"]
      266 GETUPVAL                         R29 12
      267 GETTABLEKS                       R28 R29 K72 ["CreateGraphContext"]
      269 GETTABLEKS                       R27 R28 K64 ["EditableDataModelProvider"]
      271 CALL                             R26 1 1
      272 GETUPVAL                         R28 4
      273 GETTABLEKS                       R27 R28 K15 ["createElement"]
      275 GETUPVAL                         R29 14
      276 GETTABLEKS                       R28 R29 K73 ["Provider"]
      278 CALL                             R27 1 1
      279 GETUPVAL                         R29 4
      280 GETTABLEKS                       R28 R29 K15 ["createElement"]
      282 GETUPVAL                         R30 15
      283 GETTABLEKS                       R29 R30 K73 ["Provider"]
      285 CALL                             R28 1 1
      286 GETUPVAL                         R30 4
      287 GETTABLEKS                       R29 R30 K15 ["createElement"]
      289 GETUPVAL                         R31 16
      290 GETTABLEKS                       R30 R31 K73 ["Provider"]
      292 CALL                             R29 1 1
      293 GETUPVAL                         R31 4
      294 GETTABLEKS                       R30 R31 K15 ["createElement"]
      296 GETUPVAL                         R32 17
      297 GETTABLEKS                       R31 R32 K73 ["Provider"]
      299 DUPTABLE                         R32 K75 [{"focused"}]
      300 GETTABLEKS                       R33 R2 K74 ["focused"]
      302 SETTABLEKS                       R33 R32 K74 ["focused"]
      304 CALL                             R30 2 1
      305 GETUPVAL                         R32 4
      306 GETTABLEKS                       R31 R32 K15 ["createElement"]
      308 GETUPVAL                         R33 18
      309 GETTABLEKS                       R32 R33 K73 ["Provider"]
      311 CALL                             R31 1 1
      312 SETLIST                          R15 R16 16 [1]
      314 GETUPVAL                         R17 4
      315 GETTABLEKS                       R16 R17 K15 ["createElement"]
      317 GETUPVAL                         R18 19
      318 GETTABLEKS                       R17 R18 K73 ["Provider"]
      320 CALL                             R16 1 -1
      321 SETLIST                          R15 R16 -1 [17]
      323 SETTABLEKS                       R15 R14 K52 ["providers"]
      325 DUPTABLE                         R15 K76 [{"MainComponent"}]
      326 MOVE                             R16 R4
      327 JUMPIFNOT                        R16 ; [+5]
      328 GETUPVAL                         R17 4
      329 GETTABLEKS                       R16 R17 K15 ["createElement"]
      331 GETUPVAL                         R17 7
      332 CALL                             R16 1 1
      333 SETTABLEKS                       R16 R15 K48 ["MainComponent"]
      335 CALL                             R12 3 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R12
      338 SETTABLEKS                       R12 R11 K48 ["MainComponent"]
      340 GETUPVAL                         R13 6
      341 CALL                             R13 0 1
      342 JUMPIF                           R13 ; [+11]
      343 GETUPVAL                         R13 4
      344 GETTABLEKS                       R12 R13 K15 ["createElement"]
      346 LOADK                            R13 K49 ["StyleLink"]
      347 DUPTABLE                         R14 K78 [{"StyleSheet"}]
      348 GETTABLEKS                       R15 R0 K9 ["design"]
      350 SETTABLEKS                       R15 R14 K77 ["StyleSheet"]
      352 CALL                             R12 2 1
      353 JUMP                             ; [+1]
      354 LOADNIL                          R12
      355 SETTABLEKS                       R12 R11 K49 ["StyleLink"]
      357 CALL                             R8 3 1
      358 SETTABLEKS                       R8 R7 K13 ["MainWidget"]
      360 CALL                             R5 2 -1
      361 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CompositorDebugger"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Properties"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K10 ["Packages"]
       52 GETTABLEKS                       R8 R9 K16 ["Rodux"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R1 K10 ["Packages"]
       59 GETTABLEKS                       R9 R10 K17 ["StudioFoundation"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R10 R3 K18 ["UI"]
       64 GETTABLEKS                       R9 R10 K19 ["DockWidget"]
       66 GETTABLEKS                       R10 R3 K20 ["ContextServices"]
       68 GETTABLEKS                       R11 R10 K21 ["Plugin"]
       70 GETTABLEKS                       R12 R10 K22 ["Mouse"]
       72 GETTABLEKS                       R13 R10 K23 ["Store"]
       74 GETIMPORT                        R14 K9 [require]
       76 GETTABLEKS                       R17 R1 K24 ["Src"]
       78 GETTABLEKS                       R16 R17 K25 ["Reducers"]
       80 GETTABLEKS                       R15 R16 K26 ["MainReducer"]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R17 R3 K27 ["Style"]
       85 GETTABLEKS                       R16 R17 K28 ["Themes"]
       87 GETTABLEKS                       R15 R16 K29 ["StudioTheme"]
       89 GETTABLEKS                       R17 R3 K30 ["Styling"]
       91 GETTABLEKS                       R16 R17 K31 ["registerPluginStyles"]
       93 GETTABLEKS                       R18 R1 K24 ["Src"]
       95 GETTABLEKS                       R17 R18 K32 ["Resources"]
       97 GETIMPORT                        R18 K9 [require]
       99 GETTABLEKS                       R19 R17 K33 ["AnalyticsHandlers"]
      101 CALL                             R18 1 1
      102 GETTABLEKS                       R20 R17 K34 ["Localization"]
      104 GETTABLEKS                       R19 R20 K35 ["SourceStrings"]
      106 GETTABLEKS                       R21 R17 K34 ["Localization"]
      108 GETTABLEKS                       R20 R21 K36 ["LocalizedStrings"]
      110 GETTABLEKS                       R22 R1 K24 ["Src"]
      112 GETTABLEKS                       R21 R22 K37 ["Components"]
      114 GETIMPORT                        R22 K9 [require]
      116 GETTABLEKS                       R23 R21 K38 ["MainComponent"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K9 [require]
      121 GETTABLEKS                       R26 R1 K24 ["Src"]
      123 GETTABLEKS                       R25 R26 K39 ["Contexts"]
      125 GETTABLEKS                       R24 R25 K40 ["DebuggerViewModeContext"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K9 [require]
      130 GETTABLEKS                       R27 R1 K24 ["Src"]
      132 GETTABLEKS                       R26 R27 K39 ["Contexts"]
      134 GETTABLEKS                       R25 R26 K41 ["ShortcutContext"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K9 [require]
      139 GETTABLEKS                       R28 R1 K24 ["Src"]
      141 GETTABLEKS                       R27 R28 K42 ["Flags"]
      143 GETTABLEKS                       R26 R27 K43 ["getFFlagCompositorNodeView"]
      145 CALL                             R25 1 1
      146 GETTABLEKS                       R26 R2 K44 ["Constants"]
      148 GETTABLEKS                       R27 R2 K45 ["InsertNodeContext"]
      150 GETTABLEKS                       R28 R2 K46 ["MenuItemsContext"]
      152 GETTABLEKS                       R29 R2 K47 ["NativeGraphContext"]
      154 GETTABLEKS                       R30 R2 K48 ["NodeDefinitionsContext"]
      156 GETTABLEKS                       R31 R2 K49 ["ViewportRectContext"]
      158 GETTABLEKS                       R32 R5 K50 ["PureComponent"]
      160 LOADK                            R34 K51 ["MainPlugin"]
      161 NAMECALL                         R32 R32 K52 ["extend"]
      163 CALL                             R32 2 1
      164 DUPCLOSURE                       R33 K53 [PROTO_8]
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R16
      175 SETTABLEKS                       R33 R32 K54 ["init"]
      177 DUPCLOSURE                       R33 K55 [PROTO_9]
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R26
      180 SETTABLEKS                       R33 R32 K56 ["didUpdate"]
      182 DUPCLOSURE                       R33 K57 [PROTO_10]
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R4
      186 DUPCLOSURE                       R34 K58 [PROTO_11]
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R0
      191 DUPCLOSURE                       R35 K59 [PROTO_12]
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R33
      203 CAPTURE                          VAL R34
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R27
      212 SETTABLEKS                       R35 R32 K60 ["render"]
      214 RETURN                           R32 1
