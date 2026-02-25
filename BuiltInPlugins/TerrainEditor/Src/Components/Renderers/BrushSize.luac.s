PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Height"]
        2 GETTABLEKS                       R2 R0 K1 ["Value"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K10 [{"Max", "Min", "OnValueChanged", "ShowInput", "Size", "SnapIncrement", "VerticalDragTolerance", "Value"}]
        9 LOADN                            R6 64
       10 SETTABLEKS                       R6 R5 K3 ["Max"]
       12 LOADN                            R6 1
       13 SETTABLEKS                       R6 R5 K4 ["Min"]
       15 GETTABLEKS                       R6 R0 K11 ["OnChanged"]
       17 SETTABLEKS                       R6 R5 K5 ["OnValueChanged"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K6 ["ShowInput"]
       22 GETIMPORT                        R6 K14 [UDim2.new]
       24 LOADN                            R7 1
       25 LOADN                            R8 0
       26 LOADN                            R9 0
       27 MOVE                             R10 R1
       28 CALL                             R6 4 1
       29 SETTABLEKS                       R6 R5 K7 ["Size"]
       31 LOADN                            R6 1
       32 SETTABLEKS                       R6 R5 K8 ["SnapIncrement"]
       34 LOADN                            R6 0
       35 SETTABLEKS                       R6 R5 K9 ["VerticalDragTolerance"]
       37 SETTABLEKS                       R2 R5 K1 ["Value"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["Value"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["Value"]
        9 GETTABLEKS                       R3 R4 K4 ["Locked"]
       11 JUMPIFNOT                        R3 ; [+12]
       12 OR                               R3 R0 R1
       13 SETTABLEKS                       R3 R2 K5 ["Height"]
       15 OR                               R3 R0 R1
       16 SETTABLEKS                       R3 R2 K6 ["Size"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["OnChanged"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 JUMPIFNOT                        R0 ; [+8]
       25 SETTABLEKS                       R0 R2 K6 ["Size"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K7 ["OnChanged"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R2 K5 ["Height"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["OnChanged"]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["Value"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R2 R0 K4 ["Locked"]
        8 NOT                              R1 R2
        9 SETTABLEKS                       R1 R0 K4 ["Locked"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K5 ["OnChanged"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K1 ["BrushSizeRenderer"]
        4 NAMECALL                         R2 R2 K2 ["use"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R1 K3 ["Shape"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K4 ["new"]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 2
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R7 0 3
       18 GETTABLEKS                       R9 R0 K5 ["Value"]
       20 GETTABLEKS                       R8 R9 K6 ["Size"]
       22 GETTABLEKS                       R10 R0 K5 ["Value"]
       24 GETTABLEKS                       R9 R10 K7 ["Height"]
       26 GETTABLEKS                       R11 R0 K5 ["Value"]
       28 GETTABLEKS                       R10 R11 K8 ["Locked"]
       30 SETLIST                          R7 R8 3 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 2
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R5
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 2
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R9 0 1
       47 MOVE                             R10 R5
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R8 2
       52 NEWCLOSURE                       R9 P3
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R10 0 4
       56 GETTABLEKS                       R12 R0 K5 ["Value"]
       58 GETTABLEKS                       R11 R12 K6 ["Size"]
       60 GETTABLEKS                       R13 R0 K5 ["Value"]
       62 GETTABLEKS                       R12 R13 K7 ["Height"]
       64 GETTABLEKS                       R14 R0 K5 ["Value"]
       66 GETTABLEKS                       R13 R14 K8 ["Locked"]
       68 MOVE                             R14 R5
       69 SETLIST                          R10 R11 4 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R9 R10 K9 ["createElement"]
       75 GETUPVAL                         R10 4
       76 DUPTABLE                         R11 K13 [{"AutomaticSize", "Layout", "Size", "VerticalAlignment"}]
       77 GETIMPORT                        R12 K16 [Enum.AutomaticSize.Y]
       79 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       81 GETIMPORT                        R12 K19 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R12 R11 K11 ["Layout"]
       85 GETIMPORT                        R12 K22 [UDim2.fromScale]
       87 LOADN                            R13 1
       88 LOADN                            R14 0
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K6 ["Size"]
       92 GETIMPORT                        R12 K24 [Enum.VerticalAlignment.Top]
       94 SETTABLEKS                       R12 R11 K12 ["VerticalAlignment"]
       96 DUPTABLE                         R12 K27 [{"Inputs", "LockingContainer"}]
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R13 R14 K9 ["createElement"]
      100 GETUPVAL                         R14 4
      101 DUPTABLE                         R15 K30 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      102 GETIMPORT                        R16 K16 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
      106 GETIMPORT                        R16 K32 [Enum.FillDirection.Vertical]
      108 SETTABLEKS                       R16 R15 K11 ["Layout"]
      110 NAMECALL                         R16 R4 K33 ["getNextOrder"]
      112 CALL                             R16 1 1
      113 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      115 GETIMPORT                        R16 K34 [UDim2.new]
      117 LOADN                            R17 1
      118 GETTABLEKS                       R19 R2 K35 ["LockButtonWidth"]
      120 MINUS                            R18 R19
      121 LOADN                            R19 0
      122 LOADN                            R20 0
      123 CALL                             R16 4 1
      124 SETTABLEKS                       R16 R15 K6 ["Size"]
      126 LOADN                            R16 10
      127 SETTABLEKS                       R16 R15 K29 ["Spacing"]
      129 GETIMPORT                        R16 K24 [Enum.VerticalAlignment.Top]
      131 SETTABLEKS                       R16 R15 K12 ["VerticalAlignment"]
      133 DUPTABLE                         R16 K36 [{"Size", "Height"}]
      134 GETUPVAL                         R18 3
      135 GETTABLEKS                       R17 R18 K9 ["createElement"]
      137 GETUPVAL                         R18 4
      138 DUPTABLE                         R19 K37 [{"AutomaticSize", "Layout", "LayoutOrder"}]
      139 GETIMPORT                        R20 K16 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R20 R19 K10 ["AutomaticSize"]
      143 GETIMPORT                        R20 K19 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R20 R19 K11 ["Layout"]
      147 NAMECALL                         R20 R4 K33 ["getNextOrder"]
      149 CALL                             R20 1 1
      150 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      152 DUPTABLE                         R20 K40 [{"SizeLabel", "SizeSliderContainer"}]
      153 GETUPVAL                         R22 3
      154 GETTABLEKS                       R21 R22 K9 ["createElement"]
      156 GETUPVAL                         R22 5
      157 DUPTABLE                         R23 K43 [{"LayoutOrder", "Size", "Text", "TextYAlignment"}]
      158 NAMECALL                         R24 R4 K33 ["getNextOrder"]
      160 CALL                             R24 1 1
      161 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      163 GETIMPORT                        R24 K45 [UDim2.fromOffset]
      165 GETTABLEKS                       R25 R2 K46 ["LabelWidth"]
      167 GETTABLEKS                       R26 R2 K47 ["RowHeight"]
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K6 ["Size"]
      172 GETUPVAL                         R26 6
      173 GETTABLEKS                       R25 R26 K48 ["Cylinder"]
      175 JUMPIFNOTEQ                      R3 R25 ; [+3]
      177 LOADK                            R24 K49 ["R"]
      178 JUMP                             ; [+1]
      179 LOADK                            R24 K50 ["W"]
      180 SETTABLEKS                       R24 R23 K41 ["Text"]
      182 GETIMPORT                        R24 K52 [Enum.TextYAlignment.Center]
      184 SETTABLEKS                       R24 R23 K42 ["TextYAlignment"]
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K38 ["SizeLabel"]
      189 GETUPVAL                         R22 3
      190 GETTABLEKS                       R21 R22 K9 ["createElement"]
      192 GETUPVAL                         R22 4
      193 DUPTABLE                         R23 K53 [{"LayoutOrder", "Size"}]
      194 NAMECALL                         R24 R4 K33 ["getNextOrder"]
      196 CALL                             R24 1 1
      197 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      199 GETIMPORT                        R24 K34 [UDim2.new]
      201 LOADN                            R25 1
      202 GETTABLEKS                       R27 R2 K46 ["LabelWidth"]
      204 MINUS                            R26 R27
      205 LOADN                            R27 0
      206 GETTABLEKS                       R28 R2 K47 ["RowHeight"]
      208 CALL                             R24 4 1
      209 SETTABLEKS                       R24 R23 K6 ["Size"]
      211 DUPTABLE                         R24 K55 [{"SizeSlider"}]
      212 GETUPVAL                         R26 3
      213 GETTABLEKS                       R25 R26 K9 ["createElement"]
      215 GETUPVAL                         R26 7
      216 DUPTABLE                         R27 K57 [{"Height", "OnChanged", "Value"}]
      217 GETTABLEKS                       R28 R2 K47 ["RowHeight"]
      219 SETTABLEKS                       R28 R27 K7 ["Height"]
      221 SETTABLEKS                       R6 R27 K56 ["OnChanged"]
      223 GETTABLEKS                       R29 R0 K5 ["Value"]
      225 GETTABLEKS                       R28 R29 K6 ["Size"]
      227 SETTABLEKS                       R28 R27 K5 ["Value"]
      229 CALL                             R25 2 1
      230 SETTABLEKS                       R25 R24 K54 ["SizeSlider"]
      232 CALL                             R21 3 1
      233 SETTABLEKS                       R21 R20 K39 ["SizeSliderContainer"]
      235 CALL                             R17 3 1
      236 SETTABLEKS                       R17 R16 K6 ["Size"]
      238 GETUPVAL                         R18 3
      239 GETTABLEKS                       R17 R18 K9 ["createElement"]
      241 GETUPVAL                         R18 4
      242 DUPTABLE                         R19 K37 [{"AutomaticSize", "Layout", "LayoutOrder"}]
      243 GETIMPORT                        R20 K16 [Enum.AutomaticSize.Y]
      245 SETTABLEKS                       R20 R19 K10 ["AutomaticSize"]
      247 GETIMPORT                        R20 K19 [Enum.FillDirection.Horizontal]
      249 SETTABLEKS                       R20 R19 K11 ["Layout"]
      251 NAMECALL                         R20 R4 K33 ["getNextOrder"]
      253 CALL                             R20 1 1
      254 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      256 DUPTABLE                         R20 K60 [{"HeightLabel", "HeightSliderContainer"}]
      257 GETUPVAL                         R22 3
      258 GETTABLEKS                       R21 R22 K9 ["createElement"]
      260 GETUPVAL                         R22 5
      261 DUPTABLE                         R23 K43 [{"LayoutOrder", "Size", "Text", "TextYAlignment"}]
      262 NAMECALL                         R24 R4 K33 ["getNextOrder"]
      264 CALL                             R24 1 1
      265 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      267 GETIMPORT                        R24 K45 [UDim2.fromOffset]
      269 GETTABLEKS                       R25 R2 K46 ["LabelWidth"]
      271 GETTABLEKS                       R26 R2 K47 ["RowHeight"]
      273 CALL                             R24 2 1
      274 SETTABLEKS                       R24 R23 K6 ["Size"]
      276 LOADK                            R24 K61 ["H"]
      277 SETTABLEKS                       R24 R23 K41 ["Text"]
      279 GETIMPORT                        R24 K52 [Enum.TextYAlignment.Center]
      281 SETTABLEKS                       R24 R23 K42 ["TextYAlignment"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K58 ["HeightLabel"]
      286 GETUPVAL                         R22 3
      287 GETTABLEKS                       R21 R22 K9 ["createElement"]
      289 GETUPVAL                         R22 4
      290 DUPTABLE                         R23 K53 [{"LayoutOrder", "Size"}]
      291 NAMECALL                         R24 R4 K33 ["getNextOrder"]
      293 CALL                             R24 1 1
      294 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      296 GETIMPORT                        R24 K34 [UDim2.new]
      298 LOADN                            R25 1
      299 GETTABLEKS                       R27 R2 K46 ["LabelWidth"]
      301 MINUS                            R26 R27
      302 LOADN                            R27 0
      303 GETTABLEKS                       R28 R2 K47 ["RowHeight"]
      305 CALL                             R24 4 1
      306 SETTABLEKS                       R24 R23 K6 ["Size"]
      308 DUPTABLE                         R24 K63 [{"HeightSlider"}]
      309 GETUPVAL                         R26 3
      310 GETTABLEKS                       R25 R26 K9 ["createElement"]
      312 GETUPVAL                         R26 7
      313 DUPTABLE                         R27 K57 [{"Height", "OnChanged", "Value"}]
      314 GETTABLEKS                       R28 R2 K47 ["RowHeight"]
      316 SETTABLEKS                       R28 R27 K7 ["Height"]
      318 SETTABLEKS                       R7 R27 K56 ["OnChanged"]
      320 GETTABLEKS                       R29 R0 K5 ["Value"]
      322 GETTABLEKS                       R28 R29 K7 ["Height"]
      324 SETTABLEKS                       R28 R27 K5 ["Value"]
      326 CALL                             R25 2 1
      327 SETTABLEKS                       R25 R24 K62 ["HeightSlider"]
      329 CALL                             R21 3 1
      330 SETTABLEKS                       R21 R20 K59 ["HeightSliderContainer"]
      332 CALL                             R17 3 1
      333 SETTABLEKS                       R17 R16 K7 ["Height"]
      335 CALL                             R13 3 1
      336 SETTABLEKS                       R13 R12 K25 ["Inputs"]
      338 GETUPVAL                         R14 3
      339 GETTABLEKS                       R13 R14 K9 ["createElement"]
      341 GETUPVAL                         R14 4
      342 DUPTABLE                         R15 K64 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "VerticalAlignment"}]
      343 GETIMPORT                        R16 K66 [Enum.AutomaticSize.X]
      345 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
      347 GETIMPORT                        R16 K19 [Enum.FillDirection.Horizontal]
      349 SETTABLEKS                       R16 R15 K11 ["Layout"]
      351 NAMECALL                         R16 R4 K33 ["getNextOrder"]
      353 CALL                             R16 1 1
      354 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      356 GETIMPORT                        R16 K45 [UDim2.fromOffset]
      358 LOADN                            R17 0
      359 GETTABLEKS                       R20 R2 K47 ["RowHeight"]
      361 MULK                             R19 R20 K68 [2]
      362 ADDK                             R18 R19 K67 [10]
      363 CALL                             R16 2 1
      364 SETTABLEKS                       R16 R15 K6 ["Size"]
      366 GETIMPORT                        R16 K69 [Enum.VerticalAlignment.Center]
      368 SETTABLEKS                       R16 R15 K12 ["VerticalAlignment"]
      370 DUPTABLE                         R16 K71 [{"Locking"}]
      371 GETUPVAL                         R18 3
      372 GETTABLEKS                       R17 R18 K9 ["createElement"]
      374 GETUPVAL                         R18 8
      375 DUPTABLE                         R19 K74 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      376 NAMECALL                         R20 R4 K33 ["getNextOrder"]
      378 CALL                             R20 1 1
      379 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      381 SETTABLEKS                       R8 R19 K72 ["OnClick"]
      383 GETIMPORT                        R20 K45 [UDim2.fromOffset]
      385 GETTABLEKS                       R21 R2 K35 ["LockButtonWidth"]
      387 GETTABLEKS                       R22 R2 K35 ["LockButtonWidth"]
      389 CALL                             R20 2 1
      390 SETTABLEKS                       R20 R19 K6 ["Size"]
      392 LOADK                            R20 K75 ["RoundSubtle"]
      393 SETTABLEKS                       R20 R19 K73 ["Style"]
      395 DUPTABLE                         R20 K77 [{"ImageContainer"}]
      396 GETUPVAL                         R22 3
      397 GETTABLEKS                       R21 R22 K9 ["createElement"]
      399 GETUPVAL                         R22 4
      400 DUPTABLE                         R23 K79 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
      401 GETIMPORT                        R24 K80 [Enum.HorizontalAlignment.Center]
      403 SETTABLEKS                       R24 R23 K78 ["HorizontalAlignment"]
      405 GETIMPORT                        R24 K32 [Enum.FillDirection.Vertical]
      407 SETTABLEKS                       R24 R23 K11 ["Layout"]
      409 GETIMPORT                        R24 K69 [Enum.VerticalAlignment.Center]
      411 SETTABLEKS                       R24 R23 K12 ["VerticalAlignment"]
      413 DUPTABLE                         R24 K82 [{"Icon"}]
      414 GETUPVAL                         R26 3
      415 GETTABLEKS                       R25 R26 K9 ["createElement"]
      417 GETUPVAL                         R26 9
      418 DUPTABLE                         R27 K84 [{"Image", "Size"}]
      419 GETTABLEKS                       R30 R0 K5 ["Value"]
      421 GETTABLEKS                       R29 R30 K8 ["Locked"]
      423 JUMPIFNOT                        R29 ; [+3]
      424 GETTABLEKS                       R28 R2 K8 ["Locked"]
      426 JUMP                             ; [+2]
      427 GETTABLEKS                       R28 R2 K85 ["Unlocked"]
      429 SETTABLEKS                       R28 R27 K83 ["Image"]
      431 GETIMPORT                        R28 K45 [UDim2.fromOffset]
      433 LOADN                            R29 16
      434 LOADN                            R30 16
      435 CALL                             R28 2 1
      436 SETTABLEKS                       R28 R27 K6 ["Size"]
      438 CALL                             R25 2 1
      439 SETTABLEKS                       R25 R24 K81 ["Icon"]
      441 CALL                             R21 3 1
      442 SETTABLEKS                       R21 R20 K76 ["ImageContainer"]
      444 CALL                             R17 3 1
      445 SETTABLEKS                       R17 R16 K70 ["Locking"]
      447 CALL                             R13 3 1
      448 SETTABLEKS                       R13 R12 K26 ["LockingContainer"]
      450 CALL                             R9 3 1
      451 GETUPVAL                         R11 3
      452 GETTABLEKS                       R10 R11 K9 ["createElement"]
      454 GETUPVAL                         R11 7
      455 DUPTABLE                         R12 K57 [{"Height", "OnChanged", "Value"}]
      456 GETTABLEKS                       R13 R2 K47 ["RowHeight"]
      458 SETTABLEKS                       R13 R12 K7 ["Height"]
      460 SETTABLEKS                       R6 R12 K56 ["OnChanged"]
      462 GETTABLEKS                       R14 R0 K5 ["Value"]
      464 GETTABLEKS                       R13 R14 K6 ["Size"]
      466 SETTABLEKS                       R13 R12 K5 ["Value"]
      468 CALL                             R10 2 1
      469 GETUPVAL                         R13 6
      470 GETTABLEKS                       R12 R13 K86 ["Sphere"]
      472 JUMPIFNOTEQ                      R3 R12 ; [+3]
      474 MOVE                             R11 R10
      475 RETURN                           R11 1
      476 MOVE                             R11 R9
      477 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R5 R1 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R1 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["LayoutOrderIterator"]
       31 GETTABLEKS                       R6 R1 K14 ["UI"]
       33 GETTABLEKS                       R7 R6 K15 ["Button"]
       35 GETTABLEKS                       R8 R6 K16 ["Image"]
       37 GETTABLEKS                       R9 R6 K17 ["Pane"]
       39 GETTABLEKS                       R10 R6 K18 ["Slider"]
       41 GETTABLEKS                       R11 R6 K19 ["TextLabel"]
       43 GETIMPORT                        R12 K5 [require]
       45 GETTABLEKS                       R14 R0 K20 ["Src"]
       47 GETTABLEKS                       R13 R14 K21 ["Types"]
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R13 R12 K22 ["BrushShape"]
       52 GETIMPORT                        R14 K5 [require]
       54 GETTABLEKS                       R17 R0 K20 ["Src"]
       56 GETTABLEKS                       R16 R17 K23 ["Resources"]
       58 GETTABLEKS                       R15 R16 K24 ["Theme"]
       60 CALL                             R14 1 1
       61 DUPCLOSURE                       R15 K25 [PROTO_0]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 DUPCLOSURE                       R16 K26 [PROTO_5]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 RETURN                           R16 1
