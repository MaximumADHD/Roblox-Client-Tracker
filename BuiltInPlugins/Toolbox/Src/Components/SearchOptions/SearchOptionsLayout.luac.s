PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Modal"]
        5 GETTABLEKS                       R1 R1 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Modal"]
        5 GETTABLEKS                       R1 R1 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnReset"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["search"]
        6 GETTABLEKS                       R2 R0 K2 ["GetSearchOptions"]
        8 CALL                             R2 0 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["Settings"]
        9 LOADK                            R5 K4 ["Plugin"]
       10 NAMECALL                         R3 R3 K5 ["get"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R1 K6 ["searchWithOptions"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 MOVE                             R7 R0
       18 CALL                             R4 3 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["cancel"]
       22 CALL                             R4 0 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"contentSize"}]
        2 SETTABLEKS                       R0 R3 K0 ["contentSize"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["createRef"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R0 K2 ["layoutRef"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K3 ["cancel"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K4 ["mouseEnter"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K5 ["mouseLeave"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K6 ["onReset"]
       26 NEWCLOSURE                       R2 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K7 ["onSubmit"]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K8 ["search"]
       34 NEWCLOSURE                       R2 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K9 ["updateContentsSize"]
       38 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R2 K5 ["contentSize"]
       12 GETTABLEKS                       R7 R5 K6 ["searchOptions"]
       14 LOADK                            R10 K7 ["General"]
       15 LOADK                            R11 K8 ["SearchOptionsDone"]
       16 NAMECALL                         R8 R4 K9 ["getText"]
       18 CALL                             R8 3 1
       19 GETUPVAL                         R9 0
       20 MOVE                             R10 R8
       21 LOADNIL                          R11
       22 LOADNIL                          R12
       23 GETIMPORT                        R13 K12 [Vector2.new]
       25 LOADN                            R14 0
       26 LOADN                            R15 0
       27 CALL                             R13 2 -1
       28 CALL                             R9 -1 1
       29 LOADB                            R10 1
       30 GETIMPORT                        R11 K14 [UDim2.new]
       32 LOADN                            R12 1
       33 LOADN                            R13 0
       34 LOADN                            R14 1
       35 LOADN                            R15 0
       36 CALL                             R11 4 1
       37 JUMPIFNOT                        R6 ; [+19]
       38 GETTABLEKS                       R13 R3 K15 ["Y"]
       40 GETUPVAL                         R15 1
       41 ADDK                             R14 R15 K16 [40]
       42 SUB                              R12 R13 R14
       43 GETTABLEKS                       R14 R6 K15 ["Y"]
       45 ADDK                             R13 R14 K17 [42]
       46 JUMPIFNOTLT                      R13 R12 ; [+10]
       48 GETIMPORT                        R14 K14 [UDim2.new]
       50 LOADN                            R15 1
       51 LOADN                            R16 0
       52 LOADN                            R17 0
       53 MOVE                             R18 R13
       54 CALL                             R14 4 1
       55 MOVE                             R11 R14
       56 LOADB                            R10 0
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R12 R12 K11 ["new"]
       60 CALL                             R12 0 1
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K18 ["createElement"]
       64 GETUPVAL                         R14 4
       65 DUPTABLE                         R15 K20 [{"Priority"}]
       66 LOADN                            R16 2
       67 SETTABLEKS                       R16 R15 K19 ["Priority"]
       69 DUPTABLE                         R16 K22 [{"ClickEventDetectFrame"}]
       70 GETUPVAL                         R17 3
       71 GETTABLEKS                       R17 R17 K18 ["createElement"]
       73 LOADK                            R18 K23 ["ImageButton"]
       74 NEWTABLE                         R19 8 0
       76 LOADB                            R20 0
       77 SETTABLEKS                       R20 R19 K24 ["AutoButtonColor"]
       79 LOADK                            R20 K25 [0.25]
       80 SETTABLEKS                       R20 R19 K26 ["BackgroundTransparency"]
       82 GETUPVAL                         R20 5
       83 SETTABLEKS                       R20 R19 K27 ["BackgroundColor3"]
       85 GETIMPORT                        R20 K29 [UDim2.fromScale]
       87 LOADN                            R21 1
       88 LOADN                            R22 1
       89 CALL                             R20 2 1
       90 SETTABLEKS                       R20 R19 K30 ["Size"]
       92 LOADN                            R20 10
       93 SETTABLEKS                       R20 R19 K31 ["ZIndex"]
       95 GETUPVAL                         R20 3
       96 GETTABLEKS                       R20 R20 K32 ["Event"]
       98 GETTABLEKS                       R20 R20 K33 ["Activated"]
      100 GETTABLEKS                       R21 R0 K34 ["cancel"]
      102 SETTABLE                         R21 R19 R20
      103 DUPTABLE                         R20 K36 [{"MainPositioning"}]
      104 GETUPVAL                         R21 3
      105 GETTABLEKS                       R21 R21 K18 ["createElement"]
      107 GETUPVAL                         R22 6
      108 GETUPVAL                         R23 7
      109 GETTABLEKS                       R23 R23 K37 ["join"]
      111 DUPTABLE                         R24 K40 [{"AnchorPoint", "Position", "Size"}]
      112 GETIMPORT                        R25 K12 [Vector2.new]
      114 LOADN                            R26 1
      115 LOADN                            R27 0
      116 CALL                             R25 2 1
      117 SETTABLEKS                       R25 R24 K38 ["AnchorPoint"]
      119 GETIMPORT                        R25 K14 [UDim2.new]
      121 LOADN                            R26 1
      122 LOADN                            R27 252
      123 LOADN                            R28 0
      124 GETUPVAL                         R30 1
      125 ADDK                             R29 R30 K41 [4]
      126 CALL                             R25 4 1
      127 SETTABLEKS                       R25 R24 K39 ["Position"]
      129 GETIMPORT                        R25 K14 [UDim2.new]
      131 LOADN                            R26 0
      132 GETUPVAL                         R27 8
      133 GETTABLEKS                       R27 R27 K42 ["TOOLBOX_MIN_WIDTH"]
      135 LOADN                            R28 1
      136 GETUPVAL                         R32 1
      137 ADDK                             R31 R32 K43 [8]
      138 ADDK                             R30 R31 K17 [42]
      139 MINUS                            R29 R30
      140 CALL                             R25 4 1
      141 SETTABLEKS                       R25 R24 K30 ["Size"]
      143 GETTABLEKS                       R25 R1 K44 ["WrapperProps"]
      145 CALL                             R23 2 1
      146 DUPTABLE                         R24 K46 [{"Contents"}]
      147 GETUPVAL                         R25 3
      148 GETTABLEKS                       R25 R25 K18 ["createElement"]
      150 GETUPVAL                         R26 6
      151 NEWTABLE                         R27 8 0
      153 GETTABLEKS                       R28 R7 K47 ["background"]
      155 SETTABLEKS                       R28 R27 K48 ["BackgroundColor"]
      157 DUPCLOSURE                       R28 K49 [PROTO_8]
      158 SETTABLEKS                       R28 R27 K50 ["OnClick"]
      160 SETTABLEKS                       R11 R27 K30 ["Size"]
      162 LOADK                            R28 K51 ["BorderBox"]
      163 SETTABLEKS                       R28 R27 K52 ["Style"]
      165 GETUPVAL                         R28 3
      166 GETTABLEKS                       R28 R28 K32 ["Event"]
      168 GETTABLEKS                       R28 R28 K53 ["MouseEnter"]
      170 GETTABLEKS                       R29 R0 K54 ["mouseEnter"]
      172 SETTABLE                         R29 R27 R28
      173 GETUPVAL                         R28 3
      174 GETTABLEKS                       R28 R28 K32 ["Event"]
      176 GETTABLEKS                       R28 R28 K55 ["MouseLeave"]
      178 GETTABLEKS                       R29 R0 K56 ["mouseLeave"]
      180 SETTABLE                         R29 R27 R28
      181 DUPTABLE                         R28 K59 [{"Container", "BottomButtonsContainer"}]
      182 GETUPVAL                         R29 3
      183 GETTABLEKS                       R29 R29 K18 ["createElement"]
      185 GETUPVAL                         R30 9
      186 DUPTABLE                         R31 K64 [{"AutoSizeCanvas", "AutoSizeLayoutOptions", "Layout", "OnCanvasResize", "Position", "Size"}]
      187 LOADB                            R32 1
      188 SETTABLEKS                       R32 R31 K60 ["AutoSizeCanvas"]
      190 DUPTABLE                         R32 K66 [{"SortOrder"}]
      191 GETIMPORT                        R33 K69 [Enum.SortOrder.LayoutOrder]
      193 SETTABLEKS                       R33 R32 K65 ["SortOrder"]
      195 SETTABLEKS                       R32 R31 K61 ["AutoSizeLayoutOptions"]
      197 GETIMPORT                        R32 K72 [Enum.FillDirection.Vertical]
      199 SETTABLEKS                       R32 R31 K62 ["Layout"]
      201 GETTABLEKS                       R32 R0 K73 ["updateContentsSize"]
      203 SETTABLEKS                       R32 R31 K63 ["OnCanvasResize"]
      205 GETIMPORT                        R32 K14 [UDim2.new]
      207 LOADN                            R33 0
      208 LOADN                            R34 0
      209 LOADN                            R35 0
      210 LOADN                            R36 0
      211 CALL                             R32 4 1
      212 SETTABLEKS                       R32 R31 K39 ["Position"]
      214 GETIMPORT                        R32 K14 [UDim2.new]
      216 LOADN                            R33 1
      217 LOADN                            R34 0
      218 LOADN                            R35 1
      219 LOADN                            R36 214
      220 CALL                             R32 4 1
      221 SETTABLEKS                       R32 R31 K30 ["Size"]
      223 DUPTABLE                         R32 K77 [{"Padding", "Content", "ExtraPadding"}]
      224 GETUPVAL                         R33 3
      225 GETTABLEKS                       R33 R33 K18 ["createElement"]
      227 LOADK                            R34 K78 ["UIPadding"]
      228 DUPTABLE                         R35 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      229 GETIMPORT                        R36 K85 [UDim.new]
      231 LOADN                            R37 0
      232 LOADN                            R38 10
      233 CALL                             R36 2 1
      234 SETTABLEKS                       R36 R35 K79 ["PaddingLeft"]
      236 GETIMPORT                        R36 K85 [UDim.new]
      238 LOADN                            R37 0
      239 LOADN                            R38 10
      240 CALL                             R36 2 1
      241 SETTABLEKS                       R36 R35 K80 ["PaddingRight"]
      243 GETIMPORT                        R36 K85 [UDim.new]
      245 LOADN                            R37 0
      246 LOADN                            R38 10
      247 CALL                             R36 2 1
      248 SETTABLEKS                       R36 R35 K81 ["PaddingTop"]
      250 GETIMPORT                        R36 K85 [UDim.new]
      252 LOADN                            R37 0
      253 LOADN                            R38 20
      254 CALL                             R36 2 1
      255 SETTABLEKS                       R36 R35 K82 ["PaddingBottom"]
      257 CALL                             R33 2 1
      258 SETTABLEKS                       R33 R32 K74 ["Padding"]
      260 GETUPVAL                         R33 3
      261 GETTABLEKS                       R33 R33 K18 ["createElement"]
      263 GETUPVAL                         R34 6
      264 DUPTABLE                         R35 K89 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing", "Size"}]
      265 GETIMPORT                        R36 K91 [Enum.AutomaticSize.XY]
      267 SETTABLEKS                       R36 R35 K86 ["AutomaticSize"]
      269 GETIMPORT                        R36 K93 [Enum.HorizontalAlignment.Left]
      271 SETTABLEKS                       R36 R35 K87 ["HorizontalAlignment"]
      273 GETIMPORT                        R36 K72 [Enum.FillDirection.Vertical]
      275 SETTABLEKS                       R36 R35 K62 ["Layout"]
      277 LOADN                            R36 0
      278 SETTABLEKS                       R36 R35 K88 ["Spacing"]
      280 GETIMPORT                        R36 K29 [UDim2.fromScale]
      282 LOADN                            R37 1
      283 LOADN                            R38 0
      284 CALL                             R36 2 1
      285 SETTABLEKS                       R36 R35 K30 ["Size"]
      287 GETTABLEKS                       R37 R0 K0 ["props"]
      289 GETUPVAL                         R38 3
      290 GETTABLEKS                       R38 R38 K94 ["Children"]
      292 GETTABLE                         R36 R37 R38
      293 CALL                             R33 3 1
      294 SETTABLEKS                       R33 R32 K75 ["Content"]
      296 GETUPVAL                         R33 3
      297 GETTABLEKS                       R33 R33 K18 ["createElement"]
      299 LOADK                            R34 K95 ["Frame"]
      300 DUPTABLE                         R35 K96 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      301 LOADN                            R36 1
      302 SETTABLEKS                       R36 R35 K26 ["BackgroundTransparency"]
      304 GETIMPORT                        R36 K14 [UDim2.new]
      306 LOADN                            R37 1
      307 LOADN                            R38 0
      308 LOADN                            R39 0
      309 LOADN                            R40 10
      310 CALL                             R36 4 1
      311 SETTABLEKS                       R36 R35 K30 ["Size"]
      313 NAMECALL                         R36 R12 K97 ["getNextOrder"]
      315 CALL                             R36 1 1
      316 SETTABLEKS                       R36 R35 K68 ["LayoutOrder"]
      318 CALL                             R33 2 1
      319 SETTABLEKS                       R33 R32 K76 ["ExtraPadding"]
      321 CALL                             R29 3 1
      322 SETTABLEKS                       R29 R28 K57 ["Container"]
      324 GETUPVAL                         R29 3
      325 GETTABLEKS                       R29 R29 K18 ["createElement"]
      327 GETUPVAL                         R30 6
      328 DUPTABLE                         R31 K98 [{"Padding", "Position", "Spacing", "Size", "ZIndex"}]
      329 DUPTABLE                         R32 K100 [{"Left", "Right"}]
      330 LOADN                            R33 10
      331 SETTABLEKS                       R33 R32 K92 ["Left"]
      333 LOADN                            R33 10
      334 SETTABLEKS                       R33 R32 K99 ["Right"]
      336 SETTABLEKS                       R32 R31 K74 ["Padding"]
      338 GETIMPORT                        R32 K14 [UDim2.new]
      340 LOADN                            R33 0
      341 LOADN                            R34 0
      342 LOADN                            R35 1
      343 LOADN                            R36 214
      344 CALL                             R32 4 1
      345 SETTABLEKS                       R32 R31 K39 ["Position"]
      347 LOADN                            R32 20
      348 SETTABLEKS                       R32 R31 K88 ["Spacing"]
      350 GETIMPORT                        R32 K14 [UDim2.new]
      352 LOADN                            R33 1
      353 LOADN                            R34 0
      354 LOADN                            R35 0
      355 LOADN                            R36 42
      356 CALL                             R32 4 1
      357 SETTABLEKS                       R32 R31 K30 ["Size"]
      359 LOADN                            R32 3
      360 SETTABLEKS                       R32 R31 K31 ["ZIndex"]
      362 DUPTABLE                         R32 K103 [{"GradientOverlay", "Footer"}]
      363 MOVE                             R33 R10
      364 JUMPIFNOT                        R33 ; [+83]
      365 GETUPVAL                         R33 3
      366 GETTABLEKS                       R33 R33 K18 ["createElement"]
      368 LOADK                            R34 K95 ["Frame"]
      369 DUPTABLE                         R35 K105 [{"LayoutOrder", "Size", "Position", "BackgroundColor3", "BorderColor3"}]
      370 NAMECALL                         R36 R12 K97 ["getNextOrder"]
      372 CALL                             R36 1 1
      373 SETTABLEKS                       R36 R35 K68 ["LayoutOrder"]
      375 GETIMPORT                        R36 K14 [UDim2.new]
      377 LOADN                            R37 1
      378 LOADN                            R38 248
      379 LOADN                            R39 0
      380 LOADN                            R40 20
      381 CALL                             R36 4 1
      382 SETTABLEKS                       R36 R35 K30 ["Size"]
      384 GETIMPORT                        R36 K14 [UDim2.new]
      386 LOADN                            R37 0
      387 LOADN                            R38 0
      388 LOADN                            R39 0
      389 LOADN                            R40 236
      390 CALL                             R36 4 1
      391 SETTABLEKS                       R36 R35 K39 ["Position"]
      393 GETIMPORT                        R36 K107 [Color3.new]
      395 LOADN                            R37 1
      396 LOADN                            R38 1
      397 LOADN                            R39 1
      398 CALL                             R36 3 1
      399 SETTABLEKS                       R36 R35 K27 ["BackgroundColor3"]
      401 GETIMPORT                        R36 K107 [Color3.new]
      403 LOADN                            R37 1
      404 LOADN                            R38 1
      405 LOADN                            R39 1
      406 CALL                             R36 3 1
      407 SETTABLEKS                       R36 R35 K104 ["BorderColor3"]
      409 DUPTABLE                         R36 K109 [{"Gradient"}]
      410 GETUPVAL                         R37 3
      411 GETTABLEKS                       R37 R37 K18 ["createElement"]
      413 LOADK                            R38 K110 ["UIGradient"]
      414 DUPTABLE                         R39 K114 [{"Color", "Rotation", "Transparency"}]
      415 GETIMPORT                        R40 K116 [ColorSequence.new]
      417 GETTABLEKS                       R41 R7 K47 ["background"]
      419 CALL                             R40 1 1
      420 SETTABLEKS                       R40 R39 K111 ["Color"]
      422 LOADN                            R40 90
      423 SETTABLEKS                       R40 R39 K112 ["Rotation"]
      425 GETIMPORT                        R40 K118 [NumberSequence.new]
      427 NEWTABLE                         R41 0 2
      429 GETIMPORT                        R42 K120 [NumberSequenceKeypoint.new]
      431 LOADN                            R43 0
      432 LOADN                            R44 1
      433 CALL                             R42 2 1
      434 GETIMPORT                        R43 K120 [NumberSequenceKeypoint.new]
      436 LOADN                            R44 1
      437 LOADK                            R45 K25 [0.25]
      438 CALL                             R43 2 -1
      439 SETLIST                          R41 R42 -1 [1]
      441 CALL                             R40 1 1
      442 SETTABLEKS                       R40 R39 K113 ["Transparency"]
      444 CALL                             R37 2 1
      445 SETTABLEKS                       R37 R36 K108 ["Gradient"]
      447 CALL                             R33 3 1
      448 SETTABLEKS                       R33 R32 K101 ["GradientOverlay"]
      450 GETUPVAL                         R33 3
      451 GETTABLEKS                       R33 R33 K18 ["createElement"]
      453 GETUPVAL                         R34 6
      454 DUPTABLE                         R35 K122 [{"AutomaticSize", "AnchorPoint", "HorizontalAlignment", "VerticalAlignment", "Layout", "OnClick", "Padding", "Position", "Size", "Spacing"}]
      455 GETIMPORT                        R36 K123 [Enum.AutomaticSize.Y]
      457 SETTABLEKS                       R36 R35 K86 ["AutomaticSize"]
      459 GETIMPORT                        R36 K12 [Vector2.new]
      461 LOADN                            R37 0
      462 LOADN                            R38 1
      463 CALL                             R36 2 1
      464 SETTABLEKS                       R36 R35 K38 ["AnchorPoint"]
      466 GETIMPORT                        R36 K124 [Enum.HorizontalAlignment.Right]
      468 SETTABLEKS                       R36 R35 K87 ["HorizontalAlignment"]
      470 GETIMPORT                        R36 K126 [Enum.VerticalAlignment.Center]
      472 SETTABLEKS                       R36 R35 K121 ["VerticalAlignment"]
      474 GETIMPORT                        R36 K128 [Enum.FillDirection.Horizontal]
      476 SETTABLEKS                       R36 R35 K62 ["Layout"]
      478 GETTABLEKS                       R36 R0 K129 ["footerButtonClicked"]
      480 SETTABLEKS                       R36 R35 K50 ["OnClick"]
      482 DUPTABLE                         R36 K131 [{"Bottom"}]
      483 LOADN                            R37 8
      484 SETTABLEKS                       R37 R36 K130 ["Bottom"]
      486 SETTABLEKS                       R36 R35 K74 ["Padding"]
      488 GETIMPORT                        R36 K14 [UDim2.new]
      490 LOADN                            R37 0
      491 LOADN                            R38 0
      492 LOADN                            R39 1
      493 LOADN                            R40 0
      494 CALL                             R36 4 1
      495 SETTABLEKS                       R36 R35 K39 ["Position"]
      497 GETIMPORT                        R36 K14 [UDim2.new]
      499 LOADN                            R37 1
      500 LOADN                            R38 0
      501 LOADN                            R39 0
      502 LOADN                            R40 0
      503 CALL                             R36 4 1
      504 SETTABLEKS                       R36 R35 K30 ["Size"]
      506 LOADN                            R36 20
      507 SETTABLEKS                       R36 R35 K88 ["Spacing"]
      509 DUPTABLE                         R36 K134 [{"CancelButton", "ApplyButton"}]
      510 GETUPVAL                         R37 3
      511 GETTABLEKS                       R37 R37 K18 ["createElement"]
      513 GETUPVAL                         R38 10
      514 DUPTABLE                         R39 K136 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text"}]
      515 GETIMPORT                        R40 K91 [Enum.AutomaticSize.XY]
      517 SETTABLEKS                       R40 R39 K86 ["AutomaticSize"]
      519 NAMECALL                         R40 R12 K97 ["getNextOrder"]
      521 CALL                             R40 1 1
      522 SETTABLEKS                       R40 R39 K68 ["LayoutOrder"]
      524 GETTABLEKS                       R40 R0 K137 ["onReset"]
      526 SETTABLEKS                       R40 R39 K50 ["OnClick"]
      528 LOADK                            R42 K7 ["General"]
      529 LOADK                            R43 K138 ["SearchOptionsResetAll"]
      530 NAMECALL                         R40 R4 K9 ["getText"]
      532 CALL                             R40 3 1
      533 SETTABLEKS                       R40 R39 K135 ["Text"]
      535 CALL                             R37 2 1
      536 SETTABLEKS                       R37 R36 K132 ["CancelButton"]
      538 GETUPVAL                         R37 3
      539 GETTABLEKS                       R37 R37 K18 ["createElement"]
      541 GETUPVAL                         R38 11
      542 DUPTABLE                         R39 K139 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
      543 NAMECALL                         R40 R12 K97 ["getNextOrder"]
      545 CALL                             R40 1 1
      546 SETTABLEKS                       R40 R39 K68 ["LayoutOrder"]
      548 GETTABLEKS                       R40 R0 K140 ["onSubmit"]
      550 SETTABLEKS                       R40 R39 K50 ["OnClick"]
      552 LOADK                            R40 K141 ["RoundPrimary"]
      553 SETTABLEKS                       R40 R39 K52 ["Style"]
      555 GETIMPORT                        R40 K143 [UDim2.fromOffset]
      557 GETTABLEKS                       R42 R9 K144 ["X"]
      559 GETUPVAL                         R44 12
      560 GETTABLEKS                       R44 R44 K144 ["X"]
      562 MULK                             R43 R44 K145 [2]
      563 ADD                              R41 R42 R43
      564 GETTABLEKS                       R43 R9 K15 ["Y"]
      566 GETUPVAL                         R45 12
      567 GETTABLEKS                       R45 R45 K15 ["Y"]
      569 MULK                             R44 R45 K145 [2]
      570 ADD                              R42 R43 R44
      571 CALL                             R40 2 1
      572 SETTABLEKS                       R40 R39 K30 ["Size"]
      574 SETTABLEKS                       R8 R39 K135 ["Text"]
      576 DUPTABLE                         R40 K147 [{"HoverArea"}]
      577 GETUPVAL                         R41 3
      578 GETTABLEKS                       R41 R41 K18 ["createElement"]
      580 GETUPVAL                         R42 13
      581 DUPTABLE                         R43 K149 [{"Cursor"}]
      582 LOADK                            R44 K150 ["PointingHand"]
      583 SETTABLEKS                       R44 R43 K148 ["Cursor"]
      585 CALL                             R41 2 1
      586 SETTABLEKS                       R41 R40 K146 ["HoverArea"]
      588 CALL                             R37 3 1
      589 SETTABLEKS                       R37 R36 K133 ["ApplyButton"]
      591 CALL                             R33 3 1
      592 SETTABLEKS                       R33 R32 K102 ["Footer"]
      594 CALL                             R29 3 1
      595 SETTABLEKS                       R29 R28 K58 ["BottomButtonsContainer"]
      597 CALL                             R25 3 1
      598 SETTABLEKS                       R25 R24 K45 ["Contents"]
      600 CALL                             R21 3 1
      601 SETTABLEKS                       R21 R20 K35 ["MainPositioning"]
      603 CALL                             R17 3 1
      604 SETTABLEKS                       R17 R16 K21 ["ClickEventDetectFrame"]
      606 CALL                             R13 3 -1
      607 RETURN                           R13 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Networking"]
       30 GETTABLEKS                       R6 R6 K12 ["Requests"]
       32 GETTABLEKS                       R6 R6 K13 ["SearchWithOptions"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R0 K10 ["Src"]
       37 GETTABLEKS                       R6 R6 K14 ["Util"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R6 K15 ["Constants"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K16 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K17 ["withContext"]
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K10 ["Src"]
       52 GETTABLEKS                       R11 R11 K16 ["ContextServices"]
       54 GETTABLEKS                       R11 R11 K18 ["ModalContext"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R12 R12 K16 ["ContextServices"]
       63 GETTABLEKS                       R12 R12 K19 ["Settings"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Src"]
       70 GETTABLEKS                       R13 R13 K16 ["ContextServices"]
       72 GETTABLEKS                       R13 R13 K20 ["NetworkContext"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R1 K21 ["Dash"]
       79 CALL                             R13 1 1
       80 GETTABLEKS                       R14 R4 K14 ["Util"]
       82 GETTABLEKS                       R14 R14 K22 ["GetTextSize"]
       84 GETTABLEKS                       R15 R4 K14 ["Util"]
       86 GETTABLEKS                       R15 R15 K23 ["LayoutOrderIterator"]
       88 GETTABLEKS                       R16 R4 K24 ["Wrappers"]
       90 GETTABLEKS                       R16 R16 K25 ["withAbsoluteSize"]
       92 GETTABLEKS                       R17 R4 K26 ["UI"]
       94 GETTABLEKS                       R17 R17 K27 ["Button"]
       96 GETTABLEKS                       R18 R4 K26 ["UI"]
       98 GETTABLEKS                       R18 R18 K28 ["HoverArea"]
      100 GETTABLEKS                       R19 R4 K26 ["UI"]
      102 GETTABLEKS                       R19 R19 K29 ["LinkText"]
      104 GETTABLEKS                       R20 R4 K26 ["UI"]
      106 GETTABLEKS                       R20 R20 K30 ["Pane"]
      108 GETTABLEKS                       R21 R4 K26 ["UI"]
      110 GETTABLEKS                       R21 R21 K31 ["ShowOnTop"]
      112 GETTABLEKS                       R22 R4 K26 ["UI"]
      114 GETTABLEKS                       R22 R22 K32 ["ScrollingFrame"]
      116 GETIMPORT                        R23 K35 [Vector2.new]
      118 LOADN                            R24 17
      119 LOADN                            R25 6
      120 CALL                             R23 2 1
      121 GETIMPORT                        R24 K38 [Color3.fromRGB]
      123 LOADN                            R25 0
      124 LOADN                            R26 0
      125 LOADN                            R27 0
      126 CALL                             R24 3 1
      127 GETTABLEKS                       R26 R7 K39 ["TAB_WIDGET_HEIGHT"]
      129 GETTABLEKS                       R27 R7 K40 ["HEADER_HEIGHT"]
      131 ADD                              R25 R26 R27
      132 GETTABLEKS                       R26 R2 K41 ["PureComponent"]
      134 LOADK                            R28 K42 ["SearchOptionsLayout"]
      135 NAMECALL                         R26 R26 K43 ["extend"]
      137 CALL                             R26 2 1
      138 DUPCLOSURE                       R27 K44 [PROTO_7]
      139 CAPTURE                          VAL R2
      140 SETTABLEKS                       R27 R26 K45 ["init"]
      142 DUPCLOSURE                       R27 K46 [PROTO_9]
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R24
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R18
      157 SETTABLEKS                       R27 R26 K47 ["render"]
      159 MOVE                             R27 R9
      160 DUPTABLE                         R28 K52 [{"Localization", "Modal", "Network", "Stylizer", "Settings"}]
      161 GETTABLEKS                       R29 R8 K48 ["Localization"]
      163 SETTABLEKS                       R29 R28 K48 ["Localization"]
      165 SETTABLEKS                       R10 R28 K49 ["Modal"]
      167 SETTABLEKS                       R12 R28 K50 ["Network"]
      169 GETTABLEKS                       R29 R8 K51 ["Stylizer"]
      171 SETTABLEKS                       R29 R28 K51 ["Stylizer"]
      173 SETTABLEKS                       R11 R28 K19 ["Settings"]
      175 CALL                             R27 1 1
      176 MOVE                             R28 R26
      177 CALL                             R27 1 1
      178 MOVE                             R26 R27
      179 DUPCLOSURE                       R27 K53 [PROTO_11]
      180 CAPTURE                          VAL R5
      181 GETTABLEKS                       R28 R3 K54 ["connect"]
      183 LOADNIL                          R29
      184 MOVE                             R30 R27
      185 CALL                             R28 2 1
      186 MOVE                             R29 R26
      187 CALL                             R28 1 1
      188 MOVE                             R26 R28
      189 MOVE                             R28 R16
      190 MOVE                             R29 R26
      191 CALL                             R28 1 -1
      192 RETURN                           R28 -1
