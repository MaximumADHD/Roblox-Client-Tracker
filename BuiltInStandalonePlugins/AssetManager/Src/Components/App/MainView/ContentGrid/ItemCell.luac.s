PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Cell"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K3 ["Key"]
       12 GETUPVAL                         R8 3
       13 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       15 CALL                             R3 5 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R7 R0 K2 ["Cell"]
       21 CALL                             R6 1 1
       22 LOADN                            R7 0
       23 GETUPVAL                         R8 6
       24 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       26 GETTABLEKS                       R8 R8 K4 ["Model"]
       28 LOADK                            R9 K5 [""]
       29 LOADNIL                          R10
       30 NAMECALL                         R11 R4 K6 ["getItemsCache"]
       32 CALL                             R11 1 1
       33 GETTABLEKS                       R12 R0 K2 ["Cell"]
       35 GETUPVAL                         R13 7
       36 CALL                             R13 0 1
       37 LOADK                            R14 K5 [""]
       38 GETTABLEKS                       R16 R0 K2 ["Cell"]
       40 GETTABLE                         R15 R13 R16
       41 JUMPIFNOT                        R15 ; [+2]
       42 LOADK                            R14 K7 ["bg-shift-200"]
       43 JUMP                             ; [+1]
       44 LOADK                            R14 K8 ["bg-paper"]
       45 GETTABLEKS                       R16 R0 K9 ["Size"]
       47 GETTABLEKS                       R16 R16 K10 ["X"]
       49 GETTABLEKS                       R16 R16 K11 ["Offset"]
       51 GETUPVAL                         R18 8
       52 LOADK                            R20 K13 ["CellTagPadding"]
       53 NAMECALL                         R18 R18 K14 ["GetAttribute"]
       55 CALL                             R18 2 1
       56 MULK                             R17 R18 K12 [2]
       57 SUB                              R15 R16 R17
       58 GETUPVAL                         R16 9
       59 GETTABLEKS                       R16 R16 K15 ["useRef"]
       61 LOADNIL                          R17
       62 CALL                             R16 1 1
       63 GETUPVAL                         R17 10
       64 MOVE                             R18 R16
       65 GETTABLEKS                       R19 R0 K2 ["Cell"]
       67 CALL                             R17 2 1
       68 GETUPVAL                         R18 11
       69 GETUPVAL                         R19 6
       70 GETTABLEKS                       R19 R19 K16 ["MenuContext"]
       72 GETTABLEKS                       R19 R19 K17 ["Asset"]
       74 DUPTABLE                         R20 K20 [{"Path", "Index"}]
       75 GETTABLEKS                       R21 R0 K2 ["Cell"]
       77 SETTABLEKS                       R21 R20 K18 ["Path"]
       79 GETTABLEKS                       R21 R0 K21 ["Key"]
       81 SETTABLEKS                       R21 R20 K19 ["Index"]
       83 CALL                             R18 2 1
       84 GETTABLEKS                       R19 R0 K22 ["ParentScope"]
       86 GETTABLEKS                       R22 R19 K23 ["Uid"]
       88 MOVE                             R23 R12
       89 GETUPVAL                         R24 6
       90 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
       92 GETTABLEKS                       R24 R24 K3 ["AssetType"]
       94 NAMECALL                         R20 R11 K25 ["getItemField"]
       96 CALL                             R20 4 1
       97 MOVE                             R8 R20
       98 GETTABLEKS                       R22 R19 K23 ["Uid"]
      100 MOVE                             R23 R12
      101 GETUPVAL                         R24 6
      102 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      104 GETTABLEKS                       R24 R24 K26 ["DisplayName"]
      106 NAMECALL                         R20 R11 K25 ["getItemField"]
      108 CALL                             R20 4 1
      109 MOVE                             R9 R20
      110 GETTABLEKS                       R22 R19 K23 ["Uid"]
      112 MOVE                             R23 R12
      113 GETUPVAL                         R24 6
      114 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      116 GETTABLEKS                       R24 R24 K27 ["AssetId"]
      118 NAMECALL                         R20 R11 K25 ["getItemField"]
      120 CALL                             R20 4 1
      121 MOVE                             R7 R20
      122 GETTABLEKS                       R22 R19 K23 ["Uid"]
      124 MOVE                             R23 R12
      125 GETUPVAL                         R24 6
      126 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      128 GETTABLEKS                       R24 R24 K28 ["IsPackage"]
      130 NAMECALL                         R20 R11 K25 ["getItemField"]
      132 CALL                             R20 4 1
      133 MOVE                             R10 R20
      134 JUMPIFNOT                        R7 ; [+2]
      135 JUMPIFNOT                        R8 ; [+1]
      136 JUMPIF                           R9 ; [+2]
      137 LOADNIL                          R20
      138 RETURN                           R20 1
      139 GETUPVAL                         R21 12
      140 MOVE                             R22 R9
      141 CALL                             R21 1 1
      142 GETTABLEKS                       R21 R21 K10 ["X"]
      144 JUMPIFLT                         R15 R21 ; [+2]
      146 LOADB                            R20 0 +1
      147 LOADB                            R20 1
      148 GETUPVAL                         R21 9
      149 GETTABLEKS                       R21 R21 K29 ["createElement"]
      151 GETUPVAL                         R22 13
      152 GETTABLEKS                       R22 R22 K30 ["View"]
      154 DUPTABLE                         R23 K35 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      155 GETTABLEKS                       R24 R0 K21 ["Key"]
      157 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      159 GETTABLEKS                       R24 R0 K9 ["Size"]
      161 SETTABLEKS                       R24 R23 K9 ["Size"]
      163 GETTABLEKS                       R24 R0 K32 ["Position"]
      165 SETTABLEKS                       R24 R23 K32 ["Position"]
      167 SETTABLEKS                       R16 R23 K33 ["ref"]
      169 NEWTABLE                         R24 4 0
      171 LOADB                            R25 1
      172 SETTABLEKS                       R25 R24 K36 ["align-y-top align-x-center padding-xsmall radius-medium am-hover"]
      174 GETTABLEKS                       R26 R0 K2 ["Cell"]
      176 GETTABLE                         R25 R13 R26
      177 SETTABLEKS                       R25 R24 K37 ["bg-action-soft-emphasis"]
      179 GETUPVAL                         R26 14
      180 CALL                             R26 0 1
      181 AND                              R25 R26 R17
      182 SETTABLEKS                       R25 R24 K38 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      184 SETTABLEKS                       R24 R23 K34 ["tag"]
      186 DUPTABLE                         R24 K40 [{"InputHandler"}]
      187 GETUPVAL                         R25 9
      188 GETTABLEKS                       R25 R25 K29 ["createElement"]
      190 LOADK                            R26 K41 ["ImageButton"]
      191 NEWTABLE                         R27 4 0
      193 GETUPVAL                         R28 9
      194 GETTABLEKS                       R28 R28 K42 ["Event"]
      196 GETTABLEKS                       R28 R28 K43 ["MouseButton2Click"]
      198 NEWCLOSURE                       R29 P0
      199 CAPTURE                          VAL R3
      200 CAPTURE                          UPVAL U6
      201 CAPTURE                          VAL R0
      202 CAPTURE                          VAL R18
      203 SETTABLE                         R29 R27 R28
      204 GETUPVAL                         R28 9
      205 GETTABLEKS                       R28 R28 K42 ["Event"]
      207 GETTABLEKS                       R28 R28 K44 ["MouseButton1Down"]
      209 NEWCLOSURE                       R29 P1
      210 CAPTURE                          VAL R3
      211 CAPTURE                          UPVAL U6
      212 CAPTURE                          VAL R0
      213 SETTABLE                         R29 R27 R28
      214 GETUPVAL                         R28 9
      215 GETTABLEKS                       R28 R28 K42 ["Event"]
      217 GETTABLEKS                       R28 R28 K45 ["MouseButton1Up"]
      219 NEWCLOSURE                       R29 P2
      220 CAPTURE                          VAL R3
      221 CAPTURE                          UPVAL U6
      222 CAPTURE                          VAL R0
      223 SETTABLE                         R29 R27 R28
      224 GETUPVAL                         R28 9
      225 GETTABLEKS                       R28 R28 K46 ["Tag"]
      227 LOADK                            R29 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      228 SETTABLE                         R29 R27 R28
      229 DUPTABLE                         R28 K50 [{"ThumbnailContainer", "CellData"}]
      230 GETUPVAL                         R29 9
      231 GETTABLEKS                       R29 R29 K29 ["createElement"]
      233 GETUPVAL                         R30 13
      234 GETTABLEKS                       R30 R30 K30 ["View"]
      236 DUPTABLE                         R31 K51 [{"LayoutOrder", "tag"}]
      237 NAMECALL                         R32 R1 K52 ["getNextOrder"]
      239 CALL                             R32 1 1
      240 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      242 LOADK                            R33 K53 ["size-full fill radius-small %*"]
      243 MOVE                             R35 R14
      244 NAMECALL                         R33 R33 K54 ["format"]
      246 CALL                             R33 2 1
      247 MOVE                             R32 R33
      248 SETTABLEKS                       R32 R31 K34 ["tag"]
      250 DUPTABLE                         R32 K57 [{"Thumbnail", "PackageLinkIcon"}]
      251 GETUPVAL                         R33 9
      252 GETTABLEKS                       R33 R33 K29 ["createElement"]
      254 GETUPVAL                         R34 15
      255 DUPTABLE                         R35 K58 [{"AssetId", "AssetType"}]
      256 SETTABLEKS                       R7 R35 K27 ["AssetId"]
      258 SETTABLEKS                       R8 R35 K3 ["AssetType"]
      260 CALL                             R33 2 1
      261 SETTABLEKS                       R33 R32 K55 ["Thumbnail"]
      263 MOVE                             R33 R10
      264 JUMPIFNOT                        R33 ; [+14]
      265 GETUPVAL                         R33 9
      266 GETTABLEKS                       R33 R33 K29 ["createElement"]
      268 GETUPVAL                         R34 13
      269 GETTABLEKS                       R34 R34 K59 ["Image"]
      271 DUPTABLE                         R35 K61 [{"ZIndex", "tag"}]
      272 LOADN                            R36 2
      273 SETTABLEKS                       R36 R35 K60 ["ZIndex"]
      275 LOADK                            R36 K62 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      276 SETTABLEKS                       R36 R35 K34 ["tag"]
      278 CALL                             R33 2 1
      279 SETTABLEKS                       R33 R32 K56 ["PackageLinkIcon"]
      281 CALL                             R29 3 1
      282 SETTABLEKS                       R29 R28 K48 ["ThumbnailContainer"]
      284 GETUPVAL                         R29 9
      285 GETTABLEKS                       R29 R29 K29 ["createElement"]
      287 GETUPVAL                         R30 13
      288 GETTABLEKS                       R30 R30 K30 ["View"]
      290 DUPTABLE                         R31 K51 [{"LayoutOrder", "tag"}]
      291 NAMECALL                         R32 R1 K52 ["getNextOrder"]
      293 CALL                             R32 1 1
      294 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      296 LOADK                            R32 K63 ["am-size-full-celldata col align-x-left align-y-middle"]
      297 SETTABLEKS                       R32 R31 K34 ["tag"]
      299 DUPTABLE                         R32 K66 [{"NameTag", "TypeTag"}]
      300 GETUPVAL                         R34 16
      301 CALL                             R34 0 1
      302 JUMPIFNOT                        R34 ; [+25]
      303 JUMPIFNOT                        R6 ; [+24]
      304 GETUPVAL                         R33 9
      305 GETTABLEKS                       R33 R33 K29 ["createElement"]
      307 GETUPVAL                         R34 17
      308 DUPTABLE                         R35 K70 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      309 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      311 CALL                             R36 1 1
      312 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      314 SETTABLEKS                       R9 R35 K67 ["InitialText"]
      316 SETTABLEKS                       R8 R35 K68 ["ItemType"]
      318 GETTABLEKS                       R36 R0 K2 ["Cell"]
      320 SETTABLEKS                       R36 R35 K69 ["ItemPath"]
      322 GETTABLEKS                       R36 R0 K9 ["Size"]
      324 SETTABLEKS                       R36 R35 K9 ["Size"]
      326 CALL                             R33 2 1
      327 JUMP                             ; [+89]
      328 GETUPVAL                         R34 16
      329 CALL                             R34 0 1
      330 JUMPIF                           R34 ; [+20]
      331 JUMPIFNOTEQ                      R7 R5 ; [+19]
      333 GETUPVAL                         R33 9
      334 GETTABLEKS                       R33 R33 K29 ["createElement"]
      336 GETUPVAL                         R34 18
      337 DUPTABLE                         R35 K71 [{"LayoutOrder", "InitialText", "Size"}]
      338 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      340 CALL                             R36 1 1
      341 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      343 SETTABLEKS                       R9 R35 K67 ["InitialText"]
      345 GETTABLEKS                       R36 R0 K9 ["Size"]
      347 SETTABLEKS                       R36 R35 K9 ["Size"]
      349 CALL                             R33 2 1
      350 JUMP                             ; [+66]
      351 JUMPIFNOT                        R20 ; [+47]
      352 GETUPVAL                         R33 9
      353 GETTABLEKS                       R33 R33 K29 ["createElement"]
      355 GETUPVAL                         R34 13
      356 GETTABLEKS                       R34 R34 K72 ["Tooltip"]
      358 DUPTABLE                         R35 K75 [{"LayoutOrder", "title", "side"}]
      359 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      361 CALL                             R36 1 1
      362 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      364 SETTABLEKS                       R9 R35 K73 ["title"]
      366 GETUPVAL                         R36 13
      367 GETTABLEKS                       R36 R36 K76 ["Enums"]
      369 GETTABLEKS                       R36 R36 K77 ["PopoverSide"]
      371 GETTABLEKS                       R36 R36 K78 ["Bottom"]
      373 SETTABLEKS                       R36 R35 K74 ["side"]
      375 NEWTABLE                         R36 0 1
      377 GETUPVAL                         R37 9
      378 GETTABLEKS                       R37 R37 K29 ["createElement"]
      380 GETUPVAL                         R38 13
      381 GETTABLEKS                       R38 R38 K79 ["Text"]
      383 DUPTABLE                         R39 K80 [{"LayoutOrder", "Text", "tag"}]
      384 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      386 CALL                             R40 1 1
      387 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      389 SETTABLEKS                       R9 R39 K79 ["Text"]
      391 LOADK                            R40 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      392 SETTABLEKS                       R40 R39 K34 ["tag"]
      394 CALL                             R37 2 -1
      395 SETLIST                          R36 R37 -1 [1]
      397 CALL                             R33 3 1
      398 JUMP                             ; [+18]
      399 GETUPVAL                         R33 9
      400 GETTABLEKS                       R33 R33 K29 ["createElement"]
      402 GETUPVAL                         R34 13
      403 GETTABLEKS                       R34 R34 K79 ["Text"]
      405 DUPTABLE                         R35 K80 [{"LayoutOrder", "Text", "tag"}]
      406 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      408 CALL                             R36 1 1
      409 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      411 SETTABLEKS                       R9 R35 K79 ["Text"]
      413 LOADK                            R36 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      414 SETTABLEKS                       R36 R35 K34 ["tag"]
      416 CALL                             R33 2 1
      417 SETTABLEKS                       R33 R32 K64 ["NameTag"]
      419 GETUPVAL                         R33 9
      420 GETTABLEKS                       R33 R33 K29 ["createElement"]
      422 GETUPVAL                         R34 13
      423 GETTABLEKS                       R34 R34 K79 ["Text"]
      425 DUPTABLE                         R35 K80 [{"LayoutOrder", "Text", "tag"}]
      426 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      428 CALL                             R36 1 1
      429 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      431 LOADK                            R38 K3 ["AssetType"]
      432 MOVE                             R39 R8
      433 NAMECALL                         R36 R2 K82 ["getText"]
      435 CALL                             R36 3 1
      436 SETTABLEKS                       R36 R35 K79 ["Text"]
      438 LOADK                            R36 K83 ["text-caption-small text-truncate-end auto-xy size-0 padding content-default"]
      439 SETTABLEKS                       R36 R35 K34 ["tag"]
      441 CALL                             R33 2 1
      442 SETTABLEKS                       R33 R32 K65 ["TypeTag"]
      444 CALL                             R29 3 1
      445 SETTABLEKS                       R29 R28 K49 ["CellData"]
      447 CALL                             R25 3 1
      448 SETTABLEKS                       R25 R24 K39 ["InputHandler"]
      450 CALL                             R21 3 -1
      451 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput_DEPRECATED"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R10 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Src"]
       78 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R11 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K12 ["Src"]
       87 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K22 ["useContextMenu"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K12 ["Src"]
       96 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K23 ["useIsEditItem"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K12 ["Src"]
      105 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K24 ["useItemDragHovered"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K12 ["Src"]
      114 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R15 K25 ["useItemSelection"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K12 ["Src"]
      123 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R16 K26 ["useRenamePlaceId_DEPRECATED"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K12 ["Src"]
      132 GETTABLEKS                       R17 R17 K27 ["Types"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R17 R3 K28 ["Util"]
      137 GETTABLEKS                       R17 R17 K29 ["LayoutOrderIterator"]
      139 GETTABLEKS                       R18 R3 K28 ["Util"]
      141 GETTABLEKS                       R18 R18 K30 ["GetTextSize"]
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R20 R0 K12 ["Src"]
      147 GETTABLEKS                       R20 R20 K31 ["Resources"]
      149 GETTABLEKS                       R20 R20 K32 ["PluginStyles"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K12 ["Src"]
      156 GETTABLEKS                       R21 R21 K33 ["Flags"]
      158 GETTABLEKS                       R21 R21 K34 ["getFFlagAmrOrganizationFoundation"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R22 R0 K12 ["Src"]
      165 GETTABLEKS                       R22 R22 K33 ["Flags"]
      167 GETTABLEKS                       R22 R22 K35 ["getFFlagAmrRefactorEditNameInput"]
      169 CALL                             R21 1 1
      170 DUPCLOSURE                       R22 K36 [PROTO_3]
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R7
      190 RETURN                           R22 1
