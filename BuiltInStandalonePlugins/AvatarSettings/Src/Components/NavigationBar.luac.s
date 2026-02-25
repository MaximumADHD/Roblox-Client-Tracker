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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["PreviewToggled"]
        5 NAMECALL                         R0 R0 K1 ["logCounter"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["settings"]
       11 GETTABLEKS                       R1 R2 K3 ["navigationBarSettings"]
       13 GETTABLEKS                       R0 R1 K4 ["setPreviewToggled"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K2 ["settings"]
       18 GETTABLEKS                       R3 R4 K3 ["navigationBarSettings"]
       20 GETTABLEKS                       R2 R3 K5 ["previewToggled"]
       22 NOT                              R1 R2
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

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
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 6
       33 LOADB                            R6 0
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R8 R4 K2 ["settings"]
       37 GETTABLEKS                       R7 R8 K6 ["navigationBarSettings"]
       39 GETTABLEKS                       R6 R7 K7 ["setPreviewToggled"]
       41 GETTABLEKS                       R10 R4 K2 ["settings"]
       43 GETTABLEKS                       R9 R10 K6 ["navigationBarSettings"]
       45 GETTABLEKS                       R8 R9 K8 ["avatarType"]
       47 GETTABLEKS                       R7 R8 K9 ["value"]
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R10 0 1
       56 MOVE                             R11 R7
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 0
       60 GETTABLEKS                       R11 R4 K2 ["settings"]
       62 GETTABLEKS                       R10 R11 K11 ["movementSettings"]
       64 GETTABLEKS                       R9 R10 K12 ["collisionSetting"]
       66 GETTABLEKS                       R8 R9 K9 ["value"]
       68 GETUPVAL                         R9 7
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 GETUPVAL                         R11 4
       72 GETTABLEKS                       R10 R11 K10 ["useEffect"]
       74 NEWCLOSURE                       R11 P1
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 NEWTABLE                         R12 0 1
       79 MOVE                             R13 R8
       80 SETLIST                          R12 R13 1 [1]
       82 CALL                             R10 2 0
       83 GETUPVAL                         R10 8
       84 LOADK                            R11 K13 ["ScrollingFrame"]
       85 DUPTABLE                         R12 K20 [{"Size", "BackgroundTransparency", "ScrollingDirection", "ScrollBarThickness", "AutomaticCanvasSize", "LayoutOrder"}]
       86 GETIMPORT                        R13 K23 [UDim2.new]
       88 LOADN                            R14 1
       89 LOADN                            R15 0
       90 LOADN                            R16 0
       91 GETUPVAL                         R18 9
       92 GETTABLEKS                       R17 R18 K24 ["MENU_BAR_HEIGHT"]
       94 CALL                             R13 4 1
       95 SETTABLEKS                       R13 R12 K14 ["Size"]
       97 LOADN                            R13 1
       98 SETTABLEKS                       R13 R12 K15 ["BackgroundTransparency"]
      100 GETIMPORT                        R13 K27 [Enum.ScrollingDirection.X]
      102 SETTABLEKS                       R13 R12 K16 ["ScrollingDirection"]
      104 LOADN                            R13 0
      105 SETTABLEKS                       R13 R12 K17 ["ScrollBarThickness"]
      107 GETIMPORT                        R13 K29 [Enum.AutomaticSize.X]
      109 SETTABLEKS                       R13 R12 K18 ["AutomaticCanvasSize"]
      111 GETTABLEKS                       R13 R0 K30 ["layoutOrder"]
      113 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
      115 DUPTABLE                         R13 K32 [{"NavigationBar"}]
      116 GETUPVAL                         R14 8
      117 GETUPVAL                         R15 10
      118 NEWTABLE                         R16 2 0
      120 GETUPVAL                         R18 4
      121 GETTABLEKS                       R17 R18 K33 ["Tag"]
      123 LOADK                            R18 K34 ["Component-NavigationBar"]
      124 SETTABLE                         R18 R16 R17
      125 LOADK                            R17 K35 ["BorderBox"]
      126 SETTABLEKS                       R17 R16 K36 ["Style"]
      128 DUPTABLE                         R17 K39 [{"PresetSelector", "RightSideComponentWrapper"}]
      129 GETUPVAL                         R18 8
      130 GETUPVAL                         R19 11
      131 DUPTABLE                         R20 K40 [{"Size", "AutomaticSize"}]
      132 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      134 LOADN                            R22 0
      135 GETUPVAL                         R24 9
      136 GETTABLEKS                       R23 R24 K43 ["STANDARD_HEIGHT"]
      138 CALL                             R21 2 1
      139 SETTABLEKS                       R21 R20 K14 ["Size"]
      141 GETIMPORT                        R21 K45 [Enum.AutomaticSize.XY]
      143 SETTABLEKS                       R21 R20 K28 ["AutomaticSize"]
      145 CALL                             R18 2 1
      146 SETTABLEKS                       R18 R17 K37 ["PresetSelector"]
      148 GETUPVAL                         R18 8
      149 GETUPVAL                         R19 10
      150 NEWTABLE                         R20 8 0
      152 GETUPVAL                         R22 4
      153 GETTABLEKS                       R21 R22 K33 ["Tag"]
      155 LOADK                            R22 K46 ["X-Row X-Middle"]
      156 SETTABLE                         R22 R20 R21
      157 GETIMPORT                        R21 K48 [UDim2.fromScale]
      159 LOADN                            R22 1
      160 LOADN                            R23 0
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K49 ["Position"]
      164 GETIMPORT                        R21 K51 [Vector2.new]
      166 LOADN                            R22 1
      167 LOADN                            R23 0
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K52 ["AnchorPoint"]
      171 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      173 LOADN                            R22 0
      174 GETUPVAL                         R24 9
      175 GETTABLEKS                       R23 R24 K43 ["STANDARD_HEIGHT"]
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K14 ["Size"]
      180 GETIMPORT                        R21 K29 [Enum.AutomaticSize.X]
      182 SETTABLEKS                       R21 R20 K28 ["AutomaticSize"]
      184 DUPTABLE                         R21 K56 [{"UIPadding", "PreviewToggleTitledComponent", "AvatarTypeDropdownButton"}]
      185 GETUPVAL                         R22 8
      186 LOADK                            R23 K53 ["UIPadding"]
      187 DUPTABLE                         R24 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      188 GETIMPORT                        R25 K63 [UDim.new]
      190 LOADN                            R26 0
      191 LOADN                            R27 4
      192 CALL                             R25 2 1
      193 SETTABLEKS                       R25 R24 K57 ["PaddingLeft"]
      195 GETIMPORT                        R25 K63 [UDim.new]
      197 LOADN                            R26 0
      198 LOADN                            R27 8
      199 CALL                             R25 2 1
      200 SETTABLEKS                       R25 R24 K58 ["PaddingRight"]
      202 GETIMPORT                        R25 K63 [UDim.new]
      204 LOADN                            R26 0
      205 LOADN                            R27 4
      206 CALL                             R25 2 1
      207 SETTABLEKS                       R25 R24 K59 ["PaddingTop"]
      209 GETIMPORT                        R25 K63 [UDim.new]
      211 LOADN                            R26 0
      212 LOADN                            R27 4
      213 CALL                             R25 2 1
      214 SETTABLEKS                       R25 R24 K60 ["PaddingBottom"]
      216 CALL                             R22 2 1
      217 SETTABLEKS                       R22 R21 K53 ["UIPadding"]
      219 GETUPVAL                         R22 8
      220 GETUPVAL                         R23 12
      221 DUPTABLE                         R24 K70 [{"separation", "textLabelTags", "minTextLabelWidth", "text", "textFirst", "textLabelAutomaticSize", "layoutOrder"}]
      222 GETIMPORT                        R25 K63 [UDim.new]
      224 LOADN                            R26 0
      225 LOADN                            R27 4
      226 CALL                             R25 2 1
      227 SETTABLEKS                       R25 R24 K64 ["separation"]
      229 LOADK                            R25 K71 ["AvatarSettings-LeftTextPrimary"]
      230 SETTABLEKS                       R25 R24 K65 ["textLabelTags"]
      232 GETIMPORT                        R25 K63 [UDim.new]
      234 LOADN                            R26 0
      235 LOADN                            R27 41
      236 CALL                             R25 2 1
      237 SETTABLEKS                       R25 R24 K66 ["minTextLabelWidth"]
      239 LOADK                            R27 K31 ["NavigationBar"]
      240 LOADK                            R28 K72 ["Preview"]
      241 NAMECALL                         R25 R1 K73 ["getText"]
      243 CALL                             R25 3 1
      244 SETTABLEKS                       R25 R24 K67 ["text"]
      246 LOADB                            R25 0
      247 SETTABLEKS                       R25 R24 K68 ["textFirst"]
      249 GETIMPORT                        R25 K45 [Enum.AutomaticSize.XY]
      251 SETTABLEKS                       R25 R24 K69 ["textLabelAutomaticSize"]
      253 MOVE                             R25 R3
      254 CALL                             R25 0 1
      255 SETTABLEKS                       R25 R24 K30 ["layoutOrder"]
      257 DUPTABLE                         R25 K75 [{"UIPadding", "ToggleButton"}]
      258 GETUPVAL                         R26 8
      259 LOADK                            R27 K53 ["UIPadding"]
      260 DUPTABLE                         R28 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      261 GETIMPORT                        R29 K63 [UDim.new]
      263 LOADN                            R30 0
      264 LOADN                            R31 4
      265 CALL                             R29 2 1
      266 SETTABLEKS                       R29 R28 K57 ["PaddingLeft"]
      268 GETIMPORT                        R29 K63 [UDim.new]
      270 LOADN                            R30 0
      271 LOADN                            R31 8
      272 CALL                             R29 2 1
      273 SETTABLEKS                       R29 R28 K58 ["PaddingRight"]
      275 GETIMPORT                        R29 K63 [UDim.new]
      277 LOADN                            R30 0
      278 LOADN                            R31 4
      279 CALL                             R29 2 1
      280 SETTABLEKS                       R29 R28 K59 ["PaddingTop"]
      282 GETIMPORT                        R29 K63 [UDim.new]
      284 LOADN                            R30 0
      285 LOADN                            R31 4
      286 CALL                             R29 2 1
      287 SETTABLEKS                       R29 R28 K60 ["PaddingBottom"]
      289 CALL                             R26 2 1
      290 SETTABLEKS                       R26 R25 K53 ["UIPadding"]
      292 GETUPVAL                         R26 8
      293 GETUPVAL                         R27 13
      294 DUPTABLE                         R28 K78 [{"Size", "Selected", "OnClick"}]
      295 GETIMPORT                        R29 K42 [UDim2.fromOffset]
      297 LOADN                            R30 28
      298 LOADN                            R31 16
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K14 ["Size"]
      302 GETTABLEKS                       R31 R4 K2 ["settings"]
      304 GETTABLEKS                       R30 R31 K6 ["navigationBarSettings"]
      306 GETTABLEKS                       R29 R30 K79 ["previewToggled"]
      308 SETTABLEKS                       R29 R28 K76 ["Selected"]
      310 NEWCLOSURE                       R29 P2
      311 CAPTURE                          UPVAL U1
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R4
      314 SETTABLEKS                       R29 R28 K77 ["OnClick"]
      316 DUPTABLE                         R29 K80 [{"UIPadding"}]
      317 GETUPVAL                         R30 8
      318 LOADK                            R31 K53 ["UIPadding"]
      319 DUPTABLE                         R32 K81 [{"PaddingLeft", "PaddingRight"}]
      320 GETIMPORT                        R33 K63 [UDim.new]
      322 LOADN                            R34 0
      323 LOADN                            R35 2
      324 CALL                             R33 2 1
      325 SETTABLEKS                       R33 R32 K57 ["PaddingLeft"]
      327 GETIMPORT                        R33 K63 [UDim.new]
      329 LOADN                            R34 0
      330 LOADN                            R35 2
      331 CALL                             R33 2 1
      332 SETTABLEKS                       R33 R32 K58 ["PaddingRight"]
      334 CALL                             R30 2 1
      335 SETTABLEKS                       R30 R29 K53 ["UIPadding"]
      337 CALL                             R26 3 1
      338 SETTABLEKS                       R26 R25 K74 ["ToggleButton"]
      340 CALL                             R22 3 1
      341 SETTABLEKS                       R22 R21 K54 ["PreviewToggleTitledComponent"]
      343 GETUPVAL                         R22 8
      344 LOADK                            R23 K82 ["ImageButton"]
      345 NEWTABLE                         R24 4 0
      347 GETUPVAL                         R26 4
      348 GETTABLEKS                       R25 R26 K33 ["Tag"]
      350 GETUPVAL                         R26 14
      351 LOADK                            R27 K83 ["AvatarTypeDropdownToggleButton"]
      352 LOADK                            R28 K84 ["data-testid=AvatarTypeDropdownToggleButton"]
      353 GETTABLEKS                       R30 R5 K85 ["enabled"]
      355 JUMPIFNOT                        R30 ; [+2]
      356 LOADK                            R29 K86 ["Enabled"]
      357 JUMP                             ; [+1]
      358 LOADNIL                          R29
      359 CALL                             R26 3 1
      360 SETTABLE                         R26 R24 R25
      361 GETUPVAL                         R27 4
      362 GETTABLEKS                       R26 R27 K87 ["Event"]
      364 GETTABLEKS                       R25 R26 K88 ["Activated"]
      366 GETUPVAL                         R27 1
      367 CALL                             R27 0 1
      368 JUMPIFNOT                        R27 ; [+4]
      369 NEWCLOSURE                       R26 P3
      370 CAPTURE                          VAL R2
      371 CAPTURE                          VAL R5
      372 JUMP                             ; [+2]
      373 GETTABLEKS                       R26 R5 K89 ["enable"]
      375 SETTABLE                         R26 R24 R25
      376 GETIMPORT                        R25 K42 [UDim2.fromOffset]
      378 GETUPVAL                         R27 9
      379 GETTABLEKS                       R26 R27 K90 ["STANDARD_IMAGE_SIZE"]
      381 GETUPVAL                         R28 9
      382 GETTABLEKS                       R27 R28 K90 ["STANDARD_IMAGE_SIZE"]
      384 CALL                             R25 2 1
      385 SETTABLEKS                       R25 R24 K14 ["Size"]
      387 MOVE                             R25 R3
      388 CALL                             R25 0 1
      389 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      391 DUPTABLE                         R25 K92 [{"AvatarTypeMenu"}]
      392 GETTABLEKS                       R26 R5 K85 ["enabled"]
      394 JUMPIFNOT                        R26 ; [+8]
      395 GETUPVAL                         R26 8
      396 GETUPVAL                         R27 15
      397 DUPTABLE                         R28 K94 [{"close"}]
      398 GETTABLEKS                       R29 R5 K95 ["disable"]
      400 SETTABLEKS                       R29 R28 K93 ["close"]
      402 CALL                             R26 2 1
      403 SETTABLEKS                       R26 R25 K91 ["AvatarTypeMenu"]
      405 CALL                             R22 3 1
      406 SETTABLEKS                       R22 R21 K55 ["AvatarTypeDropdownButton"]
      408 CALL                             R18 3 1
      409 SETTABLEKS                       R18 R17 K38 ["RightSideComponentWrapper"]
      411 CALL                             R14 3 1
      412 SETTABLEKS                       R14 R13 K31 ["NavigationBar"]
      414 CALL                             R10 3 -1
      415 RETURN                           R10 -1

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
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R19 R0 K6 ["Src"]
      118 GETTABLEKS                       R18 R19 K29 ["Flags"]
      120 GETTABLEKS                       R17 R18 K30 ["getFFlagAddTelemetry"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R4 K31 ["UI"]
      125 GETTABLEKS                       R18 R17 K32 ["Pane"]
      127 GETTABLEKS                       R19 R17 K33 ["ToggleButton"]
      129 GETTABLEKS                       R20 R6 K34 ["createElement"]
      131 DUPCLOSURE                       R21 K35 [PROTO_4]
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R2
      148 RETURN                           R21 1
