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
       32 DUPTABLE                         R10 K13 [{["Text"] = "BackgroundDefault"}]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K9 ["Text"]
       36 CALL                             R4 3 1
       37 SETTABLEKS                       R4 R3 K12 ["BackgroundDefault"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K0 ["createElement"]
       42 LOADK                            R5 K5 ["Frame"]
       43 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       44 GETUPVAL                         R7 2
       45 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       50 DUPTABLE                         R7 K10 [{"Text"}]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K0 ["createElement"]
       54 LOADK                            R9 K11 ["TextLabel"]
       55 DUPTABLE                         R10 K15 [{["Text"] = "BackgroundPaper"}]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K9 ["Text"]
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K14 ["BackgroundPaper"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K0 ["createElement"]
       65 LOADK                            R5 K5 ["Frame"]
       66 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       67 GETUPVAL                         R7 2
       68 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       73 DUPTABLE                         R7 K10 [{"Text"}]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K0 ["createElement"]
       77 LOADK                            R9 K11 ["TextLabel"]
       78 DUPTABLE                         R10 K17 [{["Text"] = "ForegroundMain"}]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K9 ["Text"]
       82 CALL                             R4 3 1
       83 SETTABLEKS                       R4 R3 K16 ["ForegroundMain"]
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K0 ["createElement"]
       88 LOADK                            R5 K5 ["Frame"]
       89 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
       90 GETUPVAL                         R7 2
       91 NAMECALL                         R7 R7 K8 ["getNextOrder"]
       93 CALL                             R7 1 1
       94 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       96 DUPTABLE                         R7 K10 [{"Text"}]
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K0 ["createElement"]
      100 LOADK                            R9 K11 ["TextLabel"]
      101 DUPTABLE                         R10 K19 [{["Text"] = "ForegroundMuted"}]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K9 ["Text"]
      105 CALL                             R4 3 1
      106 SETTABLEKS                       R4 R3 K18 ["ForegroundMuted"]
      108 GETUPVAL                         R4 0
      109 GETTABLEKS                       R4 R4 K0 ["createElement"]
      111 LOADK                            R5 K5 ["Frame"]
      112 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      113 GETUPVAL                         R7 2
      114 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      116 CALL                             R7 1 1
      117 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      119 DUPTABLE                         R7 K10 [{"Text"}]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K0 ["createElement"]
      123 LOADK                            R9 K11 ["TextLabel"]
      124 DUPTABLE                         R10 K21 [{["Text"] = "ForegroundContrast"}]
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R7 K9 ["Text"]
      128 CALL                             R4 3 1
      129 SETTABLEKS                       R4 R3 K20 ["ForegroundContrast"]
      131 GETUPVAL                         R4 0
      132 GETTABLEKS                       R4 R4 K0 ["createElement"]
      134 LOADK                            R5 K11 ["TextLabel"]
      135 DUPTABLE                         R6 K23 [{["LayoutOrder"], ["Text"] = "TextPrimary"}]
      136 GETUPVAL                         R7 2
      137 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      139 CALL                             R7 1 1
      140 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      142 CALL                             R4 2 1
      143 SETTABLEKS                       R4 R3 K22 ["TextPrimary"]
      145 GETUPVAL                         R4 0
      146 GETTABLEKS                       R4 R4 K0 ["createElement"]
      148 LOADK                            R5 K11 ["TextLabel"]
      149 DUPTABLE                         R6 K25 [{["LayoutOrder"], ["Text"] = "TextSecondary"}]
      150 GETUPVAL                         R7 2
      151 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      153 CALL                             R7 1 1
      154 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      156 CALL                             R4 2 1
      157 SETTABLEKS                       R4 R3 K24 ["TextSecondary"]
      159 GETUPVAL                         R4 0
      160 GETTABLEKS                       R4 R4 K0 ["createElement"]
      162 LOADK                            R5 K11 ["TextLabel"]
      163 DUPTABLE                         R6 K27 [{["LayoutOrder"], ["Text"] = "TextContrast"}]
      164 GETUPVAL                         R7 2
      165 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      167 CALL                             R7 1 1
      168 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      170 CALL                             R4 2 1
      171 SETTABLEKS                       R4 R3 K26 ["TextContrast"]
      173 GETUPVAL                         R4 0
      174 GETTABLEKS                       R4 R4 K0 ["createElement"]
      176 LOADK                            R5 K11 ["TextLabel"]
      177 DUPTABLE                         R6 K29 [{["LayoutOrder"], ["Text"] = "TextLink"}]
      178 GETUPVAL                         R7 2
      179 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      181 CALL                             R7 1 1
      182 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      184 CALL                             R4 2 1
      185 SETTABLEKS                       R4 R3 K28 ["TextLink"]
      187 GETUPVAL                         R4 0
      188 GETTABLEKS                       R4 R4 K0 ["createElement"]
      190 LOADK                            R5 K11 ["TextLabel"]
      191 DUPTABLE                         R6 K31 [{["LayoutOrder"], ["Text"] = "TextDisabled"}]
      192 GETUPVAL                         R7 2
      193 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      195 CALL                             R7 1 1
      196 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      198 CALL                             R4 2 1
      199 SETTABLEKS                       R4 R3 K30 ["TextDisabled"]
      201 GETUPVAL                         R4 0
      202 GETTABLEKS                       R4 R4 K0 ["createElement"]
      204 LOADK                            R5 K11 ["TextLabel"]
      205 DUPTABLE                         R6 K33 [{["LayoutOrder"], ["Text"] = "TextError"}]
      206 GETUPVAL                         R7 2
      207 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      209 CALL                             R7 1 1
      210 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      212 CALL                             R4 2 1
      213 SETTABLEKS                       R4 R3 K32 ["TextError"]
      215 GETUPVAL                         R4 0
      216 GETTABLEKS                       R4 R4 K0 ["createElement"]
      218 LOADK                            R5 K11 ["TextLabel"]
      219 DUPTABLE                         R6 K35 [{["LayoutOrder"], ["Text"] = "TextSuccess"}]
      220 GETUPVAL                         R7 2
      221 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      223 CALL                             R7 1 1
      224 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      226 CALL                             R4 2 1
      227 SETTABLEKS                       R4 R3 K34 ["TextSuccess"]
      229 GETUPVAL                         R4 0
      230 GETTABLEKS                       R4 R4 K0 ["createElement"]
      232 LOADK                            R5 K11 ["TextLabel"]
      233 DUPTABLE                         R6 K37 [{["LayoutOrder"], ["Text"] = "TextWarning"}]
      234 GETUPVAL                         R7 2
      235 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      237 CALL                             R7 1 1
      238 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      240 CALL                             R4 2 1
      241 SETTABLEKS                       R4 R3 K36 ["TextWarning"]
      243 GETUPVAL                         R4 0
      244 GETTABLEKS                       R4 R4 K0 ["createElement"]
      246 LOADK                            R5 K5 ["Frame"]
      247 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      248 GETUPVAL                         R7 2
      249 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      251 CALL                             R7 1 1
      252 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      254 DUPTABLE                         R7 K10 [{"Text"}]
      255 GETUPVAL                         R8 0
      256 GETTABLEKS                       R8 R8 K0 ["createElement"]
      258 LOADK                            R9 K11 ["TextLabel"]
      259 DUPTABLE                         R10 K39 [{["Text"] = "ErrorMain"}]
      260 CALL                             R8 2 1
      261 SETTABLEKS                       R8 R7 K9 ["Text"]
      263 CALL                             R4 3 1
      264 SETTABLEKS                       R4 R3 K38 ["ErrorMain"]
      266 GETUPVAL                         R4 0
      267 GETTABLEKS                       R4 R4 K0 ["createElement"]
      269 LOADK                            R5 K5 ["Frame"]
      270 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      271 GETUPVAL                         R7 2
      272 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      274 CALL                             R7 1 1
      275 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      277 DUPTABLE                         R7 K10 [{"Text"}]
      278 GETUPVAL                         R8 0
      279 GETTABLEKS                       R8 R8 K0 ["createElement"]
      281 LOADK                            R9 K11 ["TextLabel"]
      282 DUPTABLE                         R10 K41 [{["Text"] = "SuccessMain"}]
      283 CALL                             R8 2 1
      284 SETTABLEKS                       R8 R7 K9 ["Text"]
      286 CALL                             R4 3 1
      287 SETTABLEKS                       R4 R3 K40 ["SuccessMain"]
      289 GETUPVAL                         R4 0
      290 GETTABLEKS                       R4 R4 K0 ["createElement"]
      292 LOADK                            R5 K5 ["Frame"]
      293 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      294 GETUPVAL                         R7 2
      295 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      297 CALL                             R7 1 1
      298 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      300 DUPTABLE                         R7 K10 [{"Text"}]
      301 GETUPVAL                         R8 0
      302 GETTABLEKS                       R8 R8 K0 ["createElement"]
      304 LOADK                            R9 K11 ["TextLabel"]
      305 DUPTABLE                         R10 K43 [{["Text"] = "WarningMain"}]
      306 CALL                             R8 2 1
      307 SETTABLEKS                       R8 R7 K9 ["Text"]
      309 CALL                             R4 3 1
      310 SETTABLEKS                       R4 R3 K42 ["WarningMain"]
      312 GETUPVAL                         R4 0
      313 GETTABLEKS                       R4 R4 K0 ["createElement"]
      315 LOADK                            R5 K44 ["TextButton"]
      316 DUPTABLE                         R6 K46 [{["LayoutOrder"], ["Text"] = "ActionEnabled"}]
      317 GETUPVAL                         R7 2
      318 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      320 CALL                             R7 1 1
      321 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      323 CALL                             R4 2 1
      324 SETTABLEKS                       R4 R3 K45 ["ActionEnabled"]
      326 GETUPVAL                         R4 0
      327 GETTABLEKS                       R4 R4 K0 ["createElement"]
      329 LOADK                            R5 K44 ["TextButton"]
      330 DUPTABLE                         R6 K48 [{["LayoutOrder"], ["Text"] = "ActionSelected"}]
      331 GETUPVAL                         R7 2
      332 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      334 CALL                             R7 1 1
      335 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      337 CALL                             R4 2 1
      338 SETTABLEKS                       R4 R3 K47 ["ActionSelected"]
      340 GETUPVAL                         R4 0
      341 GETTABLEKS                       R4 R4 K0 ["createElement"]
      343 LOADK                            R5 K44 ["TextButton"]
      344 DUPTABLE                         R6 K50 [{["LayoutOrder"], ["Text"] = "ActionActivated"}]
      345 GETUPVAL                         R7 2
      346 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      348 CALL                             R7 1 1
      349 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      351 CALL                             R4 2 1
      352 SETTABLEKS                       R4 R3 K49 ["ActionActivated"]
      354 GETUPVAL                         R4 0
      355 GETTABLEKS                       R4 R4 K0 ["createElement"]
      357 LOADK                            R5 K44 ["TextButton"]
      358 DUPTABLE                         R6 K52 [{["LayoutOrder"], ["Text"] = "ActionHover (hover over me)"}]
      359 GETUPVAL                         R7 2
      360 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      362 CALL                             R7 1 1
      363 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      365 CALL                             R4 2 1
      366 SETTABLEKS                       R4 R3 K53 ["ActionHover"]
      368 GETUPVAL                         R4 0
      369 GETTABLEKS                       R4 R4 K0 ["createElement"]
      371 LOADK                            R5 K44 ["TextButton"]
      372 DUPTABLE                         R6 K55 [{["LayoutOrder"], ["Text"] = "ActionFocusBorder (border color)"}]
      373 GETUPVAL                         R7 2
      374 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      376 CALL                             R7 1 1
      377 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      379 CALL                             R4 2 1
      380 SETTABLEKS                       R4 R3 K56 ["ActionFocusBorder"]
      382 GETUPVAL                         R4 0
      383 GETTABLEKS                       R4 R4 K0 ["createElement"]
      385 LOADK                            R5 K5 ["Frame"]
      386 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      387 GETUPVAL                         R7 2
      388 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      390 CALL                             R7 1 1
      391 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      393 DUPTABLE                         R7 K10 [{"Text"}]
      394 GETUPVAL                         R8 0
      395 GETTABLEKS                       R8 R8 K0 ["createElement"]
      397 LOADK                            R9 K11 ["TextLabel"]
      398 DUPTABLE                         R10 K58 [{["Text"] = "PrimaryMain"}]
      399 CALL                             R8 2 1
      400 SETTABLEKS                       R8 R7 K9 ["Text"]
      402 CALL                             R4 3 1
      403 SETTABLEKS                       R4 R3 K57 ["PrimaryMain"]
      405 GETUPVAL                         R4 0
      406 GETTABLEKS                       R4 R4 K0 ["createElement"]
      408 LOADK                            R5 K5 ["Frame"]
      409 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      410 GETUPVAL                         R7 2
      411 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      413 CALL                             R7 1 1
      414 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      416 DUPTABLE                         R7 K10 [{"Text"}]
      417 GETUPVAL                         R8 0
      418 GETTABLEKS                       R8 R8 K0 ["createElement"]
      420 LOADK                            R9 K11 ["TextLabel"]
      421 DUPTABLE                         R10 K60 [{["Text"] = "PrimaryHoverBackground (hover over me)"}]
      422 CALL                             R8 2 1
      423 SETTABLEKS                       R8 R7 K9 ["Text"]
      425 CALL                             R4 3 1
      426 SETTABLEKS                       R4 R3 K61 ["PrimaryHoverBackground"]
      428 GETUPVAL                         R4 0
      429 GETTABLEKS                       R4 R4 K0 ["createElement"]
      431 LOADK                            R5 K5 ["Frame"]
      432 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      433 GETUPVAL                         R7 2
      434 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      436 CALL                             R7 1 1
      437 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      439 DUPTABLE                         R7 K10 [{"Text"}]
      440 GETUPVAL                         R8 0
      441 GETTABLEKS                       R8 R8 K0 ["createElement"]
      443 LOADK                            R9 K11 ["TextLabel"]
      444 DUPTABLE                         R10 K63 [{["Text"] = "SecondaryMain"}]
      445 CALL                             R8 2 1
      446 SETTABLEKS                       R8 R7 K9 ["Text"]
      448 CALL                             R4 3 1
      449 SETTABLEKS                       R4 R3 K62 ["SecondaryMain"]
      451 GETUPVAL                         R4 0
      452 GETTABLEKS                       R4 R4 K0 ["createElement"]
      454 LOADK                            R5 K5 ["Frame"]
      455 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      456 GETUPVAL                         R7 2
      457 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      459 CALL                             R7 1 1
      460 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      462 DUPTABLE                         R7 K10 [{"Text"}]
      463 GETUPVAL                         R8 0
      464 GETTABLEKS                       R8 R8 K0 ["createElement"]
      466 LOADK                            R9 K11 ["TextLabel"]
      467 DUPTABLE                         R10 K65 [{["Text"] = "SecondaryMuted"}]
      468 CALL                             R8 2 1
      469 SETTABLEKS                       R8 R7 K9 ["Text"]
      471 CALL                             R4 3 1
      472 SETTABLEKS                       R4 R3 K64 ["SecondaryMuted"]
      474 GETUPVAL                         R4 0
      475 GETTABLEKS                       R4 R4 K0 ["createElement"]
      477 LOADK                            R5 K5 ["Frame"]
      478 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      479 GETUPVAL                         R7 2
      480 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      482 CALL                             R7 1 1
      483 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      485 DUPTABLE                         R7 K10 [{"Text"}]
      486 GETUPVAL                         R8 0
      487 GETTABLEKS                       R8 R8 K0 ["createElement"]
      489 LOADK                            R9 K11 ["TextLabel"]
      490 DUPTABLE                         R10 K67 [{["Text"] = "SecondaryContrast"}]
      491 CALL                             R8 2 1
      492 SETTABLEKS                       R8 R7 K9 ["Text"]
      494 CALL                             R4 3 1
      495 SETTABLEKS                       R4 R3 K66 ["SecondaryContrast"]
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
      513 DUPTABLE                         R10 K69 [{["Text"] = "SecondaryHoverBackground (hover over me)"}]
      514 CALL                             R8 2 1
      515 SETTABLEKS                       R8 R7 K9 ["Text"]
      517 CALL                             R4 3 1
      518 SETTABLEKS                       R4 R3 K70 ["SecondaryHoverBackground"]
      520 GETUPVAL                         R4 0
      521 GETTABLEKS                       R4 R4 K0 ["createElement"]
      523 LOADK                            R5 K5 ["Frame"]
      524 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      525 GETUPVAL                         R7 2
      526 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      528 CALL                             R7 1 1
      529 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      531 DUPTABLE                         R7 K10 [{"Text"}]
      532 GETUPVAL                         R8 0
      533 GETTABLEKS                       R8 R8 K0 ["createElement"]
      535 LOADK                            R9 K11 ["TextLabel"]
      536 DUPTABLE                         R10 K72 [{["Text"] = "SecondaryHoverOutlineBorder"}]
      537 CALL                             R8 2 1
      538 SETTABLEKS                       R8 R7 K9 ["Text"]
      540 CALL                             R4 3 1
      541 SETTABLEKS                       R4 R3 K71 ["SecondaryHoverOutlineBorder"]
      543 GETUPVAL                         R4 0
      544 GETTABLEKS                       R4 R4 K0 ["createElement"]
      546 LOADK                            R5 K5 ["Frame"]
      547 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      548 GETUPVAL                         R7 2
      549 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      551 CALL                             R7 1 1
      552 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      554 DUPTABLE                         R7 K10 [{"Text"}]
      555 GETUPVAL                         R8 0
      556 GETTABLEKS                       R8 R8 K0 ["createElement"]
      558 LOADK                            R9 K11 ["TextLabel"]
      559 DUPTABLE                         R10 K74 [{["Text"] = "SecondaryRestingOutlineBorder"}]
      560 CALL                             R8 2 1
      561 SETTABLEKS                       R8 R7 K9 ["Text"]
      563 CALL                             R4 3 1
      564 SETTABLEKS                       R4 R3 K73 ["SecondaryRestingOutlineBorder"]
      566 GETUPVAL                         R4 0
      567 GETTABLEKS                       R4 R4 K0 ["createElement"]
      569 LOADK                            R5 K5 ["Frame"]
      570 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      571 GETUPVAL                         R7 2
      572 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      574 CALL                             R7 1 1
      575 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      577 DUPTABLE                         R7 K10 [{"Text"}]
      578 GETUPVAL                         R8 0
      579 GETTABLEKS                       R8 R8 K0 ["createElement"]
      581 LOADK                            R9 K11 ["TextLabel"]
      582 DUPTABLE                         R10 K76 [{["Text"] = "FilledInputBackground"}]
      583 CALL                             R8 2 1
      584 SETTABLEKS                       R8 R7 K9 ["Text"]
      586 CALL                             R4 3 1
      587 SETTABLEKS                       R4 R3 K75 ["FilledInputBackground"]
      589 GETUPVAL                         R4 0
      590 GETTABLEKS                       R4 R4 K0 ["createElement"]
      592 LOADK                            R5 K5 ["Frame"]
      593 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      594 GETUPVAL                         R7 2
      595 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      597 CALL                             R7 1 1
      598 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      600 DUPTABLE                         R7 K10 [{"Text"}]
      601 GETUPVAL                         R8 0
      602 GETTABLEKS                       R8 R8 K0 ["createElement"]
      604 LOADK                            R9 K11 ["TextLabel"]
      605 DUPTABLE                         R10 K78 [{["Text"] = "Divider"}]
      606 CALL                             R8 2 1
      607 SETTABLEKS                       R8 R7 K9 ["Text"]
      609 CALL                             R4 3 1
      610 SETTABLEKS                       R4 R3 K77 ["Divider"]
      612 GETUPVAL                         R4 0
      613 GETTABLEKS                       R4 R4 K0 ["createElement"]
      615 LOADK                            R5 K79 ["ImageLabel"]
      616 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      617 GETUPVAL                         R7 2
      618 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      620 CALL                             R7 1 1
      621 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      623 CALL                             R4 2 1
      624 SETTABLEKS                       R4 R3 K80 ["CheckboxUncheckedImage"]
      626 GETUPVAL                         R4 0
      627 GETTABLEKS                       R4 R4 K0 ["createElement"]
      629 LOADK                            R5 K79 ["ImageLabel"]
      630 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      631 GETUPVAL                         R7 2
      632 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      634 CALL                             R7 1 1
      635 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      637 CALL                             R4 2 1
      638 SETTABLEKS                       R4 R3 K81 ["CheckboxCheckedImage"]
      640 GETUPVAL                         R4 0
      641 GETTABLEKS                       R4 R4 K0 ["createElement"]
      643 LOADK                            R5 K79 ["ImageLabel"]
      644 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      645 GETUPVAL                         R7 2
      646 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      648 CALL                             R7 1 1
      649 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      651 CALL                             R4 2 1
      652 SETTABLEKS                       R4 R3 K82 ["CheckboxIndeterminateImage"]
      654 GETUPVAL                         R4 0
      655 GETTABLEKS                       R4 R4 K0 ["createElement"]
      657 LOADK                            R5 K79 ["ImageLabel"]
      658 DUPTABLE                         R6 K7 [{"LayoutOrder"}]
      659 GETUPVAL                         R7 2
      660 NAMECALL                         R7 R7 K8 ["getNextOrder"]
      662 CALL                             R7 1 1
      663 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      665 CALL                             R4 2 1
      666 SETTABLEKS                       R4 R3 K83 ["CheckboxDisabledImage"]
      668 CALL                             R0 3 -1
      669 RETURN                           R0 -1

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
