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
      271 LOADK                            R37 K55 ["fill size-full radius-small %*"]
      272 MOVE                             R39 R14
      273 NAMECALL                         R37 R37 K56 ["format"]
      275 CALL                             R37 2 1
      276 SETTABLEKS                       R37 R36 K36 ["tag"]
      278 DUPTABLE                         R37 K61 [{"Thumbnail", "PackageLinkIcon", "AssetState", "AudioOverlay"}]
      279 GETUPVAL                         R38 8
      280 GETTABLEKS                       R38 R38 K31 ["createElement"]
      282 GETUPVAL                         R39 14
      283 DUPTABLE                         R40 K62 [{"AssetId", "AssetType"}]
      284 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      286 SETTABLEKS                       R7 R40 K3 ["AssetType"]
      288 CALL                             R38 2 1
      289 SETTABLEKS                       R38 R37 K57 ["Thumbnail"]
      291 JUMPIFNOT                        R9 ; [+7]
      292 GETUPVAL                         R38 8
      293 GETTABLEKS                       R38 R38 K31 ["createElement"]
      295 GETUPVAL                         R39 15
      296 DUPTABLE                         R40 K65 [{["IsGrid"] = True}]
      297 CALL                             R38 2 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R38
      300 SETTABLEKS                       R38 R37 K58 ["PackageLinkIcon"]
      302 GETUPVAL                         R39 16
      303 CALL                             R39 0 1
      304 JUMPIFNOT                        R39 ; [+18]
      305 GETUPVAL                         R39 5
      306 GETTABLEKS                       R39 R39 K6 ["ModerationStatus"]
      308 GETTABLEKS                       R39 R39 K66 ["Rejected"]
      310 JUMPIFNOTEQ                      R10 R39 ; [+12]
      312 GETUPVAL                         R38 8
      313 GETTABLEKS                       R38 R38 K31 ["createElement"]
      315 GETUPVAL                         R39 17
      316 DUPTABLE                         R40 K68 [{["AssetId"], ["AssetPath"], ["IsGrid"] = True}]
      317 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      319 SETTABLEKS                       R12 R40 K67 ["AssetPath"]
      321 CALL                             R38 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R38
      324 SETTABLEKS                       R38 R37 K59 ["AssetState"]
      326 GETUPVAL                         R39 5
      327 GETTABLEKS                       R39 R39 K3 ["AssetType"]
      329 GETTABLEKS                       R39 R39 K69 ["Audio"]
      331 JUMPIFNOTEQ                      R7 R39 ; [+14]
      333 GETUPVAL                         R38 8
      334 GETTABLEKS                       R38 R38 K31 ["createElement"]
      336 GETUPVAL                         R39 18
      337 DUPTABLE                         R40 K72 [{"AssetId", "IsHovered", "OnRightClick"}]
      338 SETTABLEKS                       R6 R40 K29 ["AssetId"]
      340 SETTABLEKS                       R19 R40 K70 ["IsHovered"]
      342 SETTABLEKS                       R25 R40 K71 ["OnRightClick"]
      344 CALL                             R38 2 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R38
      347 SETTABLEKS                       R38 R37 K60 ["AudioOverlay"]
      349 CALL                             R34 3 1
      350 SETTABLEKS                       R34 R33 K50 ["ThumbnailContainer"]
      352 GETUPVAL                         R34 8
      353 GETTABLEKS                       R34 R34 K31 ["createElement"]
      355 GETUPVAL                         R35 13
      356 GETTABLEKS                       R35 R35 K32 ["View"]
      358 DUPTABLE                         R36 K74 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      359 NAMECALL                         R37 R1 K54 ["getNextOrder"]
      361 CALL                             R37 1 1
      362 SETTABLEKS                       R37 R36 K33 ["LayoutOrder"]
      364 DUPTABLE                         R37 K77 [{"NameTag", "TypeTag"}]
      365 JUMPIFNOT                        R5 ; [+24]
      366 GETUPVAL                         R38 8
      367 GETTABLEKS                       R38 R38 K31 ["createElement"]
      369 GETUPVAL                         R39 19
      370 DUPTABLE                         R40 K81 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      371 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      373 CALL                             R41 1 1
      374 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      376 SETTABLEKS                       R8 R40 K78 ["InitialText"]
      378 SETTABLEKS                       R7 R40 K79 ["ItemType"]
      380 GETTABLEKS                       R41 R0 K2 ["Cell"]
      382 SETTABLEKS                       R41 R40 K80 ["ItemPath"]
      384 GETTABLEKS                       R41 R0 K11 ["Size"]
      386 SETTABLEKS                       R41 R40 K11 ["Size"]
      388 CALL                             R38 2 1
      389 JUMP                             ; [+60]
      390 JUMPIFNOT                        R23 ; [+44]
      391 GETUPVAL                         R38 8
      392 GETTABLEKS                       R38 R38 K31 ["createElement"]
      394 GETUPVAL                         R39 13
      395 GETTABLEKS                       R39 R39 K82 ["Tooltip"]
      397 DUPTABLE                         R40 K85 [{"LayoutOrder", "title", "side"}]
      398 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      400 CALL                             R41 1 1
      401 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      403 SETTABLEKS                       R8 R40 K83 ["title"]
      405 GETUPVAL                         R41 13
      406 GETTABLEKS                       R41 R41 K86 ["Enums"]
      408 GETTABLEKS                       R41 R41 K87 ["PopoverSide"]
      410 GETTABLEKS                       R41 R41 K88 ["Bottom"]
      412 SETTABLEKS                       R41 R40 K84 ["side"]
      414 NEWTABLE                         R41 0 1
      416 GETUPVAL                         R42 8
      417 GETTABLEKS                       R42 R42 K31 ["createElement"]
      419 GETUPVAL                         R43 13
      420 GETTABLEKS                       R43 R43 K89 ["Text"]
      422 DUPTABLE                         R44 K91 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      423 NAMECALL                         R45 R1 K54 ["getNextOrder"]
      425 CALL                             R45 1 1
      426 SETTABLEKS                       R45 R44 K33 ["LayoutOrder"]
      428 SETTABLEKS                       R8 R44 K89 ["Text"]
      430 CALL                             R42 2 -1
      431 SETLIST                          R41 R42 -1 [1]
      433 CALL                             R38 3 1
      434 JUMP                             ; [+15]
      435 GETUPVAL                         R38 8
      436 GETTABLEKS                       R38 R38 K31 ["createElement"]
      438 GETUPVAL                         R39 13
      439 GETTABLEKS                       R39 R39 K89 ["Text"]
      441 DUPTABLE                         R40 K91 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      442 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      444 CALL                             R41 1 1
      445 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      447 SETTABLEKS                       R8 R40 K89 ["Text"]
      449 CALL                             R38 2 1
      450 SETTABLEKS                       R38 R37 K75 ["NameTag"]
      452 GETUPVAL                         R38 8
      453 GETTABLEKS                       R38 R38 K31 ["createElement"]
      455 GETUPVAL                         R39 13
      456 GETTABLEKS                       R39 R39 K89 ["Text"]
      458 DUPTABLE                         R40 K93 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      459 NAMECALL                         R41 R1 K54 ["getNextOrder"]
      461 CALL                             R41 1 1
      462 SETTABLEKS                       R41 R40 K33 ["LayoutOrder"]
      464 LOADK                            R43 K3 ["AssetType"]
      465 MOVE                             R44 R7
      466 NAMECALL                         R41 R2 K94 ["getText"]
      468 CALL                             R41 3 1
      469 SETTABLEKS                       R41 R40 K89 ["Text"]
      471 CALL                             R38 2 1
      472 SETTABLEKS                       R38 R37 K76 ["TypeTag"]
      474 CALL                             R34 3 1
      475 SETTABLEKS                       R34 R33 K51 ["CellData"]
      477 CALL                             R30 3 1
      478 SETTABLEKS                       R30 R29 K41 ["InputHandler"]
      480 CALL                             R26 3 -1
      481 RETURN                           R26 -1

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
       73 GETTABLEKS                       R10 R10 K18 ["PackageLinkIcon"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K13 ["Components"]
       82 GETTABLEKS                       R11 R11 K14 ["Shared"]
       84 GETTABLEKS                       R11 R11 K19 ["AssetState"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       93 GETTABLEKS                       R12 R12 K21 ["Input"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K12 ["Src"]
      100 GETTABLEKS                       R13 R13 K20 ["Controllers"]
      102 GETTABLEKS                       R13 R13 K22 ["ItemsController"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K12 ["Src"]
      109 GETTABLEKS                       R14 R14 K23 ["Hooks"]
      111 GETTABLEKS                       R14 R14 K24 ["useContextMenu"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K12 ["Src"]
      118 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      120 GETTABLEKS                       R15 R15 K25 ["useIsEditItem"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K12 ["Src"]
      127 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      129 GETTABLEKS                       R16 R16 K26 ["useItemHovered"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K12 ["Src"]
      136 GETTABLEKS                       R17 R17 K23 ["Hooks"]
      138 GETTABLEKS                       R17 R17 K27 ["useItemDragHovered"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K12 ["Src"]
      145 GETTABLEKS                       R18 R18 K23 ["Hooks"]
      147 GETTABLEKS                       R18 R18 K28 ["useItemSelection"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K12 ["Src"]
      154 GETTABLEKS                       R19 R19 K29 ["Types"]
      156 CALL                             R18 1 1
      157 GETTABLEKS                       R19 R3 K30 ["Util"]
      159 GETTABLEKS                       R19 R19 K31 ["LayoutOrderIterator"]
      161 GETTABLEKS                       R20 R3 K30 ["Util"]
      163 GETTABLEKS                       R20 R20 K32 ["GetTextSize"]
      165 GETIMPORT                        R21 K5 [require]
      167 GETTABLEKS                       R22 R0 K12 ["Src"]
      169 GETTABLEKS                       R22 R22 K33 ["Resources"]
      171 GETTABLEKS                       R22 R22 K34 ["PluginStyles"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R23 R0 K12 ["Src"]
      178 GETTABLEKS                       R23 R23 K35 ["Flags"]
      180 GETTABLEKS                       R23 R23 K36 ["getFFlagAmrUseAssetStates"]
      182 CALL                             R22 1 1
      183 DUPCLOSURE                       R23 K37 [PROTO_3]
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R7
      204 RETURN                           R23 1
