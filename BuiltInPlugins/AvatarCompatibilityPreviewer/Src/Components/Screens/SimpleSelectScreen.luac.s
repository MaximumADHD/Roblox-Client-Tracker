PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 LOADK                            R1 K3 ["MeshImporter"]
        8 LOADK                            R2 K4 ["Toggle"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K5 ["Actions"]
       12 NAMECALL                         R1 R1 K6 ["GetPluginComponent"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K9 [task.spawn]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
       11 GETTABLEKS                       R1 R1 K3 ["Stylizer"]
       13 LOADK                            R3 K4 ["SimpleSelectScreen"]
       14 NAMECALL                         R1 R1 K2 ["use"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["Util"]
       20 GETTABLEKS                       R2 R2 K6 ["LayoutOrderIterator"]
       22 GETTABLEKS                       R2 R2 K7 ["new"]
       24 CALL                             R2 0 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
       28 GETTABLEKS                       R3 R3 K8 ["Plugin"]
       30 NAMECALL                         R3 R3 K2 ["use"]
       32 CALL                             R3 1 1
       33 NAMECALL                         R3 R3 K9 ["get"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R5 1
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+4]
       39 GETUPVAL                         R4 2
       40 LOADB                            R5 0
       41 CALL                             R4 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 GETUPVAL                         R6 1
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+8]
       47 GETUPVAL                         R5 3
       48 NAMECALL                         R5 R5 K2 ["use"]
       50 CALL                             R5 1 1
       51 NAMECALL                         R5 R5 K9 ["get"]
       53 CALL                             R5 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R5
       56 GETUPVAL                         R7 1
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+13]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       62 NEWCLOSURE                       R7 P0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R5
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R6 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 GETUPVAL                         R7 4
       74 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       76 NEWCLOSURE                       R8 P1
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R3
       79 NEWTABLE                         R9 0 1
       81 MOVE                             R10 R3
       82 SETLIST                          R9 R10 1 [1]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R9 1
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R8 R4 K11 ["enable"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R8
       92 GETUPVAL                         R9 6
       93 CALL                             R9 0 1
       94 JUMPIFNOT                        R9 ; [+456]
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K12 ["createElement"]
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K13 ["UI"]
      101 GETTABLEKS                       R10 R10 K14 ["Pane"]
      103 NEWTABLE                         R11 0 0
      105 DUPTABLE                         R12 K17 [{"Contents", "MarketplaceImportDialog"}]
      106 GETUPVAL                         R13 4
      107 GETTABLEKS                       R13 R13 K12 ["createElement"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K13 ["UI"]
      112 GETTABLEKS                       R14 R14 K14 ["Pane"]
      114 DUPTABLE                         R15 K21 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      115 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R16 R15 K18 ["Layout"]
      119 GETIMPORT                        R16 K27 [Enum.HorizontalAlignment.Center]
      121 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      123 GETIMPORT                        R16 K28 [Enum.VerticalAlignment.Center]
      125 SETTABLEKS                       R16 R15 K20 ["VerticalAlignment"]
      127 DUPTABLE                         R16 K30 [{"Buttons"}]
      128 GETUPVAL                         R17 4
      129 GETTABLEKS                       R17 R17 K12 ["createElement"]
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R18 R18 K13 ["UI"]
      134 GETTABLEKS                       R18 R18 K14 ["Pane"]
      136 DUPTABLE                         R19 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      137 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      141 GETIMPORT                        R20 K25 [Enum.FillDirection.Vertical]
      143 SETTABLEKS                       R20 R19 K18 ["Layout"]
      145 LOADN                            R20 20
      146 SETTABLEKS                       R20 R19 K32 ["Spacing"]
      148 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Center]
      150 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      152 NAMECALL                         R20 R2 K37 ["getNextOrder"]
      154 CALL                             R20 1 1
      155 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
      157 DUPTABLE                         R20 K43 [{"Image", "SelectTitle", "SplitLabel", "ButtonRow", "Import3D"}]
      158 GETUPVAL                         R21 4
      159 GETTABLEKS                       R21 R21 K12 ["createElement"]
      161 GETUPVAL                         R22 0
      162 GETTABLEKS                       R22 R22 K13 ["UI"]
      164 GETTABLEKS                       R22 R22 K38 ["Image"]
      166 DUPTABLE                         R23 K45 [{"LayoutOrder", "Image", "Size"}]
      167 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      169 CALL                             R24 1 1
      170 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      172 GETTABLEKS                       R24 R1 K38 ["Image"]
      174 SETTABLEKS                       R24 R23 K38 ["Image"]
      176 GETIMPORT                        R24 K48 [UDim2.fromOffset]
      178 LOADN                            R25 64
      179 LOADN                            R26 180
      180 CALL                             R24 2 1
      181 SETTABLEKS                       R24 R23 K44 ["Size"]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K38 ["Image"]
      186 GETUPVAL                         R21 4
      187 GETTABLEKS                       R21 R21 K12 ["createElement"]
      189 GETUPVAL                         R22 0
      190 GETTABLEKS                       R22 R22 K13 ["UI"]
      192 GETTABLEKS                       R22 R22 K49 ["TextLabel"]
      194 DUPTABLE                         R23 K54 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
      195 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      197 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      199 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      201 CALL                             R24 1 1
      202 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      204 LOADB                            R24 1
      205 SETTABLEKS                       R24 R23 K50 ["TextWrapped"]
      207 GETTABLEKS                       R24 R1 K51 ["FontFace"]
      209 SETTABLEKS                       R24 R23 K51 ["FontFace"]
      211 LOADK                            R26 K55 ["SelectScreen"]
      212 LOADK                            R27 K39 ["SelectTitle"]
      213 NAMECALL                         R24 R0 K56 ["getText"]
      215 CALL                             R24 3 1
      216 SETTABLEKS                       R24 R23 K52 ["Text"]
      218 LOADK                            R24 K57 ["Title"]
      219 SETTABLEKS                       R24 R23 K53 ["Style"]
      221 CALL                             R21 2 1
      222 SETTABLEKS                       R21 R20 K39 ["SelectTitle"]
      224 GETUPVAL                         R21 4
      225 GETTABLEKS                       R21 R21 K12 ["createElement"]
      227 GETUPVAL                         R22 0
      228 GETTABLEKS                       R22 R22 K13 ["UI"]
      230 GETTABLEKS                       R22 R22 K14 ["Pane"]
      232 DUPTABLE                         R23 K58 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      233 GETIMPORT                        R24 K25 [Enum.FillDirection.Vertical]
      235 SETTABLEKS                       R24 R23 K18 ["Layout"]
      237 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      239 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      241 GETTABLEKS                       R24 R1 K32 ["Spacing"]
      243 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      245 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      247 CALL                             R24 1 1
      248 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      250 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      252 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      254 DUPTABLE                         R24 K61 [{"Description", "LearnMore"}]
      255 GETUPVAL                         R25 4
      256 GETTABLEKS                       R25 R25 K12 ["createElement"]
      258 GETUPVAL                         R26 0
      259 GETTABLEKS                       R26 R26 K13 ["UI"]
      261 GETTABLEKS                       R26 R26 K49 ["TextLabel"]
      263 DUPTABLE                         R27 K62 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
      264 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      266 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      268 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      270 CALL                             R28 1 1
      271 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      273 LOADK                            R30 K55 ["SelectScreen"]
      274 LOADK                            R31 K63 ["SelectDescription"]
      275 NAMECALL                         R28 R0 K56 ["getText"]
      277 CALL                             R28 3 1
      278 SETTABLEKS                       R28 R27 K52 ["Text"]
      280 LOADB                            R28 1
      281 SETTABLEKS                       R28 R27 K50 ["TextWrapped"]
      283 CALL                             R25 2 1
      284 SETTABLEKS                       R25 R24 K59 ["Description"]
      286 GETUPVAL                         R25 4
      287 GETTABLEKS                       R25 R25 K12 ["createElement"]
      289 GETUPVAL                         R26 0
      290 GETTABLEKS                       R26 R26 K13 ["UI"]
      292 GETTABLEKS                       R26 R26 K64 ["LinkText"]
      294 DUPTABLE                         R27 K66 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      295 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      297 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      299 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      301 CALL                             R28 1 1
      302 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      304 DUPCLOSURE                       R28 K67 [PROTO_3]
      305 CAPTURE                          UPVAL U7
      306 CAPTURE                          UPVAL U8
      307 SETTABLEKS                       R28 R27 K65 ["OnClick"]
      309 LOADK                            R30 K55 ["SelectScreen"]
      310 LOADK                            R31 K60 ["LearnMore"]
      311 NAMECALL                         R28 R0 K56 ["getText"]
      313 CALL                             R28 3 1
      314 SETTABLEKS                       R28 R27 K52 ["Text"]
      316 LOADB                            R28 1
      317 SETTABLEKS                       R28 R27 K50 ["TextWrapped"]
      319 CALL                             R25 2 1
      320 SETTABLEKS                       R25 R24 K60 ["LearnMore"]
      322 CALL                             R21 3 1
      323 SETTABLEKS                       R21 R20 K40 ["SplitLabel"]
      325 GETUPVAL                         R22 1
      326 CALL                             R22 0 1
      327 JUMPIFNOT                        R22 ; [+134]
      328 GETUPVAL                         R21 4
      329 GETTABLEKS                       R21 R21 K12 ["createElement"]
      331 GETUPVAL                         R22 0
      332 GETTABLEKS                       R22 R22 K13 ["UI"]
      334 GETTABLEKS                       R22 R22 K14 ["Pane"]
      336 DUPTABLE                         R23 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      337 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      339 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      341 GETIMPORT                        R24 K69 [Enum.FillDirection.Horizontal]
      343 SETTABLEKS                       R24 R23 K18 ["Layout"]
      345 LOADN                            R24 12
      346 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      348 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      350 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      352 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      354 CALL                             R24 1 1
      355 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      357 DUPTABLE                         R24 K71 [{"Import3D", "AddAssetId"}]
      358 GETUPVAL                         R25 4
      359 GETTABLEKS                       R25 R25 K12 ["createElement"]
      361 GETUPVAL                         R26 0
      362 GETTABLEKS                       R26 R26 K13 ["UI"]
      364 GETTABLEKS                       R26 R26 K72 ["IconButton"]
      366 DUPTABLE                         R27 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      367 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      369 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      371 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      373 CALL                             R28 1 1
      374 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      376 LOADK                            R28 K76 ["PointingHand"]
      377 SETTABLEKS                       R28 R27 K73 ["Cursor"]
      379 SETTABLEKS                       R7 R27 K65 ["OnClick"]
      381 DUPTABLE                         R28 K81 [{"Left", "Right", "Top", "Bottom"}]
      382 LOADN                            R29 12
      383 SETTABLEKS                       R29 R28 K77 ["Left"]
      385 LOADN                            R29 12
      386 SETTABLEKS                       R29 R28 K78 ["Right"]
      388 LOADN                            R29 6
      389 SETTABLEKS                       R29 R28 K79 ["Top"]
      391 LOADN                            R29 6
      392 SETTABLEKS                       R29 R28 K80 ["Bottom"]
      394 SETTABLEKS                       R28 R27 K74 ["Padding"]
      396 LOADK                            R30 K55 ["SelectScreen"]
      397 LOADK                            R31 K82 ["Import3DEllipsis"]
      398 NAMECALL                         R28 R0 K56 ["getText"]
      400 CALL                             R28 3 1
      401 SETTABLEKS                       R28 R27 K52 ["Text"]
      403 LOADK                            R28 K83 ["Primary"]
      404 SETTABLEKS                       R28 R27 K53 ["Style"]
      406 CALL                             R25 2 1
      407 SETTABLEKS                       R25 R24 K42 ["Import3D"]
      409 GETUPVAL                         R25 4
      410 GETTABLEKS                       R25 R25 K12 ["createElement"]
      412 GETUPVAL                         R26 0
      413 GETTABLEKS                       R26 R26 K13 ["UI"]
      415 GETTABLEKS                       R26 R26 K72 ["IconButton"]
      417 DUPTABLE                         R27 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      418 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      420 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      422 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      424 CALL                             R28 1 1
      425 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      427 LOADK                            R28 K76 ["PointingHand"]
      428 SETTABLEKS                       R28 R27 K73 ["Cursor"]
      430 SETTABLEKS                       R8 R27 K65 ["OnClick"]
      432 DUPTABLE                         R28 K81 [{"Left", "Right", "Top", "Bottom"}]
      433 LOADN                            R29 12
      434 SETTABLEKS                       R29 R28 K77 ["Left"]
      436 LOADN                            R29 12
      437 SETTABLEKS                       R29 R28 K78 ["Right"]
      439 LOADN                            R29 6
      440 SETTABLEKS                       R29 R28 K79 ["Top"]
      442 LOADN                            R29 6
      443 SETTABLEKS                       R29 R28 K80 ["Bottom"]
      445 SETTABLEKS                       R28 R27 K74 ["Padding"]
      447 LOADK                            R30 K55 ["SelectScreen"]
      448 LOADK                            R31 K84 ["AddAssetID"]
      449 NAMECALL                         R28 R0 K56 ["getText"]
      451 CALL                             R28 3 1
      452 SETTABLEKS                       R28 R27 K52 ["Text"]
      454 LOADK                            R28 K83 ["Primary"]
      455 SETTABLEKS                       R28 R27 K53 ["Style"]
      457 CALL                             R25 2 1
      458 SETTABLEKS                       R25 R24 K70 ["AddAssetId"]
      460 CALL                             R21 3 1
      461 JUMP                             ; [+1]
      462 LOADNIL                          R21
      463 SETTABLEKS                       R21 R20 K41 ["ButtonRow"]
      465 GETUPVAL                         R22 1
      466 CALL                             R22 0 1
      467 JUMPIF                           R22 ; [+50]
      468 GETUPVAL                         R21 4
      469 GETTABLEKS                       R21 R21 K12 ["createElement"]
      471 GETUPVAL                         R22 0
      472 GETTABLEKS                       R22 R22 K13 ["UI"]
      474 GETTABLEKS                       R22 R22 K72 ["IconButton"]
      476 DUPTABLE                         R23 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      477 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      479 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      481 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      483 CALL                             R24 1 1
      484 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      486 LOADK                            R24 K76 ["PointingHand"]
      487 SETTABLEKS                       R24 R23 K73 ["Cursor"]
      489 SETTABLEKS                       R7 R23 K65 ["OnClick"]
      491 DUPTABLE                         R24 K81 [{"Left", "Right", "Top", "Bottom"}]
      492 LOADN                            R25 12
      493 SETTABLEKS                       R25 R24 K77 ["Left"]
      495 LOADN                            R25 12
      496 SETTABLEKS                       R25 R24 K78 ["Right"]
      498 LOADN                            R25 6
      499 SETTABLEKS                       R25 R24 K79 ["Top"]
      501 LOADN                            R25 6
      502 SETTABLEKS                       R25 R24 K80 ["Bottom"]
      504 SETTABLEKS                       R24 R23 K74 ["Padding"]
      506 LOADK                            R26 K55 ["SelectScreen"]
      507 LOADK                            R27 K82 ["Import3DEllipsis"]
      508 NAMECALL                         R24 R0 K56 ["getText"]
      510 CALL                             R24 3 1
      511 SETTABLEKS                       R24 R23 K52 ["Text"]
      513 LOADK                            R24 K83 ["Primary"]
      514 SETTABLEKS                       R24 R23 K53 ["Style"]
      516 CALL                             R21 2 1
      517 JUMP                             ; [+1]
      518 LOADNIL                          R21
      519 SETTABLEKS                       R21 R20 K42 ["Import3D"]
      521 CALL                             R17 3 1
      522 SETTABLEKS                       R17 R16 K29 ["Buttons"]
      524 CALL                             R13 3 1
      525 SETTABLEKS                       R13 R12 K15 ["Contents"]
      527 GETUPVAL                         R14 1
      528 CALL                             R14 0 1
      529 JUMPIFNOT                        R14 ; [+16]
      530 GETTABLEKS                       R14 R4 K85 ["enabled"]
      532 JUMPIFNOT                        R14 ; [+13]
      533 GETUPVAL                         R13 4
      534 GETTABLEKS                       R13 R13 K12 ["createElement"]
      536 GETUPVAL                         R14 9
      537 DUPTABLE                         R15 K88 [{"onClose", "onAddItems"}]
      538 GETTABLEKS                       R16 R4 K89 ["disable"]
      540 SETTABLEKS                       R16 R15 K86 ["onClose"]
      542 SETTABLEKS                       R6 R15 K87 ["onAddItems"]
      544 CALL                             R13 2 1
      545 JUMP                             ; [+1]
      546 LOADNIL                          R13
      547 SETTABLEKS                       R13 R12 K16 ["MarketplaceImportDialog"]
      549 CALL                             R9 3 -1
      550 RETURN                           R9 -1
      551 GETUPVAL                         R9 4
      552 GETTABLEKS                       R9 R9 K12 ["createElement"]
      554 GETUPVAL                         R10 0
      555 GETTABLEKS                       R10 R10 K13 ["UI"]
      557 GETTABLEKS                       R10 R10 K14 ["Pane"]
      559 DUPTABLE                         R11 K91 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
      560 GETIMPORT                        R12 K25 [Enum.FillDirection.Vertical]
      562 SETTABLEKS                       R12 R11 K18 ["Layout"]
      564 GETIMPORT                        R12 K27 [Enum.HorizontalAlignment.Center]
      566 SETTABLEKS                       R12 R11 K19 ["HorizontalAlignment"]
      568 GETIMPORT                        R12 K28 [Enum.VerticalAlignment.Center]
      570 SETTABLEKS                       R12 R11 K20 ["VerticalAlignment"]
      572 GETTABLEKS                       R12 R1 K92 ["BackgroundColor"]
      574 SETTABLEKS                       R12 R11 K90 ["BackgroundColor3"]
      576 DUPTABLE                         R12 K93 [{"Buttons", "MarketplaceImportDialog"}]
      577 GETUPVAL                         R13 4
      578 GETTABLEKS                       R13 R13 K12 ["createElement"]
      580 GETUPVAL                         R14 0
      581 GETTABLEKS                       R14 R14 K13 ["UI"]
      583 GETTABLEKS                       R14 R14 K14 ["Pane"]
      585 DUPTABLE                         R15 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      586 GETIMPORT                        R16 K36 [Enum.AutomaticSize.XY]
      588 SETTABLEKS                       R16 R15 K31 ["AutomaticSize"]
      590 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      592 SETTABLEKS                       R16 R15 K18 ["Layout"]
      594 LOADN                            R16 20
      595 SETTABLEKS                       R16 R15 K32 ["Spacing"]
      597 GETIMPORT                        R16 K27 [Enum.HorizontalAlignment.Center]
      599 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      601 NAMECALL                         R16 R2 K37 ["getNextOrder"]
      603 CALL                             R16 1 1
      604 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      606 DUPTABLE                         R16 K96 [{"Frame", "SelectHint", "SplitLabel", "ButtonRow", "Import3D"}]
      607 GETUPVAL                         R17 4
      608 GETTABLEKS                       R17 R17 K12 ["createElement"]
      610 LOADK                            R18 K94 ["Frame"]
      611 DUPTABLE                         R19 K98 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
      612 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      614 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      616 GETTABLEKS                       R20 R1 K99 ["ImageBackgroundColor"]
      618 SETTABLEKS                       R20 R19 K90 ["BackgroundColor3"]
      620 LOADN                            R20 0
      621 SETTABLEKS                       R20 R19 K97 ["BorderSizePixel"]
      623 DUPTABLE                         R20 K102 [{"UICorner", "UIPadding", "Image"}]
      624 GETUPVAL                         R21 4
      625 GETTABLEKS                       R21 R21 K12 ["createElement"]
      627 LOADK                            R22 K100 ["UICorner"]
      628 DUPTABLE                         R23 K104 [{"CornerRadius"}]
      629 GETIMPORT                        R24 K106 [UDim.new]
      631 LOADK                            R25 K107 [0.5]
      632 LOADN                            R26 0
      633 CALL                             R24 2 1
      634 SETTABLEKS                       R24 R23 K103 ["CornerRadius"]
      636 CALL                             R21 2 1
      637 SETTABLEKS                       R21 R20 K100 ["UICorner"]
      639 GETUPVAL                         R21 4
      640 GETTABLEKS                       R21 R21 K12 ["createElement"]
      642 LOADK                            R22 K101 ["UIPadding"]
      643 DUPTABLE                         R23 K112 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      644 GETIMPORT                        R24 K106 [UDim.new]
      646 LOADN                            R25 0
      647 LOADN                            R26 10
      648 CALL                             R24 2 1
      649 SETTABLEKS                       R24 R23 K108 ["PaddingTop"]
      651 GETIMPORT                        R24 K106 [UDim.new]
      653 LOADN                            R25 0
      654 LOADN                            R26 10
      655 CALL                             R24 2 1
      656 SETTABLEKS                       R24 R23 K109 ["PaddingBottom"]
      658 GETIMPORT                        R24 K106 [UDim.new]
      660 LOADN                            R25 0
      661 LOADN                            R26 10
      662 CALL                             R24 2 1
      663 SETTABLEKS                       R24 R23 K110 ["PaddingLeft"]
      665 GETIMPORT                        R24 K106 [UDim.new]
      667 LOADN                            R25 0
      668 LOADN                            R26 10
      669 CALL                             R24 2 1
      670 SETTABLEKS                       R24 R23 K111 ["PaddingRight"]
      672 CALL                             R21 2 1
      673 SETTABLEKS                       R21 R20 K101 ["UIPadding"]
      675 GETUPVAL                         R21 4
      676 GETTABLEKS                       R21 R21 K12 ["createElement"]
      678 GETUPVAL                         R22 0
      679 GETTABLEKS                       R22 R22 K13 ["UI"]
      681 GETTABLEKS                       R22 R22 K38 ["Image"]
      683 DUPTABLE                         R23 K114 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
      684 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      686 CALL                             R24 1 1
      687 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      689 LOADK                            R24 K115 ["rbxassetid://6022668945"]
      690 SETTABLEKS                       R24 R23 K38 ["Image"]
      692 GETTABLEKS                       R24 R1 K116 ["IconColor"]
      694 SETTABLEKS                       R24 R23 K113 ["ImageColor3"]
      696 GETTABLEKS                       R24 R1 K117 ["ImageSize"]
      698 SETTABLEKS                       R24 R23 K44 ["Size"]
      700 CALL                             R21 2 1
      701 SETTABLEKS                       R21 R20 K38 ["Image"]
      703 CALL                             R17 3 1
      704 SETTABLEKS                       R17 R16 K94 ["Frame"]
      706 GETUPVAL                         R17 4
      707 GETTABLEKS                       R17 R17 K12 ["createElement"]
      709 GETUPVAL                         R18 0
      710 GETTABLEKS                       R18 R18 K13 ["UI"]
      712 GETTABLEKS                       R18 R18 K49 ["TextLabel"]
      714 DUPTABLE                         R19 K118 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
      715 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      717 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      719 NAMECALL                         R20 R2 K37 ["getNextOrder"]
      721 CALL                             R20 1 1
      722 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
      724 LOADB                            R20 1
      725 SETTABLEKS                       R20 R19 K50 ["TextWrapped"]
      727 GETTABLEKS                       R20 R1 K51 ["FontFace"]
      729 SETTABLEKS                       R20 R19 K51 ["FontFace"]
      731 LOADK                            R22 K55 ["SelectScreen"]
      732 LOADK                            R23 K95 ["SelectHint"]
      733 NAMECALL                         R20 R0 K56 ["getText"]
      735 CALL                             R20 3 1
      736 SETTABLEKS                       R20 R19 K52 ["Text"]
      738 CALL                             R17 2 1
      739 SETTABLEKS                       R17 R16 K95 ["SelectHint"]
      741 GETUPVAL                         R17 4
      742 GETTABLEKS                       R17 R17 K12 ["createElement"]
      744 GETUPVAL                         R18 0
      745 GETTABLEKS                       R18 R18 K13 ["UI"]
      747 GETTABLEKS                       R18 R18 K14 ["Pane"]
      749 DUPTABLE                         R19 K58 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      750 GETIMPORT                        R20 K69 [Enum.FillDirection.Horizontal]
      752 SETTABLEKS                       R20 R19 K18 ["Layout"]
      754 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Center]
      756 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      758 GETTABLEKS                       R20 R1 K32 ["Spacing"]
      760 SETTABLEKS                       R20 R19 K32 ["Spacing"]
      762 NAMECALL                         R20 R2 K37 ["getNextOrder"]
      764 CALL                             R20 1 1
      765 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
      767 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      769 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      771 DUPTABLE                         R20 K122 [{"LeftLabel", "OrLabel", "RightLabel"}]
      772 GETUPVAL                         R21 4
      773 GETTABLEKS                       R21 R21 K12 ["createElement"]
      775 LOADK                            R22 K94 ["Frame"]
      776 DUPTABLE                         R23 K123 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      777 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      779 CALL                             R24 1 1
      780 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      782 GETTABLEKS                       R24 R1 K124 ["LineColor"]
      784 SETTABLEKS                       R24 R23 K90 ["BackgroundColor3"]
      786 LOADN                            R24 0
      787 SETTABLEKS                       R24 R23 K97 ["BorderSizePixel"]
      789 GETTABLEKS                       R24 R1 K125 ["LineSize"]
      791 SETTABLEKS                       R24 R23 K44 ["Size"]
      793 CALL                             R21 2 1
      794 SETTABLEKS                       R21 R20 K119 ["LeftLabel"]
      796 GETUPVAL                         R21 4
      797 GETTABLEKS                       R21 R21 K12 ["createElement"]
      799 GETUPVAL                         R22 0
      800 GETTABLEKS                       R22 R22 K13 ["UI"]
      802 GETTABLEKS                       R22 R22 K49 ["TextLabel"]
      804 DUPTABLE                         R23 K126 [{"AutomaticSize", "LayoutOrder", "Text"}]
      805 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      807 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      809 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      811 CALL                             R24 1 1
      812 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      814 LOADK                            R26 K55 ["SelectScreen"]
      815 LOADK                            R27 K127 ["Or"]
      816 NAMECALL                         R24 R0 K56 ["getText"]
      818 CALL                             R24 3 1
      819 SETTABLEKS                       R24 R23 K52 ["Text"]
      821 CALL                             R21 2 1
      822 SETTABLEKS                       R21 R20 K120 ["OrLabel"]
      824 GETUPVAL                         R21 4
      825 GETTABLEKS                       R21 R21 K12 ["createElement"]
      827 LOADK                            R22 K94 ["Frame"]
      828 DUPTABLE                         R23 K123 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      829 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      831 CALL                             R24 1 1
      832 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      834 GETTABLEKS                       R24 R1 K124 ["LineColor"]
      836 SETTABLEKS                       R24 R23 K90 ["BackgroundColor3"]
      838 LOADN                            R24 0
      839 SETTABLEKS                       R24 R23 K97 ["BorderSizePixel"]
      841 GETTABLEKS                       R24 R1 K125 ["LineSize"]
      843 SETTABLEKS                       R24 R23 K44 ["Size"]
      845 CALL                             R21 2 1
      846 SETTABLEKS                       R21 R20 K121 ["RightLabel"]
      848 CALL                             R17 3 1
      849 SETTABLEKS                       R17 R16 K40 ["SplitLabel"]
      851 GETUPVAL                         R18 1
      852 CALL                             R18 0 1
      853 JUMPIFNOT                        R18 ; [+132]
      854 GETUPVAL                         R17 4
      855 GETTABLEKS                       R17 R17 K12 ["createElement"]
      857 GETUPVAL                         R18 0
      858 GETTABLEKS                       R18 R18 K13 ["UI"]
      860 GETTABLEKS                       R18 R18 K14 ["Pane"]
      862 DUPTABLE                         R19 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      863 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      865 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      867 GETIMPORT                        R20 K69 [Enum.FillDirection.Horizontal]
      869 SETTABLEKS                       R20 R19 K18 ["Layout"]
      871 LOADN                            R20 12
      872 SETTABLEKS                       R20 R19 K32 ["Spacing"]
      874 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Center]
      876 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      878 NAMECALL                         R20 R2 K37 ["getNextOrder"]
      880 CALL                             R20 1 1
      881 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
      883 DUPTABLE                         R20 K71 [{"Import3D", "AddAssetId"}]
      884 GETUPVAL                         R21 4
      885 GETTABLEKS                       R21 R21 K12 ["createElement"]
      887 GETUPVAL                         R22 0
      888 GETTABLEKS                       R22 R22 K13 ["UI"]
      890 GETTABLEKS                       R22 R22 K72 ["IconButton"]
      892 DUPTABLE                         R23 K128 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
      893 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      895 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      897 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      899 CALL                             R24 1 1
      900 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      902 LOADK                            R24 K76 ["PointingHand"]
      903 SETTABLEKS                       R24 R23 K73 ["Cursor"]
      905 SETTABLEKS                       R7 R23 K65 ["OnClick"]
      907 GETIMPORT                        R24 K48 [UDim2.fromOffset]
      909 LOADN                            R25 0
      910 GETTABLEKS                       R26 R1 K129 ["ButtonHeight"]
      912 CALL                             R24 2 1
      913 SETTABLEKS                       R24 R23 K44 ["Size"]
      915 LOADN                            R24 5
      916 SETTABLEKS                       R24 R23 K74 ["Padding"]
      918 LOADN                            R24 5
      919 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      921 LOADK                            R26 K55 ["SelectScreen"]
      922 LOADK                            R27 K130 ["Import3DFile"]
      923 NAMECALL                         R24 R0 K56 ["getText"]
      925 CALL                             R24 3 1
      926 SETTABLEKS                       R24 R23 K52 ["Text"]
      928 LOADK                            R24 K131 ["PrimaryBrand"]
      929 SETTABLEKS                       R24 R23 K53 ["Style"]
      931 CALL                             R21 2 1
      932 SETTABLEKS                       R21 R20 K42 ["Import3D"]
      934 GETUPVAL                         R21 4
      935 GETTABLEKS                       R21 R21 K12 ["createElement"]
      937 GETUPVAL                         R22 0
      938 GETTABLEKS                       R22 R22 K13 ["UI"]
      940 GETTABLEKS                       R22 R22 K72 ["IconButton"]
      942 DUPTABLE                         R23 K128 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
      943 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      945 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      947 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      949 CALL                             R24 1 1
      950 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      952 LOADK                            R24 K76 ["PointingHand"]
      953 SETTABLEKS                       R24 R23 K73 ["Cursor"]
      955 SETTABLEKS                       R8 R23 K65 ["OnClick"]
      957 GETIMPORT                        R24 K48 [UDim2.fromOffset]
      959 LOADN                            R25 0
      960 GETTABLEKS                       R26 R1 K129 ["ButtonHeight"]
      962 CALL                             R24 2 1
      963 SETTABLEKS                       R24 R23 K44 ["Size"]
      965 LOADN                            R24 5
      966 SETTABLEKS                       R24 R23 K74 ["Padding"]
      968 LOADN                            R24 5
      969 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      971 LOADK                            R26 K55 ["SelectScreen"]
      972 LOADK                            R27 K84 ["AddAssetID"]
      973 NAMECALL                         R24 R0 K56 ["getText"]
      975 CALL                             R24 3 1
      976 SETTABLEKS                       R24 R23 K52 ["Text"]
      978 LOADK                            R24 K131 ["PrimaryBrand"]
      979 SETTABLEKS                       R24 R23 K53 ["Style"]
      981 CALL                             R21 2 1
      982 SETTABLEKS                       R21 R20 K70 ["AddAssetId"]
      984 CALL                             R17 3 1
      985 JUMP                             ; [+1]
      986 LOADNIL                          R17
      987 SETTABLEKS                       R17 R16 K41 ["ButtonRow"]
      989 GETUPVAL                         R18 1
      990 CALL                             R18 0 1
      991 JUMPIF                           R18 ; [+49]
      992 GETUPVAL                         R17 4
      993 GETTABLEKS                       R17 R17 K12 ["createElement"]
      995 GETUPVAL                         R18 0
      996 GETTABLEKS                       R18 R18 K13 ["UI"]
      998 GETTABLEKS                       R18 R18 K72 ["IconButton"]
     1000 DUPTABLE                         R19 K128 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
     1001 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
     1003 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
     1005 NAMECALL                         R20 R2 K37 ["getNextOrder"]
     1007 CALL                             R20 1 1
     1008 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
     1010 LOADK                            R20 K76 ["PointingHand"]
     1011 SETTABLEKS                       R20 R19 K73 ["Cursor"]
     1013 SETTABLEKS                       R7 R19 K65 ["OnClick"]
     1015 GETIMPORT                        R20 K48 [UDim2.fromOffset]
     1017 LOADN                            R21 0
     1018 GETTABLEKS                       R22 R1 K129 ["ButtonHeight"]
     1020 CALL                             R20 2 1
     1021 SETTABLEKS                       R20 R19 K44 ["Size"]
     1023 LOADN                            R20 5
     1024 SETTABLEKS                       R20 R19 K74 ["Padding"]
     1026 LOADN                            R20 5
     1027 SETTABLEKS                       R20 R19 K32 ["Spacing"]
     1029 LOADK                            R22 K55 ["SelectScreen"]
     1030 LOADK                            R23 K130 ["Import3DFile"]
     1031 NAMECALL                         R20 R0 K56 ["getText"]
     1033 CALL                             R20 3 1
     1034 SETTABLEKS                       R20 R19 K52 ["Text"]
     1036 LOADK                            R20 K131 ["PrimaryBrand"]
     1037 SETTABLEKS                       R20 R19 K53 ["Style"]
     1039 CALL                             R17 2 1
     1040 JUMP                             ; [+1]
     1041 LOADNIL                          R17
     1042 SETTABLEKS                       R17 R16 K42 ["Import3D"]
     1044 CALL                             R13 3 1
     1045 SETTABLEKS                       R13 R12 K29 ["Buttons"]
     1047 GETUPVAL                         R14 1
     1048 CALL                             R14 0 1
     1049 JUMPIFNOT                        R14 ; [+16]
     1050 GETTABLEKS                       R14 R4 K85 ["enabled"]
     1052 JUMPIFNOT                        R14 ; [+13]
     1053 GETUPVAL                         R13 4
     1054 GETTABLEKS                       R13 R13 K12 ["createElement"]
     1056 GETUPVAL                         R14 9
     1057 DUPTABLE                         R15 K88 [{"onClose", "onAddItems"}]
     1058 GETTABLEKS                       R16 R4 K89 ["disable"]
     1060 SETTABLEKS                       R16 R15 K86 ["onClose"]
     1062 SETTABLEKS                       R6 R15 K87 ["onAddItems"]
     1064 CALL                             R13 2 1
     1065 JUMP                             ; [+1]
     1066 LOADNIL                          R13
     1067 SETTABLEKS                       R13 R12 K16 ["MarketplaceImportDialog"]
     1069 CALL                             R9 3 -1
     1070 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Resources"]
       33 GETTABLEKS                       R5 R5 K15 ["Theme"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Components"]
       42 GETTABLEKS                       R6 R6 K17 ["MarketplaceImportDialog"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["SelectionWrapper"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K13 ["Src"]
       58 GETTABLEKS                       R8 R8 K18 ["Util"]
       60 GETTABLEKS                       R8 R8 K20 ["insertDefaultBodyWithMarketplaceItems"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K13 ["Src"]
       67 GETTABLEKS                       R9 R9 K21 ["Hooks"]
       69 GETTABLEKS                       R9 R9 K22 ["useToggleState"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K13 ["Src"]
       76 GETTABLEKS                       R10 R10 K23 ["Flags"]
       78 GETTABLEKS                       R10 R10 K24 ["getFFlagAvatarPreviewerSortClothingUI"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R1 K13 ["Src"]
       85 GETTABLEKS                       R11 R11 K23 ["Flags"]
       87 GETTABLEKS                       R11 R11 K25 ["getFFlagAvatarPreviewerStartFromAssetId"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K1 [game]
       92 LOADK                            R13 K26 ["AvatarAutoSetupLearnMoreLink"]
       93 LOADK                            R14 K27 ["https://create.roblox.com/docs/avatar-setup"]
       94 NAMECALL                         R11 R11 K28 ["DefineFastString"]
       96 CALL                             R11 3 1
       97 DUPCLOSURE                       R12 K29 [PROTO_4]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R5
      108 RETURN                           R12 1
