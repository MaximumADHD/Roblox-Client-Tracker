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
      132 LOADK                            R19 K43 ["col fill gap-xsmall auto-xy"]
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
      147 LOADK                            R23 K49 ["auto-xy text-title-large text-truncate-split content-emphasis"]
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
      164 LOADK                            R23 K51 ["auto-xy text-body-small text-truncate-split content-default"]
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
      206 DUPTABLE                         R14 K59 [{"isContentFullBleed"}]
      207 GETTABLEKS                       R15 R0 K19 ["controls"]
      209 GETTABLEKS                       R15 R15 K58 ["isContentFullBleed"]
      211 SETTABLEKS                       R15 R14 K58 ["isContentFullBleed"]
      213 DUPTABLE                         R15 K72 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      214 GETUPVAL                         R16 0
      215 GETTABLEKS                       R16 R16 K1 ["createElement"]
      217 GETUPVAL                         R17 5
      218 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      219 LOADN                            R19 2
      220 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      222 LOADK                            R19 K73 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
      223 SETTABLEKS                       R19 R18 K40 ["tag"]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K60 ["Carousel"]
      228 GETUPVAL                         R16 0
      229 GETTABLEKS                       R16 R16 K1 ["createElement"]
      231 GETUPVAL                         R17 5
      232 DUPTABLE                         R18 K74 [{"tag", "LayoutOrder"}]
      233 LOADK                            R19 K75 ["row flex-fill items-center gap-medium size-full-0 auto-y"]
      234 SETTABLEKS                       R19 R18 K40 ["tag"]
      236 LOADN                            R19 3
      237 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      239 DUPTABLE                         R19 K79 [{"Rating", "Active", "Age", "Maturity"}]
      240 GETUPVAL                         R20 0
      241 GETTABLEKS                       R20 R20 K1 ["createElement"]
      243 GETUPVAL                         R21 5
      244 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      245 LOADN                            R23 1
      246 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      248 LOADK                            R23 K80 ["col align-x-center gap-small auto-xy"]
      249 SETTABLEKS                       R23 R22 K40 ["tag"]
      251 DUPTABLE                         R23 K83 [{"Label", "Value"}]
      252 GETUPVAL                         R24 0
      253 GETTABLEKS                       R24 R24 K1 ["createElement"]
      255 GETUPVAL                         R25 6
      256 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      257 LOADN                            R27 1
      258 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      260 LOADK                            R27 K62 ["Rating"]
      261 SETTABLEKS                       R27 R26 K26 ["Text"]
      263 LOADK                            R27 K84 ["auto-xy text-body-small content-default"]
      264 SETTABLEKS                       R27 R26 K40 ["tag"]
      266 CALL                             R24 2 1
      267 SETTABLEKS                       R24 R23 K81 ["Label"]
      269 GETUPVAL                         R24 0
      270 GETTABLEKS                       R24 R24 K1 ["createElement"]
      272 GETUPVAL                         R25 6
      273 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      274 LOADN                            R27 2
      275 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      277 LOADK                            R27 K85 ["94%"]
      278 SETTABLEKS                       R27 R26 K26 ["Text"]
      280 LOADK                            R27 K86 ["auto-xy text-title-medium content-emphasis"]
      281 SETTABLEKS                       R27 R26 K40 ["tag"]
      283 CALL                             R24 2 1
      284 SETTABLEKS                       R24 R23 K82 ["Value"]
      286 CALL                             R20 3 1
      287 SETTABLEKS                       R20 R19 K62 ["Rating"]
      289 GETUPVAL                         R20 0
      290 GETTABLEKS                       R20 R20 K1 ["createElement"]
      292 GETUPVAL                         R21 5
      293 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      294 LOADN                            R23 3
      295 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      297 LOADK                            R23 K80 ["col align-x-center gap-small auto-xy"]
      298 SETTABLEKS                       R23 R22 K40 ["tag"]
      300 DUPTABLE                         R23 K83 [{"Label", "Value"}]
      301 GETUPVAL                         R24 0
      302 GETTABLEKS                       R24 R24 K1 ["createElement"]
      304 GETUPVAL                         R25 6
      305 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      306 LOADN                            R27 1
      307 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      309 LOADK                            R27 K76 ["Active"]
      310 SETTABLEKS                       R27 R26 K26 ["Text"]
      312 LOADK                            R27 K84 ["auto-xy text-body-small content-default"]
      313 SETTABLEKS                       R27 R26 K40 ["tag"]
      315 CALL                             R24 2 1
      316 SETTABLEKS                       R24 R23 K81 ["Label"]
      318 GETUPVAL                         R24 0
      319 GETTABLEKS                       R24 R24 K1 ["createElement"]
      321 GETUPVAL                         R25 6
      322 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      323 LOADN                            R27 2
      324 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      326 LOADK                            R27 K87 ["1.2K"]
      327 SETTABLEKS                       R27 R26 K26 ["Text"]
      329 LOADK                            R27 K86 ["auto-xy text-title-medium content-emphasis"]
      330 SETTABLEKS                       R27 R26 K40 ["tag"]
      332 CALL                             R24 2 1
      333 SETTABLEKS                       R24 R23 K82 ["Value"]
      335 CALL                             R20 3 1
      336 SETTABLEKS                       R20 R19 K76 ["Active"]
      338 GETUPVAL                         R20 0
      339 GETTABLEKS                       R20 R20 K1 ["createElement"]
      341 GETUPVAL                         R21 5
      342 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      343 LOADN                            R23 5
      344 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      346 LOADK                            R23 K80 ["col align-x-center gap-small auto-xy"]
      347 SETTABLEKS                       R23 R22 K40 ["tag"]
      349 DUPTABLE                         R23 K83 [{"Label", "Value"}]
      350 GETUPVAL                         R24 0
      351 GETTABLEKS                       R24 R24 K1 ["createElement"]
      353 GETUPVAL                         R25 6
      354 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      355 LOADN                            R27 1
      356 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      358 LOADK                            R27 K77 ["Age"]
      359 SETTABLEKS                       R27 R26 K26 ["Text"]
      361 LOADK                            R27 K84 ["auto-xy text-body-small content-default"]
      362 SETTABLEKS                       R27 R26 K40 ["tag"]
      364 CALL                             R24 2 1
      365 SETTABLEKS                       R24 R23 K81 ["Label"]
      367 GETUPVAL                         R24 0
      368 GETTABLEKS                       R24 R24 K1 ["createElement"]
      370 GETUPVAL                         R25 6
      371 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      372 LOADN                            R27 2
      373 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      375 LOADK                            R27 K88 ["13+"]
      376 SETTABLEKS                       R27 R26 K26 ["Text"]
      378 LOADK                            R27 K86 ["auto-xy text-title-medium content-emphasis"]
      379 SETTABLEKS                       R27 R26 K40 ["tag"]
      381 CALL                             R24 2 1
      382 SETTABLEKS                       R24 R23 K82 ["Value"]
      384 CALL                             R20 3 1
      385 SETTABLEKS                       R20 R19 K77 ["Age"]
      387 GETUPVAL                         R20 0
      388 GETTABLEKS                       R20 R20 K1 ["createElement"]
      390 GETUPVAL                         R21 5
      391 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      392 LOADN                            R23 7
      393 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      395 LOADK                            R23 K80 ["col align-x-center gap-small auto-xy"]
      396 SETTABLEKS                       R23 R22 K40 ["tag"]
      398 DUPTABLE                         R23 K83 [{"Label", "Value"}]
      399 GETUPVAL                         R24 0
      400 GETTABLEKS                       R24 R24 K1 ["createElement"]
      402 GETUPVAL                         R25 6
      403 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      404 LOADN                            R27 1
      405 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      407 LOADK                            R27 K78 ["Maturity"]
      408 SETTABLEKS                       R27 R26 K26 ["Text"]
      410 LOADK                            R27 K84 ["auto-xy text-body-small content-default"]
      411 SETTABLEKS                       R27 R26 K40 ["tag"]
      413 CALL                             R24 2 1
      414 SETTABLEKS                       R24 R23 K81 ["Label"]
      416 GETUPVAL                         R24 0
      417 GETTABLEKS                       R24 R24 K1 ["createElement"]
      419 GETUPVAL                         R25 6
      420 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      421 LOADN                            R27 2
      422 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      424 LOADK                            R27 K89 ["Everyone"]
      425 SETTABLEKS                       R27 R26 K26 ["Text"]
      427 LOADK                            R27 K86 ["auto-xy text-title-medium content-emphasis"]
      428 SETTABLEKS                       R27 R26 K40 ["tag"]
      430 CALL                             R24 2 1
      431 SETTABLEKS                       R24 R23 K82 ["Value"]
      433 CALL                             R20 3 1
      434 SETTABLEKS                       R20 R19 K78 ["Maturity"]
      436 CALL                             R16 3 1
      437 SETTABLEKS                       R16 R15 K61 ["Attributes"]
      439 GETUPVAL                         R16 0
      440 GETTABLEKS                       R16 R16 K1 ["createElement"]
      442 GETUPVAL                         R17 5
      443 DUPTABLE                         R18 K41 [{"LayoutOrder", "tag"}]
      444 LOADN                            R19 4
      445 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      447 LOADK                            R19 K90 ["row align-y-center gap-small size-full-0 auto-y padding-small radius-medium bg-shift-200"]
      448 SETTABLEKS                       R19 R18 K40 ["tag"]
      450 DUPTABLE                         R19 K94 [{"Icon", "Rating", "Up", "Down"}]
      451 GETUPVAL                         R20 0
      452 GETTABLEKS                       R20 R20 K1 ["createElement"]
      454 GETUPVAL                         R21 10
      455 DUPTABLE                         R22 K96 [{"LayoutOrder", "name", "size"}]
      456 LOADN                            R23 1
      457 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      459 GETUPVAL                         R23 9
      460 GETTABLEKS                       R23 R23 K97 ["ThumbUp"]
      462 SETTABLEKS                       R23 R22 K95 ["name"]
      464 GETUPVAL                         R23 11
      465 GETTABLEKS                       R23 R23 K55 ["Large"]
      467 SETTABLEKS                       R23 R22 K14 ["size"]
      469 CALL                             R20 2 1
      470 SETTABLEKS                       R20 R19 K91 ["Icon"]
      472 GETUPVAL                         R20 0
      473 GETTABLEKS                       R20 R20 K1 ["createElement"]
      475 GETUPVAL                         R21 5
      476 DUPTABLE                         R22 K41 [{"LayoutOrder", "tag"}]
      477 LOADN                            R23 2
      478 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      480 LOADK                            R23 K98 ["col grow auto-xy"]
      481 SETTABLEKS                       R23 R22 K40 ["tag"]
      483 DUPTABLE                         R23 K99 [{"Value", "Label"}]
      484 GETUPVAL                         R24 0
      485 GETTABLEKS                       R24 R24 K1 ["createElement"]
      487 GETUPVAL                         R25 6
      488 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      489 LOADN                            R27 1
      490 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      492 LOADK                            R27 K85 ["94%"]
      493 SETTABLEKS                       R27 R26 K26 ["Text"]
      495 LOADK                            R27 K100 ["auto-xy text-body-medium content-emphasis"]
      496 SETTABLEKS                       R27 R26 K40 ["tag"]
      498 CALL                             R24 2 1
      499 SETTABLEKS                       R24 R23 K82 ["Value"]
      501 GETUPVAL                         R24 0
      502 GETTABLEKS                       R24 R24 K1 ["createElement"]
      504 GETUPVAL                         R25 6
      505 DUPTABLE                         R26 K47 [{"LayoutOrder", "Text", "tag"}]
      506 LOADN                            R27 2
      507 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      509 LOADK                            R27 K101 ["100 VOTES"]
      510 SETTABLEKS                       R27 R26 K26 ["Text"]
      512 LOADK                            R27 K84 ["auto-xy text-body-small content-default"]
      513 SETTABLEKS                       R27 R26 K40 ["tag"]
      515 CALL                             R24 2 1
      516 SETTABLEKS                       R24 R23 K81 ["Label"]
      518 CALL                             R20 3 1
      519 SETTABLEKS                       R20 R19 K62 ["Rating"]
      521 GETUPVAL                         R20 0
      522 GETTABLEKS                       R20 R20 K1 ["createElement"]
      524 GETUPVAL                         R21 7
      525 DUPTABLE                         R22 K102 [{"LayoutOrder", "icon", "size", "onActivated"}]
      526 LOADN                            R23 3
      527 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      529 GETUPVAL                         R23 9
      530 GETTABLEKS                       R23 R23 K97 ["ThumbUp"]
      532 SETTABLEKS                       R23 R22 K53 ["icon"]
      534 GETUPVAL                         R23 8
      535 GETTABLEKS                       R23 R23 K55 ["Large"]
      537 SETTABLEKS                       R23 R22 K14 ["size"]
      539 DUPCLOSURE                       R23 K103 [PROTO_3]
      540 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      542 CALL                             R20 2 1
      543 SETTABLEKS                       R20 R19 K92 ["Up"]
      545 GETUPVAL                         R20 0
      546 GETTABLEKS                       R20 R20 K1 ["createElement"]
      548 GETUPVAL                         R21 7
      549 DUPTABLE                         R22 K102 [{"LayoutOrder", "icon", "size", "onActivated"}]
      550 LOADN                            R23 4
      551 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      553 GETUPVAL                         R23 9
      554 GETTABLEKS                       R23 R23 K104 ["ThumbDown"]
      556 SETTABLEKS                       R23 R22 K53 ["icon"]
      558 GETUPVAL                         R23 8
      559 GETTABLEKS                       R23 R23 K55 ["Large"]
      561 SETTABLEKS                       R23 R22 K14 ["size"]
      563 DUPCLOSURE                       R23 K105 [PROTO_4]
      564 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      566 CALL                             R20 2 1
      567 SETTABLEKS                       R20 R19 K93 ["Down"]
      569 CALL                             R16 3 1
      570 SETTABLEKS                       R16 R15 K62 ["Rating"]
      572 GETUPVAL                         R16 0
      573 GETTABLEKS                       R16 R16 K1 ["createElement"]
      575 GETUPVAL                         R17 6
      576 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      577 LOADN                            R19 5
      578 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      580 LOADK                            R19 K106 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      581 SETTABLEKS                       R19 R18 K26 ["Text"]
      583 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      584 SETTABLEKS                       R19 R18 K40 ["tag"]
      586 CALL                             R16 2 1
      587 SETTABLEKS                       R16 R15 K63 ["Description"]
      589 GETUPVAL                         R16 0
      590 GETTABLEKS                       R16 R16 K1 ["createElement"]
      592 GETUPVAL                         R17 6
      593 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      594 LOADN                            R19 6
      595 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      597 LOADK                            R19 K108 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      598 SETTABLEKS                       R19 R18 K26 ["Text"]
      600 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      601 SETTABLEKS                       R19 R18 K40 ["tag"]
      603 CALL                             R16 2 1
      604 SETTABLEKS                       R16 R15 K64 ["Description2"]
      606 GETUPVAL                         R16 0
      607 GETTABLEKS                       R16 R16 K1 ["createElement"]
      609 GETUPVAL                         R17 6
      610 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      611 LOADN                            R19 7
      612 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      614 LOADK                            R19 K109 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      615 SETTABLEKS                       R19 R18 K26 ["Text"]
      617 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      618 SETTABLEKS                       R19 R18 K40 ["tag"]
      620 CALL                             R16 2 1
      621 SETTABLEKS                       R16 R15 K65 ["Description3"]
      623 GETUPVAL                         R16 0
      624 GETTABLEKS                       R16 R16 K1 ["createElement"]
      626 GETUPVAL                         R17 6
      627 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      628 LOADN                            R19 8
      629 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      631 LOADK                            R19 K110 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
      632 SETTABLEKS                       R19 R18 K26 ["Text"]
      634 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      635 SETTABLEKS                       R19 R18 K40 ["tag"]
      637 CALL                             R16 2 1
      638 SETTABLEKS                       R16 R15 K66 ["Description4"]
      640 GETUPVAL                         R16 0
      641 GETTABLEKS                       R16 R16 K1 ["createElement"]
      643 GETUPVAL                         R17 6
      644 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      645 LOADN                            R19 9
      646 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      648 LOADK                            R19 K111 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
      649 SETTABLEKS                       R19 R18 K26 ["Text"]
      651 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      652 SETTABLEKS                       R19 R18 K40 ["tag"]
      654 CALL                             R16 2 1
      655 SETTABLEKS                       R16 R15 K67 ["Description5"]
      657 GETUPVAL                         R16 0
      658 GETTABLEKS                       R16 R16 K1 ["createElement"]
      660 GETUPVAL                         R17 6
      661 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      662 LOADN                            R19 10
      663 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      665 LOADK                            R19 K112 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
      666 SETTABLEKS                       R19 R18 K26 ["Text"]
      668 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      669 SETTABLEKS                       R19 R18 K40 ["tag"]
      671 CALL                             R16 2 1
      672 SETTABLEKS                       R16 R15 K68 ["Description6"]
      674 GETUPVAL                         R16 0
      675 GETTABLEKS                       R16 R16 K1 ["createElement"]
      677 GETUPVAL                         R17 6
      678 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      679 LOADN                            R19 11
      680 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      682 LOADK                            R19 K113 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
      683 SETTABLEKS                       R19 R18 K26 ["Text"]
      685 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      686 SETTABLEKS                       R19 R18 K40 ["tag"]
      688 CALL                             R16 2 1
      689 SETTABLEKS                       R16 R15 K69 ["Description7"]
      691 GETUPVAL                         R16 0
      692 GETTABLEKS                       R16 R16 K1 ["createElement"]
      694 GETUPVAL                         R17 6
      695 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      696 LOADN                            R19 12
      697 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      699 LOADK                            R19 K114 ["Feel free to reach out if you have any questions or need further assistance."]
      700 SETTABLEKS                       R19 R18 K26 ["Text"]
      702 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      703 SETTABLEKS                       R19 R18 K40 ["tag"]
      705 CALL                             R16 2 1
      706 SETTABLEKS                       R16 R15 K70 ["Description8"]
      708 GETUPVAL                         R16 0
      709 GETTABLEKS                       R16 R16 K1 ["createElement"]
      711 GETUPVAL                         R17 6
      712 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      713 LOADN                            R19 13
      714 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      716 LOADK                            R19 K115 ["Happy developing!"]
      717 SETTABLEKS                       R19 R18 K26 ["Text"]
      719 LOADK                            R19 K107 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      720 SETTABLEKS                       R19 R18 K40 ["tag"]
      722 CALL                             R16 2 1
      723 SETTABLEKS                       R16 R15 K71 ["Description9"]
      725 CALL                             R12 3 1
      726 SETTABLEKS                       R12 R11 K21 ["Content"]
      728 GETUPVAL                         R12 0
      729 GETTABLEKS                       R12 R12 K1 ["createElement"]
      731 GETUPVAL                         R13 3
      732 GETTABLEKS                       R13 R13 K22 ["Actions"]
      734 LOADNIL                          R14
      735 DUPTABLE                         R15 K118 [{"SubActions", "Join"}]
      736 GETUPVAL                         R16 0
      737 GETTABLEKS                       R16 R16 K1 ["createElement"]
      739 GETUPVAL                         R17 5
      740 DUPTABLE                         R18 K119 [{"tag"}]
      741 LOADK                            R19 K120 ["row auto-xy padding-right-small"]
      742 SETTABLEKS                       R19 R18 K40 ["tag"]
      744 DUPTABLE                         R19 K123 [{"More", "Invite"}]
      745 GETUPVAL                         R20 0
      746 GETTABLEKS                       R20 R20 K1 ["createElement"]
      748 GETUPVAL                         R21 7
      749 DUPTABLE                         R22 K102 [{"LayoutOrder", "icon", "size", "onActivated"}]
      750 LOADN                            R23 1
      751 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      753 GETUPVAL                         R23 9
      754 GETTABLEKS                       R23 R23 K124 ["CircleThreeDotsHorizontal"]
      756 SETTABLEKS                       R23 R22 K53 ["icon"]
      758 GETUPVAL                         R23 8
      759 GETTABLEKS                       R23 R23 K55 ["Large"]
      761 SETTABLEKS                       R23 R22 K14 ["size"]
      763 DUPCLOSURE                       R23 K125 [PROTO_5]
      764 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      766 CALL                             R20 2 1
      767 SETTABLEKS                       R20 R19 K121 ["More"]
      769 GETUPVAL                         R20 0
      770 GETTABLEKS                       R20 R20 K1 ["createElement"]
      772 GETUPVAL                         R21 7
      773 DUPTABLE                         R22 K102 [{"LayoutOrder", "icon", "size", "onActivated"}]
      774 LOADN                            R23 2
      775 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      777 GETUPVAL                         R23 9
      778 GETTABLEKS                       R23 R23 K126 ["PersonArrowFromBottomRight"]
      780 SETTABLEKS                       R23 R22 K53 ["icon"]
      782 GETUPVAL                         R23 8
      783 GETTABLEKS                       R23 R23 K55 ["Large"]
      785 SETTABLEKS                       R23 R22 K14 ["size"]
      787 DUPCLOSURE                       R23 K127 [PROTO_6]
      788 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      790 CALL                             R20 2 1
      791 SETTABLEKS                       R20 R19 K122 ["Invite"]
      793 CALL                             R16 3 1
      794 SETTABLEKS                       R16 R15 K116 ["SubActions"]
      796 GETUPVAL                         R16 0
      797 GETTABLEKS                       R16 R16 K1 ["createElement"]
      799 GETUPVAL                         R17 2
      800 DUPTABLE                         R18 K130 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
      801 LOADN                            R19 3
      802 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      804 LOADK                            R19 K117 ["Join"]
      805 SETTABLEKS                       R19 R18 K7 ["text"]
      807 GETUPVAL                         R19 9
      808 GETTABLEKS                       R19 R19 K131 ["PlayLarge"]
      810 SETTABLEKS                       R19 R18 K53 ["icon"]
      812 GETUPVAL                         R19 8
      813 GETTABLEKS                       R19 R19 K55 ["Large"]
      815 SETTABLEKS                       R19 R18 K14 ["size"]
      817 GETUPVAL                         R19 12
      818 GETTABLEKS                       R19 R19 K132 ["Emphasis"]
      820 SETTABLEKS                       R19 R18 K128 ["variant"]
      822 GETUPVAL                         R19 13
      823 GETTABLEKS                       R19 R19 K133 ["Fill"]
      825 SETTABLEKS                       R19 R18 K129 ["fillBehavior"]
      827 NEWCLOSURE                       R19 P7
      828 CAPTURE                          VAL R2
      829 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      831 CALL                             R16 2 1
      832 SETTABLEKS                       R16 R15 K117 ["Join"]
      834 CALL                             R12 3 1
      835 SETTABLEKS                       R12 R11 K22 ["Actions"]
      837 CALL                             R8 3 1
      838 SETTABLEKS                       R8 R7 K4 ["Sheet"]
      840 CALL                             R4 3 -1
      841 RETURN                           R4 -1

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
       36 JUMPIFNOT                        R1 ; [+119]
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
       78 DUPTABLE                         R14 K23 [{"isContentFullBleed"}]
       79 GETTABLEKS                       R15 R0 K19 ["controls"]
       81 GETTABLEKS                       R15 R15 K22 ["isContentFullBleed"]
       83 SETTABLEKS                       R15 R14 K22 ["isContentFullBleed"]
       85 DUPTABLE                         R15 K28 [{"Image", "Description", "Description2", "Description3"}]
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R16 R16 K2 ["createElement"]
       89 GETUPVAL                         R17 4
       90 DUPTABLE                         R18 K31 [{"LayoutOrder", "tag"}]
       91 LOADN                            R19 1
       92 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
       94 LOADK                            R19 K32 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
       95 SETTABLEKS                       R19 R18 K30 ["tag"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K24 ["Image"]
      100 GETUPVAL                         R16 0
      101 GETTABLEKS                       R16 R16 K2 ["createElement"]
      103 GETUPVAL                         R17 5
      104 DUPTABLE                         R18 K34 [{"LayoutOrder", "Text", "tag"}]
      105 LOADN                            R19 2
      106 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      108 LOADK                            R19 K35 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      109 SETTABLEKS                       R19 R18 K33 ["Text"]
      111 LOADK                            R19 K36 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      112 SETTABLEKS                       R19 R18 K30 ["tag"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K25 ["Description"]
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K2 ["createElement"]
      120 GETUPVAL                         R17 5
      121 DUPTABLE                         R18 K34 [{"LayoutOrder", "Text", "tag"}]
      122 LOADN                            R19 3
      123 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      125 LOADK                            R19 K37 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      126 SETTABLEKS                       R19 R18 K33 ["Text"]
      128 LOADK                            R19 K36 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      129 SETTABLEKS                       R19 R18 K30 ["tag"]
      131 CALL                             R16 2 1
      132 SETTABLEKS                       R16 R15 K26 ["Description2"]
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R16 R16 K2 ["createElement"]
      137 GETUPVAL                         R17 5
      138 DUPTABLE                         R18 K34 [{"LayoutOrder", "Text", "tag"}]
      139 LOADN                            R19 4
      140 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      142 LOADK                            R19 K38 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      143 SETTABLEKS                       R19 R18 K33 ["Text"]
      145 LOADK                            R19 K36 ["size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"]
      146 SETTABLEKS                       R19 R18 K30 ["tag"]
      148 CALL                             R16 2 1
      149 SETTABLEKS                       R16 R15 K27 ["Description3"]
      151 CALL                             R12 3 1
      152 SETTABLEKS                       R12 R11 K20 ["Content"]
      154 CALL                             R8 3 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R8
      157 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      159 CALL                             R4 3 -1
      160 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row items-center gap-medium size-full-0 auto-y"]
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
       33 LOADK                            R8 K14 ["col fill gap-xsmall auto-xy"]
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
       54 LOADK                            R12 K23 ["auto-xy text-body-medium text-truncate-split content-emphasis"]
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
       55 JUMPIFNOT                        R1 ; [+150]
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
      114 DUPTABLE                         R16 K35 [{"isContentFullBleed"}]
      115 GETTABLEKS                       R17 R0 K21 ["controls"]
      117 GETTABLEKS                       R17 R17 K34 ["isContentFullBleed"]
      119 SETTABLEKS                       R17 R16 K34 ["isContentFullBleed"]
      121 MOVE                             R17 R5
      122 CALL                             R14 3 1
      123 SETTABLEKS                       R14 R13 K23 ["Content"]
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K1 ["createElement"]
      128 GETUPVAL                         R15 3
      129 GETTABLEKS                       R15 R15 K24 ["Actions"]
      131 LOADNIL                          R16
      132 DUPTABLE                         R17 K38 [{"AddAccount", "RemoveAccount"}]
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K1 ["createElement"]
      136 GETUPVAL                         R19 2
      137 DUPTABLE                         R20 K41 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      138 LOADN                            R21 1
      139 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      141 LOADK                            R21 K42 ["Add Account"]
      142 SETTABLEKS                       R21 R20 K13 ["text"]
      144 GETUPVAL                         R21 5
      145 GETTABLEKS                       R21 R21 K43 ["Large"]
      147 SETTABLEKS                       R21 R20 K18 ["size"]
      149 GETUPVAL                         R21 6
      150 GETTABLEKS                       R21 R21 K44 ["Emphasis"]
      152 SETTABLEKS                       R21 R20 K39 ["variant"]
      154 GETUPVAL                         R21 7
      155 GETTABLEKS                       R21 R21 K45 ["Fill"]
      157 SETTABLEKS                       R21 R20 K40 ["fillBehavior"]
      159 NEWCLOSURE                       R21 P2
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R3
      162 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K36 ["AddAccount"]
      167 GETUPVAL                         R18 0
      168 GETTABLEKS                       R18 R18 K1 ["createElement"]
      170 GETUPVAL                         R19 2
      171 DUPTABLE                         R20 K41 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      172 LOADN                            R21 2
      173 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      175 LOADK                            R21 K46 ["Remove Account"]
      176 SETTABLEKS                       R21 R20 K13 ["text"]
      178 GETUPVAL                         R21 5
      179 GETTABLEKS                       R21 R21 K43 ["Large"]
      181 SETTABLEKS                       R21 R20 K18 ["size"]
      183 GETUPVAL                         R21 6
      184 GETTABLEKS                       R21 R21 K47 ["Alert"]
      186 SETTABLEKS                       R21 R20 K39 ["variant"]
      188 GETUPVAL                         R21 7
      189 GETTABLEKS                       R21 R21 K45 ["Fill"]
      191 SETTABLEKS                       R21 R20 K40 ["fillBehavior"]
      193 NEWCLOSURE                       R21 P3
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R3
      196 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K37 ["RemoveAccount"]
      201 CALL                             R14 3 1
      202 SETTABLEKS                       R14 R13 K24 ["Actions"]
      204 CALL                             R10 3 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R10
      207 SETTABLEKS                       R10 R9 K10 ["Sheet"]
      209 CALL                             R6 3 -1
      210 RETURN                           R6 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setContentStartRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R1 K2 ["setContentStartRef"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["createElement"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K5 [{"tag"}]
       25 LOADK                            R6 K6 ["col gap-small size-full-0 auto-y"]
       26 SETTABLEKS                       R6 R5 K4 ["tag"]
       28 DUPTABLE                         R6 K9 [{"Notifications", "Analytics"}]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K3 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K17 [{"label", "isChecked", "onActivated", "ref", "NextSelectionUp", "NextSelectionLeft", "LayoutOrder"}]
       34 LOADK                            R10 K18 ["Enable notifications"]
       35 SETTABLEKS                       R10 R9 K10 ["label"]
       37 GETTABLEKS                       R10 R0 K19 ["checkboxStates"]
       39 GETTABLEKS                       R10 R10 K20 ["notifications"]
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
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K3 ["createElement"]
       68 GETUPVAL                         R8 3
       69 DUPTABLE                         R9 K23 [{"label", "isChecked", "onActivated", "ref", "LayoutOrder"}]
       70 LOADK                            R10 K24 ["Share usage analytics"]
       71 SETTABLEKS                       R10 R9 K10 ["label"]
       73 GETTABLEKS                       R10 R0 K19 ["checkboxStates"]
       75 GETTABLEKS                       R10 R10 K25 ["analytics"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K3 [{"tag"}]
       12 LOADK                            R6 K4 ["col gap-medium size-full-0 auto-y"]
       13 SETTABLEKS                       R6 R5 K2 ["tag"]
       15 DUPTABLE                         R6 K10 [{"Toolbar", "Image", "Title", "Description", "CloseButton"}]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K1 ["createElement"]
       19 GETUPVAL                         R8 2
       20 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
       21 LOADN                            R10 1
       22 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       24 LOADK                            R10 K13 ["row items-center gap-small size-full-0 auto-y"]
       25 SETTABLEKS                       R10 R9 K2 ["tag"]
       27 DUPTABLE                         R10 K17 [{"FavoriteButton", "ShareButton", "MoreButton"}]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K1 ["createElement"]
       31 GETUPVAL                         R12 3
       32 DUPTABLE                         R13 K21 [{"LayoutOrder", "icon", "size", "onActivated"}]
       33 LOADN                            R14 1
       34 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       36 GETUPVAL                         R14 4
       37 GETTABLEKS                       R14 R14 K22 ["Heart"]
       39 SETTABLEKS                       R14 R13 K18 ["icon"]
       41 GETUPVAL                         R14 5
       42 GETTABLEKS                       R14 R14 K23 ["Large"]
       44 SETTABLEKS                       R14 R13 K19 ["size"]
       46 DUPCLOSURE                       R14 K24 [PROTO_20]
       47 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K14 ["FavoriteButton"]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K1 ["createElement"]
       55 GETUPVAL                         R12 3
       56 DUPTABLE                         R13 K21 [{"LayoutOrder", "icon", "size", "onActivated"}]
       57 LOADN                            R14 2
       58 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       60 GETUPVAL                         R14 4
       61 GETTABLEKS                       R14 R14 K25 ["ArrowUpRightFromSquare"]
       63 SETTABLEKS                       R14 R13 K18 ["icon"]
       65 GETUPVAL                         R14 5
       66 GETTABLEKS                       R14 R14 K23 ["Large"]
       68 SETTABLEKS                       R14 R13 K19 ["size"]
       70 DUPCLOSURE                       R14 K26 [PROTO_21]
       71 SETTABLEKS                       R14 R13 K20 ["onActivated"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K15 ["ShareButton"]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K1 ["createElement"]
       79 GETUPVAL                         R12 3
       80 DUPTABLE                         R13 K29 [{"LayoutOrder", "icon", "size", "onActivated", "ref", "NextSelectionRight"}]
       81 LOADN                            R14 3
       82 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K30 ["CircleThreeDotsHorizontal"]
       87 SETTABLEKS                       R14 R13 K18 ["icon"]
       89 GETUPVAL                         R14 5
       90 GETTABLEKS                       R14 R14 K23 ["Large"]
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
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R7 R7 K1 ["createElement"]
      112 GETUPVAL                         R8 2
      113 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
      114 LOADN                            R10 2
      115 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      117 LOADK                            R10 K33 ["size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"]
      118 SETTABLEKS                       R10 R9 K2 ["tag"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K6 ["Image"]
      123 GETUPVAL                         R7 1
      124 GETTABLEKS                       R7 R7 K1 ["createElement"]
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
      140 GETUPVAL                         R7 1
      141 GETTABLEKS                       R7 R7 K1 ["createElement"]
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
      157 GETUPVAL                         R7 1
      158 GETTABLEKS                       R7 R7 K1 ["createElement"]
      160 GETUPVAL                         R8 2
      161 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
      162 LOADN                            R10 5
      163 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      165 LOADK                            R10 K40 ["row align-x-right size-full-0 auto-y padding-top-medium"]
      166 SETTABLEKS                       R10 R9 K2 ["tag"]
      168 DUPTABLE                         R10 K42 [{"Button"}]
      169 GETUPVAL                         R11 1
      170 GETTABLEKS                       R11 R11 K1 ["createElement"]
      172 GETUPVAL                         R12 7
      173 DUPTABLE                         R13 K45 [{"text", "onActivated", "variant"}]
      174 LOADK                            R14 K46 ["Close"]
      175 SETTABLEKS                       R14 R13 K43 ["text"]
      177 GETTABLEKS                       R14 R0 K47 ["onClose"]
      179 SETTABLEKS                       R14 R13 K20 ["onActivated"]
      181 GETUPVAL                         R14 8
      182 GETTABLEKS                       R14 R14 K48 ["Emphasis"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       11 LOADNIL                          R5
       12 DUPTABLE                         R6 K5 [{"Button", "Sheet"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["createElement"]
       16 GETUPVAL                         R8 1
       17 DUPTABLE                         R9 K8 [{"onActivated", "text"}]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       22 LOADK                            R10 K9 ["Open Sheet (Left Navigation)"]
       23 SETTABLEKS                       R10 R9 K7 ["text"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K3 ["Button"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K1 ["createElement"]
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K10 ["Root"]
       34 DUPTABLE                         R9 K15 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       35 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       37 GETTABLEKS                       R10 R0 K16 ["controls"]
       39 GETTABLEKS                       R10 R10 K12 ["preferCenterSheet"]
       41 SETTABLEKS                       R10 R9 K12 ["preferCenterSheet"]
       43 GETTABLEKS                       R10 R0 K16 ["controls"]
       45 GETTABLEKS                       R10 R10 K13 ["size"]
       47 SETTABLEKS                       R10 R9 K13 ["size"]
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R10 R9 K14 ["onClose"]
       53 DUPTABLE                         R10 K18 [{"Content"}]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K1 ["createElement"]
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R12 R12 K17 ["Content"]
       60 DUPTABLE                         R13 K20 [{"isContentFullBleed"}]
       61 GETTABLEKS                       R14 R0 K16 ["controls"]
       63 GETTABLEKS                       R14 R14 K19 ["isContentFullBleed"]
       65 SETTABLEKS                       R14 R13 K19 ["isContentFullBleed"]
       67 DUPTABLE                         R14 K22 [{"ToolbarContent"}]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R15 R15 K1 ["createElement"]
       71 GETUPVAL                         R16 3
       72 DUPTABLE                         R17 K23 [{"onClose"}]
       73 NEWCLOSURE                       R18 P2
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R18 R17 K14 ["onClose"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K21 ["ToolbarContent"]
       80 CALL                             R11 3 1
       81 SETTABLEKS                       R11 R10 K17 ["Content"]
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K4 ["Sheet"]
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
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
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K6 ["useRef"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 1
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K7 ["createElement"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K8 ["Fragment"]
       36 LOADNIL                          R9
       37 DUPTABLE                         R10 K11 [{"Button", "Sheet"}]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K7 ["createElement"]
       41 GETUPVAL                         R12 2
       42 DUPTABLE                         R13 K14 [{"onActivated", "text"}]
       43 NEWCLOSURE                       R14 P1
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R14 R13 K12 ["onActivated"]
       47 LOADK                            R14 K15 ["Open Sheet (Focus Navigation)"]
       48 SETTABLEKS                       R14 R13 K13 ["text"]
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K9 ["Button"]
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R11 R11 K7 ["createElement"]
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R12 R12 K16 ["Root"]
       59 DUPTABLE                         R13 K21 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       60 SETTABLEKS                       R1 R13 K17 ["isOpen"]
       62 GETTABLEKS                       R14 R0 K22 ["controls"]
       64 GETTABLEKS                       R14 R14 K18 ["preferCenterSheet"]
       66 SETTABLEKS                       R14 R13 K18 ["preferCenterSheet"]
       68 GETTABLEKS                       R14 R0 K22 ["controls"]
       70 GETTABLEKS                       R14 R14 K19 ["size"]
       72 SETTABLEKS                       R14 R13 K19 ["size"]
       74 NEWCLOSURE                       R14 P2
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R14 R13 K20 ["onClose"]
       78 DUPTABLE                         R14 K25 [{"Header", "Content"}]
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R15 R15 K7 ["createElement"]
       82 GETUPVAL                         R16 3
       83 GETTABLEKS                       R16 R16 K23 ["Header"]
       85 LOADNIL                          R17
       86 DUPTABLE                         R18 K27 [{"Title"}]
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K7 ["createElement"]
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
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R15 R15 K7 ["createElement"]
      110 GETUPVAL                         R16 3
      111 GETTABLEKS                       R16 R16 K24 ["Content"]
      113 DUPTABLE                         R17 K35 [{"isContentFullBleed"}]
      114 GETTABLEKS                       R18 R0 K22 ["controls"]
      116 GETTABLEKS                       R18 R18 K34 ["isContentFullBleed"]
      118 SETTABLEKS                       R18 R17 K34 ["isContentFullBleed"]
      120 DUPTABLE                         R18 K38 [{"CheckboxContent", "AlignLeft"}]
      121 GETUPVAL                         R19 0
      122 GETTABLEKS                       R19 R19 K7 ["createElement"]
      124 GETUPVAL                         R20 5
      125 DUPTABLE                         R21 K42 [{"checkboxStates", "toggleCheckbox", "lastCheckboxRef"}]
      126 SETTABLEKS                       R3 R21 K39 ["checkboxStates"]
      128 SETTABLEKS                       R6 R21 K40 ["toggleCheckbox"]
      130 SETTABLEKS                       R5 R21 K41 ["lastCheckboxRef"]
      132 CALL                             R19 2 1
      133 SETTABLEKS                       R19 R18 K36 ["CheckboxContent"]
      135 GETUPVAL                         R19 0
      136 GETTABLEKS                       R19 R19 K7 ["createElement"]
      138 GETUPVAL                         R20 6
      139 DUPTABLE                         R21 K43 [{"tag"}]
      140 LOADK                            R22 K44 ["row align-x-right size-full-0 auto-y padding-top-medium"]
      141 SETTABLEKS                       R22 R21 K30 ["tag"]
      143 DUPTABLE                         R22 K45 [{"Button"}]
      144 GETUPVAL                         R23 0
      145 GETTABLEKS                       R23 R23 K7 ["createElement"]
      147 GETUPVAL                         R24 2
      148 DUPTABLE                         R25 K48 [{"text", "onActivated", "variant", "NextSelectionUp"}]
      149 LOADK                            R26 K49 ["Close"]
      150 SETTABLEKS                       R26 R25 K13 ["text"]
      152 NEWCLOSURE                       R26 P3
      153 CAPTURE                          VAL R2
      154 SETTABLEKS                       R26 R25 K12 ["onActivated"]
      156 GETUPVAL                         R26 7
      157 GETTABLEKS                       R26 R26 K50 ["Emphasis"]
      159 SETTABLEKS                       R26 R25 K46 ["variant"]
      161 SETTABLEKS                       R5 R25 K47 ["NextSelectionUp"]
      163 CALL                             R23 2 1
      164 SETTABLEKS                       R23 R22 K9 ["Button"]
      166 CALL                             R19 3 1
      167 SETTABLEKS                       R19 R18 K37 ["AlignLeft"]
      169 CALL                             R15 3 1
      170 SETTABLEKS                       R15 R14 K24 ["Content"]
      172 CALL                             R11 3 1
      173 SETTABLEKS                       R11 R10 K10 ["Sheet"]
      175 CALL                             R7 3 -1
      176 RETURN                           R7 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Item"]
       11 DUPTABLE                         R5 K5 [{"description", "trailing"}]
       12 LOADK                            R6 K6 ["End date"]
       13 SETTABLEKS                       R6 R5 K3 ["description"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K9 [{"tag", "Text"}]
       20 LOADK                            R9 K10 ["auto-xy text-title-medium content-emphasis"]
       21 SETTABLEKS                       R9 R8 K7 ["tag"]
       23 LOADK                            R9 K11 ["Tue, Mar 11 at 5:00 AM"]
       24 SETTABLEKS                       R9 R8 K8 ["Text"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K4 ["trailing"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K1 ["createElement"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K12 ["Fragment"]
       36 LOADNIL                          R6
       37 DUPTABLE                         R7 K15 [{"Button", "Sheet"}]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K1 ["createElement"]
       41 GETUPVAL                         R9 3
       42 DUPTABLE                         R10 K18 [{"onActivated", "text"}]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       47 LOADK                            R11 K19 ["Open Sheet (FullBleed)"]
       48 SETTABLEKS                       R11 R10 K17 ["text"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K13 ["Button"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K1 ["createElement"]
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R9 R9 K20 ["Root"]
       59 DUPTABLE                         R10 K26 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       60 SETTABLEKS                       R1 R10 K21 ["isOpen"]
       62 NEWTABLE                         R11 0 2
       64 LOADK                            R12 K27 [0.5]
       65 LOADK                            R13 K28 [0.9]
       66 SETLIST                          R11 R12 2 [1]
       68 SETTABLEKS                       R11 R10 K22 ["snapPoints"]
       70 GETTABLEKS                       R11 R0 K29 ["controls"]
       72 GETTABLEKS                       R11 R11 K23 ["preferCenterSheet"]
       74 SETTABLEKS                       R11 R10 K23 ["preferCenterSheet"]
       76 GETTABLEKS                       R11 R0 K29 ["controls"]
       78 GETTABLEKS                       R11 R11 K24 ["size"]
       80 SETTABLEKS                       R11 R10 K24 ["size"]
       82 NEWCLOSURE                       R11 P1
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R11 R10 K25 ["onClose"]
       86 DUPTABLE                         R11 K33 [{"FullBleed", "Content", "Actions"}]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K1 ["createElement"]
       90 GETUPVAL                         R13 4
       91 GETTABLEKS                       R13 R13 K30 ["FullBleed"]
       93 DUPTABLE                         R14 K37 [{"media", "sticky", "aspectRatio"}]
       94 LOADK                            R15 K38 ["component_assets/avatarBG_dark"]
       95 SETTABLEKS                       R15 R14 K34 ["media"]
       97 GETTABLEKS                       R15 R0 K29 ["controls"]
       99 GETTABLEKS                       R15 R15 K39 ["stickyFullBleed"]
      101 SETTABLEKS                       R15 R14 K35 ["sticky"]
      103 LOADK                            R15 K40 [1.77777777777778]
      104 SETTABLEKS                       R15 R14 K36 ["aspectRatio"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K30 ["FullBleed"]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K1 ["createElement"]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R13 R13 K31 ["Content"]
      115 DUPTABLE                         R14 K42 [{"isContentFullBleed"}]
      116 GETTABLEKS                       R15 R0 K29 ["controls"]
      118 GETTABLEKS                       R15 R15 K41 ["isContentFullBleed"]
      120 SETTABLEKS                       R15 R14 K41 ["isContentFullBleed"]
      122 DUPTABLE                         R15 K45 [{"Body", "List"}]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K1 ["createElement"]
      126 GETUPVAL                         R17 5
      127 DUPTABLE                         R18 K47 [{"LayoutOrder", "tag"}]
      128 LOADN                            R19 1
      129 SETTABLEKS                       R19 R18 K46 ["LayoutOrder"]
      131 LOADK                            R19 K48 ["col gap-xlarge size-full-0 auto-y padding-top-small"]
      132 SETTABLEKS                       R19 R18 K7 ["tag"]
      134 DUPTABLE                         R19 K53 [{"EventDetails", "Title", "Description", "Rating"}]
      135 GETUPVAL                         R20 0
      136 GETTABLEKS                       R20 R20 K1 ["createElement"]
      138 GETUPVAL                         R21 5
      139 DUPTABLE                         R22 K47 [{"LayoutOrder", "tag"}]
      140 LOADN                            R23 1
      141 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      143 LOADK                            R23 K54 ["row size-full-0 gap-medium auto-y items-center"]
      144 SETTABLEKS                       R23 R22 K7 ["tag"]
      146 DUPTABLE                         R23 K56 [{"GameIcon", "Text"}]
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R24 R24 K1 ["createElement"]
      150 GETUPVAL                         R25 6
      151 DUPTABLE                         R26 K47 [{"LayoutOrder", "tag"}]
      152 LOADN                            R27 1
      153 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      155 LOADK                            R27 K57 ["size-1400 radius-medium bg-shift-200"]
      156 SETTABLEKS                       R27 R26 K7 ["tag"]
      158 CALL                             R24 2 1
      159 SETTABLEKS                       R24 R23 K55 ["GameIcon"]
      161 GETUPVAL                         R24 0
      162 GETTABLEKS                       R24 R24 K1 ["createElement"]
      164 GETUPVAL                         R25 5
      165 DUPTABLE                         R26 K47 [{"LayoutOrder", "tag"}]
      166 LOADN                            R27 2
      167 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      169 LOADK                            R27 K58 ["col fill align-y-center auto-xy"]
      170 SETTABLEKS                       R27 R26 K7 ["tag"]
      172 DUPTABLE                         R27 K60 [{"Title", "Subtitle"}]
      173 GETUPVAL                         R28 0
      174 GETTABLEKS                       R28 R28 K1 ["createElement"]
      176 GETUPVAL                         R29 2
      177 DUPTABLE                         R30 K61 [{"LayoutOrder", "Text", "tag"}]
      178 LOADN                            R31 1
      179 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      181 LOADK                            R31 K62 ["Sheet Title"]
      182 SETTABLEKS                       R31 R30 K8 ["Text"]
      184 LOADK                            R31 K63 ["auto-xy text-heading-small text-truncate-split content-emphasis"]
      185 SETTABLEKS                       R31 R30 K7 ["tag"]
      187 CALL                             R28 2 1
      188 SETTABLEKS                       R28 R27 K50 ["Title"]
      190 GETUPVAL                         R28 0
      191 GETTABLEKS                       R28 R28 K1 ["createElement"]
      193 GETUPVAL                         R29 2
      194 DUPTABLE                         R30 K61 [{"LayoutOrder", "Text", "tag"}]
      195 LOADN                            R31 2
      196 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      198 LOADK                            R31 K64 ["Subtitle or description goes here"]
      199 SETTABLEKS                       R31 R30 K8 ["Text"]
      201 LOADK                            R31 K65 ["auto-xy text-label-medium text-truncate-split content-default"]
      202 SETTABLEKS                       R31 R30 K7 ["tag"]
      204 CALL                             R28 2 1
      205 SETTABLEKS                       R28 R27 K59 ["Subtitle"]
      207 CALL                             R24 3 1
      208 SETTABLEKS                       R24 R23 K8 ["Text"]
      210 CALL                             R20 3 1
      211 SETTABLEKS                       R20 R19 K49 ["EventDetails"]
      213 GETUPVAL                         R20 0
      214 GETTABLEKS                       R20 R20 K1 ["createElement"]
      216 GETUPVAL                         R21 5
      217 DUPTABLE                         R22 K47 [{"LayoutOrder", "tag"}]
      218 LOADN                            R23 2
      219 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      221 LOADK                            R23 K66 ["row size-full-0 auto-y gap-medium"]
      222 SETTABLEKS                       R23 R22 K7 ["tag"]
      224 DUPTABLE                         R23 K69 [{"Time", "Interest"}]
      225 GETUPVAL                         R24 0
      226 GETTABLEKS                       R24 R24 K1 ["createElement"]
      228 GETUPVAL                         R25 5
      229 DUPTABLE                         R26 K47 [{"LayoutOrder", "tag"}]
      230 LOADN                            R27 1
      231 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      233 LOADK                            R27 K70 ["row auto-xy gap-xsmall"]
      234 SETTABLEKS                       R27 R26 K7 ["tag"]
      236 DUPTABLE                         R27 K72 [{"Clock", "Time"}]
      237 GETUPVAL                         R28 0
      238 GETTABLEKS                       R28 R28 K1 ["createElement"]
      240 GETUPVAL                         R29 7
      241 DUPTABLE                         R30 K74 [{"LayoutOrder", "name", "size"}]
      242 LOADN                            R31 1
      243 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      245 GETUPVAL                         R31 8
      246 GETTABLEKS                       R31 R31 K71 ["Clock"]
      248 SETTABLEKS                       R31 R30 K73 ["name"]
      250 GETUPVAL                         R31 9
      251 GETTABLEKS                       R31 R31 K75 ["Small"]
      253 SETTABLEKS                       R31 R30 K24 ["size"]
      255 CALL                             R28 2 1
      256 SETTABLEKS                       R28 R27 K71 ["Clock"]
      258 GETUPVAL                         R28 0
      259 GETTABLEKS                       R28 R28 K1 ["createElement"]
      261 GETUPVAL                         R29 2
      262 DUPTABLE                         R30 K61 [{"LayoutOrder", "Text", "tag"}]
      263 LOADN                            R31 2
      264 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      266 LOADK                            R31 K76 ["In 2 days"]
      267 SETTABLEKS                       R31 R30 K8 ["Text"]
      269 LOADK                            R31 K77 ["auto-xy text-body-medium content-emphasis"]
      270 SETTABLEKS                       R31 R30 K7 ["tag"]
      272 CALL                             R28 2 1
      273 SETTABLEKS                       R28 R27 K67 ["Time"]
      275 CALL                             R24 3 1
      276 SETTABLEKS                       R24 R23 K67 ["Time"]
      278 GETUPVAL                         R24 0
      279 GETTABLEKS                       R24 R24 K1 ["createElement"]
      281 GETUPVAL                         R25 5
      282 DUPTABLE                         R26 K47 [{"LayoutOrder", "tag"}]
      283 LOADN                            R27 2
      284 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      286 LOADK                            R27 K70 ["row auto-xy gap-xsmall"]
      287 SETTABLEKS                       R27 R26 K7 ["tag"]
      289 DUPTABLE                         R27 K80 [{"People", "PeopleCount"}]
      290 GETUPVAL                         R28 0
      291 GETTABLEKS                       R28 R28 K1 ["createElement"]
      293 GETUPVAL                         R29 7
      294 DUPTABLE                         R30 K74 [{"LayoutOrder", "name", "size"}]
      295 LOADN                            R31 1
      296 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      298 GETUPVAL                         R31 8
      299 GETTABLEKS                       R31 R31 K81 ["PersonPlay"]
      301 SETTABLEKS                       R31 R30 K73 ["name"]
      303 GETUPVAL                         R31 9
      304 GETTABLEKS                       R31 R31 K75 ["Small"]
      306 SETTABLEKS                       R31 R30 K24 ["size"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K78 ["People"]
      311 GETUPVAL                         R28 0
      312 GETTABLEKS                       R28 R28 K1 ["createElement"]
      314 GETUPVAL                         R29 2
      315 DUPTABLE                         R30 K61 [{"LayoutOrder", "Text", "tag"}]
      316 LOADN                            R31 2
      317 SETTABLEKS                       R31 R30 K46 ["LayoutOrder"]
      319 LOADK                            R31 K82 ["1M Interested"]
      320 SETTABLEKS                       R31 R30 K8 ["Text"]
      322 LOADK                            R31 K77 ["auto-xy text-body-medium content-emphasis"]
      323 SETTABLEKS                       R31 R30 K7 ["tag"]
      325 CALL                             R28 2 1
      326 SETTABLEKS                       R28 R27 K79 ["PeopleCount"]
      328 CALL                             R24 3 1
      329 SETTABLEKS                       R24 R23 K68 ["Interest"]
      331 CALL                             R20 3 1
      332 SETTABLEKS                       R20 R19 K50 ["Title"]
      334 GETUPVAL                         R20 0
      335 GETTABLEKS                       R20 R20 K1 ["createElement"]
      337 GETUPVAL                         R21 2
      338 DUPTABLE                         R22 K61 [{"LayoutOrder", "Text", "tag"}]
      339 LOADN                            R23 3
      340 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      342 LOADK                            R23 K83 ["Style your look with iconic-inspired pieces and walk the runway to showcase your high-fashion vision. Compete, get inspired, and serve your best moment ✨...more "]
      343 SETTABLEKS                       R23 R22 K8 ["Text"]
      345 LOADK                            R23 K84 ["auto-xy text-body-medium content-default text-wrap text-align-x-left"]
      346 SETTABLEKS                       R23 R22 K7 ["tag"]
      348 CALL                             R20 2 1
      349 SETTABLEKS                       R20 R19 K51 ["Description"]
      351 GETUPVAL                         R20 0
      352 GETTABLEKS                       R20 R20 K1 ["createElement"]
      354 GETUPVAL                         R21 5
      355 DUPTABLE                         R22 K47 [{"LayoutOrder", "tag"}]
      356 LOADN                            R23 4
      357 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      359 LOADK                            R23 K85 ["row size-full-0 auto-y padding-medium gap-medium stroke-default radius-medium align-y-center"]
      360 SETTABLEKS                       R23 R22 K7 ["tag"]
      362 DUPTABLE                         R23 K87 [{"IARC", "Description"}]
      363 GETUPVAL                         R24 0
      364 GETTABLEKS                       R24 R24 K1 ["createElement"]
      366 GETUPVAL                         R25 5
      367 DUPTABLE                         R26 K88 [{"tag"}]
      368 LOADK                            R27 K89 ["size-1000-1300 bg-shift-200"]
      369 SETTABLEKS                       R27 R26 K7 ["tag"]
      371 CALL                             R24 2 1
      372 SETTABLEKS                       R24 R23 K86 ["IARC"]
      374 GETUPVAL                         R24 0
      375 GETTABLEKS                       R24 R24 K1 ["createElement"]
      377 GETUPVAL                         R25 2
      378 DUPTABLE                         R26 K90 [{"Text", "tag"}]
      379 LOADK                            R27 K91 ["Strong language, Mild Suggestive Themes • In-Game Purchases (Includes Random Items)"]
      380 SETTABLEKS                       R27 R26 K8 ["Text"]
      382 LOADK                            R27 K92 ["auto-xy fill text-align-x-left text-body-small text-wrap"]
      383 SETTABLEKS                       R27 R26 K7 ["tag"]
      385 CALL                             R24 2 1
      386 SETTABLEKS                       R24 R23 K51 ["Description"]
      388 CALL                             R20 3 1
      389 SETTABLEKS                       R20 R19 K52 ["Rating"]
      391 CALL                             R16 3 1
      392 SETTABLEKS                       R16 R15 K43 ["Body"]
      394 GETUPVAL                         R16 0
      395 GETTABLEKS                       R16 R16 K1 ["createElement"]
      397 GETUPVAL                         R17 1
      398 GETTABLEKS                       R17 R17 K20 ["Root"]
      400 DUPTABLE                         R18 K95 [{"LayoutOrder", "isContained", "hasDivider"}]
      401 LOADN                            R19 2
      402 SETTABLEKS                       R19 R18 K46 ["LayoutOrder"]
      404 DUPTABLE                         R19 K97 [{"isContained", "hasMargin"}]
      405 LOADB                            R20 0
      406 SETTABLEKS                       R20 R19 K93 ["isContained"]
      408 LOADB                            R20 0
      409 SETTABLEKS                       R20 R19 K96 ["hasMargin"]
      411 SETTABLEKS                       R19 R18 K93 ["isContained"]
      413 DUPTABLE                         R19 K99 [{"hasDivider", "isInset"}]
      414 LOADB                            R20 1
      415 SETTABLEKS                       R20 R19 K94 ["hasDivider"]
      417 LOADB                            R20 0
      418 SETTABLEKS                       R20 R19 K98 ["isInset"]
      420 SETTABLEKS                       R19 R18 K94 ["hasDivider"]
      422 DUPTABLE                         R19 K108 [{"Start", "End", "End2", "End3", "End4", "End5", "End6", "End7"}]
      423 GETUPVAL                         R20 0
      424 GETTABLEKS                       R20 R20 K1 ["createElement"]
      426 GETUPVAL                         R21 1
      427 GETTABLEKS                       R21 R21 K2 ["Item"]
      429 DUPTABLE                         R22 K109 [{"LayoutOrder", "description", "trailing"}]
      430 LOADN                            R23 255
      431 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      433 LOADK                            R23 K110 ["Start date"]
      434 SETTABLEKS                       R23 R22 K3 ["description"]
      436 GETUPVAL                         R23 0
      437 GETTABLEKS                       R23 R23 K1 ["createElement"]
      439 GETUPVAL                         R24 2
      440 DUPTABLE                         R25 K9 [{"tag", "Text"}]
      441 LOADK                            R26 K10 ["auto-xy text-title-medium content-emphasis"]
      442 SETTABLEKS                       R26 R25 K7 ["tag"]
      444 LOADK                            R26 K111 ["Sat, Mar 8 at 8:00 PM"]
      445 SETTABLEKS                       R26 R25 K8 ["Text"]
      447 CALL                             R23 2 1
      448 SETTABLEKS                       R23 R22 K4 ["trailing"]
      450 CALL                             R20 2 1
      451 SETTABLEKS                       R20 R19 K100 ["Start"]
      453 SETTABLEKS                       R3 R19 K101 ["End"]
      455 SETTABLEKS                       R3 R19 K102 ["End2"]
      457 SETTABLEKS                       R3 R19 K103 ["End3"]
      459 SETTABLEKS                       R3 R19 K104 ["End4"]
      461 SETTABLEKS                       R3 R19 K105 ["End5"]
      463 SETTABLEKS                       R3 R19 K106 ["End6"]
      465 SETTABLEKS                       R3 R19 K107 ["End7"]
      467 CALL                             R16 3 1
      468 SETTABLEKS                       R16 R15 K44 ["List"]
      470 CALL                             R12 3 1
      471 SETTABLEKS                       R12 R11 K31 ["Content"]
      473 GETUPVAL                         R12 0
      474 GETTABLEKS                       R12 R12 K1 ["createElement"]
      476 GETUPVAL                         R13 4
      477 GETTABLEKS                       R13 R13 K32 ["Actions"]
      479 LOADNIL                          R14
      480 DUPTABLE                         R15 K114 [{"Interested", "Share"}]
      481 GETUPVAL                         R16 0
      482 GETTABLEKS                       R16 R16 K1 ["createElement"]
      484 GETUPVAL                         R17 3
      485 DUPTABLE                         R18 K117 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      486 LOADN                            R19 1
      487 SETTABLEKS                       R19 R18 K46 ["LayoutOrder"]
      489 LOADK                            R19 K112 ["Interested"]
      490 SETTABLEKS                       R19 R18 K17 ["text"]
      492 GETUPVAL                         R19 10
      493 GETTABLEKS                       R19 R19 K118 ["Medium"]
      495 SETTABLEKS                       R19 R18 K24 ["size"]
      497 GETUPVAL                         R19 11
      498 GETTABLEKS                       R19 R19 K119 ["Emphasis"]
      500 SETTABLEKS                       R19 R18 K115 ["variant"]
      502 GETUPVAL                         R19 12
      503 GETTABLEKS                       R19 R19 K120 ["Fill"]
      505 SETTABLEKS                       R19 R18 K116 ["fillBehavior"]
      507 NEWCLOSURE                       R19 P2
      508 CAPTURE                          VAL R2
      509 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      511 CALL                             R16 2 1
      512 SETTABLEKS                       R16 R15 K112 ["Interested"]
      514 GETUPVAL                         R16 0
      515 GETTABLEKS                       R16 R16 K1 ["createElement"]
      517 GETUPVAL                         R17 13
      518 DUPTABLE                         R18 K122 [{"LayoutOrder", "icon", "variant", "size", "onActivated"}]
      519 LOADN                            R19 2
      520 SETTABLEKS                       R19 R18 K46 ["LayoutOrder"]
      522 GETUPVAL                         R19 8
      523 GETTABLEKS                       R19 R19 K123 ["ArrowThickToRight"]
      525 SETTABLEKS                       R19 R18 K121 ["icon"]
      527 GETUPVAL                         R19 11
      528 GETTABLEKS                       R19 R19 K124 ["Standard"]
      530 SETTABLEKS                       R19 R18 K115 ["variant"]
      532 GETUPVAL                         R19 10
      533 GETTABLEKS                       R19 R19 K118 ["Medium"]
      535 SETTABLEKS                       R19 R18 K24 ["size"]
      537 DUPCLOSURE                       R19 K125 [PROTO_38]
      538 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      540 CALL                             R16 2 1
      541 SETTABLEKS                       R16 R15 K113 ["Share"]
      543 CALL                             R12 3 1
      544 SETTABLEKS                       R12 R11 K32 ["Actions"]
      546 CALL                             R8 3 1
      547 SETTABLEKS                       R8 R7 K14 ["Sheet"]
      549 CALL                             R4 3 -1
      550 RETURN                           R4 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["Fragment"]
       16 LOADNIL                          R7
       17 DUPTABLE                         R8 K5 [{"Button", "Sheet"}]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K1 ["createElement"]
       21 GETUPVAL                         R10 1
       22 DUPTABLE                         R11 K8 [{"onActivated", "text"}]
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R12 R11 K6 ["onActivated"]
       27 LOADK                            R12 K9 ["Open Sheet With TextInput"]
       28 SETTABLEKS                       R12 R11 K7 ["text"]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K3 ["Button"]
       33 JUMPIFNOT                        R1 ; [+144]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K1 ["createElement"]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K10 ["Root"]
       40 DUPTABLE                         R11 K14 [{"onClose", "preferCenterSheet", "size"}]
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R12 R11 K11 ["onClose"]
       45 GETTABLEKS                       R12 R0 K15 ["controls"]
       47 GETTABLEKS                       R12 R12 K12 ["preferCenterSheet"]
       49 SETTABLEKS                       R12 R11 K12 ["preferCenterSheet"]
       51 GETTABLEKS                       R12 R0 K15 ["controls"]
       53 GETTABLEKS                       R12 R12 K13 ["size"]
       55 SETTABLEKS                       R12 R11 K13 ["size"]
       57 DUPTABLE                         R12 K19 [{"Header", "Content", "Actions"}]
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R13 R13 K1 ["createElement"]
       61 GETUPVAL                         R14 2
       62 GETTABLEKS                       R14 R14 K16 ["Header"]
       64 LOADNIL                          R15
       65 DUPTABLE                         R16 K21 [{"Title"}]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K1 ["createElement"]
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
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R13 R13 K1 ["createElement"]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R14 R14 K17 ["Content"]
       92 DUPTABLE                         R15 K29 [{"isContentFullBleed"}]
       93 GETTABLEKS                       R16 R0 K15 ["controls"]
       95 GETTABLEKS                       R16 R16 K28 ["isContentFullBleed"]
       97 SETTABLEKS                       R16 R15 K28 ["isContentFullBleed"]
       99 DUPTABLE                         R16 K31 [{"TextInput"}]
      100 GETUPVAL                         R17 0
      101 GETTABLEKS                       R17 R17 K1 ["createElement"]
      103 GETUPVAL                         R18 4
      104 DUPTABLE                         R19 K35 [{"LayoutOrder", "label", "width", "onChanged", "text"}]
      105 LOADN                            R20 1
      106 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      108 LOADK                            R20 K36 ["Test"]
      109 SETTABLEKS                       R20 R19 K32 ["label"]
      111 GETIMPORT                        R20 K39 [UDim.new]
      113 LOADN                            R21 1
      114 LOADN                            R22 0
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K33 ["width"]
      118 DUPCLOSURE                       R20 K40 [PROTO_42]
      119 SETTABLEKS                       R20 R19 K34 ["onChanged"]
      121 LOADK                            R20 K41 ["asdf"]
      122 SETTABLEKS                       R20 R19 K7 ["text"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K30 ["TextInput"]
      127 CALL                             R13 3 1
      128 SETTABLEKS                       R13 R12 K17 ["Content"]
      130 GETUPVAL                         R13 0
      131 GETTABLEKS                       R13 R13 K1 ["createElement"]
      133 GETUPVAL                         R14 2
      134 GETTABLEKS                       R14 R14 K18 ["Actions"]
      136 LOADNIL                          R15
      137 DUPTABLE                         R16 K43 [{"Submit"}]
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R17 R17 K1 ["createElement"]
      141 GETUPVAL                         R18 1
      142 DUPTABLE                         R19 K47 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "isLoading", "onActivated"}]
      143 LOADN                            R20 1
      144 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      146 LOADK                            R20 K42 ["Submit"]
      147 SETTABLEKS                       R20 R19 K7 ["text"]
      149 GETUPVAL                         R20 5
      150 GETTABLEKS                       R20 R20 K48 ["Large"]
      152 SETTABLEKS                       R20 R19 K13 ["size"]
      154 GETUPVAL                         R20 6
      155 GETTABLEKS                       R20 R20 K49 ["Emphasis"]
      157 SETTABLEKS                       R20 R19 K44 ["variant"]
      159 GETUPVAL                         R20 7
      160 GETTABLEKS                       R20 R20 K50 ["Fill"]
      162 SETTABLEKS                       R20 R19 K45 ["fillBehavior"]
      164 SETTABLEKS                       R3 R19 K46 ["isLoading"]
      166 NEWCLOSURE                       R20 P3
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R20 R19 K6 ["onActivated"]
      170 CALL                             R17 2 1
      171 SETTABLEKS                       R17 R16 K42 ["Submit"]
      173 CALL                             R13 3 1
      174 SETTABLEKS                       R13 R12 K18 ["Actions"]
      176 CALL                             R9 3 1
      177 JUMPIF                           R9 ; [+1]
      178 LOADNIL                          R9
      179 SETTABLEKS                       R9 R8 K4 ["Sheet"]
      181 CALL                             R5 3 -1
      182 RETURN                           R5 -1

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
       32 GETTABLEKS                       R6 R6 K11 ["Checkbox"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Dash"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Icon"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["IconButton"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K8 ["Components"]
       58 GETTABLEKS                       R10 R10 K15 ["Image"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R11 K16 ["List"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Components"]
       72 GETTABLEKS                       R12 R12 K17 ["Sheet"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Components"]
       79 GETTABLEKS                       R13 R13 K18 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K8 ["Components"]
       86 GETTABLEKS                       R14 R14 K19 ["TextInput"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K8 ["Components"]
       93 GETTABLEKS                       R15 R15 K20 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R1 K21 ["BuilderIcons"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R15 R15 K13 ["Icon"]
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K22 ["Enums"]
      107 GETTABLEKS                       R17 R17 K23 ["ButtonVariant"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K22 ["Enums"]
      114 GETTABLEKS                       R18 R18 K24 ["DialogSize"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K22 ["Enums"]
      121 GETTABLEKS                       R19 R19 K25 ["FillBehavior"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R20 R0 K22 ["Enums"]
      128 GETTABLEKS                       R20 R20 K26 ["IconSize"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R21 R0 K22 ["Enums"]
      135 GETTABLEKS                       R21 R21 K27 ["InputSize"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K6 [require]
      140 GETTABLEKS                       R22 R0 K28 ["Utility"]
      142 GETTABLEKS                       R22 R22 K29 ["useScaledValue"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K6 [require]
      147 GETTABLEKS                       R23 R0 K8 ["Components"]
      149 GETTABLEKS                       R23 R23 K17 ["Sheet"]
      151 GETTABLEKS                       R23 R23 K30 ["useSheetNavigation"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K6 [require]
      156 GETTABLEKS                       R24 R0 K31 ["Providers"]
      158 GETTABLEKS                       R24 R24 K32 ["Style"]
      160 GETTABLEKS                       R24 R24 K33 ["useTokens"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K6 [require]
      165 GETTABLEKS                       R25 R0 K28 ["Utility"]
      167 GETTABLEKS                       R25 R25 K34 ["Flags"]
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
      317 DUPTABLE                         R36 K65 [{"centerSheetHeight", "preferCenterSheet", "size", "stickyFullBleed", "isContentFullBleed"}]
      318 LOADN                            R37 1
      319 SETTABLEKS                       R37 R36 K60 ["centerSheetHeight"]
      321 LOADB                            R37 0
      322 SETTABLEKS                       R37 R36 K61 ["preferCenterSheet"]
      324 NEWTABLE                         R37 0 2
      326 GETTABLEKS                       R38 R17 K66 ["Medium"]
      328 GETTABLEKS                       R39 R17 K67 ["Large"]
      330 SETLIST                          R37 R38 2 [1]
      332 SETTABLEKS                       R37 R36 K62 ["size"]
      334 LOADB                            R37 0
      335 SETTABLEKS                       R37 R36 K63 ["stickyFullBleed"]
      337 LOADB                            R37 0
      338 SETTABLEKS                       R37 R36 K64 ["isContentFullBleed"]
      340 SETTABLEKS                       R36 R35 K47 ["controls"]
      342 RETURN                           R35 1
