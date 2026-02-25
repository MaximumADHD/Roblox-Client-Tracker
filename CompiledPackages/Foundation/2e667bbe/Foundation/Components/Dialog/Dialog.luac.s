PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClose"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["BackdropClick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClose"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["BackdropClick"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R5 R2 K3 ["inner"]
       16 GETTABLEKS                       R4 R5 K4 ["maxWidth"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K5 ["useRef"]
       22 LOADNIL                          R5
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 4
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 6
       30 GETTABLEKS                       R8 R1 K6 ["size"]
       32 CALL                             R7 1 0
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K7 ["createElement"]
       36 GETUPVAL                         R8 7
       37 DUPTABLE                         R9 K11 [{"tag", "ZIndex", "testId"}]
       38 GETTABLEKS                       R11 R2 K12 ["container"]
       40 GETTABLEKS                       R10 R11 K8 ["tag"]
       42 SETTABLEKS                       R10 R9 K8 ["tag"]
       44 GETTABLEKS                       R11 R1 K13 ["hasBackdrop"]
       46 JUMPIFNOT                        R11 ; [+2]
       47 LOADNIL                          R10
       48 JUMP                             ; [+1]
       49 GETUPVAL                         R10 8
       50 SETTABLEKS                       R10 R9 K9 ["ZIndex"]
       52 LOADK                            R11 K14 ["%*--surface"]
       53 GETTABLEKS                       R13 R1 K10 ["testId"]
       55 NAMECALL                         R11 R11 K15 ["format"]
       57 CALL                             R11 2 1
       58 MOVE                             R10 R11
       59 SETTABLEKS                       R10 R9 K10 ["testId"]
       61 DUPTABLE                         R10 K17 [{"Shadow"}]
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R11 R12 K7 ["createElement"]
       65 GETUPVAL                         R12 9
       66 DUPTABLE                         R13 K21 [{"Image", "tag", "slice", "imageStyle", "testId"}]
       67 GETUPVAL                         R14 10
       68 SETTABLEKS                       R14 R13 K18 ["Image"]
       70 GETTABLEKS                       R15 R2 K22 ["shadow"]
       72 GETTABLEKS                       R14 R15 K8 ["tag"]
       74 SETTABLEKS                       R14 R13 K8 ["tag"]
       76 DUPTABLE                         R14 K25 [{"center", "scale"}]
       77 GETIMPORT                        R15 K28 [Rect.new]
       79 GETUPVAL                         R16 11
       80 GETUPVAL                         R17 11
       81 GETUPVAL                         R18 11
       82 GETUPVAL                         R19 11
       83 CALL                             R15 4 1
       84 SETTABLEKS                       R15 R14 K23 ["center"]
       86 LOADN                            R15 2
       87 SETTABLEKS                       R15 R14 K24 ["scale"]
       89 SETTABLEKS                       R14 R13 K19 ["slice"]
       91 GETTABLEKS                       R15 R2 K22 ["shadow"]
       93 GETTABLEKS                       R14 R15 K20 ["imageStyle"]
       95 SETTABLEKS                       R14 R13 K20 ["imageStyle"]
       97 LOADK                            R15 K29 ["%*--shadow"]
       98 GETTABLEKS                       R17 R1 K10 ["testId"]
      100 NAMECALL                         R15 R15 K15 ["format"]
      102 CALL                             R15 2 1
      103 MOVE                             R14 R15
      104 SETTABLEKS                       R14 R13 K10 ["testId"]
      106 DUPTABLE                         R14 K31 [{"DialogInner"}]
      107 GETUPVAL                         R16 3
      108 GETTABLEKS                       R15 R16 K7 ["createElement"]
      110 GETUPVAL                         R16 7
      111 GETUPVAL                         R17 12
      112 MOVE                             R18 R1
      113 DUPTABLE                         R19 K38 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      114 GETTABLEKS                       R21 R2 K3 ["inner"]
      116 GETTABLEKS                       R20 R21 K8 ["tag"]
      118 SETTABLEKS                       R20 R19 K8 ["tag"]
      120 GETTABLEKS                       R20 R1 K39 ["forwardRef"]
      122 SETTABLEKS                       R20 R19 K32 ["ref"]
      124 DUPTABLE                         R20 K41 [{"MaxSize"}]
      125 GETIMPORT                        R21 K43 [Vector2.new]
      127 MOVE                             R22 R3
      128 LOADK                            R23 K44 [∞]
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K40 ["MaxSize"]
      132 SETTABLEKS                       R20 R19 K33 ["sizeConstraint"]
      134 DUPTABLE                         R20 K46 [{"affordance"}]
      135 GETUPVAL                         R22 13
      136 GETTABLEKS                       R21 R22 K47 ["None"]
      138 SETTABLEKS                       R21 R20 K45 ["affordance"]
      140 SETTABLEKS                       R20 R19 K34 ["stateLayer"]
      142 GETUPVAL                         R22 14
      143 GETTABLEKS                       R21 R22 K48 ["FoundationDialogUpdateSelection"]
      145 JUMPIFNOT                        R21 ; [+4]
      146 GETUPVAL                         R21 15
      147 GETTABLEKS                       R20 R21 K49 ["nonSelectable"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R20
      151 SETTABLEKS                       R20 R19 K35 ["selection"]
      153 GETUPVAL                         R22 14
      154 GETTABLEKS                       R21 R22 K48 ["FoundationDialogUpdateSelection"]
      156 JUMPIFNOT                        R21 ; [+4]
      157 GETUPVAL                         R21 15
      158 GETTABLEKS                       R20 R21 K50 ["isolatedSelectionGroup"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R20
      162 SETTABLEKS                       R20 R19 K36 ["selectionGroup"]
      164 GETUPVAL                         R21 0
      165 GETTABLEKS                       R20 R21 K51 ["noop"]
      167 SETTABLEKS                       R20 R19 K37 ["onActivated"]
      169 CALL                             R17 2 1
      170 DUPTABLE                         R18 K54 [{"CloseAffordance", "DialogBody"}]
      171 GETTABLEKS                       R20 R1 K55 ["onClose"]
      173 JUMPIFNOT                        R20 ; [+46]
      174 GETUPVAL                         R20 3
      175 GETTABLEKS                       R19 R20 K7 ["createElement"]
      177 GETUPVAL                         R20 16
      178 DUPTABLE                         R21 K58 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      179 GETTABLEKS                       R22 R1 K55 ["onClose"]
      181 SETTABLEKS                       R22 R21 K37 ["onActivated"]
      183 GETIMPORT                        R22 K60 [UDim2.new]
      185 LOADN                            R23 1
      186 GETTABLEKS                       R26 R2 K61 ["closeAffordance"]
      188 GETTABLEKS                       R25 R26 K62 ["offset"]
      190 MINUS                            R24 R25
      191 LOADN                            R25 0
      192 GETTABLEKS                       R27 R2 K61 ["closeAffordance"]
      194 GETTABLEKS                       R26 R27 K62 ["offset"]
      196 CALL                             R22 4 1
      197 SETTABLEKS                       R22 R21 K56 ["Position"]
      199 GETIMPORT                        R22 K43 [Vector2.new]
      201 LOADN                            R23 1
      202 LOADN                            R24 0
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K57 ["AnchorPoint"]
      206 LOADN                            R22 2
      207 SETTABLEKS                       R22 R21 K9 ["ZIndex"]
      209 LOADK                            R23 K63 ["%*--close-affordance"]
      210 GETTABLEKS                       R25 R1 K10 ["testId"]
      212 NAMECALL                         R23 R23 K15 ["format"]
      214 CALL                             R23 2 1
      215 MOVE                             R22 R23
      216 SETTABLEKS                       R22 R21 K10 ["testId"]
      218 CALL                             R19 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R19
      221 SETTABLEKS                       R19 R18 K52 ["CloseAffordance"]
      223 GETUPVAL                         R20 3
      224 GETTABLEKS                       R19 R20 K7 ["createElement"]
      226 GETUPVAL                         R20 7
      227 DUPTABLE                         R21 K64 [{"tag", "ref", "testId"}]
      228 GETTABLEKS                       R23 R2 K65 ["body"]
      230 GETTABLEKS                       R22 R23 K8 ["tag"]
      232 SETTABLEKS                       R22 R21 K8 ["tag"]
      234 SETTABLEKS                       R4 R21 K32 ["ref"]
      236 LOADK                            R23 K66 ["%*--body"]
      237 GETTABLEKS                       R25 R1 K10 ["testId"]
      239 NAMECALL                         R23 R23 K15 ["format"]
      241 CALL                             R23 2 1
      242 MOVE                             R22 R23
      243 SETTABLEKS                       R22 R21 K10 ["testId"]
      245 GETTABLEKS                       R22 R1 K67 ["children"]
      247 CALL                             R19 3 1
      248 SETTABLEKS                       R19 R18 K53 ["DialogBody"]
      250 CALL                             R15 3 1
      251 SETTABLEKS                       R15 R14 K30 ["DialogInner"]
      253 CALL                             R11 3 1
      254 SETTABLEKS                       R11 R10 K16 ["Shadow"]
      256 CALL                             R7 3 1
      257 GETUPVAL                         R10 14
      258 GETTABLEKS                       R9 R10 K68 ["FoundationDialogRootZIndex"]
      260 JUMPIFNOT                        R9 ; [+60]
      261 GETUPVAL                         R9 3
      262 GETTABLEKS                       R8 R9 K7 ["createElement"]
      264 GETUPVAL                         R10 3
      265 GETTABLEKS                       R9 R10 K69 ["Fragment"]
      267 LOADNIL                          R10
      268 DUPTABLE                         R11 K71 [{"Backdrop"}]
      269 GETTABLEKS                       R13 R1 K13 ["hasBackdrop"]
      271 JUMPIFNOT                        R13 ; [+44]
      272 GETUPVAL                         R13 3
      273 GETTABLEKS                       R12 R13 K7 ["createElement"]
      275 GETUPVAL                         R13 7
      276 DUPTABLE                         R14 K73 [{"tag", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      277 LOADK                            R15 K74 ["size-full-full"]
      278 SETTABLEKS                       R15 R14 K8 ["tag"]
      280 DUPTABLE                         R15 K46 [{"affordance"}]
      281 GETUPVAL                         R17 13
      282 GETTABLEKS                       R16 R17 K47 ["None"]
      284 SETTABLEKS                       R16 R15 K45 ["affordance"]
      286 SETTABLEKS                       R15 R14 K34 ["stateLayer"]
      288 NEWCLOSURE                       R15 P0
      289 CAPTURE                          VAL R1
      290 CAPTURE                          UPVAL U17
      291 SETTABLEKS                       R15 R14 K37 ["onActivated"]
      293 GETTABLEKS                       R16 R2 K75 ["backdrop"]
      295 GETTABLEKS                       R15 R16 K72 ["backgroundStyle"]
      297 SETTABLEKS                       R15 R14 K72 ["backgroundStyle"]
      299 GETUPVAL                         R15 8
      300 SETTABLEKS                       R15 R14 K9 ["ZIndex"]
      302 LOADK                            R16 K76 ["%*--backdrop"]
      303 GETTABLEKS                       R18 R1 K10 ["testId"]
      305 NAMECALL                         R16 R16 K15 ["format"]
      307 CALL                             R16 2 1
      308 MOVE                             R15 R16
      309 SETTABLEKS                       R15 R14 K10 ["testId"]
      311 DUPTABLE                         R15 K78 [{"DialogSurface"}]
      312 SETTABLEKS                       R7 R15 K77 ["DialogSurface"]
      314 CALL                             R12 3 1
      315 JUMP                             ; [+1]
      316 MOVE                             R12 R7
      317 SETTABLEKS                       R12 R11 K70 ["Backdrop"]
      319 CALL                             R8 3 1
      320 JUMP                             ; [+315]
      321 GETUPVAL                         R9 3
      322 GETTABLEKS                       R8 R9 K7 ["createElement"]
      324 GETUPVAL                         R10 3
      325 GETTABLEKS                       R9 R10 K69 ["Fragment"]
      327 LOADNIL                          R10
      328 DUPTABLE                         R11 K80 [{"Backdrop", "DialogShadowWrapper"}]
      329 GETTABLEKS                       R13 R1 K13 ["hasBackdrop"]
      331 JUMPIFNOT                        R13 ; [+41]
      332 GETUPVAL                         R13 3
      333 GETTABLEKS                       R12 R13 K7 ["createElement"]
      335 GETUPVAL                         R13 7
      336 DUPTABLE                         R14 K73 [{"tag", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      337 LOADK                            R15 K74 ["size-full-full"]
      338 SETTABLEKS                       R15 R14 K8 ["tag"]
      340 DUPTABLE                         R15 K46 [{"affordance"}]
      341 GETUPVAL                         R17 13
      342 GETTABLEKS                       R16 R17 K47 ["None"]
      344 SETTABLEKS                       R16 R15 K45 ["affordance"]
      346 SETTABLEKS                       R15 R14 K34 ["stateLayer"]
      348 NEWCLOSURE                       R15 P1
      349 CAPTURE                          VAL R1
      350 CAPTURE                          UPVAL U17
      351 SETTABLEKS                       R15 R14 K37 ["onActivated"]
      353 GETTABLEKS                       R16 R2 K75 ["backdrop"]
      355 GETTABLEKS                       R15 R16 K72 ["backgroundStyle"]
      357 SETTABLEKS                       R15 R14 K72 ["backgroundStyle"]
      359 LOADN                            R15 2
      360 SETTABLEKS                       R15 R14 K9 ["ZIndex"]
      362 LOADK                            R16 K76 ["%*--backdrop"]
      363 GETTABLEKS                       R18 R1 K10 ["testId"]
      365 NAMECALL                         R16 R16 K15 ["format"]
      367 CALL                             R16 2 1
      368 MOVE                             R15 R16
      369 SETTABLEKS                       R15 R14 K10 ["testId"]
      371 CALL                             R12 2 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R12
      374 SETTABLEKS                       R12 R11 K70 ["Backdrop"]
      376 GETUPVAL                         R13 3
      377 GETTABLEKS                       R12 R13 K7 ["createElement"]
      379 GETUPVAL                         R13 7
      380 DUPTABLE                         R14 K81 [{"tag", "ZIndex"}]
      381 GETTABLEKS                       R16 R2 K12 ["container"]
      383 GETTABLEKS                       R15 R16 K8 ["tag"]
      385 SETTABLEKS                       R15 R14 K8 ["tag"]
      387 LOADN                            R15 2
      388 SETTABLEKS                       R15 R14 K9 ["ZIndex"]
      390 DUPTABLE                         R15 K17 [{"Shadow"}]
      391 GETUPVAL                         R17 3
      392 GETTABLEKS                       R16 R17 K7 ["createElement"]
      394 GETUPVAL                         R17 9
      395 DUPTABLE                         R18 K83 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      396 GETUPVAL                         R19 10
      397 SETTABLEKS                       R19 R18 K18 ["Image"]
      399 DUPCLOSURE                       R21 K84 [PROTO_2]
      400 CAPTURE                          UPVAL U11
      401 NAMECALL                         R19 R5 K85 ["map"]
      403 CALL                             R19 2 1
      404 SETTABLEKS                       R19 R18 K82 ["Size"]
      406 DUPTABLE                         R19 K25 [{"center", "scale"}]
      407 GETIMPORT                        R20 K28 [Rect.new]
      409 GETUPVAL                         R21 11
      410 GETUPVAL                         R22 11
      411 GETUPVAL                         R23 11
      412 GETUPVAL                         R24 11
      413 CALL                             R20 4 1
      414 SETTABLEKS                       R20 R19 K23 ["center"]
      416 LOADN                            R20 2
      417 SETTABLEKS                       R20 R19 K24 ["scale"]
      419 SETTABLEKS                       R19 R18 K19 ["slice"]
      421 GETTABLEKS                       R20 R2 K22 ["shadow"]
      423 GETTABLEKS                       R19 R20 K20 ["imageStyle"]
      425 SETTABLEKS                       R19 R18 K20 ["imageStyle"]
      427 LOADK                            R20 K29 ["%*--shadow"]
      428 GETTABLEKS                       R22 R1 K10 ["testId"]
      430 NAMECALL                         R20 R20 K15 ["format"]
      432 CALL                             R20 2 1
      433 MOVE                             R19 R20
      434 SETTABLEKS                       R19 R18 K10 ["testId"]
      436 CALL                             R16 2 1
      437 SETTABLEKS                       R16 R15 K16 ["Shadow"]
      439 CALL                             R12 3 1
      440 SETTABLEKS                       R12 R11 K79 ["DialogShadowWrapper"]
      442 DUPTABLE                         R12 K87 [{"Dialog"}]
      443 GETUPVAL                         R14 3
      444 GETTABLEKS                       R13 R14 K7 ["createElement"]
      446 GETUPVAL                         R14 7
      447 DUPTABLE                         R15 K81 [{"tag", "ZIndex"}]
      448 GETTABLEKS                       R17 R2 K12 ["container"]
      450 GETTABLEKS                       R16 R17 K8 ["tag"]
      452 SETTABLEKS                       R16 R15 K8 ["tag"]
      454 LOADN                            R16 3
      455 SETTABLEKS                       R16 R15 K9 ["ZIndex"]
      457 DUPTABLE                         R16 K90 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      458 GETUPVAL                         R18 3
      459 GETTABLEKS                       R17 R18 K7 ["createElement"]
      461 GETUPVAL                         R18 7
      462 DUPTABLE                         R19 K91 [{"tag", "LayoutOrder"}]
      463 LOADK                            R20 K92 ["fill"]
      464 SETTABLEKS                       R20 R19 K8 ["tag"]
      466 LOADN                            R20 0
      467 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
      469 CALL                             R17 2 1
      470 SETTABLEKS                       R17 R16 K88 ["DialogFlexStart"]
      472 GETUPVAL                         R18 3
      473 GETTABLEKS                       R17 R18 K7 ["createElement"]
      475 GETUPVAL                         R18 7
      476 GETUPVAL                         R19 12
      477 MOVE                             R20 R1
      478 DUPTABLE                         R21 K38 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      479 GETTABLEKS                       R23 R2 K3 ["inner"]
      481 GETTABLEKS                       R22 R23 K8 ["tag"]
      483 SETTABLEKS                       R22 R21 K8 ["tag"]
      485 GETTABLEKS                       R22 R1 K39 ["forwardRef"]
      487 SETTABLEKS                       R22 R21 K32 ["ref"]
      489 DUPTABLE                         R22 K41 [{"MaxSize"}]
      490 GETIMPORT                        R23 K43 [Vector2.new]
      492 MOVE                             R24 R3
      493 LOADK                            R25 K44 [∞]
      494 CALL                             R23 2 1
      495 SETTABLEKS                       R23 R22 K40 ["MaxSize"]
      497 SETTABLEKS                       R22 R21 K33 ["sizeConstraint"]
      499 DUPTABLE                         R22 K46 [{"affordance"}]
      500 GETUPVAL                         R24 13
      501 GETTABLEKS                       R23 R24 K47 ["None"]
      503 SETTABLEKS                       R23 R22 K45 ["affordance"]
      505 SETTABLEKS                       R22 R21 K34 ["stateLayer"]
      507 GETUPVAL                         R24 14
      508 GETTABLEKS                       R23 R24 K48 ["FoundationDialogUpdateSelection"]
      510 JUMPIFNOT                        R23 ; [+4]
      511 GETUPVAL                         R23 15
      512 GETTABLEKS                       R22 R23 K49 ["nonSelectable"]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R22
      516 SETTABLEKS                       R22 R21 K35 ["selection"]
      518 GETUPVAL                         R24 14
      519 GETTABLEKS                       R23 R24 K48 ["FoundationDialogUpdateSelection"]
      521 JUMPIFNOT                        R23 ; [+4]
      522 GETUPVAL                         R23 15
      523 GETTABLEKS                       R22 R23 K50 ["isolatedSelectionGroup"]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R22
      527 SETTABLEKS                       R22 R21 K36 ["selectionGroup"]
      529 GETUPVAL                         R23 0
      530 GETTABLEKS                       R22 R23 K51 ["noop"]
      532 SETTABLEKS                       R22 R21 K37 ["onActivated"]
      534 CALL                             R19 2 1
      535 DUPTABLE                         R20 K54 [{"CloseAffordance", "DialogBody"}]
      536 GETTABLEKS                       R22 R1 K55 ["onClose"]
      538 JUMPIFNOT                        R22 ; [+46]
      539 GETUPVAL                         R22 3
      540 GETTABLEKS                       R21 R22 K7 ["createElement"]
      542 GETUPVAL                         R22 16
      543 DUPTABLE                         R23 K58 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      544 GETTABLEKS                       R24 R1 K55 ["onClose"]
      546 SETTABLEKS                       R24 R23 K37 ["onActivated"]
      548 GETIMPORT                        R24 K60 [UDim2.new]
      550 LOADN                            R25 1
      551 GETTABLEKS                       R28 R2 K61 ["closeAffordance"]
      553 GETTABLEKS                       R27 R28 K62 ["offset"]
      555 MINUS                            R26 R27
      556 LOADN                            R27 0
      557 GETTABLEKS                       R29 R2 K61 ["closeAffordance"]
      559 GETTABLEKS                       R28 R29 K62 ["offset"]
      561 CALL                             R24 4 1
      562 SETTABLEKS                       R24 R23 K56 ["Position"]
      564 GETIMPORT                        R24 K43 [Vector2.new]
      566 LOADN                            R25 1
      567 LOADN                            R26 0
      568 CALL                             R24 2 1
      569 SETTABLEKS                       R24 R23 K57 ["AnchorPoint"]
      571 LOADN                            R24 2
      572 SETTABLEKS                       R24 R23 K9 ["ZIndex"]
      574 LOADK                            R25 K63 ["%*--close-affordance"]
      575 GETTABLEKS                       R27 R1 K10 ["testId"]
      577 NAMECALL                         R25 R25 K15 ["format"]
      579 CALL                             R25 2 1
      580 MOVE                             R24 R25
      581 SETTABLEKS                       R24 R23 K10 ["testId"]
      583 CALL                             R21 2 1
      584 JUMP                             ; [+1]
      585 LOADNIL                          R21
      586 SETTABLEKS                       R21 R20 K52 ["CloseAffordance"]
      588 GETUPVAL                         R22 3
      589 GETTABLEKS                       R21 R22 K7 ["createElement"]
      591 GETUPVAL                         R22 7
      592 DUPTABLE                         R23 K64 [{"tag", "ref", "testId"}]
      593 GETTABLEKS                       R25 R2 K65 ["body"]
      595 GETTABLEKS                       R24 R25 K8 ["tag"]
      597 SETTABLEKS                       R24 R23 K8 ["tag"]
      599 SETTABLEKS                       R4 R23 K32 ["ref"]
      601 LOADK                            R25 K66 ["%*--body"]
      602 GETTABLEKS                       R27 R1 K10 ["testId"]
      604 NAMECALL                         R25 R25 K15 ["format"]
      606 CALL                             R25 2 1
      607 MOVE                             R24 R25
      608 SETTABLEKS                       R24 R23 K10 ["testId"]
      610 GETTABLEKS                       R24 R1 K67 ["children"]
      612 CALL                             R21 3 1
      613 SETTABLEKS                       R21 R20 K53 ["DialogBody"]
      615 CALL                             R17 3 1
      616 SETTABLEKS                       R17 R16 K30 ["DialogInner"]
      618 GETUPVAL                         R18 3
      619 GETTABLEKS                       R17 R18 K7 ["createElement"]
      621 GETUPVAL                         R18 7
      622 DUPTABLE                         R19 K91 [{"tag", "LayoutOrder"}]
      623 LOADK                            R20 K92 ["fill"]
      624 SETTABLEKS                       R20 R19 K8 ["tag"]
      626 LOADN                            R20 2
      627 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
      629 CALL                             R17 2 1
      630 SETTABLEKS                       R17 R16 K89 ["DialogFlexEnd"]
      632 CALL                             R13 3 1
      633 SETTABLEKS                       R13 R12 K86 ["Dialog"]
      635 CALL                             R8 4 1
      636 GETTABLEKS                       R9 R1 K93 ["disablePortal"]
      638 JUMPIF                           R9 ; [+2]
      639 JUMPIFNOTEQKNIL                  R6 ; [+2]
      641 RETURN                           R8 1
      642 GETUPVAL                         R10 18
      643 GETTABLEKS                       R9 R10 K94 ["createPortal"]
      645 MOVE                             R10 R8
      646 MOVE                             R11 R6
      647 CALL                             R9 2 -1
      648 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R9 R10 K7 ["assign"]
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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Constants"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R8 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R8 K12 ["View"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R9 R0 K11 ["Components"]
       40 GETTABLEKS                       R8 R9 K13 ["CloseAffordance"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Components"]
       47 GETTABLEKS                       R9 R10 K14 ["Image"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R12 R0 K15 ["Providers"]
       54 GETTABLEKS                       R11 R12 K16 ["Overlay"]
       56 GETTABLEKS                       R10 R11 K17 ["useOverlay"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K18 ["Enums"]
       63 GETTABLEKS                       R11 R12 K19 ["DialogSize"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K18 ["Enums"]
       70 GETTABLEKS                       R12 R13 K20 ["OnCloseCallbackReason"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K18 ["Enums"]
       77 GETTABLEKS                       R13 R14 K21 ["StateLayerAffordance"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K22 ["Utility"]
       84 GETTABLEKS                       R14 R15 K23 ["Flags"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K22 ["Utility"]
       91 GETTABLEKS                       R15 R16 K24 ["withCommonProps"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R17 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R17 K25 ["withDefaults"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R18 R0 K22 ["Utility"]
      105 GETTABLEKS                       R17 R18 K26 ["useScaledValue"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETIMPORT                        R20 K1 [script]
      112 GETTABLEKS                       R19 R20 K4 ["Parent"]
      114 GETTABLEKS                       R18 R19 K27 ["Types"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R19 K6 [require]
      119 GETIMPORT                        R22 K1 [script]
      121 GETTABLEKS                       R21 R22 K4 ["Parent"]
      123 GETTABLEKS                       R20 R21 K28 ["useDialogVariants"]
      125 CALL                             R19 1 1
      126 GETTABLEKS                       R18 R19 K28 ["useDialogVariants"]
      128 GETIMPORT                        R19 K6 [require]
      130 GETIMPORT                        R22 K1 [script]
      132 GETTABLEKS                       R21 R22 K4 ["Parent"]
      134 GETTABLEKS                       R20 R21 K29 ["useDialogSize"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K6 [require]
      139 GETIMPORT                        R23 K1 [script]
      141 GETTABLEKS                       R22 R23 K4 ["Parent"]
      143 GETTABLEKS                       R21 R22 K30 ["useDialogResponsiveSize"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K6 [require]
      148 GETIMPORT                        R24 K1 [script]
      150 GETTABLEKS                       R23 R24 K4 ["Parent"]
      152 GETTABLEKS                       R22 R23 K31 ["DialogProvider"]
      154 CALL                             R21 1 1
      155 DUPTABLE                         R22 K36 [{"size", "disablePortal", "hasBackdrop", "testId"}]
      156 GETTABLEKS                       R23 R10 K37 ["Medium"]
      158 SETTABLEKS                       R23 R22 K32 ["size"]
      160 LOADB                            R23 1
      161 SETTABLEKS                       R23 R22 K33 ["disablePortal"]
      163 LOADB                            R23 0
      164 SETTABLEKS                       R23 R22 K34 ["hasBackdrop"]
      166 LOADK                            R23 K38 ["--foundation-dialog"]
      167 SETTABLEKS                       R23 R22 K35 ["testId"]
      169 GETTABLEKS                       R23 R5 K39 ["SHADOW_IMAGE"]
      171 GETTABLEKS                       R24 R5 K40 ["SHADOW_SIZE"]
      173 GETTABLEKS                       R26 R13 K41 ["FoundationDialogUpdateZIndex"]
      175 JUMPIFNOT                        R26 ; [+2]
      176 LOADN                            R25 6
      177 JUMP                             ; [+1]
      178 LOADN                            R25 3
      179 DUPCLOSURE                       R26 K42 [PROTO_3]
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R3
      199 DUPCLOSURE                       R27 K43 [PROTO_4]
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R26
      205 CAPTURE                          VAL R4
      206 GETTABLEKS                       R28 R2 K44 ["memo"]
      208 GETTABLEKS                       R29 R2 K45 ["forwardRef"]
      210 MOVE                             R30 R27
      211 CALL                             R29 1 -1
      212 CALL                             R28 -1 -1
      213 RETURN                           R28 -1
