PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Cell"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Key"]
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       15 CALL                             R0 5 0
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
       17 GETTABLEKS                       R6 R0 K2 ["Cell"]
       19 CALL                             R5 1 1
       20 LOADN                            R6 0
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K3 ["AssetType"]
       24 GETTABLEKS                       R7 R7 K4 ["Model"]
       26 LOADK                            R8 K5 [""]
       27 LOADNIL                          R9
       28 GETUPVAL                         R10 5
       29 GETTABLEKS                       R10 R10 K6 ["ModerationStatus"]
       31 GETTABLEKS                       R10 R10 K7 ["Placeholder"]
       33 NAMECALL                         R11 R4 K8 ["getItemsCache"]
       35 CALL                             R11 1 1
       36 GETTABLEKS                       R12 R0 K2 ["Cell"]
       38 GETUPVAL                         R13 6
       39 CALL                             R13 0 1
       40 LOADK                            R14 K5 [""]
       41 GETTABLEKS                       R16 R0 K2 ["Cell"]
       43 GETTABLE                         R15 R13 R16
       44 JUMPIFNOT                        R15 ; [+2]
       45 LOADK                            R14 K9 ["bg-shift-200"]
       46 JUMP                             ; [+1]
       47 LOADK                            R14 K10 ["bg-paper"]
       48 GETTABLEKS                       R16 R0 K11 ["Size"]
       50 GETTABLEKS                       R16 R16 K12 ["X"]
       52 GETTABLEKS                       R16 R16 K13 ["Offset"]
       54 GETUPVAL                         R18 7
       55 LOADK                            R20 K15 ["CellTagPadding"]
       56 NAMECALL                         R18 R18 K16 ["GetAttribute"]
       58 CALL                             R18 2 1
       59 MULK                             R17 R18 K14 [2]
       60 SUB                              R15 R16 R17
       61 GETUPVAL                         R16 8
       62 GETTABLEKS                       R16 R16 K17 ["useRef"]
       64 LOADNIL                          R17
       65 CALL                             R16 1 1
       66 GETUPVAL                         R17 8
       67 GETTABLEKS                       R17 R17 K17 ["useRef"]
       69 LOADNIL                          R18
       70 CALL                             R17 1 1
       71 GETUPVAL                         R18 9
       72 MOVE                             R19 R16
       73 CALL                             R18 1 1
       74 GETUPVAL                         R19 9
       75 MOVE                             R20 R17
       76 CALL                             R19 1 1
       77 GETUPVAL                         R20 10
       78 MOVE                             R21 R18
       79 GETTABLEKS                       R22 R0 K2 ["Cell"]
       81 CALL                             R20 2 1
       82 GETUPVAL                         R21 11
       83 GETUPVAL                         R22 5
       84 GETTABLEKS                       R22 R22 K18 ["MenuContext"]
       86 GETTABLEKS                       R22 R22 K19 ["Asset"]
       88 DUPTABLE                         R23 K22 [{"Path", "Index"}]
       89 GETTABLEKS                       R24 R0 K2 ["Cell"]
       91 SETTABLEKS                       R24 R23 K20 ["Path"]
       93 GETTABLEKS                       R24 R0 K23 ["Key"]
       95 SETTABLEKS                       R24 R23 K21 ["Index"]
       97 CALL                             R21 2 1
       98 GETTABLEKS                       R22 R0 K24 ["ParentScope"]
      100 GETTABLEKS                       R25 R22 K25 ["Uid"]
      102 MOVE                             R26 R12
      103 GETUPVAL                         R27 5
      104 GETTABLEKS                       R27 R27 K26 ["AssetInfoField"]
      106 GETTABLEKS                       R27 R27 K3 ["AssetType"]
      108 NAMECALL                         R23 R11 K27 ["getItemField"]
      110 CALL                             R23 4 1
      111 MOVE                             R7 R23
      112 GETTABLEKS                       R25 R22 K25 ["Uid"]
      114 MOVE                             R26 R12
      115 GETUPVAL                         R27 5
      116 GETTABLEKS                       R27 R27 K26 ["AssetInfoField"]
      118 GETTABLEKS                       R27 R27 K28 ["DisplayName"]
      120 NAMECALL                         R23 R11 K27 ["getItemField"]
      122 CALL                             R23 4 1
      123 MOVE                             R8 R23
      124 GETTABLEKS                       R25 R22 K25 ["Uid"]
      126 MOVE                             R26 R12
      127 GETUPVAL                         R27 5
      128 GETTABLEKS                       R27 R27 K26 ["AssetInfoField"]
      130 GETTABLEKS                       R27 R27 K29 ["AssetId"]
      132 NAMECALL                         R23 R11 K27 ["getItemField"]
      134 CALL                             R23 4 1
      135 MOVE                             R6 R23
      136 JUMPIFNOT                        R6 ; [+2]
      137 JUMPIFNOT                        R7 ; [+1]
      138 JUMPIF                           R8 ; [+2]
      139 LOADNIL                          R23
      140 RETURN                           R23 1
      141 GETTABLEKS                       R25 R22 K25 ["Uid"]
      143 MOVE                             R26 R12
      144 GETUPVAL                         R27 5
      145 GETTABLEKS                       R27 R27 K26 ["AssetInfoField"]
      147 GETTABLEKS                       R27 R27 K30 ["IsPackage"]
      149 NAMECALL                         R23 R11 K27 ["getItemField"]
      151 CALL                             R23 4 1
      152 MOVE                             R9 R23
      153 GETTABLEKS                       R25 R22 K25 ["Uid"]
      155 MOVE                             R26 R12
      156 GETUPVAL                         R27 5
      157 GETTABLEKS                       R27 R27 K26 ["AssetInfoField"]
      159 GETTABLEKS                       R27 R27 K6 ["ModerationStatus"]
      161 NAMECALL                         R23 R11 K27 ["getItemField"]
      163 CALL                             R23 4 1
      164 MOVE                             R10 R23
      165 GETUPVAL                         R24 12
      166 MOVE                             R25 R8
      167 CALL                             R24 1 1
      168 GETTABLEKS                       R24 R24 K12 ["X"]
      170 JUMPIFLT                         R15 R24 ; [+2]
      172 LOADB                            R23 0 +1
      173 LOADB                            R23 1
      174 GETTABLEKS                       R25 R0 K2 ["Cell"]
      176 GETTABLE                         R24 R13 R25
      177 NEWCLOSURE                       R25 P0
      178 CAPTURE                          VAL R3
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R21
      182 GETUPVAL                         R26 8
      183 GETTABLEKS                       R26 R26 K31 ["createElement"]
      185 GETUPVAL                         R27 13
      186 GETTABLEKS                       R27 R27 K32 ["View"]
      188 DUPTABLE                         R28 K37 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      189 GETTABLEKS                       R29 R0 K23 ["Key"]
      191 SETTABLEKS                       R29 R28 K33 ["LayoutOrder"]
      193 GETTABLEKS                       R29 R0 K11 ["Size"]
      195 SETTABLEKS                       R29 R28 K11 ["Size"]
      197 GETTABLEKS                       R29 R0 K34 ["Position"]
      199 SETTABLEKS                       R29 R28 K34 ["Position"]
      201 SETTABLEKS                       R16 R28 K35 ["ref"]
      203 NEWTABLE                         R29 4 0
      205 LOADB                            R30 1
      206 SETTABLEKS                       R30 R29 K38 ["align-x-center align-y-top padding-xsmall radius-medium"]
      208 SETTABLEKS                       R24 R29 K39 ["bg-action-soft-emphasis"]
      210 NOT                              R31 R24
      211 AND                              R30 R31 R18
      212 SETTABLEKS                       R30 R29 K9 ["bg-shift-200"]
      214 SETTABLEKS                       R20 R29 K40 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      216 SETTABLEKS                       R29 R28 K36 ["tag"]
      218 DUPTABLE                         R29 K42 [{"InputHandler"}]
      219 GETUPVAL                         R30 8
      220 GETTABLEKS                       R30 R30 K31 ["createElement"]
      222 LOADK                            R31 K43 ["ImageButton"]
      223 NEWTABLE                         R32 4 0
      225 GETUPVAL                         R33 8
      226 GETTABLEKS                       R33 R33 K44 ["Event"]
      228 GETTABLEKS                       R33 R33 K45 ["MouseButton2Click"]
      230 SETTABLE                         R25 R32 R33
      231 GETUPVAL                         R33 8
      232 GETTABLEKS                       R33 R33 K44 ["Event"]
      234 GETTABLEKS                       R33 R33 K46 ["MouseButton1Down"]
      236 NEWCLOSURE                       R34 P1
      237 CAPTURE                          VAL R3
      238 CAPTURE                          UPVAL U5
      239 CAPTURE                          VAL R0
      240 SETTABLE                         R34 R32 R33
      241 GETUPVAL                         R33 8
      242 GETTABLEKS                       R33 R33 K44 ["Event"]
      244 GETTABLEKS                       R33 R33 K47 ["MouseButton1Up"]
      246 NEWCLOSURE                       R34 P2
      247 CAPTURE                          VAL R3
      248 CAPTURE                          UPVAL U5
      249 CAPTURE                          VAL R0
      250 SETTABLE                         R34 R32 R33
      251 GETUPVAL                         R33 8
      252 GETTABLEKS                       R33 R33 K48 ["Tag"]
      254 LOADK                            R34 K49 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      255 SETTABLE                         R34 R32 R33
      256 DUPTABLE                         R33 K52 [{"ThumbnailContainer", "CellData"}]
      257 GETUPVAL                         R34 8
      258 GETTABLEKS                       R34 R34 K31 ["createElement"]
      260 GETUPVAL                         R35 13
      261 GETTABLEKS                       R35 R35 K32 ["View"]
      263 DUPTABLE                         R36 K53 [{"LayoutOrder", "ref", "tag"}]
      264 NAMECALL                         R37 R1 K54 ["getNextOrder"]
      266 CALL                             R37 1 1
      267 SETTABLEKS                       R37 R36 K33 ["LayoutOrder"]
      269 SETTABLEKS                       R17 R36 K35 ["ref"]
      271 LOADK                            R38 K55 ["fill size-full radius-small %*"]
      272 MOVE                             R40 R14
      273 NAMECALL                         R38 R38 K56 ["format"]
      275 CALL                             R38 2 1
      276 MOVE                             R37 R38
      277 SETTABLEKS                       R37 R36 K36 ["tag"]
      279 DUPTABLE                         R37 K61 [{"Thumbnail", "PackageLinkIcon", "AssetState", "AudioOverlay"}]
      280 GETUPVAL                         R38 8
      281 GETTABLEKS                       R38 R38 K31 ["createElement"]
      283 GETUPVAL                         R39 14
      284 DUPTABLE                         R40 K62 [{"AssetId", "AssetType"}]
      285 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      287 SETTABLEKS                       R7 R40 K3 ["AssetType"]
      289 CALL                             R38 2 1
      290 SETTABLEKS                       R38 R37 K57 ["Thumbnail"]
      292 MOVE                             R38 R9
      293 JUMPIFNOT                        R38 ; [+8]
      294 GETUPVAL                         R38 8
      295 GETTABLEKS                       R38 R38 K31 ["createElement"]
      297 GETUPVAL                         R39 13
      298 GETTABLEKS                       R39 R39 K63 ["Image"]
      300 DUPTABLE                         R40 K68 [{["ZIndex"] = 2, ["tag"] = "am-size-icon icon-packageLink anchor-bottom-right radius-small bg-over-media-0", ["testId"] = "package-link-icon"}]
      301 CALL                             R38 2 1
      302 SETTABLEKS                       R38 R37 K58 ["PackageLinkIcon"]
      304 GETUPVAL                         R39 15
      305 CALL                             R39 0 1
      306 JUMPIFNOT                        R39 ; [+18]
      307 GETUPVAL                         R39 5
      308 GETTABLEKS                       R39 R39 K6 ["ModerationStatus"]
      310 GETTABLEKS                       R39 R39 K69 ["Rejected"]
      312 JUMPIFNOTEQ                      R10 R39 ; [+12]
      314 GETUPVAL                         R38 8
      315 GETTABLEKS                       R38 R38 K31 ["createElement"]
      317 GETUPVAL                         R39 16
      318 DUPTABLE                         R40 K73 [{["AssetId"], ["AssetPath"], ["IsGrid"] = True}]
      319 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      321 SETTABLEKS                       R12 R40 K70 ["AssetPath"]
      323 CALL                             R38 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R38
      326 SETTABLEKS                       R38 R37 K59 ["AssetState"]
      328 GETUPVAL                         R39 5
      329 GETTABLEKS                       R39 R39 K3 ["AssetType"]
      331 GETTABLEKS                       R39 R39 K74 ["Audio"]
      333 JUMPIFNOTEQ                      R7 R39 ; [+14]
      335 GETUPVAL                         R38 8
      336 GETTABLEKS                       R38 R38 K31 ["createElement"]
      338 GETUPVAL                         R39 17
      339 DUPTABLE                         R40 K77 [{"AssetId", "IsHovered", "OnRightClick"}]
      340 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      342 SETTABLEKS                       R19 R40 K75 ["IsHovered"]
      344 SETTABLEKS                       R25 R40 K76 ["OnRightClick"]
      346 CALL                             R38 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R38
      349 SETTABLEKS                       R38 R37 K60 ["AudioOverlay"]
      351 CALL                             R34 3 1
      352 SETTABLEKS                       R34 R33 K50 ["ThumbnailContainer"]
      354 GETUPVAL                         R34 8
      355 GETTABLEKS                       R34 R34 K31 ["createElement"]
      357 GETUPVAL                         R35 13
      358 GETTABLEKS                       R35 R35 K32 ["View"]
      360 DUPTABLE                         R36 K79 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      361 NAMECALL                         R37 R1 K54 ["getNextOrder"]
      363 CALL                             R37 1 1
      364 SETTABLEKS                       R37 R36 K33 ["LayoutOrder"]
      366 DUPTABLE                         R37 K82 [{"NameTag", "TypeTag"}]
      367 JUMPIFNOT                        R5 ; [+24]
      368 GETUPVAL                         R38 8
      369 GETTABLEKS                       R38 R38 K31 ["createElement"]
      371 GETUPVAL                         R39 18
      372 DUPTABLE                         R40 K86 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      373 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      375 CALL                             R41 1 1
      376 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      378 SETTABLEKS                       R8 R40 K83 ["InitialText"]
      380 SETTABLEKS                       R7 R40 K84 ["ItemType"]
      382 GETTABLEKS                       R41 R0 K2 ["Cell"]
      384 SETTABLEKS                       R41 R40 K85 ["ItemPath"]
      386 GETTABLEKS                       R41 R0 K11 ["Size"]
      388 SETTABLEKS                       R41 R40 K11 ["Size"]
      390 CALL                             R38 2 1
      391 JUMP                             ; [+60]
      392 JUMPIFNOT                        R23 ; [+44]
      393 GETUPVAL                         R38 8
      394 GETTABLEKS                       R38 R38 K31 ["createElement"]
      396 GETUPVAL                         R39 13
      397 GETTABLEKS                       R39 R39 K87 ["Tooltip"]
      399 DUPTABLE                         R40 K90 [{"LayoutOrder", "title", "side"}]
      400 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      402 CALL                             R41 1 1
      403 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      405 SETTABLEKS                       R8 R40 K88 ["title"]
      407 GETUPVAL                         R41 13
      408 GETTABLEKS                       R41 R41 K91 ["Enums"]
      410 GETTABLEKS                       R41 R41 K92 ["PopoverSide"]
      412 GETTABLEKS                       R41 R41 K93 ["Bottom"]
      414 SETTABLEKS                       R41 R40 K89 ["side"]
      416 NEWTABLE                         R41 0 1
      418 GETUPVAL                         R42 8
      419 GETTABLEKS                       R42 R42 K31 ["createElement"]
      421 GETUPVAL                         R43 13
      422 GETTABLEKS                       R43 R43 K94 ["Text"]
      424 DUPTABLE                         R44 K96 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      425 NAMECALL                         R45 R1 K54 ["getNextOrder"]
      427 CALL                             R45 1 1
      428 SETTABLEKS                       R45 R44 K33 ["LayoutOrder"]
      430 SETTABLEKS                       R8 R44 K94 ["Text"]
      432 CALL                             R42 2 -1
      433 SETLIST                          R41 R42 -1 [1]
      435 CALL                             R38 3 1
      436 JUMP                             ; [+15]
      437 GETUPVAL                         R38 8
      438 GETTABLEKS                       R38 R38 K31 ["createElement"]
      440 GETUPVAL                         R39 13
      441 GETTABLEKS                       R39 R39 K94 ["Text"]
      443 DUPTABLE                         R40 K96 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      444 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      446 CALL                             R41 1 1
      447 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      449 SETTABLEKS                       R8 R40 K94 ["Text"]
      451 CALL                             R38 2 1
      452 SETTABLEKS                       R38 R37 K80 ["NameTag"]
      454 GETUPVAL                         R38 8
      455 GETTABLEKS                       R38 R38 K31 ["createElement"]
      457 GETUPVAL                         R39 13
      458 GETTABLEKS                       R39 R39 K94 ["Text"]
      460 DUPTABLE                         R40 K98 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      461 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      463 CALL                             R41 1 1
      464 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      466 LOADK                            R43 K3 ["AssetType"]
      467 MOVE                             R44 R7
      468 NAMECALL                         R41 R2 K99 ["getText"]
      470 CALL                             R41 3 1
      471 SETTABLEKS                       R41 R40 K94 ["Text"]
      473 CALL                             R38 2 1
      474 SETTABLEKS                       R38 R37 K81 ["TypeTag"]
      476 CALL                             R34 3 1
      477 SETTABLEKS                       R34 R33 K51 ["CellData"]
      479 CALL                             R30 3 1
      480 SETTABLEKS                       R30 R29 K41 ["InputHandler"]
      482 CALL                             R26 3 -1
      483 RETURN                           R26 -1

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
       40 GETTABLEKS                       R7 R7 K15 ["AudioPreviewOverlay"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K13 ["Components"]
       71 GETTABLEKS                       R10 R10 K14 ["Shared"]
       73 GETTABLEKS                       R10 R10 K18 ["AssetState"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K19 ["Controllers"]
       82 GETTABLEKS                       R11 R11 K20 ["Input"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K12 ["Src"]
       89 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       91 GETTABLEKS                       R12 R12 K21 ["ItemsController"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K12 ["Src"]
       98 GETTABLEKS                       R13 R13 K22 ["Hooks"]
      100 GETTABLEKS                       R13 R13 K23 ["useContextMenu"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K12 ["Src"]
      107 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      109 GETTABLEKS                       R14 R14 K24 ["useIsEditItem"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K12 ["Src"]
      116 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      118 GETTABLEKS                       R15 R15 K25 ["useItemHovered"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K12 ["Src"]
      125 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      127 GETTABLEKS                       R16 R16 K26 ["useItemDragHovered"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K12 ["Src"]
      134 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      136 GETTABLEKS                       R17 R17 K27 ["useItemSelection"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K12 ["Src"]
      143 GETTABLEKS                       R18 R18 K28 ["Types"]
      145 CALL                             R17 1 1
      146 GETTABLEKS                       R18 R3 K29 ["Util"]
      148 GETTABLEKS                       R18 R18 K30 ["LayoutOrderIterator"]
      150 GETTABLEKS                       R19 R3 K29 ["Util"]
      152 GETTABLEKS                       R19 R19 K31 ["GetTextSize"]
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R21 R0 K12 ["Src"]
      158 GETTABLEKS                       R21 R21 K32 ["Resources"]
      160 GETTABLEKS                       R21 R21 K33 ["PluginStyles"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R22 R0 K12 ["Src"]
      167 GETTABLEKS                       R22 R22 K34 ["Flags"]
      169 GETTABLEKS                       R22 R22 K35 ["getFFlagAmrUseAssetStates"]
      171 CALL                             R21 1 1
      172 DUPCLOSURE                       R22 K36 [PROTO_3]
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R7
      192 RETURN                           R22 1
