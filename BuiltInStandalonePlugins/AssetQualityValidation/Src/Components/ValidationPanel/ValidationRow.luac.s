PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K5 [{[1] = "zoom-to-selection", ["icon"] = "magnifying-glass", ["text"]}]
        3 LOADK                            R5 K6 ["Text"]
        4 LOADK                            R6 K7 ["ZoomToSelection"]
        5 NAMECALL                         R3 R0 K8 ["getText"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R2 K4 ["text"]
       10 DUPTABLE                         R3 K11 [{[1] = "copy-text", ["icon"] = "two-stacked-squares", ["text"]}]
       11 LOADK                            R6 K6 ["Text"]
       12 LOADK                            R7 K12 ["CopyText"]
       13 NAMECALL                         R4 R0 K8 ["getText"]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K4 ["text"]
       18 DUPTABLE                         R4 K15 [{[1] = "open-documentation", ["icon"] = "arrow-up-right-from-square", ["text"]}]
       19 LOADK                            R7 K6 ["Text"]
       20 LOADK                            R8 K16 ["OpenDocumentation"]
       21 NAMECALL                         R5 R0 K8 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K4 ["text"]
       26 SETLIST                          R1 R2 3 [1]
       28 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETTABLEKS                       R1 R1 K3 ["Theme"]
        7 GETTABLEKS                       R1 R1 K4 ["Name"]
        9 JUMPIFEQKS                       R1 K5 ["Light"] ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R6 R0 K1 ["Item"]
       14 GETTABLEKS                       R8 R0 K3 ["Depth"]
       16 ORK                              R7 R8 K2 [0]
       17 GETTABLEKS                       R8 R0 K4 ["Children"]
       19 JUMPIFNOT                        R8 ; [+8]
       20 GETTABLEKS                       R10 R0 K4 ["Children"]
       22 LENGTH                           R9 R10
       23 LOADN                            R10 0
       24 JUMPIFLT                         R10 R9 ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 GETTABLEKS                       R9 R0 K5 ["Expanded"]
       30 GETTABLEKS                       R10 R0 K6 ["Selected"]
       32 LOADN                            R12 5
       33 MULK                             R13 R7 K7 [17]
       34 ADD                              R11 R12 R13
       35 GETTABLEKS                       R12 R6 K8 ["text"]
       37 GETTABLEKS                       R13 R6 K9 ["icon"]
       39 JUMPIFNOTEQKNIL                  R13 ; [+2]
       41 LOADB                            R14 0 +1
       42 LOADB                            R14 1
       43 LOADN                            R15 3
       44 JUMPIFNOT                        R14 ; [+1]
       45 ADDK                             R15 R15 K10 [1]
       46 SUBK                             R16 R15 K10 [1]
       47 ADDK                             R20 R11 K12 [12]
       48 JUMPIFNOT                        R14 ; [+2]
       49 LOADN                            R21 14
       50 JUMP                             ; [+1]
       51 LOADN                            R21 0
       52 ADD                              R19 R20 R21
       53 ADDK                             R18 R19 K11 [32]
       54 MULK                             R19 R16 K13 [5]
       55 ADD                              R17 R18 R19
       56 LOADB                            R18 0
       57 GETIMPORT                        R19 K15 [pcall]
       59 NEWCLOSURE                       R20 P0
       60 CAPTURE                          REF R18
       61 CALL                             R19 1 0
       62 NEWTABLE                         R19 4 0
       64 GETUPVAL                         R20 0
       65 GETTABLEKS                       R20 R20 K16 ["createElement"]
       67 GETUPVAL                         R21 2
       68 DUPTABLE                         R22 K19 [{["LayoutOrder"] = 1, ["Size"]}]
       69 GETIMPORT                        R23 K22 [UDim2.fromOffset]
       71 MOVE                             R24 R11
       72 LOADN                            R25 0
       73 CALL                             R23 2 1
       74 SETTABLEKS                       R23 R22 K18 ["Size"]
       76 CALL                             R20 2 1
       77 SETTABLEKS                       R20 R19 K23 ["Spacer"]
       79 JUMPIFNOT                        R8 ; [+67]
       80 GETUPVAL                         R20 0
       81 GETTABLEKS                       R20 R20 K16 ["createElement"]
       83 LOADK                            R21 K24 ["ImageButton"]
       84 NEWTABLE                         R22 16 0
       86 LOADN                            R23 2
       87 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
       89 GETIMPORT                        R23 K22 [UDim2.fromOffset]
       91 LOADN                            R24 12
       92 LOADN                            R25 12
       93 CALL                             R23 2 1
       94 SETTABLEKS                       R23 R22 K18 ["Size"]
       96 LOADN                            R23 1
       97 SETTABLEKS                       R23 R22 K25 ["BackgroundTransparency"]
       99 LOADK                            R23 K26 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      100 SETTABLEKS                       R23 R22 K27 ["Image"]
      102 GETTABLEKS                       R23 R5 K28 ["Color"]
      104 GETTABLEKS                       R23 R23 K29 ["Content"]
      106 GETTABLEKS                       R23 R23 K30 ["Default"]
      108 GETTABLEKS                       R23 R23 K31 ["Color3"]
      110 SETTABLEKS                       R23 R22 K32 ["ImageColor3"]
      112 GETTABLEKS                       R23 R5 K28 ["Color"]
      114 GETTABLEKS                       R23 R23 K29 ["Content"]
      116 GETTABLEKS                       R23 R23 K30 ["Default"]
      118 GETTABLEKS                       R23 R23 K33 ["Transparency"]
      120 SETTABLEKS                       R23 R22 K34 ["ImageTransparency"]
      122 GETIMPORT                        R23 K37 [Vector2.new]
      124 LOADN                            R24 12
      125 LOADN                            R25 12
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K38 ["ImageRectSize"]
      129 JUMPIFNOT                        R9 ; [+2]
      130 GETUPVAL                         R23 3
      131 JUMP                             ; [+1]
      132 GETUPVAL                         R23 4
      133 SETTABLEKS                       R23 R22 K39 ["ImageRectOffset"]
      135 GETUPVAL                         R23 0
      136 GETTABLEKS                       R23 R23 K40 ["Event"]
      138 GETTABLEKS                       R23 R23 K41 ["Activated"]
      140 NEWCLOSURE                       R24 P1
      141 CAPTURE                          VAL R0
      142 SETTABLE                         R24 R22 R23
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K42 ["Toggle"]
      146 JUMP                             ; [+15]
      147 GETUPVAL                         R20 0
      148 GETTABLEKS                       R20 R20 K16 ["createElement"]
      150 GETUPVAL                         R21 2
      151 DUPTABLE                         R22 K44 [{["LayoutOrder"] = 2, ["Size"]}]
      152 GETIMPORT                        R23 K22 [UDim2.fromOffset]
      154 LOADN                            R24 12
      155 LOADN                            R25 12
      156 CALL                             R23 2 1
      157 SETTABLEKS                       R23 R22 K18 ["Size"]
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K42 ["Toggle"]
      162 JUMPIFNOT                        R14 ; [+23]
      163 GETUPVAL                         R20 0
      164 GETTABLEKS                       R20 R20 K16 ["createElement"]
      166 GETUPVAL                         R21 5
      167 DUPTABLE                         R22 K46 [{["LayoutOrder"] = 3, ["Image"], ["Size"]}]
      168 JUMPIFNOT                        R18 ; [+6]
      169 GETTABLEKS                       R24 R13 K47 ["LightImage"]
      171 JUMPIFNOT                        R24 ; [+3]
      172 GETTABLEKS                       R23 R13 K47 ["LightImage"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R23 R13 K27 ["Image"]
      177 SETTABLEKS                       R23 R22 K27 ["Image"]
      179 GETTABLEKS                       R23 R13 K18 ["Size"]
      181 SETTABLEKS                       R23 R22 K18 ["Size"]
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K48 ["LeftIcon"]
      186 GETUPVAL                         R20 0
      187 GETTABLEKS                       R20 R20 K16 ["createElement"]
      189 GETUPVAL                         R21 6
      190 DUPTABLE                         R22 K56 [{["tag"] = "text-body-small text-align-x-left content-default", ["Text"], ["TextWrapped"] = True, ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 4}]
      191 ORK                              R23 R12 K57 [""]
      192 SETTABLEKS                       R23 R22 K51 ["Text"]
      194 GETIMPORT                        R23 K58 [UDim2.new]
      196 LOADN                            R24 1
      197 MINUS                            R25 R17
      198 LOADN                            R26 0
      199 LOADN                            R27 0
      200 CALL                             R23 4 1
      201 SETTABLEKS                       R23 R22 K18 ["Size"]
      203 GETIMPORT                        R23 K61 [Enum.AutomaticSize.Y]
      205 SETTABLEKS                       R23 R22 K54 ["AutomaticSize"]
      207 CALL                             R20 2 1
      208 SETTABLEKS                       R20 R19 K62 ["Label"]
      210 OR                               R20 R1 R3
      211 LOADN                            R21 1
      212 GETIMPORT                        R22 K63 [Color3.new]
      214 LOADN                            R23 0
      215 LOADN                            R24 0
      216 LOADN                            R25 0
      217 CALL                             R22 3 1
      218 GETIMPORT                        R23 K15 [pcall]
      220 NEWCLOSURE                       R24 P2
      221 CAPTURE                          REF R22
      222 CAPTURE                          VAL R10
      223 CAPTURE                          REF R21
      224 CAPTURE                          VAL R1
      225 CALL                             R23 1 0
      226 JUMPIF                           R10 ; [+1]
      227 JUMPIFNOT                        R1 ; [+1]
      228 LOADN                            R21 0
      229 GETUPVAL                         R23 0
      230 GETTABLEKS                       R23 R23 K16 ["createElement"]
      232 LOADK                            R24 K64 ["TextButton"]
      233 NEWTABLE                         R25 16 0
      235 GETTABLEKS                       R26 R0 K65 ["Index"]
      237 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      239 GETTABLEKS                       R26 R0 K66 ["Position"]
      241 SETTABLEKS                       R26 R25 K66 ["Position"]
      243 GETTABLEKS                       R26 R0 K18 ["Size"]
      245 JUMPIF                           R26 ; [+7]
      246 GETIMPORT                        R26 K58 [UDim2.new]
      248 LOADN                            R27 1
      249 LOADN                            R28 0
      250 LOADN                            R29 0
      251 LOADN                            R30 20
      252 CALL                             R26 4 1
      253 SETTABLEKS                       R26 R25 K18 ["Size"]
      255 GETIMPORT                        R26 K61 [Enum.AutomaticSize.Y]
      257 SETTABLEKS                       R26 R25 K54 ["AutomaticSize"]
      259 SETTABLEKS                       R22 R25 K67 ["BackgroundColor3"]
      261 SETTABLEKS                       R21 R25 K25 ["BackgroundTransparency"]
      263 LOADN                            R26 0
      264 SETTABLEKS                       R26 R25 K68 ["BorderSizePixel"]
      266 LOADK                            R26 K57 [""]
      267 SETTABLEKS                       R26 R25 K51 ["Text"]
      269 LOADB                            R26 0
      270 SETTABLEKS                       R26 R25 K69 ["AutoButtonColor"]
      272 GETUPVAL                         R26 0
      273 GETTABLEKS                       R26 R26 K40 ["Event"]
      275 GETTABLEKS                       R26 R26 K41 ["Activated"]
      277 NEWCLOSURE                       R27 P3
      278 CAPTURE                          VAL R0
      279 SETTABLE                         R27 R25 R26
      280 GETUPVAL                         R26 0
      281 GETTABLEKS                       R26 R26 K40 ["Event"]
      283 GETTABLEKS                       R26 R26 K70 ["MouseEnter"]
      285 NEWCLOSURE                       R27 P4
      286 CAPTURE                          VAL R2
      287 SETTABLE                         R27 R25 R26
      288 GETUPVAL                         R26 0
      289 GETTABLEKS                       R26 R26 K40 ["Event"]
      291 GETTABLEKS                       R26 R26 K71 ["MouseLeave"]
      293 NEWCLOSURE                       R27 P5
      294 CAPTURE                          VAL R2
      295 SETTABLE                         R27 R25 R26
      296 DUPTABLE                         R26 K73 [{"Content", "Menu"}]
      297 GETUPVAL                         R27 0
      298 GETTABLEKS                       R27 R27 K16 ["createElement"]
      300 GETUPVAL                         R28 2
      301 NEWTABLE                         R29 4 0
      303 GETIMPORT                        R30 K58 [UDim2.new]
      305 LOADN                            R31 1
      306 LOADN                            R32 0
      307 LOADN                            R33 0
      308 LOADN                            R34 20
      309 CALL                             R30 4 1
      310 SETTABLEKS                       R30 R29 K18 ["Size"]
      312 GETIMPORT                        R30 K61 [Enum.AutomaticSize.Y]
      314 SETTABLEKS                       R30 R29 K54 ["AutomaticSize"]
      316 GETUPVAL                         R30 0
      317 GETTABLEKS                       R30 R30 K74 ["Tag"]
      319 LOADK                            R31 K75 ["X-RowS X-Top"]
      320 SETTABLE                         R31 R29 R30
      321 MOVE                             R30 R19
      322 CALL                             R27 3 1
      323 SETTABLEKS                       R27 R26 K29 ["Content"]
      325 JUMPIFNOT                        R20 ; [+96]
      326 GETUPVAL                         R27 0
      327 GETTABLEKS                       R27 R27 K16 ["createElement"]
      329 LOADK                            R28 K76 ["Frame"]
      330 DUPTABLE                         R29 K79 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      331 GETIMPORT                        R30 K37 [Vector2.new]
      333 LOADN                            R31 1
      334 LOADK                            R32 K80 [0.5]
      335 CALL                             R30 2 1
      336 SETTABLEKS                       R30 R29 K77 ["AnchorPoint"]
      338 GETIMPORT                        R30 K82 [UDim2.fromScale]
      340 LOADN                            R31 1
      341 LOADK                            R32 K80 [0.5]
      342 CALL                             R30 2 1
      343 SETTABLEKS                       R30 R29 K66 ["Position"]
      345 GETIMPORT                        R30 K22 [UDim2.fromOffset]
      347 LOADN                            R31 32
      348 LOADN                            R32 20
      349 CALL                             R30 2 1
      350 SETTABLEKS                       R30 R29 K18 ["Size"]
      352 DUPTABLE                         R30 K84 [{"OptionsMenu"}]
      353 GETUPVAL                         R31 0
      354 GETTABLEKS                       R31 R31 K16 ["createElement"]
      356 GETUPVAL                         R32 7
      357 DUPTABLE                         R33 K92 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      358 SETTABLEKS                       R3 R33 K85 ["isOpen"]
      360 GETUPVAL                         R34 8
      361 GETTABLEKS                       R35 R0 K93 ["localization"]
      363 CALL                             R34 1 1
      364 SETTABLEKS                       R34 R33 K86 ["items"]
      366 GETUPVAL                         R34 9
      367 GETTABLEKS                       R34 R34 K94 ["Small"]
      369 SETTABLEKS                       R34 R33 K87 ["size"]
      371 GETUPVAL                         R34 10
      372 GETTABLEKS                       R34 R34 K95 ["Bottom"]
      374 SETTABLEKS                       R34 R33 K88 ["side"]
      376 GETUPVAL                         R34 11
      377 GETTABLEKS                       R34 R34 K96 ["End"]
      379 SETTABLEKS                       R34 R33 K89 ["align"]
      381 NEWCLOSURE                       R34 P6
      382 CAPTURE                          VAL R4
      383 SETTABLEKS                       R34 R33 K90 ["onPressedOutside"]
      385 NEWCLOSURE                       R34 P7
      386 CAPTURE                          VAL R6
      387 CAPTURE                          VAL R4
      388 SETTABLEKS                       R34 R33 K91 ["onActivated"]
      390 DUPTABLE                         R34 K98 [{"Button"}]
      391 GETUPVAL                         R35 0
      392 GETTABLEKS                       R35 R35 K16 ["createElement"]
      394 GETUPVAL                         R36 12
      395 DUPTABLE                         R37 K100 [{"icon", "onActivated", "size", "variant"}]
      396 DUPTABLE                         R38 K103 [{["name"] = "three-dots-vertical"}]
      397 SETTABLEKS                       R38 R37 K9 ["icon"]
      399 NEWCLOSURE                       R38 P8
      400 CAPTURE                          VAL R4
      401 CAPTURE                          VAL R3
      402 SETTABLEKS                       R38 R37 K91 ["onActivated"]
      404 GETUPVAL                         R38 9
      405 GETTABLEKS                       R38 R38 K94 ["Small"]
      407 SETTABLEKS                       R38 R37 K87 ["size"]
      409 GETUPVAL                         R38 13
      410 GETTABLEKS                       R38 R38 K104 ["Utility"]
      412 SETTABLEKS                       R38 R37 K99 ["variant"]
      414 CALL                             R35 2 1
      415 SETTABLEKS                       R35 R34 K97 ["Button"]
      417 CALL                             R31 3 1
      418 SETTABLEKS                       R31 R30 K83 ["OptionsMenu"]
      420 CALL                             R27 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R27
      423 SETTABLEKS                       R27 R26 K72 ["Menu"]
      425 CALL                             R23 3 -1
      426 CLOSEUPVALS                      R18
      427 RETURN                           R23 -1

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
       50 GETTABLEKS                       R11 R3 K18 ["Hooks"]
       52 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       54 GETTABLEKS                       R12 R2 K20 ["UI"]
       56 GETTABLEKS                       R12 R12 K21 ["Pane"]
       58 GETTABLEKS                       R13 R2 K20 ["UI"]
       60 GETTABLEKS                       R13 R13 K22 ["Image"]
       62 GETIMPORT                        R14 K25 [Vector2.new]
       64 LOADN                            R15 24
       65 LOADN                            R16 0
       66 CALL                             R14 2 1
       67 GETIMPORT                        R15 K25 [Vector2.new]
       69 LOADN                            R16 12
       70 LOADN                            R17 0
       71 CALL                             R15 2 1
       72 DUPCLOSURE                       R16 K26 [PROTO_0]
       73 DUPCLOSURE                       R17 K27 [PROTO_10]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R8
       88 RETURN                           R17 1
