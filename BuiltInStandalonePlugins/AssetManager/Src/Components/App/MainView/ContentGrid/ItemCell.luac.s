PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+37]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Cell"]
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+16]
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R8 4
       11 GETTABLEKS                       R7 R8 K1 ["UiZone"]
       13 GETTABLEKS                       R6 R7 K2 ["Browser"]
       15 LOADNIL                          R7
       16 MOVE                             R8 R3
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R9 R10 K3 ["Key"]
       20 GETUPVAL                         R10 5
       21 NAMECALL                         R4 R4 K4 ["handleMouse2Click"]
       23 CALL                             R4 6 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 3
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R7 R8 K1 ["UiZone"]
       29 GETTABLEKS                       R6 R7 K2 ["Browser"]
       31 GETUPVAL                         R7 6
       32 MOVE                             R8 R3
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K3 ["Key"]
       36 NAMECALL                         R4 R4 K4 ["handleMouse2Click"]
       38 CALL                             R4 5 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 2
       41 CALL                             R3 0 1
       42 JUMPIFNOT                        R3 ; [+16]
       43 GETUPVAL                         R3 3
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K1 ["UiZone"]
       47 GETTABLEKS                       R5 R6 K2 ["Browser"]
       49 LOADNIL                          R6
       50 GETUPVAL                         R7 7
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R8 R9 K3 ["Key"]
       54 GETUPVAL                         R9 5
       55 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       57 CALL                             R3 6 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R3 3
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R6 R7 K1 ["UiZone"]
       63 GETTABLEKS                       R5 R6 K2 ["Browser"]
       65 GETUPVAL                         R6 6
       66 GETUPVAL                         R7 7
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K3 ["Key"]
       70 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       72 CALL                             R3 5 0
       73 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 GETUPVAL                         R8 6
       20 CALL                             R8 0 1
       21 JUMPIFNOT                        R8 ; [+3]
       22 GETTABLEKS                       R7 R0 K2 ["Cell"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 LOADK                            R7 K3 [""]
       28 LOADB                            R8 0
       29 LOADN                            R9 0
       30 GETUPVAL                         R12 7
       31 GETTABLEKS                       R11 R12 K4 ["AssetType"]
       33 GETTABLEKS                       R10 R11 K5 ["Model"]
       35 LOADK                            R11 K3 [""]
       36 LOADNIL                          R12
       37 GETUPVAL                         R13 6
       38 CALL                             R13 0 1
       39 JUMPIFNOT                        R13 ; [+87]
       40 NAMECALL                         R13 R4 K6 ["getItemsCache"]
       42 CALL                             R13 1 1
       43 GETTABLEKS                       R14 R0 K2 ["Cell"]
       45 GETTABLEKS                       R15 R0 K7 ["ParentScope"]
       47 GETTABLEKS                       R18 R15 K8 ["Uid"]
       49 MOVE                             R19 R14
       50 GETUPVAL                         R22 7
       51 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       53 GETTABLEKS                       R20 R21 K4 ["AssetType"]
       55 NAMECALL                         R16 R13 K10 ["getItemField"]
       57 CALL                             R16 4 1
       58 MOVE                             R10 R16
       59 GETTABLEKS                       R18 R15 K8 ["Uid"]
       61 MOVE                             R19 R14
       62 GETUPVAL                         R22 7
       63 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       65 GETTABLEKS                       R20 R21 K11 ["DisplayName"]
       67 NAMECALL                         R16 R13 K10 ["getItemField"]
       69 CALL                             R16 4 1
       70 MOVE                             R11 R16
       71 GETTABLEKS                       R18 R15 K8 ["Uid"]
       73 MOVE                             R19 R14
       74 GETUPVAL                         R22 7
       75 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       77 GETTABLEKS                       R20 R21 K12 ["AssetId"]
       79 NAMECALL                         R16 R13 K10 ["getItemField"]
       81 CALL                             R16 4 1
       82 MOVE                             R9 R16
       83 GETTABLEKS                       R18 R15 K8 ["Uid"]
       85 MOVE                             R19 R14
       86 GETUPVAL                         R22 7
       87 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       89 GETTABLEKS                       R20 R21 K13 ["IsPackage"]
       91 NAMECALL                         R16 R13 K10 ["getItemField"]
       93 CALL                             R16 4 1
       94 MOVE                             R12 R16
       95 GETUPVAL                         R16 8
       96 CALL                             R16 0 1
       97 GETTABLEKS                       R18 R0 K2 ["Cell"]
       99 GETTABLE                         R17 R16 R18
      100 JUMPIFNOT                        R17 ; [+2]
      101 LOADK                            R7 K14 ["bg-action-selected"]
      102 JUMP                             ; [+1]
      103 LOADK                            R7 K15 ["bg-paper am-hover"]
      104 GETTABLEKS                       R20 R0 K16 ["Size"]
      106 GETTABLEKS                       R19 R20 K17 ["X"]
      108 GETTABLEKS                       R18 R19 K18 ["Offset"]
      110 GETUPVAL                         R20 9
      111 LOADK                            R22 K20 ["CellTagPadding"]
      112 NAMECALL                         R20 R20 K21 ["GetAttribute"]
      114 CALL                             R20 2 1
      115 MULK                             R19 R20 K19 [2]
      116 SUB                              R17 R18 R19
      117 GETUPVAL                         R19 10
      118 MOVE                             R20 R11
      119 CALL                             R19 1 1
      120 GETTABLEKS                       R18 R19 K17 ["X"]
      122 JUMPIFLT                         R17 R18 ; [+2]
      124 LOADB                            R8 0 +1
      125 LOADB                            R8 1
      126 JUMP                             ; [+41]
      127 GETTABLEKS                       R13 R0 K2 ["Cell"]
      129 GETUPVAL                         R14 8
      130 CALL                             R14 0 1
      131 GETTABLEKS                       R16 R13 K12 ["AssetId"]
      133 GETTABLE                         R15 R14 R16
      134 JUMPIFNOT                        R15 ; [+2]
      135 LOADK                            R7 K14 ["bg-action-selected"]
      136 JUMP                             ; [+1]
      137 LOADK                            R7 K15 ["bg-paper am-hover"]
      138 GETUPVAL                         R16 10
      139 GETTABLEKS                       R17 R13 K11 ["DisplayName"]
      141 CALL                             R16 1 1
      142 GETTABLEKS                       R15 R16 K17 ["X"]
      144 GETTABLEKS                       R18 R0 K16 ["Size"]
      146 GETTABLEKS                       R17 R18 K17 ["X"]
      148 GETTABLEKS                       R16 R17 K18 ["Offset"]
      150 GETUPVAL                         R19 9
      151 LOADK                            R21 K20 ["CellTagPadding"]
      152 NAMECALL                         R19 R19 K21 ["GetAttribute"]
      154 CALL                             R19 2 1
      155 MULK                             R18 R19 K19 [2]
      156 SUB                              R17 R16 R18
      157 JUMPIFNOTLT                      R17 R15 ; [+2]
      159 LOADB                            R8 1
      160 GETTABLEKS                       R9 R13 K12 ["AssetId"]
      162 GETTABLEKS                       R10 R13 K4 ["AssetType"]
      164 GETTABLEKS                       R11 R13 K11 ["DisplayName"]
      166 GETTABLEKS                       R12 R13 K13 ["IsPackage"]
      168 GETTABLEKS                       R16 R0 K16 ["Size"]
      170 GETTABLEKS                       R15 R16 K17 ["X"]
      172 GETTABLEKS                       R14 R15 K18 ["Offset"]
      174 GETUPVAL                         R16 9
      175 LOADK                            R18 K20 ["CellTagPadding"]
      176 NAMECALL                         R16 R16 K21 ["GetAttribute"]
      178 CALL                             R16 2 1
      179 MULK                             R15 R16 K19 [2]
      180 SUB                              R13 R14 R15
      181 GETUPVAL                         R15 10
      182 MOVE                             R16 R11
      183 CALL                             R15 1 1
      184 GETTABLEKS                       R14 R15 K17 ["X"]
      186 JUMPIFLT                         R13 R14 ; [+2]
      188 LOADB                            R8 0 +1
      189 LOADB                            R8 1
      190 GETUPVAL                         R14 11
      191 GETUPVAL                         R17 7
      192 GETTABLEKS                       R16 R17 K22 ["MenuContext"]
      194 GETTABLEKS                       R15 R16 K23 ["Asset"]
      196 DUPTABLE                         R16 K26 [{"Path", "Index"}]
      197 GETUPVAL                         R18 6
      198 CALL                             R18 0 1
      199 JUMPIFNOT                        R18 ; [+3]
      200 GETTABLEKS                       R17 R0 K2 ["Cell"]
      202 JUMP                             ; [+1]
      203 MOVE                             R17 R9
      204 SETTABLEKS                       R17 R16 K24 ["Path"]
      206 GETTABLEKS                       R17 R0 K27 ["Key"]
      208 SETTABLEKS                       R17 R16 K25 ["Index"]
      210 CALL                             R14 2 1
      211 GETUPVAL                         R16 12
      212 GETTABLEKS                       R15 R16 K28 ["createElement"]
      214 GETUPVAL                         R17 13
      215 GETTABLEKS                       R16 R17 K29 ["View"]
      217 DUPTABLE                         R17 K33 [{"LayoutOrder", "Size", "Position", "tag"}]
      218 GETTABLEKS                       R18 R0 K27 ["Key"]
      220 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      222 GETTABLEKS                       R18 R0 K16 ["Size"]
      224 SETTABLEKS                       R18 R17 K16 ["Size"]
      226 GETTABLEKS                       R18 R0 K31 ["Position"]
      228 SETTABLEKS                       R18 R17 K31 ["Position"]
      230 LOADK                            R18 K34 ["align-y-top align-x-center"]
      231 SETTABLEKS                       R18 R17 K32 ["tag"]
      233 DUPTABLE                         R18 K36 [{"InputHandler"}]
      234 GETUPVAL                         R20 12
      235 GETTABLEKS                       R19 R20 K28 ["createElement"]
      237 LOADK                            R20 K37 ["ImageButton"]
      238 NEWTABLE                         R21 8 0
      240 LOADN                            R22 1
      241 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      243 GETUPVAL                         R24 12
      244 GETTABLEKS                       R23 R24 K39 ["Event"]
      246 GETTABLEKS                       R22 R23 K40 ["MouseButton2Click"]
      248 NEWCLOSURE                       R23 P0
      249 CAPTURE                          UPVAL U6
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U14
      252 CAPTURE                          VAL R3
      253 CAPTURE                          UPVAL U7
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R2
      256 CAPTURE                          REF R9
      257 SETTABLE                         R23 R21 R22
      258 GETUPVAL                         R24 12
      259 GETTABLEKS                       R23 R24 K39 ["Event"]
      261 GETTABLEKS                       R22 R23 K41 ["MouseButton1Down"]
      263 NEWCLOSURE                       R23 P1
      264 CAPTURE                          VAL R3
      265 CAPTURE                          UPVAL U7
      266 CAPTURE                          VAL R0
      267 SETTABLE                         R23 R21 R22
      268 GETUPVAL                         R24 12
      269 GETTABLEKS                       R23 R24 K39 ["Event"]
      271 GETTABLEKS                       R22 R23 K42 ["MouseButton1Up"]
      273 NEWCLOSURE                       R23 P2
      274 CAPTURE                          VAL R3
      275 CAPTURE                          UPVAL U7
      276 CAPTURE                          VAL R0
      277 SETTABLE                         R23 R21 R22
      278 GETUPVAL                         R23 12
      279 GETTABLEKS                       R22 R23 K43 ["Tag"]
      281 LOADK                            R23 K44 ["size-full col data-testid=item-cell-input"]
      282 SETTABLE                         R23 R21 R22
      283 DUPTABLE                         R22 K47 [{"ThumbnailContainer", "CellData"}]
      284 GETUPVAL                         R24 12
      285 GETTABLEKS                       R23 R24 K28 ["createElement"]
      287 GETUPVAL                         R25 13
      288 GETTABLEKS                       R24 R25 K29 ["View"]
      290 DUPTABLE                         R25 K48 [{"LayoutOrder", "tag"}]
      291 NAMECALL                         R26 R1 K49 ["getNextOrder"]
      293 CALL                             R26 1 1
      294 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      296 LOADK                            R27 K50 ["size-full fill radius-small padding-xsmall %*"]
      297 MOVE                             R29 R7
      298 NAMECALL                         R27 R27 K51 ["format"]
      300 CALL                             R27 2 1
      301 MOVE                             R26 R27
      302 SETTABLEKS                       R26 R25 K32 ["tag"]
      304 DUPTABLE                         R26 K54 [{"Thumbnail", "PackageLinkIcon"}]
      305 GETUPVAL                         R28 12
      306 GETTABLEKS                       R27 R28 K28 ["createElement"]
      308 GETUPVAL                         R28 15
      309 DUPTABLE                         R29 K55 [{"AssetId", "AssetType"}]
      310 SETTABLEKS                       R9 R29 K12 ["AssetId"]
      312 SETTABLEKS                       R10 R29 K4 ["AssetType"]
      314 CALL                             R27 2 1
      315 SETTABLEKS                       R27 R26 K52 ["Thumbnail"]
      317 MOVE                             R27 R12
      318 JUMPIFNOT                        R27 ; [+14]
      319 GETUPVAL                         R28 12
      320 GETTABLEKS                       R27 R28 K28 ["createElement"]
      322 GETUPVAL                         R29 13
      323 GETTABLEKS                       R28 R29 K56 ["Image"]
      325 DUPTABLE                         R29 K58 [{"ZIndex", "tag"}]
      326 LOADN                            R30 2
      327 SETTABLEKS                       R30 R29 K57 ["ZIndex"]
      329 LOADK                            R30 K59 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      330 SETTABLEKS                       R30 R29 K32 ["tag"]
      332 CALL                             R27 2 1
      333 SETTABLEKS                       R27 R26 K53 ["PackageLinkIcon"]
      335 CALL                             R23 3 1
      336 SETTABLEKS                       R23 R22 K45 ["ThumbnailContainer"]
      338 GETUPVAL                         R24 12
      339 GETTABLEKS                       R23 R24 K28 ["createElement"]
      341 GETUPVAL                         R25 13
      342 GETTABLEKS                       R24 R25 K29 ["View"]
      344 DUPTABLE                         R25 K48 [{"LayoutOrder", "tag"}]
      345 NAMECALL                         R26 R1 K49 ["getNextOrder"]
      347 CALL                             R26 1 1
      348 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      350 LOADK                            R26 K60 ["am-padding-celldata am-size-full-celldata col align-x-left align-y-middle"]
      351 SETTABLEKS                       R26 R25 K32 ["tag"]
      353 DUPTABLE                         R26 K63 [{"NameTag", "TypeTag"}]
      354 GETUPVAL                         R28 16
      355 CALL                             R28 0 1
      356 JUMPIFNOT                        R28 ; [+25]
      357 JUMPIFNOT                        R6 ; [+24]
      358 GETUPVAL                         R28 12
      359 GETTABLEKS                       R27 R28 K28 ["createElement"]
      361 GETUPVAL                         R28 17
      362 DUPTABLE                         R29 K67 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      363 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      365 CALL                             R30 1 1
      366 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      368 SETTABLEKS                       R11 R29 K64 ["InitialText"]
      370 SETTABLEKS                       R10 R29 K65 ["ItemType"]
      372 GETTABLEKS                       R30 R0 K2 ["Cell"]
      374 SETTABLEKS                       R30 R29 K66 ["ItemPath"]
      376 GETTABLEKS                       R30 R0 K16 ["Size"]
      378 SETTABLEKS                       R30 R29 K16 ["Size"]
      380 CALL                             R27 2 1
      381 JUMP                             ; [+86]
      382 JUMPIFNOTEQ                      R9 R5 ; [+19]
      384 GETUPVAL                         R28 12
      385 GETTABLEKS                       R27 R28 K28 ["createElement"]
      387 GETUPVAL                         R28 18
      388 DUPTABLE                         R29 K68 [{"LayoutOrder", "InitialText", "Size"}]
      389 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      391 CALL                             R30 1 1
      392 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      394 SETTABLEKS                       R11 R29 K64 ["InitialText"]
      396 GETTABLEKS                       R30 R0 K16 ["Size"]
      398 SETTABLEKS                       R30 R29 K16 ["Size"]
      400 CALL                             R27 2 1
      401 JUMP                             ; [+66]
      402 JUMPIFNOT                        R8 ; [+47]
      403 GETUPVAL                         R28 12
      404 GETTABLEKS                       R27 R28 K28 ["createElement"]
      406 GETUPVAL                         R29 13
      407 GETTABLEKS                       R28 R29 K69 ["Tooltip"]
      409 DUPTABLE                         R29 K72 [{"LayoutOrder", "title", "side"}]
      410 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      412 CALL                             R30 1 1
      413 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      415 SETTABLEKS                       R11 R29 K70 ["title"]
      417 GETUPVAL                         R33 13
      418 GETTABLEKS                       R32 R33 K73 ["Enums"]
      420 GETTABLEKS                       R31 R32 K74 ["PopoverSide"]
      422 GETTABLEKS                       R30 R31 K75 ["Bottom"]
      424 SETTABLEKS                       R30 R29 K71 ["side"]
      426 NEWTABLE                         R30 0 1
      428 GETUPVAL                         R32 12
      429 GETTABLEKS                       R31 R32 K28 ["createElement"]
      431 GETUPVAL                         R33 13
      432 GETTABLEKS                       R32 R33 K76 ["Text"]
      434 DUPTABLE                         R33 K77 [{"LayoutOrder", "Text", "tag"}]
      435 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      437 CALL                             R34 1 1
      438 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      440 SETTABLEKS                       R11 R33 K76 ["Text"]
      442 LOADK                            R34 K78 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      443 SETTABLEKS                       R34 R33 K32 ["tag"]
      445 CALL                             R31 2 -1
      446 SETLIST                          R30 R31 -1 [1]
      448 CALL                             R27 3 1
      449 JUMP                             ; [+18]
      450 GETUPVAL                         R28 12
      451 GETTABLEKS                       R27 R28 K28 ["createElement"]
      453 GETUPVAL                         R29 13
      454 GETTABLEKS                       R28 R29 K76 ["Text"]
      456 DUPTABLE                         R29 K77 [{"LayoutOrder", "Text", "tag"}]
      457 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      459 CALL                             R30 1 1
      460 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      462 SETTABLEKS                       R11 R29 K76 ["Text"]
      464 LOADK                            R30 K78 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      465 SETTABLEKS                       R30 R29 K32 ["tag"]
      467 CALL                             R27 2 1
      468 SETTABLEKS                       R27 R26 K61 ["NameTag"]
      470 GETUPVAL                         R28 12
      471 GETTABLEKS                       R27 R28 K28 ["createElement"]
      473 GETUPVAL                         R29 13
      474 GETTABLEKS                       R28 R29 K76 ["Text"]
      476 DUPTABLE                         R29 K77 [{"LayoutOrder", "Text", "tag"}]
      477 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      479 CALL                             R30 1 1
      480 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      482 LOADK                            R32 K4 ["AssetType"]
      483 MOVE                             R33 R10
      484 NAMECALL                         R30 R2 K79 ["getText"]
      486 CALL                             R30 3 1
      487 SETTABLEKS                       R30 R29 K76 ["Text"]
      489 LOADK                            R30 K80 ["text-caption-small text-truncate-end auto-xy size-0 content-inverse-muted"]
      490 SETTABLEKS                       R30 R29 K32 ["tag"]
      492 CALL                             R27 2 1
      493 SETTABLEKS                       R27 R26 K62 ["TypeTag"]
      495 CALL                             R23 3 1
      496 SETTABLEKS                       R23 R22 K46 ["CellData"]
      498 CALL                             R19 3 1
      499 SETTABLEKS                       R19 R18 K35 ["InputHandler"]
      501 CALL                             R15 3 -1
      502 CLOSEUPVALS                      R9
      503 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R10 R0 K12 ["Src"]
       36 GETTABLEKS                       R9 R10 K13 ["Components"]
       38 GETTABLEKS                       R8 R9 K14 ["Shared"]
       40 GETTABLEKS                       R7 R8 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R10 R11 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Shared"]
       51 GETTABLEKS                       R8 R9 K16 ["EditNameInput_DEPRECATED"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K13 ["Components"]
       60 GETTABLEKS                       R10 R11 K14 ["Shared"]
       62 GETTABLEKS                       R9 R10 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K12 ["Src"]
       69 GETTABLEKS                       R11 R12 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R11 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K12 ["Src"]
       78 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R12 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R13 K22 ["useContextMenu"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K12 ["Src"]
       96 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R14 K23 ["useIsEditItem"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K12 ["Src"]
      105 GETTABLEKS                       R15 R16 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R15 K24 ["useItemSelection"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useRenamePlaceId_DEPRECATED"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K12 ["Src"]
      123 GETTABLEKS                       R16 R17 K26 ["Types"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R17 R3 K27 ["Util"]
      128 GETTABLEKS                       R16 R17 K28 ["LayoutOrderIterator"]
      130 GETTABLEKS                       R18 R3 K27 ["Util"]
      132 GETTABLEKS                       R17 R18 K29 ["GetTextSize"]
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R21 R0 K12 ["Src"]
      138 GETTABLEKS                       R20 R21 K30 ["Resources"]
      140 GETTABLEKS                       R19 R20 K31 ["PluginStyles"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R22 R0 K12 ["Src"]
      147 GETTABLEKS                       R21 R22 K32 ["Flags"]
      149 GETTABLEKS                       R20 R21 K33 ["getFFlagAmrUpdatedItemsCache"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R23 R0 K12 ["Src"]
      156 GETTABLEKS                       R22 R23 K32 ["Flags"]
      158 GETTABLEKS                       R21 R22 K34 ["getFFlagAmrContextMenuRefactor"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R24 R0 K12 ["Src"]
      165 GETTABLEKS                       R23 R24 K32 ["Flags"]
      167 GETTABLEKS                       R22 R23 K35 ["getFFlagAmrRefactorEditNameInput"]
      169 CALL                             R21 1 1
      170 DUPCLOSURE                       R22 K36 [PROTO_3]
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R7
      190 RETURN                           R22 1
