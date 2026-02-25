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
       22 LOADK                            R10 K9 ["Open Sheet"]
       23 SETTABLEKS                       R10 R9 K7 ["text"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K3 ["Button"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K1 ["createElement"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K10 ["Root"]
       34 DUPTABLE                         R9 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       35 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       37 NEWTABLE                         R10 0 2
       39 LOADK                            R11 K17 [0.5]
       40 LOADK                            R12 K18 [0.9]
       41 SETLIST                          R10 R11 2 [1]
       43 SETTABLEKS                       R10 R9 K12 ["snapPoints"]
       45 GETTABLEKS                       R11 R0 K19 ["controls"]
       47 GETTABLEKS                       R10 R11 K13 ["preferCenterSheet"]
       49 SETTABLEKS                       R10 R9 K13 ["preferCenterSheet"]
       51 GETTABLEKS                       R11 R0 K19 ["controls"]
       53 GETTABLEKS                       R10 R11 K14 ["size"]
       55 SETTABLEKS                       R10 R9 K14 ["size"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R10 R9 K15 ["onClose"]
       61 DUPTABLE                         R10 K23 [{"Header", "Content", "Actions"}]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R11 R12 K1 ["createElement"]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K20 ["Header"]
       68 LOADNIL                          R13
       69 DUPTABLE                         R14 K27 [{"GameIcon", "Text", "Notification"}]
       70 GETUPVAL                         R16 0
       71 GETTABLEKS                       R15 R16 K1 ["createElement"]
       73 GETUPVAL                         R16 3
       74 DUPTABLE                         R17 K30 [{"LayoutOrder", "tag"}]
       75 LOADN                            R18 1
       76 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
       78 LOADK                            R18 K31 ["size-1200 radius-small bg-shift-200"]
       79 SETTABLEKS                       R18 R17 K29 ["tag"]
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K24 ["GameIcon"]
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R15 R16 K1 ["createElement"]
       87 GETUPVAL                         R16 4
       88 DUPTABLE                         R17 K30 [{"LayoutOrder", "tag"}]
       89 LOADN                            R18 2
       90 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
       92 LOADK                            R18 K32 ["col gap-xsmall fill auto-xy"]
       93 SETTABLEKS                       R18 R17 K29 ["tag"]
       95 DUPTABLE                         R18 K35 [{"Title", "Subtitle"}]
       96 GETUPVAL                         R20 0
       97 GETTABLEKS                       R19 R20 K1 ["createElement"]
       99 GETUPVAL                         R20 5
      100 DUPTABLE                         R21 K36 [{"LayoutOrder", "Text", "tag"}]
      101 LOADN                            R22 1
      102 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      104 LOADK                            R22 K37 ["Sheet Title"]
      105 SETTABLEKS                       R22 R21 K25 ["Text"]
      107 LOADK                            R22 K38 ["text-title-large content-emphasis auto-xy text-truncate-split"]
      108 SETTABLEKS                       R22 R21 K29 ["tag"]
      110 CALL                             R19 2 1
      111 SETTABLEKS                       R19 R18 K33 ["Title"]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R19 R20 K1 ["createElement"]
      116 GETUPVAL                         R20 5
      117 DUPTABLE                         R21 K36 [{"LayoutOrder", "Text", "tag"}]
      118 LOADN                            R22 2
      119 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      121 LOADK                            R22 K39 ["Subtitle or description goes here"]
      122 SETTABLEKS                       R22 R21 K25 ["Text"]
      124 LOADK                            R22 K40 ["text-body-small content-default auto-xy text-truncate-split"]
      125 SETTABLEKS                       R22 R21 K29 ["tag"]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K34 ["Subtitle"]
      130 CALL                             R15 3 1
      131 SETTABLEKS                       R15 R14 K25 ["Text"]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R15 R16 K1 ["createElement"]
      136 GETUPVAL                         R16 6
      137 DUPTABLE                         R17 K43 [{"LayoutOrder", "Size", "icon", "onActivated"}]
      138 LOADN                            R18 3
      139 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      141 GETUPVAL                         R19 7
      142 GETTABLEKS                       R18 R19 K44 ["Large"]
      144 SETTABLEKS                       R18 R17 K41 ["Size"]
      146 GETUPVAL                         R19 8
      147 GETTABLEKS                       R18 R19 K45 ["Bell"]
      149 SETTABLEKS                       R18 R17 K42 ["icon"]
      151 DUPCLOSURE                       R18 K46 [PROTO_2]
      152 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K26 ["Notification"]
      157 CALL                             R11 3 1
      158 SETTABLEKS                       R11 R10 K20 ["Header"]
      160 GETUPVAL                         R12 0
      161 GETTABLEKS                       R11 R12 K1 ["createElement"]
      163 GETUPVAL                         R13 2
      164 GETTABLEKS                       R12 R13 K21 ["Content"]
      166 LOADNIL                          R13
      167 DUPTABLE                         R14 K59 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      168 GETUPVAL                         R16 0
      169 GETTABLEKS                       R15 R16 K1 ["createElement"]
      171 GETUPVAL                         R16 4
      172 DUPTABLE                         R17 K30 [{"LayoutOrder", "tag"}]
      173 LOADN                            R18 2
      174 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      176 LOADK                            R18 K60 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
      177 SETTABLEKS                       R18 R17 K29 ["tag"]
      179 CALL                             R15 2 1
      180 SETTABLEKS                       R15 R14 K47 ["Carousel"]
      182 GETUPVAL                         R16 0
      183 GETTABLEKS                       R15 R16 K1 ["createElement"]
      185 GETUPVAL                         R16 4
      186 DUPTABLE                         R17 K61 [{"tag", "LayoutOrder"}]
      187 LOADK                            R18 K62 ["row gap-medium auto-y size-full-0 items-center flex-fill"]
      188 SETTABLEKS                       R18 R17 K29 ["tag"]
      190 LOADN                            R18 3
      191 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      193 DUPTABLE                         R18 K66 [{"Rating", "Active", "Age", "Maturity"}]
      194 GETUPVAL                         R20 0
      195 GETTABLEKS                       R19 R20 K1 ["createElement"]
      197 GETUPVAL                         R20 4
      198 DUPTABLE                         R21 K30 [{"LayoutOrder", "tag"}]
      199 LOADN                            R22 1
      200 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      202 LOADK                            R22 K67 ["col gap-small align-x-center auto-xy"]
      203 SETTABLEKS                       R22 R21 K29 ["tag"]
      205 DUPTABLE                         R22 K70 [{"Label", "Value"}]
      206 GETUPVAL                         R24 0
      207 GETTABLEKS                       R23 R24 K1 ["createElement"]
      209 GETUPVAL                         R24 5
      210 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      211 LOADN                            R26 1
      212 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      214 LOADK                            R26 K49 ["Rating"]
      215 SETTABLEKS                       R26 R25 K25 ["Text"]
      217 LOADK                            R26 K71 ["text-body-small content-default auto-xy"]
      218 SETTABLEKS                       R26 R25 K29 ["tag"]
      220 CALL                             R23 2 1
      221 SETTABLEKS                       R23 R22 K68 ["Label"]
      223 GETUPVAL                         R24 0
      224 GETTABLEKS                       R23 R24 K1 ["createElement"]
      226 GETUPVAL                         R24 5
      227 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      228 LOADN                            R26 2
      229 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      231 LOADK                            R26 K72 ["94%"]
      232 SETTABLEKS                       R26 R25 K25 ["Text"]
      234 LOADK                            R26 K73 ["text-title-medium content-emphasis auto-xy"]
      235 SETTABLEKS                       R26 R25 K29 ["tag"]
      237 CALL                             R23 2 1
      238 SETTABLEKS                       R23 R22 K69 ["Value"]
      240 CALL                             R19 3 1
      241 SETTABLEKS                       R19 R18 K49 ["Rating"]
      243 GETUPVAL                         R20 0
      244 GETTABLEKS                       R19 R20 K1 ["createElement"]
      246 GETUPVAL                         R20 4
      247 DUPTABLE                         R21 K30 [{"LayoutOrder", "tag"}]
      248 LOADN                            R22 3
      249 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      251 LOADK                            R22 K67 ["col gap-small align-x-center auto-xy"]
      252 SETTABLEKS                       R22 R21 K29 ["tag"]
      254 DUPTABLE                         R22 K70 [{"Label", "Value"}]
      255 GETUPVAL                         R24 0
      256 GETTABLEKS                       R23 R24 K1 ["createElement"]
      258 GETUPVAL                         R24 5
      259 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      260 LOADN                            R26 1
      261 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      263 LOADK                            R26 K63 ["Active"]
      264 SETTABLEKS                       R26 R25 K25 ["Text"]
      266 LOADK                            R26 K71 ["text-body-small content-default auto-xy"]
      267 SETTABLEKS                       R26 R25 K29 ["tag"]
      269 CALL                             R23 2 1
      270 SETTABLEKS                       R23 R22 K68 ["Label"]
      272 GETUPVAL                         R24 0
      273 GETTABLEKS                       R23 R24 K1 ["createElement"]
      275 GETUPVAL                         R24 5
      276 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      277 LOADN                            R26 2
      278 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      280 LOADK                            R26 K74 ["1.2K"]
      281 SETTABLEKS                       R26 R25 K25 ["Text"]
      283 LOADK                            R26 K73 ["text-title-medium content-emphasis auto-xy"]
      284 SETTABLEKS                       R26 R25 K29 ["tag"]
      286 CALL                             R23 2 1
      287 SETTABLEKS                       R23 R22 K69 ["Value"]
      289 CALL                             R19 3 1
      290 SETTABLEKS                       R19 R18 K63 ["Active"]
      292 GETUPVAL                         R20 0
      293 GETTABLEKS                       R19 R20 K1 ["createElement"]
      295 GETUPVAL                         R20 4
      296 DUPTABLE                         R21 K30 [{"LayoutOrder", "tag"}]
      297 LOADN                            R22 5
      298 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      300 LOADK                            R22 K67 ["col gap-small align-x-center auto-xy"]
      301 SETTABLEKS                       R22 R21 K29 ["tag"]
      303 DUPTABLE                         R22 K70 [{"Label", "Value"}]
      304 GETUPVAL                         R24 0
      305 GETTABLEKS                       R23 R24 K1 ["createElement"]
      307 GETUPVAL                         R24 5
      308 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      309 LOADN                            R26 1
      310 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      312 LOADK                            R26 K64 ["Age"]
      313 SETTABLEKS                       R26 R25 K25 ["Text"]
      315 LOADK                            R26 K71 ["text-body-small content-default auto-xy"]
      316 SETTABLEKS                       R26 R25 K29 ["tag"]
      318 CALL                             R23 2 1
      319 SETTABLEKS                       R23 R22 K68 ["Label"]
      321 GETUPVAL                         R24 0
      322 GETTABLEKS                       R23 R24 K1 ["createElement"]
      324 GETUPVAL                         R24 5
      325 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      326 LOADN                            R26 2
      327 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      329 LOADK                            R26 K75 ["13+"]
      330 SETTABLEKS                       R26 R25 K25 ["Text"]
      332 LOADK                            R26 K73 ["text-title-medium content-emphasis auto-xy"]
      333 SETTABLEKS                       R26 R25 K29 ["tag"]
      335 CALL                             R23 2 1
      336 SETTABLEKS                       R23 R22 K69 ["Value"]
      338 CALL                             R19 3 1
      339 SETTABLEKS                       R19 R18 K64 ["Age"]
      341 GETUPVAL                         R20 0
      342 GETTABLEKS                       R19 R20 K1 ["createElement"]
      344 GETUPVAL                         R20 4
      345 DUPTABLE                         R21 K30 [{"LayoutOrder", "tag"}]
      346 LOADN                            R22 7
      347 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      349 LOADK                            R22 K67 ["col gap-small align-x-center auto-xy"]
      350 SETTABLEKS                       R22 R21 K29 ["tag"]
      352 DUPTABLE                         R22 K70 [{"Label", "Value"}]
      353 GETUPVAL                         R24 0
      354 GETTABLEKS                       R23 R24 K1 ["createElement"]
      356 GETUPVAL                         R24 5
      357 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      358 LOADN                            R26 1
      359 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      361 LOADK                            R26 K65 ["Maturity"]
      362 SETTABLEKS                       R26 R25 K25 ["Text"]
      364 LOADK                            R26 K71 ["text-body-small content-default auto-xy"]
      365 SETTABLEKS                       R26 R25 K29 ["tag"]
      367 CALL                             R23 2 1
      368 SETTABLEKS                       R23 R22 K68 ["Label"]
      370 GETUPVAL                         R24 0
      371 GETTABLEKS                       R23 R24 K1 ["createElement"]
      373 GETUPVAL                         R24 5
      374 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      375 LOADN                            R26 2
      376 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      378 LOADK                            R26 K76 ["Everyone"]
      379 SETTABLEKS                       R26 R25 K25 ["Text"]
      381 LOADK                            R26 K73 ["text-title-medium content-emphasis auto-xy"]
      382 SETTABLEKS                       R26 R25 K29 ["tag"]
      384 CALL                             R23 2 1
      385 SETTABLEKS                       R23 R22 K69 ["Value"]
      387 CALL                             R19 3 1
      388 SETTABLEKS                       R19 R18 K65 ["Maturity"]
      390 CALL                             R15 3 1
      391 SETTABLEKS                       R15 R14 K48 ["Attributes"]
      393 GETUPVAL                         R16 0
      394 GETTABLEKS                       R15 R16 K1 ["createElement"]
      396 GETUPVAL                         R16 4
      397 DUPTABLE                         R17 K30 [{"LayoutOrder", "tag"}]
      398 LOADN                            R18 4
      399 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      401 LOADK                            R18 K77 ["row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"]
      402 SETTABLEKS                       R18 R17 K29 ["tag"]
      404 DUPTABLE                         R18 K81 [{"Icon", "Rating", "Up", "Down"}]
      405 GETUPVAL                         R20 0
      406 GETTABLEKS                       R19 R20 K1 ["createElement"]
      408 GETUPVAL                         R20 9
      409 DUPTABLE                         R21 K83 [{"LayoutOrder", "name", "size"}]
      410 LOADN                            R22 1
      411 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      413 GETUPVAL                         R23 8
      414 GETTABLEKS                       R22 R23 K84 ["ThumbUp"]
      416 SETTABLEKS                       R22 R21 K82 ["name"]
      418 GETUPVAL                         R23 10
      419 GETTABLEKS                       R22 R23 K44 ["Large"]
      421 SETTABLEKS                       R22 R21 K14 ["size"]
      423 CALL                             R19 2 1
      424 SETTABLEKS                       R19 R18 K78 ["Icon"]
      426 GETUPVAL                         R20 0
      427 GETTABLEKS                       R19 R20 K1 ["createElement"]
      429 GETUPVAL                         R20 4
      430 DUPTABLE                         R21 K30 [{"LayoutOrder", "tag"}]
      431 LOADN                            R22 2
      432 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      434 LOADK                            R22 K85 ["col grow auto-xy"]
      435 SETTABLEKS                       R22 R21 K29 ["tag"]
      437 DUPTABLE                         R22 K86 [{"Value", "Label"}]
      438 GETUPVAL                         R24 0
      439 GETTABLEKS                       R23 R24 K1 ["createElement"]
      441 GETUPVAL                         R24 5
      442 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      443 LOADN                            R26 1
      444 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      446 LOADK                            R26 K72 ["94%"]
      447 SETTABLEKS                       R26 R25 K25 ["Text"]
      449 LOADK                            R26 K87 ["text-body-medium content-emphasis auto-xy"]
      450 SETTABLEKS                       R26 R25 K29 ["tag"]
      452 CALL                             R23 2 1
      453 SETTABLEKS                       R23 R22 K69 ["Value"]
      455 GETUPVAL                         R24 0
      456 GETTABLEKS                       R23 R24 K1 ["createElement"]
      458 GETUPVAL                         R24 5
      459 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      460 LOADN                            R26 2
      461 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      463 LOADK                            R26 K88 ["100 VOTES"]
      464 SETTABLEKS                       R26 R25 K25 ["Text"]
      466 LOADK                            R26 K71 ["text-body-small content-default auto-xy"]
      467 SETTABLEKS                       R26 R25 K29 ["tag"]
      469 CALL                             R23 2 1
      470 SETTABLEKS                       R23 R22 K68 ["Label"]
      472 CALL                             R19 3 1
      473 SETTABLEKS                       R19 R18 K49 ["Rating"]
      475 GETUPVAL                         R20 0
      476 GETTABLEKS                       R19 R20 K1 ["createElement"]
      478 GETUPVAL                         R20 6
      479 DUPTABLE                         R21 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
      480 LOADN                            R22 3
      481 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      483 GETUPVAL                         R23 8
      484 GETTABLEKS                       R22 R23 K84 ["ThumbUp"]
      486 SETTABLEKS                       R22 R21 K42 ["icon"]
      488 GETUPVAL                         R23 7
      489 GETTABLEKS                       R22 R23 K44 ["Large"]
      491 SETTABLEKS                       R22 R21 K14 ["size"]
      493 DUPCLOSURE                       R22 K90 [PROTO_3]
      494 SETTABLEKS                       R22 R21 K6 ["onActivated"]
      496 CALL                             R19 2 1
      497 SETTABLEKS                       R19 R18 K79 ["Up"]
      499 GETUPVAL                         R20 0
      500 GETTABLEKS                       R19 R20 K1 ["createElement"]
      502 GETUPVAL                         R20 6
      503 DUPTABLE                         R21 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
      504 LOADN                            R22 4
      505 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      507 GETUPVAL                         R23 8
      508 GETTABLEKS                       R22 R23 K91 ["ThumbDown"]
      510 SETTABLEKS                       R22 R21 K42 ["icon"]
      512 GETUPVAL                         R23 7
      513 GETTABLEKS                       R22 R23 K44 ["Large"]
      515 SETTABLEKS                       R22 R21 K14 ["size"]
      517 DUPCLOSURE                       R22 K92 [PROTO_4]
      518 SETTABLEKS                       R22 R21 K6 ["onActivated"]
      520 CALL                             R19 2 1
      521 SETTABLEKS                       R19 R18 K80 ["Down"]
      523 CALL                             R15 3 1
      524 SETTABLEKS                       R15 R14 K49 ["Rating"]
      526 GETUPVAL                         R16 0
      527 GETTABLEKS                       R15 R16 K1 ["createElement"]
      529 GETUPVAL                         R16 5
      530 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      531 LOADN                            R18 5
      532 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      534 LOADK                            R18 K93 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
      535 SETTABLEKS                       R18 R17 K25 ["Text"]
      537 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      538 SETTABLEKS                       R18 R17 K29 ["tag"]
      540 CALL                             R15 2 1
      541 SETTABLEKS                       R15 R14 K50 ["Description"]
      543 GETUPVAL                         R16 0
      544 GETTABLEKS                       R15 R16 K1 ["createElement"]
      546 GETUPVAL                         R16 5
      547 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      548 LOADN                            R18 6
      549 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      551 LOADK                            R18 K95 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      552 SETTABLEKS                       R18 R17 K25 ["Text"]
      554 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      555 SETTABLEKS                       R18 R17 K29 ["tag"]
      557 CALL                             R15 2 1
      558 SETTABLEKS                       R15 R14 K51 ["Description2"]
      560 GETUPVAL                         R16 0
      561 GETTABLEKS                       R15 R16 K1 ["createElement"]
      563 GETUPVAL                         R16 5
      564 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      565 LOADN                            R18 7
      566 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      568 LOADK                            R18 K96 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      569 SETTABLEKS                       R18 R17 K25 ["Text"]
      571 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      572 SETTABLEKS                       R18 R17 K29 ["tag"]
      574 CALL                             R15 2 1
      575 SETTABLEKS                       R15 R14 K52 ["Description3"]
      577 GETUPVAL                         R16 0
      578 GETTABLEKS                       R15 R16 K1 ["createElement"]
      580 GETUPVAL                         R16 5
      581 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      582 LOADN                            R18 8
      583 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      585 LOADK                            R18 K97 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
      586 SETTABLEKS                       R18 R17 K25 ["Text"]
      588 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      589 SETTABLEKS                       R18 R17 K29 ["tag"]
      591 CALL                             R15 2 1
      592 SETTABLEKS                       R15 R14 K53 ["Description4"]
      594 GETUPVAL                         R16 0
      595 GETTABLEKS                       R15 R16 K1 ["createElement"]
      597 GETUPVAL                         R16 5
      598 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      599 LOADN                            R18 9
      600 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      602 LOADK                            R18 K98 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
      603 SETTABLEKS                       R18 R17 K25 ["Text"]
      605 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      606 SETTABLEKS                       R18 R17 K29 ["tag"]
      608 CALL                             R15 2 1
      609 SETTABLEKS                       R15 R14 K54 ["Description5"]
      611 GETUPVAL                         R16 0
      612 GETTABLEKS                       R15 R16 K1 ["createElement"]
      614 GETUPVAL                         R16 5
      615 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      616 LOADN                            R18 10
      617 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      619 LOADK                            R18 K99 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
      620 SETTABLEKS                       R18 R17 K25 ["Text"]
      622 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      623 SETTABLEKS                       R18 R17 K29 ["tag"]
      625 CALL                             R15 2 1
      626 SETTABLEKS                       R15 R14 K55 ["Description6"]
      628 GETUPVAL                         R16 0
      629 GETTABLEKS                       R15 R16 K1 ["createElement"]
      631 GETUPVAL                         R16 5
      632 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      633 LOADN                            R18 11
      634 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      636 LOADK                            R18 K100 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
      637 SETTABLEKS                       R18 R17 K25 ["Text"]
      639 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      640 SETTABLEKS                       R18 R17 K29 ["tag"]
      642 CALL                             R15 2 1
      643 SETTABLEKS                       R15 R14 K56 ["Description7"]
      645 GETUPVAL                         R16 0
      646 GETTABLEKS                       R15 R16 K1 ["createElement"]
      648 GETUPVAL                         R16 5
      649 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      650 LOADN                            R18 12
      651 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      653 LOADK                            R18 K101 ["Feel free to reach out if you have any questions or need further assistance."]
      654 SETTABLEKS                       R18 R17 K25 ["Text"]
      656 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      657 SETTABLEKS                       R18 R17 K29 ["tag"]
      659 CALL                             R15 2 1
      660 SETTABLEKS                       R15 R14 K57 ["Description8"]
      662 GETUPVAL                         R16 0
      663 GETTABLEKS                       R15 R16 K1 ["createElement"]
      665 GETUPVAL                         R16 5
      666 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      667 LOADN                            R18 13
      668 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      670 LOADK                            R18 K102 ["Happy developing!"]
      671 SETTABLEKS                       R18 R17 K25 ["Text"]
      673 LOADK                            R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      674 SETTABLEKS                       R18 R17 K29 ["tag"]
      676 CALL                             R15 2 1
      677 SETTABLEKS                       R15 R14 K58 ["Description9"]
      679 CALL                             R11 3 1
      680 SETTABLEKS                       R11 R10 K21 ["Content"]
      682 GETUPVAL                         R12 0
      683 GETTABLEKS                       R11 R12 K1 ["createElement"]
      685 GETUPVAL                         R13 2
      686 GETTABLEKS                       R12 R13 K22 ["Actions"]
      688 LOADNIL                          R13
      689 DUPTABLE                         R14 K106 [{"More", "Invite", "Join"}]
      690 GETUPVAL                         R16 0
      691 GETTABLEKS                       R15 R16 K1 ["createElement"]
      693 GETUPVAL                         R16 6
      694 DUPTABLE                         R17 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
      695 LOADN                            R18 1
      696 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      698 GETUPVAL                         R19 8
      699 GETTABLEKS                       R18 R19 K107 ["CircleThreeDotsHorizontal"]
      701 SETTABLEKS                       R18 R17 K42 ["icon"]
      703 GETUPVAL                         R19 7
      704 GETTABLEKS                       R18 R19 K44 ["Large"]
      706 SETTABLEKS                       R18 R17 K14 ["size"]
      708 DUPCLOSURE                       R18 K108 [PROTO_5]
      709 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      711 CALL                             R15 2 1
      712 SETTABLEKS                       R15 R14 K103 ["More"]
      714 GETUPVAL                         R16 0
      715 GETTABLEKS                       R15 R16 K1 ["createElement"]
      717 GETUPVAL                         R16 6
      718 DUPTABLE                         R17 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
      719 LOADN                            R18 2
      720 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      722 GETUPVAL                         R19 8
      723 GETTABLEKS                       R18 R19 K109 ["PersonArrowFromBottomRight"]
      725 SETTABLEKS                       R18 R17 K42 ["icon"]
      727 GETUPVAL                         R19 7
      728 GETTABLEKS                       R18 R19 K44 ["Large"]
      730 SETTABLEKS                       R18 R17 K14 ["size"]
      732 DUPCLOSURE                       R18 K110 [PROTO_6]
      733 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      735 CALL                             R15 2 1
      736 SETTABLEKS                       R15 R14 K104 ["Invite"]
      738 GETUPVAL                         R16 0
      739 GETTABLEKS                       R15 R16 K1 ["createElement"]
      741 GETUPVAL                         R16 1
      742 DUPTABLE                         R17 K113 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
      743 LOADN                            R18 3
      744 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      746 LOADK                            R18 K105 ["Join"]
      747 SETTABLEKS                       R18 R17 K7 ["text"]
      749 GETUPVAL                         R19 8
      750 GETTABLEKS                       R18 R19 K114 ["PlayLarge"]
      752 SETTABLEKS                       R18 R17 K42 ["icon"]
      754 GETUPVAL                         R19 7
      755 GETTABLEKS                       R18 R19 K44 ["Large"]
      757 SETTABLEKS                       R18 R17 K14 ["size"]
      759 GETUPVAL                         R19 11
      760 GETTABLEKS                       R18 R19 K115 ["Emphasis"]
      762 SETTABLEKS                       R18 R17 K111 ["variant"]
      764 GETUPVAL                         R19 12
      765 GETTABLEKS                       R18 R19 K116 ["Fill"]
      767 SETTABLEKS                       R18 R17 K112 ["fillBehavior"]
      769 NEWCLOSURE                       R18 P7
      770 CAPTURE                          VAL R2
      771 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      773 CALL                             R15 2 1
      774 SETTABLEKS                       R15 R14 K105 ["Join"]
      776 CALL                             R11 3 1
      777 SETTABLEKS                       R11 R10 K22 ["Actions"]
      779 CALL                             R7 3 1
      780 SETTABLEKS                       R7 R6 K4 ["Sheet"]
      782 CALL                             R3 3 -1
      783 RETURN                           R3 -1

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
       36 JUMPIFNOT                        R1 ; [+107]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K2 ["createElement"]
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R9 R10 K11 ["Root"]
       43 DUPTABLE                         R10 K17 [{"snapPoints", "defaultSnapPointIndex", "preferCenterSheet", "size", "onClose"}]
       44 SETTABLEKS                       R3 R10 K12 ["snapPoints"]
       46 LOADN                            R11 2
       47 SETTABLEKS                       R11 R10 K13 ["defaultSnapPointIndex"]
       49 GETTABLEKS                       R12 R0 K18 ["controls"]
       51 GETTABLEKS                       R11 R12 K14 ["preferCenterSheet"]
       53 SETTABLEKS                       R11 R10 K14 ["preferCenterSheet"]
       55 GETTABLEKS                       R12 R0 K18 ["controls"]
       57 GETTABLEKS                       R11 R12 K15 ["size"]
       59 SETTABLEKS                       R11 R10 K15 ["size"]
       61 NEWCLOSURE                       R11 P1
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R11 R10 K16 ["onClose"]
       65 DUPTABLE                         R11 K20 [{"Content"}]
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K2 ["createElement"]
       69 GETUPVAL                         R14 3
       70 GETTABLEKS                       R13 R14 K19 ["Content"]
       72 LOADNIL                          R14
       73 DUPTABLE                         R15 K25 [{"Image", "Description", "Description2", "Description3"}]
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R16 R17 K2 ["createElement"]
       77 GETUPVAL                         R17 4
       78 DUPTABLE                         R18 K28 [{"LayoutOrder", "tag"}]
       79 LOADN                            R19 1
       80 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
       82 LOADK                            R19 K29 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
       83 SETTABLEKS                       R19 R18 K27 ["tag"]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K21 ["Image"]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R16 R17 K2 ["createElement"]
       91 GETUPVAL                         R17 5
       92 DUPTABLE                         R18 K31 [{"LayoutOrder", "Text", "tag"}]
       93 LOADN                            R19 2
       94 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
       96 LOADK                            R19 K32 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
       97 SETTABLEKS                       R19 R18 K30 ["Text"]
       99 LOADK                            R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      100 SETTABLEKS                       R19 R18 K27 ["tag"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K22 ["Description"]
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R16 R17 K2 ["createElement"]
      108 GETUPVAL                         R17 5
      109 DUPTABLE                         R18 K31 [{"LayoutOrder", "Text", "tag"}]
      110 LOADN                            R19 3
      111 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      113 LOADK                            R19 K34 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
      114 SETTABLEKS                       R19 R18 K30 ["Text"]
      116 LOADK                            R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      117 SETTABLEKS                       R19 R18 K27 ["tag"]
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K23 ["Description2"]
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R16 R17 K2 ["createElement"]
      125 GETUPVAL                         R17 5
      126 DUPTABLE                         R18 K31 [{"LayoutOrder", "Text", "tag"}]
      127 LOADN                            R19 4
      128 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      130 LOADK                            R19 K35 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
      131 SETTABLEKS                       R19 R18 K30 ["Text"]
      133 LOADK                            R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
      134 SETTABLEKS                       R19 R18 K27 ["tag"]
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K24 ["Description3"]
      139 CALL                             R12 3 1
      140 SETTABLEKS                       R12 R11 K19 ["Content"]
      142 CALL                             R8 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R8
      145 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      147 CALL                             R4 3 -1
      148 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Sheet"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Button"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["Text"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K13 ["Image"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K14 ["IconButton"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R11 K15 ["Icon"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R1 K16 ["BuilderIcons"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R10 R11 K15 ["Icon"]
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R13 K18 ["IconSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K17 ["Enums"]
       81 GETTABLEKS                       R13 R14 K19 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K17 ["Enums"]
       88 GETTABLEKS                       R14 R15 K20 ["ButtonVariant"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K17 ["Enums"]
       95 GETTABLEKS                       R15 R16 K21 ["FillBehavior"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R17 R0 K22 ["Utility"]
      102 GETTABLEKS                       R16 R17 K23 ["useScaledValue"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R18 R0 K17 ["Enums"]
      109 GETTABLEKS                       R17 R18 K24 ["DialogSize"]
      111 CALL                             R16 1 1
      112 DUPCLOSURE                       R17 K25 [PROTO_8]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R14
      126 DUPCLOSURE                       R18 K26 [PROTO_11]
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R6
      133 DUPTABLE                         R19 K30 [{"summary", "stories", "controls"}]
      134 LOADK                            R20 K9 ["Sheet"]
      135 SETTABLEKS                       R20 R19 K27 ["summary"]
      137 NEWTABLE                         R20 0 2
      139 DUPTABLE                         R21 K33 [{"name", "story"}]
      140 LOADK                            R22 K34 ["Sheet (auto)"]
      141 SETTABLEKS                       R22 R21 K31 ["name"]
      143 SETTABLEKS                       R17 R21 K32 ["story"]
      145 DUPTABLE                         R22 K33 [{"name", "story"}]
      146 LOADK                            R23 K35 ["Sheet (manual)"]
      147 SETTABLEKS                       R23 R22 K31 ["name"]
      149 SETTABLEKS                       R18 R22 K32 ["story"]
      151 SETLIST                          R20 R21 2 [1]
      153 SETTABLEKS                       R20 R19 K28 ["stories"]
      155 DUPTABLE                         R20 K38 [{"preferCenterSheet", "size"}]
      156 LOADB                            R21 0
      157 SETTABLEKS                       R21 R20 K36 ["preferCenterSheet"]
      159 NEWTABLE                         R21 0 2
      161 GETTABLEKS                       R22 R16 K39 ["Medium"]
      163 GETTABLEKS                       R23 R16 K40 ["Large"]
      165 SETLIST                          R21 R22 2 [1]
      167 SETTABLEKS                       R21 R20 K37 ["size"]
      169 SETTABLEKS                       R20 R19 K29 ["controls"]
      171 RETURN                           R19 1
