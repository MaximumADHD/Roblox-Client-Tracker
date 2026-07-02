PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["BackdropClick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["BackdropClick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 MULK                             R4 R5 K4 [2]
        6 ADD                              R2 R3 R4
        7 GETTABLEKS                       R4 R0 K5 ["Y"]
        9 GETUPVAL                         R6 0
       10 MULK                             R5 R6 K4 [2]
       11 ADD                              R3 R4 R5
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{["LayoutOrder"] = 1}]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R2 K4 ["inner"]
       13 GETTABLEKS                       R4 R4 K5 ["maxWidth"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K6 ["useRef"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 5
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 6
       27 GETUPVAL                         R8 7
       28 GETTABLEKS                       R8 R8 K7 ["Dialog"]
       30 DUPTABLE                         R9 K10 [{["relativeToOwner"] = False}]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 8
       33 GETTABLEKS                       R9 R1 K11 ["size"]
       35 CALL                             R8 1 0
       36 GETUPVAL                         R9 9
       37 GETTABLEKS                       R9 R9 K12 ["FoundationDialogOversizedBackdrop"]
       39 JUMPIF                           R9 ; [+216]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 10
       44 DUPTABLE                         R10 K17 [{"tag", "ZIndex", "testId"}]
       45 GETTABLEKS                       R11 R2 K18 ["container"]
       47 GETTABLEKS                       R11 R11 K14 ["tag"]
       49 SETTABLEKS                       R11 R10 K14 ["tag"]
       51 GETTABLEKS                       R12 R1 K19 ["hasBackdrop"]
       53 JUMPIFNOT                        R12 ; [+2]
       54 LOADNIL                          R11
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R11 R7 K20 ["zIndex"]
       58 SETTABLEKS                       R11 R10 K15 ["ZIndex"]
       60 LOADK                            R12 K21 ["%*--surface"]
       61 GETTABLEKS                       R14 R1 K16 ["testId"]
       63 NAMECALL                         R12 R12 K22 ["format"]
       65 CALL                             R12 2 1
       66 MOVE                             R11 R12
       67 SETTABLEKS                       R11 R10 K16 ["testId"]
       69 DUPTABLE                         R11 K24 [{"Shadow"}]
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R12 R12 K13 ["createElement"]
       73 GETUPVAL                         R13 11
       74 DUPTABLE                         R14 K28 [{"Image", "tag", "slice", "imageStyle", "testId"}]
       75 GETUPVAL                         R15 12
       76 SETTABLEKS                       R15 R14 K25 ["Image"]
       78 GETTABLEKS                       R15 R2 K29 ["shadow"]
       80 GETTABLEKS                       R15 R15 K14 ["tag"]
       82 SETTABLEKS                       R15 R14 K14 ["tag"]
       84 DUPTABLE                         R15 K33 [{["center"], ["scale"] = 2}]
       85 GETIMPORT                        R16 K36 [Rect.new]
       87 GETUPVAL                         R17 13
       88 GETUPVAL                         R18 13
       89 GETUPVAL                         R19 13
       90 GETUPVAL                         R20 13
       91 CALL                             R16 4 1
       92 SETTABLEKS                       R16 R15 K30 ["center"]
       94 SETTABLEKS                       R15 R14 K26 ["slice"]
       96 GETTABLEKS                       R15 R2 K29 ["shadow"]
       98 GETTABLEKS                       R15 R15 K27 ["imageStyle"]
      100 SETTABLEKS                       R15 R14 K27 ["imageStyle"]
      102 LOADK                            R16 K37 ["%*--shadow"]
      103 GETTABLEKS                       R18 R1 K16 ["testId"]
      105 NAMECALL                         R16 R16 K22 ["format"]
      107 CALL                             R16 2 1
      108 MOVE                             R15 R16
      109 SETTABLEKS                       R15 R14 K16 ["testId"]
      111 DUPTABLE                         R15 K39 [{"DialogInner"}]
      112 GETUPVAL                         R16 3
      113 GETTABLEKS                       R16 R16 K13 ["createElement"]
      115 GETUPVAL                         R17 10
      116 GETUPVAL                         R18 14
      117 MOVE                             R19 R1
      118 DUPTABLE                         R20 K46 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      119 GETTABLEKS                       R21 R2 K4 ["inner"]
      121 GETTABLEKS                       R21 R21 K14 ["tag"]
      123 SETTABLEKS                       R21 R20 K14 ["tag"]
      125 GETTABLEKS                       R21 R1 K47 ["forwardRef"]
      127 SETTABLEKS                       R21 R20 K40 ["ref"]
      129 DUPTABLE                         R21 K49 [{"MaxSize"}]
      130 GETIMPORT                        R22 K51 [Vector2.new]
      132 MOVE                             R23 R3
      133 LOADK                            R24 K52 [∞]
      134 CALL                             R22 2 1
      135 SETTABLEKS                       R22 R21 K48 ["MaxSize"]
      137 SETTABLEKS                       R21 R20 K41 ["sizeConstraint"]
      139 DUPTABLE                         R21 K54 [{"affordance"}]
      140 GETUPVAL                         R22 15
      141 GETTABLEKS                       R22 R22 K55 ["None"]
      143 SETTABLEKS                       R22 R21 K53 ["affordance"]
      145 SETTABLEKS                       R21 R20 K42 ["stateLayer"]
      147 GETUPVAL                         R21 16
      148 GETTABLEKS                       R21 R21 K56 ["nonSelectable"]
      150 SETTABLEKS                       R21 R20 K43 ["selection"]
      152 GETUPVAL                         R21 16
      153 GETTABLEKS                       R21 R21 K57 ["isolatedSelectionGroup"]
      155 SETTABLEKS                       R21 R20 K44 ["selectionGroup"]
      157 GETUPVAL                         R21 0
      158 GETTABLEKS                       R21 R21 K58 ["noop"]
      160 SETTABLEKS                       R21 R20 K45 ["onActivated"]
      162 CALL                             R18 2 1
      163 DUPTABLE                         R19 K61 [{"CloseAffordance", "DialogBody"}]
      164 GETTABLEKS                       R21 R1 K62 ["onClose"]
      166 JUMPIFNOT                        R21 ; [+43]
      167 GETUPVAL                         R20 3
      168 GETTABLEKS                       R20 R20 K13 ["createElement"]
      170 GETUPVAL                         R21 17
      171 DUPTABLE                         R22 K65 [{["onActivated"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      172 GETTABLEKS                       R23 R1 K62 ["onClose"]
      174 SETTABLEKS                       R23 R22 K45 ["onActivated"]
      176 GETIMPORT                        R23 K67 [UDim2.new]
      178 LOADN                            R24 1
      179 GETTABLEKS                       R26 R2 K68 ["closeAffordance"]
      181 GETTABLEKS                       R26 R26 K69 ["offset"]
      183 MINUS                            R25 R26
      184 LOADN                            R26 0
      185 GETTABLEKS                       R27 R2 K68 ["closeAffordance"]
      187 GETTABLEKS                       R27 R27 K69 ["offset"]
      189 CALL                             R23 4 1
      190 SETTABLEKS                       R23 R22 K63 ["Position"]
      192 GETIMPORT                        R23 K51 [Vector2.new]
      194 LOADN                            R24 1
      195 LOADN                            R25 0
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K64 ["AnchorPoint"]
      199 LOADK                            R24 K70 ["%*--close-affordance"]
      200 GETTABLEKS                       R26 R1 K16 ["testId"]
      202 NAMECALL                         R24 R24 K22 ["format"]
      204 CALL                             R24 2 1
      205 MOVE                             R23 R24
      206 SETTABLEKS                       R23 R22 K16 ["testId"]
      208 CALL                             R20 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R20
      211 SETTABLEKS                       R20 R19 K59 ["CloseAffordance"]
      213 GETUPVAL                         R20 3
      214 GETTABLEKS                       R20 R20 K13 ["createElement"]
      216 GETUPVAL                         R21 10
      217 DUPTABLE                         R22 K71 [{"tag", "ref", "testId"}]
      218 GETTABLEKS                       R23 R2 K72 ["body"]
      220 GETTABLEKS                       R23 R23 K14 ["tag"]
      222 SETTABLEKS                       R23 R22 K14 ["tag"]
      224 SETTABLEKS                       R4 R22 K40 ["ref"]
      226 LOADK                            R24 K73 ["%*--body"]
      227 GETTABLEKS                       R26 R1 K16 ["testId"]
      229 NAMECALL                         R24 R24 K22 ["format"]
      231 CALL                             R24 2 1
      232 MOVE                             R23 R24
      233 SETTABLEKS                       R23 R22 K16 ["testId"]
      235 GETUPVAL                         R23 3
      236 GETTABLEKS                       R23 R23 K13 ["createElement"]
      238 GETUPVAL                         R24 18
      239 DUPTABLE                         R25 K75 [{"owner"}]
      240 SETTABLEKS                       R7 R25 K74 ["owner"]
      242 GETTABLEKS                       R26 R1 K76 ["children"]
      244 CALL                             R23 3 -1
      245 CALL                             R20 -1 1
      246 SETTABLEKS                       R20 R19 K60 ["DialogBody"]
      248 CALL                             R16 3 1
      249 SETTABLEKS                       R16 R15 K38 ["DialogInner"]
      251 CALL                             R12 3 1
      252 SETTABLEKS                       R12 R11 K23 ["Shadow"]
      254 CALL                             R8 3 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R8
      257 GETUPVAL                         R10 9
      258 GETTABLEKS                       R10 R10 K12 ["FoundationDialogOversizedBackdrop"]
      260 JUMPIF                           R10 ; [+58]
      261 GETUPVAL                         R9 3
      262 GETTABLEKS                       R9 R9 K13 ["createElement"]
      264 GETUPVAL                         R10 3
      265 GETTABLEKS                       R10 R10 K77 ["Fragment"]
      267 LOADNIL                          R11
      268 DUPTABLE                         R12 K79 [{"Backdrop"}]
      269 GETTABLEKS                       R14 R1 K19 ["hasBackdrop"]
      271 JUMPIFNOT                        R14 ; [+42]
      272 GETUPVAL                         R13 3
      273 GETTABLEKS                       R13 R13 K13 ["createElement"]
      275 GETUPVAL                         R14 10
      276 DUPTABLE                         R15 K82 [{["tag"] = "size-full-full", ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"], ["testId"]}]
      277 DUPTABLE                         R16 K54 [{"affordance"}]
      278 GETUPVAL                         R17 15
      279 GETTABLEKS                       R17 R17 K55 ["None"]
      281 SETTABLEKS                       R17 R16 K53 ["affordance"]
      283 SETTABLEKS                       R16 R15 K42 ["stateLayer"]
      285 NEWCLOSURE                       R16 P0
      286 CAPTURE                          VAL R1
      287 CAPTURE                          UPVAL U19
      288 SETTABLEKS                       R16 R15 K45 ["onActivated"]
      290 GETTABLEKS                       R16 R2 K83 ["backdrop"]
      292 GETTABLEKS                       R16 R16 K81 ["backgroundStyle"]
      294 SETTABLEKS                       R16 R15 K81 ["backgroundStyle"]
      296 GETTABLEKS                       R16 R7 K20 ["zIndex"]
      298 SETTABLEKS                       R16 R15 K15 ["ZIndex"]
      300 LOADK                            R17 K84 ["%*--backdrop"]
      301 GETTABLEKS                       R19 R1 K16 ["testId"]
      303 NAMECALL                         R17 R17 K22 ["format"]
      305 CALL                             R17 2 1
      306 MOVE                             R16 R17
      307 SETTABLEKS                       R16 R15 K16 ["testId"]
      309 DUPTABLE                         R16 K86 [{"DialogSurface"}]
      310 SETTABLEKS                       R8 R16 K85 ["DialogSurface"]
      312 CALL                             R13 3 1
      313 JUMP                             ; [+1]
      314 MOVE                             R13 R8
      315 SETTABLEKS                       R13 R12 K78 ["Backdrop"]
      317 CALL                             R9 3 1
      318 JUMP                             ; [+314]
      319 GETUPVAL                         R9 3
      320 GETTABLEKS                       R9 R9 K13 ["createElement"]
      322 GETUPVAL                         R10 10
      323 DUPTABLE                         R11 K88 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      324 GETTABLEKS                       R12 R7 K20 ["zIndex"]
      326 SETTABLEKS                       R12 R11 K15 ["ZIndex"]
      328 LOADK                            R13 K89 ["%*--container"]
      329 GETTABLEKS                       R15 R1 K16 ["testId"]
      331 NAMECALL                         R13 R13 K22 ["format"]
      333 CALL                             R13 2 1
      334 MOVE                             R12 R13
      335 SETTABLEKS                       R12 R11 K16 ["testId"]
      337 DUPTABLE                         R12 K91 [{"Backdrop", "DialogShadowWrapper"}]
      338 GETTABLEKS                       R14 R1 K19 ["hasBackdrop"]
      340 JUMPIFNOT                        R14 ; [+57]
      341 GETUPVAL                         R13 3
      342 GETTABLEKS                       R13 R13 K13 ["createElement"]
      344 GETUPVAL                         R14 10
      345 DUPTABLE                         R15 K93 [{["tag"], ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
      346 GETUPVAL                         R17 9
      347 GETTABLEKS                       R17 R17 K12 ["FoundationDialogOversizedBackdrop"]
      349 JUMPIFNOT                        R17 ; [+2]
      350 LOADK                            R16 K94 ["position-center-center anchor-center-center"]
      351 JUMP                             ; [+1]
      352 LOADK                            R16 K80 ["size-full-full"]
      353 SETTABLEKS                       R16 R15 K14 ["tag"]
      355 GETUPVAL                         R17 9
      356 GETTABLEKS                       R17 R17 K12 ["FoundationDialogOversizedBackdrop"]
      358 JUMPIFNOT                        R17 ; [+6]
      359 GETIMPORT                        R16 K96 [UDim2.fromScale]
      361 LOADN                            R17 2
      362 LOADN                            R18 2
      363 CALL                             R16 2 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R16
      366 SETTABLEKS                       R16 R15 K92 ["Size"]
      368 DUPTABLE                         R16 K54 [{"affordance"}]
      369 GETUPVAL                         R17 15
      370 GETTABLEKS                       R17 R17 K55 ["None"]
      372 SETTABLEKS                       R17 R16 K53 ["affordance"]
      374 SETTABLEKS                       R16 R15 K42 ["stateLayer"]
      376 NEWCLOSURE                       R16 P1
      377 CAPTURE                          VAL R1
      378 CAPTURE                          UPVAL U19
      379 SETTABLEKS                       R16 R15 K45 ["onActivated"]
      381 GETTABLEKS                       R16 R2 K83 ["backdrop"]
      383 GETTABLEKS                       R16 R16 K81 ["backgroundStyle"]
      385 SETTABLEKS                       R16 R15 K81 ["backgroundStyle"]
      387 LOADK                            R17 K84 ["%*--backdrop"]
      388 GETTABLEKS                       R19 R1 K16 ["testId"]
      390 NAMECALL                         R17 R17 K22 ["format"]
      392 CALL                             R17 2 1
      393 MOVE                             R16 R17
      394 SETTABLEKS                       R16 R15 K16 ["testId"]
      396 CALL                             R13 2 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R13
      399 SETTABLEKS                       R13 R12 K78 ["Backdrop"]
      401 GETUPVAL                         R13 3
      402 GETTABLEKS                       R13 R13 K13 ["createElement"]
      404 GETUPVAL                         R14 10
      405 DUPTABLE                         R15 K97 [{["tag"], ["ZIndex"] = 2}]
      406 GETTABLEKS                       R16 R2 K18 ["container"]
      408 GETTABLEKS                       R16 R16 K14 ["tag"]
      410 SETTABLEKS                       R16 R15 K14 ["tag"]
      412 DUPTABLE                         R16 K24 [{"Shadow"}]
      413 GETUPVAL                         R17 3
      414 GETTABLEKS                       R17 R17 K13 ["createElement"]
      416 GETUPVAL                         R18 11
      417 DUPTABLE                         R19 K98 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      418 GETUPVAL                         R20 12
      419 SETTABLEKS                       R20 R19 K25 ["Image"]
      421 DUPCLOSURE                       R22 K99 [PROTO_2]
      422 CAPTURE                          UPVAL U13
      423 NAMECALL                         R20 R5 K100 ["map"]
      425 CALL                             R20 2 1
      426 SETTABLEKS                       R20 R19 K92 ["Size"]
      428 DUPTABLE                         R20 K33 [{["center"], ["scale"] = 2}]
      429 GETIMPORT                        R21 K36 [Rect.new]
      431 GETUPVAL                         R22 13
      432 GETUPVAL                         R23 13
      433 GETUPVAL                         R24 13
      434 GETUPVAL                         R25 13
      435 CALL                             R21 4 1
      436 SETTABLEKS                       R21 R20 K30 ["center"]
      438 SETTABLEKS                       R20 R19 K26 ["slice"]
      440 GETTABLEKS                       R20 R2 K29 ["shadow"]
      442 GETTABLEKS                       R20 R20 K27 ["imageStyle"]
      444 SETTABLEKS                       R20 R19 K27 ["imageStyle"]
      446 LOADK                            R21 K37 ["%*--shadow"]
      447 GETTABLEKS                       R23 R1 K16 ["testId"]
      449 NAMECALL                         R21 R21 K22 ["format"]
      451 CALL                             R21 2 1
      452 MOVE                             R20 R21
      453 SETTABLEKS                       R20 R19 K16 ["testId"]
      455 CALL                             R17 2 1
      456 SETTABLEKS                       R17 R16 K23 ["Shadow"]
      458 CALL                             R13 3 1
      459 SETTABLEKS                       R13 R12 K90 ["DialogShadowWrapper"]
      461 DUPTABLE                         R13 K101 [{"Dialog"}]
      462 GETUPVAL                         R14 3
      463 GETTABLEKS                       R14 R14 K13 ["createElement"]
      465 GETUPVAL                         R15 10
      466 DUPTABLE                         R16 K103 [{["tag"], ["ZIndex"] = 3}]
      467 GETTABLEKS                       R17 R2 K18 ["container"]
      469 GETTABLEKS                       R17 R17 K14 ["tag"]
      471 SETTABLEKS                       R17 R16 K14 ["tag"]
      473 DUPTABLE                         R17 K106 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      474 GETUPVAL                         R18 3
      475 GETTABLEKS                       R18 R18 K13 ["createElement"]
      477 GETUPVAL                         R19 10
      478 DUPTABLE                         R20 K109 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      479 CALL                             R18 2 1
      480 SETTABLEKS                       R18 R17 K104 ["DialogFlexStart"]
      482 GETUPVAL                         R18 3
      483 GETTABLEKS                       R18 R18 K13 ["createElement"]
      485 GETUPVAL                         R19 10
      486 GETUPVAL                         R20 14
      487 MOVE                             R21 R1
      488 DUPTABLE                         R22 K46 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      489 GETTABLEKS                       R23 R2 K4 ["inner"]
      491 GETTABLEKS                       R23 R23 K14 ["tag"]
      493 SETTABLEKS                       R23 R22 K14 ["tag"]
      495 GETTABLEKS                       R23 R1 K47 ["forwardRef"]
      497 SETTABLEKS                       R23 R22 K40 ["ref"]
      499 DUPTABLE                         R23 K49 [{"MaxSize"}]
      500 GETIMPORT                        R24 K51 [Vector2.new]
      502 MOVE                             R25 R3
      503 LOADK                            R26 K52 [∞]
      504 CALL                             R24 2 1
      505 SETTABLEKS                       R24 R23 K48 ["MaxSize"]
      507 SETTABLEKS                       R23 R22 K41 ["sizeConstraint"]
      509 DUPTABLE                         R23 K54 [{"affordance"}]
      510 GETUPVAL                         R24 15
      511 GETTABLEKS                       R24 R24 K55 ["None"]
      513 SETTABLEKS                       R24 R23 K53 ["affordance"]
      515 SETTABLEKS                       R23 R22 K42 ["stateLayer"]
      517 GETUPVAL                         R23 16
      518 GETTABLEKS                       R23 R23 K56 ["nonSelectable"]
      520 SETTABLEKS                       R23 R22 K43 ["selection"]
      522 GETUPVAL                         R23 16
      523 GETTABLEKS                       R23 R23 K57 ["isolatedSelectionGroup"]
      525 SETTABLEKS                       R23 R22 K44 ["selectionGroup"]
      527 GETUPVAL                         R23 0
      528 GETTABLEKS                       R23 R23 K58 ["noop"]
      530 SETTABLEKS                       R23 R22 K45 ["onActivated"]
      532 CALL                             R20 2 1
      533 DUPTABLE                         R21 K61 [{"CloseAffordance", "DialogBody"}]
      534 GETTABLEKS                       R23 R1 K62 ["onClose"]
      536 JUMPIFNOT                        R23 ; [+43]
      537 GETUPVAL                         R22 3
      538 GETTABLEKS                       R22 R22 K13 ["createElement"]
      540 GETUPVAL                         R23 17
      541 DUPTABLE                         R24 K65 [{["onActivated"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      542 GETTABLEKS                       R25 R1 K62 ["onClose"]
      544 SETTABLEKS                       R25 R24 K45 ["onActivated"]
      546 GETIMPORT                        R25 K67 [UDim2.new]
      548 LOADN                            R26 1
      549 GETTABLEKS                       R28 R2 K68 ["closeAffordance"]
      551 GETTABLEKS                       R28 R28 K69 ["offset"]
      553 MINUS                            R27 R28
      554 LOADN                            R28 0
      555 GETTABLEKS                       R29 R2 K68 ["closeAffordance"]
      557 GETTABLEKS                       R29 R29 K69 ["offset"]
      559 CALL                             R25 4 1
      560 SETTABLEKS                       R25 R24 K63 ["Position"]
      562 GETIMPORT                        R25 K51 [Vector2.new]
      564 LOADN                            R26 1
      565 LOADN                            R27 0
      566 CALL                             R25 2 1
      567 SETTABLEKS                       R25 R24 K64 ["AnchorPoint"]
      569 LOADK                            R26 K70 ["%*--close-affordance"]
      570 GETTABLEKS                       R28 R1 K16 ["testId"]
      572 NAMECALL                         R26 R26 K22 ["format"]
      574 CALL                             R26 2 1
      575 MOVE                             R25 R26
      576 SETTABLEKS                       R25 R24 K16 ["testId"]
      578 CALL                             R22 2 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R22
      581 SETTABLEKS                       R22 R21 K59 ["CloseAffordance"]
      583 GETUPVAL                         R22 3
      584 GETTABLEKS                       R22 R22 K13 ["createElement"]
      586 GETUPVAL                         R23 10
      587 DUPTABLE                         R24 K71 [{"tag", "ref", "testId"}]
      588 GETTABLEKS                       R25 R2 K72 ["body"]
      590 GETTABLEKS                       R25 R25 K14 ["tag"]
      592 SETTABLEKS                       R25 R24 K14 ["tag"]
      594 SETTABLEKS                       R4 R24 K40 ["ref"]
      596 LOADK                            R26 K73 ["%*--body"]
      597 GETTABLEKS                       R28 R1 K16 ["testId"]
      599 NAMECALL                         R26 R26 K22 ["format"]
      601 CALL                             R26 2 1
      602 MOVE                             R25 R26
      603 SETTABLEKS                       R25 R24 K16 ["testId"]
      605 GETUPVAL                         R25 3
      606 GETTABLEKS                       R25 R25 K13 ["createElement"]
      608 GETUPVAL                         R26 18
      609 DUPTABLE                         R27 K75 [{"owner"}]
      610 SETTABLEKS                       R7 R27 K74 ["owner"]
      612 GETTABLEKS                       R28 R1 K76 ["children"]
      614 CALL                             R25 3 -1
      615 CALL                             R22 -1 1
      616 SETTABLEKS                       R22 R21 K60 ["DialogBody"]
      618 CALL                             R18 3 1
      619 SETTABLEKS                       R18 R17 K38 ["DialogInner"]
      621 GETUPVAL                         R18 3
      622 GETTABLEKS                       R18 R18 K13 ["createElement"]
      624 GETUPVAL                         R19 10
      625 DUPTABLE                         R20 K110 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      626 CALL                             R18 2 1
      627 SETTABLEKS                       R18 R17 K105 ["DialogFlexEnd"]
      629 CALL                             R14 3 1
      630 SETTABLEKS                       R14 R13 K7 ["Dialog"]
      632 CALL                             R9 4 1
      633 GETTABLEKS                       R10 R1 K111 ["disablePortal"]
      635 JUMPIF                           R10 ; [+2]
      636 JUMPIFNOTEQKNIL                  R6 ; [+2]
      638 RETURN                           R9 1
      639 GETUPVAL                         R10 20
      640 GETTABLEKS                       R10 R10 K112 ["createPortal"]
      642 MOVE                             R11 R9
      643 MOVE                             R12 R6
      644 CALL                             R10 2 -1
      645 RETURN                           R10 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R9 R9 K7 ["assign"]
       29 NEWTABLE                         R10 0 0
       31 MOVE                             R11 R2
       32 DUPTABLE                         R12 K9 [{"forwardRef"}]
       33 SETTABLEKS                       R1 R12 K8 ["forwardRef"]
       35 CALL                             R9 3 -1
       36 CALL                             R7 -1 1
       37 SETTABLEKS                       R7 R6 K5 ["Dialog"]
       39 CALL                             R3 3 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["CloseAffordance"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["Image"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["View"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Providers"]
       54 GETTABLEKS                       R10 R10 K16 ["Overlay"]
       56 GETTABLEKS                       R10 R10 K17 ["useOverlay"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K18 ["Enums"]
       63 GETTABLEKS                       R11 R11 K19 ["DialogSize"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K18 ["Enums"]
       70 GETTABLEKS                       R12 R12 K20 ["OnCloseCallbackReason"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K18 ["Enums"]
       77 GETTABLEKS                       R13 R13 K21 ["StateLayerAffordance"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K22 ["Utility"]
       84 GETTABLEKS                       R14 R14 K23 ["Flags"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K22 ["Utility"]
       91 GETTABLEKS                       R15 R15 K24 ["useScaledValue"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R16 K25 ["withCommonProps"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K22 ["Utility"]
      105 GETTABLEKS                       R17 R17 K26 ["withDefaults"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETIMPORT                        R18 K1 [script]
      112 GETTABLEKS                       R18 R18 K4 ["Parent"]
      114 GETTABLEKS                       R18 R18 K27 ["Types"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K10 ["Components"]
      121 GETTABLEKS                       R19 R19 K27 ["Types"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETIMPORT                        R20 K1 [script]
      128 GETTABLEKS                       R20 R20 K4 ["Parent"]
      130 GETTABLEKS                       R20 R20 K28 ["useDialogVariants"]
      132 CALL                             R19 1 1
      133 GETTABLEKS                       R19 R19 K28 ["useDialogVariants"]
      135 GETIMPORT                        R20 K6 [require]
      137 GETIMPORT                        R21 K1 [script]
      139 GETTABLEKS                       R21 R21 K4 ["Parent"]
      141 GETTABLEKS                       R21 R21 K29 ["DialogProvider"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETIMPORT                        R22 K1 [script]
      148 GETTABLEKS                       R22 R22 K4 ["Parent"]
      150 GETTABLEKS                       R22 R22 K30 ["useDialogResponsiveSize"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K6 [require]
      155 GETIMPORT                        R23 K1 [script]
      157 GETTABLEKS                       R23 R23 K4 ["Parent"]
      159 GETTABLEKS                       R23 R23 K31 ["useDialogSize"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K6 [require]
      164 GETTABLEKS                       R24 R0 K15 ["Providers"]
      166 GETTABLEKS                       R24 R24 K32 ["Elevation"]
      168 GETTABLEKS                       R24 R24 K33 ["useElevation"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K6 [require]
      173 GETTABLEKS                       R25 R0 K15 ["Providers"]
      175 GETTABLEKS                       R25 R25 K32 ["Elevation"]
      177 GETTABLEKS                       R25 R25 K34 ["ElevationProvider"]
      179 CALL                             R24 1 1
      180 GETTABLEKS                       R24 R24 K35 ["ElevationOwnerScope"]
      182 GETIMPORT                        R25 K6 [require]
      184 GETTABLEKS                       R26 R0 K18 ["Enums"]
      186 GETTABLEKS                       R26 R26 K36 ["ElevationLayer"]
      188 CALL                             R25 1 1
      189 DUPTABLE                         R26 K44 [{["size"], ["disablePortal"] = True, ["hasBackdrop"] = False, ["testId"] = "--foundation-dialog"}]
      190 GETTABLEKS                       R27 R10 K45 ["Medium"]
      192 SETTABLEKS                       R27 R26 K37 ["size"]
      194 GETTABLEKS                       R27 R6 K46 ["SHADOW_IMAGE"]
      196 GETTABLEKS                       R28 R6 K47 ["SHADOW_SIZE"]
      198 DUPCLOSURE                       R29 K48 [PROTO_3]
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R11
      219 CAPTURE                          VAL R4
      220 DUPCLOSURE                       R30 K49 [PROTO_4]
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R29
      226 CAPTURE                          VAL R2
      227 GETTABLEKS                       R31 R3 K50 ["memo"]
      229 GETTABLEKS                       R32 R3 K51 ["forwardRef"]
      231 MOVE                             R33 R30
      232 CALL                             R32 1 -1
      233 CALL                             R31 -1 -1
      234 RETURN                           R31 -1
