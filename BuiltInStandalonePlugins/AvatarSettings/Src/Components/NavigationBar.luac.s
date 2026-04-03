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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["settings"]
        8 GETTABLEKS                       R1 R2 K3 ["navigationBarSettings"]
       10 GETTABLEKS                       R0 R1 K4 ["setPreviewToggled"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K2 ["settings"]
       15 GETTABLEKS                       R3 R4 K3 ["navigationBarSettings"]
       17 GETTABLEKS                       R2 R3 K5 ["previewToggled"]
       19 NOT                              R1 R2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarTypeMenuOpened"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["enable"]
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
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
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
       30 GETTABLEKS                       R8 R4 K2 ["settings"]
       32 GETTABLEKS                       R7 R8 K6 ["navigationBarSettings"]
       34 GETTABLEKS                       R6 R7 K7 ["setPreviewToggled"]
       36 GETTABLEKS                       R10 R4 K2 ["settings"]
       38 GETTABLEKS                       R9 R10 K6 ["navigationBarSettings"]
       40 GETTABLEKS                       R8 R9 K8 ["avatarType"]
       42 GETTABLEKS                       R7 R8 K9 ["value"]
       44 GETUPVAL                         R9 3
       45 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R7
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 0
       55 GETTABLEKS                       R11 R4 K2 ["settings"]
       57 GETTABLEKS                       R10 R11 K11 ["movementSettings"]
       59 GETTABLEKS                       R9 R10 K12 ["collisionSetting"]
       61 GETTABLEKS                       R8 R9 K9 ["value"]
       63 GETUPVAL                         R9 6
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 GETUPVAL                         R11 3
       67 GETTABLEKS                       R10 R11 K10 ["useEffect"]
       69 NEWCLOSURE                       R11 P1
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R6
       72 NEWTABLE                         R12 0 1
       74 MOVE                             R13 R8
       75 SETLIST                          R12 R13 1 [1]
       77 CALL                             R10 2 0
       78 GETUPVAL                         R10 7
       79 LOADK                            R11 K13 ["ScrollingFrame"]
       80 DUPTABLE                         R12 K20 [{"Size", "BackgroundTransparency", "ScrollingDirection", "ScrollBarThickness", "AutomaticCanvasSize", "LayoutOrder"}]
       81 GETIMPORT                        R13 K23 [UDim2.new]
       83 LOADN                            R14 1
       84 LOADN                            R15 0
       85 LOADN                            R16 0
       86 GETUPVAL                         R18 8
       87 GETTABLEKS                       R17 R18 K24 ["MENU_BAR_HEIGHT"]
       89 CALL                             R13 4 1
       90 SETTABLEKS                       R13 R12 K14 ["Size"]
       92 LOADN                            R13 1
       93 SETTABLEKS                       R13 R12 K15 ["BackgroundTransparency"]
       95 GETIMPORT                        R13 K27 [Enum.ScrollingDirection.X]
       97 SETTABLEKS                       R13 R12 K16 ["ScrollingDirection"]
       99 LOADN                            R13 0
      100 SETTABLEKS                       R13 R12 K17 ["ScrollBarThickness"]
      102 GETIMPORT                        R13 K29 [Enum.AutomaticSize.X]
      104 SETTABLEKS                       R13 R12 K18 ["AutomaticCanvasSize"]
      106 GETTABLEKS                       R13 R0 K30 ["layoutOrder"]
      108 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
      110 DUPTABLE                         R13 K32 [{"NavigationBar"}]
      111 GETUPVAL                         R14 7
      112 GETUPVAL                         R15 9
      113 NEWTABLE                         R16 2 0
      115 GETUPVAL                         R18 3
      116 GETTABLEKS                       R17 R18 K33 ["Tag"]
      118 LOADK                            R18 K34 ["Component-NavigationBar"]
      119 SETTABLE                         R18 R16 R17
      120 LOADK                            R17 K35 ["BorderBox"]
      121 SETTABLEKS                       R17 R16 K36 ["Style"]
      123 DUPTABLE                         R17 K39 [{"PresetSelector", "RightSideComponentWrapper"}]
      124 GETUPVAL                         R18 7
      125 GETUPVAL                         R19 10
      126 DUPTABLE                         R20 K40 [{"Size", "AutomaticSize"}]
      127 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      129 LOADN                            R22 0
      130 GETUPVAL                         R24 8
      131 GETTABLEKS                       R23 R24 K43 ["STANDARD_HEIGHT"]
      133 CALL                             R21 2 1
      134 SETTABLEKS                       R21 R20 K14 ["Size"]
      136 GETIMPORT                        R21 K45 [Enum.AutomaticSize.XY]
      138 SETTABLEKS                       R21 R20 K28 ["AutomaticSize"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K37 ["PresetSelector"]
      143 GETUPVAL                         R18 7
      144 GETUPVAL                         R19 9
      145 NEWTABLE                         R20 8 0
      147 GETUPVAL                         R22 3
      148 GETTABLEKS                       R21 R22 K33 ["Tag"]
      150 LOADK                            R22 K46 ["X-Row X-Middle"]
      151 SETTABLE                         R22 R20 R21
      152 GETIMPORT                        R21 K48 [UDim2.fromScale]
      154 LOADN                            R22 1
      155 LOADN                            R23 0
      156 CALL                             R21 2 1
      157 SETTABLEKS                       R21 R20 K49 ["Position"]
      159 GETIMPORT                        R21 K51 [Vector2.new]
      161 LOADN                            R22 1
      162 LOADN                            R23 0
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R20 K52 ["AnchorPoint"]
      166 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      168 LOADN                            R22 0
      169 GETUPVAL                         R24 8
      170 GETTABLEKS                       R23 R24 K43 ["STANDARD_HEIGHT"]
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K14 ["Size"]
      175 GETIMPORT                        R21 K29 [Enum.AutomaticSize.X]
      177 SETTABLEKS                       R21 R20 K28 ["AutomaticSize"]
      179 DUPTABLE                         R21 K56 [{"UIPadding", "PreviewToggleTitledComponent", "AvatarTypeDropdownButton"}]
      180 GETUPVAL                         R22 7
      181 LOADK                            R23 K53 ["UIPadding"]
      182 DUPTABLE                         R24 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      183 GETIMPORT                        R25 K63 [UDim.new]
      185 LOADN                            R26 0
      186 LOADN                            R27 4
      187 CALL                             R25 2 1
      188 SETTABLEKS                       R25 R24 K57 ["PaddingLeft"]
      190 GETIMPORT                        R25 K63 [UDim.new]
      192 LOADN                            R26 0
      193 LOADN                            R27 8
      194 CALL                             R25 2 1
      195 SETTABLEKS                       R25 R24 K58 ["PaddingRight"]
      197 GETIMPORT                        R25 K63 [UDim.new]
      199 LOADN                            R26 0
      200 LOADN                            R27 4
      201 CALL                             R25 2 1
      202 SETTABLEKS                       R25 R24 K59 ["PaddingTop"]
      204 GETIMPORT                        R25 K63 [UDim.new]
      206 LOADN                            R26 0
      207 LOADN                            R27 4
      208 CALL                             R25 2 1
      209 SETTABLEKS                       R25 R24 K60 ["PaddingBottom"]
      211 CALL                             R22 2 1
      212 SETTABLEKS                       R22 R21 K53 ["UIPadding"]
      214 GETUPVAL                         R22 7
      215 GETUPVAL                         R23 11
      216 DUPTABLE                         R24 K70 [{"separation", "textLabelTags", "minTextLabelWidth", "text", "textFirst", "textLabelAutomaticSize", "layoutOrder"}]
      217 GETIMPORT                        R25 K63 [UDim.new]
      219 LOADN                            R26 0
      220 LOADN                            R27 4
      221 CALL                             R25 2 1
      222 SETTABLEKS                       R25 R24 K64 ["separation"]
      224 LOADK                            R25 K71 ["AvatarSettings-LeftTextPrimary"]
      225 SETTABLEKS                       R25 R24 K65 ["textLabelTags"]
      227 GETIMPORT                        R25 K63 [UDim.new]
      229 LOADN                            R26 0
      230 LOADN                            R27 41
      231 CALL                             R25 2 1
      232 SETTABLEKS                       R25 R24 K66 ["minTextLabelWidth"]
      234 LOADK                            R27 K31 ["NavigationBar"]
      235 LOADK                            R28 K72 ["Preview"]
      236 NAMECALL                         R25 R1 K73 ["getText"]
      238 CALL                             R25 3 1
      239 SETTABLEKS                       R25 R24 K67 ["text"]
      241 LOADB                            R25 0
      242 SETTABLEKS                       R25 R24 K68 ["textFirst"]
      244 GETIMPORT                        R25 K45 [Enum.AutomaticSize.XY]
      246 SETTABLEKS                       R25 R24 K69 ["textLabelAutomaticSize"]
      248 MOVE                             R25 R3
      249 CALL                             R25 0 1
      250 SETTABLEKS                       R25 R24 K30 ["layoutOrder"]
      252 DUPTABLE                         R25 K75 [{"UIPadding", "ToggleButton"}]
      253 GETUPVAL                         R26 7
      254 LOADK                            R27 K53 ["UIPadding"]
      255 DUPTABLE                         R28 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      256 GETIMPORT                        R29 K63 [UDim.new]
      258 LOADN                            R30 0
      259 LOADN                            R31 4
      260 CALL                             R29 2 1
      261 SETTABLEKS                       R29 R28 K57 ["PaddingLeft"]
      263 GETIMPORT                        R29 K63 [UDim.new]
      265 LOADN                            R30 0
      266 LOADN                            R31 8
      267 CALL                             R29 2 1
      268 SETTABLEKS                       R29 R28 K58 ["PaddingRight"]
      270 GETIMPORT                        R29 K63 [UDim.new]
      272 LOADN                            R30 0
      273 LOADN                            R31 4
      274 CALL                             R29 2 1
      275 SETTABLEKS                       R29 R28 K59 ["PaddingTop"]
      277 GETIMPORT                        R29 K63 [UDim.new]
      279 LOADN                            R30 0
      280 LOADN                            R31 4
      281 CALL                             R29 2 1
      282 SETTABLEKS                       R29 R28 K60 ["PaddingBottom"]
      284 CALL                             R26 2 1
      285 SETTABLEKS                       R26 R25 K53 ["UIPadding"]
      287 GETUPVAL                         R26 7
      288 GETUPVAL                         R27 12
      289 DUPTABLE                         R28 K78 [{"Size", "Selected", "OnClick"}]
      290 GETIMPORT                        R29 K42 [UDim2.fromOffset]
      292 LOADN                            R30 28
      293 LOADN                            R31 16
      294 CALL                             R29 2 1
      295 SETTABLEKS                       R29 R28 K14 ["Size"]
      297 GETTABLEKS                       R31 R4 K2 ["settings"]
      299 GETTABLEKS                       R30 R31 K6 ["navigationBarSettings"]
      301 GETTABLEKS                       R29 R30 K79 ["previewToggled"]
      303 SETTABLEKS                       R29 R28 K76 ["Selected"]
      305 NEWCLOSURE                       R29 P2
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R4
      308 SETTABLEKS                       R29 R28 K77 ["OnClick"]
      310 DUPTABLE                         R29 K80 [{"UIPadding"}]
      311 GETUPVAL                         R30 7
      312 LOADK                            R31 K53 ["UIPadding"]
      313 DUPTABLE                         R32 K81 [{"PaddingLeft", "PaddingRight"}]
      314 GETIMPORT                        R33 K63 [UDim.new]
      316 LOADN                            R34 0
      317 LOADN                            R35 2
      318 CALL                             R33 2 1
      319 SETTABLEKS                       R33 R32 K57 ["PaddingLeft"]
      321 GETIMPORT                        R33 K63 [UDim.new]
      323 LOADN                            R34 0
      324 LOADN                            R35 2
      325 CALL                             R33 2 1
      326 SETTABLEKS                       R33 R32 K58 ["PaddingRight"]
      328 CALL                             R30 2 1
      329 SETTABLEKS                       R30 R29 K53 ["UIPadding"]
      331 CALL                             R26 3 1
      332 SETTABLEKS                       R26 R25 K74 ["ToggleButton"]
      334 CALL                             R22 3 1
      335 SETTABLEKS                       R22 R21 K54 ["PreviewToggleTitledComponent"]
      337 GETUPVAL                         R22 7
      338 LOADK                            R23 K82 ["ImageButton"]
      339 NEWTABLE                         R24 4 0
      341 GETUPVAL                         R26 3
      342 GETTABLEKS                       R25 R26 K33 ["Tag"]
      344 GETUPVAL                         R26 13
      345 LOADK                            R27 K83 ["AvatarTypeDropdownToggleButton"]
      346 LOADK                            R28 K84 ["data-testid=AvatarTypeDropdownToggleButton"]
      347 GETTABLEKS                       R30 R5 K85 ["enabled"]
      349 JUMPIFNOT                        R30 ; [+2]
      350 LOADK                            R29 K86 ["Enabled"]
      351 JUMP                             ; [+1]
      352 LOADNIL                          R29
      353 CALL                             R26 3 1
      354 SETTABLE                         R26 R24 R25
      355 GETUPVAL                         R27 3
      356 GETTABLEKS                       R26 R27 K87 ["Event"]
      358 GETTABLEKS                       R25 R26 K88 ["Activated"]
      360 NEWCLOSURE                       R26 P3
      361 CAPTURE                          VAL R2
      362 CAPTURE                          VAL R5
      363 SETTABLE                         R26 R24 R25
      364 GETIMPORT                        R25 K42 [UDim2.fromOffset]
      366 GETUPVAL                         R27 8
      367 GETTABLEKS                       R26 R27 K89 ["STANDARD_IMAGE_SIZE"]
      369 GETUPVAL                         R28 8
      370 GETTABLEKS                       R27 R28 K89 ["STANDARD_IMAGE_SIZE"]
      372 CALL                             R25 2 1
      373 SETTABLEKS                       R25 R24 K14 ["Size"]
      375 MOVE                             R25 R3
      376 CALL                             R25 0 1
      377 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      379 DUPTABLE                         R25 K91 [{"AvatarTypeMenu"}]
      380 GETTABLEKS                       R26 R5 K85 ["enabled"]
      382 JUMPIFNOT                        R26 ; [+8]
      383 GETUPVAL                         R26 7
      384 GETUPVAL                         R27 14
      385 DUPTABLE                         R28 K93 [{"close"}]
      386 GETTABLEKS                       R29 R5 K94 ["disable"]
      388 SETTABLEKS                       R29 R28 K92 ["close"]
      390 CALL                             R26 2 1
      391 SETTABLEKS                       R26 R25 K90 ["AvatarTypeMenu"]
      393 CALL                             R22 3 1
      394 SETTABLEKS                       R22 R21 K55 ["AvatarTypeDropdownButton"]
      396 CALL                             R18 3 1
      397 SETTABLEKS                       R18 R17 K38 ["RightSideComponentWrapper"]
      399 CALL                             R14 3 1
      400 SETTABLEKS                       R14 R13 K31 ["NavigationBar"]
      402 CALL                             R10 3 -1
      403 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Components"]
       24 GETTABLEKS                       R3 R4 K10 ["AvatarTypeMenu"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K11 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R6 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Components"]
       49 GETTABLEKS                       R6 R7 K15 ["PresetSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R8 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R10 R11 K7 ["Components"]
       72 GETTABLEKS                       R9 R10 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K19 ["Hooks"]
       81 GETTABLEKS                       R10 R11 K20 ["usePrev"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K19 ["Hooks"]
       90 GETTABLEKS                       R11 R12 K21 ["useToggleState"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R7 K22 ["createNextOrder"]
       95 GETTABLEKS                       R12 R4 K23 ["ContextServices"]
       97 GETTABLEKS                       R14 R4 K24 ["Styling"]
       99 GETTABLEKS                       R13 R14 K25 ["joinTags"]
      101 GETTABLEKS                       R14 R12 K26 ["Localization"]
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R19 R0 K6 ["Src"]
      107 GETTABLEKS                       R18 R19 K11 ["Util"]
      109 GETTABLEKS                       R17 R18 K27 ["Telemetry"]
      111 GETTABLEKS                       R16 R17 K28 ["TelemetryContext"]
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
