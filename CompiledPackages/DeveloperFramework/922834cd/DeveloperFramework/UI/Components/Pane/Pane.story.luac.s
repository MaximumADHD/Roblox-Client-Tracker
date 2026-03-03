PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 255
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 0
        4 LOADB                            R3 0
        5 CALL                             R2 1 2
        6 LOADN                            R5 255
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          REF R5
        9 CLOSEUPVALS                      R5
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 NEWTABLE                         R7 1 0
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K1 ["Tag"]
       19 LOADK                            R9 K2 ["X-ColumnM X-Fit X-Pad"]
       20 SETTABLE                         R9 R7 R8
       21 DUPTABLE                         R8 K17 [{"Default", "Paper", "Main", "Muted", "Contrast", "Corner", "PrimaryBrand", "Primary", "Secondary", "Border", "RoundBorder", "CustomColors", "Pressable", "Clickable"}]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K0 ["createElement"]
       25 GETUPVAL                         R10 2
       26 NEWTABLE                         R11 2 0
       28 MOVE                             R12 R4
       29 CALL                             R12 0 1
       30 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K1 ["Tag"]
       35 LOADK                            R13 K19 ["X-Fit X-Pad"]
       36 SETTABLE                         R13 R11 R12
       37 DUPTABLE                         R12 K21 [{"Label"}]
       38 GETUPVAL                         R14 1
       39 GETTABLEKS                       R13 R14 K0 ["createElement"]
       41 GETUPVAL                         R14 3
       42 NEWTABLE                         R15 2 0
       44 LOADK                            R16 K22 ["This pane has the Default style"]
       45 SETTABLEKS                       R16 R15 K23 ["Text"]
       47 GETUPVAL                         R17 1
       48 GETTABLEKS                       R16 R17 K1 ["Tag"]
       50 LOADK                            R17 K24 ["X-Fit"]
       51 SETTABLE                         R17 R15 R16
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K20 ["Label"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K3 ["Default"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R9 R10 K0 ["createElement"]
       61 GETUPVAL                         R10 2
       62 NEWTABLE                         R11 2 0
       64 MOVE                             R12 R4
       65 CALL                             R12 0 1
       66 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R12 R13 K1 ["Tag"]
       71 LOADK                            R13 K25 ["Paper X-Fit X-Pad"]
       72 SETTABLE                         R13 R11 R12
       73 DUPTABLE                         R12 K21 [{"Label"}]
       74 GETUPVAL                         R14 1
       75 GETTABLEKS                       R13 R14 K0 ["createElement"]
       77 GETUPVAL                         R14 3
       78 NEWTABLE                         R15 2 0
       80 LOADK                            R16 K26 ["This pane has Paper style"]
       81 SETTABLEKS                       R16 R15 K23 ["Text"]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R16 R17 K1 ["Tag"]
       86 LOADK                            R17 K24 ["X-Fit"]
       87 SETTABLE                         R17 R15 R16
       88 CALL                             R13 2 1
       89 SETTABLEKS                       R13 R12 K20 ["Label"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K4 ["Paper"]
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R9 R10 K0 ["createElement"]
       97 GETUPVAL                         R10 2
       98 NEWTABLE                         R11 2 0
      100 MOVE                             R12 R4
      101 CALL                             R12 0 1
      102 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R12 R13 K1 ["Tag"]
      107 LOADK                            R13 K27 ["Main X-Fit X-Pad"]
      108 SETTABLE                         R13 R11 R12
      109 DUPTABLE                         R12 K21 [{"Label"}]
      110 GETUPVAL                         R14 1
      111 GETTABLEKS                       R13 R14 K0 ["createElement"]
      113 GETUPVAL                         R14 3
      114 NEWTABLE                         R15 2 0
      116 LOADK                            R16 K28 ["This pane has Main style"]
      117 SETTABLEKS                       R16 R15 K23 ["Text"]
      119 GETUPVAL                         R17 1
      120 GETTABLEKS                       R16 R17 K1 ["Tag"]
      122 LOADK                            R17 K24 ["X-Fit"]
      123 SETTABLE                         R17 R15 R16
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K20 ["Label"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K5 ["Main"]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R9 R10 K0 ["createElement"]
      133 GETUPVAL                         R10 2
      134 NEWTABLE                         R11 2 0
      136 MOVE                             R12 R4
      137 CALL                             R12 0 1
      138 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R12 R13 K1 ["Tag"]
      143 LOADK                            R13 K29 ["Muted X-Fit X-Pad"]
      144 SETTABLE                         R13 R11 R12
      145 DUPTABLE                         R12 K21 [{"Label"}]
      146 GETUPVAL                         R14 1
      147 GETTABLEKS                       R13 R14 K0 ["createElement"]
      149 GETUPVAL                         R14 3
      150 NEWTABLE                         R15 2 0
      152 LOADK                            R16 K30 ["This pane has Muted style"]
      153 SETTABLEKS                       R16 R15 K23 ["Text"]
      155 GETUPVAL                         R17 1
      156 GETTABLEKS                       R16 R17 K1 ["Tag"]
      158 LOADK                            R17 K24 ["X-Fit"]
      159 SETTABLE                         R17 R15 R16
      160 CALL                             R13 2 1
      161 SETTABLEKS                       R13 R12 K20 ["Label"]
      163 CALL                             R9 3 1
      164 SETTABLEKS                       R9 R8 K6 ["Muted"]
      166 GETUPVAL                         R10 1
      167 GETTABLEKS                       R9 R10 K0 ["createElement"]
      169 GETUPVAL                         R10 2
      170 NEWTABLE                         R11 2 0
      172 MOVE                             R12 R4
      173 CALL                             R12 0 1
      174 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      176 GETUPVAL                         R13 1
      177 GETTABLEKS                       R12 R13 K1 ["Tag"]
      179 LOADK                            R13 K31 ["Contrast X-Fit X-Pad"]
      180 SETTABLE                         R13 R11 R12
      181 DUPTABLE                         R12 K21 [{"Label"}]
      182 GETUPVAL                         R14 1
      183 GETTABLEKS                       R13 R14 K0 ["createElement"]
      185 GETUPVAL                         R14 3
      186 NEWTABLE                         R15 2 0
      188 LOADK                            R16 K32 ["This pane has Contrast style"]
      189 SETTABLEKS                       R16 R15 K23 ["Text"]
      191 GETUPVAL                         R17 1
      192 GETTABLEKS                       R16 R17 K1 ["Tag"]
      194 LOADK                            R17 K24 ["X-Fit"]
      195 SETTABLE                         R17 R15 R16
      196 CALL                             R13 2 1
      197 SETTABLEKS                       R13 R12 K20 ["Label"]
      199 CALL                             R9 3 1
      200 SETTABLEKS                       R9 R8 K7 ["Contrast"]
      202 GETUPVAL                         R10 1
      203 GETTABLEKS                       R9 R10 K0 ["createElement"]
      205 GETUPVAL                         R10 2
      206 NEWTABLE                         R11 2 0
      208 MOVE                             R12 R4
      209 CALL                             R12 0 1
      210 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      212 GETUPVAL                         R13 1
      213 GETTABLEKS                       R12 R13 K1 ["Tag"]
      215 LOADK                            R13 K33 ["Main X-Corner X-Fit X-Pad"]
      216 SETTABLE                         R13 R11 R12
      217 DUPTABLE                         R12 K21 [{"Label"}]
      218 GETUPVAL                         R14 1
      219 GETTABLEKS                       R13 R14 K0 ["createElement"]
      221 GETUPVAL                         R14 3
      222 NEWTABLE                         R15 2 0
      224 LOADK                            R16 K34 ["This pane has Main X-Corner style"]
      225 SETTABLEKS                       R16 R15 K23 ["Text"]
      227 GETUPVAL                         R17 1
      228 GETTABLEKS                       R16 R17 K1 ["Tag"]
      230 LOADK                            R17 K24 ["X-Fit"]
      231 SETTABLE                         R17 R15 R16
      232 CALL                             R13 2 1
      233 SETTABLEKS                       R13 R12 K20 ["Label"]
      235 CALL                             R9 3 1
      236 SETTABLEKS                       R9 R8 K8 ["Corner"]
      238 GETUPVAL                         R10 1
      239 GETTABLEKS                       R9 R10 K0 ["createElement"]
      241 GETUPVAL                         R10 2
      242 NEWTABLE                         R11 2 0
      244 MOVE                             R12 R4
      245 CALL                             R12 0 1
      246 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      248 GETUPVAL                         R13 1
      249 GETTABLEKS                       R12 R13 K1 ["Tag"]
      251 LOADK                            R13 K35 ["PrimaryBrand X-Corner X-Fit X-Pad"]
      252 SETTABLE                         R13 R11 R12
      253 DUPTABLE                         R12 K21 [{"Label"}]
      254 GETUPVAL                         R14 1
      255 GETTABLEKS                       R13 R14 K0 ["createElement"]
      257 GETUPVAL                         R14 3
      258 NEWTABLE                         R15 2 0
      260 LOADK                            R16 K36 ["This pane has a PrimaryBrand X-Corner style"]
      261 SETTABLEKS                       R16 R15 K23 ["Text"]
      263 GETUPVAL                         R17 1
      264 GETTABLEKS                       R16 R17 K1 ["Tag"]
      266 LOADK                            R17 K24 ["X-Fit"]
      267 SETTABLE                         R17 R15 R16
      268 CALL                             R13 2 1
      269 SETTABLEKS                       R13 R12 K20 ["Label"]
      271 CALL                             R9 3 1
      272 SETTABLEKS                       R9 R8 K9 ["PrimaryBrand"]
      274 GETUPVAL                         R10 1
      275 GETTABLEKS                       R9 R10 K0 ["createElement"]
      277 GETUPVAL                         R10 2
      278 NEWTABLE                         R11 2 0
      280 MOVE                             R12 R4
      281 CALL                             R12 0 1
      282 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      284 GETUPVAL                         R13 1
      285 GETTABLEKS                       R12 R13 K1 ["Tag"]
      287 LOADK                            R13 K37 ["Primary X-Corner X-Fit X-Pad"]
      288 SETTABLE                         R13 R11 R12
      289 DUPTABLE                         R12 K21 [{"Label"}]
      290 GETUPVAL                         R14 1
      291 GETTABLEKS                       R13 R14 K0 ["createElement"]
      293 GETUPVAL                         R14 3
      294 NEWTABLE                         R15 2 0
      296 LOADK                            R16 K38 ["This pane has a Primary X-Corner style"]
      297 SETTABLEKS                       R16 R15 K23 ["Text"]
      299 GETUPVAL                         R17 1
      300 GETTABLEKS                       R16 R17 K1 ["Tag"]
      302 LOADK                            R17 K39 ["X-Fit Contrast"]
      303 SETTABLE                         R17 R15 R16
      304 CALL                             R13 2 1
      305 SETTABLEKS                       R13 R12 K20 ["Label"]
      307 CALL                             R9 3 1
      308 SETTABLEKS                       R9 R8 K10 ["Primary"]
      310 GETUPVAL                         R10 1
      311 GETTABLEKS                       R9 R10 K0 ["createElement"]
      313 GETUPVAL                         R10 2
      314 NEWTABLE                         R11 2 0
      316 MOVE                             R12 R4
      317 CALL                             R12 0 1
      318 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      320 GETUPVAL                         R13 1
      321 GETTABLEKS                       R12 R13 K1 ["Tag"]
      323 LOADK                            R13 K40 ["Secondary X-Corner X-Fit X-Pad"]
      324 SETTABLE                         R13 R11 R12
      325 DUPTABLE                         R12 K21 [{"Label"}]
      326 GETUPVAL                         R14 1
      327 GETTABLEKS                       R13 R14 K0 ["createElement"]
      329 GETUPVAL                         R14 3
      330 NEWTABLE                         R15 2 0
      332 LOADK                            R16 K41 ["This pane has a Secondary X-Corner style"]
      333 SETTABLEKS                       R16 R15 K23 ["Text"]
      335 GETUPVAL                         R17 1
      336 GETTABLEKS                       R16 R17 K1 ["Tag"]
      338 LOADK                            R17 K24 ["X-Fit"]
      339 SETTABLE                         R17 R15 R16
      340 CALL                             R13 2 1
      341 SETTABLEKS                       R13 R12 K20 ["Label"]
      343 CALL                             R9 3 1
      344 SETTABLEKS                       R9 R8 K11 ["Secondary"]
      346 GETUPVAL                         R10 1
      347 GETTABLEKS                       R9 R10 K0 ["createElement"]
      349 GETUPVAL                         R10 2
      350 NEWTABLE                         R11 2 0
      352 MOVE                             R12 R4
      353 CALL                             R12 0 1
      354 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      356 GETUPVAL                         R13 1
      357 GETTABLEKS                       R12 R13 K1 ["Tag"]
      359 LOADK                            R13 K42 ["Main X-Stroke X-Fit X-Pad"]
      360 SETTABLE                         R13 R11 R12
      361 DUPTABLE                         R12 K21 [{"Label"}]
      362 GETUPVAL                         R14 1
      363 GETTABLEKS                       R13 R14 K0 ["createElement"]
      365 GETUPVAL                         R14 3
      366 NEWTABLE                         R15 2 0
      368 LOADK                            R16 K43 ["This pane has a Main X-Stroke style"]
      369 SETTABLEKS                       R16 R15 K23 ["Text"]
      371 GETUPVAL                         R17 1
      372 GETTABLEKS                       R16 R17 K1 ["Tag"]
      374 LOADK                            R17 K24 ["X-Fit"]
      375 SETTABLE                         R17 R15 R16
      376 CALL                             R13 2 1
      377 SETTABLEKS                       R13 R12 K20 ["Label"]
      379 CALL                             R9 3 1
      380 SETTABLEKS                       R9 R8 K12 ["Border"]
      382 GETUPVAL                         R10 1
      383 GETTABLEKS                       R9 R10 K0 ["createElement"]
      385 GETUPVAL                         R10 2
      386 NEWTABLE                         R11 2 0
      388 MOVE                             R12 R4
      389 CALL                             R12 0 1
      390 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      392 GETUPVAL                         R13 1
      393 GETTABLEKS                       R12 R13 K1 ["Tag"]
      395 LOADK                            R13 K44 ["Main X-Stroke X-Corner X-Fit X-Pad"]
      396 SETTABLE                         R13 R11 R12
      397 DUPTABLE                         R12 K21 [{"Label"}]
      398 GETUPVAL                         R14 1
      399 GETTABLEKS                       R13 R14 K0 ["createElement"]
      401 GETUPVAL                         R14 3
      402 NEWTABLE                         R15 2 0
      404 LOADK                            R16 K45 ["This pane has a Main X-Stroke X-Corner style"]
      405 SETTABLEKS                       R16 R15 K23 ["Text"]
      407 GETUPVAL                         R17 1
      408 GETTABLEKS                       R16 R17 K1 ["Tag"]
      410 LOADK                            R17 K24 ["X-Fit"]
      411 SETTABLE                         R17 R15 R16
      412 CALL                             R13 2 1
      413 SETTABLEKS                       R13 R12 K20 ["Label"]
      415 CALL                             R9 3 1
      416 SETTABLEKS                       R9 R8 K13 ["RoundBorder"]
      418 GETUPVAL                         R10 1
      419 GETTABLEKS                       R9 R10 K0 ["createElement"]
      421 GETUPVAL                         R10 2
      422 NEWTABLE                         R11 4 0
      424 GETIMPORT                        R12 K48 [Color3.fromRGB]
      426 LOADN                            R13 255
      427 LOADN                            R14 200
      428 LOADN                            R15 200
      429 CALL                             R12 3 1
      430 SETTABLEKS                       R12 R11 K49 ["BackgroundColor3"]
      432 GETIMPORT                        R12 K48 [Color3.fromRGB]
      434 LOADN                            R13 255
      435 LOADN                            R14 100
      436 LOADN                            R15 0
      437 CALL                             R12 3 1
      438 SETTABLEKS                       R12 R11 K50 ["BorderColor3"]
      440 MOVE                             R12 R4
      441 CALL                             R12 0 1
      442 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      444 GETUPVAL                         R13 1
      445 GETTABLEKS                       R12 R13 K1 ["Tag"]
      447 LOADK                            R13 K51 ["Main Border X-Fit X-Pad"]
      448 SETTABLE                         R13 R11 R12
      449 DUPTABLE                         R12 K21 [{"Label"}]
      450 GETUPVAL                         R14 1
      451 GETTABLEKS                       R13 R14 K0 ["createElement"]
      453 GETUPVAL                         R14 3
      454 NEWTABLE                         R15 4 0
      456 LOADK                            R16 K52 ["This pane has a Main Border style with custom colors"]
      457 SETTABLEKS                       R16 R15 K23 ["Text"]
      459 GETIMPORT                        R16 K48 [Color3.fromRGB]
      461 LOADN                            R17 0
      462 LOADN                            R18 0
      463 LOADN                            R19 0
      464 CALL                             R16 3 1
      465 SETTABLEKS                       R16 R15 K53 ["TextColor"]
      467 GETUPVAL                         R17 1
      468 GETTABLEKS                       R16 R17 K1 ["Tag"]
      470 LOADK                            R17 K24 ["X-Fit"]
      471 SETTABLE                         R17 R15 R16
      472 CALL                             R13 2 1
      473 SETTABLEKS                       R13 R12 K20 ["Label"]
      475 CALL                             R9 3 1
      476 SETTABLEKS                       R9 R8 K14 ["CustomColors"]
      478 GETUPVAL                         R10 1
      479 GETTABLEKS                       R9 R10 K0 ["createElement"]
      481 GETUPVAL                         R10 2
      482 NEWTABLE                         R11 4 0
      484 JUMPIFNOT                        R0 ; [+2]
      485 GETUPVAL                         R12 4
      486 JUMPIF                           R12 ; [+1]
      487 LOADNIL                          R12
      488 SETTABLEKS                       R12 R11 K54 ["BackgroundColor"]
      490 NEWCLOSURE                       R12 P1
      491 CAPTURE                          VAL R1
      492 SETTABLEKS                       R12 R11 K55 ["OnPress"]
      494 MOVE                             R12 R4
      495 CALL                             R12 0 1
      496 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      498 GETUPVAL                         R13 1
      499 GETTABLEKS                       R12 R13 K1 ["Tag"]
      501 LOADK                            R13 K51 ["Main Border X-Fit X-Pad"]
      502 SETTABLE                         R13 R11 R12
      503 DUPTABLE                         R12 K21 [{"Label"}]
      504 GETUPVAL                         R14 1
      505 GETTABLEKS                       R13 R14 K0 ["createElement"]
      507 GETUPVAL                         R14 3
      508 NEWTABLE                         R15 4 0
      510 LOADK                            R16 K56 ["This pane has a Main Border style and an OnPress callback.\n\nPress me!"]
      511 SETTABLEKS                       R16 R15 K23 ["Text"]
      513 JUMPIFNOT                        R0 ; [+2]
      514 GETUPVAL                         R16 5
      515 JUMPIF                           R16 ; [+1]
      516 LOADNIL                          R16
      517 SETTABLEKS                       R16 R15 K53 ["TextColor"]
      519 GETUPVAL                         R17 1
      520 GETTABLEKS                       R16 R17 K1 ["Tag"]
      522 LOADK                            R17 K24 ["X-Fit"]
      523 SETTABLE                         R17 R15 R16
      524 CALL                             R13 2 1
      525 SETTABLEKS                       R13 R12 K20 ["Label"]
      527 CALL                             R9 3 1
      528 SETTABLEKS                       R9 R8 K15 ["Pressable"]
      530 GETUPVAL                         R10 1
      531 GETTABLEKS                       R9 R10 K0 ["createElement"]
      533 GETUPVAL                         R10 2
      534 NEWTABLE                         R11 4 0
      536 MOVE                             R12 R4
      537 CALL                             R12 0 1
      538 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
      540 JUMPIFNOT                        R2 ; [+2]
      541 GETUPVAL                         R12 4
      542 JUMPIF                           R12 ; [+1]
      543 LOADNIL                          R12
      544 SETTABLEKS                       R12 R11 K49 ["BackgroundColor3"]
      546 NEWCLOSURE                       R12 P2
      547 CAPTURE                          VAL R3
      548 SETTABLEKS                       R12 R11 K57 ["OnClick"]
      550 GETUPVAL                         R13 1
      551 GETTABLEKS                       R12 R13 K1 ["Tag"]
      553 LOADK                            R13 K51 ["Main Border X-Fit X-Pad"]
      554 SETTABLE                         R13 R11 R12
      555 DUPTABLE                         R12 K21 [{"Label"}]
      556 GETUPVAL                         R14 1
      557 GETTABLEKS                       R13 R14 K0 ["createElement"]
      559 GETUPVAL                         R14 3
      560 NEWTABLE                         R15 4 0
      562 LOADK                            R16 K58 ["This pane has a Main Border style and an OnClick callback.\n\nClick me!"]
      563 SETTABLEKS                       R16 R15 K23 ["Text"]
      565 JUMPIFNOT                        R2 ; [+2]
      566 GETUPVAL                         R16 5
      567 JUMPIF                           R16 ; [+1]
      568 LOADNIL                          R16
      569 SETTABLEKS                       R16 R15 K53 ["TextColor"]
      571 GETUPVAL                         R17 1
      572 GETTABLEKS                       R16 R17 K1 ["Tag"]
      574 LOADK                            R17 K24 ["X-Fit"]
      575 SETTABLE                         R17 R15 R16
      576 CALL                             R13 2 1
      577 SETTABLEKS                       R13 R12 K20 ["Label"]
      579 CALL                             R9 3 1
      580 SETTABLEKS                       R9 R8 K16 ["Clickable"]
      582 CALL                             R5 3 -1
      583 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["TextLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["useState"]
       36 GETIMPORT                        R5 K14 [Color3.new]
       38 LOADN                            R6 0
       39 LOADN                            R7 1
       40 LOADN                            R8 0
       41 CALL                             R5 3 1
       42 GETIMPORT                        R6 K14 [Color3.new]
       44 LOADN                            R7 0
       45 LOADN                            R8 0
       46 LOADN                            R9 0
       47 CALL                             R6 3 1
       48 DUPCLOSURE                       R7 K15 [PROTO_1]
       49 DUPCLOSURE                       R8 K16 [PROTO_4]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 RETURN                           R8 1
