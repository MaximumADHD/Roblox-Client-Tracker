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
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R9 R9 K12 ["createElement"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K13 ["UI"]
       98 GETTABLEKS                       R10 R10 K14 ["Pane"]
      100 NEWTABLE                         R11 0 0
      102 DUPTABLE                         R12 K17 [{"Contents", "MarketplaceImportDialog"}]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R13 R13 K12 ["createElement"]
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R14 R14 K13 ["UI"]
      109 GETTABLEKS                       R14 R14 K14 ["Pane"]
      111 DUPTABLE                         R15 K21 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      112 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      114 SETTABLEKS                       R16 R15 K18 ["Layout"]
      116 GETIMPORT                        R16 K27 [Enum.HorizontalAlignment.Center]
      118 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      120 GETIMPORT                        R16 K28 [Enum.VerticalAlignment.Center]
      122 SETTABLEKS                       R16 R15 K20 ["VerticalAlignment"]
      124 DUPTABLE                         R16 K30 [{"Buttons"}]
      125 GETUPVAL                         R17 4
      126 GETTABLEKS                       R17 R17 K12 ["createElement"]
      128 GETUPVAL                         R18 0
      129 GETTABLEKS                       R18 R18 K13 ["UI"]
      131 GETTABLEKS                       R18 R18 K14 ["Pane"]
      133 DUPTABLE                         R19 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      134 GETIMPORT                        R20 K36 [Enum.AutomaticSize.XY]
      136 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      138 GETIMPORT                        R20 K25 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R20 R19 K18 ["Layout"]
      142 LOADN                            R20 20
      143 SETTABLEKS                       R20 R19 K32 ["Spacing"]
      145 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Center]
      147 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      149 NAMECALL                         R20 R2 K37 ["getNextOrder"]
      151 CALL                             R20 1 1
      152 SETTABLEKS                       R20 R19 K33 ["LayoutOrder"]
      154 DUPTABLE                         R20 K43 [{"Image", "SelectTitle", "SplitLabel", "ButtonRow", "Import3D"}]
      155 GETUPVAL                         R21 4
      156 GETTABLEKS                       R21 R21 K12 ["createElement"]
      158 GETUPVAL                         R22 0
      159 GETTABLEKS                       R22 R22 K13 ["UI"]
      161 GETTABLEKS                       R22 R22 K38 ["Image"]
      163 DUPTABLE                         R23 K45 [{"LayoutOrder", "Image", "Size"}]
      164 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      166 CALL                             R24 1 1
      167 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      169 GETTABLEKS                       R24 R1 K38 ["Image"]
      171 SETTABLEKS                       R24 R23 K38 ["Image"]
      173 GETIMPORT                        R24 K48 [UDim2.fromOffset]
      175 LOADN                            R25 64
      176 LOADN                            R26 180
      177 CALL                             R24 2 1
      178 SETTABLEKS                       R24 R23 K44 ["Size"]
      180 CALL                             R21 2 1
      181 SETTABLEKS                       R21 R20 K38 ["Image"]
      183 GETUPVAL                         R21 4
      184 GETTABLEKS                       R21 R21 K12 ["createElement"]
      186 GETUPVAL                         R22 0
      187 GETTABLEKS                       R22 R22 K13 ["UI"]
      189 GETTABLEKS                       R22 R22 K49 ["TextLabel"]
      191 DUPTABLE                         R23 K54 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
      192 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      194 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      196 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      198 CALL                             R24 1 1
      199 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      201 LOADB                            R24 1
      202 SETTABLEKS                       R24 R23 K50 ["TextWrapped"]
      204 GETTABLEKS                       R24 R1 K51 ["FontFace"]
      206 SETTABLEKS                       R24 R23 K51 ["FontFace"]
      208 LOADK                            R26 K55 ["SelectScreen"]
      209 LOADK                            R27 K39 ["SelectTitle"]
      210 NAMECALL                         R24 R0 K56 ["getText"]
      212 CALL                             R24 3 1
      213 SETTABLEKS                       R24 R23 K52 ["Text"]
      215 LOADK                            R24 K57 ["Title"]
      216 SETTABLEKS                       R24 R23 K53 ["Style"]
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K39 ["SelectTitle"]
      221 GETUPVAL                         R21 4
      222 GETTABLEKS                       R21 R21 K12 ["createElement"]
      224 GETUPVAL                         R22 0
      225 GETTABLEKS                       R22 R22 K13 ["UI"]
      227 GETTABLEKS                       R22 R22 K14 ["Pane"]
      229 DUPTABLE                         R23 K58 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      230 GETIMPORT                        R24 K25 [Enum.FillDirection.Vertical]
      232 SETTABLEKS                       R24 R23 K18 ["Layout"]
      234 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      236 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      238 GETTABLEKS                       R24 R1 K32 ["Spacing"]
      240 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      242 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      244 CALL                             R24 1 1
      245 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      247 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      249 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      251 DUPTABLE                         R24 K61 [{"Description", "LearnMore"}]
      252 GETUPVAL                         R25 4
      253 GETTABLEKS                       R25 R25 K12 ["createElement"]
      255 GETUPVAL                         R26 0
      256 GETTABLEKS                       R26 R26 K13 ["UI"]
      258 GETTABLEKS                       R26 R26 K49 ["TextLabel"]
      260 DUPTABLE                         R27 K62 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
      261 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      263 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      265 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      267 CALL                             R28 1 1
      268 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      270 LOADK                            R30 K55 ["SelectScreen"]
      271 LOADK                            R31 K63 ["SelectDescription"]
      272 NAMECALL                         R28 R0 K56 ["getText"]
      274 CALL                             R28 3 1
      275 SETTABLEKS                       R28 R27 K52 ["Text"]
      277 LOADB                            R28 1
      278 SETTABLEKS                       R28 R27 K50 ["TextWrapped"]
      280 CALL                             R25 2 1
      281 SETTABLEKS                       R25 R24 K59 ["Description"]
      283 GETUPVAL                         R25 4
      284 GETTABLEKS                       R25 R25 K12 ["createElement"]
      286 GETUPVAL                         R26 0
      287 GETTABLEKS                       R26 R26 K13 ["UI"]
      289 GETTABLEKS                       R26 R26 K64 ["LinkText"]
      291 DUPTABLE                         R27 K66 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      292 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      294 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      296 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      298 CALL                             R28 1 1
      299 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      301 DUPCLOSURE                       R28 K67 [PROTO_3]
      302 CAPTURE                          UPVAL U6
      303 CAPTURE                          UPVAL U7
      304 SETTABLEKS                       R28 R27 K65 ["OnClick"]
      306 LOADK                            R30 K55 ["SelectScreen"]
      307 LOADK                            R31 K60 ["LearnMore"]
      308 NAMECALL                         R28 R0 K56 ["getText"]
      310 CALL                             R28 3 1
      311 SETTABLEKS                       R28 R27 K52 ["Text"]
      313 LOADB                            R28 1
      314 SETTABLEKS                       R28 R27 K50 ["TextWrapped"]
      316 CALL                             R25 2 1
      317 SETTABLEKS                       R25 R24 K60 ["LearnMore"]
      319 CALL                             R21 3 1
      320 SETTABLEKS                       R21 R20 K40 ["SplitLabel"]
      322 GETUPVAL                         R22 1
      323 CALL                             R22 0 1
      324 JUMPIFNOT                        R22 ; [+134]
      325 GETUPVAL                         R21 4
      326 GETTABLEKS                       R21 R21 K12 ["createElement"]
      328 GETUPVAL                         R22 0
      329 GETTABLEKS                       R22 R22 K13 ["UI"]
      331 GETTABLEKS                       R22 R22 K14 ["Pane"]
      333 DUPTABLE                         R23 K34 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      334 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      336 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      338 GETIMPORT                        R24 K69 [Enum.FillDirection.Horizontal]
      340 SETTABLEKS                       R24 R23 K18 ["Layout"]
      342 LOADN                            R24 12
      343 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      345 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      347 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      349 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      351 CALL                             R24 1 1
      352 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      354 DUPTABLE                         R24 K71 [{"Import3D", "AddAssetId"}]
      355 GETUPVAL                         R25 4
      356 GETTABLEKS                       R25 R25 K12 ["createElement"]
      358 GETUPVAL                         R26 0
      359 GETTABLEKS                       R26 R26 K13 ["UI"]
      361 GETTABLEKS                       R26 R26 K72 ["IconButton"]
      363 DUPTABLE                         R27 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      364 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      366 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      368 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      370 CALL                             R28 1 1
      371 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      373 LOADK                            R28 K76 ["PointingHand"]
      374 SETTABLEKS                       R28 R27 K73 ["Cursor"]
      376 SETTABLEKS                       R7 R27 K65 ["OnClick"]
      378 DUPTABLE                         R28 K81 [{"Left", "Right", "Top", "Bottom"}]
      379 LOADN                            R29 12
      380 SETTABLEKS                       R29 R28 K77 ["Left"]
      382 LOADN                            R29 12
      383 SETTABLEKS                       R29 R28 K78 ["Right"]
      385 LOADN                            R29 6
      386 SETTABLEKS                       R29 R28 K79 ["Top"]
      388 LOADN                            R29 6
      389 SETTABLEKS                       R29 R28 K80 ["Bottom"]
      391 SETTABLEKS                       R28 R27 K74 ["Padding"]
      393 LOADK                            R30 K55 ["SelectScreen"]
      394 LOADK                            R31 K82 ["Import3DEllipsis"]
      395 NAMECALL                         R28 R0 K56 ["getText"]
      397 CALL                             R28 3 1
      398 SETTABLEKS                       R28 R27 K52 ["Text"]
      400 LOADK                            R28 K83 ["Primary"]
      401 SETTABLEKS                       R28 R27 K53 ["Style"]
      403 CALL                             R25 2 1
      404 SETTABLEKS                       R25 R24 K42 ["Import3D"]
      406 GETUPVAL                         R25 4
      407 GETTABLEKS                       R25 R25 K12 ["createElement"]
      409 GETUPVAL                         R26 0
      410 GETTABLEKS                       R26 R26 K13 ["UI"]
      412 GETTABLEKS                       R26 R26 K72 ["IconButton"]
      414 DUPTABLE                         R27 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      415 GETIMPORT                        R28 K36 [Enum.AutomaticSize.XY]
      417 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      419 NAMECALL                         R28 R2 K37 ["getNextOrder"]
      421 CALL                             R28 1 1
      422 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      424 LOADK                            R28 K76 ["PointingHand"]
      425 SETTABLEKS                       R28 R27 K73 ["Cursor"]
      427 SETTABLEKS                       R8 R27 K65 ["OnClick"]
      429 DUPTABLE                         R28 K81 [{"Left", "Right", "Top", "Bottom"}]
      430 LOADN                            R29 12
      431 SETTABLEKS                       R29 R28 K77 ["Left"]
      433 LOADN                            R29 12
      434 SETTABLEKS                       R29 R28 K78 ["Right"]
      436 LOADN                            R29 6
      437 SETTABLEKS                       R29 R28 K79 ["Top"]
      439 LOADN                            R29 6
      440 SETTABLEKS                       R29 R28 K80 ["Bottom"]
      442 SETTABLEKS                       R28 R27 K74 ["Padding"]
      444 LOADK                            R30 K55 ["SelectScreen"]
      445 LOADK                            R31 K84 ["AddAssetID"]
      446 NAMECALL                         R28 R0 K56 ["getText"]
      448 CALL                             R28 3 1
      449 SETTABLEKS                       R28 R27 K52 ["Text"]
      451 LOADK                            R28 K83 ["Primary"]
      452 SETTABLEKS                       R28 R27 K53 ["Style"]
      454 CALL                             R25 2 1
      455 SETTABLEKS                       R25 R24 K70 ["AddAssetId"]
      457 CALL                             R21 3 1
      458 JUMP                             ; [+1]
      459 LOADNIL                          R21
      460 SETTABLEKS                       R21 R20 K41 ["ButtonRow"]
      462 GETUPVAL                         R22 1
      463 CALL                             R22 0 1
      464 JUMPIF                           R22 ; [+50]
      465 GETUPVAL                         R21 4
      466 GETTABLEKS                       R21 R21 K12 ["createElement"]
      468 GETUPVAL                         R22 0
      469 GETTABLEKS                       R22 R22 K13 ["UI"]
      471 GETTABLEKS                       R22 R22 K72 ["IconButton"]
      473 DUPTABLE                         R23 K75 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      474 GETIMPORT                        R24 K36 [Enum.AutomaticSize.XY]
      476 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      478 NAMECALL                         R24 R2 K37 ["getNextOrder"]
      480 CALL                             R24 1 1
      481 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      483 LOADK                            R24 K76 ["PointingHand"]
      484 SETTABLEKS                       R24 R23 K73 ["Cursor"]
      486 SETTABLEKS                       R7 R23 K65 ["OnClick"]
      488 DUPTABLE                         R24 K81 [{"Left", "Right", "Top", "Bottom"}]
      489 LOADN                            R25 12
      490 SETTABLEKS                       R25 R24 K77 ["Left"]
      492 LOADN                            R25 12
      493 SETTABLEKS                       R25 R24 K78 ["Right"]
      495 LOADN                            R25 6
      496 SETTABLEKS                       R25 R24 K79 ["Top"]
      498 LOADN                            R25 6
      499 SETTABLEKS                       R25 R24 K80 ["Bottom"]
      501 SETTABLEKS                       R24 R23 K74 ["Padding"]
      503 LOADK                            R26 K55 ["SelectScreen"]
      504 LOADK                            R27 K82 ["Import3DEllipsis"]
      505 NAMECALL                         R24 R0 K56 ["getText"]
      507 CALL                             R24 3 1
      508 SETTABLEKS                       R24 R23 K52 ["Text"]
      510 LOADK                            R24 K83 ["Primary"]
      511 SETTABLEKS                       R24 R23 K53 ["Style"]
      513 CALL                             R21 2 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R21
      516 SETTABLEKS                       R21 R20 K42 ["Import3D"]
      518 CALL                             R17 3 1
      519 SETTABLEKS                       R17 R16 K29 ["Buttons"]
      521 CALL                             R13 3 1
      522 SETTABLEKS                       R13 R12 K15 ["Contents"]
      524 GETUPVAL                         R14 1
      525 CALL                             R14 0 1
      526 JUMPIFNOT                        R14 ; [+16]
      527 GETTABLEKS                       R14 R4 K85 ["enabled"]
      529 JUMPIFNOT                        R14 ; [+13]
      530 GETUPVAL                         R13 4
      531 GETTABLEKS                       R13 R13 K12 ["createElement"]
      533 GETUPVAL                         R14 8
      534 DUPTABLE                         R15 K88 [{"onClose", "onAddItems"}]
      535 GETTABLEKS                       R16 R4 K89 ["disable"]
      537 SETTABLEKS                       R16 R15 K86 ["onClose"]
      539 SETTABLEKS                       R6 R15 K87 ["onAddItems"]
      541 CALL                             R13 2 1
      542 JUMP                             ; [+1]
      543 LOADNIL                          R13
      544 SETTABLEKS                       R13 R12 K16 ["MarketplaceImportDialog"]
      546 CALL                             R9 3 -1
      547 RETURN                           R9 -1

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
       78 GETTABLEKS                       R10 R10 K24 ["getFFlagAvatarPreviewerStartFromAssetId"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K1 [game]
       83 LOADK                            R12 K25 ["AvatarAutoSetupLearnMoreLink"]
       84 LOADK                            R13 K26 ["https://create.roblox.com/docs/avatar-setup"]
       85 NAMECALL                         R10 R10 K27 ["DefineFastString"]
       87 CALL                             R10 3 1
       88 DUPCLOSURE                       R11 K28 [PROTO_4]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 RETURN                           R11 1
