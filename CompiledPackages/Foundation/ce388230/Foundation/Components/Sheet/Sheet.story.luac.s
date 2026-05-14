PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["createElement"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["Fragment"]
       13 LOADNIL                          R6
       14 DUPTABLE                         R7 K5 [{"Button", "Sheet"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K1 ["createElement"]
       18 GETUPVAL                         R9 2
       19 DUPTABLE                         R10 K8 [{"onActivated", "text"}]
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R11 R10 K6 ["onActivated"]
       24 LOADK                            R11 K9 ["Open Sheet"]
       25 SETTABLEKS                       R11 R10 K7 ["text"]
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K3 ["Button"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K1 ["createElement"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K10 ["Root"]
       36 DUPTABLE                         R10 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       37 SETTABLEKS                       R1 R10 K11 ["isOpen"]
       39 NEWTABLE                         R11 0 2
       41 LOADK                            R12 K17 [0.5]
       42 LOADK                            R13 K18 [0.9]
       43 SETLIST                          R11 R12 2 [1]
       45 SETTABLEKS                       R11 R10 K12 ["snapPoints"]
       47 GETTABLEKS                       R11 R0 K19 ["controls"]
       49 GETTABLEKS                       R11 R11 K13 ["preferCenterSheet"]
       51 SETTABLEKS                       R11 R10 K13 ["preferCenterSheet"]
       53 GETTABLEKS                       R11 R0 K19 ["controls"]
       55 GETTABLEKS                       R11 R11 K14 ["size"]
       57 SETTABLEKS                       R11 R10 K14 ["size"]
       59 NEWCLOSURE                       R11 P1
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R11 R10 K15 ["onClose"]
       63 DUPTABLE                         R11 K23 [{"Header", "Content", "Actions"}]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K1 ["createElement"]
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R13 R13 K20 ["Header"]
       70 LOADNIL                          R14
       71 DUPTABLE                         R15 K28 [{"Padding", "GameIcon", "Text", "Notification"}]
       72 GETUPVAL                         R16 0
       73 GETTABLEKS                       R16 R16 K1 ["createElement"]
       75 LOADK                            R17 K29 ["UIPadding"]
       76 DUPTABLE                         R18 K33 [{"PaddingTop", "PaddingBottom", "PaddingRight"}]
       77 GETIMPORT                        R19 K36 [UDim.new]
       79 LOADN                            R20 0
       80 GETTABLEKS                       R21 R3 K24 ["Padding"]
       82 GETTABLEKS                       R21 R21 K37 ["Medium"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K30 ["PaddingTop"]
       87 GETIMPORT                        R19 K36 [UDim.new]
       89 LOADN                            R20 0
       90 GETTABLEKS                       R21 R3 K24 ["Padding"]
       92 GETTABLEKS                       R21 R21 K37 ["Medium"]
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K31 ["PaddingBottom"]
       97 GETIMPORT                        R19 K36 [UDim.new]
       99 LOADN                            R20 0
      100 GETTABLEKS                       R21 R3 K24 ["Padding"]
      102 GETTABLEKS                       R21 R21 K38 ["Small"]
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K32 ["PaddingRight"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K24 ["Padding"]
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K1 ["createElement"]
      113 GETUPVAL                         R17 4
      114 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      118 LOADK                            R19 K42 ["size-1200 radius-small bg-shift-200"]
      119 SETTABLEKS                       R19 R18 K40 ["tag"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K25 ["GameIcon"]
      124 GETUPVAL                         R16 0
      125 GETTABLEKS                       R16 R16 K1 ["createElement"]
      127 GETUPVAL                         R17 5
      128 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      129 LOADN                            R19 2
      130 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      132 LOADK                            R19 K43 ["col gap-xsmall fill auto-xy"]
      133 SETTABLEKS                       R19 R18 K40 ["tag"]
      135 DUPTABLE                         R19 K46 [{"Title", "Subtitle"}]
      136 GETUPVAL                         R20 0
      137 GETTABLEKS                       R20 R20 K1 ["createElement"]
      139 GETUPVAL                         R21 6
      140 DUPTABLE                         R22 K47 [{"LayoutOrder", "Text", "tag"}]
      141 LOADN                            R23 1
      142 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      144 LOADK                            R23 K48 ["Sheet Title"]
      145 SETTABLEKS                       R23 R22 K26 ["Text"]
      147 LOADK                            R23 K49 ["text-title-large content-emphasis auto-xy text-truncate-split"]
      148 SETTABLEKS                       R23 R22 K40 ["tag"]
      150 CALL                             R20 2 1
      151 SETTABLEKS                       R20 R19 K44 ["Title"]
      153 GETUPVAL                         R20 0
      154 GETTABLEKS                       R20 R20 K1 ["createElement"]
      156 GETUPVAL                         R21 6
      157 DUPTABLE                         R22 K47 [{"LayoutOrder", "Text", "tag"}]
      158 LOADN                            R23 2
      159 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      161 LOADK                            R23 K50 ["Subtitle or description goes here"]
      162 SETTABLEKS                       R23 R22 K26 ["Text"]
      164 LOADK                            R23 K51 ["text-body-small content-default auto-xy text-truncate-split"]
      165 SETTABLEKS                       R23 R22 K40 ["tag"]
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K45 ["Subtitle"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K26 ["Text"]
      173 GETUPVAL                         R16 0
      174 GETTABLEKS                       R16 R16 K1 ["createElement"]
      176 GETUPVAL                         R17 7
      177 DUPTABLE                         R18 K54 [{"LayoutOrder", "Size", "icon", "onActivated"}]
      178 LOADN                            R19 3
      179 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      181 GETUPVAL                         R19 8
      182 GETTABLEKS                       R19 R19 K55 ["Large"]
      184 SETTABLEKS                       R19 R18 K52 ["Size"]
      186 GETUPVAL                         R19 9
      187 GETTABLEKS                       R19 R19 K56 ["Bell"]
      189 SETTABLEKS                       R19 R18 K53 ["icon"]
      191 DUPCLOSURE                       R19 K57 [PROTO_2]
      192 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      194 CALL                             R16 2 1
      195 SETTABLEKS                       R16 R15 K27 ["Notification"]
      197 CALL                             R12 3 1
      198 SETTABLEKS                       R12 R11 K20 ["Header"]
      200 GETUPVAL                         R12 0
      201 GETTABLEKS                       R12 R12 K1 ["createElement"]
      203 GETUPVAL                         R13 3
      204 GETTABLEKS                       R13 R13 K21 ["Content"]
      206 LOADNIL                          R14
      207 DUPTABLE                         R15 K70 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      208 GETUPVAL                         R16 0
      209 GETTABLEKS                       R16 R16 K1 ["createElement"]
      211 GETUPVAL                         R17 5
      212 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      213 LOADN                            R19 2
      214 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      216 LOADK                            R19 K71 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
      217 SETTABLEKS                       R19 R18 K40 ["tag"]
      219 CALL                             R16 2 1
      220 SETTABLEKS                       R16 R15 K58 ["Carousel"]
      222 GETUPVAL                         R16 0
      223 GETTABLEKS                       R16 R16 K1 ["createElement"]
      225 GETUPVAL                         R17 5
      226 DUPTABLE                         R18 K72 [{"tag", "LayoutOrder"}]
      227 LOADK                            R19 K73 ["row gap-medium auto-y size-full-0 items-center flex-fill"]
      228 SETTABLEKS                       R19 R18 K40 ["tag"]
      230 LOADN                            R19 3
      231 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      233 DUPTABLE                         R19 K77 [{"Rating", "Active", "Age", "Maturity"}]
      234 GETUPVAL                         R20 0
      235 GETTABLEKS                       R20 R20 K1 ["createElement"]
      237 GETUPVAL                         R21 5
      238 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      239 LOADN                            R23 1
      240 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      242 LOADK                            R23 K78 ["col gap-small align-x-center auto-xy"]
      243 SETTABLEKS                       R23 R22 K40 ["tag"]
      245 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      246 GETUPVAL                         R24 0
      247 GETTABLEKS                       R24 R24 K1 ["createElement"]
      249 GETUPVAL                         R25 6
      250 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      251 LOADN                            R27 1
      252 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      254 LOADK                            R27 K60 ["Rating"]
      255 SETTABLEKS                       R27 R26 K26 ["Text"]
      257 LOADK                            R27 K82 ["text-body-small content-default auto-xy"]
      258 SETTABLEKS                       R27 R26 K40 ["tag"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K79 ["Label"]
      263 GETUPVAL                         R24 0
      264 GETTABLEKS                       R24 R24 K1 ["createElement"]
      266 GETUPVAL                         R25 6
      267 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      268 LOADN                            R27 2
      269 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      271 LOADK                            R27 K83 ["94%"]
      272 SETTABLEKS                       R27 R26 K26 ["Text"]
      274 LOADK                            R27 K84 ["text-title-medium content-emphasis auto-xy"]
      275 SETTABLEKS                       R27 R26 K40 ["tag"]
      277 CALL                             R24 2 1
      278 SETTABLEKS                       R24 R23 K80 ["Value"]
      280 CALL                             R20 3 1
      281 SETTABLEKS                       R20 R19 K60 ["Rating"]
      283 GETUPVAL                         R20 0
      284 GETTABLEKS                       R20 R20 K1 ["createElement"]
      286 GETUPVAL                         R21 5
      287 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      288 LOADN                            R23 3
      289 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      291 LOADK                            R23 K78 ["col gap-small align-x-center auto-xy"]
      292 SETTABLEKS                       R23 R22 K40 ["tag"]
      294 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      295 GETUPVAL                         R24 0
      296 GETTABLEKS                       R24 R24 K1 ["createElement"]
      298 GETUPVAL                         R25 6
      299 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      300 LOADN                            R27 1
      301 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      303 LOADK                            R27 K74 ["Active"]
      304 SETTABLEKS                       R27 R26 K26 ["Text"]
      306 LOADK                            R27 K82 ["text-body-small content-default auto-xy"]
      307 SETTABLEKS                       R27 R26 K40 ["tag"]
      309 CALL                             R24 2 1
      310 SETTABLEKS                       R24 R23 K79 ["Label"]
      312 GETUPVAL                         R24 0
      313 GETTABLEKS                       R24 R24 K1 ["createElement"]
      315 GETUPVAL                         R25 6
      316 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      317 LOADN                            R27 2
      318 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      320 LOADK                            R27 K85 ["1.2K"]
      321 SETTABLEKS                       R27 R26 K26 ["Text"]
      323 LOADK                            R27 K84 ["text-title-medium content-emphasis auto-xy"]
      324 SETTABLEKS                       R27 R26 K40 ["tag"]
      326 CALL                             R24 2 1
      327 SETTABLEKS                       R24 R23 K80 ["Value"]
      329 CALL                             R20 3 1
      330 SETTABLEKS                       R20 R19 K74 ["Active"]
      332 GETUPVAL                         R20 0
      333 GETTABLEKS                       R20 R20 K1 ["createElement"]
      335 GETUPVAL                         R21 5
      336 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      337 LOADN                            R23 5
      338 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      340 LOADK                            R23 K78 ["col gap-small align-x-center auto-xy"]
      341 SETTABLEKS                       R23 R22 K40 ["tag"]
      343 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      344 GETUPVAL                         R24 0
      345 GETTABLEKS                       R24 R24 K1 ["createElement"]
      347 GETUPVAL                         R25 6
      348 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      349 LOADN                            R27 1
      350 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      352 LOADK                            R27 K75 ["Age"]
      353 SETTABLEKS                       R27 R26 K26 ["Text"]
      355 LOADK                            R27 K82 ["text-body-small content-default auto-xy"]
      356 SETTABLEKS                       R27 R26 K40 ["tag"]
      358 CALL                             R24 2 1
      359 SETTABLEKS                       R24 R23 K79 ["Label"]
      361 GETUPVAL                         R24 0
      362 GETTABLEKS                       R24 R24 K1 ["createElement"]
      364 GETUPVAL                         R25 6
      365 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      366 LOADN                            R27 2
      367 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      369 LOADK                            R27 K86 ["13+"]
      370 SETTABLEKS                       R27 R26 K26 ["Text"]
      372 LOADK                            R27 K84 ["text-title-medium content-emphasis auto-xy"]
      373 SETTABLEKS                       R27 R26 K40 ["tag"]
      375 CALL                             R24 2 1
      376 SETTABLEKS                       R24 R23 K80 ["Value"]
      378 CALL                             R20 3 1
      379 SETTABLEKS                       R20 R19 K75 ["Age"]
      381 GETUPVAL                         R20 0
      382 GETTABLEKS                       R20 R20 K1 ["createElement"]
      384 GETUPVAL                         R21 5
      385 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      386 LOADN                            R23 7
      387 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      389 LOADK                            R23 K78 ["col gap-small align-x-center auto-xy"]
      390 SETTABLEKS                       R23 R22 K40 ["tag"]
      392 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      393 GETUPVAL                         R24 0
      394 GETTABLEKS                       R24 R24 K1 ["createElement"]
      396 GETUPVAL                         R25 6
      397 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      398 LOADN                            R27 1
      399 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      401 LOADK                            R27 K76 ["Maturity"]
      402 SETTABLEKS                       R27 R26 K26 ["Text"]
      404 LOADK                            R27 K82 ["text-body-small content-default auto-xy"]
      405 SETTABLEKS                       R27 R26 K40 ["tag"]
      407 CALL                             R24 2 1
      408 SETTABLEKS                       R24 R23 K79 ["Label"]
      410 GETUPVAL                         R24 0
      411 GETTABLEKS                       R24 R24 K1 ["createElement"]
      413 GETUPVAL                         R25 6
      414 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      415 LOADN                            R27 2
      416 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      418 LOADK                            R27 K87 ["Everyone"]
      419 SETTABLEKS                       R27 R26 K26 ["Text"]
      421 LOADK                            R27 K84 ["text-title-medium content-emphasis auto-xy"]
      422 SETTABLEKS                       R27 R26 K40 ["tag"]
      424 CALL                             R24 2 1
      425 SETTABLEKS                       R24 R23 K80 ["Value"]
      427 CALL                             R20 3 1
      428 SETTABLEKS                       R20 R19 K76 ["Maturity"]
      430 CALL                             R16 3 1
      431 SETTABLEKS                       R16 R15 K59 ["Attributes"]
      433 GETUPVAL                         R16 0
      434 GETTABLEKS                       R16 R16 K1 ["createElement"]
      436 GETUPVAL                         R17 5
      437 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      438 LOADN                            R19 4
      439 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      441 LOADK                            R19 K88 ["row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"]
      442 SETTABLEKS                       R19 R18 K40 ["tag"]
      444 DUPTABLE                         R19 K92 [{"Icon", "Rating", "Up", "Down"}]
      445 GETUPVAL                         R20 0
      446 GETTABLEKS                       R20 R20 K1 ["createElement"]
      448 GETUPVAL                         R21 10
      449 DUPTABLE                         R22 K94 [{"LayoutOrder", "name", "size"}]
      450 LOADN                            R23 1
      451 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      453 GETUPVAL                         R23 9
      454 GETTABLEKS                       R23 R23 K95 ["ThumbUp"]
      456 SETTABLEKS                       R23 R22 K93 ["name"]
      458 GETUPVAL                         R23 11
      459 GETTABLEKS                       R23 R23 K55 ["Large"]
      461 SETTABLEKS                       R23 R22 K14 ["size"]
      463 CALL                             R20 2 1
      464 SETTABLEKS                       R20 R19 K89 ["Icon"]
      466 GETUPVAL                         R20 0
      467 GETTABLEKS                       R20 R20 K1 ["createElement"]
      469 GETUPVAL                         R21 5
      470 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      471 LOADN                            R23 2
      472 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      474 LOADK                            R23 K96 ["col grow auto-xy"]
      475 SETTABLEKS                       R23 R22 K40 ["tag"]
      477 DUPTABLE                         R23 K97 [{"Value", "Label"}]
      478 GETUPVAL                         R24 0
      479 GETTABLEKS                       R24 R24 K1 ["createElement"]
      481 GETUPVAL                         R25 6
      482 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      483 LOADN                            R27 1
      484 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      486 LOADK                            R27 K83 ["94%"]
      487 SETTABLEKS                       R27 R26 K26 ["Text"]
      489 LOADK                            R27 K98 ["text-body-medium content-emphasis auto-xy"]
      490 SETTABLEKS                       R27 R26 K40 ["tag"]
      492 CALL                             R24 2 1
      493 SETTABLEKS                       R24 R23 K80 ["Value"]
      495 GETUPVAL                         R24 0
      496 GETTABLEKS                       R24 R24 K1 ["createElement"]
      498 GETUPVAL                         R25 6
      499 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      500 LOADN                            R27 2
      501 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      503 LOADK                            R27 K99 ["100 VOTES"]
      504 SETTABLEKS                       R27 R26 K26 ["Text"]
      506 LOADK                            R27 K82 ["text-body-small content-default auto-xy"]
      507 SETTABLEKS                       R27 R26 K40 ["tag"]
      509 CALL                             R24 2 1
      510 SETTABLEKS                       R24 R23 K79 ["Label"]
      512 CALL                             R20 3 1
      513 SETTABLEKS                       R20 R19 K60 ["Rating"]
      515 GETUPVAL                         R20 0
      516 GETTABLEKS                       R20 R20 K1 ["createElement"]
      518 GETUPVAL                         R21 7
      519 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      520 LOADN                            R23 3
      521 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      523 GETUPVAL                         R23 9
      524 GETTABLEKS                       R23 R23 K95 ["ThumbUp"]
      526 SETTABLEKS                       R23 R22 K53 ["icon"]
      528 GETUPVAL                         R23 8
      529 GETTABLEKS                       R23 R23 K55 ["Large"]
      531 SETTABLEKS                       R23 R22 K14 ["size"]
      533 DUPCLOSURE                       R23 K101 [PROTO_3]
      534 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      536 CALL                             R20 2 1
      537 SETTABLEKS                       R20 R19 K90 ["Up"]
      539 GETUPVAL                         R20 0
      540 GETTABLEKS                       R20 R20 K1 ["createElement"]
      542 GETUPVAL                         R21 7
      543 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      544 LOADN                            R23 4
      545 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      547 GETUPVAL                         R23 9
      548 GETTABLEKS                       R23 R23 K102 ["ThumbDown"]
      550 SETTABLEKS                       R23 R22 K53 ["icon"]
      552 GETUPVAL                         R23 8
      553 GETTABLEKS                       R23 R23 K55 ["Large"]
      555 SETTABLEKS                       R23 R22 K14 ["size"]
      557 DUPCLOSURE                       R23 K103 [PROTO_4]
      558 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      560 CALL                             R20 2 1
      561 SETTABLEKS                       R20 R19 K91 ["Down"]
      563 CALL                             R16 3 1
      564 SETTABLEKS                       R16 R15 K60 ["Rating"]
      566 GETUPVAL                         R16 0
      567 GETTABLEKS                       R16 R16 K1 ["createElement"]
      569 GETUPVAL                         R17 6
      570 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      571 LOADN                            R19 5
      572 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      574 LOADK                            R19 K104 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      575 SETTABLEKS                       R19 R18 K26 ["Text"]
      577 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      578 SETTABLEKS                       R19 R18 K40 ["tag"]
      580 CALL                             R16 2 1
      581 SETTABLEKS                       R16 R15 K61 ["Description"]
      583 GETUPVAL                         R16 0
      584 GETTABLEKS                       R16 R16 K1 ["createElement"]
      586 GETUPVAL                         R17 6
      587 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      588 LOADN                            R19 6
      589 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      591 LOADK                            R19 K106 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      592 SETTABLEKS                       R19 R18 K26 ["Text"]
      594 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      595 SETTABLEKS                       R19 R18 K40 ["tag"]
      597 CALL                             R16 2 1
      598 SETTABLEKS                       R16 R15 K62 ["Description2"]
      600 GETUPVAL                         R16 0
      601 GETTABLEKS                       R16 R16 K1 ["createElement"]
      603 GETUPVAL                         R17 6
      604 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      605 LOADN                            R19 7
      606 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      608 LOADK                            R19 K107 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      609 SETTABLEKS                       R19 R18 K26 ["Text"]
      611 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      612 SETTABLEKS                       R19 R18 K40 ["tag"]
      614 CALL                             R16 2 1
      615 SETTABLEKS                       R16 R15 K63 ["Description3"]
      617 GETUPVAL                         R16 0
      618 GETTABLEKS                       R16 R16 K1 ["createElement"]
      620 GETUPVAL                         R17 6
      621 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      622 LOADN                            R19 8
      623 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      625 LOADK                            R19 K108 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
      626 SETTABLEKS                       R19 R18 K26 ["Text"]
      628 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      629 SETTABLEKS                       R19 R18 K40 ["tag"]
      631 CALL                             R16 2 1
      632 SETTABLEKS                       R16 R15 K64 ["Description4"]
      634 GETUPVAL                         R16 0
      635 GETTABLEKS                       R16 R16 K1 ["createElement"]
      637 GETUPVAL                         R17 6
      638 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      639 LOADN                            R19 9
      640 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      642 LOADK                            R19 K109 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
      643 SETTABLEKS                       R19 R18 K26 ["Text"]
      645 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      646 SETTABLEKS                       R19 R18 K40 ["tag"]
      648 CALL                             R16 2 1
      649 SETTABLEKS                       R16 R15 K65 ["Description5"]
      651 GETUPVAL                         R16 0
      652 GETTABLEKS                       R16 R16 K1 ["createElement"]
      654 GETUPVAL                         R17 6
      655 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      656 LOADN                            R19 10
      657 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      659 LOADK                            R19 K110 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
      660 SETTABLEKS                       R19 R18 K26 ["Text"]
      662 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      663 SETTABLEKS                       R19 R18 K40 ["tag"]
      665 CALL                             R16 2 1
      666 SETTABLEKS                       R16 R15 K66 ["Description6"]
      668 GETUPVAL                         R16 0
      669 GETTABLEKS                       R16 R16 K1 ["createElement"]
      671 GETUPVAL                         R17 6
      672 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      673 LOADN                            R19 11
      674 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      676 LOADK                            R19 K111 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
      677 SETTABLEKS                       R19 R18 K26 ["Text"]
      679 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      680 SETTABLEKS                       R19 R18 K40 ["tag"]
      682 CALL                             R16 2 1
      683 SETTABLEKS                       R16 R15 K67 ["Description7"]
      685 GETUPVAL                         R16 0
      686 GETTABLEKS                       R16 R16 K1 ["createElement"]
      688 GETUPVAL                         R17 6
      689 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      690 LOADN                            R19 12
      691 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      693 LOADK                            R19 K112 ["Feel free to reach out if you have any questions or need further assistance."]
      694 SETTABLEKS                       R19 R18 K26 ["Text"]
      696 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      697 SETTABLEKS                       R19 R18 K40 ["tag"]
      699 CALL                             R16 2 1
      700 SETTABLEKS                       R16 R15 K68 ["Description8"]
      702 GETUPVAL                         R16 0
      703 GETTABLEKS                       R16 R16 K1 ["createElement"]
      705 GETUPVAL                         R17 6
      706 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      707 LOADN                            R19 13
      708 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      710 LOADK                            R19 K113 ["Happy developing!"]
      711 SETTABLEKS                       R19 R18 K26 ["Text"]
      713 LOADK                            R19 K105 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      714 SETTABLEKS                       R19 R18 K40 ["tag"]
      716 CALL                             R16 2 1
      717 SETTABLEKS                       R16 R15 K69 ["Description9"]
      719 CALL                             R12 3 1
      720 SETTABLEKS                       R12 R11 K21 ["Content"]
      722 GETUPVAL                         R12 0
      723 GETTABLEKS                       R12 R12 K1 ["createElement"]
      725 GETUPVAL                         R13 3
      726 GETTABLEKS                       R13 R13 K22 ["Actions"]
      728 LOADNIL                          R14
      729 DUPTABLE                         R15 K116 [{"SubActions", "Join"}]
      730 GETUPVAL                         R16 0
      731 GETTABLEKS                       R16 R16 K1 ["createElement"]
      733 GETUPVAL                         R17 5
      734 DUPTABLE                         R18 K117 [{"tag"}]
      735 LOADK                            R19 K118 ["row auto-xy padding-right-small"]
      736 SETTABLEKS                       R19 R18 K40 ["tag"]
      738 DUPTABLE                         R19 K121 [{"More", "Invite"}]
      739 GETUPVAL                         R20 0
      740 GETTABLEKS                       R20 R20 K1 ["createElement"]
      742 GETUPVAL                         R21 7
      743 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      744 LOADN                            R23 1
      745 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      747 GETUPVAL                         R23 9
      748 GETTABLEKS                       R23 R23 K122 ["CircleThreeDotsHorizontal"]
      750 SETTABLEKS                       R23 R22 K53 ["icon"]
      752 GETUPVAL                         R23 8
      753 GETTABLEKS                       R23 R23 K55 ["Large"]
      755 SETTABLEKS                       R23 R22 K14 ["size"]
      757 DUPCLOSURE                       R23 K123 [PROTO_5]
      758 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      760 CALL                             R20 2 1
      761 SETTABLEKS                       R20 R19 K119 ["More"]
      763 GETUPVAL                         R20 0
      764 GETTABLEKS                       R20 R20 K1 ["createElement"]
      766 GETUPVAL                         R21 7
      767 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      768 LOADN                            R23 2
      769 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      771 GETUPVAL                         R23 9
      772 GETTABLEKS                       R23 R23 K124 ["PersonArrowFromBottomRight"]
      774 SETTABLEKS                       R23 R22 K53 ["icon"]
      776 GETUPVAL                         R23 8
      777 GETTABLEKS                       R23 R23 K55 ["Large"]
      779 SETTABLEKS                       R23 R22 K14 ["size"]
      781 DUPCLOSURE                       R23 K125 [PROTO_6]
      782 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      784 CALL                             R20 2 1
      785 SETTABLEKS                       R20 R19 K120 ["Invite"]
      787 CALL                             R16 3 1
      788 SETTABLEKS                       R16 R15 K114 ["SubActions"]
      790 GETUPVAL                         R16 0
      791 GETTABLEKS                       R16 R16 K1 ["createElement"]
      793 GETUPVAL                         R17 2
      794 DUPTABLE                         R18 K128 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
      795 LOADN                            R19 3
      796 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      798 LOADK                            R19 K115 ["Join"]
      799 SETTABLEKS                       R19 R18 K7 ["text"]
      801 GETUPVAL                         R19 9
      802 GETTABLEKS                       R19 R19 K129 ["PlayLarge"]
      804 SETTABLEKS                       R19 R18 K53 ["icon"]
      806 GETUPVAL                         R19 8
      807 GETTABLEKS                       R19 R19 K55 ["Large"]
      809 SETTABLEKS                       R19 R18 K14 ["size"]
      811 GETUPVAL                         R19 12
      812 GETTABLEKS                       R19 R19 K130 ["Emphasis"]
      814 SETTABLEKS                       R19 R18 K126 ["variant"]
      816 GETUPVAL                         R19 13
      817 GETTABLEKS                       R19 R19 K131 ["Fill"]
      819 SETTABLEKS                       R19 R18 K127 ["fillBehavior"]
      821 NEWCLOSURE                       R19 P7
      822 CAPTURE                          VAL R2
      823 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      825 CALL                             R16 2 1
      826 SETTABLEKS                       R16 R15 K115 ["Join"]
      828 CALL                             R12 3 1
      829 SETTABLEKS                       R12 R11 K22 ["Actions"]
      831 CALL                             R8 3 1
      832 SETTABLEKS                       R8 R7 K4 ["Sheet"]
      834 CALL                             R4 3 -1
      835 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K1 [0.2]
        8 GETUPVAL                         R5 1
        9 LOADN                            R6 44
       10 CALL                             R5 1 -1
       11 SETLIST                          R3 R4 -1 [1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["createElement"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["Fragment"]
       19 LOADNIL                          R6
       20 DUPTABLE                         R7 K6 [{"Button", "Sheet"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K2 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K9 [{"onActivated", "text"}]
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R11 R10 K7 ["onActivated"]
       30 LOADK                            R11 K10 ["Open Sheet (Manual)"]
       31 SETTABLEKS                       R11 R10 K8 ["text"]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K4 ["Button"]
       36 JUMPIFNOT                        R1 ; [+113]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K2 ["createElement"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K11 ["Root"]
       43 DUPTABLE                         R10 K18 [{"centerSheetHeight", "snapPoints", "defaultSnapPointIndex", "preferCenterSheet", "size", "onClose"}]
       44 GETTABLEKS                       R11 R0 K19 ["controls"]
       46 GETTABLEKS                       R11 R11 K12 ["centerSheetHeight"]
       48 SETTABLEKS                       R11 R10 K12 ["centerSheetHeight"]
       50 SETTABLEKS                       R3 R10 K13 ["snapPoints"]
       52 LOADN                            R11 2
       53 SETTABLEKS                       R11 R10 K14 ["defaultSnapPointIndex"]
       55 GETTABLEKS                       R11 R0 K19 ["controls"]
       57 GETTABLEKS                       R11 R11 K15 ["preferCenterSheet"]
       59 SETTABLEKS                       R11 R10 K15 ["preferCenterSheet"]
       61 GETTABLEKS                       R11 R0 K19 ["controls"]
       63 GETTABLEKS                       R11 R11 K16 ["size"]
       65 SETTABLEKS                       R11 R10 K16 ["size"]
       67 NEWCLOSURE                       R11 P1
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R11 R10 K17 ["onClose"]
       71 DUPTABLE                         R11 K21 [{"Content"}]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K2 ["createElement"]
       75 GETUPVAL                         R13 3
       76 GETTABLEKS                       R13 R13 K20 ["Content"]
       78 LOADNIL                          R14
       79 DUPTABLE                         R15 K26 [{"Image", "Description", "Description2", "Description3"}]
       80 GETUPVAL                         R16 0
       81 GETTABLEKS                       R16 R16 K2 ["createElement"]
       83 GETUPVAL                         R17 4
       84 DUPTABLE                         R18 K29 [{"LayoutOrder", "tag"}]
       85 LOADN                            R19 1
       86 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
       88 LOADK                            R19 K30 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
       89 SETTABLEKS                       R19 R18 K28 ["tag"]
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K22 ["Image"]
       94 GETUPVAL                         R16 0
       95 GETTABLEKS                       R16 R16 K2 ["createElement"]
       97 GETUPVAL                         R17 5
       98 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
       99 LOADN                            R19 2
      100 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      102 LOADK                            R19 K33 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      103 SETTABLEKS                       R19 R18 K31 ["Text"]
      105 LOADK                            R19 K34 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      106 SETTABLEKS                       R19 R18 K28 ["tag"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K23 ["Description"]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K2 ["createElement"]
      114 GETUPVAL                         R17 5
      115 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
      116 LOADN                            R19 3
      117 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      119 LOADK                            R19 K35 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      120 SETTABLEKS                       R19 R18 K31 ["Text"]
      122 LOADK                            R19 K34 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      123 SETTABLEKS                       R19 R18 K28 ["tag"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R15 K24 ["Description2"]
      128 GETUPVAL                         R16 0
      129 GETTABLEKS                       R16 R16 K2 ["createElement"]
      131 GETUPVAL                         R17 5
      132 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
      133 LOADN                            R19 4
      134 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      136 LOADK                            R19 K36 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      137 SETTABLEKS                       R19 R18 K31 ["Text"]
      139 LOADK                            R19 K34 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      140 SETTABLEKS                       R19 R18 K28 ["tag"]
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K25 ["Description3"]
      145 CALL                             R12 3 1
      146 SETTABLEKS                       R12 R11 K20 ["Content"]
      148 CALL                             R8 3 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R8
      151 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      153 CALL                             R4 3 -1
      154 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row gap-medium size-full-0 auto-y items-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K6 [{"Avatar", "Info"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K9 [{"size", "userId"}]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R8 R8 K10 ["Large"]
       17 SETTABLEKS                       R8 R7 K7 ["size"]
       19 LOADK                            R8 K11 [24813339]
       20 SETTABLEKS                       R8 R7 K8 ["userId"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K4 ["Avatar"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["createElement"]
       28 GETUPVAL                         R6 1
       29 DUPTABLE                         R7 K13 [{"LayoutOrder", "tag"}]
       30 LOADN                            R8 2
       31 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       33 LOADK                            R8 K14 ["col gap-xsmall fill auto-xy"]
       34 SETTABLEKS                       R8 R7 K1 ["tag"]
       36 DUPTABLE                         R8 K17 [{"Username", "UserId"}]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K0 ["createElement"]
       40 GETUPVAL                         R10 4
       41 DUPTABLE                         R11 K19 [{"LayoutOrder", "Text", "tag"}]
       42 LOADN                            R12 1
       43 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       45 LOADK                            R13 K20 ["User #%*"]
       46 GETTABLEKS                       R15 R0 K21 ["index"]
       48 NAMECALL                         R13 R13 K22 ["format"]
       50 CALL                             R13 2 1
       51 MOVE                             R12 R13
       52 SETTABLEKS                       R12 R11 K18 ["Text"]
       54 LOADK                            R12 K23 ["text-body-medium content-emphasis auto-xy text-truncate-split"]
       55 SETTABLEKS                       R12 R11 K1 ["tag"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K15 ["Username"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K0 ["createElement"]
       63 GETUPVAL                         R10 4
       64 DUPTABLE                         R11 K19 [{"LayoutOrder", "Text", "tag"}]
       65 LOADN                            R12 2
       66 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       68 LOADK                            R13 K24 ["@user%*"]
       69 GETTABLEKS                       R15 R0 K21 ["index"]
       71 NAMECALL                         R13 R13 K22 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 SETTABLEKS                       R12 R11 K18 ["Text"]
       77 LOADK                            R12 K25 ["text-body-small content-default auto-xy text-truncate-split"]
       78 SETTABLEKS                       R12 R11 K1 ["tag"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K16 ["UserId"]
       83 CALL                             R5 3 1
       84 SETTABLEKS                       R5 R4 K5 ["Info"]
       86 CALL                             R1 3 -1
       87 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R4 1
        3 SUBK                             R3 R4 K0 [1]
        4 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [math.max]
        8 CALL                             R1 2 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADN                            R4 1
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 0
       12 LOADN                            R8 1
       13 MOVE                             R6 R3
       14 LOADN                            R7 1
       15 FORNPREP                         R6
       16 MOVE                             R10 R5
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K1 ["createElement"]
       20 GETUPVAL                         R12 1
       21 DUPTABLE                         R13 K4 [{"index", "key"}]
       22 SETTABLEKS                       R8 R13 K2 ["index"]
       24 SETTABLEKS                       R8 R13 K3 ["key"]
       26 CALL                             R11 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R9 K7 [table.insert]
       30 CALL                             R9 -1 0
       31 FORNLOOP                         R6
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K8 ["Fragment"]
       38 LOADNIL                          R8
       39 DUPTABLE                         R9 K11 [{"Button", "Sheet"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K1 ["createElement"]
       43 GETUPVAL                         R11 2
       44 DUPTABLE                         R12 K14 [{"onActivated", "text"}]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R13 R12 K12 ["onActivated"]
       49 LOADK                            R13 K15 ["Open Sheet (Auto Size)"]
       50 SETTABLEKS                       R13 R12 K13 ["text"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K9 ["Button"]
       55 JUMPIFNOT                        R1 ; [+144]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K1 ["createElement"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K16 ["Root"]
       62 DUPTABLE                         R12 K20 [{"preferCenterSheet", "size", "onClose"}]
       63 GETTABLEKS                       R13 R0 K21 ["controls"]
       65 GETTABLEKS                       R13 R13 K17 ["preferCenterSheet"]
       67 SETTABLEKS                       R13 R12 K17 ["preferCenterSheet"]
       69 GETTABLEKS                       R13 R0 K21 ["controls"]
       71 GETTABLEKS                       R13 R13 K18 ["size"]
       73 SETTABLEKS                       R13 R12 K18 ["size"]
       75 NEWCLOSURE                       R13 P1
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R13 R12 K19 ["onClose"]
       79 DUPTABLE                         R13 K25 [{"Header", "Content", "Actions"}]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K1 ["createElement"]
       83 GETUPVAL                         R15 3
       84 GETTABLEKS                       R15 R15 K22 ["Header"]
       86 LOADNIL                          R16
       87 DUPTABLE                         R17 K27 [{"Title"}]
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R18 R18 K1 ["createElement"]
       91 GETUPVAL                         R19 4
       92 DUPTABLE                         R20 K31 [{"LayoutOrder", "Text", "tag"}]
       93 LOADN                            R21 1
       94 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
       96 LOADK                            R21 K32 ["Account Switcher"]
       97 SETTABLEKS                       R21 R20 K29 ["Text"]
       99 LOADK                            R21 K33 ["auto-xy text-heading-small text-truncate-split content-emphasis"]
      100 SETTABLEKS                       R21 R20 K30 ["tag"]
      102 CALL                             R18 2 1
      103 SETTABLEKS                       R18 R17 K26 ["Title"]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K22 ["Header"]
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R14 R14 K1 ["createElement"]
      111 GETUPVAL                         R15 3
      112 GETTABLEKS                       R15 R15 K23 ["Content"]
      114 LOADNIL                          R16
      115 MOVE                             R17 R5
      116 CALL                             R14 3 1
      117 SETTABLEKS                       R14 R13 K23 ["Content"]
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K1 ["createElement"]
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R15 R15 K24 ["Actions"]
      125 LOADNIL                          R16
      126 DUPTABLE                         R17 K36 [{"AddAccount", "RemoveAccount"}]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R18 R18 K1 ["createElement"]
      130 GETUPVAL                         R19 2
      131 DUPTABLE                         R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      132 LOADN                            R21 1
      133 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      135 LOADK                            R21 K40 ["Add Account"]
      136 SETTABLEKS                       R21 R20 K13 ["text"]
      138 GETUPVAL                         R21 5
      139 GETTABLEKS                       R21 R21 K41 ["Large"]
      141 SETTABLEKS                       R21 R20 K18 ["size"]
      143 GETUPVAL                         R21 6
      144 GETTABLEKS                       R21 R21 K42 ["Emphasis"]
      146 SETTABLEKS                       R21 R20 K37 ["variant"]
      148 GETUPVAL                         R21 7
      149 GETTABLEKS                       R21 R21 K43 ["Fill"]
      151 SETTABLEKS                       R21 R20 K38 ["fillBehavior"]
      153 NEWCLOSURE                       R21 P2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K34 ["AddAccount"]
      161 GETUPVAL                         R18 0
      162 GETTABLEKS                       R18 R18 K1 ["createElement"]
      164 GETUPVAL                         R19 2
      165 DUPTABLE                         R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      166 LOADN                            R21 2
      167 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      169 LOADK                            R21 K44 ["Remove Account"]
      170 SETTABLEKS                       R21 R20 K13 ["text"]
      172 GETUPVAL                         R21 5
      173 GETTABLEKS                       R21 R21 K41 ["Large"]
      175 SETTABLEKS                       R21 R20 K18 ["size"]
      177 GETUPVAL                         R21 6
      178 GETTABLEKS                       R21 R21 K45 ["Alert"]
      180 SETTABLEKS                       R21 R20 K37 ["variant"]
      182 GETUPVAL                         R21 7
      183 GETTABLEKS                       R21 R21 K43 ["Fill"]
      185 SETTABLEKS                       R21 R20 K38 ["fillBehavior"]
      187 NEWCLOSURE                       R21 P3
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R3
      190 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      192 CALL                             R18 2 1
      193 SETTABLEKS                       R18 R17 K35 ["RemoveAccount"]
      195 CALL                             R14 3 1
      196 SETTABLEKS                       R14 R13 K24 ["Actions"]
      198 CALL                             R10 3 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R10
      201 SETTABLEKS                       R10 R9 K10 ["Sheet"]
      203 CALL                             R6 3 -1
      204 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Button"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Icon"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["IconButton"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Image"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["Sheet"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["Text"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K16 ["View"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R1 K17 ["BuilderIcons"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R11 R11 K11 ["Icon"]
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K18 ["Enums"]
       81 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K18 ["Enums"]
       88 GETTABLEKS                       R14 R14 K20 ["DialogSize"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K18 ["Enums"]
       95 GETTABLEKS                       R15 R15 K21 ["FillBehavior"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K18 ["Enums"]
      102 GETTABLEKS                       R16 R16 K22 ["IconSize"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K18 ["Enums"]
      109 GETTABLEKS                       R17 R17 K23 ["InputSize"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K24 ["Utility"]
      116 GETTABLEKS                       R18 R18 K25 ["useScaledValue"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R0 K26 ["Providers"]
      123 GETTABLEKS                       R19 R19 K27 ["Style"]
      125 GETTABLEKS                       R19 R19 K28 ["useTokens"]
      127 CALL                             R18 1 1
      128 DUPCLOSURE                       R19 K29 [PROTO_8]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R14
      143 DUPCLOSURE                       R20 K30 [PROTO_11]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 DUPCLOSURE                       R21 K31 [PROTO_12]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R9
      156 DUPCLOSURE                       R22 K32 [PROTO_17]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R14
      165 DUPTABLE                         R23 K36 [{"summary", "stories", "controls"}]
      166 LOADK                            R24 K14 ["Sheet"]
      167 SETTABLEKS                       R24 R23 K33 ["summary"]
      169 NEWTABLE                         R24 0 3
      171 DUPTABLE                         R25 K39 [{"name", "story"}]
      172 LOADK                            R26 K40 ["Sheet (auto)"]
      173 SETTABLEKS                       R26 R25 K37 ["name"]
      175 SETTABLEKS                       R19 R25 K38 ["story"]
      177 DUPTABLE                         R26 K39 [{"name", "story"}]
      178 LOADK                            R27 K41 ["Sheet (manual sizing based on height prop)"]
      179 SETTABLEKS                       R27 R26 K37 ["name"]
      181 SETTABLEKS                       R20 R26 K38 ["story"]
      183 DUPTABLE                         R27 K39 [{"name", "story"}]
      184 LOADK                            R28 K42 ["Sheet (auto size)"]
      185 SETTABLEKS                       R28 R27 K37 ["name"]
      187 SETTABLEKS                       R22 R27 K38 ["story"]
      189 SETLIST                          R24 R25 3 [1]
      191 SETTABLEKS                       R24 R23 K34 ["stories"]
      193 DUPTABLE                         R24 K46 [{"centerSheetHeight", "preferCenterSheet", "size"}]
      194 LOADN                            R25 1
      195 SETTABLEKS                       R25 R24 K43 ["centerSheetHeight"]
      197 LOADB                            R25 0
      198 SETTABLEKS                       R25 R24 K44 ["preferCenterSheet"]
      200 NEWTABLE                         R25 0 2
      202 GETTABLEKS                       R26 R13 K47 ["Medium"]
      204 GETTABLEKS                       R27 R13 K48 ["Large"]
      206 SETLIST                          R25 R26 2 [1]
      208 SETTABLEKS                       R25 R24 K45 ["size"]
      210 SETTABLEKS                       R24 R23 K35 ["controls"]
      212 RETURN                           R23 1
