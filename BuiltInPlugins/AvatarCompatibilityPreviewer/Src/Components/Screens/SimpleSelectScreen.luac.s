PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Util"]
        3 GETTABLEKS                       R1 R2 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R1 K2 ["fromAction"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R1 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
       11 GETTABLEKS                       R1 R2 K3 ["Stylizer"]
       13 LOADK                            R3 K4 ["SimpleSelectScreen"]
       14 NAMECALL                         R1 R1 K2 ["use"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K5 ["Util"]
       20 GETTABLEKS                       R3 R4 K6 ["LayoutOrderIterator"]
       22 GETTABLEKS                       R2 R3 K7 ["new"]
       24 CALL                             R2 0 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K0 ["ContextServices"]
       28 GETTABLEKS                       R3 R4 K8 ["Plugin"]
       30 NAMECALL                         R3 R3 K2 ["use"]
       32 CALL                             R3 1 1
       33 NAMECALL                         R3 R3 K9 ["get"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K10 ["useCallback"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R6 0 1
       44 MOVE                             R7 R3
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 2
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+389]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K11 ["createElement"]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K12 ["UI"]
       57 GETTABLEKS                       R6 R7 K13 ["Pane"]
       59 NEWTABLE                         R7 0 0
       61 DUPTABLE                         R8 K15 [{"Contents"}]
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R9 R10 K11 ["createElement"]
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K12 ["UI"]
       68 GETTABLEKS                       R10 R11 K13 ["Pane"]
       70 DUPTABLE                         R11 K19 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
       71 GETIMPORT                        R12 K23 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R12 R11 K16 ["Layout"]
       75 GETIMPORT                        R12 K25 [Enum.HorizontalAlignment.Center]
       77 SETTABLEKS                       R12 R11 K17 ["HorizontalAlignment"]
       79 GETIMPORT                        R12 K26 [Enum.VerticalAlignment.Center]
       81 SETTABLEKS                       R12 R11 K18 ["VerticalAlignment"]
       83 DUPTABLE                         R12 K28 [{"Buttons"}]
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R13 R14 K11 ["createElement"]
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R15 R16 K12 ["UI"]
       90 GETTABLEKS                       R14 R15 K13 ["Pane"]
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
      114 GETUPVAL                         R18 3
      115 JUMPIFNOT                        R18 ; [+27]
      116 GETUPVAL                         R18 1
      117 GETTABLEKS                       R17 R18 K11 ["createElement"]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R19 R20 K12 ["UI"]
      122 GETTABLEKS                       R18 R19 K36 ["Image"]
      124 DUPTABLE                         R19 K42 [{"LayoutOrder", "Image", "Size"}]
      125 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      127 CALL                             R20 1 1
      128 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      130 GETTABLEKS                       R20 R1 K36 ["Image"]
      132 SETTABLEKS                       R20 R19 K36 ["Image"]
      134 GETIMPORT                        R20 K45 [UDim2.fromOffset]
      136 LOADN                            R21 64
      137 LOADN                            R22 180
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K41 ["Size"]
      141 CALL                             R17 2 1
      142 JUMP                             ; [+97]
      143 GETUPVAL                         R18 1
      144 GETTABLEKS                       R17 R18 K11 ["createElement"]
      146 LOADK                            R18 K46 ["Frame"]
      147 DUPTABLE                         R19 K49 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
      148 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      150 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      152 GETTABLEKS                       R20 R1 K50 ["ImageBackgroundColor"]
      154 SETTABLEKS                       R20 R19 K47 ["BackgroundColor3"]
      156 LOADN                            R20 0
      157 SETTABLEKS                       R20 R19 K48 ["BorderSizePixel"]
      159 DUPTABLE                         R20 K53 [{"UICorner", "UIPadding", "Image"}]
      160 GETUPVAL                         R22 1
      161 GETTABLEKS                       R21 R22 K11 ["createElement"]
      163 LOADK                            R22 K51 ["UICorner"]
      164 DUPTABLE                         R23 K55 [{"CornerRadius"}]
      165 GETIMPORT                        R24 K57 [UDim.new]
      167 LOADK                            R25 K58 [0.5]
      168 LOADN                            R26 0
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K54 ["CornerRadius"]
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K51 ["UICorner"]
      175 GETUPVAL                         R22 1
      176 GETTABLEKS                       R21 R22 K11 ["createElement"]
      178 LOADK                            R22 K52 ["UIPadding"]
      179 DUPTABLE                         R23 K63 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      180 GETIMPORT                        R24 K57 [UDim.new]
      182 LOADN                            R25 0
      183 LOADN                            R26 10
      184 CALL                             R24 2 1
      185 SETTABLEKS                       R24 R23 K59 ["PaddingTop"]
      187 GETIMPORT                        R24 K57 [UDim.new]
      189 LOADN                            R25 0
      190 LOADN                            R26 10
      191 CALL                             R24 2 1
      192 SETTABLEKS                       R24 R23 K60 ["PaddingBottom"]
      194 GETIMPORT                        R24 K57 [UDim.new]
      196 LOADN                            R25 0
      197 LOADN                            R26 10
      198 CALL                             R24 2 1
      199 SETTABLEKS                       R24 R23 K61 ["PaddingLeft"]
      201 GETIMPORT                        R24 K57 [UDim.new]
      203 LOADN                            R25 0
      204 LOADN                            R26 10
      205 CALL                             R24 2 1
      206 SETTABLEKS                       R24 R23 K62 ["PaddingRight"]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K52 ["UIPadding"]
      211 GETUPVAL                         R22 1
      212 GETTABLEKS                       R21 R22 K11 ["createElement"]
      214 GETUPVAL                         R24 0
      215 GETTABLEKS                       R23 R24 K12 ["UI"]
      217 GETTABLEKS                       R22 R23 K36 ["Image"]
      219 DUPTABLE                         R23 K65 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
      220 NAMECALL                         R24 R2 K35 ["getNextOrder"]
      222 CALL                             R24 1 1
      223 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      225 LOADK                            R24 K66 ["rbxassetid://6022668945"]
      226 SETTABLEKS                       R24 R23 K36 ["Image"]
      228 GETTABLEKS                       R24 R1 K67 ["IconColor"]
      230 SETTABLEKS                       R24 R23 K64 ["ImageColor3"]
      232 GETTABLEKS                       R24 R1 K68 ["ImageSize"]
      234 SETTABLEKS                       R24 R23 K41 ["Size"]
      236 CALL                             R21 2 1
      237 SETTABLEKS                       R21 R20 K36 ["Image"]
      239 CALL                             R17 3 1
      240 SETTABLEKS                       R17 R16 K36 ["Image"]
      242 GETUPVAL                         R18 1
      243 GETTABLEKS                       R17 R18 K11 ["createElement"]
      245 GETUPVAL                         R20 0
      246 GETTABLEKS                       R19 R20 K12 ["UI"]
      248 GETTABLEKS                       R18 R19 K69 ["TextLabel"]
      250 DUPTABLE                         R19 K74 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
      251 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      253 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      255 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      257 CALL                             R20 1 1
      258 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      260 LOADB                            R20 1
      261 SETTABLEKS                       R20 R19 K70 ["TextWrapped"]
      263 GETTABLEKS                       R20 R1 K71 ["FontFace"]
      265 SETTABLEKS                       R20 R19 K71 ["FontFace"]
      267 LOADK                            R22 K75 ["SelectScreen"]
      268 LOADK                            R23 K37 ["SelectTitle"]
      269 NAMECALL                         R20 R0 K76 ["getText"]
      271 CALL                             R20 3 1
      272 SETTABLEKS                       R20 R19 K72 ["Text"]
      274 LOADK                            R20 K77 ["Title"]
      275 SETTABLEKS                       R20 R19 K73 ["Style"]
      277 CALL                             R17 2 1
      278 SETTABLEKS                       R17 R16 K37 ["SelectTitle"]
      280 GETUPVAL                         R18 1
      281 GETTABLEKS                       R17 R18 K11 ["createElement"]
      283 GETUPVAL                         R20 0
      284 GETTABLEKS                       R19 R20 K12 ["UI"]
      286 GETTABLEKS                       R18 R19 K13 ["Pane"]
      288 DUPTABLE                         R19 K78 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      289 GETIMPORT                        R20 K23 [Enum.FillDirection.Vertical]
      291 SETTABLEKS                       R20 R19 K16 ["Layout"]
      293 GETIMPORT                        R20 K25 [Enum.HorizontalAlignment.Center]
      295 SETTABLEKS                       R20 R19 K17 ["HorizontalAlignment"]
      297 GETTABLEKS                       R20 R1 K30 ["Spacing"]
      299 SETTABLEKS                       R20 R19 K30 ["Spacing"]
      301 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      303 CALL                             R20 1 1
      304 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      306 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      308 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      310 DUPTABLE                         R20 K81 [{"Description", "LearnMore"}]
      311 GETUPVAL                         R22 1
      312 GETTABLEKS                       R21 R22 K11 ["createElement"]
      314 GETUPVAL                         R24 0
      315 GETTABLEKS                       R23 R24 K12 ["UI"]
      317 GETTABLEKS                       R22 R23 K69 ["TextLabel"]
      319 DUPTABLE                         R23 K82 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
      320 GETIMPORT                        R24 K34 [Enum.AutomaticSize.XY]
      322 SETTABLEKS                       R24 R23 K29 ["AutomaticSize"]
      324 NAMECALL                         R24 R2 K35 ["getNextOrder"]
      326 CALL                             R24 1 1
      327 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      329 LOADK                            R26 K75 ["SelectScreen"]
      330 LOADK                            R27 K83 ["SelectDescription"]
      331 NAMECALL                         R24 R0 K76 ["getText"]
      333 CALL                             R24 3 1
      334 SETTABLEKS                       R24 R23 K72 ["Text"]
      336 LOADB                            R24 1
      337 SETTABLEKS                       R24 R23 K70 ["TextWrapped"]
      339 CALL                             R21 2 1
      340 SETTABLEKS                       R21 R20 K79 ["Description"]
      342 GETUPVAL                         R22 1
      343 GETTABLEKS                       R21 R22 K11 ["createElement"]
      345 GETUPVAL                         R24 0
      346 GETTABLEKS                       R23 R24 K12 ["UI"]
      348 GETTABLEKS                       R22 R23 K84 ["LinkText"]
      350 DUPTABLE                         R23 K86 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      351 GETIMPORT                        R24 K34 [Enum.AutomaticSize.XY]
      353 SETTABLEKS                       R24 R23 K29 ["AutomaticSize"]
      355 NAMECALL                         R24 R2 K35 ["getNextOrder"]
      357 CALL                             R24 1 1
      358 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      360 DUPCLOSURE                       R24 K87 [PROTO_2]
      361 CAPTURE                          UPVAL U4
      362 CAPTURE                          UPVAL U5
      363 SETTABLEKS                       R24 R23 K85 ["OnClick"]
      365 LOADK                            R26 K75 ["SelectScreen"]
      366 LOADK                            R27 K80 ["LearnMore"]
      367 NAMECALL                         R24 R0 K76 ["getText"]
      369 CALL                             R24 3 1
      370 SETTABLEKS                       R24 R23 K72 ["Text"]
      372 LOADB                            R24 1
      373 SETTABLEKS                       R24 R23 K70 ["TextWrapped"]
      375 CALL                             R21 2 1
      376 SETTABLEKS                       R21 R20 K80 ["LearnMore"]
      378 CALL                             R17 3 1
      379 SETTABLEKS                       R17 R16 K38 ["SplitLabel"]
      381 GETUPVAL                         R18 1
      382 GETTABLEKS                       R17 R18 K11 ["createElement"]
      384 GETUPVAL                         R20 0
      385 GETTABLEKS                       R19 R20 K12 ["UI"]
      387 GETTABLEKS                       R18 R19 K88 ["IconButton"]
      389 DUPTABLE                         R19 K91 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
      390 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      392 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      394 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      396 CALL                             R20 1 1
      397 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      399 LOADK                            R20 K92 ["PointingHand"]
      400 SETTABLEKS                       R20 R19 K89 ["Cursor"]
      402 SETTABLEKS                       R4 R19 K85 ["OnClick"]
      404 DUPTABLE                         R20 K97 [{"Left", "Right", "Top", "Bottom"}]
      405 LOADN                            R21 12
      406 SETTABLEKS                       R21 R20 K93 ["Left"]
      408 LOADN                            R21 12
      409 SETTABLEKS                       R21 R20 K94 ["Right"]
      411 LOADN                            R21 6
      412 SETTABLEKS                       R21 R20 K95 ["Top"]
      414 LOADN                            R21 6
      415 SETTABLEKS                       R21 R20 K96 ["Bottom"]
      417 SETTABLEKS                       R20 R19 K90 ["Padding"]
      419 LOADK                            R22 K75 ["SelectScreen"]
      420 LOADK                            R23 K98 ["Import3DEllipsis"]
      421 NAMECALL                         R20 R0 K76 ["getText"]
      423 CALL                             R20 3 1
      424 SETTABLEKS                       R20 R19 K72 ["Text"]
      426 LOADK                            R20 K99 ["Primary"]
      427 SETTABLEKS                       R20 R19 K73 ["Style"]
      429 CALL                             R17 2 1
      430 SETTABLEKS                       R17 R16 K39 ["Import3D"]
      432 CALL                             R13 3 1
      433 SETTABLEKS                       R13 R12 K27 ["Buttons"]
      435 CALL                             R9 3 1
      436 SETTABLEKS                       R9 R8 K14 ["Contents"]
      438 CALL                             R5 3 -1
      439 RETURN                           R5 -1
      440 GETUPVAL                         R6 1
      441 GETTABLEKS                       R5 R6 K11 ["createElement"]
      443 GETUPVAL                         R8 0
      444 GETTABLEKS                       R7 R8 K12 ["UI"]
      446 GETTABLEKS                       R6 R7 K13 ["Pane"]
      448 DUPTABLE                         R7 K100 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
      449 GETIMPORT                        R8 K23 [Enum.FillDirection.Vertical]
      451 SETTABLEKS                       R8 R7 K16 ["Layout"]
      453 GETIMPORT                        R8 K25 [Enum.HorizontalAlignment.Center]
      455 SETTABLEKS                       R8 R7 K17 ["HorizontalAlignment"]
      457 GETIMPORT                        R8 K26 [Enum.VerticalAlignment.Center]
      459 SETTABLEKS                       R8 R7 K18 ["VerticalAlignment"]
      461 GETTABLEKS                       R8 R1 K101 ["BackgroundColor"]
      463 SETTABLEKS                       R8 R7 K47 ["BackgroundColor3"]
      465 DUPTABLE                         R8 K28 [{"Buttons"}]
      466 GETUPVAL                         R10 1
      467 GETTABLEKS                       R9 R10 K11 ["createElement"]
      469 GETUPVAL                         R12 0
      470 GETTABLEKS                       R11 R12 K12 ["UI"]
      472 GETTABLEKS                       R10 R11 K13 ["Pane"]
      474 DUPTABLE                         R11 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
      475 GETIMPORT                        R12 K34 [Enum.AutomaticSize.XY]
      477 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
      479 GETIMPORT                        R12 K23 [Enum.FillDirection.Vertical]
      481 SETTABLEKS                       R12 R11 K16 ["Layout"]
      483 LOADN                            R12 20
      484 SETTABLEKS                       R12 R11 K30 ["Spacing"]
      486 GETIMPORT                        R12 K25 [Enum.HorizontalAlignment.Center]
      488 SETTABLEKS                       R12 R11 K17 ["HorizontalAlignment"]
      490 NAMECALL                         R12 R2 K35 ["getNextOrder"]
      492 CALL                             R12 1 1
      493 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      495 DUPTABLE                         R12 K103 [{"Frame", "SelectHint", "SplitLabel", "Import3D"}]
      496 GETUPVAL                         R14 1
      497 GETTABLEKS                       R13 R14 K11 ["createElement"]
      499 LOADK                            R14 K46 ["Frame"]
      500 DUPTABLE                         R15 K49 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
      501 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      503 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      505 GETTABLEKS                       R16 R1 K50 ["ImageBackgroundColor"]
      507 SETTABLEKS                       R16 R15 K47 ["BackgroundColor3"]
      509 LOADN                            R16 0
      510 SETTABLEKS                       R16 R15 K48 ["BorderSizePixel"]
      512 DUPTABLE                         R16 K53 [{"UICorner", "UIPadding", "Image"}]
      513 GETUPVAL                         R18 1
      514 GETTABLEKS                       R17 R18 K11 ["createElement"]
      516 LOADK                            R18 K51 ["UICorner"]
      517 DUPTABLE                         R19 K55 [{"CornerRadius"}]
      518 GETIMPORT                        R20 K57 [UDim.new]
      520 LOADK                            R21 K58 [0.5]
      521 LOADN                            R22 0
      522 CALL                             R20 2 1
      523 SETTABLEKS                       R20 R19 K54 ["CornerRadius"]
      525 CALL                             R17 2 1
      526 SETTABLEKS                       R17 R16 K51 ["UICorner"]
      528 GETUPVAL                         R18 1
      529 GETTABLEKS                       R17 R18 K11 ["createElement"]
      531 LOADK                            R18 K52 ["UIPadding"]
      532 DUPTABLE                         R19 K63 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      533 GETIMPORT                        R20 K57 [UDim.new]
      535 LOADN                            R21 0
      536 LOADN                            R22 10
      537 CALL                             R20 2 1
      538 SETTABLEKS                       R20 R19 K59 ["PaddingTop"]
      540 GETIMPORT                        R20 K57 [UDim.new]
      542 LOADN                            R21 0
      543 LOADN                            R22 10
      544 CALL                             R20 2 1
      545 SETTABLEKS                       R20 R19 K60 ["PaddingBottom"]
      547 GETIMPORT                        R20 K57 [UDim.new]
      549 LOADN                            R21 0
      550 LOADN                            R22 10
      551 CALL                             R20 2 1
      552 SETTABLEKS                       R20 R19 K61 ["PaddingLeft"]
      554 GETIMPORT                        R20 K57 [UDim.new]
      556 LOADN                            R21 0
      557 LOADN                            R22 10
      558 CALL                             R20 2 1
      559 SETTABLEKS                       R20 R19 K62 ["PaddingRight"]
      561 CALL                             R17 2 1
      562 SETTABLEKS                       R17 R16 K52 ["UIPadding"]
      564 GETUPVAL                         R18 1
      565 GETTABLEKS                       R17 R18 K11 ["createElement"]
      567 GETUPVAL                         R20 0
      568 GETTABLEKS                       R19 R20 K12 ["UI"]
      570 GETTABLEKS                       R18 R19 K36 ["Image"]
      572 DUPTABLE                         R19 K65 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
      573 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      575 CALL                             R20 1 1
      576 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      578 LOADK                            R20 K66 ["rbxassetid://6022668945"]
      579 SETTABLEKS                       R20 R19 K36 ["Image"]
      581 GETTABLEKS                       R20 R1 K67 ["IconColor"]
      583 SETTABLEKS                       R20 R19 K64 ["ImageColor3"]
      585 GETTABLEKS                       R20 R1 K68 ["ImageSize"]
      587 SETTABLEKS                       R20 R19 K41 ["Size"]
      589 CALL                             R17 2 1
      590 SETTABLEKS                       R17 R16 K36 ["Image"]
      592 CALL                             R13 3 1
      593 SETTABLEKS                       R13 R12 K46 ["Frame"]
      595 GETUPVAL                         R14 1
      596 GETTABLEKS                       R13 R14 K11 ["createElement"]
      598 GETUPVAL                         R16 0
      599 GETTABLEKS                       R15 R16 K12 ["UI"]
      601 GETTABLEKS                       R14 R15 K69 ["TextLabel"]
      603 DUPTABLE                         R15 K104 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
      604 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      606 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      608 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      610 CALL                             R16 1 1
      611 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      613 LOADB                            R16 1
      614 SETTABLEKS                       R16 R15 K70 ["TextWrapped"]
      616 GETTABLEKS                       R16 R1 K71 ["FontFace"]
      618 SETTABLEKS                       R16 R15 K71 ["FontFace"]
      620 LOADK                            R18 K75 ["SelectScreen"]
      621 LOADK                            R19 K102 ["SelectHint"]
      622 NAMECALL                         R16 R0 K76 ["getText"]
      624 CALL                             R16 3 1
      625 SETTABLEKS                       R16 R15 K72 ["Text"]
      627 CALL                             R13 2 1
      628 SETTABLEKS                       R13 R12 K102 ["SelectHint"]
      630 GETUPVAL                         R14 1
      631 GETTABLEKS                       R13 R14 K11 ["createElement"]
      633 GETUPVAL                         R16 0
      634 GETTABLEKS                       R15 R16 K12 ["UI"]
      636 GETTABLEKS                       R14 R15 K13 ["Pane"]
      638 DUPTABLE                         R15 K78 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      639 GETIMPORT                        R16 K106 [Enum.FillDirection.Horizontal]
      641 SETTABLEKS                       R16 R15 K16 ["Layout"]
      643 GETIMPORT                        R16 K25 [Enum.HorizontalAlignment.Center]
      645 SETTABLEKS                       R16 R15 K17 ["HorizontalAlignment"]
      647 GETTABLEKS                       R16 R1 K30 ["Spacing"]
      649 SETTABLEKS                       R16 R15 K30 ["Spacing"]
      651 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      653 CALL                             R16 1 1
      654 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      656 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      658 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      660 DUPTABLE                         R16 K110 [{"LeftLabel", "OrLabel", "RightLabel"}]
      661 GETUPVAL                         R18 1
      662 GETTABLEKS                       R17 R18 K11 ["createElement"]
      664 LOADK                            R18 K46 ["Frame"]
      665 DUPTABLE                         R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      666 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      668 CALL                             R20 1 1
      669 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      671 GETTABLEKS                       R20 R1 K112 ["LineColor"]
      673 SETTABLEKS                       R20 R19 K47 ["BackgroundColor3"]
      675 LOADN                            R20 0
      676 SETTABLEKS                       R20 R19 K48 ["BorderSizePixel"]
      678 GETTABLEKS                       R20 R1 K113 ["LineSize"]
      680 SETTABLEKS                       R20 R19 K41 ["Size"]
      682 CALL                             R17 2 1
      683 SETTABLEKS                       R17 R16 K107 ["LeftLabel"]
      685 GETUPVAL                         R18 1
      686 GETTABLEKS                       R17 R18 K11 ["createElement"]
      688 GETUPVAL                         R20 0
      689 GETTABLEKS                       R19 R20 K12 ["UI"]
      691 GETTABLEKS                       R18 R19 K69 ["TextLabel"]
      693 DUPTABLE                         R19 K114 [{"AutomaticSize", "LayoutOrder", "Text"}]
      694 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      696 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      698 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      700 CALL                             R20 1 1
      701 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      703 LOADK                            R22 K75 ["SelectScreen"]
      704 LOADK                            R23 K115 ["Or"]
      705 NAMECALL                         R20 R0 K76 ["getText"]
      707 CALL                             R20 3 1
      708 SETTABLEKS                       R20 R19 K72 ["Text"]
      710 CALL                             R17 2 1
      711 SETTABLEKS                       R17 R16 K108 ["OrLabel"]
      713 GETUPVAL                         R18 1
      714 GETTABLEKS                       R17 R18 K11 ["createElement"]
      716 LOADK                            R18 K46 ["Frame"]
      717 DUPTABLE                         R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
      718 NAMECALL                         R20 R2 K35 ["getNextOrder"]
      720 CALL                             R20 1 1
      721 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      723 GETTABLEKS                       R20 R1 K112 ["LineColor"]
      725 SETTABLEKS                       R20 R19 K47 ["BackgroundColor3"]
      727 LOADN                            R20 0
      728 SETTABLEKS                       R20 R19 K48 ["BorderSizePixel"]
      730 GETTABLEKS                       R20 R1 K113 ["LineSize"]
      732 SETTABLEKS                       R20 R19 K41 ["Size"]
      734 CALL                             R17 2 1
      735 SETTABLEKS                       R17 R16 K109 ["RightLabel"]
      737 CALL                             R13 3 1
      738 SETTABLEKS                       R13 R12 K38 ["SplitLabel"]
      740 GETUPVAL                         R14 1
      741 GETTABLEKS                       R13 R14 K11 ["createElement"]
      743 GETUPVAL                         R16 0
      744 GETTABLEKS                       R15 R16 K12 ["UI"]
      746 GETTABLEKS                       R14 R15 K88 ["IconButton"]
      748 DUPTABLE                         R15 K116 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
      749 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
      751 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      753 NAMECALL                         R16 R2 K35 ["getNextOrder"]
      755 CALL                             R16 1 1
      756 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      758 LOADK                            R16 K92 ["PointingHand"]
      759 SETTABLEKS                       R16 R15 K89 ["Cursor"]
      761 SETTABLEKS                       R4 R15 K85 ["OnClick"]
      763 GETIMPORT                        R16 K45 [UDim2.fromOffset]
      765 LOADN                            R17 0
      766 GETTABLEKS                       R18 R1 K117 ["ButtonHeight"]
      768 CALL                             R16 2 1
      769 SETTABLEKS                       R16 R15 K41 ["Size"]
      771 LOADN                            R16 5
      772 SETTABLEKS                       R16 R15 K90 ["Padding"]
      774 LOADN                            R16 5
      775 SETTABLEKS                       R16 R15 K30 ["Spacing"]
      777 LOADK                            R18 K75 ["SelectScreen"]
      778 LOADK                            R19 K118 ["Import3DFile"]
      779 NAMECALL                         R16 R0 K76 ["getText"]
      781 CALL                             R16 3 1
      782 SETTABLEKS                       R16 R15 K72 ["Text"]
      784 LOADK                            R16 K119 ["PrimaryBrand"]
      785 SETTABLEKS                       R16 R15 K73 ["Style"]
      787 CALL                             R13 2 1
      788 SETTABLEKS                       R13 R12 K39 ["Import3D"]
      790 CALL                             R9 3 1
      791 SETTABLEKS                       R9 R8 K27 ["Buttons"]
      793 CALL                             R5 3 -1
      794 RETURN                           R5 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R1 K13 ["Src"]
       31 GETTABLEKS                       R6 R7 K14 ["Resources"]
       33 GETTABLEKS                       R5 R6 K15 ["Theme"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K13 ["Src"]
       40 GETTABLEKS                       R7 R8 K16 ["Flags"]
       42 GETTABLEKS                       R6 R7 K17 ["getFFlagAvatarPreviewerSortClothingUI"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [game]
       47 LOADK                            R8 K18 ["AvatarPreviewerUseEmptyStateIcon"]
       48 LOADB                            R9 0
       49 NAMECALL                         R6 R6 K19 ["DefineFastFlag"]
       51 CALL                             R6 3 1
       52 GETIMPORT                        R7 K1 [game]
       54 LOADK                            R9 K20 ["AvatarAutoSetupLearnMoreLink"]
       55 LOADK                            R10 K21 ["https://create.roblox.com/docs/avatar-setup"]
       56 NAMECALL                         R7 R7 K22 ["DefineFastString"]
       58 CALL                             R7 3 1
       59 DUPCLOSURE                       R8 K23 [PROTO_3]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 RETURN                           R8 1
