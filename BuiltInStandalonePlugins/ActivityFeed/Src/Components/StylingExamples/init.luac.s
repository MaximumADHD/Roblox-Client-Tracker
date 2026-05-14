PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["ScrollingFrame"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Tag"]
        9 GETUPVAL                         R4 1
       10 LOADK                            R5 K3 ["X-Column"]
       11 LOADK                            R6 K4 ["Component-TokenExamples"]
       12 CALL                             R4 2 1
       13 SETTABLE                         R4 R2 R3
       14 NEWTABLE                         R3 64 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 LOADK                            R5 K5 ["Frame"]
       20 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       21 GETUPVAL                         R7 2
       22 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       27 DUPTABLE                         R7 K10 [{"Text"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["createElement"]
       31 LOADK                            R9 K11 ["TextLabel"]
       32 DUPTABLE                         R10 K10 [{"Text"}]
       33 LOADK                            R11 K12 ["BackgroundDefault"]
       34 SETTABLEKS                       R11 R10 K9 ["Text"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K9 ["Text"]
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K12 ["BackgroundDefault"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["createElement"]
       45 LOADK                            R5 K5 ["Frame"]
       46 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       47 GETUPVAL                         R7 2
       48 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       53 DUPTABLE                         R7 K10 [{"Text"}]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K0 ["createElement"]
       57 LOADK                            R9 K11 ["TextLabel"]
       58 DUPTABLE                         R10 K10 [{"Text"}]
       59 LOADK                            R11 K13 ["BackgroundPaper"]
       60 SETTABLEKS                       R11 R10 K9 ["Text"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K9 ["Text"]
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K13 ["BackgroundPaper"]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K0 ["createElement"]
       71 LOADK                            R5 K5 ["Frame"]
       72 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       73 GETUPVAL                         R7 2
       74 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       76 CALL                             R7 1 1
       77 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       79 DUPTABLE                         R7 K10 [{"Text"}]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K0 ["createElement"]
       83 LOADK                            R9 K11 ["TextLabel"]
       84 DUPTABLE                         R10 K10 [{"Text"}]
       85 LOADK                            R11 K14 ["ForegroundMain"]
       86 SETTABLEKS                       R11 R10 K9 ["Text"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K9 ["Text"]
       91 CALL                             R4 3 1
       92 SETTABLEKS                       R4 R3 K14 ["ForegroundMain"]
       94 GETUPVAL                         R4 0
       95 GETTABLEKS                       R4 R4 K0 ["createElement"]
       97 LOADK                            R5 K5 ["Frame"]
       98 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       99 GETUPVAL                         R7 2
      100 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      102 CALL                             R7 1 1
      103 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      105 DUPTABLE                         R7 K10 [{"Text"}]
      106 GETUPVAL                         R8 0
      107 GETTABLEKS                       R8 R8 K0 ["createElement"]
      109 LOADK                            R9 K11 ["TextLabel"]
      110 DUPTABLE                         R10 K10 [{"Text"}]
      111 LOADK                            R11 K15 ["ForegroundMuted"]
      112 SETTABLEKS                       R11 R10 K9 ["Text"]
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R7 K9 ["Text"]
      117 CALL                             R4 3 1
      118 SETTABLEKS                       R4 R3 K15 ["ForegroundMuted"]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K0 ["createElement"]
      123 LOADK                            R5 K5 ["Frame"]
      124 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      125 GETUPVAL                         R7 2
      126 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      128 CALL                             R7 1 1
      129 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      131 DUPTABLE                         R7 K10 [{"Text"}]
      132 GETUPVAL                         R8 0
      133 GETTABLEKS                       R8 R8 K0 ["createElement"]
      135 LOADK                            R9 K11 ["TextLabel"]
      136 DUPTABLE                         R10 K10 [{"Text"}]
      137 LOADK                            R11 K16 ["ForegroundContrast"]
      138 SETTABLEKS                       R11 R10 K9 ["Text"]
      140 CALL                             R8 2 1
      141 SETTABLEKS                       R8 R7 K9 ["Text"]
      143 CALL                             R4 3 1
      144 SETTABLEKS                       R4 R3 K16 ["ForegroundContrast"]
      146 GETUPVAL                         R4 0
      147 GETTABLEKS                       R4 R4 K0 ["createElement"]
      149 LOADK                            R5 K11 ["TextLabel"]
      150 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      151 GETUPVAL                         R7 2
      152 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      154 CALL                             R7 1 1
      155 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      157 LOADK                            R7 K18 ["TextPrimary"]
      158 SETTABLEKS                       R7 R6 K9 ["Text"]
      160 CALL                             R4 2 1
      161 SETTABLEKS                       R4 R3 K18 ["TextPrimary"]
      163 GETUPVAL                         R4 0
      164 GETTABLEKS                       R4 R4 K0 ["createElement"]
      166 LOADK                            R5 K11 ["TextLabel"]
      167 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      168 GETUPVAL                         R7 2
      169 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      171 CALL                             R7 1 1
      172 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      174 LOADK                            R7 K19 ["TextSecondary"]
      175 SETTABLEKS                       R7 R6 K9 ["Text"]
      177 CALL                             R4 2 1
      178 SETTABLEKS                       R4 R3 K19 ["TextSecondary"]
      180 GETUPVAL                         R4 0
      181 GETTABLEKS                       R4 R4 K0 ["createElement"]
      183 LOADK                            R5 K11 ["TextLabel"]
      184 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      185 GETUPVAL                         R7 2
      186 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      188 CALL                             R7 1 1
      189 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      191 LOADK                            R7 K20 ["TextContrast"]
      192 SETTABLEKS                       R7 R6 K9 ["Text"]
      194 CALL                             R4 2 1
      195 SETTABLEKS                       R4 R3 K20 ["TextContrast"]
      197 GETUPVAL                         R4 0
      198 GETTABLEKS                       R4 R4 K0 ["createElement"]
      200 LOADK                            R5 K11 ["TextLabel"]
      201 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      202 GETUPVAL                         R7 2
      203 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      205 CALL                             R7 1 1
      206 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      208 LOADK                            R7 K21 ["TextLink"]
      209 SETTABLEKS                       R7 R6 K9 ["Text"]
      211 CALL                             R4 2 1
      212 SETTABLEKS                       R4 R3 K21 ["TextLink"]
      214 GETUPVAL                         R4 0
      215 GETTABLEKS                       R4 R4 K0 ["createElement"]
      217 LOADK                            R5 K11 ["TextLabel"]
      218 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      219 GETUPVAL                         R7 2
      220 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      222 CALL                             R7 1 1
      223 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      225 LOADK                            R7 K22 ["TextDisabled"]
      226 SETTABLEKS                       R7 R6 K9 ["Text"]
      228 CALL                             R4 2 1
      229 SETTABLEKS                       R4 R3 K22 ["TextDisabled"]
      231 GETUPVAL                         R4 0
      232 GETTABLEKS                       R4 R4 K0 ["createElement"]
      234 LOADK                            R5 K11 ["TextLabel"]
      235 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      236 GETUPVAL                         R7 2
      237 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      239 CALL                             R7 1 1
      240 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      242 LOADK                            R7 K23 ["TextError"]
      243 SETTABLEKS                       R7 R6 K9 ["Text"]
      245 CALL                             R4 2 1
      246 SETTABLEKS                       R4 R3 K23 ["TextError"]
      248 GETUPVAL                         R4 0
      249 GETTABLEKS                       R4 R4 K0 ["createElement"]
      251 LOADK                            R5 K11 ["TextLabel"]
      252 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      253 GETUPVAL                         R7 2
      254 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      256 CALL                             R7 1 1
      257 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      259 LOADK                            R7 K24 ["TextSuccess"]
      260 SETTABLEKS                       R7 R6 K9 ["Text"]
      262 CALL                             R4 2 1
      263 SETTABLEKS                       R4 R3 K24 ["TextSuccess"]
      265 GETUPVAL                         R4 0
      266 GETTABLEKS                       R4 R4 K0 ["createElement"]
      268 LOADK                            R5 K11 ["TextLabel"]
      269 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      270 GETUPVAL                         R7 2
      271 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      273 CALL                             R7 1 1
      274 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      276 LOADK                            R7 K25 ["TextWarning"]
      277 SETTABLEKS                       R7 R6 K9 ["Text"]
      279 CALL                             R4 2 1
      280 SETTABLEKS                       R4 R3 K25 ["TextWarning"]
      282 GETUPVAL                         R4 0
      283 GETTABLEKS                       R4 R4 K0 ["createElement"]
      285 LOADK                            R5 K5 ["Frame"]
      286 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      287 GETUPVAL                         R7 2
      288 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      290 CALL                             R7 1 1
      291 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      293 DUPTABLE                         R7 K10 [{"Text"}]
      294 GETUPVAL                         R8 0
      295 GETTABLEKS                       R8 R8 K0 ["createElement"]
      297 LOADK                            R9 K11 ["TextLabel"]
      298 DUPTABLE                         R10 K10 [{"Text"}]
      299 LOADK                            R11 K26 ["ErrorMain"]
      300 SETTABLEKS                       R11 R10 K9 ["Text"]
      302 CALL                             R8 2 1
      303 SETTABLEKS                       R8 R7 K9 ["Text"]
      305 CALL                             R4 3 1
      306 SETTABLEKS                       R4 R3 K26 ["ErrorMain"]
      308 GETUPVAL                         R4 0
      309 GETTABLEKS                       R4 R4 K0 ["createElement"]
      311 LOADK                            R5 K5 ["Frame"]
      312 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      313 GETUPVAL                         R7 2
      314 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      316 CALL                             R7 1 1
      317 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      319 DUPTABLE                         R7 K10 [{"Text"}]
      320 GETUPVAL                         R8 0
      321 GETTABLEKS                       R8 R8 K0 ["createElement"]
      323 LOADK                            R9 K11 ["TextLabel"]
      324 DUPTABLE                         R10 K10 [{"Text"}]
      325 LOADK                            R11 K27 ["SuccessMain"]
      326 SETTABLEKS                       R11 R10 K9 ["Text"]
      328 CALL                             R8 2 1
      329 SETTABLEKS                       R8 R7 K9 ["Text"]
      331 CALL                             R4 3 1
      332 SETTABLEKS                       R4 R3 K27 ["SuccessMain"]
      334 GETUPVAL                         R4 0
      335 GETTABLEKS                       R4 R4 K0 ["createElement"]
      337 LOADK                            R5 K5 ["Frame"]
      338 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      339 GETUPVAL                         R7 2
      340 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      342 CALL                             R7 1 1
      343 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      345 DUPTABLE                         R7 K10 [{"Text"}]
      346 GETUPVAL                         R8 0
      347 GETTABLEKS                       R8 R8 K0 ["createElement"]
      349 LOADK                            R9 K11 ["TextLabel"]
      350 DUPTABLE                         R10 K10 [{"Text"}]
      351 LOADK                            R11 K28 ["WarningMain"]
      352 SETTABLEKS                       R11 R10 K9 ["Text"]
      354 CALL                             R8 2 1
      355 SETTABLEKS                       R8 R7 K9 ["Text"]
      357 CALL                             R4 3 1
      358 SETTABLEKS                       R4 R3 K28 ["WarningMain"]
      360 GETUPVAL                         R4 0
      361 GETTABLEKS                       R4 R4 K0 ["createElement"]
      363 LOADK                            R5 K29 ["TextButton"]
      364 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      365 GETUPVAL                         R7 2
      366 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      368 CALL                             R7 1 1
      369 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      371 LOADK                            R7 K30 ["ActionEnabled"]
      372 SETTABLEKS                       R7 R6 K9 ["Text"]
      374 CALL                             R4 2 1
      375 SETTABLEKS                       R4 R3 K30 ["ActionEnabled"]
      377 GETUPVAL                         R4 0
      378 GETTABLEKS                       R4 R4 K0 ["createElement"]
      380 LOADK                            R5 K29 ["TextButton"]
      381 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      382 GETUPVAL                         R7 2
      383 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      385 CALL                             R7 1 1
      386 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      388 LOADK                            R7 K31 ["ActionSelected"]
      389 SETTABLEKS                       R7 R6 K9 ["Text"]
      391 CALL                             R4 2 1
      392 SETTABLEKS                       R4 R3 K31 ["ActionSelected"]
      394 GETUPVAL                         R4 0
      395 GETTABLEKS                       R4 R4 K0 ["createElement"]
      397 LOADK                            R5 K29 ["TextButton"]
      398 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      399 GETUPVAL                         R7 2
      400 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      402 CALL                             R7 1 1
      403 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      405 LOADK                            R7 K32 ["ActionActivated"]
      406 SETTABLEKS                       R7 R6 K9 ["Text"]
      408 CALL                             R4 2 1
      409 SETTABLEKS                       R4 R3 K32 ["ActionActivated"]
      411 GETUPVAL                         R4 0
      412 GETTABLEKS                       R4 R4 K0 ["createElement"]
      414 LOADK                            R5 K29 ["TextButton"]
      415 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      416 GETUPVAL                         R7 2
      417 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      419 CALL                             R7 1 1
      420 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      422 LOADK                            R7 K33 ["ActionHover (hover over me)"]
      423 SETTABLEKS                       R7 R6 K9 ["Text"]
      425 CALL                             R4 2 1
      426 SETTABLEKS                       R4 R3 K34 ["ActionHover"]
      428 GETUPVAL                         R4 0
      429 GETTABLEKS                       R4 R4 K0 ["createElement"]
      431 LOADK                            R5 K29 ["TextButton"]
      432 DUPTABLE                         R6 K17 [{"LayoutOrder", "Text"}]
      433 GETUPVAL                         R7 2
      434 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      436 CALL                             R7 1 1
      437 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      439 LOADK                            R7 K35 ["ActionFocusBorder (border color)"]
      440 SETTABLEKS                       R7 R6 K9 ["Text"]
      442 CALL                             R4 2 1
      443 SETTABLEKS                       R4 R3 K36 ["ActionFocusBorder"]
      445 GETUPVAL                         R4 0
      446 GETTABLEKS                       R4 R4 K0 ["createElement"]
      448 LOADK                            R5 K5 ["Frame"]
      449 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      450 GETUPVAL                         R7 2
      451 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      453 CALL                             R7 1 1
      454 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      456 DUPTABLE                         R7 K10 [{"Text"}]
      457 GETUPVAL                         R8 0
      458 GETTABLEKS                       R8 R8 K0 ["createElement"]
      460 LOADK                            R9 K11 ["TextLabel"]
      461 DUPTABLE                         R10 K10 [{"Text"}]
      462 LOADK                            R11 K37 ["PrimaryMain"]
      463 SETTABLEKS                       R11 R10 K9 ["Text"]
      465 CALL                             R8 2 1
      466 SETTABLEKS                       R8 R7 K9 ["Text"]
      468 CALL                             R4 3 1
      469 SETTABLEKS                       R4 R3 K37 ["PrimaryMain"]
      471 GETUPVAL                         R4 0
      472 GETTABLEKS                       R4 R4 K0 ["createElement"]
      474 LOADK                            R5 K5 ["Frame"]
      475 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      476 GETUPVAL                         R7 2
      477 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      479 CALL                             R7 1 1
      480 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      482 DUPTABLE                         R7 K10 [{"Text"}]
      483 GETUPVAL                         R8 0
      484 GETTABLEKS                       R8 R8 K0 ["createElement"]
      486 LOADK                            R9 K11 ["TextLabel"]
      487 DUPTABLE                         R10 K10 [{"Text"}]
      488 LOADK                            R11 K38 ["PrimaryHoverBackground (hover over me)"]
      489 SETTABLEKS                       R11 R10 K9 ["Text"]
      491 CALL                             R8 2 1
      492 SETTABLEKS                       R8 R7 K9 ["Text"]
      494 CALL                             R4 3 1
      495 SETTABLEKS                       R4 R3 K39 ["PrimaryHoverBackground"]
      497 GETUPVAL                         R4 0
      498 GETTABLEKS                       R4 R4 K0 ["createElement"]
      500 LOADK                            R5 K5 ["Frame"]
      501 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      502 GETUPVAL                         R7 2
      503 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      505 CALL                             R7 1 1
      506 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      508 DUPTABLE                         R7 K10 [{"Text"}]
      509 GETUPVAL                         R8 0
      510 GETTABLEKS                       R8 R8 K0 ["createElement"]
      512 LOADK                            R9 K11 ["TextLabel"]
      513 DUPTABLE                         R10 K10 [{"Text"}]
      514 LOADK                            R11 K40 ["SecondaryMain"]
      515 SETTABLEKS                       R11 R10 K9 ["Text"]
      517 CALL                             R8 2 1
      518 SETTABLEKS                       R8 R7 K9 ["Text"]
      520 CALL                             R4 3 1
      521 SETTABLEKS                       R4 R3 K40 ["SecondaryMain"]
      523 GETUPVAL                         R4 0
      524 GETTABLEKS                       R4 R4 K0 ["createElement"]
      526 LOADK                            R5 K5 ["Frame"]
      527 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      528 GETUPVAL                         R7 2
      529 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      531 CALL                             R7 1 1
      532 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      534 DUPTABLE                         R7 K10 [{"Text"}]
      535 GETUPVAL                         R8 0
      536 GETTABLEKS                       R8 R8 K0 ["createElement"]
      538 LOADK                            R9 K11 ["TextLabel"]
      539 DUPTABLE                         R10 K10 [{"Text"}]
      540 LOADK                            R11 K41 ["SecondaryMuted"]
      541 SETTABLEKS                       R11 R10 K9 ["Text"]
      543 CALL                             R8 2 1
      544 SETTABLEKS                       R8 R7 K9 ["Text"]
      546 CALL                             R4 3 1
      547 SETTABLEKS                       R4 R3 K41 ["SecondaryMuted"]
      549 GETUPVAL                         R4 0
      550 GETTABLEKS                       R4 R4 K0 ["createElement"]
      552 LOADK                            R5 K5 ["Frame"]
      553 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      554 GETUPVAL                         R7 2
      555 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      557 CALL                             R7 1 1
      558 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      560 DUPTABLE                         R7 K10 [{"Text"}]
      561 GETUPVAL                         R8 0
      562 GETTABLEKS                       R8 R8 K0 ["createElement"]
      564 LOADK                            R9 K11 ["TextLabel"]
      565 DUPTABLE                         R10 K10 [{"Text"}]
      566 LOADK                            R11 K42 ["SecondaryContrast"]
      567 SETTABLEKS                       R11 R10 K9 ["Text"]
      569 CALL                             R8 2 1
      570 SETTABLEKS                       R8 R7 K9 ["Text"]
      572 CALL                             R4 3 1
      573 SETTABLEKS                       R4 R3 K42 ["SecondaryContrast"]
      575 GETUPVAL                         R4 0
      576 GETTABLEKS                       R4 R4 K0 ["createElement"]
      578 LOADK                            R5 K5 ["Frame"]
      579 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      580 GETUPVAL                         R7 2
      581 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      583 CALL                             R7 1 1
      584 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      586 DUPTABLE                         R7 K10 [{"Text"}]
      587 GETUPVAL                         R8 0
      588 GETTABLEKS                       R8 R8 K0 ["createElement"]
      590 LOADK                            R9 K11 ["TextLabel"]
      591 DUPTABLE                         R10 K10 [{"Text"}]
      592 LOADK                            R11 K43 ["SecondaryHoverBackground (hover over me)"]
      593 SETTABLEKS                       R11 R10 K9 ["Text"]
      595 CALL                             R8 2 1
      596 SETTABLEKS                       R8 R7 K9 ["Text"]
      598 CALL                             R4 3 1
      599 SETTABLEKS                       R4 R3 K44 ["SecondaryHoverBackground"]
      601 GETUPVAL                         R4 0
      602 GETTABLEKS                       R4 R4 K0 ["createElement"]
      604 LOADK                            R5 K5 ["Frame"]
      605 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      606 GETUPVAL                         R7 2
      607 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      609 CALL                             R7 1 1
      610 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      612 DUPTABLE                         R7 K10 [{"Text"}]
      613 GETUPVAL                         R8 0
      614 GETTABLEKS                       R8 R8 K0 ["createElement"]
      616 LOADK                            R9 K11 ["TextLabel"]
      617 DUPTABLE                         R10 K10 [{"Text"}]
      618 LOADK                            R11 K45 ["SecondaryHoverOutlineBorder"]
      619 SETTABLEKS                       R11 R10 K9 ["Text"]
      621 CALL                             R8 2 1
      622 SETTABLEKS                       R8 R7 K9 ["Text"]
      624 CALL                             R4 3 1
      625 SETTABLEKS                       R4 R3 K45 ["SecondaryHoverOutlineBorder"]
      627 GETUPVAL                         R4 0
      628 GETTABLEKS                       R4 R4 K0 ["createElement"]
      630 LOADK                            R5 K5 ["Frame"]
      631 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      632 GETUPVAL                         R7 2
      633 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      635 CALL                             R7 1 1
      636 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      638 DUPTABLE                         R7 K10 [{"Text"}]
      639 GETUPVAL                         R8 0
      640 GETTABLEKS                       R8 R8 K0 ["createElement"]
      642 LOADK                            R9 K11 ["TextLabel"]
      643 DUPTABLE                         R10 K10 [{"Text"}]
      644 LOADK                            R11 K46 ["SecondaryRestingOutlineBorder"]
      645 SETTABLEKS                       R11 R10 K9 ["Text"]
      647 CALL                             R8 2 1
      648 SETTABLEKS                       R8 R7 K9 ["Text"]
      650 CALL                             R4 3 1
      651 SETTABLEKS                       R4 R3 K46 ["SecondaryRestingOutlineBorder"]
      653 GETUPVAL                         R4 0
      654 GETTABLEKS                       R4 R4 K0 ["createElement"]
      656 LOADK                            R5 K5 ["Frame"]
      657 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      658 GETUPVAL                         R7 2
      659 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      661 CALL                             R7 1 1
      662 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      664 DUPTABLE                         R7 K10 [{"Text"}]
      665 GETUPVAL                         R8 0
      666 GETTABLEKS                       R8 R8 K0 ["createElement"]
      668 LOADK                            R9 K11 ["TextLabel"]
      669 DUPTABLE                         R10 K10 [{"Text"}]
      670 LOADK                            R11 K47 ["FilledInputBackground"]
      671 SETTABLEKS                       R11 R10 K9 ["Text"]
      673 CALL                             R8 2 1
      674 SETTABLEKS                       R8 R7 K9 ["Text"]
      676 CALL                             R4 3 1
      677 SETTABLEKS                       R4 R3 K47 ["FilledInputBackground"]
      679 GETUPVAL                         R4 0
      680 GETTABLEKS                       R4 R4 K0 ["createElement"]
      682 LOADK                            R5 K5 ["Frame"]
      683 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      684 GETUPVAL                         R7 2
      685 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      687 CALL                             R7 1 1
      688 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      690 DUPTABLE                         R7 K10 [{"Text"}]
      691 GETUPVAL                         R8 0
      692 GETTABLEKS                       R8 R8 K0 ["createElement"]
      694 LOADK                            R9 K11 ["TextLabel"]
      695 DUPTABLE                         R10 K10 [{"Text"}]
      696 LOADK                            R11 K48 ["Divider"]
      697 SETTABLEKS                       R11 R10 K9 ["Text"]
      699 CALL                             R8 2 1
      700 SETTABLEKS                       R8 R7 K9 ["Text"]
      702 CALL                             R4 3 1
      703 SETTABLEKS                       R4 R3 K48 ["Divider"]
      705 GETUPVAL                         R4 0
      706 GETTABLEKS                       R4 R4 K0 ["createElement"]
      708 LOADK                            R5 K49 ["ImageLabel"]
      709 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      710 GETUPVAL                         R7 2
      711 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      713 CALL                             R7 1 1
      714 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      716 CALL                             R4 2 1
      717 SETTABLEKS                       R4 R3 K50 ["CheckboxUncheckedImage"]
      719 GETUPVAL                         R4 0
      720 GETTABLEKS                       R4 R4 K0 ["createElement"]
      722 LOADK                            R5 K49 ["ImageLabel"]
      723 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      724 GETUPVAL                         R7 2
      725 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      727 CALL                             R7 1 1
      728 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      730 CALL                             R4 2 1
      731 SETTABLEKS                       R4 R3 K51 ["CheckboxCheckedImage"]
      733 GETUPVAL                         R4 0
      734 GETTABLEKS                       R4 R4 K0 ["createElement"]
      736 LOADK                            R5 K49 ["ImageLabel"]
      737 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      738 GETUPVAL                         R7 2
      739 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      741 CALL                             R7 1 1
      742 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      744 CALL                             R4 2 1
      745 SETTABLEKS                       R4 R3 K52 ["CheckboxIndeterminateImage"]
      747 GETUPVAL                         R4 0
      748 GETTABLEKS                       R4 R4 K0 ["createElement"]
      750 LOADK                            R5 K49 ["ImageLabel"]
      751 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      752 GETUPVAL                         R7 2
      753 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      755 CALL                             R7 1 1
      756 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      758 CALL                             R4 2 1
      759 SETTABLEKS                       R4 R3 K53 ["CheckboxDisabledImage"]
      761 CALL                             R0 3 -1
      762 RETURN                           R0 -1

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Styling"]
       25 GETTABLEKS                       R3 R3 K9 ["joinTags"]
       27 GETTABLEKS                       R4 R2 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["LayoutOrderIterator"]
       31 GETTABLEKS                       R5 R4 K12 ["new"]
       33 CALL                             R5 0 1
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 RETURN                           R6 1
