PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Height"]
        2 GETTABLEKS                       R2 R0 K1 ["Value"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K14 [{["Max"] = 64, ["Min"] = 1, ["OnValueChanged"], ["ShowInput"] = True, ["Size"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 0, ["Value"]}]
        9 GETTABLEKS                       R6 R0 K15 ["OnChanged"]
       11 SETTABLEKS                       R6 R5 K7 ["OnValueChanged"]
       13 GETIMPORT                        R6 K18 [UDim2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 LOADN                            R9 0
       18 MOVE                             R10 R1
       19 CALL                             R6 4 1
       20 SETTABLEKS                       R6 R5 K10 ["Size"]
       22 SETTABLEKS                       R2 R5 K1 ["Value"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["Value"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["Value"]
        9 GETTABLEKS                       R3 R3 K4 ["Locked"]
       11 JUMPIFNOT                        R3 ; [+12]
       12 OR                               R3 R0 R1
       13 SETTABLEKS                       R3 R2 K5 ["Height"]
       15 OR                               R3 R0 R1
       16 SETTABLEKS                       R3 R2 K6 ["Size"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K7 ["OnChanged"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 JUMPIFNOT                        R0 ; [+8]
       25 SETTABLEKS                       R0 R2 K6 ["Size"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["OnChanged"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R2 K5 ["Height"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K7 ["OnChanged"]
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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["Value"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R2 R0 K4 ["Locked"]
        8 NOT                              R1 R2
        9 SETTABLEKS                       R1 R0 K4 ["Locked"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["OnChanged"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["new"]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 2
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R7 0 3
       18 GETTABLEKS                       R8 R0 K5 ["Value"]
       20 GETTABLEKS                       R8 R8 K6 ["Size"]
       22 GETTABLEKS                       R9 R0 K5 ["Value"]
       24 GETTABLEKS                       R9 R9 K7 ["Height"]
       26 GETTABLEKS                       R10 R0 K5 ["Value"]
       28 GETTABLEKS                       R10 R10 K8 ["Locked"]
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
       56 GETTABLEKS                       R11 R0 K5 ["Value"]
       58 GETTABLEKS                       R11 R11 K6 ["Size"]
       60 GETTABLEKS                       R12 R0 K5 ["Value"]
       62 GETTABLEKS                       R12 R12 K7 ["Height"]
       64 GETTABLEKS                       R13 R0 K5 ["Value"]
       66 GETTABLEKS                       R13 R13 K8 ["Locked"]
       68 MOVE                             R14 R5
       69 SETLIST                          R10 R11 4 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K9 ["createElement"]
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
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R13 R13 K9 ["createElement"]
      100 GETUPVAL                         R14 4
      101 DUPTABLE                         R15 K31 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      102 GETIMPORT                        R16 K16 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
      106 GETIMPORT                        R16 K33 [Enum.FillDirection.Vertical]
      108 SETTABLEKS                       R16 R15 K11 ["Layout"]
      110 NAMECALL                         R16 R4 K34 ["getNextOrder"]
      112 CALL                             R16 1 1
      113 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      115 GETIMPORT                        R16 K35 [UDim2.new]
      117 LOADN                            R17 1
      118 GETTABLEKS                       R19 R2 K36 ["LockButtonWidth"]
      120 MINUS                            R18 R19
      121 LOADN                            R19 0
      122 LOADN                            R20 0
      123 CALL                             R16 4 1
      124 SETTABLEKS                       R16 R15 K6 ["Size"]
      126 GETIMPORT                        R16 K24 [Enum.VerticalAlignment.Top]
      128 SETTABLEKS                       R16 R15 K12 ["VerticalAlignment"]
      130 DUPTABLE                         R16 K37 [{"Size", "Height"}]
      131 GETUPVAL                         R17 3
      132 GETTABLEKS                       R17 R17 K9 ["createElement"]
      134 GETUPVAL                         R18 4
      135 DUPTABLE                         R19 K38 [{"AutomaticSize", "Layout", "LayoutOrder"}]
      136 GETIMPORT                        R20 K16 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R20 R19 K10 ["AutomaticSize"]
      140 GETIMPORT                        R20 K19 [Enum.FillDirection.Horizontal]
      142 SETTABLEKS                       R20 R19 K11 ["Layout"]
      144 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      146 CALL                             R20 1 1
      147 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      149 DUPTABLE                         R20 K41 [{"SizeLabel", "SizeSliderContainer"}]
      150 GETUPVAL                         R21 3
      151 GETTABLEKS                       R21 R21 K9 ["createElement"]
      153 GETUPVAL                         R22 5
      154 DUPTABLE                         R23 K44 [{"LayoutOrder", "Size", "Text", "TextYAlignment"}]
      155 NAMECALL                         R24 R4 K34 ["getNextOrder"]
      157 CALL                             R24 1 1
      158 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      160 GETIMPORT                        R24 K46 [UDim2.fromOffset]
      162 GETTABLEKS                       R25 R2 K47 ["LabelWidth"]
      164 GETTABLEKS                       R26 R2 K48 ["RowHeight"]
      166 CALL                             R24 2 1
      167 SETTABLEKS                       R24 R23 K6 ["Size"]
      169 GETUPVAL                         R25 6
      170 GETTABLEKS                       R25 R25 K49 ["Cylinder"]
      172 JUMPIFNOTEQ                      R3 R25 ; [+3]
      174 LOADK                            R24 K50 ["R"]
      175 JUMP                             ; [+1]
      176 LOADK                            R24 K51 ["W"]
      177 SETTABLEKS                       R24 R23 K42 ["Text"]
      179 GETIMPORT                        R24 K53 [Enum.TextYAlignment.Center]
      181 SETTABLEKS                       R24 R23 K43 ["TextYAlignment"]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K39 ["SizeLabel"]
      186 GETUPVAL                         R21 3
      187 GETTABLEKS                       R21 R21 K9 ["createElement"]
      189 GETUPVAL                         R22 4
      190 DUPTABLE                         R23 K54 [{"LayoutOrder", "Size"}]
      191 NAMECALL                         R24 R4 K34 ["getNextOrder"]
      193 CALL                             R24 1 1
      194 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      196 GETIMPORT                        R24 K35 [UDim2.new]
      198 LOADN                            R25 1
      199 GETTABLEKS                       R27 R2 K47 ["LabelWidth"]
      201 MINUS                            R26 R27
      202 LOADN                            R27 0
      203 GETTABLEKS                       R28 R2 K48 ["RowHeight"]
      205 CALL                             R24 4 1
      206 SETTABLEKS                       R24 R23 K6 ["Size"]
      208 DUPTABLE                         R24 K56 [{"SizeSlider"}]
      209 GETUPVAL                         R25 3
      210 GETTABLEKS                       R25 R25 K9 ["createElement"]
      212 GETUPVAL                         R26 7
      213 DUPTABLE                         R27 K58 [{"Height", "OnChanged", "Value"}]
      214 GETTABLEKS                       R28 R2 K48 ["RowHeight"]
      216 SETTABLEKS                       R28 R27 K7 ["Height"]
      218 SETTABLEKS                       R6 R27 K57 ["OnChanged"]
      220 GETTABLEKS                       R28 R0 K5 ["Value"]
      222 GETTABLEKS                       R28 R28 K6 ["Size"]
      224 SETTABLEKS                       R28 R27 K5 ["Value"]
      226 CALL                             R25 2 1
      227 SETTABLEKS                       R25 R24 K55 ["SizeSlider"]
      229 CALL                             R21 3 1
      230 SETTABLEKS                       R21 R20 K40 ["SizeSliderContainer"]
      232 CALL                             R17 3 1
      233 SETTABLEKS                       R17 R16 K6 ["Size"]
      235 GETUPVAL                         R17 3
      236 GETTABLEKS                       R17 R17 K9 ["createElement"]
      238 GETUPVAL                         R18 4
      239 DUPTABLE                         R19 K38 [{"AutomaticSize", "Layout", "LayoutOrder"}]
      240 GETIMPORT                        R20 K16 [Enum.AutomaticSize.Y]
      242 SETTABLEKS                       R20 R19 K10 ["AutomaticSize"]
      244 GETIMPORT                        R20 K19 [Enum.FillDirection.Horizontal]
      246 SETTABLEKS                       R20 R19 K11 ["Layout"]
      248 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      250 CALL                             R20 1 1
      251 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      253 DUPTABLE                         R20 K61 [{"HeightLabel", "HeightSliderContainer"}]
      254 GETUPVAL                         R21 3
      255 GETTABLEKS                       R21 R21 K9 ["createElement"]
      257 GETUPVAL                         R22 5
      258 DUPTABLE                         R23 K63 [{["LayoutOrder"], ["Size"], ["Text"] = "H", ["TextYAlignment"]}]
      259 NAMECALL                         R24 R4 K34 ["getNextOrder"]
      261 CALL                             R24 1 1
      262 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      264 GETIMPORT                        R24 K46 [UDim2.fromOffset]
      266 GETTABLEKS                       R25 R2 K47 ["LabelWidth"]
      268 GETTABLEKS                       R26 R2 K48 ["RowHeight"]
      270 CALL                             R24 2 1
      271 SETTABLEKS                       R24 R23 K6 ["Size"]
      273 GETIMPORT                        R24 K53 [Enum.TextYAlignment.Center]
      275 SETTABLEKS                       R24 R23 K43 ["TextYAlignment"]
      277 CALL                             R21 2 1
      278 SETTABLEKS                       R21 R20 K59 ["HeightLabel"]
      280 GETUPVAL                         R21 3
      281 GETTABLEKS                       R21 R21 K9 ["createElement"]
      283 GETUPVAL                         R22 4
      284 DUPTABLE                         R23 K54 [{"LayoutOrder", "Size"}]
      285 NAMECALL                         R24 R4 K34 ["getNextOrder"]
      287 CALL                             R24 1 1
      288 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      290 GETIMPORT                        R24 K35 [UDim2.new]
      292 LOADN                            R25 1
      293 GETTABLEKS                       R27 R2 K47 ["LabelWidth"]
      295 MINUS                            R26 R27
      296 LOADN                            R27 0
      297 GETTABLEKS                       R28 R2 K48 ["RowHeight"]
      299 CALL                             R24 4 1
      300 SETTABLEKS                       R24 R23 K6 ["Size"]
      302 DUPTABLE                         R24 K65 [{"HeightSlider"}]
      303 GETUPVAL                         R25 3
      304 GETTABLEKS                       R25 R25 K9 ["createElement"]
      306 GETUPVAL                         R26 7
      307 DUPTABLE                         R27 K58 [{"Height", "OnChanged", "Value"}]
      308 GETTABLEKS                       R28 R2 K48 ["RowHeight"]
      310 SETTABLEKS                       R28 R27 K7 ["Height"]
      312 SETTABLEKS                       R7 R27 K57 ["OnChanged"]
      314 GETTABLEKS                       R28 R0 K5 ["Value"]
      316 GETTABLEKS                       R28 R28 K7 ["Height"]
      318 SETTABLEKS                       R28 R27 K5 ["Value"]
      320 CALL                             R25 2 1
      321 SETTABLEKS                       R25 R24 K64 ["HeightSlider"]
      323 CALL                             R21 3 1
      324 SETTABLEKS                       R21 R20 K60 ["HeightSliderContainer"]
      326 CALL                             R17 3 1
      327 SETTABLEKS                       R17 R16 K7 ["Height"]
      329 CALL                             R13 3 1
      330 SETTABLEKS                       R13 R12 K25 ["Inputs"]
      332 GETUPVAL                         R13 3
      333 GETTABLEKS                       R13 R13 K9 ["createElement"]
      335 GETUPVAL                         R14 4
      336 DUPTABLE                         R15 K66 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "VerticalAlignment"}]
      337 GETIMPORT                        R16 K68 [Enum.AutomaticSize.X]
      339 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
      341 GETIMPORT                        R16 K19 [Enum.FillDirection.Horizontal]
      343 SETTABLEKS                       R16 R15 K11 ["Layout"]
      345 NAMECALL                         R16 R4 K34 ["getNextOrder"]
      347 CALL                             R16 1 1
      348 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      350 GETIMPORT                        R16 K46 [UDim2.fromOffset]
      352 LOADN                            R17 0
      353 GETTABLEKS                       R20 R2 K48 ["RowHeight"]
      355 MULK                             R19 R20 K69 [2]
      356 ADDK                             R18 R19 K30 [10]
      357 CALL                             R16 2 1
      358 SETTABLEKS                       R16 R15 K6 ["Size"]
      360 GETIMPORT                        R16 K70 [Enum.VerticalAlignment.Center]
      362 SETTABLEKS                       R16 R15 K12 ["VerticalAlignment"]
      364 DUPTABLE                         R16 K72 [{"Locking"}]
      365 GETUPVAL                         R17 3
      366 GETTABLEKS                       R17 R17 K9 ["createElement"]
      368 GETUPVAL                         R18 8
      369 DUPTABLE                         R19 K76 [{["LayoutOrder"], ["OnClick"], ["Size"], ["Style"] = "RoundSubtle"}]
      370 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      372 CALL                             R20 1 1
      373 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      375 SETTABLEKS                       R8 R19 K73 ["OnClick"]
      377 GETIMPORT                        R20 K46 [UDim2.fromOffset]
      379 GETTABLEKS                       R21 R2 K36 ["LockButtonWidth"]
      381 GETTABLEKS                       R22 R2 K36 ["LockButtonWidth"]
      383 CALL                             R20 2 1
      384 SETTABLEKS                       R20 R19 K6 ["Size"]
      386 DUPTABLE                         R20 K78 [{"ImageContainer"}]
      387 GETUPVAL                         R21 3
      388 GETTABLEKS                       R21 R21 K9 ["createElement"]
      390 GETUPVAL                         R22 4
      391 DUPTABLE                         R23 K80 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
      392 GETIMPORT                        R24 K81 [Enum.HorizontalAlignment.Center]
      394 SETTABLEKS                       R24 R23 K79 ["HorizontalAlignment"]
      396 GETIMPORT                        R24 K33 [Enum.FillDirection.Vertical]
      398 SETTABLEKS                       R24 R23 K11 ["Layout"]
      400 GETIMPORT                        R24 K70 [Enum.VerticalAlignment.Center]
      402 SETTABLEKS                       R24 R23 K12 ["VerticalAlignment"]
      404 DUPTABLE                         R24 K83 [{"Icon"}]
      405 GETUPVAL                         R25 3
      406 GETTABLEKS                       R25 R25 K9 ["createElement"]
      408 GETUPVAL                         R26 9
      409 DUPTABLE                         R27 K85 [{"Image", "Size"}]
      410 GETTABLEKS                       R29 R0 K5 ["Value"]
      412 GETTABLEKS                       R29 R29 K8 ["Locked"]
      414 JUMPIFNOT                        R29 ; [+3]
      415 GETTABLEKS                       R28 R2 K8 ["Locked"]
      417 JUMP                             ; [+2]
      418 GETTABLEKS                       R28 R2 K86 ["Unlocked"]
      420 SETTABLEKS                       R28 R27 K84 ["Image"]
      422 GETIMPORT                        R28 K46 [UDim2.fromOffset]
      424 LOADN                            R29 16
      425 LOADN                            R30 16
      426 CALL                             R28 2 1
      427 SETTABLEKS                       R28 R27 K6 ["Size"]
      429 CALL                             R25 2 1
      430 SETTABLEKS                       R25 R24 K82 ["Icon"]
      432 CALL                             R21 3 1
      433 SETTABLEKS                       R21 R20 K77 ["ImageContainer"]
      435 CALL                             R17 3 1
      436 SETTABLEKS                       R17 R16 K71 ["Locking"]
      438 CALL                             R13 3 1
      439 SETTABLEKS                       R13 R12 K26 ["LockingContainer"]
      441 CALL                             R9 3 1
      442 GETUPVAL                         R10 3
      443 GETTABLEKS                       R10 R10 K9 ["createElement"]
      445 GETUPVAL                         R11 7
      446 DUPTABLE                         R12 K58 [{"Height", "OnChanged", "Value"}]
      447 GETTABLEKS                       R13 R2 K48 ["RowHeight"]
      449 SETTABLEKS                       R13 R12 K7 ["Height"]
      451 SETTABLEKS                       R6 R12 K57 ["OnChanged"]
      453 GETTABLEKS                       R13 R0 K5 ["Value"]
      455 GETTABLEKS                       R13 R13 K6 ["Size"]
      457 SETTABLEKS                       R13 R12 K5 ["Value"]
      459 CALL                             R10 2 1
      460 GETUPVAL                         R12 6
      461 GETTABLEKS                       R12 R12 K87 ["Sphere"]
      463 JUMPIFNOTEQ                      R3 R12 ; [+3]
      465 MOVE                             R11 R10
      466 RETURN                           R11 1
      467 MOVE                             R11 R9
      468 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       27 GETTABLEKS                       R5 R1 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["LayoutOrderIterator"]
       31 GETTABLEKS                       R6 R1 K14 ["UI"]
       33 GETTABLEKS                       R7 R6 K15 ["Button"]
       35 GETTABLEKS                       R8 R6 K16 ["Image"]
       37 GETTABLEKS                       R9 R6 K17 ["Pane"]
       39 GETTABLEKS                       R10 R6 K18 ["Slider"]
       41 GETTABLEKS                       R11 R6 K19 ["TextLabel"]
       43 GETIMPORT                        R12 K5 [require]
       45 GETTABLEKS                       R13 R0 K20 ["Src"]
       47 GETTABLEKS                       R13 R13 K21 ["Types"]
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R13 R12 K22 ["BrushShape"]
       52 GETIMPORT                        R14 K5 [require]
       54 GETTABLEKS                       R15 R0 K20 ["Src"]
       56 GETTABLEKS                       R15 R15 K23 ["Resources"]
       58 GETTABLEKS                       R15 R15 K24 ["Theme"]
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
