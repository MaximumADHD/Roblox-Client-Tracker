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
       45 JUMPIF                           R9 ; [+247]
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
       61 JUMP                             ; [+8]
       62 GETUPVAL                         R13 9
       63 GETTABLEKS                       R12 R13 K18 ["FoundationElevationSystem"]
       65 JUMPIFNOT                        R12 ; [+3]
       66 GETTABLEKS                       R11 R7 K19 ["zIndex"]
       68 JUMP                             ; [+1]
       69 GETUPVAL                         R11 11
       70 SETTABLEKS                       R11 R10 K13 ["ZIndex"]
       72 LOADK                            R12 K20 ["%*--surface"]
       73 GETTABLEKS                       R14 R1 K14 ["testId"]
       75 NAMECALL                         R12 R12 K21 ["format"]
       77 CALL                             R12 2 1
       78 MOVE                             R11 R12
       79 SETTABLEKS                       R11 R10 K14 ["testId"]
       81 DUPTABLE                         R11 K23 [{"Shadow"}]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R12 R13 K11 ["createElement"]
       85 GETUPVAL                         R13 12
       86 DUPTABLE                         R14 K27 [{"Image", "tag", "slice", "imageStyle", "testId"}]
       87 GETUPVAL                         R15 13
       88 SETTABLEKS                       R15 R14 K24 ["Image"]
       90 GETTABLEKS                       R16 R2 K28 ["shadow"]
       92 GETTABLEKS                       R15 R16 K12 ["tag"]
       94 SETTABLEKS                       R15 R14 K12 ["tag"]
       96 DUPTABLE                         R15 K31 [{"center", "scale"}]
       97 GETIMPORT                        R16 K34 [Rect.new]
       99 GETUPVAL                         R17 14
      100 GETUPVAL                         R18 14
      101 GETUPVAL                         R19 14
      102 GETUPVAL                         R20 14
      103 CALL                             R16 4 1
      104 SETTABLEKS                       R16 R15 K29 ["center"]
      106 LOADN                            R16 2
      107 SETTABLEKS                       R16 R15 K30 ["scale"]
      109 SETTABLEKS                       R15 R14 K25 ["slice"]
      111 GETTABLEKS                       R16 R2 K28 ["shadow"]
      113 GETTABLEKS                       R15 R16 K26 ["imageStyle"]
      115 SETTABLEKS                       R15 R14 K26 ["imageStyle"]
      117 LOADK                            R16 K35 ["%*--shadow"]
      118 GETTABLEKS                       R18 R1 K14 ["testId"]
      120 NAMECALL                         R16 R16 K21 ["format"]
      122 CALL                             R16 2 1
      123 MOVE                             R15 R16
      124 SETTABLEKS                       R15 R14 K14 ["testId"]
      126 DUPTABLE                         R15 K37 [{"DialogInner"}]
      127 GETUPVAL                         R17 3
      128 GETTABLEKS                       R16 R17 K11 ["createElement"]
      130 GETUPVAL                         R17 10
      131 GETUPVAL                         R18 15
      132 MOVE                             R19 R1
      133 DUPTABLE                         R20 K44 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      134 GETTABLEKS                       R22 R2 K3 ["inner"]
      136 GETTABLEKS                       R21 R22 K12 ["tag"]
      138 SETTABLEKS                       R21 R20 K12 ["tag"]
      140 GETTABLEKS                       R21 R1 K45 ["forwardRef"]
      142 SETTABLEKS                       R21 R20 K38 ["ref"]
      144 DUPTABLE                         R21 K47 [{"MaxSize"}]
      145 GETIMPORT                        R22 K49 [Vector2.new]
      147 MOVE                             R23 R3
      148 LOADK                            R24 K50 [∞]
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K46 ["MaxSize"]
      152 SETTABLEKS                       R21 R20 K39 ["sizeConstraint"]
      154 DUPTABLE                         R21 K52 [{"affordance"}]
      155 GETUPVAL                         R23 16
      156 GETTABLEKS                       R22 R23 K53 ["None"]
      158 SETTABLEKS                       R22 R21 K51 ["affordance"]
      160 SETTABLEKS                       R21 R20 K40 ["stateLayer"]
      162 GETUPVAL                         R23 9
      163 GETTABLEKS                       R22 R23 K54 ["FoundationDialogUpdateSelection"]
      165 JUMPIFNOT                        R22 ; [+4]
      166 GETUPVAL                         R22 17
      167 GETTABLEKS                       R21 R22 K55 ["nonSelectable"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R21
      171 SETTABLEKS                       R21 R20 K41 ["selection"]
      173 GETUPVAL                         R23 9
      174 GETTABLEKS                       R22 R23 K54 ["FoundationDialogUpdateSelection"]
      176 JUMPIFNOT                        R22 ; [+4]
      177 GETUPVAL                         R22 17
      178 GETTABLEKS                       R21 R22 K56 ["isolatedSelectionGroup"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R21
      182 SETTABLEKS                       R21 R20 K42 ["selectionGroup"]
      184 GETUPVAL                         R22 0
      185 GETTABLEKS                       R21 R22 K57 ["noop"]
      187 SETTABLEKS                       R21 R20 K43 ["onActivated"]
      189 CALL                             R18 2 1
      190 DUPTABLE                         R19 K60 [{"CloseAffordance", "DialogBody"}]
      191 GETTABLEKS                       R21 R1 K61 ["onClose"]
      193 JUMPIFNOT                        R21 ; [+46]
      194 GETUPVAL                         R21 3
      195 GETTABLEKS                       R20 R21 K11 ["createElement"]
      197 GETUPVAL                         R21 18
      198 DUPTABLE                         R22 K64 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      199 GETTABLEKS                       R23 R1 K61 ["onClose"]
      201 SETTABLEKS                       R23 R22 K43 ["onActivated"]
      203 GETIMPORT                        R23 K66 [UDim2.new]
      205 LOADN                            R24 1
      206 GETTABLEKS                       R27 R2 K67 ["closeAffordance"]
      208 GETTABLEKS                       R26 R27 K68 ["offset"]
      210 MINUS                            R25 R26
      211 LOADN                            R26 0
      212 GETTABLEKS                       R28 R2 K67 ["closeAffordance"]
      214 GETTABLEKS                       R27 R28 K68 ["offset"]
      216 CALL                             R23 4 1
      217 SETTABLEKS                       R23 R22 K62 ["Position"]
      219 GETIMPORT                        R23 K49 [Vector2.new]
      221 LOADN                            R24 1
      222 LOADN                            R25 0
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K63 ["AnchorPoint"]
      226 LOADN                            R23 2
      227 SETTABLEKS                       R23 R22 K13 ["ZIndex"]
      229 LOADK                            R24 K69 ["%*--close-affordance"]
      230 GETTABLEKS                       R26 R1 K14 ["testId"]
      232 NAMECALL                         R24 R24 K21 ["format"]
      234 CALL                             R24 2 1
      235 MOVE                             R23 R24
      236 SETTABLEKS                       R23 R22 K14 ["testId"]
      238 CALL                             R20 2 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R20
      241 SETTABLEKS                       R20 R19 K58 ["CloseAffordance"]
      243 GETUPVAL                         R21 3
      244 GETTABLEKS                       R20 R21 K11 ["createElement"]
      246 GETUPVAL                         R21 10
      247 DUPTABLE                         R22 K70 [{"tag", "ref", "testId"}]
      248 GETTABLEKS                       R24 R2 K71 ["body"]
      250 GETTABLEKS                       R23 R24 K12 ["tag"]
      252 SETTABLEKS                       R23 R22 K12 ["tag"]
      254 SETTABLEKS                       R4 R22 K38 ["ref"]
      256 LOADK                            R24 K72 ["%*--body"]
      257 GETTABLEKS                       R26 R1 K14 ["testId"]
      259 NAMECALL                         R24 R24 K21 ["format"]
      261 CALL                             R24 2 1
      262 MOVE                             R23 R24
      263 SETTABLEKS                       R23 R22 K14 ["testId"]
      265 GETUPVAL                         R25 9
      266 GETTABLEKS                       R24 R25 K18 ["FoundationElevationSystem"]
      268 JUMPIFNOT                        R24 ; [+11]
      269 GETUPVAL                         R24 3
      270 GETTABLEKS                       R23 R24 K11 ["createElement"]
      272 GETUPVAL                         R24 19
      273 DUPTABLE                         R25 K74 [{"owner"}]
      274 SETTABLEKS                       R7 R25 K73 ["owner"]
      276 GETTABLEKS                       R26 R1 K75 ["children"]
      278 CALL                             R23 3 1
      279 JUMP                             ; [+2]
      280 GETTABLEKS                       R23 R1 K75 ["children"]
      282 CALL                             R20 3 1
      283 SETTABLEKS                       R20 R19 K59 ["DialogBody"]
      285 CALL                             R16 3 1
      286 SETTABLEKS                       R16 R15 K36 ["DialogInner"]
      288 CALL                             R12 3 1
      289 SETTABLEKS                       R12 R11 K22 ["Shadow"]
      291 CALL                             R8 3 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R8
      294 GETUPVAL                         R11 9
      295 GETTABLEKS                       R10 R11 K76 ["FoundationDialogRootZIndex"]
      297 JUMPIFNOT                        R10 ; [+71]
      298 GETUPVAL                         R11 9
      299 GETTABLEKS                       R10 R11 K10 ["FoundationDialogOversizedBackdrop"]
      301 JUMPIF                           R10 ; [+67]
      302 GETUPVAL                         R10 3
      303 GETTABLEKS                       R9 R10 K11 ["createElement"]
      305 GETUPVAL                         R11 3
      306 GETTABLEKS                       R10 R11 K77 ["Fragment"]
      308 LOADNIL                          R11
      309 DUPTABLE                         R12 K79 [{"Backdrop"}]
      310 GETTABLEKS                       R14 R1 K17 ["hasBackdrop"]
      312 JUMPIFNOT                        R14 ; [+51]
      313 GETUPVAL                         R14 3
      314 GETTABLEKS                       R13 R14 K11 ["createElement"]
      316 GETUPVAL                         R14 10
      317 DUPTABLE                         R15 K81 [{"tag", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      318 LOADK                            R16 K82 ["size-full-full"]
      319 SETTABLEKS                       R16 R15 K12 ["tag"]
      321 DUPTABLE                         R16 K52 [{"affordance"}]
      322 GETUPVAL                         R18 16
      323 GETTABLEKS                       R17 R18 K53 ["None"]
      325 SETTABLEKS                       R17 R16 K51 ["affordance"]
      327 SETTABLEKS                       R16 R15 K40 ["stateLayer"]
      329 NEWCLOSURE                       R16 P0
      330 CAPTURE                          VAL R1
      331 CAPTURE                          UPVAL U20
      332 SETTABLEKS                       R16 R15 K43 ["onActivated"]
      334 GETTABLEKS                       R17 R2 K83 ["backdrop"]
      336 GETTABLEKS                       R16 R17 K80 ["backgroundStyle"]
      338 SETTABLEKS                       R16 R15 K80 ["backgroundStyle"]
      340 GETUPVAL                         R18 9
      341 GETTABLEKS                       R17 R18 K18 ["FoundationElevationSystem"]
      343 JUMPIFNOT                        R17 ; [+3]
      344 GETTABLEKS                       R16 R7 K19 ["zIndex"]
      346 JUMP                             ; [+1]
      347 GETUPVAL                         R16 11
      348 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      350 LOADK                            R17 K84 ["%*--backdrop"]
      351 GETTABLEKS                       R19 R1 K14 ["testId"]
      353 NAMECALL                         R17 R17 K21 ["format"]
      355 CALL                             R17 2 1
      356 MOVE                             R16 R17
      357 SETTABLEKS                       R16 R15 K14 ["testId"]
      359 DUPTABLE                         R16 K86 [{"DialogSurface"}]
      360 SETTABLEKS                       R8 R16 K85 ["DialogSurface"]
      362 CALL                             R13 3 1
      363 JUMP                             ; [+1]
      364 MOVE                             R13 R8
      365 SETTABLEKS                       R13 R12 K78 ["Backdrop"]
      367 CALL                             R9 3 1
      368 JUMP                             ; [+383]
      369 GETUPVAL                         R10 3
      370 GETTABLEKS                       R9 R10 K11 ["createElement"]
      372 GETUPVAL                         R12 9
      373 GETTABLEKS                       R11 R12 K76 ["FoundationDialogRootZIndex"]
      375 JUMPIFNOT                        R11 ; [+2]
      376 GETUPVAL                         R10 10
      377 JUMP                             ; [+3]
      378 GETUPVAL                         R11 3
      379 GETTABLEKS                       R10 R11 K77 ["Fragment"]
      381 GETUPVAL                         R13 9
      382 GETTABLEKS                       R12 R13 K76 ["FoundationDialogRootZIndex"]
      384 JUMPIFNOT                        R12 ; [+24]
      385 DUPTABLE                         R11 K87 [{"ZIndex", "tag", "testId"}]
      386 GETUPVAL                         R14 9
      387 GETTABLEKS                       R13 R14 K18 ["FoundationElevationSystem"]
      389 JUMPIFNOT                        R13 ; [+3]
      390 GETTABLEKS                       R12 R7 K19 ["zIndex"]
      392 JUMP                             ; [+1]
      393 GETUPVAL                         R12 11
      394 SETTABLEKS                       R12 R11 K13 ["ZIndex"]
      396 LOADK                            R12 K88 ["size-full"]
      397 SETTABLEKS                       R12 R11 K12 ["tag"]
      399 LOADK                            R13 K89 ["%*--container"]
      400 GETTABLEKS                       R15 R1 K14 ["testId"]
      402 NAMECALL                         R13 R13 K21 ["format"]
      404 CALL                             R13 2 1
      405 MOVE                             R12 R13
      406 SETTABLEKS                       R12 R11 K14 ["testId"]
      408 JUMP                             ; [+1]
      409 LOADNIL                          R11
      410 DUPTABLE                         R12 K91 [{"Backdrop", "DialogShadowWrapper"}]
      411 GETTABLEKS                       R14 R1 K17 ["hasBackdrop"]
      413 JUMPIFNOT                        R14 ; [+60]
      414 GETUPVAL                         R14 3
      415 GETTABLEKS                       R13 R14 K11 ["createElement"]
      417 GETUPVAL                         R14 10
      418 DUPTABLE                         R15 K93 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      419 GETUPVAL                         R18 9
      420 GETTABLEKS                       R17 R18 K10 ["FoundationDialogOversizedBackdrop"]
      422 JUMPIFNOT                        R17 ; [+2]
      423 LOADK                            R16 K94 ["position-center-center anchor-center-center"]
      424 JUMP                             ; [+1]
      425 LOADK                            R16 K82 ["size-full-full"]
      426 SETTABLEKS                       R16 R15 K12 ["tag"]
      428 GETUPVAL                         R18 9
      429 GETTABLEKS                       R17 R18 K10 ["FoundationDialogOversizedBackdrop"]
      431 JUMPIFNOT                        R17 ; [+6]
      432 GETIMPORT                        R16 K96 [UDim2.fromScale]
      434 LOADN                            R17 2
      435 LOADN                            R18 2
      436 CALL                             R16 2 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R16
      439 SETTABLEKS                       R16 R15 K92 ["Size"]
      441 DUPTABLE                         R16 K52 [{"affordance"}]
      442 GETUPVAL                         R18 16
      443 GETTABLEKS                       R17 R18 K53 ["None"]
      445 SETTABLEKS                       R17 R16 K51 ["affordance"]
      447 SETTABLEKS                       R16 R15 K40 ["stateLayer"]
      449 NEWCLOSURE                       R16 P1
      450 CAPTURE                          VAL R1
      451 CAPTURE                          UPVAL U20
      452 SETTABLEKS                       R16 R15 K43 ["onActivated"]
      454 GETTABLEKS                       R17 R2 K83 ["backdrop"]
      456 GETTABLEKS                       R16 R17 K80 ["backgroundStyle"]
      458 SETTABLEKS                       R16 R15 K80 ["backgroundStyle"]
      460 LOADN                            R16 2
      461 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      463 LOADK                            R17 K84 ["%*--backdrop"]
      464 GETTABLEKS                       R19 R1 K14 ["testId"]
      466 NAMECALL                         R17 R17 K21 ["format"]
      468 CALL                             R17 2 1
      469 MOVE                             R16 R17
      470 SETTABLEKS                       R16 R15 K14 ["testId"]
      472 CALL                             R13 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R13
      475 SETTABLEKS                       R13 R12 K78 ["Backdrop"]
      477 GETUPVAL                         R14 3
      478 GETTABLEKS                       R13 R14 K11 ["createElement"]
      480 GETUPVAL                         R14 10
      481 DUPTABLE                         R15 K97 [{"tag", "ZIndex"}]
      482 GETTABLEKS                       R17 R2 K16 ["container"]
      484 GETTABLEKS                       R16 R17 K12 ["tag"]
      486 SETTABLEKS                       R16 R15 K12 ["tag"]
      488 LOADN                            R16 2
      489 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
      491 DUPTABLE                         R16 K23 [{"Shadow"}]
      492 GETUPVAL                         R18 3
      493 GETTABLEKS                       R17 R18 K11 ["createElement"]
      495 GETUPVAL                         R18 12
      496 DUPTABLE                         R19 K98 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      497 GETUPVAL                         R20 13
      498 SETTABLEKS                       R20 R19 K24 ["Image"]
      500 DUPCLOSURE                       R22 K99 [PROTO_2]
      501 CAPTURE                          UPVAL U14
      502 NAMECALL                         R20 R5 K100 ["map"]
      504 CALL                             R20 2 1
      505 SETTABLEKS                       R20 R19 K92 ["Size"]
      507 DUPTABLE                         R20 K31 [{"center", "scale"}]
      508 GETIMPORT                        R21 K34 [Rect.new]
      510 GETUPVAL                         R22 14
      511 GETUPVAL                         R23 14
      512 GETUPVAL                         R24 14
      513 GETUPVAL                         R25 14
      514 CALL                             R21 4 1
      515 SETTABLEKS                       R21 R20 K29 ["center"]
      517 LOADN                            R21 2
      518 SETTABLEKS                       R21 R20 K30 ["scale"]
      520 SETTABLEKS                       R20 R19 K25 ["slice"]
      522 GETTABLEKS                       R21 R2 K28 ["shadow"]
      524 GETTABLEKS                       R20 R21 K26 ["imageStyle"]
      526 SETTABLEKS                       R20 R19 K26 ["imageStyle"]
      528 LOADK                            R21 K35 ["%*--shadow"]
      529 GETTABLEKS                       R23 R1 K14 ["testId"]
      531 NAMECALL                         R21 R21 K21 ["format"]
      533 CALL                             R21 2 1
      534 MOVE                             R20 R21
      535 SETTABLEKS                       R20 R19 K14 ["testId"]
      537 CALL                             R17 2 1
      538 SETTABLEKS                       R17 R16 K22 ["Shadow"]
      540 CALL                             R13 3 1
      541 SETTABLEKS                       R13 R12 K90 ["DialogShadowWrapper"]
      543 DUPTABLE                         R13 K101 [{"Dialog"}]
      544 GETUPVAL                         R15 3
      545 GETTABLEKS                       R14 R15 K11 ["createElement"]
      547 GETUPVAL                         R15 10
      548 DUPTABLE                         R16 K97 [{"tag", "ZIndex"}]
      549 GETTABLEKS                       R18 R2 K16 ["container"]
      551 GETTABLEKS                       R17 R18 K12 ["tag"]
      553 SETTABLEKS                       R17 R16 K12 ["tag"]
      555 LOADN                            R17 3
      556 SETTABLEKS                       R17 R16 K13 ["ZIndex"]
      558 DUPTABLE                         R17 K104 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      559 GETUPVAL                         R19 3
      560 GETTABLEKS                       R18 R19 K11 ["createElement"]
      562 GETUPVAL                         R19 10
      563 DUPTABLE                         R20 K105 [{"tag", "LayoutOrder"}]
      564 LOADK                            R21 K106 ["fill"]
      565 SETTABLEKS                       R21 R20 K12 ["tag"]
      567 LOADN                            R21 0
      568 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      570 CALL                             R18 2 1
      571 SETTABLEKS                       R18 R17 K102 ["DialogFlexStart"]
      573 GETUPVAL                         R19 3
      574 GETTABLEKS                       R18 R19 K11 ["createElement"]
      576 GETUPVAL                         R19 10
      577 GETUPVAL                         R20 15
      578 MOVE                             R21 R1
      579 DUPTABLE                         R22 K44 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      580 GETTABLEKS                       R24 R2 K3 ["inner"]
      582 GETTABLEKS                       R23 R24 K12 ["tag"]
      584 SETTABLEKS                       R23 R22 K12 ["tag"]
      586 GETTABLEKS                       R23 R1 K45 ["forwardRef"]
      588 SETTABLEKS                       R23 R22 K38 ["ref"]
      590 DUPTABLE                         R23 K47 [{"MaxSize"}]
      591 GETIMPORT                        R24 K49 [Vector2.new]
      593 MOVE                             R25 R3
      594 LOADK                            R26 K50 [∞]
      595 CALL                             R24 2 1
      596 SETTABLEKS                       R24 R23 K46 ["MaxSize"]
      598 SETTABLEKS                       R23 R22 K39 ["sizeConstraint"]
      600 DUPTABLE                         R23 K52 [{"affordance"}]
      601 GETUPVAL                         R25 16
      602 GETTABLEKS                       R24 R25 K53 ["None"]
      604 SETTABLEKS                       R24 R23 K51 ["affordance"]
      606 SETTABLEKS                       R23 R22 K40 ["stateLayer"]
      608 GETUPVAL                         R25 9
      609 GETTABLEKS                       R24 R25 K54 ["FoundationDialogUpdateSelection"]
      611 JUMPIFNOT                        R24 ; [+4]
      612 GETUPVAL                         R24 17
      613 GETTABLEKS                       R23 R24 K55 ["nonSelectable"]
      615 JUMP                             ; [+1]
      616 LOADNIL                          R23
      617 SETTABLEKS                       R23 R22 K41 ["selection"]
      619 GETUPVAL                         R25 9
      620 GETTABLEKS                       R24 R25 K54 ["FoundationDialogUpdateSelection"]
      622 JUMPIFNOT                        R24 ; [+4]
      623 GETUPVAL                         R24 17
      624 GETTABLEKS                       R23 R24 K56 ["isolatedSelectionGroup"]
      626 JUMP                             ; [+1]
      627 LOADNIL                          R23
      628 SETTABLEKS                       R23 R22 K42 ["selectionGroup"]
      630 GETUPVAL                         R24 0
      631 GETTABLEKS                       R23 R24 K57 ["noop"]
      633 SETTABLEKS                       R23 R22 K43 ["onActivated"]
      635 CALL                             R20 2 1
      636 DUPTABLE                         R21 K60 [{"CloseAffordance", "DialogBody"}]
      637 GETTABLEKS                       R23 R1 K61 ["onClose"]
      639 JUMPIFNOT                        R23 ; [+46]
      640 GETUPVAL                         R23 3
      641 GETTABLEKS                       R22 R23 K11 ["createElement"]
      643 GETUPVAL                         R23 18
      644 DUPTABLE                         R24 K64 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      645 GETTABLEKS                       R25 R1 K61 ["onClose"]
      647 SETTABLEKS                       R25 R24 K43 ["onActivated"]
      649 GETIMPORT                        R25 K66 [UDim2.new]
      651 LOADN                            R26 1
      652 GETTABLEKS                       R29 R2 K67 ["closeAffordance"]
      654 GETTABLEKS                       R28 R29 K68 ["offset"]
      656 MINUS                            R27 R28
      657 LOADN                            R28 0
      658 GETTABLEKS                       R30 R2 K67 ["closeAffordance"]
      660 GETTABLEKS                       R29 R30 K68 ["offset"]
      662 CALL                             R25 4 1
      663 SETTABLEKS                       R25 R24 K62 ["Position"]
      665 GETIMPORT                        R25 K49 [Vector2.new]
      667 LOADN                            R26 1
      668 LOADN                            R27 0
      669 CALL                             R25 2 1
      670 SETTABLEKS                       R25 R24 K63 ["AnchorPoint"]
      672 LOADN                            R25 2
      673 SETTABLEKS                       R25 R24 K13 ["ZIndex"]
      675 LOADK                            R26 K69 ["%*--close-affordance"]
      676 GETTABLEKS                       R28 R1 K14 ["testId"]
      678 NAMECALL                         R26 R26 K21 ["format"]
      680 CALL                             R26 2 1
      681 MOVE                             R25 R26
      682 SETTABLEKS                       R25 R24 K14 ["testId"]
      684 CALL                             R22 2 1
      685 JUMP                             ; [+1]
      686 LOADNIL                          R22
      687 SETTABLEKS                       R22 R21 K58 ["CloseAffordance"]
      689 GETUPVAL                         R23 3
      690 GETTABLEKS                       R22 R23 K11 ["createElement"]
      692 GETUPVAL                         R23 10
      693 DUPTABLE                         R24 K70 [{"tag", "ref", "testId"}]
      694 GETTABLEKS                       R26 R2 K71 ["body"]
      696 GETTABLEKS                       R25 R26 K12 ["tag"]
      698 SETTABLEKS                       R25 R24 K12 ["tag"]
      700 SETTABLEKS                       R4 R24 K38 ["ref"]
      702 LOADK                            R26 K72 ["%*--body"]
      703 GETTABLEKS                       R28 R1 K14 ["testId"]
      705 NAMECALL                         R26 R26 K21 ["format"]
      707 CALL                             R26 2 1
      708 MOVE                             R25 R26
      709 SETTABLEKS                       R25 R24 K14 ["testId"]
      711 GETUPVAL                         R27 9
      712 GETTABLEKS                       R26 R27 K18 ["FoundationElevationSystem"]
      714 JUMPIFNOT                        R26 ; [+11]
      715 GETUPVAL                         R26 3
      716 GETTABLEKS                       R25 R26 K11 ["createElement"]
      718 GETUPVAL                         R26 19
      719 DUPTABLE                         R27 K74 [{"owner"}]
      720 SETTABLEKS                       R7 R27 K73 ["owner"]
      722 GETTABLEKS                       R28 R1 K75 ["children"]
      724 CALL                             R25 3 1
      725 JUMP                             ; [+2]
      726 GETTABLEKS                       R25 R1 K75 ["children"]
      728 CALL                             R22 3 1
      729 SETTABLEKS                       R22 R21 K59 ["DialogBody"]
      731 CALL                             R18 3 1
      732 SETTABLEKS                       R18 R17 K36 ["DialogInner"]
      734 GETUPVAL                         R19 3
      735 GETTABLEKS                       R18 R19 K11 ["createElement"]
      737 GETUPVAL                         R19 10
      738 DUPTABLE                         R20 K105 [{"tag", "LayoutOrder"}]
      739 LOADK                            R21 K106 ["fill"]
      740 SETTABLEKS                       R21 R20 K12 ["tag"]
      742 LOADN                            R21 2
      743 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      745 CALL                             R18 2 1
      746 SETTABLEKS                       R18 R17 K103 ["DialogFlexEnd"]
      748 CALL                             R14 3 1
      749 SETTABLEKS                       R14 R13 K6 ["Dialog"]
      751 CALL                             R9 4 1
      752 GETTABLEKS                       R10 R1 K107 ["disablePortal"]
      754 JUMPIF                           R10 ; [+2]
      755 JUMPIFNOTEQKNIL                  R6 ; [+2]
      757 RETURN                           R9 1
      758 GETUPVAL                         R11 21
      759 GETTABLEKS                       R10 R11 K108 ["createPortal"]
      761 MOVE                             R11 R9
      762 MOVE                             R12 R6
      763 CALL                             R10 2 -1
      764 RETURN                           R10 -1

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
      110 GETTABLEKS                       R19 R0 K11 ["Components"]
      112 GETTABLEKS                       R18 R19 K27 ["Types"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K6 [require]
      117 GETIMPORT                        R21 K1 [script]
      119 GETTABLEKS                       R20 R21 K4 ["Parent"]
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
      141 GETTABLEKS                       R21 R22 K29 ["useDialogSize"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETIMPORT                        R24 K1 [script]
      148 GETTABLEKS                       R23 R24 K4 ["Parent"]
      150 GETTABLEKS                       R22 R23 K30 ["useDialogResponsiveSize"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K6 [require]
      155 GETIMPORT                        R25 K1 [script]
      157 GETTABLEKS                       R24 R25 K4 ["Parent"]
      159 GETTABLEKS                       R23 R24 K31 ["DialogProvider"]
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
      203 GETTABLEKS                       R27 R5 K44 ["SHADOW_IMAGE"]
      205 GETTABLEKS                       R28 R5 K45 ["SHADOW_SIZE"]
      207 GETTABLEKS                       R30 R13 K46 ["FoundationDialogUpdateZIndex"]
      209 JUMPIFNOT                        R30 ; [+2]
      210 LOADN                            R29 6
      211 JUMP                             ; [+1]
      212 LOADN                            R29 3
      213 DUPCLOSURE                       R30 K47 [PROTO_3]
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R29
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R3
      236 DUPCLOSURE                       R31 K48 [PROTO_4]
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R30
      242 CAPTURE                          VAL R4
      243 GETTABLEKS                       R32 R2 K49 ["memo"]
      245 GETTABLEKS                       R33 R2 K50 ["forwardRef"]
      247 MOVE                             R34 R31
      248 CALL                             R33 1 -1
      249 CALL                             R32 -1 -1
      250 RETURN                           R32 -1
