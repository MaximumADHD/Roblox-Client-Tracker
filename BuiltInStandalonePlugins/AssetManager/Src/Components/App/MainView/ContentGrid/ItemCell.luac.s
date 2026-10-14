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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["Text"], ["ref"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
        7 SETTABLEKS                       R0 R3 K2 ["LayoutOrder"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K1 ["Text"]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K3 ["ref"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
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
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K8 ["DraftStatus"]
       36 GETTABLEKS                       R11 R11 K9 ["Unspecified"]
       38 NAMECALL                         R12 R4 K10 ["getItemsCache"]
       40 CALL                             R12 1 1
       41 GETTABLEKS                       R13 R0 K2 ["Cell"]
       43 GETUPVAL                         R14 6
       44 CALL                             R14 0 1
       45 LOADK                            R15 K5 [""]
       46 GETTABLEKS                       R17 R0 K2 ["Cell"]
       48 GETTABLE                         R16 R14 R17
       49 JUMPIFNOT                        R16 ; [+2]
       50 LOADK                            R15 K11 ["bg-shift-200"]
       51 JUMP                             ; [+1]
       52 LOADK                            R15 K12 ["bg-paper"]
       53 GETTABLEKS                       R17 R0 K13 ["Size"]
       55 GETTABLEKS                       R17 R17 K14 ["X"]
       57 GETTABLEKS                       R17 R17 K15 ["Offset"]
       59 GETUPVAL                         R19 7
       60 LOADK                            R21 K17 ["CellTagPadding"]
       61 NAMECALL                         R19 R19 K18 ["GetAttribute"]
       63 CALL                             R19 2 1
       64 MULK                             R18 R19 K16 [2]
       65 SUB                              R16 R17 R18
       66 GETUPVAL                         R17 8
       67 GETTABLEKS                       R17 R17 K19 ["useRef"]
       69 LOADNIL                          R18
       70 CALL                             R17 1 1
       71 GETUPVAL                         R18 8
       72 GETTABLEKS                       R18 R18 K19 ["useRef"]
       74 LOADNIL                          R19
       75 CALL                             R18 1 1
       76 GETUPVAL                         R19 8
       77 GETTABLEKS                       R19 R19 K20 ["useState"]
       79 LOADNIL                          R20
       80 CALL                             R19 1 2
       81 GETUPVAL                         R21 9
       82 MOVE                             R22 R17
       83 CALL                             R21 1 1
       84 GETUPVAL                         R22 9
       85 MOVE                             R23 R18
       86 CALL                             R22 1 1
       87 GETUPVAL                         R23 10
       88 MOVE                             R24 R21
       89 GETTABLEKS                       R25 R0 K2 ["Cell"]
       91 CALL                             R23 2 1
       92 GETUPVAL                         R24 11
       93 GETUPVAL                         R25 5
       94 GETTABLEKS                       R25 R25 K21 ["MenuContext"]
       96 GETTABLEKS                       R25 R25 K22 ["Asset"]
       98 DUPTABLE                         R26 K25 [{"Path", "Index"}]
       99 GETTABLEKS                       R27 R0 K2 ["Cell"]
      101 SETTABLEKS                       R27 R26 K23 ["Path"]
      103 GETTABLEKS                       R27 R0 K26 ["Key"]
      105 SETTABLEKS                       R27 R26 K24 ["Index"]
      107 CALL                             R24 2 1
      108 GETTABLEKS                       R25 R0 K27 ["ParentScope"]
      110 GETTABLEKS                       R28 R25 K28 ["Uid"]
      112 MOVE                             R29 R13
      113 GETUPVAL                         R30 5
      114 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      116 GETTABLEKS                       R30 R30 K3 ["AssetType"]
      118 NAMECALL                         R26 R12 K30 ["getItemField"]
      120 CALL                             R26 4 1
      121 MOVE                             R7 R26
      122 GETTABLEKS                       R28 R25 K28 ["Uid"]
      124 MOVE                             R29 R13
      125 GETUPVAL                         R30 5
      126 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      128 GETTABLEKS                       R30 R30 K31 ["DisplayName"]
      130 NAMECALL                         R26 R12 K30 ["getItemField"]
      132 CALL                             R26 4 1
      133 MOVE                             R8 R26
      134 GETTABLEKS                       R28 R25 K28 ["Uid"]
      136 MOVE                             R29 R13
      137 GETUPVAL                         R30 5
      138 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      140 GETTABLEKS                       R30 R30 K32 ["AssetId"]
      142 NAMECALL                         R26 R12 K30 ["getItemField"]
      144 CALL                             R26 4 1
      145 MOVE                             R6 R26
      146 JUMPIFNOT                        R6 ; [+2]
      147 JUMPIFNOT                        R7 ; [+1]
      148 JUMPIF                           R8 ; [+3]
      149 LOADNIL                          R26
      150 CLOSEUPVALS                      R8
      151 RETURN                           R26 1
      152 GETTABLEKS                       R28 R25 K28 ["Uid"]
      154 MOVE                             R29 R13
      155 GETUPVAL                         R30 5
      156 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      158 GETTABLEKS                       R30 R30 K33 ["IsPackage"]
      160 NAMECALL                         R26 R12 K30 ["getItemField"]
      162 CALL                             R26 4 1
      163 MOVE                             R9 R26
      164 GETTABLEKS                       R28 R25 K28 ["Uid"]
      166 MOVE                             R29 R13
      167 GETUPVAL                         R30 5
      168 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      170 GETTABLEKS                       R30 R30 K6 ["ModerationStatus"]
      172 NAMECALL                         R26 R12 K30 ["getItemField"]
      174 CALL                             R26 4 1
      175 MOVE                             R10 R26
      176 GETUPVAL                         R26 12
      177 CALL                             R26 0 1
      178 JUMPIFNOT                        R26 ; [+12]
      179 GETTABLEKS                       R28 R25 K28 ["Uid"]
      181 MOVE                             R29 R13
      182 GETUPVAL                         R30 5
      183 GETTABLEKS                       R30 R30 K29 ["AssetInfoField"]
      185 GETTABLEKS                       R30 R30 K8 ["DraftStatus"]
      187 NAMECALL                         R26 R12 K30 ["getItemField"]
      189 CALL                             R26 4 1
      190 MOVE                             R11 R26
      191 GETUPVAL                         R27 5
      192 GETTABLEKS                       R27 R27 K6 ["ModerationStatus"]
      194 GETTABLEKS                       R27 R27 K34 ["Rejected"]
      196 JUMPIFEQ                         R10 R27 ; [+2]
      198 LOADB                            R26 0 +1
      199 LOADB                            R26 1
      200 GETUPVAL                         R28 5
      201 GETTABLEKS                       R28 R28 K8 ["DraftStatus"]
      203 GETTABLEKS                       R28 R28 K35 ["Draft"]
      205 JUMPIFEQ                         R11 R28 ; [+2]
      207 LOADB                            R27 0 +1
      208 LOADB                            R27 1
      209 GETUPVAL                         R29 13
      210 MOVE                             R30 R8
      211 CALL                             R29 1 1
      212 GETTABLEKS                       R29 R29 K14 ["X"]
      214 JUMPIFLT                         R16 R29 ; [+2]
      216 LOADB                            R28 0 +1
      217 LOADB                            R28 1
      218 GETTABLEKS                       R30 R0 K2 ["Cell"]
      220 GETTABLE                         R29 R14 R30
      221 NEWCLOSURE                       R30 P0
      222 CAPTURE                          VAL R3
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R24
      226 NEWCLOSURE                       R31 P1
      227 CAPTURE                          UPVAL U8
      228 CAPTURE                          UPVAL U14
      229 CAPTURE                          REF R8
      230 CAPTURE                          VAL R20
      231 GETUPVAL                         R32 8
      232 GETTABLEKS                       R32 R32 K36 ["createElement"]
      234 GETUPVAL                         R33 14
      235 GETTABLEKS                       R33 R33 K37 ["View"]
      237 DUPTABLE                         R34 K42 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      238 GETTABLEKS                       R35 R0 K26 ["Key"]
      240 SETTABLEKS                       R35 R34 K38 ["LayoutOrder"]
      242 GETTABLEKS                       R35 R0 K13 ["Size"]
      244 SETTABLEKS                       R35 R34 K13 ["Size"]
      246 GETTABLEKS                       R35 R0 K39 ["Position"]
      248 SETTABLEKS                       R35 R34 K39 ["Position"]
      250 SETTABLEKS                       R17 R34 K40 ["ref"]
      252 NEWTABLE                         R35 4 0
      254 LOADB                            R36 1
      255 SETTABLEKS                       R36 R35 K43 ["align-x-center align-y-top padding-xsmall radius-medium"]
      257 SETTABLEKS                       R29 R35 K44 ["bg-action-soft-emphasis"]
      259 NOT                              R37 R29
      260 AND                              R36 R37 R21
      261 SETTABLEKS                       R36 R35 K11 ["bg-shift-200"]
      263 SETTABLEKS                       R23 R35 K45 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      265 SETTABLEKS                       R35 R34 K41 ["tag"]
      267 DUPTABLE                         R35 K48 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      268 GETUPVAL                         R36 8
      269 GETTABLEKS                       R36 R36 K36 ["createElement"]
      271 LOADK                            R37 K49 ["ImageButton"]
      272 NEWTABLE                         R38 4 0
      274 GETUPVAL                         R39 8
      275 GETTABLEKS                       R39 R39 K50 ["Event"]
      277 GETTABLEKS                       R39 R39 K51 ["MouseButton2Click"]
      279 SETTABLE                         R30 R38 R39
      280 GETUPVAL                         R39 8
      281 GETTABLEKS                       R39 R39 K50 ["Event"]
      283 GETTABLEKS                       R39 R39 K52 ["MouseButton1Down"]
      285 NEWCLOSURE                       R40 P2
      286 CAPTURE                          VAL R3
      287 CAPTURE                          UPVAL U5
      288 CAPTURE                          VAL R0
      289 SETTABLE                         R40 R38 R39
      290 GETUPVAL                         R39 8
      291 GETTABLEKS                       R39 R39 K50 ["Event"]
      293 GETTABLEKS                       R39 R39 K53 ["MouseButton1Up"]
      295 NEWCLOSURE                       R40 P3
      296 CAPTURE                          VAL R3
      297 CAPTURE                          UPVAL U5
      298 CAPTURE                          VAL R0
      299 SETTABLE                         R40 R38 R39
      300 GETUPVAL                         R39 8
      301 GETTABLEKS                       R39 R39 K54 ["Tag"]
      303 LOADK                            R40 K55 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      304 SETTABLE                         R40 R38 R39
      305 DUPTABLE                         R39 K58 [{"ThumbnailContainer", "CellData"}]
      306 GETUPVAL                         R40 8
      307 GETTABLEKS                       R40 R40 K36 ["createElement"]
      309 GETUPVAL                         R41 14
      310 GETTABLEKS                       R41 R41 K37 ["View"]
      312 DUPTABLE                         R42 K59 [{"LayoutOrder", "ref", "tag"}]
      313 NAMECALL                         R43 R1 K60 ["getNextOrder"]
      315 CALL                             R43 1 1
      316 SETTABLEKS                       R43 R42 K38 ["LayoutOrder"]
      318 SETTABLEKS                       R18 R42 K40 ["ref"]
      320 LOADK                            R43 K61 ["fill size-full radius-small %*"]
      321 MOVE                             R45 R15
      322 NAMECALL                         R43 R43 K62 ["format"]
      324 CALL                             R43 2 1
      325 SETTABLEKS                       R43 R42 K41 ["tag"]
      327 DUPTABLE                         R43 K67 [{"Thumbnail", "PackageLinkIcon", "AssetStatus", "AudioOverlay"}]
      328 GETUPVAL                         R44 8
      329 GETTABLEKS                       R44 R44 K36 ["createElement"]
      331 GETUPVAL                         R45 15
      332 DUPTABLE                         R46 K68 [{"AssetId", "AssetType"}]
      333 SETTABLEKS                       R6 R46 K32 ["AssetId"]
      335 SETTABLEKS                       R7 R46 K3 ["AssetType"]
      337 CALL                             R44 2 1
      338 SETTABLEKS                       R44 R43 K63 ["Thumbnail"]
      340 JUMPIFNOT                        R9 ; [+7]
      341 GETUPVAL                         R44 8
      342 GETTABLEKS                       R44 R44 K36 ["createElement"]
      344 GETUPVAL                         R45 16
      345 DUPTABLE                         R46 K71 [{["IsGrid"] = True}]
      346 CALL                             R44 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R44
      349 SETTABLEKS                       R44 R43 K64 ["PackageLinkIcon"]
      351 JUMPIF                           R26 ; [+1]
      352 JUMPIFNOT                        R27 ; [+15]
      353 GETUPVAL                         R44 8
      354 GETTABLEKS                       R44 R44 K36 ["createElement"]
      356 GETUPVAL                         R45 17
      357 DUPTABLE                         R46 K75 [{["AssetId"], ["AssetPath"], ["IsModerated"], ["IsDraft"], ["IsGrid"] = True}]
      358 SETTABLEKS                       R6 R46 K32 ["AssetId"]
      360 SETTABLEKS                       R13 R46 K72 ["AssetPath"]
      362 SETTABLEKS                       R26 R46 K73 ["IsModerated"]
      364 SETTABLEKS                       R27 R46 K74 ["IsDraft"]
      366 CALL                             R44 2 1
      367 JUMP                             ; [+1]
      368 LOADNIL                          R44
      369 SETTABLEKS                       R44 R43 K65 ["AssetStatus"]
      371 GETUPVAL                         R45 18
      372 MOVE                             R46 R7
      373 MOVE                             R47 R10
      374 CALL                             R45 2 1
      375 JUMPIFNOT                        R45 ; [+13]
      376 GETUPVAL                         R44 8
      377 GETTABLEKS                       R44 R44 K36 ["createElement"]
      379 GETUPVAL                         R45 19
      380 DUPTABLE                         R46 K78 [{"AssetId", "IsHovered", "OnRightClick"}]
      381 SETTABLEKS                       R6 R46 K32 ["AssetId"]
      383 SETTABLEKS                       R22 R46 K76 ["IsHovered"]
      385 SETTABLEKS                       R30 R46 K77 ["OnRightClick"]
      387 CALL                             R44 2 1
      388 JUMP                             ; [+1]
      389 LOADNIL                          R44
      390 SETTABLEKS                       R44 R43 K66 ["AudioOverlay"]
      392 CALL                             R40 3 1
      393 SETTABLEKS                       R40 R39 K56 ["ThumbnailContainer"]
      395 GETUPVAL                         R40 8
      396 GETTABLEKS                       R40 R40 K36 ["createElement"]
      398 GETUPVAL                         R41 14
      399 GETTABLEKS                       R41 R41 K37 ["View"]
      401 DUPTABLE                         R42 K80 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      402 NAMECALL                         R43 R1 K60 ["getNextOrder"]
      404 CALL                             R43 1 1
      405 SETTABLEKS                       R43 R42 K38 ["LayoutOrder"]
      407 DUPTABLE                         R43 K83 [{"NameTag", "TypeTag"}]
      408 JUMPIFNOT                        R5 ; [+24]
      409 GETUPVAL                         R44 8
      410 GETTABLEKS                       R44 R44 K36 ["createElement"]
      412 GETUPVAL                         R45 20
      413 DUPTABLE                         R46 K87 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      414 NAMECALL                         R47 R1 K60 ["getNextOrder"]
      416 CALL                             R47 1 1
      417 SETTABLEKS                       R47 R46 K38 ["LayoutOrder"]
      419 SETTABLEKS                       R8 R46 K84 ["InitialText"]
      421 SETTABLEKS                       R7 R46 K85 ["ItemType"]
      423 GETTABLEKS                       R47 R0 K2 ["Cell"]
      425 SETTABLEKS                       R47 R46 K86 ["ItemPath"]
      427 GETTABLEKS                       R47 R0 K13 ["Size"]
      429 SETTABLEKS                       R47 R46 K13 ["Size"]
      431 CALL                             R44 2 1
      432 JUMP                             ; [+50]
      433 JUMPIFNOT                        R28 ; [+31]
      434 GETUPVAL                         R44 8
      435 GETTABLEKS                       R44 R44 K36 ["createElement"]
      437 GETUPVAL                         R45 14
      438 GETTABLEKS                       R45 R45 K88 ["Tooltip"]
      440 DUPTABLE                         R46 K91 [{"LayoutOrder", "title", "side"}]
      441 NAMECALL                         R47 R1 K60 ["getNextOrder"]
      443 CALL                             R47 1 1
      444 SETTABLEKS                       R47 R46 K38 ["LayoutOrder"]
      446 SETTABLEKS                       R8 R46 K89 ["title"]
      448 GETUPVAL                         R47 14
      449 GETTABLEKS                       R47 R47 K92 ["Enums"]
      451 GETTABLEKS                       R47 R47 K93 ["PopoverSide"]
      453 GETTABLEKS                       R47 R47 K94 ["Bottom"]
      455 SETTABLEKS                       R47 R46 K90 ["side"]
      457 NEWTABLE                         R47 0 1
      459 MOVE                             R48 R31
      460 CALL                             R48 0 -1
      461 SETLIST                          R47 R48 -1 [1]
      463 CALL                             R44 3 1
      464 JUMP                             ; [+18]
      465 NAMECALL                         R45 R1 K60 ["getNextOrder"]
      467 CALL                             R45 1 1
      468 GETUPVAL                         R46 8
      469 GETTABLEKS                       R46 R46 K36 ["createElement"]
      471 GETUPVAL                         R47 14
      472 GETTABLEKS                       R47 R47 K95 ["Text"]
      474 DUPTABLE                         R48 K97 [{["LayoutOrder"], ["Text"], ["ref"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      475 SETTABLEKS                       R45 R48 K38 ["LayoutOrder"]
      477 SETTABLEKS                       R8 R48 K95 ["Text"]
      479 SETTABLEKS                       R20 R48 K40 ["ref"]
      481 CALL                             R46 2 1
      482 MOVE                             R44 R46
      483 SETTABLEKS                       R44 R43 K81 ["NameTag"]
      485 GETUPVAL                         R44 8
      486 GETTABLEKS                       R44 R44 K36 ["createElement"]
      488 GETUPVAL                         R45 14
      489 GETTABLEKS                       R45 R45 K95 ["Text"]
      491 DUPTABLE                         R46 K99 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      492 NAMECALL                         R47 R1 K60 ["getNextOrder"]
      494 CALL                             R47 1 1
      495 SETTABLEKS                       R47 R46 K38 ["LayoutOrder"]
      497 LOADK                            R49 K3 ["AssetType"]
      498 MOVE                             R50 R7
      499 NAMECALL                         R47 R2 K100 ["getText"]
      501 CALL                             R47 3 1
      502 SETTABLEKS                       R47 R46 K95 ["Text"]
      504 CALL                             R44 2 1
      505 SETTABLEKS                       R44 R43 K82 ["TypeTag"]
      507 CALL                             R40 3 1
      508 SETTABLEKS                       R40 R39 K57 ["CellData"]
      510 CALL                             R36 3 1
      511 SETTABLEKS                       R36 R35 K46 ["InputHandler"]
      513 GETTABLEKS                       R37 R0 K26 ["Key"]
      515 JUMPIFNOTEQKN                    R37 K101 [1] ; [+42]
      517 GETUPVAL                         R36 8
      518 GETTABLEKS                       R36 R36 K36 ["createElement"]
      520 GETUPVAL                         R37 21
      521 DUPTABLE                         R38 K106 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      522 GETUPVAL                         R39 5
      523 GETTABLEKS                       R39 R39 K107 ["TutorialId"]
      525 GETTABLEKS                       R39 R39 K108 ["Intro"]
      527 SETTABLEKS                       R39 R38 K102 ["tutorialId"]
      529 GETUPVAL                         R39 5
      530 GETTABLEKS                       R39 R39 K109 ["TutorialStepId"]
      532 GETTABLEKS                       R39 R39 K110 ["InsertOrImport"]
      534 SETTABLEKS                       R39 R38 K103 ["stepId"]
      536 SETTABLEKS                       R19 R38 K104 ["anchorInstance"]
      538 GETUPVAL                         R39 14
      539 GETTABLEKS                       R39 R39 K92 ["Enums"]
      541 GETTABLEKS                       R39 R39 K93 ["PopoverSide"]
      543 GETTABLEKS                       R39 R39 K94 ["Bottom"]
      545 SETTABLEKS                       R39 R38 K90 ["side"]
      547 GETUPVAL                         R39 14
      548 GETTABLEKS                       R39 R39 K92 ["Enums"]
      550 GETTABLEKS                       R39 R39 K111 ["PopoverAlign"]
      552 GETTABLEKS                       R39 R39 K112 ["Center"]
      554 SETTABLEKS                       R39 R38 K105 ["align"]
      556 CALL                             R36 2 1
      557 JUMP                             ; [+1]
      558 LOADNIL                          R36
      559 SETTABLEKS                       R36 R35 K47 ["InsertOrImportTutorialTooltip"]
      561 CALL                             R32 3 -1
      562 CLOSEUPVALS                      R8
      563 RETURN                           R32 -1

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
       84 GETTABLEKS                       R11 R11 K19 ["AssetStatus"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K13 ["Components"]
       93 GETTABLEKS                       R12 R12 K14 ["Shared"]
       95 GETTABLEKS                       R12 R12 K20 ["TutorialTooltip"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K12 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Controllers"]
      104 GETTABLEKS                       R13 R13 K22 ["Input"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K12 ["Src"]
      111 GETTABLEKS                       R14 R14 K21 ["Controllers"]
      113 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K12 ["Src"]
      120 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K25 ["useContextMenu"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Src"]
      129 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K26 ["useIsEditItem"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Src"]
      138 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      140 GETTABLEKS                       R17 R17 K27 ["useItemHovered"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K12 ["Src"]
      147 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      149 GETTABLEKS                       R18 R18 K28 ["useItemDragHovered"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K12 ["Src"]
      156 GETTABLEKS                       R19 R19 K24 ["Hooks"]
      158 GETTABLEKS                       R19 R19 K29 ["useItemSelection"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K12 ["Src"]
      165 GETTABLEKS                       R20 R20 K30 ["Types"]
      167 CALL                             R19 1 1
      168 GETIMPORT                        R20 K5 [require]
      170 GETTABLEKS                       R21 R0 K12 ["Src"]
      172 GETTABLEKS                       R21 R21 K31 ["Util"]
      174 GETTABLEKS                       R21 R21 K32 ["isAudioPreviewable"]
      176 CALL                             R20 1 1
      177 GETTABLEKS                       R21 R3 K31 ["Util"]
      179 GETTABLEKS                       R21 R21 K33 ["LayoutOrderIterator"]
      181 GETTABLEKS                       R22 R3 K31 ["Util"]
      183 GETTABLEKS                       R22 R22 K34 ["GetTextSize"]
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K12 ["Src"]
      189 GETTABLEKS                       R24 R24 K35 ["Resources"]
      191 GETTABLEKS                       R24 R24 K36 ["PluginStyles"]
      193 CALL                             R23 1 1
      194 GETIMPORT                        R24 K5 [require]
      196 GETTABLEKS                       R25 R0 K12 ["Src"]
      198 GETTABLEKS                       R25 R25 K37 ["Flags"]
      200 GETTABLEKS                       R25 R25 K38 ["getFFlagAmrEnableDraftStatus"]
      202 CALL                             R24 1 1
      203 DUPCLOSURE                       R25 K39 [PROTO_4]
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R11
      226 RETURN                           R25 1
