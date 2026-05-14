PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
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
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K10 ["useCallback"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R6 0 1
       44 MOVE                             R7 R3
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 2
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+289]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K11 ["createElement"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K12 ["UI"]
       57 GETTABLEKS                       R6 R6 K13 ["Pane"]
       59 NEWTABLE                         R7 0 0
       61 DUPTABLE                         R8 K15 [{"Contents"}]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K11 ["createElement"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K12 ["UI"]
       68 GETTABLEKS                       R10 R10 K13 ["Pane"]
       70 DUPTABLE                         R11 K19 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
       71 GETIMPORT                        R12 K23 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R12 R11 K16 ["Layout"]
       75 GETIMPORT                        R12 K25 [Enum.HorizontalAlignment.Center]
       77 SETTABLEKS                       R12 R11 K17 ["HorizontalAlignment"]
       79 GETIMPORT                        R12 K26 [Enum.VerticalAlignment.Center]
       81 SETTABLEKS                       R12 R11 K18 ["VerticalAlignment"]
       83 DUPTABLE                         R12 K28 [{"Buttons"}]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K11 ["createElement"]
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R14 R14 K12 ["UI"]
       90 GETTABLEKS                       R14 R14 K13 ["Pane"]
       92 DUPTABLE                         R15 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
       93 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
       95 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
       97 GETIMPORT                        R16 K23 [Enum.FillDirection.Vertical]
       99 SETTABLEKS                       R16 R15 K16 ["Layout"]
      101 LOADN                            R16 20
      102 SETTABLEKS                       R16 R15 K30 ["Spacing"]
      104 GETIMPORT                        R16 K25 [Enum.HorizontalAlignment.Center]
      106 SETTABLEKS                       R16 R15 K17 ["HorizontalAlignment"]
      108 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      110 CALL                             R16 1 1
      111 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      113 DUPTABLE                         R16 K40 [{"Image", "SelectTitle", "SplitLabel", "Import3D"}]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K11 ["createElement"]
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R18 R18 K12 ["UI"]
      120 GETTABLEKS                       R18 R18 K36 ["Image"]
      122 DUPTABLE                         R19 K42 [{"LayoutOrder", "Image", "Size"}]
      123 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      125 CALL                             R20 1 1
      126 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      128 GETTABLEKS                       R20 R1 K36 ["Image"]
      130 SETTABLEKS                       R20 R19 K36 ["Image"]
      132 GETIMPORT                        R20 K45 [UDim2.fromOffset]
      134 LOADN                            R21 64
      135 LOADN                            R22 180
      136 CALL                             R20 2 1
      137 SETTABLEKS                       R20 R19 K41 ["Size"]
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K36 ["Image"]
      142 GETUPVAL                         R17 1
      143 GETTABLEKS                       R17 R17 K11 ["createElement"]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K12 ["UI"]
      148 GETTABLEKS                       R18 R18 K46 ["TextLabel"]
      150 DUPTABLE                         R19 K51 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
      151 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      155 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      157 CALL                             R20 1 1
      158 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      160 LOADB                            R20 1
      161 SETTABLEKS                       R20 R19 K47 ["TextWrapped"]
      163 GETTABLEKS                       R20 R1 K48 ["FontFace"]
      165 SETTABLEKS                       R20 R19 K48 ["FontFace"]
      167 LOADK                            R22 K52 ["SelectScreen"]
      168 LOADK                            R23 K37 ["SelectTitle"]
      169 NAMECALL                         R20 R0 K53 ["getText"]
      171 CALL                             R20 3 1
      172 SETTABLEKS                       R20 R19 K49 ["Text"]
      174 LOADK                            R20 K54 ["Title"]
      175 SETTABLEKS                       R20 R19 K50 ["Style"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K37 ["SelectTitle"]
      180 GETUPVAL                         R17 1
      181 GETTABLEKS                       R17 R17 K11 ["createElement"]
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K12 ["UI"]
      186 GETTABLEKS                       R18 R18 K13 ["Pane"]
      188 DUPTABLE                         R19 K55 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      189 GETIMPORT                        R20 K23 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R20 R19 K16 ["Layout"]
      193 GETIMPORT                        R20 K25 [Enum.HorizontalAlignment.Center]
      195 SETTABLEKS                       R20 R19 K17 ["HorizontalAlignment"]
      197 GETTABLEKS                       R20 R1 K30 ["Spacing"]
      199 SETTABLEKS                       R20 R19 K30 ["Spacing"]
      201 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      203 CALL                             R20 1 1
      204 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      206 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      208 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      210 DUPTABLE                         R20 K58 [{"Description", "LearnMore"}]
      211 GETUPVAL                         R21 1
      212 GETTABLEKS                       R21 R21 K11 ["createElement"]
      214 GETUPVAL                         R22 0
      215 GETTABLEKS                       R22 R22 K12 ["UI"]
      217 GETTABLEKS                       R22 R22 K46 ["TextLabel"]
      219 DUPTABLE                         R23 K59 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
      220 GETIMPORT                        R24 K34 [Enum.AutomaticSize.XY]
      222 SETTABLEKS                       R24 R23 K29 ["AutomaticSize"]
      224 NAMECALL                         R24 R2 K35 ["getNextOrder"]
      226 CALL                             R24 1 1
      227 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      229 LOADK                            R26 K52 ["SelectScreen"]
      230 LOADK                            R27 K60 ["SelectDescription"]
      231 NAMECALL                         R24 R0 K53 ["getText"]
      233 CALL                             R24 3 1
      234 SETTABLEKS                       R24 R23 K49 ["Text"]
      236 LOADB                            R24 1
      237 SETTABLEKS                       R24 R23 K47 ["TextWrapped"]
      239 CALL                             R21 2 1
      240 SETTABLEKS                       R21 R20 K56 ["Description"]
      242 GETUPVAL                         R21 1
      243 GETTABLEKS                       R21 R21 K11 ["createElement"]
      245 GETUPVAL                         R22 0
      246 GETTABLEKS                       R22 R22 K12 ["UI"]
      248 GETTABLEKS                       R22 R22 K61 ["LinkText"]
      250 DUPTABLE                         R23 K63 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      251 GETIMPORT                        R24 K34 [Enum.AutomaticSize.XY]
      253 SETTABLEKS                       R24 R23 K29 ["AutomaticSize"]
      255 NAMECALL                         R24 R2 K35 ["getNextOrder"]
      257 CALL                             R24 1 1
      258 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      260 DUPCLOSURE                       R24 K64 [PROTO_2]
      261 CAPTURE                          UPVAL U3
      262 CAPTURE                          UPVAL U4
      263 SETTABLEKS                       R24 R23 K62 ["OnClick"]
      265 LOADK                            R26 K52 ["SelectScreen"]
      266 LOADK                            R27 K57 ["LearnMore"]
      267 NAMECALL                         R24 R0 K53 ["getText"]
      269 CALL                             R24 3 1
      270 SETTABLEKS                       R24 R23 K49 ["Text"]
      272 LOADB                            R24 1
      273 SETTABLEKS                       R24 R23 K47 ["TextWrapped"]
      275 CALL                             R21 2 1
      276 SETTABLEKS                       R21 R20 K57 ["LearnMore"]
      278 CALL                             R17 3 1
      279 SETTABLEKS                       R17 R16 K38 ["SplitLabel"]
      281 GETUPVAL                         R17 1
      282 GETTABLEKS                       R17 R17 K11 ["createElement"]
      284 GETUPVAL                         R18 0
      285 GETTABLEKS                       R18 R18 K12 ["UI"]
      287 GETTABLEKS                       R18 R18 K65 ["IconButton"]
      289 DUPTABLE                         R19 K68 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      290 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      292 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      294 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      296 CALL                             R20 1 1
      297 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      299 LOADK                            R20 K69 ["PointingHand"]
      300 SETTABLEKS                       R20 R19 K66 ["Cursor"]
      302 SETTABLEKS                       R4 R19 K62 ["OnClick"]
      304 DUPTABLE                         R20 K74 [{"Left", "Right", "Top", "Bottom"}]
      305 LOADN                            R21 12
      306 SETTABLEKS                       R21 R20 K70 ["Left"]
      308 LOADN                            R21 12
      309 SETTABLEKS                       R21 R20 K71 ["Right"]
      311 LOADN                            R21 6
      312 SETTABLEKS                       R21 R20 K72 ["Top"]
      314 LOADN                            R21 6
      315 SETTABLEKS                       R21 R20 K73 ["Bottom"]
      317 SETTABLEKS                       R20 R19 K67 ["Padding"]
      319 LOADK                            R22 K52 ["SelectScreen"]
      320 LOADK                            R23 K75 ["Import3DEllipsis"]
      321 NAMECALL                         R20 R0 K53 ["getText"]
      323 CALL                             R20 3 1
      324 SETTABLEKS                       R20 R19 K49 ["Text"]
      326 LOADK                            R20 K76 ["Primary"]
      327 SETTABLEKS                       R20 R19 K50 ["Style"]
      329 CALL                             R17 2 1
      330 SETTABLEKS                       R17 R16 K39 ["Import3D"]
      332 CALL                             R13 3 1
      333 SETTABLEKS                       R13 R12 K27 ["Buttons"]
      335 CALL                             R9 3 1
      336 SETTABLEKS                       R9 R8 K14 ["Contents"]
      338 CALL                             R5 3 -1
      339 RETURN                           R5 -1
      340 GETUPVAL                         R5 1
      341 GETTABLEKS                       R5 R5 K11 ["createElement"]
      343 GETUPVAL                         R6 0
      344 GETTABLEKS                       R6 R6 K12 ["UI"]
      346 GETTABLEKS                       R6 R6 K13 ["Pane"]
      348 DUPTABLE                         R7 K78 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
      349 GETIMPORT                        R8 K23 [Enum.FillDirection.Vertical]
      351 SETTABLEKS                       R8 R7 K16 ["Layout"]
      353 GETIMPORT                        R8 K25 [Enum.HorizontalAlignment.Center]
      355 SETTABLEKS                       R8 R7 K17 ["HorizontalAlignment"]
      357 GETIMPORT                        R8 K26 [Enum.VerticalAlignment.Center]
      359 SETTABLEKS                       R8 R7 K18 ["VerticalAlignment"]
      361 GETTABLEKS                       R8 R1 K79 ["BackgroundColor"]
      363 SETTABLEKS                       R8 R7 K77 ["BackgroundColor3"]
      365 DUPTABLE                         R8 K28 [{"Buttons"}]
      366 GETUPVAL                         R9 1
      367 GETTABLEKS                       R9 R9 K11 ["createElement"]
      369 GETUPVAL                         R10 0
      370 GETTABLEKS                       R10 R10 K12 ["UI"]
      372 GETTABLEKS                       R10 R10 K13 ["Pane"]
      374 DUPTABLE                         R11 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      375 GETIMPORT                        R12 K34 [Enum.AutomaticSize.XY]
      377 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
      379 GETIMPORT                        R12 K23 [Enum.FillDirection.Vertical]
      381 SETTABLEKS                       R12 R11 K16 ["Layout"]
      383 LOADN                            R12 20
      384 SETTABLEKS                       R12 R11 K30 ["Spacing"]
      386 GETIMPORT                        R12 K25 [Enum.HorizontalAlignment.Center]
      388 SETTABLEKS                       R12 R11 K17 ["HorizontalAlignment"]
      390 NAMECALL                         R12 R2 K35 ["getNextOrder"]
      392 CALL                             R12 1 1
      393 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      395 DUPTABLE                         R12 K82 [{"Frame", "SelectHint", "SplitLabel", "Import3D"}]
      396 GETUPVAL                         R13 1
      397 GETTABLEKS                       R13 R13 K11 ["createElement"]
      399 LOADK                            R14 K80 ["Frame"]
      400 DUPTABLE                         R15 K84 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
      401 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      403 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      405 GETTABLEKS                       R16 R1 K85 ["ImageBackgroundColor"]
      407 SETTABLEKS                       R16 R15 K77 ["BackgroundColor3"]
      409 LOADN                            R16 0
      410 SETTABLEKS                       R16 R15 K83 ["BorderSizePixel"]
      412 DUPTABLE                         R16 K88 [{"UICorner", "UIPadding", "Image"}]
      413 GETUPVAL                         R17 1
      414 GETTABLEKS                       R17 R17 K11 ["createElement"]
      416 LOADK                            R18 K86 ["UICorner"]
      417 DUPTABLE                         R19 K90 [{"CornerRadius"}]
      418 GETIMPORT                        R20 K92 [UDim.new]
      420 LOADK                            R21 K93 [0.5]
      421 LOADN                            R22 0
      422 CALL                             R20 2 1
      423 SETTABLEKS                       R20 R19 K89 ["CornerRadius"]
      425 CALL                             R17 2 1
      426 SETTABLEKS                       R17 R16 K86 ["UICorner"]
      428 GETUPVAL                         R17 1
      429 GETTABLEKS                       R17 R17 K11 ["createElement"]
      431 LOADK                            R18 K87 ["UIPadding"]
      432 DUPTABLE                         R19 K98 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      433 GETIMPORT                        R20 K92 [UDim.new]
      435 LOADN                            R21 0
      436 LOADN                            R22 10
      437 CALL                             R20 2 1
      438 SETTABLEKS                       R20 R19 K94 ["PaddingTop"]
      440 GETIMPORT                        R20 K92 [UDim.new]
      442 LOADN                            R21 0
      443 LOADN                            R22 10
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K95 ["PaddingBottom"]
      447 GETIMPORT                        R20 K92 [UDim.new]
      449 LOADN                            R21 0
      450 LOADN                            R22 10
      451 CALL                             R20 2 1
      452 SETTABLEKS                       R20 R19 K96 ["PaddingLeft"]
      454 GETIMPORT                        R20 K92 [UDim.new]
      456 LOADN                            R21 0
      457 LOADN                            R22 10
      458 CALL                             R20 2 1
      459 SETTABLEKS                       R20 R19 K97 ["PaddingRight"]
      461 CALL                             R17 2 1
      462 SETTABLEKS                       R17 R16 K87 ["UIPadding"]
      464 GETUPVAL                         R17 1
      465 GETTABLEKS                       R17 R17 K11 ["createElement"]
      467 GETUPVAL                         R18 0
      468 GETTABLEKS                       R18 R18 K12 ["UI"]
      470 GETTABLEKS                       R18 R18 K36 ["Image"]
      472 DUPTABLE                         R19 K100 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
      473 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      475 CALL                             R20 1 1
      476 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      478 LOADK                            R20 K101 ["rbxassetid://6022668945"]
      479 SETTABLEKS                       R20 R19 K36 ["Image"]
      481 GETTABLEKS                       R20 R1 K102 ["IconColor"]
      483 SETTABLEKS                       R20 R19 K99 ["ImageColor3"]
      485 GETTABLEKS                       R20 R1 K103 ["ImageSize"]
      487 SETTABLEKS                       R20 R19 K41 ["Size"]
      489 CALL                             R17 2 1
      490 SETTABLEKS                       R17 R16 K36 ["Image"]
      492 CALL                             R13 3 1
      493 SETTABLEKS                       R13 R12 K80 ["Frame"]
      495 GETUPVAL                         R13 1
      496 GETTABLEKS                       R13 R13 K11 ["createElement"]
      498 GETUPVAL                         R14 0
      499 GETTABLEKS                       R14 R14 K12 ["UI"]
      501 GETTABLEKS                       R14 R14 K46 ["TextLabel"]
      503 DUPTABLE                         R15 K104 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
      504 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      506 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      508 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      510 CALL                             R16 1 1
      511 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      513 LOADB                            R16 1
      514 SETTABLEKS                       R16 R15 K47 ["TextWrapped"]
      516 GETTABLEKS                       R16 R1 K48 ["FontFace"]
      518 SETTABLEKS                       R16 R15 K48 ["FontFace"]
      520 LOADK                            R18 K52 ["SelectScreen"]
      521 LOADK                            R19 K81 ["SelectHint"]
      522 NAMECALL                         R16 R0 K53 ["getText"]
      524 CALL                             R16 3 1
      525 SETTABLEKS                       R16 R15 K49 ["Text"]
      527 CALL                             R13 2 1
      528 SETTABLEKS                       R13 R12 K81 ["SelectHint"]
      530 GETUPVAL                         R13 1
      531 GETTABLEKS                       R13 R13 K11 ["createElement"]
      533 GETUPVAL                         R14 0
      534 GETTABLEKS                       R14 R14 K12 ["UI"]
      536 GETTABLEKS                       R14 R14 K13 ["Pane"]
      538 DUPTABLE                         R15 K55 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      539 GETIMPORT                        R16 K106 [Enum.FillDirection.Horizontal]
      541 SETTABLEKS                       R16 R15 K16 ["Layout"]
      543 GETIMPORT                        R16 K25 [Enum.HorizontalAlignment.Center]
      545 SETTABLEKS                       R16 R15 K17 ["HorizontalAlignment"]
      547 GETTABLEKS                       R16 R1 K30 ["Spacing"]
      549 SETTABLEKS                       R16 R15 K30 ["Spacing"]
      551 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      553 CALL                             R16 1 1
      554 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      556 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      558 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      560 DUPTABLE                         R16 K110 [{"LeftLabel", "OrLabel", "RightLabel"}]
      561 GETUPVAL                         R17 1
      562 GETTABLEKS                       R17 R17 K11 ["createElement"]
      564 LOADK                            R18 K80 ["Frame"]
      565 DUPTABLE                         R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      566 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      568 CALL                             R20 1 1
      569 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      571 GETTABLEKS                       R20 R1 K112 ["LineColor"]
      573 SETTABLEKS                       R20 R19 K77 ["BackgroundColor3"]
      575 LOADN                            R20 0
      576 SETTABLEKS                       R20 R19 K83 ["BorderSizePixel"]
      578 GETTABLEKS                       R20 R1 K113 ["LineSize"]
      580 SETTABLEKS                       R20 R19 K41 ["Size"]
      582 CALL                             R17 2 1
      583 SETTABLEKS                       R17 R16 K107 ["LeftLabel"]
      585 GETUPVAL                         R17 1
      586 GETTABLEKS                       R17 R17 K11 ["createElement"]
      588 GETUPVAL                         R18 0
      589 GETTABLEKS                       R18 R18 K12 ["UI"]
      591 GETTABLEKS                       R18 R18 K46 ["TextLabel"]
      593 DUPTABLE                         R19 K114 [{"AutomaticSize", "LayoutOrder", "Text"}]
      594 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      596 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      598 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      600 CALL                             R20 1 1
      601 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      603 LOADK                            R22 K52 ["SelectScreen"]
      604 LOADK                            R23 K115 ["Or"]
      605 NAMECALL                         R20 R0 K53 ["getText"]
      607 CALL                             R20 3 1
      608 SETTABLEKS                       R20 R19 K49 ["Text"]
      610 CALL                             R17 2 1
      611 SETTABLEKS                       R17 R16 K108 ["OrLabel"]
      613 GETUPVAL                         R17 1
      614 GETTABLEKS                       R17 R17 K11 ["createElement"]
      616 LOADK                            R18 K80 ["Frame"]
      617 DUPTABLE                         R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      618 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      620 CALL                             R20 1 1
      621 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      623 GETTABLEKS                       R20 R1 K112 ["LineColor"]
      625 SETTABLEKS                       R20 R19 K77 ["BackgroundColor3"]
      627 LOADN                            R20 0
      628 SETTABLEKS                       R20 R19 K83 ["BorderSizePixel"]
      630 GETTABLEKS                       R20 R1 K113 ["LineSize"]
      632 SETTABLEKS                       R20 R19 K41 ["Size"]
      634 CALL                             R17 2 1
      635 SETTABLEKS                       R17 R16 K109 ["RightLabel"]
      637 CALL                             R13 3 1
      638 SETTABLEKS                       R13 R12 K38 ["SplitLabel"]
      640 GETUPVAL                         R13 1
      641 GETTABLEKS                       R13 R13 K11 ["createElement"]
      643 GETUPVAL                         R14 0
      644 GETTABLEKS                       R14 R14 K12 ["UI"]
      646 GETTABLEKS                       R14 R14 K65 ["IconButton"]
      648 DUPTABLE                         R15 K116 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
      649 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      651 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      653 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      655 CALL                             R16 1 1
      656 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      658 LOADK                            R16 K69 ["PointingHand"]
      659 SETTABLEKS                       R16 R15 K66 ["Cursor"]
      661 SETTABLEKS                       R4 R15 K62 ["OnClick"]
      663 GETIMPORT                        R16 K45 [UDim2.fromOffset]
      665 LOADN                            R17 0
      666 GETTABLEKS                       R18 R1 K117 ["ButtonHeight"]
      668 CALL                             R16 2 1
      669 SETTABLEKS                       R16 R15 K41 ["Size"]
      671 LOADN                            R16 5
      672 SETTABLEKS                       R16 R15 K67 ["Padding"]
      674 LOADN                            R16 5
      675 SETTABLEKS                       R16 R15 K30 ["Spacing"]
      677 LOADK                            R18 K52 ["SelectScreen"]
      678 LOADK                            R19 K118 ["Import3DFile"]
      679 NAMECALL                         R16 R0 K53 ["getText"]
      681 CALL                             R16 3 1
      682 SETTABLEKS                       R16 R15 K49 ["Text"]
      684 LOADK                            R16 K119 ["PrimaryBrand"]
      685 SETTABLEKS                       R16 R15 K50 ["Style"]
      687 CALL                             R13 2 1
      688 SETTABLEKS                       R13 R12 K39 ["Import3D"]
      690 CALL                             R9 3 1
      691 SETTABLEKS                       R9 R8 K27 ["Buttons"]
      693 CALL                             R5 3 -1
      694 RETURN                           R5 -1

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
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 GETTABLEKS                       R6 R6 K17 ["getFFlagAvatarPreviewerSortClothingUI"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [game]
       47 LOADK                            R8 K18 ["AvatarAutoSetupLearnMoreLink"]
       48 LOADK                            R9 K19 ["https://create.roblox.com/docs/avatar-setup"]
       49 NAMECALL                         R6 R6 K20 ["DefineFastString"]
       51 CALL                             R6 3 1
       52 DUPCLOSURE                       R7 K21 [PROTO_3]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R6
       58 RETURN                           R7 1
