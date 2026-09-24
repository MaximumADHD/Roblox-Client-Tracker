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
       71 GETUPVAL                         R18 8
       72 GETTABLEKS                       R18 R18 K18 ["useState"]
       74 LOADNIL                          R19
       75 CALL                             R18 1 2
       76 GETUPVAL                         R20 9
       77 MOVE                             R21 R16
       78 CALL                             R20 1 1
       79 GETUPVAL                         R21 9
       80 MOVE                             R22 R17
       81 CALL                             R21 1 1
       82 GETUPVAL                         R22 10
       83 MOVE                             R23 R20
       84 GETTABLEKS                       R24 R0 K2 ["Cell"]
       86 CALL                             R22 2 1
       87 GETUPVAL                         R23 11
       88 GETUPVAL                         R24 5
       89 GETTABLEKS                       R24 R24 K19 ["MenuContext"]
       91 GETTABLEKS                       R24 R24 K20 ["Asset"]
       93 DUPTABLE                         R25 K23 [{"Path", "Index"}]
       94 GETTABLEKS                       R26 R0 K2 ["Cell"]
       96 SETTABLEKS                       R26 R25 K21 ["Path"]
       98 GETTABLEKS                       R26 R0 K24 ["Key"]
      100 SETTABLEKS                       R26 R25 K22 ["Index"]
      102 CALL                             R23 2 1
      103 GETTABLEKS                       R24 R0 K25 ["ParentScope"]
      105 GETTABLEKS                       R27 R24 K26 ["Uid"]
      107 MOVE                             R28 R12
      108 GETUPVAL                         R29 5
      109 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      111 GETTABLEKS                       R29 R29 K3 ["AssetType"]
      113 NAMECALL                         R25 R11 K28 ["getItemField"]
      115 CALL                             R25 4 1
      116 MOVE                             R7 R25
      117 GETTABLEKS                       R27 R24 K26 ["Uid"]
      119 MOVE                             R28 R12
      120 GETUPVAL                         R29 5
      121 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      123 GETTABLEKS                       R29 R29 K29 ["DisplayName"]
      125 NAMECALL                         R25 R11 K28 ["getItemField"]
      127 CALL                             R25 4 1
      128 MOVE                             R8 R25
      129 GETTABLEKS                       R27 R24 K26 ["Uid"]
      131 MOVE                             R28 R12
      132 GETUPVAL                         R29 5
      133 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      135 GETTABLEKS                       R29 R29 K30 ["AssetId"]
      137 NAMECALL                         R25 R11 K28 ["getItemField"]
      139 CALL                             R25 4 1
      140 MOVE                             R6 R25
      141 JUMPIFNOT                        R6 ; [+2]
      142 JUMPIFNOT                        R7 ; [+1]
      143 JUMPIF                           R8 ; [+3]
      144 LOADNIL                          R25
      145 CLOSEUPVALS                      R8
      146 RETURN                           R25 1
      147 GETTABLEKS                       R27 R24 K26 ["Uid"]
      149 MOVE                             R28 R12
      150 GETUPVAL                         R29 5
      151 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      153 GETTABLEKS                       R29 R29 K31 ["IsPackage"]
      155 NAMECALL                         R25 R11 K28 ["getItemField"]
      157 CALL                             R25 4 1
      158 MOVE                             R9 R25
      159 GETTABLEKS                       R27 R24 K26 ["Uid"]
      161 MOVE                             R28 R12
      162 GETUPVAL                         R29 5
      163 GETTABLEKS                       R29 R29 K27 ["AssetInfoField"]
      165 GETTABLEKS                       R29 R29 K6 ["ModerationStatus"]
      167 NAMECALL                         R25 R11 K28 ["getItemField"]
      169 CALL                             R25 4 1
      170 MOVE                             R10 R25
      171 GETUPVAL                         R26 12
      172 MOVE                             R27 R8
      173 CALL                             R26 1 1
      174 GETTABLEKS                       R26 R26 K12 ["X"]
      176 JUMPIFLT                         R15 R26 ; [+2]
      178 LOADB                            R25 0 +1
      179 LOADB                            R25 1
      180 GETTABLEKS                       R27 R0 K2 ["Cell"]
      182 GETTABLE                         R26 R13 R27
      183 NEWCLOSURE                       R27 P0
      184 CAPTURE                          VAL R3
      185 CAPTURE                          UPVAL U5
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R23
      188 NEWCLOSURE                       R28 P1
      189 CAPTURE                          UPVAL U8
      190 CAPTURE                          UPVAL U13
      191 CAPTURE                          REF R8
      192 CAPTURE                          VAL R19
      193 GETUPVAL                         R29 8
      194 GETTABLEKS                       R29 R29 K32 ["createElement"]
      196 GETUPVAL                         R30 13
      197 GETTABLEKS                       R30 R30 K33 ["View"]
      199 DUPTABLE                         R31 K38 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      200 GETTABLEKS                       R32 R0 K24 ["Key"]
      202 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      204 GETTABLEKS                       R32 R0 K11 ["Size"]
      206 SETTABLEKS                       R32 R31 K11 ["Size"]
      208 GETTABLEKS                       R32 R0 K35 ["Position"]
      210 SETTABLEKS                       R32 R31 K35 ["Position"]
      212 SETTABLEKS                       R16 R31 K36 ["ref"]
      214 NEWTABLE                         R32 4 0
      216 LOADB                            R33 1
      217 SETTABLEKS                       R33 R32 K39 ["align-x-center align-y-top padding-xsmall radius-medium"]
      219 SETTABLEKS                       R26 R32 K40 ["bg-action-soft-emphasis"]
      221 NOT                              R34 R26
      222 AND                              R33 R34 R20
      223 SETTABLEKS                       R33 R32 K9 ["bg-shift-200"]
      225 SETTABLEKS                       R22 R32 K41 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      227 SETTABLEKS                       R32 R31 K37 ["tag"]
      229 DUPTABLE                         R32 K44 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      230 GETUPVAL                         R33 8
      231 GETTABLEKS                       R33 R33 K32 ["createElement"]
      233 LOADK                            R34 K45 ["ImageButton"]
      234 NEWTABLE                         R35 4 0
      236 GETUPVAL                         R36 8
      237 GETTABLEKS                       R36 R36 K46 ["Event"]
      239 GETTABLEKS                       R36 R36 K47 ["MouseButton2Click"]
      241 SETTABLE                         R27 R35 R36
      242 GETUPVAL                         R36 8
      243 GETTABLEKS                       R36 R36 K46 ["Event"]
      245 GETTABLEKS                       R36 R36 K48 ["MouseButton1Down"]
      247 NEWCLOSURE                       R37 P2
      248 CAPTURE                          VAL R3
      249 CAPTURE                          UPVAL U5
      250 CAPTURE                          VAL R0
      251 SETTABLE                         R37 R35 R36
      252 GETUPVAL                         R36 8
      253 GETTABLEKS                       R36 R36 K46 ["Event"]
      255 GETTABLEKS                       R36 R36 K49 ["MouseButton1Up"]
      257 NEWCLOSURE                       R37 P3
      258 CAPTURE                          VAL R3
      259 CAPTURE                          UPVAL U5
      260 CAPTURE                          VAL R0
      261 SETTABLE                         R37 R35 R36
      262 GETUPVAL                         R36 8
      263 GETTABLEKS                       R36 R36 K50 ["Tag"]
      265 LOADK                            R37 K51 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      266 SETTABLE                         R37 R35 R36
      267 DUPTABLE                         R36 K54 [{"ThumbnailContainer", "CellData"}]
      268 GETUPVAL                         R37 8
      269 GETTABLEKS                       R37 R37 K32 ["createElement"]
      271 GETUPVAL                         R38 13
      272 GETTABLEKS                       R38 R38 K33 ["View"]
      274 DUPTABLE                         R39 K55 [{"LayoutOrder", "ref", "tag"}]
      275 NAMECALL                         R40 R1 K56 ["getNextOrder"]
      277 CALL                             R40 1 1
      278 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      280 SETTABLEKS                       R17 R39 K36 ["ref"]
      282 LOADK                            R40 K57 ["fill size-full radius-small %*"]
      283 MOVE                             R42 R14
      284 NAMECALL                         R40 R40 K58 ["format"]
      286 CALL                             R40 2 1
      287 SETTABLEKS                       R40 R39 K37 ["tag"]
      289 DUPTABLE                         R40 K63 [{"Thumbnail", "PackageLinkIcon", "AssetState", "AudioOverlay"}]
      290 GETUPVAL                         R41 8
      291 GETTABLEKS                       R41 R41 K32 ["createElement"]
      293 GETUPVAL                         R42 14
      294 DUPTABLE                         R43 K64 [{"AssetId", "AssetType"}]
      295 SETTABLEKS                       R6 R43 K30 ["AssetId"]
      297 SETTABLEKS                       R7 R43 K3 ["AssetType"]
      299 CALL                             R41 2 1
      300 SETTABLEKS                       R41 R40 K59 ["Thumbnail"]
      302 JUMPIFNOT                        R9 ; [+7]
      303 GETUPVAL                         R41 8
      304 GETTABLEKS                       R41 R41 K32 ["createElement"]
      306 GETUPVAL                         R42 15
      307 DUPTABLE                         R43 K67 [{["IsGrid"] = True}]
      308 CALL                             R41 2 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R41
      311 SETTABLEKS                       R41 R40 K60 ["PackageLinkIcon"]
      313 GETUPVAL                         R42 5
      314 GETTABLEKS                       R42 R42 K6 ["ModerationStatus"]
      316 GETTABLEKS                       R42 R42 K68 ["Rejected"]
      318 JUMPIFNOTEQ                      R10 R42 ; [+12]
      320 GETUPVAL                         R41 8
      321 GETTABLEKS                       R41 R41 K32 ["createElement"]
      323 GETUPVAL                         R42 16
      324 DUPTABLE                         R43 K70 [{["AssetId"], ["AssetPath"], ["IsGrid"] = True}]
      325 SETTABLEKS                       R6 R43 K30 ["AssetId"]
      327 SETTABLEKS                       R12 R43 K69 ["AssetPath"]
      329 CALL                             R41 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R41
      332 SETTABLEKS                       R41 R40 K61 ["AssetState"]
      334 GETUPVAL                         R42 5
      335 GETTABLEKS                       R42 R42 K3 ["AssetType"]
      337 GETTABLEKS                       R42 R42 K71 ["Audio"]
      339 JUMPIFNOTEQ                      R7 R42 ; [+14]
      341 GETUPVAL                         R41 8
      342 GETTABLEKS                       R41 R41 K32 ["createElement"]
      344 GETUPVAL                         R42 17
      345 DUPTABLE                         R43 K74 [{"AssetId", "IsHovered", "OnRightClick"}]
      346 SETTABLEKS                       R6 R43 K30 ["AssetId"]
      348 SETTABLEKS                       R21 R43 K72 ["IsHovered"]
      350 SETTABLEKS                       R27 R43 K73 ["OnRightClick"]
      352 CALL                             R41 2 1
      353 JUMP                             ; [+1]
      354 LOADNIL                          R41
      355 SETTABLEKS                       R41 R40 K62 ["AudioOverlay"]
      357 CALL                             R37 3 1
      358 SETTABLEKS                       R37 R36 K52 ["ThumbnailContainer"]
      360 GETUPVAL                         R37 8
      361 GETTABLEKS                       R37 R37 K32 ["createElement"]
      363 GETUPVAL                         R38 13
      364 GETTABLEKS                       R38 R38 K33 ["View"]
      366 DUPTABLE                         R39 K76 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      367 NAMECALL                         R40 R1 K56 ["getNextOrder"]
      369 CALL                             R40 1 1
      370 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      372 DUPTABLE                         R40 K79 [{"NameTag", "TypeTag"}]
      373 JUMPIFNOT                        R5 ; [+24]
      374 GETUPVAL                         R41 8
      375 GETTABLEKS                       R41 R41 K32 ["createElement"]
      377 GETUPVAL                         R42 18
      378 DUPTABLE                         R43 K83 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      379 NAMECALL                         R44 R1 K56 ["getNextOrder"]
      381 CALL                             R44 1 1
      382 SETTABLEKS                       R44 R43 K34 ["LayoutOrder"]
      384 SETTABLEKS                       R8 R43 K80 ["InitialText"]
      386 SETTABLEKS                       R7 R43 K81 ["ItemType"]
      388 GETTABLEKS                       R44 R0 K2 ["Cell"]
      390 SETTABLEKS                       R44 R43 K82 ["ItemPath"]
      392 GETTABLEKS                       R44 R0 K11 ["Size"]
      394 SETTABLEKS                       R44 R43 K11 ["Size"]
      396 CALL                             R41 2 1
      397 JUMP                             ; [+50]
      398 JUMPIFNOT                        R25 ; [+31]
      399 GETUPVAL                         R41 8
      400 GETTABLEKS                       R41 R41 K32 ["createElement"]
      402 GETUPVAL                         R42 13
      403 GETTABLEKS                       R42 R42 K84 ["Tooltip"]
      405 DUPTABLE                         R43 K87 [{"LayoutOrder", "title", "side"}]
      406 NAMECALL                         R44 R1 K56 ["getNextOrder"]
      408 CALL                             R44 1 1
      409 SETTABLEKS                       R44 R43 K34 ["LayoutOrder"]
      411 SETTABLEKS                       R8 R43 K85 ["title"]
      413 GETUPVAL                         R44 13
      414 GETTABLEKS                       R44 R44 K88 ["Enums"]
      416 GETTABLEKS                       R44 R44 K89 ["PopoverSide"]
      418 GETTABLEKS                       R44 R44 K90 ["Bottom"]
      420 SETTABLEKS                       R44 R43 K86 ["side"]
      422 NEWTABLE                         R44 0 1
      424 MOVE                             R45 R28
      425 CALL                             R45 0 -1
      426 SETLIST                          R44 R45 -1 [1]
      428 CALL                             R41 3 1
      429 JUMP                             ; [+18]
      430 NAMECALL                         R42 R1 K56 ["getNextOrder"]
      432 CALL                             R42 1 1
      433 GETUPVAL                         R43 8
      434 GETTABLEKS                       R43 R43 K32 ["createElement"]
      436 GETUPVAL                         R44 13
      437 GETTABLEKS                       R44 R44 K91 ["Text"]
      439 DUPTABLE                         R45 K93 [{["LayoutOrder"], ["Text"], ["ref"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      440 SETTABLEKS                       R42 R45 K34 ["LayoutOrder"]
      442 SETTABLEKS                       R8 R45 K91 ["Text"]
      444 SETTABLEKS                       R19 R45 K36 ["ref"]
      446 CALL                             R43 2 1
      447 MOVE                             R41 R43
      448 SETTABLEKS                       R41 R40 K77 ["NameTag"]
      450 GETUPVAL                         R41 8
      451 GETTABLEKS                       R41 R41 K32 ["createElement"]
      453 GETUPVAL                         R42 13
      454 GETTABLEKS                       R42 R42 K91 ["Text"]
      456 DUPTABLE                         R43 K95 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      457 NAMECALL                         R44 R1 K56 ["getNextOrder"]
      459 CALL                             R44 1 1
      460 SETTABLEKS                       R44 R43 K34 ["LayoutOrder"]
      462 LOADK                            R46 K3 ["AssetType"]
      463 MOVE                             R47 R7
      464 NAMECALL                         R44 R2 K96 ["getText"]
      466 CALL                             R44 3 1
      467 SETTABLEKS                       R44 R43 K91 ["Text"]
      469 CALL                             R41 2 1
      470 SETTABLEKS                       R41 R40 K78 ["TypeTag"]
      472 CALL                             R37 3 1
      473 SETTABLEKS                       R37 R36 K53 ["CellData"]
      475 CALL                             R33 3 1
      476 SETTABLEKS                       R33 R32 K42 ["InputHandler"]
      478 GETTABLEKS                       R34 R0 K24 ["Key"]
      480 JUMPIFNOTEQKN                    R34 K97 [1] ; [+42]
      482 GETUPVAL                         R33 8
      483 GETTABLEKS                       R33 R33 K32 ["createElement"]
      485 GETUPVAL                         R34 19
      486 DUPTABLE                         R35 K102 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      487 GETUPVAL                         R36 5
      488 GETTABLEKS                       R36 R36 K103 ["TutorialId"]
      490 GETTABLEKS                       R36 R36 K104 ["Intro"]
      492 SETTABLEKS                       R36 R35 K98 ["tutorialId"]
      494 GETUPVAL                         R36 5
      495 GETTABLEKS                       R36 R36 K105 ["TutorialStepId"]
      497 GETTABLEKS                       R36 R36 K106 ["InsertOrImport"]
      499 SETTABLEKS                       R36 R35 K99 ["stepId"]
      501 SETTABLEKS                       R18 R35 K100 ["anchorInstance"]
      503 GETUPVAL                         R36 13
      504 GETTABLEKS                       R36 R36 K88 ["Enums"]
      506 GETTABLEKS                       R36 R36 K89 ["PopoverSide"]
      508 GETTABLEKS                       R36 R36 K90 ["Bottom"]
      510 SETTABLEKS                       R36 R35 K86 ["side"]
      512 GETUPVAL                         R36 13
      513 GETTABLEKS                       R36 R36 K88 ["Enums"]
      515 GETTABLEKS                       R36 R36 K107 ["PopoverAlign"]
      517 GETTABLEKS                       R36 R36 K108 ["Center"]
      519 SETTABLEKS                       R36 R35 K101 ["align"]
      521 CALL                             R33 2 1
      522 JUMP                             ; [+1]
      523 LOADNIL                          R33
      524 SETTABLEKS                       R33 R32 K43 ["InsertOrImportTutorialTooltip"]
      526 CALL                             R29 3 -1
      527 CLOSEUPVALS                      R8
      528 RETURN                           R29 -1

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
      168 GETTABLEKS                       R20 R3 K31 ["Util"]
      170 GETTABLEKS                       R20 R20 K32 ["LayoutOrderIterator"]
      172 GETTABLEKS                       R21 R3 K31 ["Util"]
      174 GETTABLEKS                       R21 R21 K33 ["GetTextSize"]
      176 GETIMPORT                        R22 K5 [require]
      178 GETTABLEKS                       R23 R0 K12 ["Src"]
      180 GETTABLEKS                       R23 R23 K34 ["Resources"]
      182 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      184 CALL                             R22 1 1
      185 DUPCLOSURE                       R23 K36 [PROTO_4]
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R11
      206 RETURN                           R23 1
