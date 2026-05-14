PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnExpandToggled"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnExpandToggled"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["Expanded"]
       16 NOT                              R1 R2
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isDoubleClick"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["onExpandToggled"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["props"]
       12 GETTABLEKS                       R0 R0 K3 ["OnTrackSelected"]
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K2 ["props"]
       18 GETTABLEKS                       R0 R0 K3 ["OnTrackSelected"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ReadOnly"]
        5 JUMPIF                           R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["OnContextButtonClick"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K2 ["OnContextButtonClick"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnItemChanged"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["OnItemChanged"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onExpandToggled"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K2 ["onTrackSelected"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K3 ["onContextButtonClick"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K4 ["onItemChanged"]
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChangeBegan"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onItemChanged"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Key"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Key"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Value"]
        9 GETTABLEKS                       R6 R0 K3 ["Delta"]
       11 GETTABLEKS                       R6 R6 K4 ["X"]
       13 GETUPVAL                         R7 2
       14 MUL                              R5 R6 R7
       15 ADD                              R3 R4 R5
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R5 R1 K4 ["Indent"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["Name"]
       11 GETTABLEKS                       R6 R1 K6 ["Items"]
       13 JUMPIF                           R6 ; [+2]
       14 NEWTABLE                         R6 0 0
       16 GETTABLEKS                       R7 R1 K7 ["DragMultiplier"]
       18 JUMPIF                           R7 ; [+3]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K8 ["NUMBERBOX_DRAG_MULTIPLIER"]
       22 GETTABLEKS                       R8 R1 K9 ["ReadOnly"]
       24 GETTABLEKS                       R9 R2 K10 ["trackTheme"]
       26 GETTABLEKS                       R10 R9 K11 ["arrow"]
       28 GETTABLEKS                       R12 R1 K13 ["Expanded"]
       30 ORK                              R11 R12 K12 [False]
       31 GETTABLEKS                       R13 R1 K14 ["Selected"]
       33 ORK                              R12 R13 K12 [False]
       34 GETTABLEKS                       R14 R0 K0 ["props"]
       36 GETTABLEKS                       R14 R14 K15 ["OnExpandToggled"]
       38 JUMPIFNOTEQKNIL                  R14 ; [+2]
       40 LOADB                            R13 0 +1
       41 LOADB                            R13 1
       42 GETTABLEKS                       R15 R0 K0 ["props"]
       44 GETTABLEKS                       R15 R15 K16 ["OnContextButtonClick"]
       46 JUMPIFNOTEQKNIL                  R15 ; [+2]
       48 LOADB                            R14 0 +1
       49 LOADB                            R14 1
       50 GETTABLEKS                       R16 R0 K0 ["props"]
       52 GETTABLEKS                       R16 R16 K17 ["ErrorMessage"]
       54 JUMPIFNOTEQKNIL                  R16 ; [+2]
       56 LOADB                            R15 0 +1
       57 LOADB                            R15 1
       58 DUPTABLE                         R16 K22 [{"Arrow", "Error", "NameLabel", "ContextButton"}]
       59 JUMPIFNOT                        R13 ; [+74]
       60 GETUPVAL                         R17 1
       61 GETTABLEKS                       R17 R17 K23 ["createElement"]
       63 LOADK                            R18 K24 ["ImageButton"]
       64 NEWTABLE                         R19 16 0
       66 GETIMPORT                        R20 K27 [UDim2.new]
       68 LOADN                            R21 0
       69 GETUPVAL                         R22 0
       70 GETTABLEKS                       R22 R22 K28 ["ARROW_SIZE"]
       72 LOADN                            R23 0
       73 GETUPVAL                         R24 0
       74 GETTABLEKS                       R24 R24 K28 ["ARROW_SIZE"]
       76 CALL                             R20 4 1
       77 SETTABLEKS                       R20 R19 K29 ["Size"]
       79 GETIMPORT                        R20 K31 [Vector2.new]
       81 LOADN                            R21 0
       82 LOADK                            R22 K32 [0.5]
       83 CALL                             R20 2 1
       84 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
       86 GETIMPORT                        R20 K27 [UDim2.new]
       88 LOADN                            R21 0
       89 GETUPVAL                         R23 0
       90 GETTABLEKS                       R23 R23 K28 ["ARROW_SIZE"]
       92 DIVK                             R22 R23 K34 [2]
       93 LOADK                            R23 K32 [0.5]
       94 LOADN                            R24 0
       95 CALL                             R20 4 1
       96 SETTABLEKS                       R20 R19 K35 ["Position"]
       98 LOADN                            R20 1
       99 SETTABLEKS                       R20 R19 K36 ["BackgroundTransparency"]
      101 LOADN                            R20 2
      102 SETTABLEKS                       R20 R19 K37 ["ZIndex"]
      104 JUMPIFNOT                        R11 ; [+3]
      105 GETTABLEKS                       R20 R10 K38 ["expanded"]
      107 JUMPIF                           R20 ; [+2]
      108 GETTABLEKS                       R20 R10 K39 ["collapsed"]
      110 SETTABLEKS                       R20 R19 K40 ["Image"]
      112 JUMPIFNOT                        R12 ; [+3]
      113 GETTABLEKS                       R20 R9 K41 ["selectedTextColor"]
      115 JUMPIF                           R20 ; [+2]
      116 GETTABLEKS                       R20 R9 K42 ["textColor"]
      118 SETTABLEKS                       R20 R19 K43 ["ImageColor3"]
      120 GETIMPORT                        R20 K47 [Enum.ScaleType.Fit]
      122 SETTABLEKS                       R20 R19 K45 ["ScaleType"]
      124 GETUPVAL                         R20 1
      125 GETTABLEKS                       R20 R20 K48 ["Event"]
      127 GETTABLEKS                       R20 R20 K49 ["Activated"]
      129 GETTABLEKS                       R21 R0 K50 ["onExpandToggled"]
      131 SETTABLE                         R21 R19 R20
      132 CALL                             R17 2 1
      133 JUMPIF                           R17 ; [+1]
      134 LOADNIL                          R17
      135 SETTABLEKS                       R17 R16 K18 ["Arrow"]
      137 GETUPVAL                         R18 2
      138 CALL                             R18 0 1
      139 JUMPIFNOT                        R18 ; [+65]
      140 JUMPIFNOT                        R15 ; [+64]
      141 GETUPVAL                         R17 1
      142 GETTABLEKS                       R17 R17 K23 ["createElement"]
      144 LOADK                            R18 K51 ["ImageLabel"]
      145 DUPTABLE                         R19 K52 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
      146 GETIMPORT                        R20 K27 [UDim2.new]
      148 LOADN                            R21 0
      149 GETUPVAL                         R22 0
      150 GETTABLEKS                       R22 R22 K28 ["ARROW_SIZE"]
      152 LOADN                            R23 0
      153 GETUPVAL                         R24 0
      154 GETTABLEKS                       R24 R24 K28 ["ARROW_SIZE"]
      156 CALL                             R20 4 1
      157 SETTABLEKS                       R20 R19 K29 ["Size"]
      159 GETIMPORT                        R20 K31 [Vector2.new]
      161 LOADN                            R21 0
      162 LOADK                            R22 K32 [0.5]
      163 CALL                             R20 2 1
      164 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      166 GETIMPORT                        R20 K27 [UDim2.new]
      168 LOADN                            R21 0
      169 GETUPVAL                         R23 0
      170 GETTABLEKS                       R23 R23 K28 ["ARROW_SIZE"]
      172 MULK                             R22 R23 K34 [2]
      173 LOADK                            R23 K32 [0.5]
      174 LOADN                            R24 0
      175 CALL                             R20 4 1
      176 SETTABLEKS                       R20 R19 K35 ["Position"]
      178 LOADN                            R20 1
      179 SETTABLEKS                       R20 R19 K36 ["BackgroundTransparency"]
      181 GETTABLEKS                       R20 R9 K53 ["errorImage"]
      183 SETTABLEKS                       R20 R19 K40 ["Image"]
      185 DUPTABLE                         R20 K55 [{"Tooltip"}]
      186 GETUPVAL                         R21 1
      187 GETTABLEKS                       R21 R21 K23 ["createElement"]
      189 GETUPVAL                         R22 3
      190 DUPTABLE                         R23 K58 [{"Text", "ShowDelay"}]
      191 GETTABLEKS                       R24 R0 K0 ["props"]
      193 GETTABLEKS                       R24 R24 K17 ["ErrorMessage"]
      195 SETTABLEKS                       R24 R23 K56 ["Text"]
      197 LOADN                            R24 0
      198 SETTABLEKS                       R24 R23 K57 ["ShowDelay"]
      200 CALL                             R21 2 1
      201 SETTABLEKS                       R21 R20 K54 ["Tooltip"]
      203 CALL                             R17 3 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R17
      206 SETTABLEKS                       R17 R16 K19 ["Error"]
      208 GETUPVAL                         R17 1
      209 GETTABLEKS                       R17 R17 K23 ["createElement"]
      211 LOADK                            R18 K59 ["TextButton"]
      212 NEWTABLE                         R19 16 0
      214 GETIMPORT                        R20 K27 [UDim2.new]
      216 LOADN                            R21 1
      217 LOADN                            R22 0
      218 LOADN                            R23 1
      219 LOADN                            R24 0
      220 CALL                             R20 4 1
      221 SETTABLEKS                       R20 R19 K29 ["Size"]
      223 GETUPVAL                         R21 2
      224 CALL                             R21 0 1
      225 JUMPIFNOT                        R21 ; [+15]
      226 GETIMPORT                        R20 K27 [UDim2.new]
      228 LOADN                            R21 0
      229 GETUPVAL                         R23 0
      230 GETTABLEKS                       R23 R23 K28 ["ARROW_SIZE"]
      232 JUMPIFNOT                        R15 ; [+2]
      233 LOADK                            R24 K60 [3.5]
      234 JUMP                             ; [+1]
      235 LOADN                            R24 2
      236 MUL                              R22 R23 R24
      237 LOADN                            R23 0
      238 LOADN                            R24 0
      239 CALL                             R20 4 1
      240 JUMP                             ; [+10]
      241 GETIMPORT                        R20 K27 [UDim2.new]
      243 LOADN                            R21 0
      244 GETUPVAL                         R23 0
      245 GETTABLEKS                       R23 R23 K28 ["ARROW_SIZE"]
      247 MULK                             R22 R23 K34 [2]
      248 LOADN                            R23 0
      249 LOADN                            R24 0
      250 CALL                             R20 4 1
      251 SETTABLEKS                       R20 R19 K35 ["Position"]
      253 LOADN                            R20 1
      254 SETTABLEKS                       R20 R19 K36 ["BackgroundTransparency"]
      256 LOADB                            R20 0
      257 SETTABLEKS                       R20 R19 K61 ["AutoButtonColor"]
      259 SETTABLEKS                       R5 R19 K56 ["Text"]
      261 GETTABLEKS                       R20 R2 K62 ["font"]
      263 SETTABLEKS                       R20 R19 K63 ["Font"]
      265 GETTABLEKS                       R20 R9 K64 ["textSize"]
      267 SETTABLEKS                       R20 R19 K65 ["TextSize"]
      269 JUMPIFNOT                        R12 ; [+3]
      270 GETTABLEKS                       R20 R9 K41 ["selectedTextColor"]
      272 JUMPIF                           R20 ; [+2]
      273 GETTABLEKS                       R20 R9 K42 ["textColor"]
      275 SETTABLEKS                       R20 R19 K66 ["TextColor3"]
      277 GETIMPORT                        R20 K69 [Enum.TextXAlignment.Left]
      279 SETTABLEKS                       R20 R19 K67 ["TextXAlignment"]
      281 GETUPVAL                         R20 1
      282 GETTABLEKS                       R20 R20 K48 ["Event"]
      284 GETTABLEKS                       R20 R20 K49 ["Activated"]
      286 GETTABLEKS                       R21 R0 K70 ["onTrackSelected"]
      288 SETTABLE                         R21 R19 R20
      289 CALL                             R17 2 1
      290 SETTABLEKS                       R17 R16 K20 ["NameLabel"]
      292 JUMPIFNOT                        R14 ; [+35]
      293 GETUPVAL                         R17 1
      294 GETTABLEKS                       R17 R17 K23 ["createElement"]
      296 GETUPVAL                         R18 4
      297 DUPTABLE                         R19 K73 [{"AnchorPoint", "Position", "ZIndex", "TrackSelected", "OnActivated"}]
      298 GETIMPORT                        R20 K31 [Vector2.new]
      300 LOADN                            R21 1
      301 LOADK                            R22 K32 [0.5]
      302 CALL                             R20 2 1
      303 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      305 GETIMPORT                        R20 K27 [UDim2.new]
      307 LOADN                            R21 1
      308 GETUPVAL                         R23 0
      309 GETTABLEKS                       R23 R23 K74 ["TRACKLIST_RIGHT_PADDING"]
      311 MINUS                            R22 R23
      312 LOADK                            R23 K32 [0.5]
      313 LOADN                            R24 0
      314 CALL                             R20 4 1
      315 SETTABLEKS                       R20 R19 K35 ["Position"]
      317 LOADN                            R20 2
      318 SETTABLEKS                       R20 R19 K37 ["ZIndex"]
      320 SETTABLEKS                       R12 R19 K71 ["TrackSelected"]
      322 GETTABLEKS                       R20 R0 K75 ["onContextButtonClick"]
      324 SETTABLEKS                       R20 R19 K72 ["OnActivated"]
      326 CALL                             R17 2 1
      327 JUMPIF                           R17 ; [+1]
      328 LOADNIL                          R17
      329 SETTABLEKS                       R17 R16 K21 ["ContextButton"]
      331 GETIMPORT                        R17 K77 [ipairs]
      333 MOVE                             R18 R6
      334 CALL                             R17 1 3
      335 FORGPREP_INEXT                   R17
      336 GETUPVAL                         R24 0
      337 GETTABLEKS                       R24 R24 K78 ["TRACK_THEME_MAPPING"]
      339 GETTABLEKS                       R25 R21 K79 ["Type"]
      341 GETTABLE                         R23 R24 R25
      342 JUMPIFNOT                        R23 ; [+10]
      343 GETUPVAL                         R24 0
      344 GETTABLEKS                       R24 R24 K78 ["TRACK_THEME_MAPPING"]
      346 GETTABLEKS                       R25 R21 K79 ["Type"]
      348 GETTABLE                         R23 R24 R25
      349 GETTABLEKS                       R24 R21 K5 ["Name"]
      351 GETTABLE                         R22 R23 R24
      352 JUMPIF                           R22 ; [+1]
      353 LOADK                            R22 K80 ["Default"]
      354 GETTABLEKS                       R24 R2 K81 ["curveTheme"]
      356 GETTABLE                         R23 R24 R22
      357 GETTABLEKS                       R25 R21 K79 ["Type"]
      359 GETUPVAL                         R26 0
      360 GETTABLEKS                       R26 R26 K82 ["TRACK_TYPES"]
      362 GETTABLEKS                       R26 R26 K83 ["Facs"]
      364 JUMPIFNOTEQ                      R25 R26 ; [+5]
      366 GETUPVAL                         R24 0
      367 GETTABLEKS                       R24 R24 K84 ["NUMBER_FACS_PRECISION"]
      369 JUMP                             ; [+3]
      370 GETUPVAL                         R24 0
      371 GETTABLEKS                       R24 R24 K85 ["NUMBER_PRECISION"]
      373 GETTABLEKS                       R26 R21 K86 ["Key"]
      375 LOADK                            R27 K87 ["_Entry"]
      376 CONCAT                           R25 R26 R27
      377 GETUPVAL                         R26 1
      378 GETTABLEKS                       R26 R26 K23 ["createElement"]
      380 GETUPVAL                         R27 5
      381 DUPTABLE                         R28 K94 [{"Size", "Position", "AnchorPoint", "Number", "Name", "Color", "Precision", "ReadOnly", "SetNumber", "OnDragMoved", "OnDragBegan"}]
      382 GETIMPORT                        R29 K27 [UDim2.new]
      384 LOADN                            R30 0
      385 GETUPVAL                         R31 0
      386 GETTABLEKS                       R31 R31 K95 ["NUMBERBOX_WIDTH"]
      388 LOADN                            R32 1
      389 GETUPVAL                         R34 0
      390 GETTABLEKS                       R34 R34 K96 ["NUMBERBOX_PADDING"]
      392 MINUS                            R33 R34
      393 CALL                             R29 4 1
      394 SETTABLEKS                       R29 R28 K29 ["Size"]
      396 GETIMPORT                        R29 K27 [UDim2.new]
      398 LOADN                            R30 1
      399 LENGTH                           R36 R6
      400 SUB                              R35 R20 R36
      401 SUBK                             R34 R35 K97 [1]
      402 GETUPVAL                         R36 0
      403 GETTABLEKS                       R36 R36 K95 ["NUMBERBOX_WIDTH"]
      405 GETUPVAL                         R37 0
      406 GETTABLEKS                       R37 R37 K96 ["NUMBERBOX_PADDING"]
      408 ADD                              R35 R36 R37
      409 MUL                              R33 R34 R35
      410 GETUPVAL                         R34 0
      411 GETTABLEKS                       R34 R34 K98 ["TRACKLIST_BUTTON_SIZE"]
      413 SUB                              R32 R33 R34
      414 GETUPVAL                         R33 0
      415 GETTABLEKS                       R33 R33 K74 ["TRACKLIST_RIGHT_PADDING"]
      417 SUB                              R31 R32 R33
      418 LOADK                            R32 K32 [0.5]
      419 LOADN                            R33 0
      420 CALL                             R29 4 1
      421 SETTABLEKS                       R29 R28 K35 ["Position"]
      423 GETIMPORT                        R29 K31 [Vector2.new]
      425 LOADN                            R30 0
      426 LOADK                            R31 K32 [0.5]
      427 CALL                             R29 2 1
      428 SETTABLEKS                       R29 R28 K33 ["AnchorPoint"]
      430 GETTABLEKS                       R29 R21 K99 ["Value"]
      432 SETTABLEKS                       R29 R28 K88 ["Number"]
      434 GETTABLEKS                       R29 R21 K5 ["Name"]
      436 SETTABLEKS                       R29 R28 K5 ["Name"]
      438 SETTABLEKS                       R23 R28 K89 ["Color"]
      440 SETTABLEKS                       R24 R28 K90 ["Precision"]
      442 SETTABLEKS                       R8 R28 K9 ["ReadOnly"]
      444 NEWCLOSURE                       R29 P0
      445 CAPTURE                          VAL R1
      446 CAPTURE                          VAL R0
      447 CAPTURE                          VAL R21
      448 SETTABLEKS                       R29 R28 K91 ["SetNumber"]
      450 NEWCLOSURE                       R29 P1
      451 CAPTURE                          VAL R0
      452 CAPTURE                          VAL R21
      453 CAPTURE                          VAL R7
      454 SETTABLEKS                       R29 R28 K92 ["OnDragMoved"]
      456 GETTABLEKS                       R29 R1 K100 ["OnChangeBegan"]
      458 SETTABLEKS                       R29 R28 K93 ["OnDragBegan"]
      460 CALL                             R26 2 1
      461 SETTABLE                         R26 R16 R25
      462 FORGLOOP                         R17 2 [inext] ; [-127]
      464 GETUPVAL                         R17 1
      465 GETTABLEKS                       R17 R17 K23 ["createElement"]
      467 GETUPVAL                         R18 6
      468 DUPTABLE                         R19 K102 [{"Selected", "Height", "Indent", "LayoutOrder"}]
      469 SETTABLEKS                       R12 R19 K14 ["Selected"]
      471 GETUPVAL                         R20 0
      472 GETTABLEKS                       R20 R20 K103 ["TRACK_HEIGHT"]
      474 SETTABLEKS                       R20 R19 K101 ["Height"]
      476 SETTABLEKS                       R4 R19 K4 ["Indent"]
      478 SETTABLEKS                       R3 R19 K2 ["LayoutOrder"]
      480 MOVE                             R20 R16
      481 CALL                             R17 3 -1
      482 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["DoubleClickDetector"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["TrackList"]
       42 GETTABLEKS                       R7 R7 K16 ["TrackListEntry"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Components"]
       51 GETTABLEKS                       R8 R8 K15 ["TrackList"]
       53 GETTABLEKS                       R8 R8 K17 ["NumberBox"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Src"]
       60 GETTABLEKS                       R9 R9 K14 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["ContextButton"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Src"]
       69 GETTABLEKS                       R10 R10 K14 ["Components"]
       71 GETTABLEKS                       R10 R10 K19 ["Tooltip"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["LuaFlags"]
       78 GETTABLEKS                       R11 R11 K21 ["GetFFlagControlRig"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K8 ["Src"]
       85 GETTABLEKS                       R12 R12 K9 ["Util"]
       87 GETTABLEKS                       R12 R12 K22 ["Constants"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R1 K23 ["PureComponent"]
       92 LOADK                            R14 K24 ["Track"]
       93 NAMECALL                         R12 R12 K25 ["extend"]
       95 CALL                             R12 2 1
       96 DUPCLOSURE                       R13 K26 [PROTO_4]
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R13 R12 K27 ["init"]
      100 DUPCLOSURE                       R13 K28 [PROTO_7]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R13 R12 K29 ["render"]
      110 MOVE                             R13 R5
      111 DUPTABLE                         R14 K31 [{"Stylizer"}]
      112 GETTABLEKS                       R15 R4 K30 ["Stylizer"]
      114 SETTABLEKS                       R15 R14 K30 ["Stylizer"]
      116 CALL                             R13 1 1
      117 MOVE                             R14 R12
      118 CALL                             R13 1 1
      119 MOVE                             R12 R13
      120 RETURN                           R12 1
