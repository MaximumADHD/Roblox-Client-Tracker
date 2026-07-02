PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsCollisionMode.Legacy]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PreviewToggled"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["settings"]
        8 GETTABLEKS                       R0 R0 K3 ["navigationBarSettings"]
       10 GETTABLEKS                       R0 R0 K4 ["setPreviewToggled"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["settings"]
       15 GETTABLEKS                       R2 R2 K3 ["navigationBarSettings"]
       17 GETTABLEKS                       R2 R2 K5 ["previewToggled"]
       19 NOT                              R1 R2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarTypeMenuOpened"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["enable"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 5
       28 LOADB                            R6 0
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R4 K2 ["settings"]
       32 GETTABLEKS                       R6 R6 K6 ["navigationBarSettings"]
       34 GETTABLEKS                       R6 R6 K7 ["setPreviewToggled"]
       36 GETTABLEKS                       R7 R4 K2 ["settings"]
       38 GETTABLEKS                       R7 R7 K6 ["navigationBarSettings"]
       40 GETTABLEKS                       R7 R7 K8 ["avatarType"]
       42 GETTABLEKS                       R7 R7 K9 ["value"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R7
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 0
       55 GETTABLEKS                       R8 R4 K2 ["settings"]
       57 GETTABLEKS                       R8 R8 K11 ["movementSettings"]
       59 GETTABLEKS                       R8 R8 K12 ["collisionSetting"]
       61 GETTABLEKS                       R8 R8 K9 ["value"]
       63 GETUPVAL                         R9 6
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       69 NEWCLOSURE                       R11 P1
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R6
       72 NEWTABLE                         R12 0 1
       74 MOVE                             R13 R8
       75 SETLIST                          R12 R13 1 [1]
       77 CALL                             R10 2 0
       78 GETUPVAL                         R10 7
       79 LOADK                            R11 K13 ["ScrollingFrame"]
       80 DUPTABLE                         R12 K22 [{["Size"], ["BackgroundTransparency"] = 1, ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["AutomaticCanvasSize"], ["LayoutOrder"]}]
       81 GETIMPORT                        R13 K25 [UDim2.new]
       83 LOADN                            R14 1
       84 LOADN                            R15 0
       85 LOADN                            R16 0
       86 GETUPVAL                         R17 8
       87 GETTABLEKS                       R17 R17 K26 ["MENU_BAR_HEIGHT"]
       89 CALL                             R13 4 1
       90 SETTABLEKS                       R13 R12 K14 ["Size"]
       92 GETIMPORT                        R13 K29 [Enum.ScrollingDirection.X]
       94 SETTABLEKS                       R13 R12 K17 ["ScrollingDirection"]
       96 GETIMPORT                        R13 K31 [Enum.AutomaticSize.X]
       98 SETTABLEKS                       R13 R12 K20 ["AutomaticCanvasSize"]
      100 GETTABLEKS                       R13 R0 K32 ["layoutOrder"]
      102 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
      104 DUPTABLE                         R13 K34 [{"NavigationBar"}]
      105 GETUPVAL                         R14 7
      106 GETUPVAL                         R15 9
      107 NEWTABLE                         R16 2 0
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R17 R17 K35 ["Tag"]
      112 LOADK                            R18 K36 ["Component-NavigationBar"]
      113 SETTABLE                         R18 R16 R17
      114 LOADK                            R17 K37 ["BorderBox"]
      115 SETTABLEKS                       R17 R16 K38 ["Style"]
      117 DUPTABLE                         R17 K41 [{"PresetSelector", "RightSideComponentWrapper"}]
      118 GETUPVAL                         R18 7
      119 GETUPVAL                         R19 10
      120 DUPTABLE                         R20 K42 [{"Size", "AutomaticSize"}]
      121 GETIMPORT                        R21 K44 [UDim2.fromOffset]
      123 LOADN                            R22 0
      124 GETUPVAL                         R23 8
      125 GETTABLEKS                       R23 R23 K45 ["STANDARD_HEIGHT"]
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K14 ["Size"]
      130 GETIMPORT                        R21 K47 [Enum.AutomaticSize.XY]
      132 SETTABLEKS                       R21 R20 K30 ["AutomaticSize"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K39 ["PresetSelector"]
      137 GETUPVAL                         R18 7
      138 GETUPVAL                         R19 9
      139 NEWTABLE                         R20 8 0
      141 GETUPVAL                         R21 3
      142 GETTABLEKS                       R21 R21 K35 ["Tag"]
      144 LOADK                            R22 K48 ["X-Row X-Middle"]
      145 SETTABLE                         R22 R20 R21
      146 GETIMPORT                        R21 K50 [UDim2.fromScale]
      148 LOADN                            R22 1
      149 LOADN                            R23 0
      150 CALL                             R21 2 1
      151 SETTABLEKS                       R21 R20 K51 ["Position"]
      153 GETIMPORT                        R21 K53 [Vector2.new]
      155 LOADN                            R22 1
      156 LOADN                            R23 0
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K54 ["AnchorPoint"]
      160 GETIMPORT                        R21 K44 [UDim2.fromOffset]
      162 LOADN                            R22 0
      163 GETUPVAL                         R23 8
      164 GETTABLEKS                       R23 R23 K45 ["STANDARD_HEIGHT"]
      166 CALL                             R21 2 1
      167 SETTABLEKS                       R21 R20 K14 ["Size"]
      169 GETIMPORT                        R21 K31 [Enum.AutomaticSize.X]
      171 SETTABLEKS                       R21 R20 K30 ["AutomaticSize"]
      173 DUPTABLE                         R21 K58 [{"UIPadding", "PreviewToggleTitledComponent", "AvatarTypeDropdownButton"}]
      174 GETUPVAL                         R22 7
      175 LOADK                            R23 K55 ["UIPadding"]
      176 DUPTABLE                         R24 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      177 GETIMPORT                        R25 K65 [UDim.new]
      179 LOADN                            R26 0
      180 LOADN                            R27 4
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K59 ["PaddingLeft"]
      184 GETIMPORT                        R25 K65 [UDim.new]
      186 LOADN                            R26 0
      187 LOADN                            R27 8
      188 CALL                             R25 2 1
      189 SETTABLEKS                       R25 R24 K60 ["PaddingRight"]
      191 GETIMPORT                        R25 K65 [UDim.new]
      193 LOADN                            R26 0
      194 LOADN                            R27 4
      195 CALL                             R25 2 1
      196 SETTABLEKS                       R25 R24 K61 ["PaddingTop"]
      198 GETIMPORT                        R25 K65 [UDim.new]
      200 LOADN                            R26 0
      201 LOADN                            R27 4
      202 CALL                             R25 2 1
      203 SETTABLEKS                       R25 R24 K62 ["PaddingBottom"]
      205 CALL                             R22 2 1
      206 SETTABLEKS                       R22 R21 K55 ["UIPadding"]
      208 GETUPVAL                         R22 7
      209 GETUPVAL                         R23 11
      210 DUPTABLE                         R24 K74 [{["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["textFirst"] = False, ["textLabelAutomaticSize"], ["layoutOrder"]}]
      211 GETIMPORT                        R25 K65 [UDim.new]
      213 LOADN                            R26 0
      214 LOADN                            R27 4
      215 CALL                             R25 2 1
      216 SETTABLEKS                       R25 R24 K66 ["separation"]
      218 GETIMPORT                        R25 K65 [UDim.new]
      220 LOADN                            R26 0
      221 LOADN                            R27 41
      222 CALL                             R25 2 1
      223 SETTABLEKS                       R25 R24 K69 ["minTextLabelWidth"]
      225 LOADK                            R27 K33 ["NavigationBar"]
      226 LOADK                            R28 K75 ["Preview"]
      227 NAMECALL                         R25 R1 K76 ["getText"]
      229 CALL                             R25 3 1
      230 SETTABLEKS                       R25 R24 K70 ["text"]
      232 GETIMPORT                        R25 K47 [Enum.AutomaticSize.XY]
      234 SETTABLEKS                       R25 R24 K73 ["textLabelAutomaticSize"]
      236 MOVE                             R25 R3
      237 CALL                             R25 0 1
      238 SETTABLEKS                       R25 R24 K32 ["layoutOrder"]
      240 DUPTABLE                         R25 K78 [{"UIPadding", "ToggleButton"}]
      241 GETUPVAL                         R26 7
      242 LOADK                            R27 K55 ["UIPadding"]
      243 DUPTABLE                         R28 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      244 GETIMPORT                        R29 K65 [UDim.new]
      246 LOADN                            R30 0
      247 LOADN                            R31 4
      248 CALL                             R29 2 1
      249 SETTABLEKS                       R29 R28 K59 ["PaddingLeft"]
      251 GETIMPORT                        R29 K65 [UDim.new]
      253 LOADN                            R30 0
      254 LOADN                            R31 8
      255 CALL                             R29 2 1
      256 SETTABLEKS                       R29 R28 K60 ["PaddingRight"]
      258 GETIMPORT                        R29 K65 [UDim.new]
      260 LOADN                            R30 0
      261 LOADN                            R31 4
      262 CALL                             R29 2 1
      263 SETTABLEKS                       R29 R28 K61 ["PaddingTop"]
      265 GETIMPORT                        R29 K65 [UDim.new]
      267 LOADN                            R30 0
      268 LOADN                            R31 4
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K62 ["PaddingBottom"]
      272 CALL                             R26 2 1
      273 SETTABLEKS                       R26 R25 K55 ["UIPadding"]
      275 GETUPVAL                         R26 7
      276 GETUPVAL                         R27 12
      277 DUPTABLE                         R28 K81 [{"Size", "Selected", "OnClick"}]
      278 GETIMPORT                        R29 K44 [UDim2.fromOffset]
      280 LOADN                            R30 28
      281 LOADN                            R31 16
      282 CALL                             R29 2 1
      283 SETTABLEKS                       R29 R28 K14 ["Size"]
      285 GETTABLEKS                       R29 R4 K2 ["settings"]
      287 GETTABLEKS                       R29 R29 K6 ["navigationBarSettings"]
      289 GETTABLEKS                       R29 R29 K82 ["previewToggled"]
      291 SETTABLEKS                       R29 R28 K79 ["Selected"]
      293 NEWCLOSURE                       R29 P2
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R4
      296 SETTABLEKS                       R29 R28 K80 ["OnClick"]
      298 DUPTABLE                         R29 K83 [{"UIPadding"}]
      299 GETUPVAL                         R30 7
      300 LOADK                            R31 K55 ["UIPadding"]
      301 DUPTABLE                         R32 K84 [{"PaddingLeft", "PaddingRight"}]
      302 GETIMPORT                        R33 K65 [UDim.new]
      304 LOADN                            R34 0
      305 LOADN                            R35 2
      306 CALL                             R33 2 1
      307 SETTABLEKS                       R33 R32 K59 ["PaddingLeft"]
      309 GETIMPORT                        R33 K65 [UDim.new]
      311 LOADN                            R34 0
      312 LOADN                            R35 2
      313 CALL                             R33 2 1
      314 SETTABLEKS                       R33 R32 K60 ["PaddingRight"]
      316 CALL                             R30 2 1
      317 SETTABLEKS                       R30 R29 K55 ["UIPadding"]
      319 CALL                             R26 3 1
      320 SETTABLEKS                       R26 R25 K77 ["ToggleButton"]
      322 CALL                             R22 3 1
      323 SETTABLEKS                       R22 R21 K56 ["PreviewToggleTitledComponent"]
      325 GETUPVAL                         R22 7
      326 LOADK                            R23 K85 ["ImageButton"]
      327 NEWTABLE                         R24 4 0
      329 GETUPVAL                         R25 3
      330 GETTABLEKS                       R25 R25 K35 ["Tag"]
      332 GETUPVAL                         R26 13
      333 LOADK                            R27 K86 ["AvatarTypeDropdownToggleButton"]
      334 LOADK                            R28 K87 ["data-testid=AvatarTypeDropdownToggleButton"]
      335 GETTABLEKS                       R30 R5 K88 ["enabled"]
      337 JUMPIFNOT                        R30 ; [+2]
      338 LOADK                            R29 K89 ["Enabled"]
      339 JUMP                             ; [+1]
      340 LOADNIL                          R29
      341 CALL                             R26 3 1
      342 SETTABLE                         R26 R24 R25
      343 GETUPVAL                         R25 3
      344 GETTABLEKS                       R25 R25 K90 ["Event"]
      346 GETTABLEKS                       R25 R25 K91 ["Activated"]
      348 NEWCLOSURE                       R26 P3
      349 CAPTURE                          VAL R2
      350 CAPTURE                          VAL R5
      351 SETTABLE                         R26 R24 R25
      352 GETIMPORT                        R25 K44 [UDim2.fromOffset]
      354 GETUPVAL                         R26 8
      355 GETTABLEKS                       R26 R26 K92 ["STANDARD_IMAGE_SIZE"]
      357 GETUPVAL                         R27 8
      358 GETTABLEKS                       R27 R27 K92 ["STANDARD_IMAGE_SIZE"]
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K14 ["Size"]
      363 MOVE                             R25 R3
      364 CALL                             R25 0 1
      365 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      367 DUPTABLE                         R25 K94 [{"AvatarTypeMenu"}]
      368 GETTABLEKS                       R26 R5 K88 ["enabled"]
      370 JUMPIFNOT                        R26 ; [+8]
      371 GETUPVAL                         R26 7
      372 GETUPVAL                         R27 14
      373 DUPTABLE                         R28 K96 [{"close"}]
      374 GETTABLEKS                       R29 R5 K97 ["disable"]
      376 SETTABLEKS                       R29 R28 K95 ["close"]
      378 CALL                             R26 2 1
      379 SETTABLEKS                       R26 R25 K93 ["AvatarTypeMenu"]
      381 CALL                             R22 3 1
      382 SETTABLEKS                       R22 R21 K57 ["AvatarTypeDropdownButton"]
      384 CALL                             R18 3 1
      385 SETTABLEKS                       R18 R17 K40 ["RightSideComponentWrapper"]
      387 CALL                             R14 3 1
      388 SETTABLEKS                       R14 R13 K33 ["NavigationBar"]
      390 CALL                             R10 3 -1
      391 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K10 ["AvatarTypeMenu"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K11 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R5 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Components"]
       49 GETTABLEKS                       R6 R6 K15 ["PresetSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R7 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K7 ["Components"]
       72 GETTABLEKS                       R9 R9 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       81 GETTABLEKS                       R10 R10 K20 ["usePrev"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K21 ["useToggleState"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R7 K22 ["createNextOrder"]
       95 GETTABLEKS                       R12 R4 K23 ["ContextServices"]
       97 GETTABLEKS                       R13 R4 K24 ["Styling"]
       99 GETTABLEKS                       R13 R13 K25 ["joinTags"]
      101 GETTABLEKS                       R14 R12 K26 ["Localization"]
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K6 ["Src"]
      107 GETTABLEKS                       R16 R16 K11 ["Util"]
      109 GETTABLEKS                       R16 R16 K27 ["Telemetry"]
      111 GETTABLEKS                       R16 R16 K28 ["TelemetryContext"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R4 K29 ["UI"]
      116 GETTABLEKS                       R17 R16 K30 ["Pane"]
      118 GETTABLEKS                       R18 R16 K31 ["ToggleButton"]
      120 GETTABLEKS                       R19 R6 K32 ["createElement"]
      122 DUPCLOSURE                       R20 K33 [PROTO_4]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R2
      138 RETURN                           R20 1
