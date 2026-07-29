PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsCollisionMode.Legacy]
        3 JUMPIFNOTEQ                      R0 R1 ; [+7]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+3]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

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
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R12 0 1
       75 MOVE                             R13 R8
       76 SETLIST                          R12 R13 1 [1]
       78 CALL                             R10 2 0
       79 GETUPVAL                         R10 8
       80 LOADK                            R11 K13 ["ScrollingFrame"]
       81 DUPTABLE                         R12 K22 [{["Size"], ["BackgroundTransparency"] = 1, ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["AutomaticCanvasSize"], ["LayoutOrder"]}]
       82 GETIMPORT                        R13 K25 [UDim2.new]
       84 LOADN                            R14 1
       85 LOADN                            R15 0
       86 LOADN                            R16 0
       87 GETUPVAL                         R17 9
       88 GETTABLEKS                       R17 R17 K26 ["MENU_BAR_HEIGHT"]
       90 CALL                             R13 4 1
       91 SETTABLEKS                       R13 R12 K14 ["Size"]
       93 GETIMPORT                        R13 K29 [Enum.ScrollingDirection.X]
       95 SETTABLEKS                       R13 R12 K17 ["ScrollingDirection"]
       97 GETIMPORT                        R13 K31 [Enum.AutomaticSize.X]
       99 SETTABLEKS                       R13 R12 K20 ["AutomaticCanvasSize"]
      101 GETTABLEKS                       R13 R0 K32 ["layoutOrder"]
      103 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
      105 DUPTABLE                         R13 K34 [{"NavigationBar"}]
      106 GETUPVAL                         R14 8
      107 GETUPVAL                         R15 10
      108 NEWTABLE                         R16 2 0
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R17 R17 K35 ["Tag"]
      113 LOADK                            R18 K36 ["Component-NavigationBar"]
      114 SETTABLE                         R18 R16 R17
      115 LOADK                            R17 K37 ["BorderBox"]
      116 SETTABLEKS                       R17 R16 K38 ["Style"]
      118 DUPTABLE                         R17 K41 [{"PresetSelector", "RightSideComponentWrapper"}]
      119 GETUPVAL                         R18 8
      120 GETUPVAL                         R19 11
      121 DUPTABLE                         R20 K42 [{"Size", "AutomaticSize"}]
      122 GETIMPORT                        R21 K44 [UDim2.fromOffset]
      124 LOADN                            R22 0
      125 GETUPVAL                         R23 9
      126 GETTABLEKS                       R23 R23 K45 ["STANDARD_HEIGHT"]
      128 CALL                             R21 2 1
      129 SETTABLEKS                       R21 R20 K14 ["Size"]
      131 GETIMPORT                        R21 K47 [Enum.AutomaticSize.XY]
      133 SETTABLEKS                       R21 R20 K30 ["AutomaticSize"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K39 ["PresetSelector"]
      138 GETUPVAL                         R18 8
      139 GETUPVAL                         R19 10
      140 NEWTABLE                         R20 8 0
      142 GETUPVAL                         R21 3
      143 GETTABLEKS                       R21 R21 K35 ["Tag"]
      145 LOADK                            R22 K48 ["X-Row X-Middle"]
      146 SETTABLE                         R22 R20 R21
      147 GETIMPORT                        R21 K50 [UDim2.fromScale]
      149 LOADN                            R22 1
      150 LOADN                            R23 0
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K51 ["Position"]
      154 GETIMPORT                        R21 K53 [Vector2.new]
      156 LOADN                            R22 1
      157 LOADN                            R23 0
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K54 ["AnchorPoint"]
      161 GETIMPORT                        R21 K44 [UDim2.fromOffset]
      163 LOADN                            R22 0
      164 GETUPVAL                         R23 9
      165 GETTABLEKS                       R23 R23 K45 ["STANDARD_HEIGHT"]
      167 CALL                             R21 2 1
      168 SETTABLEKS                       R21 R20 K14 ["Size"]
      170 GETIMPORT                        R21 K31 [Enum.AutomaticSize.X]
      172 SETTABLEKS                       R21 R20 K30 ["AutomaticSize"]
      174 DUPTABLE                         R21 K58 [{"UIPadding", "PreviewToggleTitledComponent", "AvatarTypeDropdownButton"}]
      175 GETUPVAL                         R22 8
      176 LOADK                            R23 K55 ["UIPadding"]
      177 DUPTABLE                         R24 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      178 GETIMPORT                        R25 K65 [UDim.new]
      180 LOADN                            R26 0
      181 LOADN                            R27 4
      182 CALL                             R25 2 1
      183 SETTABLEKS                       R25 R24 K59 ["PaddingLeft"]
      185 GETIMPORT                        R25 K65 [UDim.new]
      187 LOADN                            R26 0
      188 LOADN                            R27 8
      189 CALL                             R25 2 1
      190 SETTABLEKS                       R25 R24 K60 ["PaddingRight"]
      192 GETIMPORT                        R25 K65 [UDim.new]
      194 LOADN                            R26 0
      195 LOADN                            R27 4
      196 CALL                             R25 2 1
      197 SETTABLEKS                       R25 R24 K61 ["PaddingTop"]
      199 GETIMPORT                        R25 K65 [UDim.new]
      201 LOADN                            R26 0
      202 LOADN                            R27 4
      203 CALL                             R25 2 1
      204 SETTABLEKS                       R25 R24 K62 ["PaddingBottom"]
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K55 ["UIPadding"]
      209 GETUPVAL                         R22 8
      210 GETUPVAL                         R23 12
      211 DUPTABLE                         R24 K74 [{["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["textFirst"] = False, ["textLabelAutomaticSize"], ["layoutOrder"]}]
      212 GETIMPORT                        R25 K65 [UDim.new]
      214 LOADN                            R26 0
      215 LOADN                            R27 4
      216 CALL                             R25 2 1
      217 SETTABLEKS                       R25 R24 K66 ["separation"]
      219 GETIMPORT                        R25 K65 [UDim.new]
      221 LOADN                            R26 0
      222 LOADN                            R27 41
      223 CALL                             R25 2 1
      224 SETTABLEKS                       R25 R24 K69 ["minTextLabelWidth"]
      226 LOADK                            R27 K33 ["NavigationBar"]
      227 LOADK                            R28 K75 ["Preview"]
      228 NAMECALL                         R25 R1 K76 ["getText"]
      230 CALL                             R25 3 1
      231 SETTABLEKS                       R25 R24 K70 ["text"]
      233 GETIMPORT                        R25 K47 [Enum.AutomaticSize.XY]
      235 SETTABLEKS                       R25 R24 K73 ["textLabelAutomaticSize"]
      237 MOVE                             R25 R3
      238 CALL                             R25 0 1
      239 SETTABLEKS                       R25 R24 K32 ["layoutOrder"]
      241 DUPTABLE                         R25 K78 [{"UIPadding", "ToggleButton"}]
      242 GETUPVAL                         R26 8
      243 LOADK                            R27 K55 ["UIPadding"]
      244 DUPTABLE                         R28 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      245 GETIMPORT                        R29 K65 [UDim.new]
      247 LOADN                            R30 0
      248 LOADN                            R31 4
      249 CALL                             R29 2 1
      250 SETTABLEKS                       R29 R28 K59 ["PaddingLeft"]
      252 GETIMPORT                        R29 K65 [UDim.new]
      254 LOADN                            R30 0
      255 LOADN                            R31 8
      256 CALL                             R29 2 1
      257 SETTABLEKS                       R29 R28 K60 ["PaddingRight"]
      259 GETIMPORT                        R29 K65 [UDim.new]
      261 LOADN                            R30 0
      262 LOADN                            R31 4
      263 CALL                             R29 2 1
      264 SETTABLEKS                       R29 R28 K61 ["PaddingTop"]
      266 GETIMPORT                        R29 K65 [UDim.new]
      268 LOADN                            R30 0
      269 LOADN                            R31 4
      270 CALL                             R29 2 1
      271 SETTABLEKS                       R29 R28 K62 ["PaddingBottom"]
      273 CALL                             R26 2 1
      274 SETTABLEKS                       R26 R25 K55 ["UIPadding"]
      276 GETUPVAL                         R26 8
      277 GETUPVAL                         R27 13
      278 DUPTABLE                         R28 K81 [{"Size", "Selected", "OnClick"}]
      279 GETIMPORT                        R29 K44 [UDim2.fromOffset]
      281 LOADN                            R30 28
      282 LOADN                            R31 16
      283 CALL                             R29 2 1
      284 SETTABLEKS                       R29 R28 K14 ["Size"]
      286 GETTABLEKS                       R29 R4 K2 ["settings"]
      288 GETTABLEKS                       R29 R29 K6 ["navigationBarSettings"]
      290 GETTABLEKS                       R29 R29 K82 ["previewToggled"]
      292 SETTABLEKS                       R29 R28 K79 ["Selected"]
      294 NEWCLOSURE                       R29 P2
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R4
      297 SETTABLEKS                       R29 R28 K80 ["OnClick"]
      299 DUPTABLE                         R29 K83 [{"UIPadding"}]
      300 GETUPVAL                         R30 8
      301 LOADK                            R31 K55 ["UIPadding"]
      302 DUPTABLE                         R32 K84 [{"PaddingLeft", "PaddingRight"}]
      303 GETIMPORT                        R33 K65 [UDim.new]
      305 LOADN                            R34 0
      306 LOADN                            R35 2
      307 CALL                             R33 2 1
      308 SETTABLEKS                       R33 R32 K59 ["PaddingLeft"]
      310 GETIMPORT                        R33 K65 [UDim.new]
      312 LOADN                            R34 0
      313 LOADN                            R35 2
      314 CALL                             R33 2 1
      315 SETTABLEKS                       R33 R32 K60 ["PaddingRight"]
      317 CALL                             R30 2 1
      318 SETTABLEKS                       R30 R29 K55 ["UIPadding"]
      320 CALL                             R26 3 1
      321 SETTABLEKS                       R26 R25 K77 ["ToggleButton"]
      323 CALL                             R22 3 1
      324 SETTABLEKS                       R22 R21 K56 ["PreviewToggleTitledComponent"]
      326 GETUPVAL                         R22 8
      327 LOADK                            R23 K85 ["ImageButton"]
      328 NEWTABLE                         R24 4 0
      330 GETUPVAL                         R25 3
      331 GETTABLEKS                       R25 R25 K35 ["Tag"]
      333 GETUPVAL                         R26 14
      334 LOADK                            R27 K86 ["AvatarTypeDropdownToggleButton"]
      335 LOADK                            R28 K87 ["data-testid=AvatarTypeDropdownToggleButton"]
      336 GETTABLEKS                       R30 R5 K88 ["enabled"]
      338 JUMPIFNOT                        R30 ; [+2]
      339 LOADK                            R29 K89 ["Enabled"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R29
      342 CALL                             R26 3 1
      343 SETTABLE                         R26 R24 R25
      344 GETUPVAL                         R25 3
      345 GETTABLEKS                       R25 R25 K90 ["Event"]
      347 GETTABLEKS                       R25 R25 K91 ["Activated"]
      349 NEWCLOSURE                       R26 P3
      350 CAPTURE                          VAL R2
      351 CAPTURE                          VAL R5
      352 SETTABLE                         R26 R24 R25
      353 GETIMPORT                        R25 K44 [UDim2.fromOffset]
      355 GETUPVAL                         R26 9
      356 GETTABLEKS                       R26 R26 K92 ["STANDARD_IMAGE_SIZE"]
      358 GETUPVAL                         R27 9
      359 GETTABLEKS                       R27 R27 K92 ["STANDARD_IMAGE_SIZE"]
      361 CALL                             R25 2 1
      362 SETTABLEKS                       R25 R24 K14 ["Size"]
      364 MOVE                             R25 R3
      365 CALL                             R25 0 1
      366 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      368 DUPTABLE                         R25 K94 [{"AvatarTypeMenu"}]
      369 GETTABLEKS                       R26 R5 K88 ["enabled"]
      371 JUMPIFNOT                        R26 ; [+8]
      372 GETUPVAL                         R26 8
      373 GETUPVAL                         R27 15
      374 DUPTABLE                         R28 K96 [{"close"}]
      375 GETTABLEKS                       R29 R5 K97 ["disable"]
      377 SETTABLEKS                       R29 R28 K95 ["close"]
      379 CALL                             R26 2 1
      380 SETTABLEKS                       R26 R25 K93 ["AvatarTypeMenu"]
      382 CALL                             R22 3 1
      383 SETTABLEKS                       R22 R21 K57 ["AvatarTypeDropdownButton"]
      385 CALL                             R18 3 1
      386 SETTABLEKS                       R18 R17 K40 ["RightSideComponentWrapper"]
      388 CALL                             R14 3 1
      389 SETTABLEKS                       R14 R13 K33 ["NavigationBar"]
      391 CALL                             R10 3 -1
      392 RETURN                           R10 -1

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
       79 GETTABLEKS                       R10 R10 K19 ["Flags"]
       81 GETTABLEKS                       R10 R10 K20 ["getEngineFeatureAvatarSettingsInnerBoxPhysicsRestoreLua"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K21 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K22 ["usePrev"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       99 GETTABLEKS                       R12 R12 K23 ["useToggleState"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R7 K24 ["createNextOrder"]
      104 GETTABLEKS                       R13 R4 K25 ["ContextServices"]
      106 GETTABLEKS                       R14 R4 K26 ["Styling"]
      108 GETTABLEKS                       R14 R14 K27 ["joinTags"]
      110 GETTABLEKS                       R15 R13 K28 ["Localization"]
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K6 ["Src"]
      116 GETTABLEKS                       R17 R17 K11 ["Util"]
      118 GETTABLEKS                       R17 R17 K29 ["Telemetry"]
      120 GETTABLEKS                       R17 R17 K30 ["TelemetryContext"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R4 K31 ["UI"]
      125 GETTABLEKS                       R18 R17 K32 ["Pane"]
      127 GETTABLEKS                       R19 R17 K33 ["ToggleButton"]
      129 GETTABLEKS                       R20 R6 K34 ["createElement"]
      131 DUPCLOSURE                       R21 K35 [PROTO_4]
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R2
      148 RETURN                           R21 1
