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
       65 DUPTABLE                         R15 K21 [{["Priority"] = 2}]
       66 DUPTABLE                         R16 K23 [{"ClickEventDetectFrame"}]
       67 GETUPVAL                         R17 3
       68 GETTABLEKS                       R17 R17 K18 ["createElement"]
       70 LOADK                            R18 K24 ["ImageButton"]
       71 NEWTABLE                         R19 8 0
       73 LOADB                            R20 0
       74 SETTABLEKS                       R20 R19 K25 ["AutoButtonColor"]
       76 LOADK                            R20 K26 [0.25]
       77 SETTABLEKS                       R20 R19 K27 ["BackgroundTransparency"]
       79 GETUPVAL                         R20 5
       80 SETTABLEKS                       R20 R19 K28 ["BackgroundColor3"]
       82 GETIMPORT                        R20 K30 [UDim2.fromScale]
       84 LOADN                            R21 1
       85 LOADN                            R22 1
       86 CALL                             R20 2 1
       87 SETTABLEKS                       R20 R19 K31 ["Size"]
       89 LOADN                            R20 10
       90 SETTABLEKS                       R20 R19 K32 ["ZIndex"]
       92 GETUPVAL                         R20 3
       93 GETTABLEKS                       R20 R20 K33 ["Event"]
       95 GETTABLEKS                       R20 R20 K34 ["Activated"]
       97 GETTABLEKS                       R21 R0 K35 ["cancel"]
       99 SETTABLE                         R21 R19 R20
      100 DUPTABLE                         R20 K37 [{"MainPositioning"}]
      101 GETUPVAL                         R21 3
      102 GETTABLEKS                       R21 R21 K18 ["createElement"]
      104 GETUPVAL                         R22 6
      105 GETUPVAL                         R23 7
      106 GETTABLEKS                       R23 R23 K38 ["join"]
      108 DUPTABLE                         R24 K41 [{"AnchorPoint", "Position", "Size"}]
      109 GETIMPORT                        R25 K12 [Vector2.new]
      111 LOADN                            R26 1
      112 LOADN                            R27 0
      113 CALL                             R25 2 1
      114 SETTABLEKS                       R25 R24 K39 ["AnchorPoint"]
      116 GETIMPORT                        R25 K14 [UDim2.new]
      118 LOADN                            R26 1
      119 LOADN                            R27 -4
      120 LOADN                            R28 0
      121 GETUPVAL                         R30 1
      122 ADDK                             R29 R30 K42 [4]
      123 CALL                             R25 4 1
      124 SETTABLEKS                       R25 R24 K40 ["Position"]
      126 GETIMPORT                        R25 K14 [UDim2.new]
      128 LOADN                            R26 0
      129 GETUPVAL                         R27 8
      130 GETTABLEKS                       R27 R27 K43 ["TOOLBOX_MIN_WIDTH"]
      132 LOADN                            R28 1
      133 GETUPVAL                         R32 1
      134 ADDK                             R31 R32 K44 [8]
      135 ADDK                             R30 R31 K17 [42]
      136 MINUS                            R29 R30
      137 CALL                             R25 4 1
      138 SETTABLEKS                       R25 R24 K31 ["Size"]
      140 GETTABLEKS                       R25 R1 K45 ["WrapperProps"]
      142 CALL                             R23 2 1
      143 DUPTABLE                         R24 K47 [{"Contents"}]
      144 GETUPVAL                         R25 3
      145 GETTABLEKS                       R25 R25 K18 ["createElement"]
      147 GETUPVAL                         R26 6
      148 NEWTABLE                         R27 8 0
      150 GETTABLEKS                       R28 R7 K48 ["background"]
      152 SETTABLEKS                       R28 R27 K49 ["BackgroundColor"]
      154 DUPCLOSURE                       R28 K50 [PROTO_8]
      155 SETTABLEKS                       R28 R27 K51 ["OnClick"]
      157 SETTABLEKS                       R11 R27 K31 ["Size"]
      159 LOADK                            R28 K52 ["BorderBox"]
      160 SETTABLEKS                       R28 R27 K53 ["Style"]
      162 GETUPVAL                         R28 3
      163 GETTABLEKS                       R28 R28 K33 ["Event"]
      165 GETTABLEKS                       R28 R28 K54 ["MouseEnter"]
      167 GETTABLEKS                       R29 R0 K55 ["mouseEnter"]
      169 SETTABLE                         R29 R27 R28
      170 GETUPVAL                         R28 3
      171 GETTABLEKS                       R28 R28 K33 ["Event"]
      173 GETTABLEKS                       R28 R28 K56 ["MouseLeave"]
      175 GETTABLEKS                       R29 R0 K57 ["mouseLeave"]
      177 SETTABLE                         R29 R27 R28
      178 DUPTABLE                         R28 K60 [{"Container", "BottomButtonsContainer"}]
      179 GETUPVAL                         R29 3
      180 GETTABLEKS                       R29 R29 K18 ["createElement"]
      182 GETUPVAL                         R30 9
      183 DUPTABLE                         R31 K66 [{["AutoSizeCanvas"] = True, ["AutoSizeLayoutOptions"], ["Layout"], ["OnCanvasResize"], ["Position"], ["Size"]}]
      184 DUPTABLE                         R32 K68 [{"SortOrder"}]
      185 GETIMPORT                        R33 K71 [Enum.SortOrder.LayoutOrder]
      187 SETTABLEKS                       R33 R32 K67 ["SortOrder"]
      189 SETTABLEKS                       R32 R31 K63 ["AutoSizeLayoutOptions"]
      191 GETIMPORT                        R32 K74 [Enum.FillDirection.Vertical]
      193 SETTABLEKS                       R32 R31 K64 ["Layout"]
      195 GETTABLEKS                       R32 R0 K75 ["updateContentsSize"]
      197 SETTABLEKS                       R32 R31 K65 ["OnCanvasResize"]
      199 GETIMPORT                        R32 K14 [UDim2.new]
      201 LOADN                            R33 0
      202 LOADN                            R34 0
      203 LOADN                            R35 0
      204 LOADN                            R36 0
      205 CALL                             R32 4 1
      206 SETTABLEKS                       R32 R31 K40 ["Position"]
      208 GETIMPORT                        R32 K14 [UDim2.new]
      210 LOADN                            R33 1
      211 LOADN                            R34 0
      212 LOADN                            R35 1
      213 LOADN                            R36 -42
      214 CALL                             R32 4 1
      215 SETTABLEKS                       R32 R31 K31 ["Size"]
      217 DUPTABLE                         R32 K79 [{"Padding", "Content", "ExtraPadding"}]
      218 GETUPVAL                         R33 3
      219 GETTABLEKS                       R33 R33 K18 ["createElement"]
      221 LOADK                            R34 K80 ["UIPadding"]
      222 DUPTABLE                         R35 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      223 GETIMPORT                        R36 K87 [UDim.new]
      225 LOADN                            R37 0
      226 LOADN                            R38 10
      227 CALL                             R36 2 1
      228 SETTABLEKS                       R36 R35 K81 ["PaddingLeft"]
      230 GETIMPORT                        R36 K87 [UDim.new]
      232 LOADN                            R37 0
      233 LOADN                            R38 10
      234 CALL                             R36 2 1
      235 SETTABLEKS                       R36 R35 K82 ["PaddingRight"]
      237 GETIMPORT                        R36 K87 [UDim.new]
      239 LOADN                            R37 0
      240 LOADN                            R38 10
      241 CALL                             R36 2 1
      242 SETTABLEKS                       R36 R35 K83 ["PaddingTop"]
      244 GETIMPORT                        R36 K87 [UDim.new]
      246 LOADN                            R37 0
      247 LOADN                            R38 20
      248 CALL                             R36 2 1
      249 SETTABLEKS                       R36 R35 K84 ["PaddingBottom"]
      251 CALL                             R33 2 1
      252 SETTABLEKS                       R33 R32 K76 ["Padding"]
      254 GETUPVAL                         R33 3
      255 GETTABLEKS                       R33 R33 K18 ["createElement"]
      257 GETUPVAL                         R34 6
      258 DUPTABLE                         R35 K92 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 0, ["Size"]}]
      259 GETIMPORT                        R36 K94 [Enum.AutomaticSize.XY]
      261 SETTABLEKS                       R36 R35 K88 ["AutomaticSize"]
      263 GETIMPORT                        R36 K96 [Enum.HorizontalAlignment.Left]
      265 SETTABLEKS                       R36 R35 K89 ["HorizontalAlignment"]
      267 GETIMPORT                        R36 K74 [Enum.FillDirection.Vertical]
      269 SETTABLEKS                       R36 R35 K64 ["Layout"]
      271 GETIMPORT                        R36 K30 [UDim2.fromScale]
      273 LOADN                            R37 1
      274 LOADN                            R38 0
      275 CALL                             R36 2 1
      276 SETTABLEKS                       R36 R35 K31 ["Size"]
      278 GETTABLEKS                       R37 R0 K0 ["props"]
      280 GETUPVAL                         R38 3
      281 GETTABLEKS                       R38 R38 K97 ["Children"]
      283 GETTABLE                         R36 R37 R38
      284 CALL                             R33 3 1
      285 SETTABLEKS                       R33 R32 K77 ["Content"]
      287 GETUPVAL                         R33 3
      288 GETTABLEKS                       R33 R33 K18 ["createElement"]
      290 LOADK                            R34 K98 ["Frame"]
      291 DUPTABLE                         R35 K100 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      292 GETIMPORT                        R36 K14 [UDim2.new]
      294 LOADN                            R37 1
      295 LOADN                            R38 0
      296 LOADN                            R39 0
      297 LOADN                            R40 10
      298 CALL                             R36 4 1
      299 SETTABLEKS                       R36 R35 K31 ["Size"]
      301 NAMECALL                         R36 R12 K101 ["getNextOrder"]
      303 CALL                             R36 1 1
      304 SETTABLEKS                       R36 R35 K70 ["LayoutOrder"]
      306 CALL                             R33 2 1
      307 SETTABLEKS                       R33 R32 K78 ["ExtraPadding"]
      309 CALL                             R29 3 1
      310 SETTABLEKS                       R29 R28 K58 ["Container"]
      312 GETUPVAL                         R29 3
      313 GETTABLEKS                       R29 R29 K18 ["createElement"]
      315 GETUPVAL                         R30 6
      316 DUPTABLE                         R31 K104 [{["Padding"], ["Position"], ["Spacing"] = 20, ["Size"], ["ZIndex"] = 3}]
      317 DUPTABLE                         R32 K107 [{["Left"] = 10, ["Right"] = 10}]
      318 SETTABLEKS                       R32 R31 K76 ["Padding"]
      320 GETIMPORT                        R32 K14 [UDim2.new]
      322 LOADN                            R33 0
      323 LOADN                            R34 0
      324 LOADN                            R35 1
      325 LOADN                            R36 -42
      326 CALL                             R32 4 1
      327 SETTABLEKS                       R32 R31 K40 ["Position"]
      329 GETIMPORT                        R32 K14 [UDim2.new]
      331 LOADN                            R33 1
      332 LOADN                            R34 0
      333 LOADN                            R35 0
      334 LOADN                            R36 42
      335 CALL                             R32 4 1
      336 SETTABLEKS                       R32 R31 K31 ["Size"]
      338 DUPTABLE                         R32 K110 [{"GradientOverlay", "Footer"}]
      339 MOVE                             R33 R10
      340 JUMPIFNOT                        R33 ; [+80]
      341 GETUPVAL                         R33 3
      342 GETTABLEKS                       R33 R33 K18 ["createElement"]
      344 LOADK                            R34 K98 ["Frame"]
      345 DUPTABLE                         R35 K112 [{"LayoutOrder", "Size", "Position", "BackgroundColor3", "BorderColor3"}]
      346 NAMECALL                         R36 R12 K101 ["getNextOrder"]
      348 CALL                             R36 1 1
      349 SETTABLEKS                       R36 R35 K70 ["LayoutOrder"]
      351 GETIMPORT                        R36 K14 [UDim2.new]
      353 LOADN                            R37 1
      354 LOADN                            R38 -8
      355 LOADN                            R39 0
      356 LOADN                            R40 20
      357 CALL                             R36 4 1
      358 SETTABLEKS                       R36 R35 K31 ["Size"]
      360 GETIMPORT                        R36 K14 [UDim2.new]
      362 LOADN                            R37 0
      363 LOADN                            R38 0
      364 LOADN                            R39 0
      365 LOADN                            R40 -20
      366 CALL                             R36 4 1
      367 SETTABLEKS                       R36 R35 K40 ["Position"]
      369 GETIMPORT                        R36 K114 [Color3.new]
      371 LOADN                            R37 1
      372 LOADN                            R38 1
      373 LOADN                            R39 1
      374 CALL                             R36 3 1
      375 SETTABLEKS                       R36 R35 K28 ["BackgroundColor3"]
      377 GETIMPORT                        R36 K114 [Color3.new]
      379 LOADN                            R37 1
      380 LOADN                            R38 1
      381 LOADN                            R39 1
      382 CALL                             R36 3 1
      383 SETTABLEKS                       R36 R35 K111 ["BorderColor3"]
      385 DUPTABLE                         R36 K116 [{"Gradient"}]
      386 GETUPVAL                         R37 3
      387 GETTABLEKS                       R37 R37 K18 ["createElement"]
      389 LOADK                            R38 K117 ["UIGradient"]
      390 DUPTABLE                         R39 K122 [{["Color"], ["Rotation"] = 90, ["Transparency"]}]
      391 GETIMPORT                        R40 K124 [ColorSequence.new]
      393 GETTABLEKS                       R41 R7 K48 ["background"]
      395 CALL                             R40 1 1
      396 SETTABLEKS                       R40 R39 K118 ["Color"]
      398 GETIMPORT                        R40 K126 [NumberSequence.new]
      400 NEWTABLE                         R41 0 2
      402 GETIMPORT                        R42 K128 [NumberSequenceKeypoint.new]
      404 LOADN                            R43 0
      405 LOADN                            R44 1
      406 CALL                             R42 2 1
      407 GETIMPORT                        R43 K128 [NumberSequenceKeypoint.new]
      409 LOADN                            R44 1
      410 LOADK                            R45 K26 [0.25]
      411 CALL                             R43 2 -1
      412 SETLIST                          R41 R42 -1 [1]
      414 CALL                             R40 1 1
      415 SETTABLEKS                       R40 R39 K121 ["Transparency"]
      417 CALL                             R37 2 1
      418 SETTABLEKS                       R37 R36 K115 ["Gradient"]
      420 CALL                             R33 3 1
      421 SETTABLEKS                       R33 R32 K108 ["GradientOverlay"]
      423 GETUPVAL                         R33 3
      424 GETTABLEKS                       R33 R33 K18 ["createElement"]
      426 GETUPVAL                         R34 6
      427 DUPTABLE                         R35 K130 [{["AutomaticSize"], ["AnchorPoint"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Layout"], ["OnClick"], ["Padding"], ["Position"], ["Size"], ["Spacing"] = 20}]
      428 GETIMPORT                        R36 K131 [Enum.AutomaticSize.Y]
      430 SETTABLEKS                       R36 R35 K88 ["AutomaticSize"]
      432 GETIMPORT                        R36 K12 [Vector2.new]
      434 LOADN                            R37 0
      435 LOADN                            R38 1
      436 CALL                             R36 2 1
      437 SETTABLEKS                       R36 R35 K39 ["AnchorPoint"]
      439 GETIMPORT                        R36 K132 [Enum.HorizontalAlignment.Right]
      441 SETTABLEKS                       R36 R35 K89 ["HorizontalAlignment"]
      443 GETIMPORT                        R36 K134 [Enum.VerticalAlignment.Center]
      445 SETTABLEKS                       R36 R35 K129 ["VerticalAlignment"]
      447 GETIMPORT                        R36 K136 [Enum.FillDirection.Horizontal]
      449 SETTABLEKS                       R36 R35 K64 ["Layout"]
      451 GETTABLEKS                       R36 R0 K137 ["footerButtonClicked"]
      453 SETTABLEKS                       R36 R35 K51 ["OnClick"]
      455 DUPTABLE                         R36 K139 [{["Bottom"] = 8}]
      456 SETTABLEKS                       R36 R35 K76 ["Padding"]
      458 GETIMPORT                        R36 K14 [UDim2.new]
      460 LOADN                            R37 0
      461 LOADN                            R38 0
      462 LOADN                            R39 1
      463 LOADN                            R40 0
      464 CALL                             R36 4 1
      465 SETTABLEKS                       R36 R35 K40 ["Position"]
      467 GETIMPORT                        R36 K14 [UDim2.new]
      469 LOADN                            R37 1
      470 LOADN                            R38 0
      471 LOADN                            R39 0
      472 LOADN                            R40 0
      473 CALL                             R36 4 1
      474 SETTABLEKS                       R36 R35 K31 ["Size"]
      476 DUPTABLE                         R36 K142 [{"CancelButton", "ApplyButton"}]
      477 GETUPVAL                         R37 3
      478 GETTABLEKS                       R37 R37 K18 ["createElement"]
      480 GETUPVAL                         R38 10
      481 DUPTABLE                         R39 K144 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text"}]
      482 GETIMPORT                        R40 K94 [Enum.AutomaticSize.XY]
      484 SETTABLEKS                       R40 R39 K88 ["AutomaticSize"]
      486 NAMECALL                         R40 R12 K101 ["getNextOrder"]
      488 CALL                             R40 1 1
      489 SETTABLEKS                       R40 R39 K70 ["LayoutOrder"]
      491 GETTABLEKS                       R40 R0 K145 ["onReset"]
      493 SETTABLEKS                       R40 R39 K51 ["OnClick"]
      495 LOADK                            R42 K7 ["General"]
      496 LOADK                            R43 K146 ["SearchOptionsResetAll"]
      497 NAMECALL                         R40 R4 K9 ["getText"]
      499 CALL                             R40 3 1
      500 SETTABLEKS                       R40 R39 K143 ["Text"]
      502 CALL                             R37 2 1
      503 SETTABLEKS                       R37 R36 K140 ["CancelButton"]
      505 GETUPVAL                         R37 3
      506 GETTABLEKS                       R37 R37 K18 ["createElement"]
      508 GETUPVAL                         R38 11
      509 DUPTABLE                         R39 K148 [{["LayoutOrder"], ["OnClick"], ["Style"] = "RoundPrimary", ["Size"], ["Text"]}]
      510 NAMECALL                         R40 R12 K101 ["getNextOrder"]
      512 CALL                             R40 1 1
      513 SETTABLEKS                       R40 R39 K70 ["LayoutOrder"]
      515 GETTABLEKS                       R40 R0 K149 ["onSubmit"]
      517 SETTABLEKS                       R40 R39 K51 ["OnClick"]
      519 GETIMPORT                        R40 K151 [UDim2.fromOffset]
      521 GETTABLEKS                       R42 R9 K152 ["X"]
      523 GETUPVAL                         R44 12
      524 GETTABLEKS                       R44 R44 K152 ["X"]
      526 MULK                             R43 R44 K20 [2]
      527 ADD                              R41 R42 R43
      528 GETTABLEKS                       R43 R9 K15 ["Y"]
      530 GETUPVAL                         R45 12
      531 GETTABLEKS                       R45 R45 K15 ["Y"]
      533 MULK                             R44 R45 K20 [2]
      534 ADD                              R42 R43 R44
      535 CALL                             R40 2 1
      536 SETTABLEKS                       R40 R39 K31 ["Size"]
      538 SETTABLEKS                       R8 R39 K143 ["Text"]
      540 DUPTABLE                         R40 K154 [{"HoverArea"}]
      541 GETUPVAL                         R41 3
      542 GETTABLEKS                       R41 R41 K18 ["createElement"]
      544 GETUPVAL                         R42 13
      545 DUPTABLE                         R43 K157 [{["Cursor"] = "PointingHand"}]
      546 CALL                             R41 2 1
      547 SETTABLEKS                       R41 R40 K153 ["HoverArea"]
      549 CALL                             R37 3 1
      550 SETTABLEKS                       R37 R36 K141 ["ApplyButton"]
      552 CALL                             R33 3 1
      553 SETTABLEKS                       R33 R32 K109 ["Footer"]
      555 CALL                             R29 3 1
      556 SETTABLEKS                       R29 R28 K59 ["BottomButtonsContainer"]
      558 CALL                             R25 3 1
      559 SETTABLEKS                       R25 R24 K46 ["Contents"]
      561 CALL                             R21 3 1
      562 SETTABLEKS                       R21 R20 K36 ["MainPositioning"]
      564 CALL                             R17 3 1
      565 SETTABLEKS                       R17 R16 K22 ["ClickEventDetectFrame"]
      567 CALL                             R13 3 -1
      568 RETURN                           R13 -1

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
