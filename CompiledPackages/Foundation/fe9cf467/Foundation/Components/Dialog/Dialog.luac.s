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
       30 GETUPVAL                         R9 7
       31 GETTABLEKS                       R8 R9 K6 ["Dialog"]
       33 DUPTABLE                         R9 K8 [{"relativeToOwner"}]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K7 ["relativeToOwner"]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 8
       39 GETTABLEKS                       R9 R1 K9 ["size"]
       41 CALL                             R8 1 0
       42 GETUPVAL                         R10 9
       43 GETTABLEKS                       R9 R10 K10 ["FoundationDialogOversizedBackdrop"]
       45 JUMPIF                           R9 ; [+222]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R8 R9 K11 ["createElement"]
       49 GETUPVAL                         R9 10
       50 DUPTABLE                         R10 K15 [{"tag", "ZIndex", "testId"}]
       51 GETTABLEKS                       R12 R2 K16 ["container"]
       53 GETTABLEKS                       R11 R12 K12 ["tag"]
       55 SETTABLEKS                       R11 R10 K12 ["tag"]
       57 GETTABLEKS                       R12 R1 K17 ["hasBackdrop"]
       59 JUMPIFNOT                        R12 ; [+2]
       60 LOADNIL                          R11
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R11 R7 K18 ["zIndex"]
       64 SETTABLEKS                       R11 R10 K13 ["ZIndex"]
       66 LOADK                            R12 K19 ["%*--surface"]
       67 GETTABLEKS                       R14 R1 K14 ["testId"]
       69 NAMECALL                         R12 R12 K20 ["format"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 SETTABLEKS                       R11 R10 K14 ["testId"]
       75 DUPTABLE                         R11 K22 [{"Shadow"}]
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R12 R13 K11 ["createElement"]
       79 GETUPVAL                         R13 11
       80 DUPTABLE                         R14 K26 [{"Image", "tag", "slice", "imageStyle", "testId"}]
       81 GETUPVAL                         R15 12
       82 SETTABLEKS                       R15 R14 K23 ["Image"]
       84 GETTABLEKS                       R16 R2 K27 ["shadow"]
       86 GETTABLEKS                       R15 R16 K12 ["tag"]
       88 SETTABLEKS                       R15 R14 K12 ["tag"]
       90 DUPTABLE                         R15 K30 [{"center", "scale"}]
       91 GETIMPORT                        R16 K33 [Rect.new]
       93 GETUPVAL                         R17 13
       94 GETUPVAL                         R18 13
       95 GETUPVAL                         R19 13
       96 GETUPVAL                         R20 13
       97 CALL                             R16 4 1
       98 SETTABLEKS                       R16 R15 K28 ["center"]
      100 LOADN                            R16 2
      101 SETTABLEKS                       R16 R15 K29 ["scale"]
      103 SETTABLEKS                       R15 R14 K24 ["slice"]
      105 GETTABLEKS                       R16 R2 K27 ["shadow"]
      107 GETTABLEKS                       R15 R16 K25 ["imageStyle"]
      109 SETTABLEKS                       R15 R14 K25 ["imageStyle"]
      111 LOADK                            R16 K34 ["%*--shadow"]
      112 GETTABLEKS                       R18 R1 K14 ["testId"]
      114 NAMECALL                         R16 R16 K20 ["format"]
      116 CALL                             R16 2 1
      117 MOVE                             R15 R16
      118 SETTABLEKS                       R15 R14 K14 ["testId"]
      120 DUPTABLE                         R15 K36 [{"DialogInner"}]
      121 GETUPVAL                         R17 3
      122 GETTABLEKS                       R16 R17 K11 ["createElement"]
      124 GETUPVAL                         R17 10
      125 GETUPVAL                         R18 14
      126 MOVE                             R19 R1
      127 DUPTABLE                         R20 K43 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      128 GETTABLEKS                       R22 R2 K3 ["inner"]
      130 GETTABLEKS                       R21 R22 K12 ["tag"]
      132 SETTABLEKS                       R21 R20 K12 ["tag"]
      134 GETTABLEKS                       R21 R1 K44 ["forwardRef"]
      136 SETTABLEKS                       R21 R20 K37 ["ref"]
      138 DUPTABLE                         R21 K46 [{"MaxSize"}]
      139 GETIMPORT                        R22 K48 [Vector2.new]
      141 MOVE                             R23 R3
      142 LOADK                            R24 K49 [∞]
      143 CALL                             R22 2 1
      144 SETTABLEKS                       R22 R21 K45 ["MaxSize"]
      146 SETTABLEKS                       R21 R20 K38 ["sizeConstraint"]
      148 DUPTABLE                         R21 K51 [{"affordance"}]
      149 GETUPVAL                         R23 15
      150 GETTABLEKS                       R22 R23 K52 ["None"]
      152 SETTABLEKS                       R22 R21 K50 ["affordance"]
      154 SETTABLEKS                       R21 R20 K39 ["stateLayer"]
      156 GETUPVAL                         R22 16
      157 GETTABLEKS                       R21 R22 K53 ["nonSelectable"]
      159 SETTABLEKS                       R21 R20 K40 ["selection"]
      161 GETUPVAL                         R22 16
      162 GETTABLEKS                       R21 R22 K54 ["isolatedSelectionGroup"]
      164 SETTABLEKS                       R21 R20 K41 ["selectionGroup"]
      166 GETUPVAL                         R22 0
      167 GETTABLEKS                       R21 R22 K55 ["noop"]
      169 SETTABLEKS                       R21 R20 K42 ["onActivated"]
      171 CALL                             R18 2 1
      172 DUPTABLE                         R19 K58 [{"CloseAffordance", "DialogBody"}]
      173 GETTABLEKS                       R21 R1 K59 ["onClose"]
      175 JUMPIFNOT                        R21 ; [+46]
      176 GETUPVAL                         R21 3
      177 GETTABLEKS                       R20 R21 K11 ["createElement"]
      179 GETUPVAL                         R21 17
      180 DUPTABLE                         R22 K62 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      181 GETTABLEKS                       R23 R1 K59 ["onClose"]
      183 SETTABLEKS                       R23 R22 K42 ["onActivated"]
      185 GETIMPORT                        R23 K64 [UDim2.new]
      187 LOADN                            R24 1
      188 GETTABLEKS                       R27 R2 K65 ["closeAffordance"]
      190 GETTABLEKS                       R26 R27 K66 ["offset"]
      192 MINUS                            R25 R26
      193 LOADN                            R26 0
      194 GETTABLEKS                       R28 R2 K65 ["closeAffordance"]
      196 GETTABLEKS                       R27 R28 K66 ["offset"]
      198 CALL                             R23 4 1
      199 SETTABLEKS                       R23 R22 K60 ["Position"]
      201 GETIMPORT                        R23 K48 [Vector2.new]
      203 LOADN                            R24 1
      204 LOADN                            R25 0
      205 CALL                             R23 2 1
      206 SETTABLEKS                       R23 R22 K61 ["AnchorPoint"]
      208 LOADN                            R23 2
      209 SETTABLEKS                       R23 R22 K13 ["ZIndex"]
      211 LOADK                            R24 K67 ["%*--close-affordance"]
      212 GETTABLEKS                       R26 R1 K14 ["testId"]
      214 NAMECALL                         R24 R24 K20 ["format"]
      216 CALL                             R24 2 1
      217 MOVE                             R23 R24
      218 SETTABLEKS                       R23 R22 K14 ["testId"]
      220 CALL                             R20 2 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R20
      223 SETTABLEKS                       R20 R19 K56 ["CloseAffordance"]
      225 GETUPVAL                         R21 3
      226 GETTABLEKS                       R20 R21 K11 ["createElement"]
      228 GETUPVAL                         R21 10
      229 DUPTABLE                         R22 K68 [{"tag", "ref", "testId"}]
      230 GETTABLEKS                       R24 R2 K69 ["body"]
      232 GETTABLEKS                       R23 R24 K12 ["tag"]
      234 SETTABLEKS                       R23 R22 K12 ["tag"]
      236 SETTABLEKS                       R4 R22 K37 ["ref"]
      238 LOADK                            R24 K70 ["%*--body"]
      239 GETTABLEKS                       R26 R1 K14 ["testId"]
      241 NAMECALL                         R24 R24 K20 ["format"]
      243 CALL                             R24 2 1
      244 MOVE                             R23 R24
      245 SETTABLEKS                       R23 R22 K14 ["testId"]
      247 GETUPVAL                         R24 3
      248 GETTABLEKS                       R23 R24 K11 ["createElement"]
      250 GETUPVAL                         R24 18
      251 DUPTABLE                         R25 K72 [{"owner"}]
      252 SETTABLEKS                       R7 R25 K71 ["owner"]
      254 GETTABLEKS                       R26 R1 K73 ["children"]
      256 CALL                             R23 3 -1
      257 CALL                             R20 -1 1
      258 SETTABLEKS                       R20 R19 K57 ["DialogBody"]
      260 CALL                             R16 3 1
      261 SETTABLEKS                       R16 R15 K35 ["DialogInner"]
      263 CALL                             R12 3 1
      264 SETTABLEKS                       R12 R11 K21 ["Shadow"]
      266 CALL                             R8 3 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R8
      269 GETUPVAL                         R11 9
      270 GETTABLEKS                       R10 R11 K10 ["FoundationDialogOversizedBackdrop"]
      272 JUMPIF                           R10 ; [+61]
      273 GETUPVAL                         R10 3
      274 GETTABLEKS                       R9 R10 K11 ["createElement"]
      276 GETUPVAL                         R11 3
      277 GETTABLEKS                       R10 R11 K74 ["Fragment"]
      279 LOADNIL                          R11
      280 DUPTABLE                         R12 K76 [{"Backdrop"}]
      281 GETTABLEKS                       R14 R1 K17 ["hasBackdrop"]
      283 JUMPIFNOT                        R14 ; [+45]
      284 GETUPVAL                         R14 3
      285 GETTABLEKS                       R13 R14 K11 ["createElement"]
      287 GETUPVAL                         R14 10
      288 DUPTABLE                         R15 K78 [{"tag", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      289 LOADK                            R16 K79 ["size-full-full"]
      290 SETTABLEKS                       R16 R15 K12 ["tag"]
      292 DUPTABLE                         R16 K51 [{"affordance"}]
      293 GETUPVAL                         R18 15
      294 GETTABLEKS                       R17 R18 K52 ["None"]
      296 SETTABLEKS                       R17 R16 K50 ["affordance"]
      298 SETTABLEKS                       R16 R15 K39 ["stateLayer"]
      300 NEWCLOSURE                       R16 P0
      301 CAPTURE                          VAL R1
      302 CAPTURE                          UPVAL U19
      303 SETTABLEKS                       R16 R15 K42 ["onActivated"]
      305 GETTABLEKS                       R17 R2 K80 ["backdrop"]
      307 GETTABLEKS                       R16 R17 K77 ["backgroundStyle"]
      309 SETTABLEKS                       R16 R15 K77 ["backgroundStyle"]
      311 GETTABLEKS                       R16 R7 K18 ["zIndex"]
      313 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      315 LOADK                            R17 K81 ["%*--backdrop"]
      316 GETTABLEKS                       R19 R1 K14 ["testId"]
      318 NAMECALL                         R17 R17 K20 ["format"]
      320 CALL                             R17 2 1
      321 MOVE                             R16 R17
      322 SETTABLEKS                       R16 R15 K14 ["testId"]
      324 DUPTABLE                         R16 K83 [{"DialogSurface"}]
      325 SETTABLEKS                       R8 R16 K82 ["DialogSurface"]
      327 CALL                             R13 3 1
      328 JUMP                             ; [+1]
      329 MOVE                             R13 R8
      330 SETTABLEKS                       R13 R12 K75 ["Backdrop"]
      332 CALL                             R9 3 1
      333 JUMP                             ; [+344]
      334 GETUPVAL                         R10 3
      335 GETTABLEKS                       R9 R10 K11 ["createElement"]
      337 GETUPVAL                         R10 10
      338 DUPTABLE                         R11 K84 [{"ZIndex", "tag", "testId"}]
      339 GETTABLEKS                       R12 R7 K18 ["zIndex"]
      341 SETTABLEKS                       R12 R11 K13 ["ZIndex"]
      343 LOADK                            R12 K85 ["size-full"]
      344 SETTABLEKS                       R12 R11 K12 ["tag"]
      346 LOADK                            R13 K86 ["%*--container"]
      347 GETTABLEKS                       R15 R1 K14 ["testId"]
      349 NAMECALL                         R13 R13 K20 ["format"]
      351 CALL                             R13 2 1
      352 MOVE                             R12 R13
      353 SETTABLEKS                       R12 R11 K14 ["testId"]
      355 DUPTABLE                         R12 K88 [{"Backdrop", "DialogShadowWrapper"}]
      356 GETTABLEKS                       R14 R1 K17 ["hasBackdrop"]
      358 JUMPIFNOT                        R14 ; [+60]
      359 GETUPVAL                         R14 3
      360 GETTABLEKS                       R13 R14 K11 ["createElement"]
      362 GETUPVAL                         R14 10
      363 DUPTABLE                         R15 K90 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      364 GETUPVAL                         R18 9
      365 GETTABLEKS                       R17 R18 K10 ["FoundationDialogOversizedBackdrop"]
      367 JUMPIFNOT                        R17 ; [+2]
      368 LOADK                            R16 K91 ["position-center-center anchor-center-center"]
      369 JUMP                             ; [+1]
      370 LOADK                            R16 K79 ["size-full-full"]
      371 SETTABLEKS                       R16 R15 K12 ["tag"]
      373 GETUPVAL                         R18 9
      374 GETTABLEKS                       R17 R18 K10 ["FoundationDialogOversizedBackdrop"]
      376 JUMPIFNOT                        R17 ; [+6]
      377 GETIMPORT                        R16 K93 [UDim2.fromScale]
      379 LOADN                            R17 2
      380 LOADN                            R18 2
      381 CALL                             R16 2 1
      382 JUMP                             ; [+1]
      383 LOADNIL                          R16
      384 SETTABLEKS                       R16 R15 K89 ["Size"]
      386 DUPTABLE                         R16 K51 [{"affordance"}]
      387 GETUPVAL                         R18 15
      388 GETTABLEKS                       R17 R18 K52 ["None"]
      390 SETTABLEKS                       R17 R16 K50 ["affordance"]
      392 SETTABLEKS                       R16 R15 K39 ["stateLayer"]
      394 NEWCLOSURE                       R16 P1
      395 CAPTURE                          VAL R1
      396 CAPTURE                          UPVAL U19
      397 SETTABLEKS                       R16 R15 K42 ["onActivated"]
      399 GETTABLEKS                       R17 R2 K80 ["backdrop"]
      401 GETTABLEKS                       R16 R17 K77 ["backgroundStyle"]
      403 SETTABLEKS                       R16 R15 K77 ["backgroundStyle"]
      405 LOADN                            R16 2
      406 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      408 LOADK                            R17 K81 ["%*--backdrop"]
      409 GETTABLEKS                       R19 R1 K14 ["testId"]
      411 NAMECALL                         R17 R17 K20 ["format"]
      413 CALL                             R17 2 1
      414 MOVE                             R16 R17
      415 SETTABLEKS                       R16 R15 K14 ["testId"]
      417 CALL                             R13 2 1
      418 JUMP                             ; [+1]
      419 LOADNIL                          R13
      420 SETTABLEKS                       R13 R12 K75 ["Backdrop"]
      422 GETUPVAL                         R14 3
      423 GETTABLEKS                       R13 R14 K11 ["createElement"]
      425 GETUPVAL                         R14 10
      426 DUPTABLE                         R15 K94 [{"tag", "ZIndex"}]
      427 GETTABLEKS                       R17 R2 K16 ["container"]
      429 GETTABLEKS                       R16 R17 K12 ["tag"]
      431 SETTABLEKS                       R16 R15 K12 ["tag"]
      433 LOADN                            R16 2
      434 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      436 DUPTABLE                         R16 K22 [{"Shadow"}]
      437 GETUPVAL                         R18 3
      438 GETTABLEKS                       R17 R18 K11 ["createElement"]
      440 GETUPVAL                         R18 11
      441 DUPTABLE                         R19 K95 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      442 GETUPVAL                         R20 12
      443 SETTABLEKS                       R20 R19 K23 ["Image"]
      445 DUPCLOSURE                       R22 K96 [PROTO_2]
      446 CAPTURE                          UPVAL U13
      447 NAMECALL                         R20 R5 K97 ["map"]
      449 CALL                             R20 2 1
      450 SETTABLEKS                       R20 R19 K89 ["Size"]
      452 DUPTABLE                         R20 K30 [{"center", "scale"}]
      453 GETIMPORT                        R21 K33 [Rect.new]
      455 GETUPVAL                         R22 13
      456 GETUPVAL                         R23 13
      457 GETUPVAL                         R24 13
      458 GETUPVAL                         R25 13
      459 CALL                             R21 4 1
      460 SETTABLEKS                       R21 R20 K28 ["center"]
      462 LOADN                            R21 2
      463 SETTABLEKS                       R21 R20 K29 ["scale"]
      465 SETTABLEKS                       R20 R19 K24 ["slice"]
      467 GETTABLEKS                       R21 R2 K27 ["shadow"]
      469 GETTABLEKS                       R20 R21 K25 ["imageStyle"]
      471 SETTABLEKS                       R20 R19 K25 ["imageStyle"]
      473 LOADK                            R21 K34 ["%*--shadow"]
      474 GETTABLEKS                       R23 R1 K14 ["testId"]
      476 NAMECALL                         R21 R21 K20 ["format"]
      478 CALL                             R21 2 1
      479 MOVE                             R20 R21
      480 SETTABLEKS                       R20 R19 K14 ["testId"]
      482 CALL                             R17 2 1
      483 SETTABLEKS                       R17 R16 K21 ["Shadow"]
      485 CALL                             R13 3 1
      486 SETTABLEKS                       R13 R12 K87 ["DialogShadowWrapper"]
      488 DUPTABLE                         R13 K98 [{"Dialog"}]
      489 GETUPVAL                         R15 3
      490 GETTABLEKS                       R14 R15 K11 ["createElement"]
      492 GETUPVAL                         R15 10
      493 DUPTABLE                         R16 K94 [{"tag", "ZIndex"}]
      494 GETTABLEKS                       R18 R2 K16 ["container"]
      496 GETTABLEKS                       R17 R18 K12 ["tag"]
      498 SETTABLEKS                       R17 R16 K12 ["tag"]
      500 LOADN                            R17 3
      501 SETTABLEKS                       R17 R16 K13 ["ZIndex"]
      503 DUPTABLE                         R17 K101 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      504 GETUPVAL                         R19 3
      505 GETTABLEKS                       R18 R19 K11 ["createElement"]
      507 GETUPVAL                         R19 10
      508 DUPTABLE                         R20 K102 [{"tag", "LayoutOrder"}]
      509 LOADK                            R21 K103 ["fill"]
      510 SETTABLEKS                       R21 R20 K12 ["tag"]
      512 LOADN                            R21 0
      513 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      515 CALL                             R18 2 1
      516 SETTABLEKS                       R18 R17 K99 ["DialogFlexStart"]
      518 GETUPVAL                         R19 3
      519 GETTABLEKS                       R18 R19 K11 ["createElement"]
      521 GETUPVAL                         R19 10
      522 GETUPVAL                         R20 14
      523 MOVE                             R21 R1
      524 DUPTABLE                         R22 K43 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      525 GETTABLEKS                       R24 R2 K3 ["inner"]
      527 GETTABLEKS                       R23 R24 K12 ["tag"]
      529 SETTABLEKS                       R23 R22 K12 ["tag"]
      531 GETTABLEKS                       R23 R1 K44 ["forwardRef"]
      533 SETTABLEKS                       R23 R22 K37 ["ref"]
      535 DUPTABLE                         R23 K46 [{"MaxSize"}]
      536 GETIMPORT                        R24 K48 [Vector2.new]
      538 MOVE                             R25 R3
      539 LOADK                            R26 K49 [∞]
      540 CALL                             R24 2 1
      541 SETTABLEKS                       R24 R23 K45 ["MaxSize"]
      543 SETTABLEKS                       R23 R22 K38 ["sizeConstraint"]
      545 DUPTABLE                         R23 K51 [{"affordance"}]
      546 GETUPVAL                         R25 15
      547 GETTABLEKS                       R24 R25 K52 ["None"]
      549 SETTABLEKS                       R24 R23 K50 ["affordance"]
      551 SETTABLEKS                       R23 R22 K39 ["stateLayer"]
      553 GETUPVAL                         R24 16
      554 GETTABLEKS                       R23 R24 K53 ["nonSelectable"]
      556 SETTABLEKS                       R23 R22 K40 ["selection"]
      558 GETUPVAL                         R24 16
      559 GETTABLEKS                       R23 R24 K54 ["isolatedSelectionGroup"]
      561 SETTABLEKS                       R23 R22 K41 ["selectionGroup"]
      563 GETUPVAL                         R24 0
      564 GETTABLEKS                       R23 R24 K55 ["noop"]
      566 SETTABLEKS                       R23 R22 K42 ["onActivated"]
      568 CALL                             R20 2 1
      569 DUPTABLE                         R21 K58 [{"CloseAffordance", "DialogBody"}]
      570 GETTABLEKS                       R23 R1 K59 ["onClose"]
      572 JUMPIFNOT                        R23 ; [+46]
      573 GETUPVAL                         R23 3
      574 GETTABLEKS                       R22 R23 K11 ["createElement"]
      576 GETUPVAL                         R23 17
      577 DUPTABLE                         R24 K62 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      578 GETTABLEKS                       R25 R1 K59 ["onClose"]
      580 SETTABLEKS                       R25 R24 K42 ["onActivated"]
      582 GETIMPORT                        R25 K64 [UDim2.new]
      584 LOADN                            R26 1
      585 GETTABLEKS                       R29 R2 K65 ["closeAffordance"]
      587 GETTABLEKS                       R28 R29 K66 ["offset"]
      589 MINUS                            R27 R28
      590 LOADN                            R28 0
      591 GETTABLEKS                       R30 R2 K65 ["closeAffordance"]
      593 GETTABLEKS                       R29 R30 K66 ["offset"]
      595 CALL                             R25 4 1
      596 SETTABLEKS                       R25 R24 K60 ["Position"]
      598 GETIMPORT                        R25 K48 [Vector2.new]
      600 LOADN                            R26 1
      601 LOADN                            R27 0
      602 CALL                             R25 2 1
      603 SETTABLEKS                       R25 R24 K61 ["AnchorPoint"]
      605 LOADN                            R25 2
      606 SETTABLEKS                       R25 R24 K13 ["ZIndex"]
      608 LOADK                            R26 K67 ["%*--close-affordance"]
      609 GETTABLEKS                       R28 R1 K14 ["testId"]
      611 NAMECALL                         R26 R26 K20 ["format"]
      613 CALL                             R26 2 1
      614 MOVE                             R25 R26
      615 SETTABLEKS                       R25 R24 K14 ["testId"]
      617 CALL                             R22 2 1
      618 JUMP                             ; [+1]
      619 LOADNIL                          R22
      620 SETTABLEKS                       R22 R21 K56 ["CloseAffordance"]
      622 GETUPVAL                         R23 3
      623 GETTABLEKS                       R22 R23 K11 ["createElement"]
      625 GETUPVAL                         R23 10
      626 DUPTABLE                         R24 K68 [{"tag", "ref", "testId"}]
      627 GETTABLEKS                       R26 R2 K69 ["body"]
      629 GETTABLEKS                       R25 R26 K12 ["tag"]
      631 SETTABLEKS                       R25 R24 K12 ["tag"]
      633 SETTABLEKS                       R4 R24 K37 ["ref"]
      635 LOADK                            R26 K70 ["%*--body"]
      636 GETTABLEKS                       R28 R1 K14 ["testId"]
      638 NAMECALL                         R26 R26 K20 ["format"]
      640 CALL                             R26 2 1
      641 MOVE                             R25 R26
      642 SETTABLEKS                       R25 R24 K14 ["testId"]
      644 GETUPVAL                         R26 3
      645 GETTABLEKS                       R25 R26 K11 ["createElement"]
      647 GETUPVAL                         R26 18
      648 DUPTABLE                         R27 K72 [{"owner"}]
      649 SETTABLEKS                       R7 R27 K71 ["owner"]
      651 GETTABLEKS                       R28 R1 K73 ["children"]
      653 CALL                             R25 3 -1
      654 CALL                             R22 -1 1
      655 SETTABLEKS                       R22 R21 K57 ["DialogBody"]
      657 CALL                             R18 3 1
      658 SETTABLEKS                       R18 R17 K35 ["DialogInner"]
      660 GETUPVAL                         R19 3
      661 GETTABLEKS                       R18 R19 K11 ["createElement"]
      663 GETUPVAL                         R19 10
      664 DUPTABLE                         R20 K102 [{"tag", "LayoutOrder"}]
      665 LOADK                            R21 K103 ["fill"]
      666 SETTABLEKS                       R21 R20 K12 ["tag"]
      668 LOADN                            R21 2
      669 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      671 CALL                             R18 2 1
      672 SETTABLEKS                       R18 R17 K100 ["DialogFlexEnd"]
      674 CALL                             R14 3 1
      675 SETTABLEKS                       R14 R13 K6 ["Dialog"]
      677 CALL                             R9 4 1
      678 GETTABLEKS                       R10 R1 K104 ["disablePortal"]
      680 JUMPIF                           R10 ; [+2]
      681 JUMPIFNOTEQKNIL                  R6 ; [+2]
      683 RETURN                           R9 1
      684 GETUPVAL                         R11 20
      685 GETTABLEKS                       R10 R11 K105 ["createPortal"]
      687 MOVE                             R11 R9
      688 MOVE                             R12 R6
      689 CALL                             R10 2 -1
      690 RETURN                           R10 -1

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
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["CloseAffordance"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R9 R0 K10 ["Components"]
       40 GETTABLEKS                       R8 R9 K13 ["Image"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R10 R0 K10 ["Components"]
       47 GETTABLEKS                       R9 R10 K14 ["View"]
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
       91 GETTABLEKS                       R15 R16 K24 ["useScaledValue"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R17 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R17 K25 ["withCommonProps"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R18 R0 K22 ["Utility"]
      105 GETTABLEKS                       R17 R18 K26 ["withDefaults"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETIMPORT                        R20 K1 [script]
      112 GETTABLEKS                       R19 R20 K4 ["Parent"]
      114 GETTABLEKS                       R18 R19 K27 ["Types"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R20 R0 K10 ["Components"]
      121 GETTABLEKS                       R19 R20 K27 ["Types"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETIMPORT                        R23 K1 [script]
      128 GETTABLEKS                       R22 R23 K4 ["Parent"]
      130 GETTABLEKS                       R21 R22 K28 ["useDialogVariants"]
      132 CALL                             R20 1 1
      133 GETTABLEKS                       R19 R20 K28 ["useDialogVariants"]
      135 GETIMPORT                        R20 K6 [require]
      137 GETIMPORT                        R23 K1 [script]
      139 GETTABLEKS                       R22 R23 K4 ["Parent"]
      141 GETTABLEKS                       R21 R22 K29 ["DialogProvider"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETIMPORT                        R24 K1 [script]
      148 GETTABLEKS                       R23 R24 K4 ["Parent"]
      150 GETTABLEKS                       R22 R23 K30 ["useDialogResponsiveSize"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K6 [require]
      155 GETIMPORT                        R25 K1 [script]
      157 GETTABLEKS                       R24 R25 K4 ["Parent"]
      159 GETTABLEKS                       R23 R24 K31 ["useDialogSize"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K6 [require]
      164 GETTABLEKS                       R26 R0 K15 ["Providers"]
      166 GETTABLEKS                       R25 R26 K32 ["Elevation"]
      168 GETTABLEKS                       R24 R25 K33 ["useElevation"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R28 R0 K15 ["Providers"]
      175 GETTABLEKS                       R27 R28 K32 ["Elevation"]
      177 GETTABLEKS                       R26 R27 K34 ["ElevationProvider"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R24 R25 K35 ["ElevationOwnerScope"]
      182 GETIMPORT                        R25 K6 [require]
      184 GETTABLEKS                       R27 R0 K18 ["Enums"]
      186 GETTABLEKS                       R26 R27 K36 ["ElevationLayer"]
      188 CALL                             R25 1 1
      189 DUPTABLE                         R26 K41 [{"size", "disablePortal", "hasBackdrop", "testId"}]
      190 GETTABLEKS                       R27 R10 K42 ["Medium"]
      192 SETTABLEKS                       R27 R26 K37 ["size"]
      194 LOADB                            R27 1
      195 SETTABLEKS                       R27 R26 K38 ["disablePortal"]
      197 LOADB                            R27 0
      198 SETTABLEKS                       R27 R26 K39 ["hasBackdrop"]
      200 LOADK                            R27 K43 ["--foundation-dialog"]
      201 SETTABLEKS                       R27 R26 K40 ["testId"]
      203 GETTABLEKS                       R27 R6 K44 ["SHADOW_IMAGE"]
      205 GETTABLEKS                       R28 R6 K45 ["SHADOW_SIZE"]
      207 DUPCLOSURE                       R29 K46 [PROTO_3]
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R4
      229 DUPCLOSURE                       R30 K47 [PROTO_4]
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R29
      235 CAPTURE                          VAL R2
      236 GETTABLEKS                       R31 R3 K48 ["memo"]
      238 GETTABLEKS                       R32 R3 K49 ["forwardRef"]
      240 MOVE                             R33 R30
      241 CALL                             R32 1 -1
      242 CALL                             R31 -1 -1
      243 RETURN                           R31 -1
