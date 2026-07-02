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
       39 JUMPIF                           R9 ; [+241]
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
       55 JUMP                             ; [+8]
       56 GETUPVAL                         R12 9
       57 GETTABLEKS                       R12 R12 K20 ["FoundationElevationSystem"]
       59 JUMPIFNOT                        R12 ; [+3]
       60 GETTABLEKS                       R11 R7 K21 ["zIndex"]
       62 JUMP                             ; [+1]
       63 GETUPVAL                         R11 11
       64 SETTABLEKS                       R11 R10 K15 ["ZIndex"]
       66 LOADK                            R12 K22 ["%*--surface"]
       67 GETTABLEKS                       R14 R1 K16 ["testId"]
       69 NAMECALL                         R12 R12 K23 ["format"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 SETTABLEKS                       R11 R10 K16 ["testId"]
       75 DUPTABLE                         R11 K25 [{"Shadow"}]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K13 ["createElement"]
       79 GETUPVAL                         R13 12
       80 DUPTABLE                         R14 K29 [{"Image", "tag", "slice", "imageStyle", "testId"}]
       81 GETUPVAL                         R15 13
       82 SETTABLEKS                       R15 R14 K26 ["Image"]
       84 GETTABLEKS                       R15 R2 K30 ["shadow"]
       86 GETTABLEKS                       R15 R15 K14 ["tag"]
       88 SETTABLEKS                       R15 R14 K14 ["tag"]
       90 DUPTABLE                         R15 K34 [{["center"], ["scale"] = 2}]
       91 GETIMPORT                        R16 K37 [Rect.new]
       93 GETUPVAL                         R17 14
       94 GETUPVAL                         R18 14
       95 GETUPVAL                         R19 14
       96 GETUPVAL                         R20 14
       97 CALL                             R16 4 1
       98 SETTABLEKS                       R16 R15 K31 ["center"]
      100 SETTABLEKS                       R15 R14 K27 ["slice"]
      102 GETTABLEKS                       R15 R2 K30 ["shadow"]
      104 GETTABLEKS                       R15 R15 K28 ["imageStyle"]
      106 SETTABLEKS                       R15 R14 K28 ["imageStyle"]
      108 LOADK                            R16 K38 ["%*--shadow"]
      109 GETTABLEKS                       R18 R1 K16 ["testId"]
      111 NAMECALL                         R16 R16 K23 ["format"]
      113 CALL                             R16 2 1
      114 MOVE                             R15 R16
      115 SETTABLEKS                       R15 R14 K16 ["testId"]
      117 DUPTABLE                         R15 K40 [{"DialogInner"}]
      118 GETUPVAL                         R16 3
      119 GETTABLEKS                       R16 R16 K13 ["createElement"]
      121 GETUPVAL                         R17 10
      122 GETUPVAL                         R18 15
      123 MOVE                             R19 R1
      124 DUPTABLE                         R20 K47 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      125 GETTABLEKS                       R21 R2 K4 ["inner"]
      127 GETTABLEKS                       R21 R21 K14 ["tag"]
      129 SETTABLEKS                       R21 R20 K14 ["tag"]
      131 GETTABLEKS                       R21 R1 K48 ["forwardRef"]
      133 SETTABLEKS                       R21 R20 K41 ["ref"]
      135 DUPTABLE                         R21 K50 [{"MaxSize"}]
      136 GETIMPORT                        R22 K52 [Vector2.new]
      138 MOVE                             R23 R3
      139 LOADK                            R24 K53 [∞]
      140 CALL                             R22 2 1
      141 SETTABLEKS                       R22 R21 K49 ["MaxSize"]
      143 SETTABLEKS                       R21 R20 K42 ["sizeConstraint"]
      145 DUPTABLE                         R21 K55 [{"affordance"}]
      146 GETUPVAL                         R22 16
      147 GETTABLEKS                       R22 R22 K56 ["None"]
      149 SETTABLEKS                       R22 R21 K54 ["affordance"]
      151 SETTABLEKS                       R21 R20 K43 ["stateLayer"]
      153 GETUPVAL                         R22 9
      154 GETTABLEKS                       R22 R22 K57 ["FoundationDialogUpdateSelection"]
      156 JUMPIFNOT                        R22 ; [+4]
      157 GETUPVAL                         R21 17
      158 GETTABLEKS                       R21 R21 K58 ["nonSelectable"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R21
      162 SETTABLEKS                       R21 R20 K44 ["selection"]
      164 GETUPVAL                         R22 9
      165 GETTABLEKS                       R22 R22 K57 ["FoundationDialogUpdateSelection"]
      167 JUMPIFNOT                        R22 ; [+4]
      168 GETUPVAL                         R21 17
      169 GETTABLEKS                       R21 R21 K59 ["isolatedSelectionGroup"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R21
      173 SETTABLEKS                       R21 R20 K45 ["selectionGroup"]
      175 GETUPVAL                         R21 0
      176 GETTABLEKS                       R21 R21 K60 ["noop"]
      178 SETTABLEKS                       R21 R20 K46 ["onActivated"]
      180 CALL                             R18 2 1
      181 DUPTABLE                         R19 K63 [{"CloseAffordance", "DialogBody"}]
      182 GETTABLEKS                       R21 R1 K64 ["onClose"]
      184 JUMPIFNOT                        R21 ; [+43]
      185 GETUPVAL                         R20 3
      186 GETTABLEKS                       R20 R20 K13 ["createElement"]
      188 GETUPVAL                         R21 18
      189 DUPTABLE                         R22 K67 [{["onActivated"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      190 GETTABLEKS                       R23 R1 K64 ["onClose"]
      192 SETTABLEKS                       R23 R22 K46 ["onActivated"]
      194 GETIMPORT                        R23 K69 [UDim2.new]
      196 LOADN                            R24 1
      197 GETTABLEKS                       R26 R2 K70 ["closeAffordance"]
      199 GETTABLEKS                       R26 R26 K71 ["offset"]
      201 MINUS                            R25 R26
      202 LOADN                            R26 0
      203 GETTABLEKS                       R27 R2 K70 ["closeAffordance"]
      205 GETTABLEKS                       R27 R27 K71 ["offset"]
      207 CALL                             R23 4 1
      208 SETTABLEKS                       R23 R22 K65 ["Position"]
      210 GETIMPORT                        R23 K52 [Vector2.new]
      212 LOADN                            R24 1
      213 LOADN                            R25 0
      214 CALL                             R23 2 1
      215 SETTABLEKS                       R23 R22 K66 ["AnchorPoint"]
      217 LOADK                            R24 K72 ["%*--close-affordance"]
      218 GETTABLEKS                       R26 R1 K16 ["testId"]
      220 NAMECALL                         R24 R24 K23 ["format"]
      222 CALL                             R24 2 1
      223 MOVE                             R23 R24
      224 SETTABLEKS                       R23 R22 K16 ["testId"]
      226 CALL                             R20 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R20
      229 SETTABLEKS                       R20 R19 K61 ["CloseAffordance"]
      231 GETUPVAL                         R20 3
      232 GETTABLEKS                       R20 R20 K13 ["createElement"]
      234 GETUPVAL                         R21 10
      235 DUPTABLE                         R22 K73 [{"tag", "ref", "testId"}]
      236 GETTABLEKS                       R23 R2 K74 ["body"]
      238 GETTABLEKS                       R23 R23 K14 ["tag"]
      240 SETTABLEKS                       R23 R22 K14 ["tag"]
      242 SETTABLEKS                       R4 R22 K41 ["ref"]
      244 LOADK                            R24 K75 ["%*--body"]
      245 GETTABLEKS                       R26 R1 K16 ["testId"]
      247 NAMECALL                         R24 R24 K23 ["format"]
      249 CALL                             R24 2 1
      250 MOVE                             R23 R24
      251 SETTABLEKS                       R23 R22 K16 ["testId"]
      253 GETUPVAL                         R24 9
      254 GETTABLEKS                       R24 R24 K20 ["FoundationElevationSystem"]
      256 JUMPIFNOT                        R24 ; [+11]
      257 GETUPVAL                         R23 3
      258 GETTABLEKS                       R23 R23 K13 ["createElement"]
      260 GETUPVAL                         R24 19
      261 DUPTABLE                         R25 K77 [{"owner"}]
      262 SETTABLEKS                       R7 R25 K76 ["owner"]
      264 GETTABLEKS                       R26 R1 K78 ["children"]
      266 CALL                             R23 3 1
      267 JUMP                             ; [+2]
      268 GETTABLEKS                       R23 R1 K78 ["children"]
      270 CALL                             R20 3 1
      271 SETTABLEKS                       R20 R19 K62 ["DialogBody"]
      273 CALL                             R16 3 1
      274 SETTABLEKS                       R16 R15 K39 ["DialogInner"]
      276 CALL                             R12 3 1
      277 SETTABLEKS                       R12 R11 K24 ["Shadow"]
      279 CALL                             R8 3 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R8
      282 GETUPVAL                         R10 9
      283 GETTABLEKS                       R10 R10 K79 ["FoundationDialogRootZIndex"]
      285 JUMPIFNOT                        R10 ; [+68]
      286 GETUPVAL                         R10 9
      287 GETTABLEKS                       R10 R10 K12 ["FoundationDialogOversizedBackdrop"]
      289 JUMPIF                           R10 ; [+64]
      290 GETUPVAL                         R9 3
      291 GETTABLEKS                       R9 R9 K13 ["createElement"]
      293 GETUPVAL                         R10 3
      294 GETTABLEKS                       R10 R10 K80 ["Fragment"]
      296 LOADNIL                          R11
      297 DUPTABLE                         R12 K82 [{"Backdrop"}]
      298 GETTABLEKS                       R14 R1 K19 ["hasBackdrop"]
      300 JUMPIFNOT                        R14 ; [+48]
      301 GETUPVAL                         R13 3
      302 GETTABLEKS                       R13 R13 K13 ["createElement"]
      304 GETUPVAL                         R14 10
      305 DUPTABLE                         R15 K85 [{["tag"] = "size-full-full", ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"], ["testId"]}]
      306 DUPTABLE                         R16 K55 [{"affordance"}]
      307 GETUPVAL                         R17 16
      308 GETTABLEKS                       R17 R17 K56 ["None"]
      310 SETTABLEKS                       R17 R16 K54 ["affordance"]
      312 SETTABLEKS                       R16 R15 K43 ["stateLayer"]
      314 NEWCLOSURE                       R16 P0
      315 CAPTURE                          VAL R1
      316 CAPTURE                          UPVAL U20
      317 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      319 GETTABLEKS                       R16 R2 K86 ["backdrop"]
      321 GETTABLEKS                       R16 R16 K84 ["backgroundStyle"]
      323 SETTABLEKS                       R16 R15 K84 ["backgroundStyle"]
      325 GETUPVAL                         R17 9
      326 GETTABLEKS                       R17 R17 K20 ["FoundationElevationSystem"]
      328 JUMPIFNOT                        R17 ; [+3]
      329 GETTABLEKS                       R16 R7 K21 ["zIndex"]
      331 JUMP                             ; [+1]
      332 GETUPVAL                         R16 11
      333 SETTABLEKS                       R16 R15 K15 ["ZIndex"]
      335 LOADK                            R17 K87 ["%*--backdrop"]
      336 GETTABLEKS                       R19 R1 K16 ["testId"]
      338 NAMECALL                         R17 R17 K23 ["format"]
      340 CALL                             R17 2 1
      341 MOVE                             R16 R17
      342 SETTABLEKS                       R16 R15 K16 ["testId"]
      344 DUPTABLE                         R16 K89 [{"DialogSurface"}]
      345 SETTABLEKS                       R8 R16 K88 ["DialogSurface"]
      347 CALL                             R13 3 1
      348 JUMP                             ; [+1]
      349 MOVE                             R13 R8
      350 SETTABLEKS                       R13 R12 K81 ["Backdrop"]
      352 CALL                             R9 3 1
      353 JUMP                             ; [+353]
      354 GETUPVAL                         R9 3
      355 GETTABLEKS                       R9 R9 K13 ["createElement"]
      357 GETUPVAL                         R11 9
      358 GETTABLEKS                       R11 R11 K79 ["FoundationDialogRootZIndex"]
      360 JUMPIFNOT                        R11 ; [+2]
      361 GETUPVAL                         R10 10
      362 JUMP                             ; [+3]
      363 GETUPVAL                         R10 3
      364 GETTABLEKS                       R10 R10 K80 ["Fragment"]
      366 GETUPVAL                         R12 9
      367 GETTABLEKS                       R12 R12 K79 ["FoundationDialogRootZIndex"]
      369 JUMPIFNOT                        R12 ; [+21]
      370 DUPTABLE                         R11 K91 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      371 GETUPVAL                         R13 9
      372 GETTABLEKS                       R13 R13 K20 ["FoundationElevationSystem"]
      374 JUMPIFNOT                        R13 ; [+3]
      375 GETTABLEKS                       R12 R7 K21 ["zIndex"]
      377 JUMP                             ; [+1]
      378 GETUPVAL                         R12 11
      379 SETTABLEKS                       R12 R11 K15 ["ZIndex"]
      381 LOADK                            R13 K92 ["%*--container"]
      382 GETTABLEKS                       R15 R1 K16 ["testId"]
      384 NAMECALL                         R13 R13 K23 ["format"]
      386 CALL                             R13 2 1
      387 MOVE                             R12 R13
      388 SETTABLEKS                       R12 R11 K16 ["testId"]
      390 JUMP                             ; [+1]
      391 LOADNIL                          R11
      392 DUPTABLE                         R12 K94 [{"Backdrop", "DialogShadowWrapper"}]
      393 GETTABLEKS                       R14 R1 K19 ["hasBackdrop"]
      395 JUMPIFNOT                        R14 ; [+57]
      396 GETUPVAL                         R13 3
      397 GETTABLEKS                       R13 R13 K13 ["createElement"]
      399 GETUPVAL                         R14 10
      400 DUPTABLE                         R15 K96 [{["tag"], ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
      401 GETUPVAL                         R17 9
      402 GETTABLEKS                       R17 R17 K12 ["FoundationDialogOversizedBackdrop"]
      404 JUMPIFNOT                        R17 ; [+2]
      405 LOADK                            R16 K97 ["position-center-center anchor-center-center"]
      406 JUMP                             ; [+1]
      407 LOADK                            R16 K83 ["size-full-full"]
      408 SETTABLEKS                       R16 R15 K14 ["tag"]
      410 GETUPVAL                         R17 9
      411 GETTABLEKS                       R17 R17 K12 ["FoundationDialogOversizedBackdrop"]
      413 JUMPIFNOT                        R17 ; [+6]
      414 GETIMPORT                        R16 K99 [UDim2.fromScale]
      416 LOADN                            R17 2
      417 LOADN                            R18 2
      418 CALL                             R16 2 1
      419 JUMP                             ; [+1]
      420 LOADNIL                          R16
      421 SETTABLEKS                       R16 R15 K95 ["Size"]
      423 DUPTABLE                         R16 K55 [{"affordance"}]
      424 GETUPVAL                         R17 16
      425 GETTABLEKS                       R17 R17 K56 ["None"]
      427 SETTABLEKS                       R17 R16 K54 ["affordance"]
      429 SETTABLEKS                       R16 R15 K43 ["stateLayer"]
      431 NEWCLOSURE                       R16 P1
      432 CAPTURE                          VAL R1
      433 CAPTURE                          UPVAL U20
      434 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      436 GETTABLEKS                       R16 R2 K86 ["backdrop"]
      438 GETTABLEKS                       R16 R16 K84 ["backgroundStyle"]
      440 SETTABLEKS                       R16 R15 K84 ["backgroundStyle"]
      442 LOADK                            R17 K87 ["%*--backdrop"]
      443 GETTABLEKS                       R19 R1 K16 ["testId"]
      445 NAMECALL                         R17 R17 K23 ["format"]
      447 CALL                             R17 2 1
      448 MOVE                             R16 R17
      449 SETTABLEKS                       R16 R15 K16 ["testId"]
      451 CALL                             R13 2 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R13
      454 SETTABLEKS                       R13 R12 K81 ["Backdrop"]
      456 GETUPVAL                         R13 3
      457 GETTABLEKS                       R13 R13 K13 ["createElement"]
      459 GETUPVAL                         R14 10
      460 DUPTABLE                         R15 K100 [{["tag"], ["ZIndex"] = 2}]
      461 GETTABLEKS                       R16 R2 K18 ["container"]
      463 GETTABLEKS                       R16 R16 K14 ["tag"]
      465 SETTABLEKS                       R16 R15 K14 ["tag"]
      467 DUPTABLE                         R16 K25 [{"Shadow"}]
      468 GETUPVAL                         R17 3
      469 GETTABLEKS                       R17 R17 K13 ["createElement"]
      471 GETUPVAL                         R18 12
      472 DUPTABLE                         R19 K101 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      473 GETUPVAL                         R20 13
      474 SETTABLEKS                       R20 R19 K26 ["Image"]
      476 DUPCLOSURE                       R22 K102 [PROTO_2]
      477 CAPTURE                          UPVAL U14
      478 NAMECALL                         R20 R5 K103 ["map"]
      480 CALL                             R20 2 1
      481 SETTABLEKS                       R20 R19 K95 ["Size"]
      483 DUPTABLE                         R20 K34 [{["center"], ["scale"] = 2}]
      484 GETIMPORT                        R21 K37 [Rect.new]
      486 GETUPVAL                         R22 14
      487 GETUPVAL                         R23 14
      488 GETUPVAL                         R24 14
      489 GETUPVAL                         R25 14
      490 CALL                             R21 4 1
      491 SETTABLEKS                       R21 R20 K31 ["center"]
      493 SETTABLEKS                       R20 R19 K27 ["slice"]
      495 GETTABLEKS                       R20 R2 K30 ["shadow"]
      497 GETTABLEKS                       R20 R20 K28 ["imageStyle"]
      499 SETTABLEKS                       R20 R19 K28 ["imageStyle"]
      501 LOADK                            R21 K38 ["%*--shadow"]
      502 GETTABLEKS                       R23 R1 K16 ["testId"]
      504 NAMECALL                         R21 R21 K23 ["format"]
      506 CALL                             R21 2 1
      507 MOVE                             R20 R21
      508 SETTABLEKS                       R20 R19 K16 ["testId"]
      510 CALL                             R17 2 1
      511 SETTABLEKS                       R17 R16 K24 ["Shadow"]
      513 CALL                             R13 3 1
      514 SETTABLEKS                       R13 R12 K93 ["DialogShadowWrapper"]
      516 DUPTABLE                         R13 K104 [{"Dialog"}]
      517 GETUPVAL                         R14 3
      518 GETTABLEKS                       R14 R14 K13 ["createElement"]
      520 GETUPVAL                         R15 10
      521 DUPTABLE                         R16 K106 [{["tag"], ["ZIndex"] = 3}]
      522 GETTABLEKS                       R17 R2 K18 ["container"]
      524 GETTABLEKS                       R17 R17 K14 ["tag"]
      526 SETTABLEKS                       R17 R16 K14 ["tag"]
      528 DUPTABLE                         R17 K109 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      529 GETUPVAL                         R18 3
      530 GETTABLEKS                       R18 R18 K13 ["createElement"]
      532 GETUPVAL                         R19 10
      533 DUPTABLE                         R20 K112 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      534 CALL                             R18 2 1
      535 SETTABLEKS                       R18 R17 K107 ["DialogFlexStart"]
      537 GETUPVAL                         R18 3
      538 GETTABLEKS                       R18 R18 K13 ["createElement"]
      540 GETUPVAL                         R19 10
      541 GETUPVAL                         R20 15
      542 MOVE                             R21 R1
      543 DUPTABLE                         R22 K47 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      544 GETTABLEKS                       R23 R2 K4 ["inner"]
      546 GETTABLEKS                       R23 R23 K14 ["tag"]
      548 SETTABLEKS                       R23 R22 K14 ["tag"]
      550 GETTABLEKS                       R23 R1 K48 ["forwardRef"]
      552 SETTABLEKS                       R23 R22 K41 ["ref"]
      554 DUPTABLE                         R23 K50 [{"MaxSize"}]
      555 GETIMPORT                        R24 K52 [Vector2.new]
      557 MOVE                             R25 R3
      558 LOADK                            R26 K53 [∞]
      559 CALL                             R24 2 1
      560 SETTABLEKS                       R24 R23 K49 ["MaxSize"]
      562 SETTABLEKS                       R23 R22 K42 ["sizeConstraint"]
      564 DUPTABLE                         R23 K55 [{"affordance"}]
      565 GETUPVAL                         R24 16
      566 GETTABLEKS                       R24 R24 K56 ["None"]
      568 SETTABLEKS                       R24 R23 K54 ["affordance"]
      570 SETTABLEKS                       R23 R22 K43 ["stateLayer"]
      572 GETUPVAL                         R24 9
      573 GETTABLEKS                       R24 R24 K57 ["FoundationDialogUpdateSelection"]
      575 JUMPIFNOT                        R24 ; [+4]
      576 GETUPVAL                         R23 17
      577 GETTABLEKS                       R23 R23 K58 ["nonSelectable"]
      579 JUMP                             ; [+1]
      580 LOADNIL                          R23
      581 SETTABLEKS                       R23 R22 K44 ["selection"]
      583 GETUPVAL                         R24 9
      584 GETTABLEKS                       R24 R24 K57 ["FoundationDialogUpdateSelection"]
      586 JUMPIFNOT                        R24 ; [+4]
      587 GETUPVAL                         R23 17
      588 GETTABLEKS                       R23 R23 K59 ["isolatedSelectionGroup"]
      590 JUMP                             ; [+1]
      591 LOADNIL                          R23
      592 SETTABLEKS                       R23 R22 K45 ["selectionGroup"]
      594 GETUPVAL                         R23 0
      595 GETTABLEKS                       R23 R23 K60 ["noop"]
      597 SETTABLEKS                       R23 R22 K46 ["onActivated"]
      599 CALL                             R20 2 1
      600 DUPTABLE                         R21 K63 [{"CloseAffordance", "DialogBody"}]
      601 GETTABLEKS                       R23 R1 K64 ["onClose"]
      603 JUMPIFNOT                        R23 ; [+43]
      604 GETUPVAL                         R22 3
      605 GETTABLEKS                       R22 R22 K13 ["createElement"]
      607 GETUPVAL                         R23 18
      608 DUPTABLE                         R24 K67 [{["onActivated"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      609 GETTABLEKS                       R25 R1 K64 ["onClose"]
      611 SETTABLEKS                       R25 R24 K46 ["onActivated"]
      613 GETIMPORT                        R25 K69 [UDim2.new]
      615 LOADN                            R26 1
      616 GETTABLEKS                       R28 R2 K70 ["closeAffordance"]
      618 GETTABLEKS                       R28 R28 K71 ["offset"]
      620 MINUS                            R27 R28
      621 LOADN                            R28 0
      622 GETTABLEKS                       R29 R2 K70 ["closeAffordance"]
      624 GETTABLEKS                       R29 R29 K71 ["offset"]
      626 CALL                             R25 4 1
      627 SETTABLEKS                       R25 R24 K65 ["Position"]
      629 GETIMPORT                        R25 K52 [Vector2.new]
      631 LOADN                            R26 1
      632 LOADN                            R27 0
      633 CALL                             R25 2 1
      634 SETTABLEKS                       R25 R24 K66 ["AnchorPoint"]
      636 LOADK                            R26 K72 ["%*--close-affordance"]
      637 GETTABLEKS                       R28 R1 K16 ["testId"]
      639 NAMECALL                         R26 R26 K23 ["format"]
      641 CALL                             R26 2 1
      642 MOVE                             R25 R26
      643 SETTABLEKS                       R25 R24 K16 ["testId"]
      645 CALL                             R22 2 1
      646 JUMP                             ; [+1]
      647 LOADNIL                          R22
      648 SETTABLEKS                       R22 R21 K61 ["CloseAffordance"]
      650 GETUPVAL                         R22 3
      651 GETTABLEKS                       R22 R22 K13 ["createElement"]
      653 GETUPVAL                         R23 10
      654 DUPTABLE                         R24 K73 [{"tag", "ref", "testId"}]
      655 GETTABLEKS                       R25 R2 K74 ["body"]
      657 GETTABLEKS                       R25 R25 K14 ["tag"]
      659 SETTABLEKS                       R25 R24 K14 ["tag"]
      661 SETTABLEKS                       R4 R24 K41 ["ref"]
      663 LOADK                            R26 K75 ["%*--body"]
      664 GETTABLEKS                       R28 R1 K16 ["testId"]
      666 NAMECALL                         R26 R26 K23 ["format"]
      668 CALL                             R26 2 1
      669 MOVE                             R25 R26
      670 SETTABLEKS                       R25 R24 K16 ["testId"]
      672 GETUPVAL                         R26 9
      673 GETTABLEKS                       R26 R26 K20 ["FoundationElevationSystem"]
      675 JUMPIFNOT                        R26 ; [+11]
      676 GETUPVAL                         R25 3
      677 GETTABLEKS                       R25 R25 K13 ["createElement"]
      679 GETUPVAL                         R26 19
      680 DUPTABLE                         R27 K77 [{"owner"}]
      681 SETTABLEKS                       R7 R27 K76 ["owner"]
      683 GETTABLEKS                       R28 R1 K78 ["children"]
      685 CALL                             R25 3 1
      686 JUMP                             ; [+2]
      687 GETTABLEKS                       R25 R1 K78 ["children"]
      689 CALL                             R22 3 1
      690 SETTABLEKS                       R22 R21 K62 ["DialogBody"]
      692 CALL                             R18 3 1
      693 SETTABLEKS                       R18 R17 K39 ["DialogInner"]
      695 GETUPVAL                         R18 3
      696 GETTABLEKS                       R18 R18 K13 ["createElement"]
      698 GETUPVAL                         R19 10
      699 DUPTABLE                         R20 K113 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      700 CALL                             R18 2 1
      701 SETTABLEKS                       R18 R17 K108 ["DialogFlexEnd"]
      703 CALL                             R14 3 1
      704 SETTABLEKS                       R14 R13 K7 ["Dialog"]
      706 CALL                             R9 4 1
      707 GETTABLEKS                       R10 R1 K114 ["disablePortal"]
      709 JUMPIF                           R10 ; [+2]
      710 JUMPIFNOTEQKNIL                  R6 ; [+2]
      712 RETURN                           R9 1
      713 GETUPVAL                         R10 21
      714 GETTABLEKS                       R10 R10 K115 ["createPortal"]
      716 MOVE                             R11 R9
      717 MOVE                             R12 R6
      718 CALL                             R10 2 -1
      719 RETURN                           R10 -1

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
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["View"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["CloseAffordance"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["Image"]
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
       91 GETTABLEKS                       R15 R15 K24 ["withCommonProps"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R16 K25 ["withDefaults"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K22 ["Utility"]
      105 GETTABLEKS                       R17 R17 K26 ["useScaledValue"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R0 K11 ["Components"]
      112 GETTABLEKS                       R18 R18 K27 ["Types"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K6 [require]
      117 GETIMPORT                        R19 K1 [script]
      119 GETTABLEKS                       R19 R19 K4 ["Parent"]
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
      141 GETTABLEKS                       R21 R21 K29 ["useDialogSize"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETIMPORT                        R22 K1 [script]
      148 GETTABLEKS                       R22 R22 K4 ["Parent"]
      150 GETTABLEKS                       R22 R22 K30 ["useDialogResponsiveSize"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K6 [require]
      155 GETIMPORT                        R23 K1 [script]
      157 GETTABLEKS                       R23 R23 K4 ["Parent"]
      159 GETTABLEKS                       R23 R23 K31 ["DialogProvider"]
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
      194 GETTABLEKS                       R27 R5 K46 ["SHADOW_IMAGE"]
      196 GETTABLEKS                       R28 R5 K47 ["SHADOW_SIZE"]
      198 GETTABLEKS                       R30 R13 K48 ["FoundationDialogUpdateZIndex"]
      200 JUMPIFNOT                        R30 ; [+2]
      201 LOADN                            R29 6
      202 JUMP                             ; [+1]
      203 LOADN                            R29 3
      204 DUPCLOSURE                       R30 K49 [PROTO_3]
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R3
      227 DUPCLOSURE                       R31 K50 [PROTO_4]
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R30
      233 CAPTURE                          VAL R4
      234 GETTABLEKS                       R32 R2 K51 ["memo"]
      236 GETTABLEKS                       R33 R2 K52 ["forwardRef"]
      238 MOVE                             R34 R31
      239 CALL                             R33 1 -1
      240 CALL                             R32 -1 -1
      241 RETURN                           R32 -1
