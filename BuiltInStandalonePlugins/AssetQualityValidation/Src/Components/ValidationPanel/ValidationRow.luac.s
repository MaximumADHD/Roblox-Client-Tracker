PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K3 [{"id", "icon", "text"}]
        3 LOADK                            R3 K4 ["zoom-to-selection"]
        4 SETTABLEKS                       R3 R2 K0 ["id"]
        6 LOADK                            R3 K5 ["magnifying-glass"]
        7 SETTABLEKS                       R3 R2 K1 ["icon"]
        9 LOADK                            R5 K6 ["Text"]
       10 LOADK                            R6 K7 ["ZoomToSelection"]
       11 NAMECALL                         R3 R0 K8 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K2 ["text"]
       16 DUPTABLE                         R3 K3 [{"id", "icon", "text"}]
       17 LOADK                            R4 K9 ["copy-text"]
       18 SETTABLEKS                       R4 R3 K0 ["id"]
       20 LOADK                            R4 K10 ["two-stacked-squares"]
       21 SETTABLEKS                       R4 R3 K1 ["icon"]
       23 LOADK                            R6 K6 ["Text"]
       24 LOADK                            R7 K11 ["CopyText"]
       25 NAMECALL                         R4 R0 K8 ["getText"]
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K2 ["text"]
       30 DUPTABLE                         R4 K3 [{"id", "icon", "text"}]
       31 LOADK                            R5 K12 ["open-documentation"]
       32 SETTABLEKS                       R5 R4 K0 ["id"]
       34 LOADK                            R5 K13 ["arrow-up-right-from-square"]
       35 SETTABLEKS                       R5 R4 K1 ["icon"]
       37 LOADK                            R7 K6 ["Text"]
       38 LOADK                            R8 K14 ["OpenDocumentation"]
       39 NAMECALL                         R5 R0 K8 ["getText"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K2 ["text"]
       44 SETLIST                          R1 R2 3 [1]
       46 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
        9 NAMECALL                         R1 R0 K8 ["GetColor"]
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 LOADN                            R1 0
       16 SETUPVAL                         R1 2
       17 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
       19 GETIMPORT                        R4 K11 [Enum.StudioStyleGuideModifier.Selected]
       21 NAMECALL                         R1 R0 K8 ["GetColor"]
       23 CALL                             R1 3 1
       24 SETUPVAL                         R1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+10]
       28 LOADN                            R1 0
       29 SETUPVAL                         R1 2
       30 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
       32 GETIMPORT                        R4 K13 [Enum.StudioStyleGuideModifier.Hover]
       34 NAMECALL                         R1 R0 K8 ["GetColor"]
       36 CALL                             R1 3 1
       37 SETUPVAL                         R1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["copy-text"] ; [+15]
        2 GETIMPORT                        R1 K2 [game]
        4 LOADK                            R3 K3 ["StudioService"]
        5 NAMECALL                         R1 R1 K4 ["GetService"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K6 ["text"]
       11 ORK                              R3 R4 K5 [""]
       12 NAMECALL                         R1 R1 K7 ["CopyToClipboard"]
       14 CALL                             R1 2 0
       15 JUMP                             ; [+12]
       16 JUMPIFNOTEQKS                    R0 K8 ["open-documentation"] ; [+11]
       18 GETIMPORT                        R1 K2 [game]
       20 LOADK                            R3 K9 ["BrowserService"]
       21 NAMECALL                         R1 R1 K4 ["GetService"]
       23 CALL                             R1 2 1
       24 LOADK                            R3 K10 ["https://create.roblox.com/docs/art/validation-errors"]
       25 NAMECALL                         R1 R1 K11 ["OpenBrowserWindow"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 1
       29 LOADB                            R2 0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R0 K1 ["Item"]
       12 GETTABLEKS                       R7 R0 K3 ["Depth"]
       14 ORK                              R6 R7 K2 [0]
       15 GETTABLEKS                       R7 R0 K4 ["Children"]
       17 JUMPIFNOT                        R7 ; [+8]
       18 GETTABLEKS                       R9 R0 K4 ["Children"]
       20 LENGTH                           R8 R9
       21 LOADN                            R9 0
       22 JUMPIFLT                         R9 R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETTABLEKS                       R8 R0 K5 ["Expanded"]
       28 GETTABLEKS                       R9 R0 K6 ["Selected"]
       30 LOADN                            R11 5
       31 MULK                             R12 R6 K7 [17]
       32 ADD                              R10 R11 R12
       33 GETTABLEKS                       R11 R5 K8 ["text"]
       35 GETTABLEKS                       R12 R5 K9 ["icon"]
       37 JUMPIFNOTEQKNIL                  R12 ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 LOADN                            R14 3
       42 JUMPIFNOT                        R13 ; [+1]
       43 ADDK                             R14 R14 K10 [1]
       44 SUBK                             R15 R14 K10 [1]
       45 ADDK                             R19 R10 K12 [12]
       46 JUMPIFNOT                        R13 ; [+2]
       47 LOADN                            R20 14
       48 JUMP                             ; [+1]
       49 LOADN                            R20 0
       50 ADD                              R18 R19 R20
       51 ADDK                             R17 R18 K11 [32]
       52 MULK                             R18 R15 K13 [5]
       53 ADD                              R16 R17 R18
       54 NEWTABLE                         R17 4 0
       56 GETUPVAL                         R18 0
       57 GETTABLEKS                       R18 R18 K14 ["createElement"]
       59 GETUPVAL                         R19 1
       60 DUPTABLE                         R20 K17 [{"LayoutOrder", "Size"}]
       61 LOADN                            R21 1
       62 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
       64 GETIMPORT                        R21 K20 [UDim2.fromOffset]
       66 MOVE                             R22 R10
       67 LOADN                            R23 0
       68 CALL                             R21 2 1
       69 SETTABLEKS                       R21 R20 K16 ["Size"]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K21 ["Spacer"]
       74 JUMPIFNOT                        R7 ; [+47]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R18 R18 K14 ["createElement"]
       78 LOADK                            R19 K22 ["ImageButton"]
       79 NEWTABLE                         R20 8 0
       81 LOADN                            R21 2
       82 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
       84 GETIMPORT                        R21 K20 [UDim2.fromOffset]
       86 LOADN                            R22 12
       87 LOADN                            R23 12
       88 CALL                             R21 2 1
       89 SETTABLEKS                       R21 R20 K16 ["Size"]
       91 LOADN                            R21 1
       92 SETTABLEKS                       R21 R20 K23 ["BackgroundTransparency"]
       94 LOADK                            R21 K24 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       95 SETTABLEKS                       R21 R20 K25 ["Image"]
       97 GETIMPORT                        R21 K28 [Vector2.new]
       99 LOADN                            R22 12
      100 LOADN                            R23 12
      101 CALL                             R21 2 1
      102 SETTABLEKS                       R21 R20 K29 ["ImageRectSize"]
      104 JUMPIFNOT                        R8 ; [+2]
      105 GETUPVAL                         R21 2
      106 JUMP                             ; [+1]
      107 GETUPVAL                         R21 3
      108 SETTABLEKS                       R21 R20 K30 ["ImageRectOffset"]
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K31 ["Event"]
      113 GETTABLEKS                       R21 R21 K32 ["Activated"]
      115 NEWCLOSURE                       R22 P0
      116 CAPTURE                          VAL R0
      117 SETTABLE                         R22 R20 R21
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R17 K33 ["Toggle"]
      121 JUMP                             ; [+18]
      122 GETUPVAL                         R18 0
      123 GETTABLEKS                       R18 R18 K14 ["createElement"]
      125 GETUPVAL                         R19 1
      126 DUPTABLE                         R20 K17 [{"LayoutOrder", "Size"}]
      127 LOADN                            R21 2
      128 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      130 GETIMPORT                        R21 K20 [UDim2.fromOffset]
      132 LOADN                            R22 12
      133 LOADN                            R23 12
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K16 ["Size"]
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K33 ["Toggle"]
      140 JUMPIFNOT                        R13 ; [+19]
      141 GETUPVAL                         R18 0
      142 GETTABLEKS                       R18 R18 K14 ["createElement"]
      144 GETUPVAL                         R19 4
      145 DUPTABLE                         R20 K34 [{"LayoutOrder", "Image", "Size"}]
      146 LOADN                            R21 3
      147 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      149 GETTABLEKS                       R21 R12 K25 ["Image"]
      151 SETTABLEKS                       R21 R20 K25 ["Image"]
      153 GETTABLEKS                       R21 R12 K16 ["Size"]
      155 SETTABLEKS                       R21 R20 K16 ["Size"]
      157 CALL                             R18 2 1
      158 SETTABLEKS                       R18 R17 K35 ["LeftIcon"]
      160 GETUPVAL                         R18 0
      161 GETTABLEKS                       R18 R18 K14 ["createElement"]
      163 GETUPVAL                         R19 5
      164 DUPTABLE                         R20 K40 [{"tag", "Text", "TextWrapped", "Size", "AutomaticSize", "LayoutOrder"}]
      165 LOADK                            R21 K41 ["text-body-small text-align-x-left content-default"]
      166 SETTABLEKS                       R21 R20 K36 ["tag"]
      168 ORK                              R21 R11 K42 [""]
      169 SETTABLEKS                       R21 R20 K37 ["Text"]
      171 LOADB                            R21 1
      172 SETTABLEKS                       R21 R20 K38 ["TextWrapped"]
      174 GETIMPORT                        R21 K43 [UDim2.new]
      176 LOADN                            R22 1
      177 MINUS                            R23 R16
      178 LOADN                            R24 0
      179 LOADN                            R25 0
      180 CALL                             R21 4 1
      181 SETTABLEKS                       R21 R20 K16 ["Size"]
      183 GETIMPORT                        R21 K46 [Enum.AutomaticSize.Y]
      185 SETTABLEKS                       R21 R20 K39 ["AutomaticSize"]
      187 LOADN                            R21 4
      188 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      190 CALL                             R18 2 1
      191 SETTABLEKS                       R18 R17 K47 ["Label"]
      193 OR                               R18 R1 R3
      194 LOADN                            R19 1
      195 GETIMPORT                        R20 K49 [Color3.new]
      197 LOADN                            R21 0
      198 LOADN                            R22 0
      199 LOADN                            R23 0
      200 CALL                             R20 3 1
      201 GETIMPORT                        R21 K51 [pcall]
      203 NEWCLOSURE                       R22 P1
      204 CAPTURE                          REF R20
      205 CAPTURE                          VAL R9
      206 CAPTURE                          REF R19
      207 CAPTURE                          VAL R1
      208 CALL                             R21 1 0
      209 JUMPIF                           R9 ; [+1]
      210 JUMPIFNOT                        R1 ; [+1]
      211 LOADN                            R19 0
      212 GETUPVAL                         R21 0
      213 GETTABLEKS                       R21 R21 K14 ["createElement"]
      215 LOADK                            R22 K52 ["TextButton"]
      216 NEWTABLE                         R23 16 0
      218 GETTABLEKS                       R24 R0 K53 ["Index"]
      220 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
      222 GETTABLEKS                       R24 R0 K54 ["Position"]
      224 SETTABLEKS                       R24 R23 K54 ["Position"]
      226 GETTABLEKS                       R24 R0 K16 ["Size"]
      228 JUMPIF                           R24 ; [+7]
      229 GETIMPORT                        R24 K43 [UDim2.new]
      231 LOADN                            R25 1
      232 LOADN                            R26 0
      233 LOADN                            R27 0
      234 LOADN                            R28 20
      235 CALL                             R24 4 1
      236 SETTABLEKS                       R24 R23 K16 ["Size"]
      238 GETIMPORT                        R24 K46 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R24 R23 K39 ["AutomaticSize"]
      242 SETTABLEKS                       R20 R23 K55 ["BackgroundColor3"]
      244 SETTABLEKS                       R19 R23 K23 ["BackgroundTransparency"]
      246 LOADN                            R24 0
      247 SETTABLEKS                       R24 R23 K56 ["BorderSizePixel"]
      249 LOADK                            R24 K42 [""]
      250 SETTABLEKS                       R24 R23 K37 ["Text"]
      252 LOADB                            R24 0
      253 SETTABLEKS                       R24 R23 K57 ["AutoButtonColor"]
      255 GETUPVAL                         R24 0
      256 GETTABLEKS                       R24 R24 K31 ["Event"]
      258 GETTABLEKS                       R24 R24 K32 ["Activated"]
      260 NEWCLOSURE                       R25 P2
      261 CAPTURE                          VAL R0
      262 SETTABLE                         R25 R23 R24
      263 GETUPVAL                         R24 0
      264 GETTABLEKS                       R24 R24 K31 ["Event"]
      266 GETTABLEKS                       R24 R24 K58 ["MouseEnter"]
      268 NEWCLOSURE                       R25 P3
      269 CAPTURE                          VAL R2
      270 SETTABLE                         R25 R23 R24
      271 GETUPVAL                         R24 0
      272 GETTABLEKS                       R24 R24 K31 ["Event"]
      274 GETTABLEKS                       R24 R24 K59 ["MouseLeave"]
      276 NEWCLOSURE                       R25 P4
      277 CAPTURE                          VAL R2
      278 SETTABLE                         R25 R23 R24
      279 DUPTABLE                         R24 K62 [{"Content", "Menu"}]
      280 GETUPVAL                         R25 0
      281 GETTABLEKS                       R25 R25 K14 ["createElement"]
      283 GETUPVAL                         R26 1
      284 NEWTABLE                         R27 4 0
      286 GETIMPORT                        R28 K43 [UDim2.new]
      288 LOADN                            R29 1
      289 LOADN                            R30 0
      290 LOADN                            R31 0
      291 LOADN                            R32 20
      292 CALL                             R28 4 1
      293 SETTABLEKS                       R28 R27 K16 ["Size"]
      295 GETIMPORT                        R28 K46 [Enum.AutomaticSize.Y]
      297 SETTABLEKS                       R28 R27 K39 ["AutomaticSize"]
      299 GETUPVAL                         R28 0
      300 GETTABLEKS                       R28 R28 K63 ["Tag"]
      302 LOADK                            R29 K64 ["X-RowS X-Top"]
      303 SETTABLE                         R29 R27 R28
      304 MOVE                             R28 R17
      305 CALL                             R25 3 1
      306 SETTABLEKS                       R25 R24 K60 ["Content"]
      308 JUMPIFNOT                        R18 ; [+108]
      309 GETUPVAL                         R25 0
      310 GETTABLEKS                       R25 R25 K14 ["createElement"]
      312 LOADK                            R26 K65 ["Frame"]
      313 DUPTABLE                         R27 K68 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      314 GETIMPORT                        R28 K28 [Vector2.new]
      316 LOADN                            R29 1
      317 LOADK                            R30 K69 [0.5]
      318 CALL                             R28 2 1
      319 SETTABLEKS                       R28 R27 K66 ["AnchorPoint"]
      321 GETIMPORT                        R28 K71 [UDim2.fromScale]
      323 LOADN                            R29 1
      324 LOADK                            R30 K69 [0.5]
      325 CALL                             R28 2 1
      326 SETTABLEKS                       R28 R27 K54 ["Position"]
      328 GETIMPORT                        R28 K20 [UDim2.fromOffset]
      330 LOADN                            R29 32
      331 LOADN                            R30 20
      332 CALL                             R28 2 1
      333 SETTABLEKS                       R28 R27 K16 ["Size"]
      335 LOADN                            R28 1
      336 SETTABLEKS                       R28 R27 K23 ["BackgroundTransparency"]
      338 LOADN                            R28 0
      339 SETTABLEKS                       R28 R27 K56 ["BorderSizePixel"]
      341 LOADN                            R28 2
      342 SETTABLEKS                       R28 R27 K67 ["ZIndex"]
      344 DUPTABLE                         R28 K73 [{"OptionsMenu"}]
      345 GETUPVAL                         R29 0
      346 GETTABLEKS                       R29 R29 K14 ["createElement"]
      348 GETUPVAL                         R30 6
      349 DUPTABLE                         R31 K81 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      350 SETTABLEKS                       R3 R31 K74 ["isOpen"]
      352 GETUPVAL                         R32 7
      353 GETTABLEKS                       R33 R0 K82 ["localization"]
      355 CALL                             R32 1 1
      356 SETTABLEKS                       R32 R31 K75 ["items"]
      358 GETUPVAL                         R32 8
      359 GETTABLEKS                       R32 R32 K83 ["Small"]
      361 SETTABLEKS                       R32 R31 K76 ["size"]
      363 GETUPVAL                         R32 9
      364 GETTABLEKS                       R32 R32 K84 ["Bottom"]
      366 SETTABLEKS                       R32 R31 K77 ["side"]
      368 GETUPVAL                         R32 10
      369 GETTABLEKS                       R32 R32 K85 ["End"]
      371 SETTABLEKS                       R32 R31 K78 ["align"]
      373 NEWCLOSURE                       R32 P5
      374 CAPTURE                          VAL R4
      375 SETTABLEKS                       R32 R31 K79 ["onPressedOutside"]
      377 NEWCLOSURE                       R32 P6
      378 CAPTURE                          VAL R5
      379 CAPTURE                          VAL R4
      380 SETTABLEKS                       R32 R31 K80 ["onActivated"]
      382 DUPTABLE                         R32 K87 [{"Button"}]
      383 GETUPVAL                         R33 0
      384 GETTABLEKS                       R33 R33 K14 ["createElement"]
      386 GETUPVAL                         R34 11
      387 DUPTABLE                         R35 K89 [{"icon", "onActivated", "size", "variant"}]
      388 DUPTABLE                         R36 K91 [{"name"}]
      389 LOADK                            R37 K92 ["three-dots-vertical"]
      390 SETTABLEKS                       R37 R36 K90 ["name"]
      392 SETTABLEKS                       R36 R35 K9 ["icon"]
      394 NEWCLOSURE                       R36 P7
      395 CAPTURE                          VAL R4
      396 CAPTURE                          VAL R3
      397 SETTABLEKS                       R36 R35 K80 ["onActivated"]
      399 GETUPVAL                         R36 8
      400 GETTABLEKS                       R36 R36 K83 ["Small"]
      402 SETTABLEKS                       R36 R35 K76 ["size"]
      404 GETUPVAL                         R36 12
      405 GETTABLEKS                       R36 R36 K93 ["Utility"]
      407 SETTABLEKS                       R36 R35 K88 ["variant"]
      409 CALL                             R33 2 1
      410 SETTABLEKS                       R33 R32 K86 ["Button"]
      412 CALL                             R29 3 1
      413 SETTABLEKS                       R29 R28 K72 ["OptionsMenu"]
      415 CALL                             R25 3 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R25
      418 SETTABLEKS                       R25 R24 K61 ["Menu"]
      420 CALL                             R21 3 -1
      421 CLOSEUPVALS                      R19
      422 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Text"]
       30 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       32 GETTABLEKS                       R6 R3 K12 ["Menu"]
       34 GETTABLEKS                       R7 R3 K13 ["Enums"]
       36 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       38 GETTABLEKS                       R8 R3 K13 ["Enums"]
       40 GETTABLEKS                       R8 R8 K15 ["ButtonVariant"]
       42 GETTABLEKS                       R9 R3 K13 ["Enums"]
       44 GETTABLEKS                       R9 R9 K16 ["PopoverSide"]
       46 GETTABLEKS                       R10 R3 K13 ["Enums"]
       48 GETTABLEKS                       R10 R10 K17 ["PopoverAlign"]
       50 GETTABLEKS                       R11 R2 K18 ["UI"]
       52 GETTABLEKS                       R11 R11 K19 ["Pane"]
       54 GETTABLEKS                       R12 R2 K18 ["UI"]
       56 GETTABLEKS                       R12 R12 K20 ["Image"]
       58 GETIMPORT                        R13 K23 [Vector2.new]
       60 LOADN                            R14 24
       61 LOADN                            R15 0
       62 CALL                             R13 2 1
       63 GETIMPORT                        R14 K23 [Vector2.new]
       65 LOADN                            R15 12
       66 LOADN                            R16 0
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K24 [PROTO_0]
       69 DUPCLOSURE                       R16 K25 [PROTO_9]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 RETURN                           R16 1
