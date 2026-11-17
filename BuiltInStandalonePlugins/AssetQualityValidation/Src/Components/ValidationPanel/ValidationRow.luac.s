PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagAQVFollowup"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R3 0 3
        8 DUPTABLE                         R4 K5 [{["id"] = "zoom-to-selection", ["icon"], ["text"]}]
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADNIL                          R5
       11 JUMP                             ; [+1]
       12 LOADK                            R5 K6 ["magnifying-glass"]
       13 SETTABLEKS                       R5 R4 K3 ["icon"]
       15 LOADK                            R7 K7 ["Text"]
       16 LOADK                            R8 K8 ["ZoomToSelection"]
       17 NAMECALL                         R5 R0 K9 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K4 ["text"]
       22 DUPTABLE                         R5 K11 [{["id"] = "copy-text", ["icon"], ["text"]}]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADNIL                          R6
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K12 ["two-stacked-squares"]
       27 SETTABLEKS                       R6 R5 K3 ["icon"]
       29 LOADK                            R8 K7 ["Text"]
       30 LOADK                            R9 K13 ["CopyText"]
       31 NAMECALL                         R6 R0 K9 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K4 ["text"]
       36 DUPTABLE                         R6 K15 [{["id"] = "open-documentation", ["icon"], ["text"]}]
       37 JUMPIFNOT                        R1 ; [+2]
       38 LOADNIL                          R7
       39 JUMP                             ; [+1]
       40 LOADK                            R7 K16 ["arrow-up-right-from-square"]
       41 SETTABLEKS                       R7 R6 K3 ["icon"]
       43 LOADK                            R9 K7 ["Text"]
       44 LOADK                            R10 K17 ["OpenDocumentation"]
       45 NAMECALL                         R7 R0 K9 ["getText"]
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K4 ["text"]
       50 SETLIST                          R3 R4 3 [1]
       52 RETURN                           R3 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKS                    R0 K0 ["copy-text"] ; [+13]
        2 GETIMPORT                        R1 K2 [game]
        4 LOADK                            R3 K3 ["StudioService"]
        5 NAMECALL                         R1 R1 K4 ["GetService"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 0
        9 ORK                              R3 R4 K5 [""]
       10 NAMECALL                         R1 R1 K6 ["CopyToClipboard"]
       12 CALL                             R1 2 0
       13 JUMP                             ; [+12]
       14 JUMPIFNOTEQKS                    R0 K7 ["open-documentation"] ; [+11]
       16 GETIMPORT                        R1 K2 [game]
       18 LOADK                            R3 K8 ["BrowserService"]
       19 NAMECALL                         R1 R1 K4 ["GetService"]
       21 CALL                             R1 2 1
       22 LOADK                            R3 K9 ["https://create.roblox.com/docs/art/validation-errors"]
       23 NAMECALL                         R1 R1 K10 ["OpenBrowserWindow"]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 1
       27 LOADB                            R2 0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K8 ["getFFlagAQVFollowup"]
       38 CALL                             R12 0 1
       39 JUMPIFNOT                        R12 ; [+6]
       40 GETTABLEKS                       R13 R6 K9 ["displayText"]
       42 JUMPIF                           R13 ; [+5]
       43 GETTABLEKS                       R13 R6 K10 ["text"]
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R13 R6 K10 ["text"]
       48 GETTABLEKS                       R14 R6 K11 ["icon"]
       50 JUMPIFNOTEQKNIL                  R14 ; [+2]
       52 LOADB                            R15 0 +1
       53 LOADB                            R15 1
       54 LOADN                            R16 3
       55 JUMPIFNOT                        R15 ; [+1]
       56 ADDK                             R16 R16 K12 [1]
       57 SUBK                             R17 R16 K12 [1]
       58 ADDK                             R21 R11 K14 [12]
       59 JUMPIFNOT                        R15 ; [+2]
       60 LOADN                            R22 14
       61 JUMP                             ; [+1]
       62 LOADN                            R22 0
       63 ADD                              R20 R21 R22
       64 ADDK                             R19 R20 K13 [32]
       65 MULK                             R20 R17 K15 [5]
       66 ADD                              R18 R19 R20
       67 LOADB                            R19 0
       68 NEWCLOSURE                       R21 P0
       69 CAPTURE                          REF R19
       70 FASTPCALL                        pcall 1 ; [+2]
       71 GETIMPORT                        R20 K17 [pcall]
       73 CALL                             R20 1 0
       74 NEWTABLE                         R20 4 0
       76 GETUPVAL                         R21 0
       77 GETTABLEKS                       R21 R21 K18 ["createElement"]
       79 GETUPVAL                         R22 3
       80 DUPTABLE                         R23 K21 [{["LayoutOrder"] = 1, ["Size"]}]
       81 GETIMPORT                        R24 K24 [UDim2.fromOffset]
       83 MOVE                             R25 R11
       84 LOADN                            R26 0
       85 CALL                             R24 2 1
       86 SETTABLEKS                       R24 R23 K20 ["Size"]
       88 CALL                             R21 2 1
       89 SETTABLEKS                       R21 R20 K25 ["Spacer"]
       91 JUMPIFNOT                        R8 ; [+67]
       92 GETUPVAL                         R21 0
       93 GETTABLEKS                       R21 R21 K18 ["createElement"]
       95 LOADK                            R22 K26 ["ImageButton"]
       96 NEWTABLE                         R23 16 0
       98 LOADN                            R24 2
       99 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      101 GETIMPORT                        R24 K24 [UDim2.fromOffset]
      103 LOADN                            R25 12
      104 LOADN                            R26 12
      105 CALL                             R24 2 1
      106 SETTABLEKS                       R24 R23 K20 ["Size"]
      108 LOADN                            R24 1
      109 SETTABLEKS                       R24 R23 K27 ["BackgroundTransparency"]
      111 LOADK                            R24 K28 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      112 SETTABLEKS                       R24 R23 K29 ["Image"]
      114 GETTABLEKS                       R24 R5 K30 ["Color"]
      116 GETTABLEKS                       R24 R24 K31 ["Content"]
      118 GETTABLEKS                       R24 R24 K32 ["Default"]
      120 GETTABLEKS                       R24 R24 K33 ["Color3"]
      122 SETTABLEKS                       R24 R23 K34 ["ImageColor3"]
      124 GETTABLEKS                       R24 R5 K30 ["Color"]
      126 GETTABLEKS                       R24 R24 K31 ["Content"]
      128 GETTABLEKS                       R24 R24 K32 ["Default"]
      130 GETTABLEKS                       R24 R24 K35 ["Transparency"]
      132 SETTABLEKS                       R24 R23 K36 ["ImageTransparency"]
      134 GETIMPORT                        R24 K39 [Vector2.new]
      136 LOADN                            R25 12
      137 LOADN                            R26 12
      138 CALL                             R24 2 1
      139 SETTABLEKS                       R24 R23 K40 ["ImageRectSize"]
      141 JUMPIFNOT                        R9 ; [+2]
      142 GETUPVAL                         R24 4
      143 JUMP                             ; [+1]
      144 GETUPVAL                         R24 5
      145 SETTABLEKS                       R24 R23 K41 ["ImageRectOffset"]
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R24 R24 K42 ["Event"]
      150 GETTABLEKS                       R24 R24 K43 ["Activated"]
      152 NEWCLOSURE                       R25 P1
      153 CAPTURE                          VAL R0
      154 SETTABLE                         R25 R23 R24
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K44 ["Toggle"]
      158 JUMP                             ; [+15]
      159 GETUPVAL                         R21 0
      160 GETTABLEKS                       R21 R21 K18 ["createElement"]
      162 GETUPVAL                         R22 3
      163 DUPTABLE                         R23 K46 [{["LayoutOrder"] = 2, ["Size"]}]
      164 GETIMPORT                        R24 K24 [UDim2.fromOffset]
      166 LOADN                            R25 12
      167 LOADN                            R26 12
      168 CALL                             R24 2 1
      169 SETTABLEKS                       R24 R23 K20 ["Size"]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K44 ["Toggle"]
      174 JUMPIFNOT                        R15 ; [+23]
      175 GETUPVAL                         R21 0
      176 GETTABLEKS                       R21 R21 K18 ["createElement"]
      178 GETUPVAL                         R22 6
      179 DUPTABLE                         R23 K48 [{["LayoutOrder"] = 3, ["Image"], ["Size"]}]
      180 JUMPIFNOT                        R19 ; [+6]
      181 GETTABLEKS                       R25 R14 K49 ["LightImage"]
      183 JUMPIFNOT                        R25 ; [+3]
      184 GETTABLEKS                       R24 R14 K49 ["LightImage"]
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R24 R14 K29 ["Image"]
      189 SETTABLEKS                       R24 R23 K29 ["Image"]
      191 GETTABLEKS                       R24 R14 K20 ["Size"]
      193 SETTABLEKS                       R24 R23 K20 ["Size"]
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K50 ["LeftIcon"]
      198 GETUPVAL                         R21 0
      199 GETTABLEKS                       R21 R21 K18 ["createElement"]
      201 GETUPVAL                         R22 7
      202 DUPTABLE                         R23 K58 [{["tag"] = "text-body-small text-align-x-left content-default", ["Text"], ["TextWrapped"] = True, ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 4}]
      203 ORK                              R24 R13 K59 [""]
      204 SETTABLEKS                       R24 R23 K53 ["Text"]
      206 GETIMPORT                        R24 K60 [UDim2.new]
      208 LOADN                            R25 1
      209 MINUS                            R26 R18
      210 LOADN                            R27 0
      211 LOADN                            R28 0
      212 CALL                             R24 4 1
      213 SETTABLEKS                       R24 R23 K20 ["Size"]
      215 GETIMPORT                        R24 K63 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R24 R23 K56 ["AutomaticSize"]
      219 CALL                             R21 2 1
      220 SETTABLEKS                       R21 R20 K64 ["Label"]
      222 OR                               R21 R1 R3
      223 LOADN                            R22 1
      224 GETIMPORT                        R23 K65 [Color3.new]
      226 LOADN                            R24 0
      227 LOADN                            R25 0
      228 LOADN                            R26 0
      229 CALL                             R23 3 1
      230 NEWCLOSURE                       R25 P2
      231 CAPTURE                          REF R23
      232 CAPTURE                          VAL R10
      233 CAPTURE                          REF R22
      234 CAPTURE                          VAL R1
      235 FASTPCALL                        pcall 1 ; [+2]
      236 GETIMPORT                        R24 K17 [pcall]
      238 CALL                             R24 1 0
      239 JUMPIF                           R10 ; [+1]
      240 JUMPIFNOT                        R1 ; [+1]
      241 LOADN                            R22 0
      242 GETUPVAL                         R24 0
      243 GETTABLEKS                       R24 R24 K18 ["createElement"]
      245 LOADK                            R25 K66 ["TextButton"]
      246 NEWTABLE                         R26 16 0
      248 GETTABLEKS                       R27 R0 K67 ["Index"]
      250 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      252 GETTABLEKS                       R27 R0 K68 ["Position"]
      254 SETTABLEKS                       R27 R26 K68 ["Position"]
      256 GETTABLEKS                       R27 R0 K20 ["Size"]
      258 JUMPIF                           R27 ; [+7]
      259 GETIMPORT                        R27 K60 [UDim2.new]
      261 LOADN                            R28 1
      262 LOADN                            R29 0
      263 LOADN                            R30 0
      264 LOADN                            R31 20
      265 CALL                             R27 4 1
      266 SETTABLEKS                       R27 R26 K20 ["Size"]
      268 GETIMPORT                        R27 K63 [Enum.AutomaticSize.Y]
      270 SETTABLEKS                       R27 R26 K56 ["AutomaticSize"]
      272 SETTABLEKS                       R23 R26 K69 ["BackgroundColor3"]
      274 SETTABLEKS                       R22 R26 K27 ["BackgroundTransparency"]
      276 LOADN                            R27 0
      277 SETTABLEKS                       R27 R26 K70 ["BorderSizePixel"]
      279 LOADK                            R27 K59 [""]
      280 SETTABLEKS                       R27 R26 K53 ["Text"]
      282 LOADB                            R27 0
      283 SETTABLEKS                       R27 R26 K71 ["AutoButtonColor"]
      285 GETUPVAL                         R27 0
      286 GETTABLEKS                       R27 R27 K42 ["Event"]
      288 GETTABLEKS                       R27 R27 K43 ["Activated"]
      290 NEWCLOSURE                       R28 P3
      291 CAPTURE                          VAL R0
      292 SETTABLE                         R28 R26 R27
      293 GETUPVAL                         R27 0
      294 GETTABLEKS                       R27 R27 K42 ["Event"]
      296 GETTABLEKS                       R27 R27 K72 ["MouseEnter"]
      298 NEWCLOSURE                       R28 P4
      299 CAPTURE                          VAL R2
      300 SETTABLE                         R28 R26 R27
      301 GETUPVAL                         R27 0
      302 GETTABLEKS                       R27 R27 K42 ["Event"]
      304 GETTABLEKS                       R27 R27 K73 ["MouseLeave"]
      306 NEWCLOSURE                       R28 P5
      307 CAPTURE                          VAL R2
      308 SETTABLE                         R28 R26 R27
      309 DUPTABLE                         R27 K75 [{"Content", "Menu"}]
      310 GETUPVAL                         R28 0
      311 GETTABLEKS                       R28 R28 K18 ["createElement"]
      313 GETUPVAL                         R29 3
      314 NEWTABLE                         R30 4 0
      316 GETIMPORT                        R31 K60 [UDim2.new]
      318 LOADN                            R32 1
      319 LOADN                            R33 0
      320 LOADN                            R34 0
      321 LOADN                            R35 20
      322 CALL                             R31 4 1
      323 SETTABLEKS                       R31 R30 K20 ["Size"]
      325 GETIMPORT                        R31 K63 [Enum.AutomaticSize.Y]
      327 SETTABLEKS                       R31 R30 K56 ["AutomaticSize"]
      329 GETUPVAL                         R31 0
      330 GETTABLEKS                       R31 R31 K76 ["Tag"]
      332 LOADK                            R32 K77 ["X-RowS X-Top"]
      333 SETTABLE                         R32 R30 R31
      334 MOVE                             R31 R20
      335 CALL                             R28 3 1
      336 SETTABLEKS                       R28 R27 K31 ["Content"]
      338 JUMPIFNOT                        R21 ; [+120]
      339 GETUPVAL                         R28 0
      340 GETTABLEKS                       R28 R28 K18 ["createElement"]
      342 LOADK                            R29 K78 ["Frame"]
      343 DUPTABLE                         R30 K81 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      344 JUMPIFNOT                        R12 ; [+6]
      345 GETIMPORT                        R31 K39 [Vector2.new]
      347 LOADN                            R32 1
      348 LOADN                            R33 0
      349 CALL                             R31 2 1
      350 JUMP                             ; [+5]
      351 GETIMPORT                        R31 K39 [Vector2.new]
      353 LOADN                            R32 1
      354 LOADK                            R33 K82 [0.5]
      355 CALL                             R31 2 1
      356 SETTABLEKS                       R31 R30 K79 ["AnchorPoint"]
      358 JUMPIFNOT                        R12 ; [+6]
      359 GETIMPORT                        R31 K84 [UDim2.fromScale]
      361 LOADN                            R32 1
      362 LOADN                            R33 0
      363 CALL                             R31 2 1
      364 JUMP                             ; [+5]
      365 GETIMPORT                        R31 K84 [UDim2.fromScale]
      367 LOADN                            R32 1
      368 LOADK                            R33 K82 [0.5]
      369 CALL                             R31 2 1
      370 SETTABLEKS                       R31 R30 K68 ["Position"]
      372 GETIMPORT                        R31 K24 [UDim2.fromOffset]
      374 LOADN                            R32 32
      375 LOADN                            R33 20
      376 CALL                             R31 2 1
      377 SETTABLEKS                       R31 R30 K20 ["Size"]
      379 DUPTABLE                         R31 K86 [{"OptionsMenu"}]
      380 GETUPVAL                         R32 0
      381 GETTABLEKS                       R32 R32 K18 ["createElement"]
      383 GETUPVAL                         R33 8
      384 DUPTABLE                         R34 K94 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      385 SETTABLEKS                       R3 R34 K87 ["isOpen"]
      387 GETUPVAL                         R35 9
      388 GETTABLEKS                       R36 R0 K95 ["localization"]
      390 CALL                             R35 1 1
      391 SETTABLEKS                       R35 R34 K88 ["items"]
      393 JUMPIFNOT                        R12 ; [+4]
      394 GETUPVAL                         R35 10
      395 GETTABLEKS                       R35 R35 K96 ["XSmall"]
      397 JUMP                             ; [+3]
      398 GETUPVAL                         R35 10
      399 GETTABLEKS                       R35 R35 K97 ["Small"]
      401 SETTABLEKS                       R35 R34 K89 ["size"]
      403 GETUPVAL                         R35 11
      404 GETTABLEKS                       R35 R35 K98 ["Bottom"]
      406 SETTABLEKS                       R35 R34 K90 ["side"]
      408 GETUPVAL                         R35 12
      409 GETTABLEKS                       R35 R35 K99 ["End"]
      411 SETTABLEKS                       R35 R34 K91 ["align"]
      413 NEWCLOSURE                       R35 P6
      414 CAPTURE                          VAL R4
      415 SETTABLEKS                       R35 R34 K92 ["onPressedOutside"]
      417 NEWCLOSURE                       R35 P7
      418 CAPTURE                          VAL R13
      419 CAPTURE                          VAL R4
      420 SETTABLEKS                       R35 R34 K93 ["onActivated"]
      422 DUPTABLE                         R35 K101 [{"Button"}]
      423 GETUPVAL                         R36 0
      424 GETTABLEKS                       R36 R36 K18 ["createElement"]
      426 GETUPVAL                         R37 13
      427 DUPTABLE                         R38 K105 [{["icon"], ["testId"] = "aqv-row-overflow", ["onActivated"], ["size"], ["variant"]}]
      428 DUPTABLE                         R39 K108 [{["name"] = "three-dots-vertical"}]
      429 SETTABLEKS                       R39 R38 K11 ["icon"]
      431 NEWCLOSURE                       R39 P8
      432 CAPTURE                          VAL R4
      433 CAPTURE                          VAL R3
      434 SETTABLEKS                       R39 R38 K93 ["onActivated"]
      436 JUMPIFNOT                        R12 ; [+4]
      437 GETUPVAL                         R39 10
      438 GETTABLEKS                       R39 R39 K96 ["XSmall"]
      440 JUMP                             ; [+3]
      441 GETUPVAL                         R39 10
      442 GETTABLEKS                       R39 R39 K97 ["Small"]
      444 SETTABLEKS                       R39 R38 K89 ["size"]
      446 GETUPVAL                         R39 14
      447 GETTABLEKS                       R39 R39 K109 ["Utility"]
      449 SETTABLEKS                       R39 R38 K104 ["variant"]
      451 CALL                             R36 2 1
      452 SETTABLEKS                       R36 R35 K100 ["Button"]
      454 CALL                             R32 3 1
      455 SETTABLEKS                       R32 R31 K85 ["OptionsMenu"]
      457 CALL                             R28 3 1
      458 JUMP                             ; [+1]
      459 LOADNIL                          R28
      460 SETTABLEKS                       R28 R27 K74 ["Menu"]
      462 CALL                             R24 3 -1
      463 CLOSEUPVALS                      R19
      464 RETURN                           R24 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K13 ["Text"]
       39 GETTABLEKS                       R6 R3 K14 ["IconButton"]
       41 GETTABLEKS                       R7 R3 K15 ["Menu"]
       43 GETTABLEKS                       R8 R3 K16 ["Enums"]
       45 GETTABLEKS                       R8 R8 K17 ["InputSize"]
       47 GETTABLEKS                       R9 R3 K16 ["Enums"]
       49 GETTABLEKS                       R9 R9 K18 ["ButtonVariant"]
       51 GETTABLEKS                       R10 R3 K16 ["Enums"]
       53 GETTABLEKS                       R10 R10 K19 ["PopoverSide"]
       55 GETTABLEKS                       R11 R3 K16 ["Enums"]
       57 GETTABLEKS                       R11 R11 K20 ["PopoverAlign"]
       59 GETTABLEKS                       R12 R3 K21 ["Hooks"]
       61 GETTABLEKS                       R12 R12 K22 ["useTokens"]
       63 GETTABLEKS                       R13 R2 K23 ["UI"]
       65 GETTABLEKS                       R13 R13 K24 ["Pane"]
       67 GETTABLEKS                       R14 R2 K23 ["UI"]
       69 GETTABLEKS                       R14 R14 K25 ["Image"]
       71 GETIMPORT                        R15 K28 [Vector2.new]
       73 LOADN                            R16 24
       74 LOADN                            R17 0
       75 CALL                             R15 2 1
       76 GETIMPORT                        R16 K28 [Vector2.new]
       78 LOADN                            R17 12
       79 LOADN                            R18 0
       80 CALL                             R16 2 1
       81 DUPCLOSURE                       R17 K29 [PROTO_1]
       82 CAPTURE                          VAL R4
       83 DUPCLOSURE                       R18 K30 [PROTO_11]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R9
       99 RETURN                           R18 1
