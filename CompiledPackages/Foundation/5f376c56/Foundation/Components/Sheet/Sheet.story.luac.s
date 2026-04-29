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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["createElement"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["Fragment"]
       13 LOADNIL                          R6
       14 DUPTABLE                         R7 K5 [{"Button", "Sheet"}]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K1 ["createElement"]
       18 GETUPVAL                         R9 2
       19 DUPTABLE                         R10 K8 [{"onActivated", "text"}]
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R11 R10 K6 ["onActivated"]
       24 LOADK                            R11 K9 ["Open Sheet"]
       25 SETTABLEKS                       R11 R10 K7 ["text"]
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K3 ["Button"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K1 ["createElement"]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R9 R10 K10 ["Root"]
       36 DUPTABLE                         R10 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       37 SETTABLEKS                       R1 R10 K11 ["isOpen"]
       39 NEWTABLE                         R11 0 2
       41 LOADK                            R12 K17 [0.5]
       42 LOADK                            R13 K18 [0.9]
       43 SETLIST                          R11 R12 2 [1]
       45 SETTABLEKS                       R11 R10 K12 ["snapPoints"]
       47 GETTABLEKS                       R12 R0 K19 ["controls"]
       49 GETTABLEKS                       R11 R12 K13 ["preferCenterSheet"]
       51 SETTABLEKS                       R11 R10 K13 ["preferCenterSheet"]
       53 GETTABLEKS                       R12 R0 K19 ["controls"]
       55 GETTABLEKS                       R11 R12 K14 ["size"]
       57 SETTABLEKS                       R11 R10 K14 ["size"]
       59 NEWCLOSURE                       R11 P1
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R11 R10 K15 ["onClose"]
       63 DUPTABLE                         R11 K23 [{"Header", "Content", "Actions"}]
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K1 ["createElement"]
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R13 R14 K20 ["Header"]
       70 LOADNIL                          R14
       71 DUPTABLE                         R15 K28 [{"Padding", "GameIcon", "Text", "Notification"}]
       72 GETUPVAL                         R17 0
       73 GETTABLEKS                       R16 R17 K1 ["createElement"]
       75 LOADK                            R17 K29 ["UIPadding"]
       76 DUPTABLE                         R18 K33 [{"PaddingTop", "PaddingBottom", "PaddingRight"}]
       77 GETIMPORT                        R19 K36 [UDim.new]
       79 LOADN                            R20 0
       80 GETTABLEKS                       R22 R3 K24 ["Padding"]
       82 GETTABLEKS                       R21 R22 K37 ["Medium"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K30 ["PaddingTop"]
       87 GETIMPORT                        R19 K36 [UDim.new]
       89 LOADN                            R20 0
       90 GETTABLEKS                       R22 R3 K24 ["Padding"]
       92 GETTABLEKS                       R21 R22 K37 ["Medium"]
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K31 ["PaddingBottom"]
       97 GETIMPORT                        R19 K36 [UDim.new]
       99 LOADN                            R20 0
      100 GETTABLEKS                       R22 R3 K24 ["Padding"]
      102 GETTABLEKS                       R21 R22 K38 ["Small"]
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K32 ["PaddingRight"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K24 ["Padding"]
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R16 R17 K1 ["createElement"]
      113 GETUPVAL                         R17 4
      114 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      118 LOADK                            R19 K42 ["size-1200 radius-small bg-shift-200"]
      119 SETTABLEKS                       R19 R18 K40 ["tag"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K25 ["GameIcon"]
      124 GETUPVAL                         R17 0
      125 GETTABLEKS                       R16 R17 K1 ["createElement"]
      127 GETUPVAL                         R17 5
      128 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      129 LOADN                            R19 2
      130 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      132 LOADK                            R19 K43 ["col fill gap-xsmall auto-xy"]
      133 SETTABLEKS                       R19 R18 K40 ["tag"]
      135 DUPTABLE                         R19 K46 [{"Title", "Subtitle"}]
      136 GETUPVAL                         R21 0
      137 GETTABLEKS                       R20 R21 K1 ["createElement"]
      139 GETUPVAL                         R21 6
      140 DUPTABLE                         R22 K47 [{"LayoutOrder", "Text", "tag"}]
      141 LOADN                            R23 1
      142 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      144 LOADK                            R23 K48 ["Sheet Title"]
      145 SETTABLEKS                       R23 R22 K26 ["Text"]
      147 LOADK                            R23 K49 ["auto-xy text-title-large text-truncate-split content-emphasis"]
      148 SETTABLEKS                       R23 R22 K40 ["tag"]
      150 CALL                             R20 2 1
      151 SETTABLEKS                       R20 R19 K44 ["Title"]
      153 GETUPVAL                         R21 0
      154 GETTABLEKS                       R20 R21 K1 ["createElement"]
      156 GETUPVAL                         R21 6
      157 DUPTABLE                         R22 K47 [{"LayoutOrder", "Text", "tag"}]
      158 LOADN                            R23 2
      159 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      161 LOADK                            R23 K50 ["Subtitle or description goes here"]
      162 SETTABLEKS                       R23 R22 K26 ["Text"]
      164 LOADK                            R23 K51 ["auto-xy text-body-small text-truncate-split content-default"]
      165 SETTABLEKS                       R23 R22 K40 ["tag"]
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K45 ["Subtitle"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K26 ["Text"]
      173 GETUPVAL                         R17 0
      174 GETTABLEKS                       R16 R17 K1 ["createElement"]
      176 GETUPVAL                         R17 7
      177 DUPTABLE                         R18 K54 [{"LayoutOrder", "Size", "icon", "onActivated"}]
      178 LOADN                            R19 3
      179 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      181 GETUPVAL                         R20 8
      182 GETTABLEKS                       R19 R20 K55 ["Large"]
      184 SETTABLEKS                       R19 R18 K52 ["Size"]
      186 GETUPVAL                         R20 9
      187 GETTABLEKS                       R19 R20 K56 ["Bell"]
      189 SETTABLEKS                       R19 R18 K53 ["icon"]
      191 DUPCLOSURE                       R19 K57 [PROTO_2]
      192 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      194 CALL                             R16 2 1
      195 SETTABLEKS                       R16 R15 K27 ["Notification"]
      197 CALL                             R12 3 1
      198 SETTABLEKS                       R12 R11 K20 ["Header"]
      200 GETUPVAL                         R13 0
      201 GETTABLEKS                       R12 R13 K1 ["createElement"]
      203 GETUPVAL                         R14 3
      204 GETTABLEKS                       R13 R14 K21 ["Content"]
      206 LOADNIL                          R14
      207 DUPTABLE                         R15 K70 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      208 GETUPVAL                         R17 0
      209 GETTABLEKS                       R16 R17 K1 ["createElement"]
      211 GETUPVAL                         R17 5
      212 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      213 LOADN                            R19 2
      214 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      216 LOADK                            R19 K71 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
      217 SETTABLEKS                       R19 R18 K40 ["tag"]
      219 CALL                             R16 2 1
      220 SETTABLEKS                       R16 R15 K58 ["Carousel"]
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R16 R17 K1 ["createElement"]
      225 GETUPVAL                         R17 5
      226 DUPTABLE                         R18 K72 [{"tag", "LayoutOrder"}]
      227 LOADK                            R19 K73 ["row flex-fill items-center gap-medium size-full-0 auto-y"]
      228 SETTABLEKS                       R19 R18 K40 ["tag"]
      230 LOADN                            R19 3
      231 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      233 DUPTABLE                         R19 K77 [{"Rating", "Active", "Age", "Maturity"}]
      234 GETUPVAL                         R21 0
      235 GETTABLEKS                       R20 R21 K1 ["createElement"]
      237 GETUPVAL                         R21 5
      238 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      239 LOADN                            R23 1
      240 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      242 LOADK                            R23 K78 ["col align-x-center gap-small auto-xy"]
      243 SETTABLEKS                       R23 R22 K40 ["tag"]
      245 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      246 GETUPVAL                         R25 0
      247 GETTABLEKS                       R24 R25 K1 ["createElement"]
      249 GETUPVAL                         R25 6
      250 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      251 LOADN                            R27 1
      252 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      254 LOADK                            R27 K60 ["Rating"]
      255 SETTABLEKS                       R27 R26 K26 ["Text"]
      257 LOADK                            R27 K82 ["auto-xy text-body-small content-default"]
      258 SETTABLEKS                       R27 R26 K40 ["tag"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K79 ["Label"]
      263 GETUPVAL                         R25 0
      264 GETTABLEKS                       R24 R25 K1 ["createElement"]
      266 GETUPVAL                         R25 6
      267 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      268 LOADN                            R27 2
      269 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      271 LOADK                            R27 K83 ["94%"]
      272 SETTABLEKS                       R27 R26 K26 ["Text"]
      274 LOADK                            R27 K84 ["auto-xy text-title-medium content-emphasis"]
      275 SETTABLEKS                       R27 R26 K40 ["tag"]
      277 CALL                             R24 2 1
      278 SETTABLEKS                       R24 R23 K80 ["Value"]
      280 CALL                             R20 3 1
      281 SETTABLEKS                       R20 R19 K60 ["Rating"]
      283 GETUPVAL                         R21 0
      284 GETTABLEKS                       R20 R21 K1 ["createElement"]
      286 GETUPVAL                         R21 5
      287 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      288 LOADN                            R23 3
      289 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      291 LOADK                            R23 K78 ["col align-x-center gap-small auto-xy"]
      292 SETTABLEKS                       R23 R22 K40 ["tag"]
      294 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      295 GETUPVAL                         R25 0
      296 GETTABLEKS                       R24 R25 K1 ["createElement"]
      298 GETUPVAL                         R25 6
      299 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      300 LOADN                            R27 1
      301 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      303 LOADK                            R27 K74 ["Active"]
      304 SETTABLEKS                       R27 R26 K26 ["Text"]
      306 LOADK                            R27 K82 ["auto-xy text-body-small content-default"]
      307 SETTABLEKS                       R27 R26 K40 ["tag"]
      309 CALL                             R24 2 1
      310 SETTABLEKS                       R24 R23 K79 ["Label"]
      312 GETUPVAL                         R25 0
      313 GETTABLEKS                       R24 R25 K1 ["createElement"]
      315 GETUPVAL                         R25 6
      316 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      317 LOADN                            R27 2
      318 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      320 LOADK                            R27 K85 ["1.2K"]
      321 SETTABLEKS                       R27 R26 K26 ["Text"]
      323 LOADK                            R27 K84 ["auto-xy text-title-medium content-emphasis"]
      324 SETTABLEKS                       R27 R26 K40 ["tag"]
      326 CALL                             R24 2 1
      327 SETTABLEKS                       R24 R23 K80 ["Value"]
      329 CALL                             R20 3 1
      330 SETTABLEKS                       R20 R19 K74 ["Active"]
      332 GETUPVAL                         R21 0
      333 GETTABLEKS                       R20 R21 K1 ["createElement"]
      335 GETUPVAL                         R21 5
      336 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      337 LOADN                            R23 5
      338 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      340 LOADK                            R23 K78 ["col align-x-center gap-small auto-xy"]
      341 SETTABLEKS                       R23 R22 K40 ["tag"]
      343 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      344 GETUPVAL                         R25 0
      345 GETTABLEKS                       R24 R25 K1 ["createElement"]
      347 GETUPVAL                         R25 6
      348 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      349 LOADN                            R27 1
      350 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      352 LOADK                            R27 K75 ["Age"]
      353 SETTABLEKS                       R27 R26 K26 ["Text"]
      355 LOADK                            R27 K82 ["auto-xy text-body-small content-default"]
      356 SETTABLEKS                       R27 R26 K40 ["tag"]
      358 CALL                             R24 2 1
      359 SETTABLEKS                       R24 R23 K79 ["Label"]
      361 GETUPVAL                         R25 0
      362 GETTABLEKS                       R24 R25 K1 ["createElement"]
      364 GETUPVAL                         R25 6
      365 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      366 LOADN                            R27 2
      367 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      369 LOADK                            R27 K86 ["13+"]
      370 SETTABLEKS                       R27 R26 K26 ["Text"]
      372 LOADK                            R27 K84 ["auto-xy text-title-medium content-emphasis"]
      373 SETTABLEKS                       R27 R26 K40 ["tag"]
      375 CALL                             R24 2 1
      376 SETTABLEKS                       R24 R23 K80 ["Value"]
      378 CALL                             R20 3 1
      379 SETTABLEKS                       R20 R19 K75 ["Age"]
      381 GETUPVAL                         R21 0
      382 GETTABLEKS                       R20 R21 K1 ["createElement"]
      384 GETUPVAL                         R21 5
      385 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      386 LOADN                            R23 7
      387 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      389 LOADK                            R23 K78 ["col align-x-center gap-small auto-xy"]
      390 SETTABLEKS                       R23 R22 K40 ["tag"]
      392 DUPTABLE                         R23 K81 [{"Label", "Value"}]
      393 GETUPVAL                         R25 0
      394 GETTABLEKS                       R24 R25 K1 ["createElement"]
      396 GETUPVAL                         R25 6
      397 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      398 LOADN                            R27 1
      399 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      401 LOADK                            R27 K76 ["Maturity"]
      402 SETTABLEKS                       R27 R26 K26 ["Text"]
      404 LOADK                            R27 K82 ["auto-xy text-body-small content-default"]
      405 SETTABLEKS                       R27 R26 K40 ["tag"]
      407 CALL                             R24 2 1
      408 SETTABLEKS                       R24 R23 K79 ["Label"]
      410 GETUPVAL                         R25 0
      411 GETTABLEKS                       R24 R25 K1 ["createElement"]
      413 GETUPVAL                         R25 6
      414 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      415 LOADN                            R27 2
      416 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      418 LOADK                            R27 K87 ["Everyone"]
      419 SETTABLEKS                       R27 R26 K26 ["Text"]
      421 LOADK                            R27 K84 ["auto-xy text-title-medium content-emphasis"]
      422 SETTABLEKS                       R27 R26 K40 ["tag"]
      424 CALL                             R24 2 1
      425 SETTABLEKS                       R24 R23 K80 ["Value"]
      427 CALL                             R20 3 1
      428 SETTABLEKS                       R20 R19 K76 ["Maturity"]
      430 CALL                             R16 3 1
      431 SETTABLEKS                       R16 R15 K59 ["Attributes"]
      433 GETUPVAL                         R17 0
      434 GETTABLEKS                       R16 R17 K1 ["createElement"]
      436 GETUPVAL                         R17 5
      437 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      438 LOADN                            R19 4
      439 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      441 LOADK                            R19 K88 ["row align-y-center gap-small size-full-0 auto-y padding-small radius-medium bg-shift-200"]
      442 SETTABLEKS                       R19 R18 K40 ["tag"]
      444 DUPTABLE                         R19 K92 [{"Icon", "Rating", "Up", "Down"}]
      445 GETUPVAL                         R21 0
      446 GETTABLEKS                       R20 R21 K1 ["createElement"]
      448 GETUPVAL                         R21 10
      449 DUPTABLE                         R22 K94 [{"LayoutOrder", "name", "size"}]
      450 LOADN                            R23 1
      451 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      453 GETUPVAL                         R24 9
      454 GETTABLEKS                       R23 R24 K95 ["ThumbUp"]
      456 SETTABLEKS                       R23 R22 K93 ["name"]
      458 GETUPVAL                         R24 11
      459 GETTABLEKS                       R23 R24 K55 ["Large"]
      461 SETTABLEKS                       R23 R22 K14 ["size"]
      463 CALL                             R20 2 1
      464 SETTABLEKS                       R20 R19 K89 ["Icon"]
      466 GETUPVAL                         R21 0
      467 GETTABLEKS                       R20 R21 K1 ["createElement"]
      469 GETUPVAL                         R21 5
      470 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      471 LOADN                            R23 2
      472 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      474 LOADK                            R23 K96 ["col grow auto-xy"]
      475 SETTABLEKS                       R23 R22 K40 ["tag"]
      477 DUPTABLE                         R23 K97 [{"Value", "Label"}]
      478 GETUPVAL                         R25 0
      479 GETTABLEKS                       R24 R25 K1 ["createElement"]
      481 GETUPVAL                         R25 6
      482 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      483 LOADN                            R27 1
      484 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      486 LOADK                            R27 K83 ["94%"]
      487 SETTABLEKS                       R27 R26 K26 ["Text"]
      489 LOADK                            R27 K98 ["auto-xy text-body-medium content-emphasis"]
      490 SETTABLEKS                       R27 R26 K40 ["tag"]
      492 CALL                             R24 2 1
      493 SETTABLEKS                       R24 R23 K80 ["Value"]
      495 GETUPVAL                         R25 0
      496 GETTABLEKS                       R24 R25 K1 ["createElement"]
      498 GETUPVAL                         R25 6
      499 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      500 LOADN                            R27 2
      501 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      503 LOADK                            R27 K99 ["100 VOTES"]
      504 SETTABLEKS                       R27 R26 K26 ["Text"]
      506 LOADK                            R27 K82 ["auto-xy text-body-small content-default"]
      507 SETTABLEKS                       R27 R26 K40 ["tag"]
      509 CALL                             R24 2 1
      510 SETTABLEKS                       R24 R23 K79 ["Label"]
      512 CALL                             R20 3 1
      513 SETTABLEKS                       R20 R19 K60 ["Rating"]
      515 GETUPVAL                         R21 0
      516 GETTABLEKS                       R20 R21 K1 ["createElement"]
      518 GETUPVAL                         R21 7
      519 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      520 LOADN                            R23 3
      521 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      523 GETUPVAL                         R24 9
      524 GETTABLEKS                       R23 R24 K95 ["ThumbUp"]
      526 SETTABLEKS                       R23 R22 K53 ["icon"]
      528 GETUPVAL                         R24 8
      529 GETTABLEKS                       R23 R24 K55 ["Large"]
      531 SETTABLEKS                       R23 R22 K14 ["size"]
      533 DUPCLOSURE                       R23 K101 [PROTO_3]
      534 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      536 CALL                             R20 2 1
      537 SETTABLEKS                       R20 R19 K90 ["Up"]
      539 GETUPVAL                         R21 0
      540 GETTABLEKS                       R20 R21 K1 ["createElement"]
      542 GETUPVAL                         R21 7
      543 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      544 LOADN                            R23 4
      545 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      547 GETUPVAL                         R24 9
      548 GETTABLEKS                       R23 R24 K102 ["ThumbDown"]
      550 SETTABLEKS                       R23 R22 K53 ["icon"]
      552 GETUPVAL                         R24 8
      553 GETTABLEKS                       R23 R24 K55 ["Large"]
      555 SETTABLEKS                       R23 R22 K14 ["size"]
      557 DUPCLOSURE                       R23 K103 [PROTO_4]
      558 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      560 CALL                             R20 2 1
      561 SETTABLEKS                       R20 R19 K91 ["Down"]
      563 CALL                             R16 3 1
      564 SETTABLEKS                       R16 R15 K60 ["Rating"]
      566 GETUPVAL                         R17 0
      567 GETTABLEKS                       R16 R17 K1 ["createElement"]
      569 GETUPVAL                         R17 6
      570 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      571 LOADN                            R19 5
      572 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      574 LOADK                            R19 K104 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      575 SETTABLEKS                       R19 R18 K26 ["Text"]
      577 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      578 SETTABLEKS                       R19 R18 K40 ["tag"]
      580 CALL                             R16 2 1
      581 SETTABLEKS                       R16 R15 K61 ["Description"]
      583 GETUPVAL                         R17 0
      584 GETTABLEKS                       R16 R17 K1 ["createElement"]
      586 GETUPVAL                         R17 6
      587 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      588 LOADN                            R19 6
      589 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      591 LOADK                            R19 K106 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      592 SETTABLEKS                       R19 R18 K26 ["Text"]
      594 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      595 SETTABLEKS                       R19 R18 K40 ["tag"]
      597 CALL                             R16 2 1
      598 SETTABLEKS                       R16 R15 K62 ["Description2"]
      600 GETUPVAL                         R17 0
      601 GETTABLEKS                       R16 R17 K1 ["createElement"]
      603 GETUPVAL                         R17 6
      604 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      605 LOADN                            R19 7
      606 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      608 LOADK                            R19 K107 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      609 SETTABLEKS                       R19 R18 K26 ["Text"]
      611 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      612 SETTABLEKS                       R19 R18 K40 ["tag"]
      614 CALL                             R16 2 1
      615 SETTABLEKS                       R16 R15 K63 ["Description3"]
      617 GETUPVAL                         R17 0
      618 GETTABLEKS                       R16 R17 K1 ["createElement"]
      620 GETUPVAL                         R17 6
      621 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      622 LOADN                            R19 8
      623 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      625 LOADK                            R19 K108 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
      626 SETTABLEKS                       R19 R18 K26 ["Text"]
      628 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      629 SETTABLEKS                       R19 R18 K40 ["tag"]
      631 CALL                             R16 2 1
      632 SETTABLEKS                       R16 R15 K64 ["Description4"]
      634 GETUPVAL                         R17 0
      635 GETTABLEKS                       R16 R17 K1 ["createElement"]
      637 GETUPVAL                         R17 6
      638 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      639 LOADN                            R19 9
      640 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      642 LOADK                            R19 K109 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
      643 SETTABLEKS                       R19 R18 K26 ["Text"]
      645 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      646 SETTABLEKS                       R19 R18 K40 ["tag"]
      648 CALL                             R16 2 1
      649 SETTABLEKS                       R16 R15 K65 ["Description5"]
      651 GETUPVAL                         R17 0
      652 GETTABLEKS                       R16 R17 K1 ["createElement"]
      654 GETUPVAL                         R17 6
      655 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      656 LOADN                            R19 10
      657 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      659 LOADK                            R19 K110 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
      660 SETTABLEKS                       R19 R18 K26 ["Text"]
      662 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      663 SETTABLEKS                       R19 R18 K40 ["tag"]
      665 CALL                             R16 2 1
      666 SETTABLEKS                       R16 R15 K66 ["Description6"]
      668 GETUPVAL                         R17 0
      669 GETTABLEKS                       R16 R17 K1 ["createElement"]
      671 GETUPVAL                         R17 6
      672 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      673 LOADN                            R19 11
      674 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      676 LOADK                            R19 K111 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
      677 SETTABLEKS                       R19 R18 K26 ["Text"]
      679 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      680 SETTABLEKS                       R19 R18 K40 ["tag"]
      682 CALL                             R16 2 1
      683 SETTABLEKS                       R16 R15 K67 ["Description7"]
      685 GETUPVAL                         R17 0
      686 GETTABLEKS                       R16 R17 K1 ["createElement"]
      688 GETUPVAL                         R17 6
      689 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      690 LOADN                            R19 12
      691 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      693 LOADK                            R19 K112 ["Feel free to reach out if you have any questions or need further assistance."]
      694 SETTABLEKS                       R19 R18 K26 ["Text"]
      696 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      697 SETTABLEKS                       R19 R18 K40 ["tag"]
      699 CALL                             R16 2 1
      700 SETTABLEKS                       R16 R15 K68 ["Description8"]
      702 GETUPVAL                         R17 0
      703 GETTABLEKS                       R16 R17 K1 ["createElement"]
      705 GETUPVAL                         R17 6
      706 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      707 LOADN                            R19 13
      708 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      710 LOADK                            R19 K113 ["Happy developing!"]
      711 SETTABLEKS                       R19 R18 K26 ["Text"]
      713 LOADK                            R19 K105 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      714 SETTABLEKS                       R19 R18 K40 ["tag"]
      716 CALL                             R16 2 1
      717 SETTABLEKS                       R16 R15 K69 ["Description9"]
      719 CALL                             R12 3 1
      720 SETTABLEKS                       R12 R11 K21 ["Content"]
      722 GETUPVAL                         R13 0
      723 GETTABLEKS                       R12 R13 K1 ["createElement"]
      725 GETUPVAL                         R14 3
      726 GETTABLEKS                       R13 R14 K22 ["Actions"]
      728 LOADNIL                          R14
      729 DUPTABLE                         R15 K116 [{"SubActions", "Join"}]
      730 GETUPVAL                         R17 0
      731 GETTABLEKS                       R16 R17 K1 ["createElement"]
      733 GETUPVAL                         R17 5
      734 DUPTABLE                         R18 K117 [{"tag"}]
      735 LOADK                            R19 K118 ["row auto-xy padding-right-small"]
      736 SETTABLEKS                       R19 R18 K40 ["tag"]
      738 DUPTABLE                         R19 K121 [{"More", "Invite"}]
      739 GETUPVAL                         R21 0
      740 GETTABLEKS                       R20 R21 K1 ["createElement"]
      742 GETUPVAL                         R21 7
      743 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      744 LOADN                            R23 1
      745 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      747 GETUPVAL                         R24 9
      748 GETTABLEKS                       R23 R24 K122 ["CircleThreeDotsHorizontal"]
      750 SETTABLEKS                       R23 R22 K53 ["icon"]
      752 GETUPVAL                         R24 8
      753 GETTABLEKS                       R23 R24 K55 ["Large"]
      755 SETTABLEKS                       R23 R22 K14 ["size"]
      757 DUPCLOSURE                       R23 K123 [PROTO_5]
      758 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      760 CALL                             R20 2 1
      761 SETTABLEKS                       R20 R19 K119 ["More"]
      763 GETUPVAL                         R21 0
      764 GETTABLEKS                       R20 R21 K1 ["createElement"]
      766 GETUPVAL                         R21 7
      767 DUPTABLE                         R22 K100 [{"LayoutOrder", "icon", "size", "onActivated"}]
      768 LOADN                            R23 2
      769 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      771 GETUPVAL                         R24 9
      772 GETTABLEKS                       R23 R24 K124 ["PersonArrowFromBottomRight"]
      774 SETTABLEKS                       R23 R22 K53 ["icon"]
      776 GETUPVAL                         R24 8
      777 GETTABLEKS                       R23 R24 K55 ["Large"]
      779 SETTABLEKS                       R23 R22 K14 ["size"]
      781 DUPCLOSURE                       R23 K125 [PROTO_6]
      782 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      784 CALL                             R20 2 1
      785 SETTABLEKS                       R20 R19 K120 ["Invite"]
      787 CALL                             R16 3 1
      788 SETTABLEKS                       R16 R15 K114 ["SubActions"]
      790 GETUPVAL                         R17 0
      791 GETTABLEKS                       R16 R17 K1 ["createElement"]
      793 GETUPVAL                         R17 2
      794 DUPTABLE                         R18 K128 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
      795 LOADN                            R19 3
      796 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      798 LOADK                            R19 K115 ["Join"]
      799 SETTABLEKS                       R19 R18 K7 ["text"]
      801 GETUPVAL                         R20 9
      802 GETTABLEKS                       R19 R20 K129 ["PlayLarge"]
      804 SETTABLEKS                       R19 R18 K53 ["icon"]
      806 GETUPVAL                         R20 8
      807 GETTABLEKS                       R19 R20 K55 ["Large"]
      809 SETTABLEKS                       R19 R18 K14 ["size"]
      811 GETUPVAL                         R20 12
      812 GETTABLEKS                       R19 R20 K130 ["Emphasis"]
      814 SETTABLEKS                       R19 R18 K126 ["variant"]
      816 GETUPVAL                         R20 13
      817 GETTABLEKS                       R19 R20 K131 ["Fill"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K1 [0.2]
        8 GETUPVAL                         R5 1
        9 LOADN                            R6 44
       10 CALL                             R5 1 -1
       11 SETLIST                          R3 R4 -1 [1]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["createElement"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K3 ["Fragment"]
       19 LOADNIL                          R6
       20 DUPTABLE                         R7 K6 [{"Button", "Sheet"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K2 ["createElement"]
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
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K2 ["createElement"]
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R9 R10 K11 ["Root"]
       43 DUPTABLE                         R10 K18 [{"centerSheetHeight", "snapPoints", "defaultSnapPointIndex", "preferCenterSheet", "size", "onClose"}]
       44 GETTABLEKS                       R12 R0 K19 ["controls"]
       46 GETTABLEKS                       R11 R12 K12 ["centerSheetHeight"]
       48 SETTABLEKS                       R11 R10 K12 ["centerSheetHeight"]
       50 SETTABLEKS                       R3 R10 K13 ["snapPoints"]
       52 LOADN                            R11 2
       53 SETTABLEKS                       R11 R10 K14 ["defaultSnapPointIndex"]
       55 GETTABLEKS                       R12 R0 K19 ["controls"]
       57 GETTABLEKS                       R11 R12 K15 ["preferCenterSheet"]
       59 SETTABLEKS                       R11 R10 K15 ["preferCenterSheet"]
       61 GETTABLEKS                       R12 R0 K19 ["controls"]
       63 GETTABLEKS                       R11 R12 K16 ["size"]
       65 SETTABLEKS                       R11 R10 K16 ["size"]
       67 NEWCLOSURE                       R11 P1
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R11 R10 K17 ["onClose"]
       71 DUPTABLE                         R11 K21 [{"Content"}]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R12 R13 K2 ["createElement"]
       75 GETUPVAL                         R14 3
       76 GETTABLEKS                       R13 R14 K20 ["Content"]
       78 LOADNIL                          R14
       79 DUPTABLE                         R15 K26 [{"Image", "Description", "Description2", "Description3"}]
       80 GETUPVAL                         R17 0
       81 GETTABLEKS                       R16 R17 K2 ["createElement"]
       83 GETUPVAL                         R17 4
       84 DUPTABLE                         R18 K29 [{"LayoutOrder", "tag"}]
       85 LOADN                            R19 1
       86 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
       88 LOADK                            R19 K30 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
       89 SETTABLEKS                       R19 R18 K28 ["tag"]
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K22 ["Image"]
       94 GETUPVAL                         R17 0
       95 GETTABLEKS                       R16 R17 K2 ["createElement"]
       97 GETUPVAL                         R17 5
       98 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
       99 LOADN                            R19 2
      100 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      102 LOADK                            R19 K33 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      103 SETTABLEKS                       R19 R18 K31 ["Text"]
      105 LOADK                            R19 K34 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      106 SETTABLEKS                       R19 R18 K28 ["tag"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K23 ["Description"]
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R16 R17 K2 ["createElement"]
      114 GETUPVAL                         R17 5
      115 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
      116 LOADN                            R19 3
      117 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      119 LOADK                            R19 K35 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      120 SETTABLEKS                       R19 R18 K31 ["Text"]
      122 LOADK                            R19 K34 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      123 SETTABLEKS                       R19 R18 K28 ["tag"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R15 K24 ["Description2"]
      128 GETUPVAL                         R17 0
      129 GETTABLEKS                       R16 R17 K2 ["createElement"]
      131 GETUPVAL                         R17 5
      132 DUPTABLE                         R18 K32 [{"LayoutOrder", "Text", "tag"}]
      133 LOADN                            R19 4
      134 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      136 LOADK                            R19 K36 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      137 SETTABLEKS                       R19 R18 K31 ["Text"]
      139 LOADK                            R19 K34 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row items-center gap-medium size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K6 [{"Avatar", "Info"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K9 [{"size", "userId"}]
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R8 R9 K10 ["Large"]
       17 SETTABLEKS                       R8 R7 K7 ["size"]
       19 LOADK                            R8 K11 [24813339]
       20 SETTABLEKS                       R8 R7 K8 ["userId"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K4 ["Avatar"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["createElement"]
       28 GETUPVAL                         R6 1
       29 DUPTABLE                         R7 K13 [{"LayoutOrder", "tag"}]
       30 LOADN                            R8 2
       31 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       33 LOADK                            R8 K14 ["col fill gap-xsmall auto-xy"]
       34 SETTABLEKS                       R8 R7 K1 ["tag"]
       36 DUPTABLE                         R8 K17 [{"Username", "UserId"}]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K0 ["createElement"]
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
       54 LOADK                            R12 K23 ["auto-xy text-body-medium text-truncate-split content-emphasis"]
       55 SETTABLEKS                       R12 R11 K1 ["tag"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K15 ["Username"]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R9 R10 K0 ["createElement"]
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
       77 LOADK                            R12 K25 ["auto-xy text-body-small text-truncate-split content-default"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADN                            R4 1
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 0
       12 LOADN                            R8 1
       13 MOVE                             R6 R3
       14 LOADN                            R7 1
       15 FORNPREP                         R6
       16 MOVE                             R10 R5
       17 GETUPVAL                         R12 0
       18 GETTABLEKS                       R11 R12 K1 ["createElement"]
       20 GETUPVAL                         R12 1
       21 DUPTABLE                         R13 K4 [{"index", "key"}]
       22 SETTABLEKS                       R8 R13 K2 ["index"]
       24 SETTABLEKS                       R8 R13 K3 ["key"]
       26 CALL                             R11 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R9 K7 [table.insert]
       30 CALL                             R9 -1 0
       31 FORNLOOP                         R6
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K1 ["createElement"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K8 ["Fragment"]
       38 LOADNIL                          R8
       39 DUPTABLE                         R9 K11 [{"Button", "Sheet"}]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R10 R11 K1 ["createElement"]
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
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R10 R11 K1 ["createElement"]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R11 R12 K16 ["Root"]
       62 DUPTABLE                         R12 K20 [{"preferCenterSheet", "size", "onClose"}]
       63 GETTABLEKS                       R14 R0 K21 ["controls"]
       65 GETTABLEKS                       R13 R14 K17 ["preferCenterSheet"]
       67 SETTABLEKS                       R13 R12 K17 ["preferCenterSheet"]
       69 GETTABLEKS                       R14 R0 K21 ["controls"]
       71 GETTABLEKS                       R13 R14 K18 ["size"]
       73 SETTABLEKS                       R13 R12 K18 ["size"]
       75 NEWCLOSURE                       R13 P1
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R13 R12 K19 ["onClose"]
       79 DUPTABLE                         R13 K25 [{"Header", "Content", "Actions"}]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R14 R15 K1 ["createElement"]
       83 GETUPVAL                         R16 3
       84 GETTABLEKS                       R15 R16 K22 ["Header"]
       86 LOADNIL                          R16
       87 DUPTABLE                         R17 K27 [{"Title"}]
       88 GETUPVAL                         R19 0
       89 GETTABLEKS                       R18 R19 K1 ["createElement"]
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
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R14 R15 K1 ["createElement"]
      111 GETUPVAL                         R16 3
      112 GETTABLEKS                       R15 R16 K23 ["Content"]
      114 LOADNIL                          R16
      115 MOVE                             R17 R5
      116 CALL                             R14 3 1
      117 SETTABLEKS                       R14 R13 K23 ["Content"]
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R14 R15 K1 ["createElement"]
      122 GETUPVAL                         R16 3
      123 GETTABLEKS                       R15 R16 K24 ["Actions"]
      125 LOADNIL                          R16
      126 DUPTABLE                         R17 K36 [{"AddAccount", "RemoveAccount"}]
      127 GETUPVAL                         R19 0
      128 GETTABLEKS                       R18 R19 K1 ["createElement"]
      130 GETUPVAL                         R19 2
      131 DUPTABLE                         R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      132 LOADN                            R21 1
      133 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      135 LOADK                            R21 K40 ["Add Account"]
      136 SETTABLEKS                       R21 R20 K13 ["text"]
      138 GETUPVAL                         R22 5
      139 GETTABLEKS                       R21 R22 K41 ["Large"]
      141 SETTABLEKS                       R21 R20 K18 ["size"]
      143 GETUPVAL                         R22 6
      144 GETTABLEKS                       R21 R22 K42 ["Emphasis"]
      146 SETTABLEKS                       R21 R20 K37 ["variant"]
      148 GETUPVAL                         R22 7
      149 GETTABLEKS                       R21 R22 K43 ["Fill"]
      151 SETTABLEKS                       R21 R20 K38 ["fillBehavior"]
      153 NEWCLOSURE                       R21 P2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K34 ["AddAccount"]
      161 GETUPVAL                         R19 0
      162 GETTABLEKS                       R18 R19 K1 ["createElement"]
      164 GETUPVAL                         R19 2
      165 DUPTABLE                         R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      166 LOADN                            R21 2
      167 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      169 LOADK                            R21 K44 ["Remove Account"]
      170 SETTABLEKS                       R21 R20 K13 ["text"]
      172 GETUPVAL                         R22 5
      173 GETTABLEKS                       R21 R22 K41 ["Large"]
      175 SETTABLEKS                       R21 R20 K18 ["size"]
      177 GETUPVAL                         R22 6
      178 GETTABLEKS                       R21 R22 K45 ["Alert"]
      180 SETTABLEKS                       R21 R20 K37 ["variant"]
      182 GETUPVAL                         R22 7
      183 GETTABLEKS                       R21 R22 K43 ["Fill"]
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setContentStartRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R1 K2 ["setContentStartRef"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K3 ["createElement"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K5 [{"tag"}]
       25 LOADK                            R6 K6 ["col gap-small size-full-0 auto-y"]
       26 SETTABLEKS                       R6 R5 K4 ["tag"]
       28 DUPTABLE                         R6 K9 [{"Notifications", "Analytics"}]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K3 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K17 [{"label", "isChecked", "onActivated", "ref", "NextSelectionUp", "NextSelectionLeft", "LayoutOrder"}]
       34 LOADK                            R10 K18 ["Enable notifications"]
       35 SETTABLEKS                       R10 R9 K10 ["label"]
       37 GETTABLEKS                       R11 R0 K19 ["checkboxStates"]
       39 GETTABLEKS                       R10 R11 K20 ["notifications"]
       41 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       43 GETTABLEKS                       R10 R0 K21 ["toggleCheckbox"]
       45 LOADK                            R11 K20 ["notifications"]
       46 CALL                             R10 1 1
       47 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       49 SETTABLEKS                       R2 R9 K13 ["ref"]
       51 GETTABLEKS                       R10 R1 K22 ["closeAffordanceRef"]
       53 SETTABLEKS                       R10 R9 K14 ["NextSelectionUp"]
       55 GETTABLEKS                       R10 R1 K22 ["closeAffordanceRef"]
       57 SETTABLEKS                       R10 R9 K15 ["NextSelectionLeft"]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K16 ["LayoutOrder"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K7 ["Notifications"]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R7 R8 K3 ["createElement"]
       68 GETUPVAL                         R8 3
       69 DUPTABLE                         R9 K23 [{"label", "isChecked", "onActivated", "ref", "LayoutOrder"}]
       70 LOADK                            R10 K24 ["Share usage analytics"]
       71 SETTABLEKS                       R10 R9 K10 ["label"]
       73 GETTABLEKS                       R11 R0 K19 ["checkboxStates"]
       75 GETTABLEKS                       R10 R11 K25 ["analytics"]
       77 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       79 GETTABLEKS                       R10 R0 K21 ["toggleCheckbox"]
       81 LOADK                            R11 K25 ["analytics"]
       82 CALL                             R10 1 1
       83 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       85 GETTABLEKS                       R10 R0 K26 ["lastCheckboxRef"]
       87 SETTABLEKS                       R10 R9 K13 ["ref"]
       89 LOADN                            R10 2
       90 SETTABLEKS                       R10 R9 K16 ["LayoutOrder"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K8 ["Analytics"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K3 [{"tag"}]
       12 LOADK                            R6 K4 ["col gap-medium size-full-0 auto-y"]
       13 SETTABLEKS                       R6 R5 K2 ["tag"]
       15 DUPTABLE                         R6 K10 [{"Toolbar", "Image", "Title", "Description", "CloseButton"}]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K1 ["createElement"]
       19 GETUPVAL                         R8 2
       20 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
       21 LOADN                            R10 1
       22 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       24 LOADK                            R10 K13 ["row items-center gap-small size-full-0 auto-y"]
       25 SETTABLEKS                       R10 R9 K2 ["tag"]
       27 DUPTABLE                         R10 K17 [{"FavoriteButton", "ShareButton", "MoreButton"}]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R11 R12 K1 ["createElement"]
       31 GETUPVAL                         R12 3
       32 DUPTABLE                         R13 K21 [{"LayoutOrder", "icon", "size", "onActivated"}]
       33 LOADN                            R14 1
       34 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       36 GETUPVAL                         R15 4
       37 GETTABLEKS                       R14 R15 K22 ["Heart"]
       39 SETTABLEKS                       R14 R13 K18 ["icon"]
       41 GETUPVAL                         R15 5
       42 GETTABLEKS                       R14 R15 K23 ["Large"]
       44 SETTABLEKS                       R14 R13 K19 ["size"]
       46 DUPCLOSURE                       R14 K24 [PROTO_20]
       47 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K14 ["FavoriteButton"]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K1 ["createElement"]
       55 GETUPVAL                         R12 3
       56 DUPTABLE                         R13 K21 [{"LayoutOrder", "icon", "size", "onActivated"}]
       57 LOADN                            R14 2
       58 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       60 GETUPVAL                         R15 4
       61 GETTABLEKS                       R14 R15 K25 ["ArrowUpRightFromSquare"]
       63 SETTABLEKS                       R14 R13 K18 ["icon"]
       65 GETUPVAL                         R15 5
       66 GETTABLEKS                       R14 R15 K23 ["Large"]
       68 SETTABLEKS                       R14 R13 K19 ["size"]
       70 DUPCLOSURE                       R14 K26 [PROTO_21]
       71 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K15 ["ShareButton"]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R11 R12 K1 ["createElement"]
       79 GETUPVAL                         R12 3
       80 DUPTABLE                         R13 K29 [{"LayoutOrder", "icon", "size", "onActivated", "ref", "NextSelectionRight"}]
       81 LOADN                            R14 3
       82 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R14 R15 K30 ["CircleThreeDotsHorizontal"]
       87 SETTABLEKS                       R14 R13 K18 ["icon"]
       89 GETUPVAL                         R15 5
       90 GETTABLEKS                       R14 R15 K23 ["Large"]
       92 SETTABLEKS                       R14 R13 K19 ["size"]
       94 DUPCLOSURE                       R14 K31 [PROTO_22]
       95 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       97 SETTABLEKS                       R2 R13 K27 ["ref"]
       99 GETTABLEKS                       R14 R1 K32 ["closeAffordanceRef"]
      101 SETTABLEKS                       R14 R13 K28 ["NextSelectionRight"]
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K16 ["MoreButton"]
      106 CALL                             R7 3 1
      107 SETTABLEKS                       R7 R6 K5 ["Toolbar"]
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R7 R8 K1 ["createElement"]
      112 GETUPVAL                         R8 2
      113 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
      114 LOADN                            R10 2
      115 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      117 LOADK                            R10 K33 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
      118 SETTABLEKS                       R10 R9 K2 ["tag"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K6 ["Image"]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R7 R8 K1 ["createElement"]
      126 GETUPVAL                         R8 6
      127 DUPTABLE                         R9 K35 [{"LayoutOrder", "Text", "tag"}]
      128 LOADN                            R10 3
      129 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      131 LOADK                            R10 K36 ["Featured Content"]
      132 SETTABLEKS                       R10 R9 K34 ["Text"]
      134 LOADK                            R10 K37 ["size-full-0 auto-xy text-heading-small text-align-x-left content-emphasis"]
      135 SETTABLEKS                       R10 R9 K2 ["tag"]
      137 CALL                             R7 2 1
      138 SETTABLEKS                       R7 R6 K7 ["Title"]
      140 GETUPVAL                         R8 1
      141 GETTABLEKS                       R7 R8 K1 ["createElement"]
      143 GETUPVAL                         R8 6
      144 DUPTABLE                         R9 K35 [{"LayoutOrder", "Text", "tag"}]
      145 LOADN                            R10 4
      146 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      148 LOADK                            R10 K38 ["This sheet has no header, so the floating CloseAffordance is visible in the top-right. Pressing left on the CloseAffordance navigates to the toolbar, and pressing right on the toolbar navigates back to the CloseAffordance."]
      149 SETTABLEKS                       R10 R9 K34 ["Text"]
      151 LOADK                            R10 K39 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      152 SETTABLEKS                       R10 R9 K2 ["tag"]
      154 CALL                             R7 2 1
      155 SETTABLEKS                       R7 R6 K8 ["Description"]
      157 GETUPVAL                         R8 1
      158 GETTABLEKS                       R7 R8 K1 ["createElement"]
      160 GETUPVAL                         R8 2
      161 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
      162 LOADN                            R10 5
      163 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      165 LOADK                            R10 K40 ["row align-x-right size-full-0 auto-y padding-top-medium"]
      166 SETTABLEKS                       R10 R9 K2 ["tag"]
      168 DUPTABLE                         R10 K42 [{"Button"}]
      169 GETUPVAL                         R12 1
      170 GETTABLEKS                       R11 R12 K1 ["createElement"]
      172 GETUPVAL                         R12 7
      173 DUPTABLE                         R13 K45 [{"text", "onActivated", "variant"}]
      174 LOADK                            R14 K46 ["Close"]
      175 SETTABLEKS                       R14 R13 K43 ["text"]
      177 GETTABLEKS                       R14 R0 K47 ["onClose"]
      179 SETTABLEKS                       R14 R13 K20 ["onActivated"]
      181 GETUPVAL                         R15 8
      182 GETTABLEKS                       R14 R15 K48 ["Emphasis"]
      184 SETTABLEKS                       R14 R13 K44 ["variant"]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K41 ["Button"]
      189 CALL                             R7 3 1
      190 SETTABLEKS                       R7 R6 K9 ["CloseButton"]
      192 CALL                             R3 3 -1
      193 RETURN                           R3 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["Fragment"]
       11 LOADNIL                          R5
       12 DUPTABLE                         R6 K5 [{"Button", "Sheet"}]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K1 ["createElement"]
       16 GETUPVAL                         R8 1
       17 DUPTABLE                         R9 K8 [{"onActivated", "text"}]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       22 LOADK                            R10 K9 ["Open Sheet (Left Navigation)"]
       23 SETTABLEKS                       R10 R9 K7 ["text"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K3 ["Button"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K1 ["createElement"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K10 ["Root"]
       34 DUPTABLE                         R9 K15 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       35 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       37 GETTABLEKS                       R11 R0 K16 ["controls"]
       39 GETTABLEKS                       R10 R11 K12 ["preferCenterSheet"]
       41 SETTABLEKS                       R10 R9 K12 ["preferCenterSheet"]
       43 GETTABLEKS                       R11 R0 K16 ["controls"]
       45 GETTABLEKS                       R10 R11 K13 ["size"]
       47 SETTABLEKS                       R10 R9 K13 ["size"]
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R10 R9 K14 ["onClose"]
       53 DUPTABLE                         R10 K18 [{"Content"}]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K1 ["createElement"]
       57 GETUPVAL                         R13 2
       58 GETTABLEKS                       R12 R13 K17 ["Content"]
       60 LOADNIL                          R13
       61 DUPTABLE                         R14 K20 [{"ToolbarContent"}]
       62 GETUPVAL                         R16 0
       63 GETTABLEKS                       R15 R16 K1 ["createElement"]
       65 GETUPVAL                         R16 3
       66 DUPTABLE                         R17 K21 [{"onClose"}]
       67 NEWCLOSURE                       R18 P2
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R18 R17 K14 ["onClose"]
       71 CALL                             R15 2 1
       72 SETTABLEKS                       R15 R14 K19 ["ToolbarContent"]
       74 CALL                             R11 3 1
       75 SETTABLEKS                       R11 R10 K17 ["Content"]
       77 CALL                             R7 3 1
       78 SETTABLEKS                       R7 R6 K4 ["Sheet"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 DUPTABLE                         R4 K5 [{"notifications", "analytics", "marketing", "thirdParty"}]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K1 ["notifications"]
       12 LOADB                            R5 0
       13 SETTABLEKS                       R5 R4 K2 ["analytics"]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K3 ["marketing"]
       18 LOADB                            R5 0
       19 SETTABLEKS                       R5 R4 K4 ["thirdParty"]
       21 CALL                             R3 1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K6 ["useRef"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 1
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K7 ["createElement"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K8 ["Fragment"]
       36 LOADNIL                          R9
       37 DUPTABLE                         R10 K11 [{"Button", "Sheet"}]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K7 ["createElement"]
       41 GETUPVAL                         R12 2
       42 DUPTABLE                         R13 K14 [{"onActivated", "text"}]
       43 NEWCLOSURE                       R14 P1
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R14 R13 K12 ["onActivated"]
       47 LOADK                            R14 K15 ["Open Sheet (Focus Navigation)"]
       48 SETTABLEKS                       R14 R13 K13 ["text"]
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K9 ["Button"]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R11 R12 K7 ["createElement"]
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R12 R13 K16 ["Root"]
       59 DUPTABLE                         R13 K21 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       60 SETTABLEKS                       R1 R13 K17 ["isOpen"]
       62 GETTABLEKS                       R15 R0 K22 ["controls"]
       64 GETTABLEKS                       R14 R15 K18 ["preferCenterSheet"]
       66 SETTABLEKS                       R14 R13 K18 ["preferCenterSheet"]
       68 GETTABLEKS                       R15 R0 K22 ["controls"]
       70 GETTABLEKS                       R14 R15 K19 ["size"]
       72 SETTABLEKS                       R14 R13 K19 ["size"]
       74 NEWCLOSURE                       R14 P2
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R14 R13 K20 ["onClose"]
       78 DUPTABLE                         R14 K25 [{"Header", "Content"}]
       79 GETUPVAL                         R16 0
       80 GETTABLEKS                       R15 R16 K7 ["createElement"]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R16 R17 K23 ["Header"]
       85 LOADNIL                          R17
       86 DUPTABLE                         R18 K27 [{"Title"}]
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R19 R20 K7 ["createElement"]
       90 GETUPVAL                         R20 4
       91 DUPTABLE                         R21 K31 [{"LayoutOrder", "Text", "tag"}]
       92 LOADN                            R22 1
       93 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
       95 LOADK                            R22 K32 ["Settings"]
       96 SETTABLEKS                       R22 R21 K29 ["Text"]
       98 LOADK                            R22 K33 ["auto-xy text-heading-small text-truncate-split content-emphasis"]
       99 SETTABLEKS                       R22 R21 K30 ["tag"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K26 ["Title"]
      104 CALL                             R15 3 1
      105 SETTABLEKS                       R15 R14 K23 ["Header"]
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R15 R16 K7 ["createElement"]
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R16 R17 K24 ["Content"]
      113 LOADNIL                          R17
      114 DUPTABLE                         R18 K36 [{"CheckboxContent", "AlignLeft"}]
      115 GETUPVAL                         R20 0
      116 GETTABLEKS                       R19 R20 K7 ["createElement"]
      118 GETUPVAL                         R20 5
      119 DUPTABLE                         R21 K40 [{"checkboxStates", "toggleCheckbox", "lastCheckboxRef"}]
      120 SETTABLEKS                       R3 R21 K37 ["checkboxStates"]
      122 SETTABLEKS                       R6 R21 K38 ["toggleCheckbox"]
      124 SETTABLEKS                       R5 R21 K39 ["lastCheckboxRef"]
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K34 ["CheckboxContent"]
      129 GETUPVAL                         R20 0
      130 GETTABLEKS                       R19 R20 K7 ["createElement"]
      132 GETUPVAL                         R20 6
      133 DUPTABLE                         R21 K41 [{"tag"}]
      134 LOADK                            R22 K42 ["row align-x-right size-full-0 auto-y padding-top-medium"]
      135 SETTABLEKS                       R22 R21 K30 ["tag"]
      137 DUPTABLE                         R22 K43 [{"Button"}]
      138 GETUPVAL                         R24 0
      139 GETTABLEKS                       R23 R24 K7 ["createElement"]
      141 GETUPVAL                         R24 2
      142 DUPTABLE                         R25 K46 [{"text", "onActivated", "variant", "NextSelectionUp"}]
      143 LOADK                            R26 K47 ["Close"]
      144 SETTABLEKS                       R26 R25 K13 ["text"]
      146 NEWCLOSURE                       R26 P3
      147 CAPTURE                          VAL R2
      148 SETTABLEKS                       R26 R25 K12 ["onActivated"]
      150 GETUPVAL                         R27 7
      151 GETTABLEKS                       R26 R27 K48 ["Emphasis"]
      153 SETTABLEKS                       R26 R25 K44 ["variant"]
      155 SETTABLEKS                       R5 R25 K45 ["NextSelectionUp"]
      157 CALL                             R23 2 1
      158 SETTABLEKS                       R23 R22 K9 ["Button"]
      160 CALL                             R19 3 1
      161 SETTABLEKS                       R19 R18 K35 ["AlignLeft"]
      163 CALL                             R15 3 1
      164 SETTABLEKS                       R15 R14 K24 ["Content"]
      166 CALL                             R11 3 1
      167 SETTABLEKS                       R11 R10 K10 ["Sheet"]
      169 CALL                             R7 3 -1
      170 RETURN                           R7 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_38:
        0 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["Item"]
       11 DUPTABLE                         R5 K5 [{"description", "trailing"}]
       12 LOADK                            R6 K6 ["End date"]
       13 SETTABLEKS                       R6 R5 K3 ["description"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K1 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K9 [{"tag", "Text"}]
       20 LOADK                            R9 K10 ["auto-xy text-title-medium content-emphasis"]
       21 SETTABLEKS                       R9 R8 K7 ["tag"]
       23 LOADK                            R9 K11 ["Tue, Mar 11 at 5:00 AM"]
       24 SETTABLEKS                       R9 R8 K8 ["Text"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K4 ["trailing"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K1 ["createElement"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K12 ["Fragment"]
       36 LOADNIL                          R6
       37 DUPTABLE                         R7 K15 [{"Button", "Sheet"}]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K1 ["createElement"]
       41 GETUPVAL                         R9 3
       42 DUPTABLE                         R10 K18 [{"onActivated", "text"}]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       47 LOADK                            R11 K19 ["Open Sheet (FullBleed)"]
       48 SETTABLEKS                       R11 R10 K17 ["text"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K13 ["Button"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R8 R9 K1 ["createElement"]
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R9 R10 K20 ["Root"]
       59 DUPTABLE                         R10 K26 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       60 SETTABLEKS                       R1 R10 K21 ["isOpen"]
       62 NEWTABLE                         R11 0 2
       64 LOADK                            R12 K27 [0.5]
       65 LOADK                            R13 K28 [0.9]
       66 SETLIST                          R11 R12 2 [1]
       68 SETTABLEKS                       R11 R10 K22 ["snapPoints"]
       70 GETTABLEKS                       R12 R0 K29 ["controls"]
       72 GETTABLEKS                       R11 R12 K23 ["preferCenterSheet"]
       74 SETTABLEKS                       R11 R10 K23 ["preferCenterSheet"]
       76 GETTABLEKS                       R12 R0 K29 ["controls"]
       78 GETTABLEKS                       R11 R12 K24 ["size"]
       80 SETTABLEKS                       R11 R10 K24 ["size"]
       82 NEWCLOSURE                       R11 P1
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R11 R10 K25 ["onClose"]
       86 DUPTABLE                         R11 K33 [{"FullBleed", "Content", "Actions"}]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R12 R13 K1 ["createElement"]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R13 R14 K30 ["FullBleed"]
       93 DUPTABLE                         R14 K37 [{"media", "sticky", "aspectRatio"}]
       94 LOADK                            R15 K38 ["component_assets/avatarBG_dark"]
       95 SETTABLEKS                       R15 R14 K34 ["media"]
       97 GETTABLEKS                       R16 R0 K29 ["controls"]
       99 GETTABLEKS                       R15 R16 K39 ["stickyFullBleed"]
      101 SETTABLEKS                       R15 R14 K35 ["sticky"]
      103 LOADK                            R15 K40 [1.77777777777778]
      104 SETTABLEKS                       R15 R14 K36 ["aspectRatio"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K30 ["FullBleed"]
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R12 R13 K1 ["createElement"]
      112 GETUPVAL                         R14 4
      113 GETTABLEKS                       R13 R14 K31 ["Content"]
      115 LOADNIL                          R14
      116 DUPTABLE                         R15 K43 [{"Body", "List"}]
      117 GETUPVAL                         R17 0
      118 GETTABLEKS                       R16 R17 K1 ["createElement"]
      120 GETUPVAL                         R17 5
      121 DUPTABLE                         R18 K45 [{"LayoutOrder", "tag"}]
      122 LOADN                            R19 1
      123 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      125 LOADK                            R19 K46 ["col gap-xlarge size-full-0 auto-y padding-top-small"]
      126 SETTABLEKS                       R19 R18 K7 ["tag"]
      128 DUPTABLE                         R19 K51 [{"EventDetails", "Title", "Description", "Rating"}]
      129 GETUPVAL                         R21 0
      130 GETTABLEKS                       R20 R21 K1 ["createElement"]
      132 GETUPVAL                         R21 5
      133 DUPTABLE                         R22 K45 [{"LayoutOrder", "tag"}]
      134 LOADN                            R23 1
      135 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      137 LOADK                            R23 K52 ["row size-full-0 gap-medium auto-y items-center"]
      138 SETTABLEKS                       R23 R22 K7 ["tag"]
      140 DUPTABLE                         R23 K54 [{"GameIcon", "Text"}]
      141 GETUPVAL                         R25 0
      142 GETTABLEKS                       R24 R25 K1 ["createElement"]
      144 GETUPVAL                         R25 6
      145 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag"}]
      146 LOADN                            R27 1
      147 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      149 LOADK                            R27 K55 ["size-1400 radius-medium bg-shift-200"]
      150 SETTABLEKS                       R27 R26 K7 ["tag"]
      152 CALL                             R24 2 1
      153 SETTABLEKS                       R24 R23 K53 ["GameIcon"]
      155 GETUPVAL                         R25 0
      156 GETTABLEKS                       R24 R25 K1 ["createElement"]
      158 GETUPVAL                         R25 5
      159 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag"}]
      160 LOADN                            R27 2
      161 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      163 LOADK                            R27 K56 ["col fill align-y-center auto-xy"]
      164 SETTABLEKS                       R27 R26 K7 ["tag"]
      166 DUPTABLE                         R27 K58 [{"Title", "Subtitle"}]
      167 GETUPVAL                         R29 0
      168 GETTABLEKS                       R28 R29 K1 ["createElement"]
      170 GETUPVAL                         R29 2
      171 DUPTABLE                         R30 K59 [{"LayoutOrder", "Text", "tag"}]
      172 LOADN                            R31 1
      173 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      175 LOADK                            R31 K60 ["Sheet Title"]
      176 SETTABLEKS                       R31 R30 K8 ["Text"]
      178 LOADK                            R31 K61 ["auto-xy text-heading-small text-truncate-split content-emphasis"]
      179 SETTABLEKS                       R31 R30 K7 ["tag"]
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K48 ["Title"]
      184 GETUPVAL                         R29 0
      185 GETTABLEKS                       R28 R29 K1 ["createElement"]
      187 GETUPVAL                         R29 2
      188 DUPTABLE                         R30 K59 [{"LayoutOrder", "Text", "tag"}]
      189 LOADN                            R31 2
      190 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      192 LOADK                            R31 K62 ["Subtitle or description goes here"]
      193 SETTABLEKS                       R31 R30 K8 ["Text"]
      195 LOADK                            R31 K63 ["auto-xy text-label-medium text-truncate-split content-default"]
      196 SETTABLEKS                       R31 R30 K7 ["tag"]
      198 CALL                             R28 2 1
      199 SETTABLEKS                       R28 R27 K57 ["Subtitle"]
      201 CALL                             R24 3 1
      202 SETTABLEKS                       R24 R23 K8 ["Text"]
      204 CALL                             R20 3 1
      205 SETTABLEKS                       R20 R19 K47 ["EventDetails"]
      207 GETUPVAL                         R21 0
      208 GETTABLEKS                       R20 R21 K1 ["createElement"]
      210 GETUPVAL                         R21 5
      211 DUPTABLE                         R22 K45 [{"LayoutOrder", "tag"}]
      212 LOADN                            R23 2
      213 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      215 LOADK                            R23 K64 ["row size-full-0 auto-y gap-medium"]
      216 SETTABLEKS                       R23 R22 K7 ["tag"]
      218 DUPTABLE                         R23 K67 [{"Time", "Interest"}]
      219 GETUPVAL                         R25 0
      220 GETTABLEKS                       R24 R25 K1 ["createElement"]
      222 GETUPVAL                         R25 5
      223 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag"}]
      224 LOADN                            R27 1
      225 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      227 LOADK                            R27 K68 ["row auto-xy gap-xsmall"]
      228 SETTABLEKS                       R27 R26 K7 ["tag"]
      230 DUPTABLE                         R27 K70 [{"Clock", "Time"}]
      231 GETUPVAL                         R29 0
      232 GETTABLEKS                       R28 R29 K1 ["createElement"]
      234 GETUPVAL                         R29 7
      235 DUPTABLE                         R30 K72 [{"LayoutOrder", "name", "size"}]
      236 LOADN                            R31 1
      237 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      239 GETUPVAL                         R32 8
      240 GETTABLEKS                       R31 R32 K69 ["Clock"]
      242 SETTABLEKS                       R31 R30 K71 ["name"]
      244 GETUPVAL                         R32 9
      245 GETTABLEKS                       R31 R32 K73 ["Small"]
      247 SETTABLEKS                       R31 R30 K24 ["size"]
      249 CALL                             R28 2 1
      250 SETTABLEKS                       R28 R27 K69 ["Clock"]
      252 GETUPVAL                         R29 0
      253 GETTABLEKS                       R28 R29 K1 ["createElement"]
      255 GETUPVAL                         R29 2
      256 DUPTABLE                         R30 K59 [{"LayoutOrder", "Text", "tag"}]
      257 LOADN                            R31 2
      258 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      260 LOADK                            R31 K74 ["In 2 days"]
      261 SETTABLEKS                       R31 R30 K8 ["Text"]
      263 LOADK                            R31 K75 ["auto-xy text-body-medium content-emphasis"]
      264 SETTABLEKS                       R31 R30 K7 ["tag"]
      266 CALL                             R28 2 1
      267 SETTABLEKS                       R28 R27 K65 ["Time"]
      269 CALL                             R24 3 1
      270 SETTABLEKS                       R24 R23 K65 ["Time"]
      272 GETUPVAL                         R25 0
      273 GETTABLEKS                       R24 R25 K1 ["createElement"]
      275 GETUPVAL                         R25 5
      276 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag"}]
      277 LOADN                            R27 2
      278 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      280 LOADK                            R27 K68 ["row auto-xy gap-xsmall"]
      281 SETTABLEKS                       R27 R26 K7 ["tag"]
      283 DUPTABLE                         R27 K78 [{"People", "PeopleCount"}]
      284 GETUPVAL                         R29 0
      285 GETTABLEKS                       R28 R29 K1 ["createElement"]
      287 GETUPVAL                         R29 7
      288 DUPTABLE                         R30 K72 [{"LayoutOrder", "name", "size"}]
      289 LOADN                            R31 1
      290 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      292 GETUPVAL                         R32 8
      293 GETTABLEKS                       R31 R32 K79 ["PersonPlay"]
      295 SETTABLEKS                       R31 R30 K71 ["name"]
      297 GETUPVAL                         R32 9
      298 GETTABLEKS                       R31 R32 K73 ["Small"]
      300 SETTABLEKS                       R31 R30 K24 ["size"]
      302 CALL                             R28 2 1
      303 SETTABLEKS                       R28 R27 K76 ["People"]
      305 GETUPVAL                         R29 0
      306 GETTABLEKS                       R28 R29 K1 ["createElement"]
      308 GETUPVAL                         R29 2
      309 DUPTABLE                         R30 K59 [{"LayoutOrder", "Text", "tag"}]
      310 LOADN                            R31 2
      311 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      313 LOADK                            R31 K80 ["1M Interested"]
      314 SETTABLEKS                       R31 R30 K8 ["Text"]
      316 LOADK                            R31 K75 ["auto-xy text-body-medium content-emphasis"]
      317 SETTABLEKS                       R31 R30 K7 ["tag"]
      319 CALL                             R28 2 1
      320 SETTABLEKS                       R28 R27 K77 ["PeopleCount"]
      322 CALL                             R24 3 1
      323 SETTABLEKS                       R24 R23 K66 ["Interest"]
      325 CALL                             R20 3 1
      326 SETTABLEKS                       R20 R19 K48 ["Title"]
      328 GETUPVAL                         R21 0
      329 GETTABLEKS                       R20 R21 K1 ["createElement"]
      331 GETUPVAL                         R21 2
      332 DUPTABLE                         R22 K59 [{"LayoutOrder", "Text", "tag"}]
      333 LOADN                            R23 3
      334 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      336 LOADK                            R23 K81 ["Style your look with iconic-inspired pieces and walk the runway to showcase your high-fashion vision. Compete, get inspired, and serve your best moment ✨...more "]
      337 SETTABLEKS                       R23 R22 K8 ["Text"]
      339 LOADK                            R23 K82 ["auto-xy text-body-medium content-default text-wrap text-align-x-left"]
      340 SETTABLEKS                       R23 R22 K7 ["tag"]
      342 CALL                             R20 2 1
      343 SETTABLEKS                       R20 R19 K49 ["Description"]
      345 GETUPVAL                         R21 0
      346 GETTABLEKS                       R20 R21 K1 ["createElement"]
      348 GETUPVAL                         R21 5
      349 DUPTABLE                         R22 K45 [{"LayoutOrder", "tag"}]
      350 LOADN                            R23 4
      351 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      353 LOADK                            R23 K83 ["row size-full-0 auto-y padding-medium gap-medium stroke-default radius-medium align-y-center"]
      354 SETTABLEKS                       R23 R22 K7 ["tag"]
      356 DUPTABLE                         R23 K85 [{"IARC", "Description"}]
      357 GETUPVAL                         R25 0
      358 GETTABLEKS                       R24 R25 K1 ["createElement"]
      360 GETUPVAL                         R25 5
      361 DUPTABLE                         R26 K86 [{"tag"}]
      362 LOADK                            R27 K87 ["size-1000-1300 bg-shift-200"]
      363 SETTABLEKS                       R27 R26 K7 ["tag"]
      365 CALL                             R24 2 1
      366 SETTABLEKS                       R24 R23 K84 ["IARC"]
      368 GETUPVAL                         R25 0
      369 GETTABLEKS                       R24 R25 K1 ["createElement"]
      371 GETUPVAL                         R25 2
      372 DUPTABLE                         R26 K88 [{"Text", "tag"}]
      373 LOADK                            R27 K89 ["Strong language, Mild Suggestive Themes • In-Game Purchases (Includes Random Items)"]
      374 SETTABLEKS                       R27 R26 K8 ["Text"]
      376 LOADK                            R27 K90 ["auto-xy fill text-align-x-left text-body-small text-wrap"]
      377 SETTABLEKS                       R27 R26 K7 ["tag"]
      379 CALL                             R24 2 1
      380 SETTABLEKS                       R24 R23 K49 ["Description"]
      382 CALL                             R20 3 1
      383 SETTABLEKS                       R20 R19 K50 ["Rating"]
      385 CALL                             R16 3 1
      386 SETTABLEKS                       R16 R15 K41 ["Body"]
      388 GETUPVAL                         R17 0
      389 GETTABLEKS                       R16 R17 K1 ["createElement"]
      391 GETUPVAL                         R18 1
      392 GETTABLEKS                       R17 R18 K20 ["Root"]
      394 DUPTABLE                         R18 K93 [{"LayoutOrder", "isContained", "hasDivider"}]
      395 LOADN                            R19 2
      396 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      398 DUPTABLE                         R19 K95 [{"isContained", "hasMargin"}]
      399 LOADB                            R20 0
      400 SETTABLEKS                       R20 R19 K91 ["isContained"]
      402 LOADB                            R20 0
      403 SETTABLEKS                       R20 R19 K94 ["hasMargin"]
      405 SETTABLEKS                       R19 R18 K91 ["isContained"]
      407 DUPTABLE                         R19 K97 [{"hasDivider", "isInset"}]
      408 LOADB                            R20 1
      409 SETTABLEKS                       R20 R19 K92 ["hasDivider"]
      411 LOADB                            R20 0
      412 SETTABLEKS                       R20 R19 K96 ["isInset"]
      414 SETTABLEKS                       R19 R18 K92 ["hasDivider"]
      416 DUPTABLE                         R19 K106 [{"Start", "End", "End2", "End3", "End4", "End5", "End6", "End7"}]
      417 GETUPVAL                         R21 0
      418 GETTABLEKS                       R20 R21 K1 ["createElement"]
      420 GETUPVAL                         R22 1
      421 GETTABLEKS                       R21 R22 K2 ["Item"]
      423 DUPTABLE                         R22 K107 [{"LayoutOrder", "description", "trailing"}]
      424 LOADN                            R23 255
      425 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      427 LOADK                            R23 K108 ["Start date"]
      428 SETTABLEKS                       R23 R22 K3 ["description"]
      430 GETUPVAL                         R24 0
      431 GETTABLEKS                       R23 R24 K1 ["createElement"]
      433 GETUPVAL                         R24 2
      434 DUPTABLE                         R25 K9 [{"tag", "Text"}]
      435 LOADK                            R26 K10 ["auto-xy text-title-medium content-emphasis"]
      436 SETTABLEKS                       R26 R25 K7 ["tag"]
      438 LOADK                            R26 K109 ["Sat, Mar 8 at 8:00 PM"]
      439 SETTABLEKS                       R26 R25 K8 ["Text"]
      441 CALL                             R23 2 1
      442 SETTABLEKS                       R23 R22 K4 ["trailing"]
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K98 ["Start"]
      447 SETTABLEKS                       R3 R19 K99 ["End"]
      449 SETTABLEKS                       R3 R19 K100 ["End2"]
      451 SETTABLEKS                       R3 R19 K101 ["End3"]
      453 SETTABLEKS                       R3 R19 K102 ["End4"]
      455 SETTABLEKS                       R3 R19 K103 ["End5"]
      457 SETTABLEKS                       R3 R19 K104 ["End6"]
      459 SETTABLEKS                       R3 R19 K105 ["End7"]
      461 CALL                             R16 3 1
      462 SETTABLEKS                       R16 R15 K42 ["List"]
      464 CALL                             R12 3 1
      465 SETTABLEKS                       R12 R11 K31 ["Content"]
      467 GETUPVAL                         R13 0
      468 GETTABLEKS                       R12 R13 K1 ["createElement"]
      470 GETUPVAL                         R14 4
      471 GETTABLEKS                       R13 R14 K32 ["Actions"]
      473 LOADNIL                          R14
      474 DUPTABLE                         R15 K112 [{"Interested", "Share"}]
      475 GETUPVAL                         R17 0
      476 GETTABLEKS                       R16 R17 K1 ["createElement"]
      478 GETUPVAL                         R17 3
      479 DUPTABLE                         R18 K115 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      480 LOADN                            R19 1
      481 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      483 LOADK                            R19 K110 ["Interested"]
      484 SETTABLEKS                       R19 R18 K17 ["text"]
      486 GETUPVAL                         R20 10
      487 GETTABLEKS                       R19 R20 K116 ["Medium"]
      489 SETTABLEKS                       R19 R18 K24 ["size"]
      491 GETUPVAL                         R20 11
      492 GETTABLEKS                       R19 R20 K117 ["Emphasis"]
      494 SETTABLEKS                       R19 R18 K113 ["variant"]
      496 GETUPVAL                         R20 12
      497 GETTABLEKS                       R19 R20 K118 ["Fill"]
      499 SETTABLEKS                       R19 R18 K114 ["fillBehavior"]
      501 NEWCLOSURE                       R19 P2
      502 CAPTURE                          VAL R2
      503 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      505 CALL                             R16 2 1
      506 SETTABLEKS                       R16 R15 K110 ["Interested"]
      508 GETUPVAL                         R17 0
      509 GETTABLEKS                       R16 R17 K1 ["createElement"]
      511 GETUPVAL                         R17 13
      512 DUPTABLE                         R18 K120 [{"LayoutOrder", "icon", "variant", "size", "onActivated"}]
      513 LOADN                            R19 2
      514 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      516 GETUPVAL                         R20 8
      517 GETTABLEKS                       R19 R20 K121 ["ArrowThickToRight"]
      519 SETTABLEKS                       R19 R18 K119 ["icon"]
      521 GETUPVAL                         R20 11
      522 GETTABLEKS                       R19 R20 K122 ["Standard"]
      524 SETTABLEKS                       R19 R18 K113 ["variant"]
      526 GETUPVAL                         R20 10
      527 GETTABLEKS                       R19 R20 K116 ["Medium"]
      529 SETTABLEKS                       R19 R18 K24 ["size"]
      531 DUPCLOSURE                       R19 K123 [PROTO_38]
      532 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      534 CALL                             R16 2 1
      535 SETTABLEKS                       R16 R15 K111 ["Share"]
      537 CALL                             R12 3 1
      538 SETTABLEKS                       R12 R11 K32 ["Actions"]
      540 CALL                             R8 3 1
      541 SETTABLEKS                       R8 R7 K14 ["Sheet"]
      543 CALL                             R4 3 -1
      544 RETURN                           R4 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.delay]
        5 LOADN                            R1 2
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K1 ["createElement"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K2 ["Fragment"]
       16 LOADNIL                          R7
       17 DUPTABLE                         R8 K5 [{"Button", "Sheet"}]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K1 ["createElement"]
       21 GETUPVAL                         R10 1
       22 DUPTABLE                         R11 K8 [{"onActivated", "text"}]
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R12 R11 K6 ["onActivated"]
       27 LOADK                            R12 K9 ["Open Sheet With TextInput"]
       28 SETTABLEKS                       R12 R11 K7 ["text"]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K3 ["Button"]
       33 JUMPIFNOT                        R1 ; [+138]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K1 ["createElement"]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R10 R11 K10 ["Root"]
       40 DUPTABLE                         R11 K14 [{"onClose", "preferCenterSheet", "size"}]
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R12 R11 K11 ["onClose"]
       45 GETTABLEKS                       R13 R0 K15 ["controls"]
       47 GETTABLEKS                       R12 R13 K12 ["preferCenterSheet"]
       49 SETTABLEKS                       R12 R11 K12 ["preferCenterSheet"]
       51 GETTABLEKS                       R13 R0 K15 ["controls"]
       53 GETTABLEKS                       R12 R13 K13 ["size"]
       55 SETTABLEKS                       R12 R11 K13 ["size"]
       57 DUPTABLE                         R12 K19 [{"Header", "Content", "Actions"}]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R13 R14 K1 ["createElement"]
       61 GETUPVAL                         R15 2
       62 GETTABLEKS                       R14 R15 K16 ["Header"]
       64 LOADNIL                          R15
       65 DUPTABLE                         R16 K21 [{"Title"}]
       66 GETUPVAL                         R18 0
       67 GETTABLEKS                       R17 R18 K1 ["createElement"]
       69 GETUPVAL                         R18 3
       70 DUPTABLE                         R19 K25 [{"LayoutOrder", "Text", "tag"}]
       71 LOADN                            R20 1
       72 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
       74 LOADK                            R20 K26 ["Enter Your Name"]
       75 SETTABLEKS                       R20 R19 K23 ["Text"]
       77 LOADK                            R20 K27 ["text-heading-small content-emphasis auto-xy text-truncate-split"]
       78 SETTABLEKS                       R20 R19 K24 ["tag"]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K20 ["Title"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K16 ["Header"]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R13 R14 K1 ["createElement"]
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R14 R15 K17 ["Content"]
       92 LOADNIL                          R15
       93 DUPTABLE                         R16 K29 [{"TextInput"}]
       94 GETUPVAL                         R18 0
       95 GETTABLEKS                       R17 R18 K1 ["createElement"]
       97 GETUPVAL                         R18 4
       98 DUPTABLE                         R19 K33 [{"LayoutOrder", "label", "width", "onChanged", "text"}]
       99 LOADN                            R20 1
      100 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      102 LOADK                            R20 K34 ["Test"]
      103 SETTABLEKS                       R20 R19 K30 ["label"]
      105 GETIMPORT                        R20 K37 [UDim.new]
      107 LOADN                            R21 1
      108 LOADN                            R22 0
      109 CALL                             R20 2 1
      110 SETTABLEKS                       R20 R19 K31 ["width"]
      112 DUPCLOSURE                       R20 K38 [PROTO_42]
      113 SETTABLEKS                       R20 R19 K32 ["onChanged"]
      115 LOADK                            R20 K39 ["asdf"]
      116 SETTABLEKS                       R20 R19 K7 ["text"]
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K28 ["TextInput"]
      121 CALL                             R13 3 1
      122 SETTABLEKS                       R13 R12 K17 ["Content"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R13 R14 K1 ["createElement"]
      127 GETUPVAL                         R15 2
      128 GETTABLEKS                       R14 R15 K18 ["Actions"]
      130 LOADNIL                          R15
      131 DUPTABLE                         R16 K41 [{"Submit"}]
      132 GETUPVAL                         R18 0
      133 GETTABLEKS                       R17 R18 K1 ["createElement"]
      135 GETUPVAL                         R18 1
      136 DUPTABLE                         R19 K45 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "isLoading", "onActivated"}]
      137 LOADN                            R20 1
      138 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      140 LOADK                            R20 K40 ["Submit"]
      141 SETTABLEKS                       R20 R19 K7 ["text"]
      143 GETUPVAL                         R21 5
      144 GETTABLEKS                       R20 R21 K46 ["Large"]
      146 SETTABLEKS                       R20 R19 K13 ["size"]
      148 GETUPVAL                         R21 6
      149 GETTABLEKS                       R20 R21 K47 ["Emphasis"]
      151 SETTABLEKS                       R20 R19 K42 ["variant"]
      153 GETUPVAL                         R21 7
      154 GETTABLEKS                       R20 R21 K48 ["Fill"]
      156 SETTABLEKS                       R20 R19 K43 ["fillBehavior"]
      158 SETTABLEKS                       R3 R19 K44 ["isLoading"]
      160 NEWCLOSURE                       R20 P3
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R20 R19 K6 ["onActivated"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K40 ["Submit"]
      167 CALL                             R13 3 1
      168 SETTABLEKS                       R13 R12 K18 ["Actions"]
      170 CALL                             R9 3 1
      171 JUMPIF                           R9 ; [+1]
      172 LOADNIL                          R9
      173 SETTABLEKS                       R9 R8 K4 ["Sheet"]
      175 CALL                             R5 3 -1
      176 RETURN                           R5 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Button"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Checkbox"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Dash"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K8 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["Icon"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K8 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["IconButton"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K8 ["Components"]
       58 GETTABLEKS                       R10 R11 K15 ["Image"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R12 K16 ["List"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K8 ["Components"]
       72 GETTABLEKS                       R12 R13 K17 ["Sheet"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K8 ["Components"]
       79 GETTABLEKS                       R13 R14 K18 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R15 R0 K8 ["Components"]
       86 GETTABLEKS                       R14 R15 K19 ["TextInput"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R16 R0 K8 ["Components"]
       93 GETTABLEKS                       R15 R16 K20 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETTABLEKS                       R17 R1 K21 ["BuilderIcons"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R15 R16 K13 ["Icon"]
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R18 R0 K22 ["Enums"]
      107 GETTABLEKS                       R17 R18 K23 ["ButtonVariant"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R19 R0 K22 ["Enums"]
      114 GETTABLEKS                       R18 R19 K24 ["DialogSize"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R20 R0 K22 ["Enums"]
      121 GETTABLEKS                       R19 R20 K25 ["FillBehavior"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R21 R0 K22 ["Enums"]
      128 GETTABLEKS                       R20 R21 K26 ["IconSize"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R22 R0 K22 ["Enums"]
      135 GETTABLEKS                       R21 R22 K27 ["InputSize"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K6 [require]
      140 GETTABLEKS                       R23 R0 K28 ["Utility"]
      142 GETTABLEKS                       R22 R23 K29 ["useScaledValue"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K6 [require]
      147 GETTABLEKS                       R25 R0 K8 ["Components"]
      149 GETTABLEKS                       R24 R25 K17 ["Sheet"]
      151 GETTABLEKS                       R23 R24 K30 ["useSheetNavigation"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K6 [require]
      156 GETTABLEKS                       R26 R0 K31 ["Providers"]
      158 GETTABLEKS                       R25 R26 K32 ["Style"]
      160 GETTABLEKS                       R24 R25 K33 ["useTokens"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K6 [require]
      165 GETTABLEKS                       R26 R0 K28 ["Utility"]
      167 GETTABLEKS                       R25 R26 K34 ["Flags"]
      169 CALL                             R24 1 1
      170 DUPCLOSURE                       R25 K35 [PROTO_8]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R18
      185 DUPCLOSURE                       R26 K36 [PROTO_11]
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R12
      192 DUPCLOSURE                       R27 K37 [PROTO_12]
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R12
      198 DUPCLOSURE                       R28 K38 [PROTO_17]
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R18
      207 DUPCLOSURE                       R29 K39 [PROTO_19]
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R5
      212 DUPCLOSURE                       R30 K40 [PROTO_23]
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R16
      222 DUPCLOSURE                       R31 K41 [PROTO_27]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R30
      227 DUPCLOSURE                       R32 K42 [PROTO_34]
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R29
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 DUPCLOSURE                       R33 K43 [PROTO_39]
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R18
      250 CAPTURE                          VAL R8
      251 DUPCLOSURE                       R34 K44 [PROTO_45]
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R4
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R18
      260 DUPTABLE                         R35 K48 [{"summary", "stories", "controls"}]
      261 LOADK                            R36 K17 ["Sheet"]
      262 SETTABLEKS                       R36 R35 K45 ["summary"]
      264 NEWTABLE                         R36 0 7
      266 DUPTABLE                         R37 K51 [{"name", "story"}]
      267 LOADK                            R38 K52 ["Sheet (auto)"]
      268 SETTABLEKS                       R38 R37 K49 ["name"]
      270 SETTABLEKS                       R25 R37 K50 ["story"]
      272 DUPTABLE                         R38 K51 [{"name", "story"}]
      273 LOADK                            R39 K53 ["Sheet (manual sizing based on height prop)"]
      274 SETTABLEKS                       R39 R38 K49 ["name"]
      276 SETTABLEKS                       R26 R38 K50 ["story"]
      278 DUPTABLE                         R39 K51 [{"name", "story"}]
      279 LOADK                            R40 K54 ["Sheet (auto size)"]
      280 SETTABLEKS                       R40 R39 K49 ["name"]
      282 SETTABLEKS                       R28 R39 K50 ["story"]
      284 DUPTABLE                         R40 K51 [{"name", "story"}]
      285 LOADK                            R41 K55 ["Sheet with Focus Navigation"]
      286 SETTABLEKS                       R41 R40 K49 ["name"]
      288 SETTABLEKS                       R32 R40 K50 ["story"]
      290 DUPTABLE                         R41 K51 [{"name", "story"}]
      291 LOADK                            R42 K56 ["Sheet with Left Navigation (No Header)"]
      292 SETTABLEKS                       R42 R41 K49 ["name"]
      294 SETTABLEKS                       R31 R41 K50 ["story"]
      296 DUPTABLE                         R42 K51 [{"name", "story"}]
      297 LOADK                            R43 K57 ["Sheet (with TextInput)"]
      298 SETTABLEKS                       R43 R42 K49 ["name"]
      300 SETTABLEKS                       R34 R42 K50 ["story"]
      302 GETTABLEKS                       R44 R24 K58 ["FoundationSheetFullBleed"]
      304 JUMPIFNOT                        R44 ; [+7]
      305 DUPTABLE                         R43 K51 [{"name", "story"}]
      306 LOADK                            R44 K59 ["Sheet (FullBleed)"]
      307 SETTABLEKS                       R44 R43 K49 ["name"]
      309 SETTABLEKS                       R33 R43 K50 ["story"]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R43
      313 SETLIST                          R36 R37 7 [1]
      315 SETTABLEKS                       R36 R35 K46 ["stories"]
      317 DUPTABLE                         R36 K64 [{"centerSheetHeight", "preferCenterSheet", "size", "stickyFullBleed"}]
      318 LOADN                            R37 1
      319 SETTABLEKS                       R37 R36 K60 ["centerSheetHeight"]
      321 LOADB                            R37 0
      322 SETTABLEKS                       R37 R36 K61 ["preferCenterSheet"]
      324 NEWTABLE                         R37 0 2
      326 GETTABLEKS                       R38 R17 K65 ["Medium"]
      328 GETTABLEKS                       R39 R17 K66 ["Large"]
      330 SETLIST                          R37 R38 2 [1]
      332 SETTABLEKS                       R37 R36 K62 ["size"]
      334 LOADB                            R37 0
      335 SETTABLEKS                       R37 R36 K63 ["stickyFullBleed"]
      337 SETTABLEKS                       R36 R35 K47 ["controls"]
      339 RETURN                           R35 1
