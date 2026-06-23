PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationBadgeBetaUpdate"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["row align-x-center align-y-center auto-xy"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["row align-x-center align-y-center gap-xsmall"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 DUPTABLE                         R2 K4 [{"tag"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K5 ["FoundationBadgeBetaUpdate"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADK                            R3 K8 ["auto-xy text-align-x-left text-truncate-split"]
       19 JUMP                             ; [+1]
       20 LOADK                            R3 K9 ["auto-xy text-label-small text-align-x-left text-truncate-split"]
       21 SETTABLEKS                       R3 R2 K3 ["tag"]
       23 SETTABLEKS                       R2 R1 K1 ["text"]
       25 NEWTABLE                         R2 8 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K10 ["Alert"]
       30 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
       31 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
       35 JUMPIFNOT                        R7 ; [+15]
       36 DUPTABLE                         R6 K18 [{"Color3", "Transparency"}]
       37 GETTABLEKS                       R7 R0 K19 ["Color"]
       39 GETTABLEKS                       R7 R7 K20 ["System"]
       41 GETTABLEKS                       R7 R7 K10 ["Alert"]
       43 GETTABLEKS                       R7 R7 K16 ["Color3"]
       45 SETTABLEKS                       R7 R6 K16 ["Color3"]
       47 LOADK                            R7 K21 [0.8]
       48 SETTABLEKS                       R7 R6 K17 ["Transparency"]
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R6 R0 K19 ["Color"]
       53 GETTABLEKS                       R6 R6 K20 ["System"]
       55 GETTABLEKS                       R6 R6 K10 ["Alert"]
       57 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
       59 SETTABLEKS                       R5 R4 K0 ["container"]
       61 DUPTABLE                         R5 K23 [{"style"}]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
       65 JUMPIFNOT                        R7 ; [+7]
       66 GETTABLEKS                       R6 R0 K19 ["Color"]
       68 GETTABLEKS                       R6 R6 K24 ["Content"]
       70 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R6 R0 K26 ["DarkMode"]
       75 GETTABLEKS                       R6 R6 K24 ["Content"]
       77 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
       79 SETTABLEKS                       R6 R5 K22 ["style"]
       81 SETTABLEKS                       R5 R4 K11 ["content"]
       83 DUPTABLE                         R5 K23 [{"style"}]
       84 GETTABLEKS                       R6 R0 K19 ["Color"]
       86 GETTABLEKS                       R6 R6 K20 ["System"]
       88 GETTABLEKS                       R6 R6 K10 ["Alert"]
       90 SETTABLEKS                       R6 R5 K22 ["style"]
       92 SETTABLEKS                       R5 R4 K12 ["icon"]
       94 SETTABLE                         R4 R2 R3
       95 GETUPVAL                         R3 1
       96 GETTABLEKS                       R3 R3 K27 ["Success"]
       98 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
       99 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      103 JUMPIFNOT                        R7 ; [+15]
      104 DUPTABLE                         R6 K18 [{"Color3", "Transparency"}]
      105 GETTABLEKS                       R7 R0 K19 ["Color"]
      107 GETTABLEKS                       R7 R7 K20 ["System"]
      109 GETTABLEKS                       R7 R7 K27 ["Success"]
      111 GETTABLEKS                       R7 R7 K16 ["Color3"]
      113 SETTABLEKS                       R7 R6 K16 ["Color3"]
      115 LOADK                            R7 K21 [0.8]
      116 SETTABLEKS                       R7 R6 K17 ["Transparency"]
      118 JUMP                             ; [+6]
      119 GETTABLEKS                       R6 R0 K19 ["Color"]
      121 GETTABLEKS                       R6 R6 K20 ["System"]
      123 GETTABLEKS                       R6 R6 K27 ["Success"]
      125 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      127 SETTABLEKS                       R5 R4 K0 ["container"]
      129 DUPTABLE                         R5 K23 [{"style"}]
      130 GETUPVAL                         R7 0
      131 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      133 JUMPIFNOT                        R7 ; [+7]
      134 GETTABLEKS                       R6 R0 K19 ["Color"]
      136 GETTABLEKS                       R6 R6 K24 ["Content"]
      138 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      140 JUMP                             ; [+6]
      141 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      143 GETTABLEKS                       R6 R6 K24 ["Content"]
      145 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      147 SETTABLEKS                       R6 R5 K22 ["style"]
      149 SETTABLEKS                       R5 R4 K11 ["content"]
      151 DUPTABLE                         R5 K23 [{"style"}]
      152 GETTABLEKS                       R6 R0 K19 ["Color"]
      154 GETTABLEKS                       R6 R6 K20 ["System"]
      156 GETTABLEKS                       R6 R6 K27 ["Success"]
      158 SETTABLEKS                       R6 R5 K22 ["style"]
      160 SETTABLEKS                       R5 R4 K12 ["icon"]
      162 SETTABLE                         R4 R2 R3
      163 GETUPVAL                         R3 1
      164 GETTABLEKS                       R3 R3 K29 ["Warning"]
      166 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      167 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      171 JUMPIFNOT                        R7 ; [+15]
      172 DUPTABLE                         R6 K18 [{"Color3", "Transparency"}]
      173 GETTABLEKS                       R7 R0 K19 ["Color"]
      175 GETTABLEKS                       R7 R7 K20 ["System"]
      177 GETTABLEKS                       R7 R7 K29 ["Warning"]
      179 GETTABLEKS                       R7 R7 K16 ["Color3"]
      181 SETTABLEKS                       R7 R6 K16 ["Color3"]
      183 LOADK                            R7 K21 [0.8]
      184 SETTABLEKS                       R7 R6 K17 ["Transparency"]
      186 JUMP                             ; [+6]
      187 GETTABLEKS                       R6 R0 K19 ["Color"]
      189 GETTABLEKS                       R6 R6 K20 ["System"]
      191 GETTABLEKS                       R6 R6 K29 ["Warning"]
      193 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      195 SETTABLEKS                       R5 R4 K0 ["container"]
      197 DUPTABLE                         R5 K23 [{"style"}]
      198 GETUPVAL                         R7 0
      199 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      201 JUMPIFNOT                        R7 ; [+7]
      202 GETTABLEKS                       R6 R0 K19 ["Color"]
      204 GETTABLEKS                       R6 R6 K24 ["Content"]
      206 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      208 JUMP                             ; [+6]
      209 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      211 GETTABLEKS                       R6 R6 K24 ["Content"]
      213 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      215 SETTABLEKS                       R6 R5 K22 ["style"]
      217 SETTABLEKS                       R5 R4 K11 ["content"]
      219 DUPTABLE                         R5 K23 [{"style"}]
      220 GETTABLEKS                       R6 R0 K19 ["Color"]
      222 GETTABLEKS                       R6 R6 K20 ["System"]
      224 GETTABLEKS                       R6 R6 K29 ["Warning"]
      226 SETTABLEKS                       R6 R5 K22 ["style"]
      228 SETTABLEKS                       R5 R4 K12 ["icon"]
      230 SETTABLE                         R4 R2 R3
      231 GETUPVAL                         R3 1
      232 GETTABLEKS                       R3 R3 K30 ["Contrast"]
      234 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      235 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      236 GETTABLEKS                       R6 R0 K19 ["Color"]
      238 GETTABLEKS                       R6 R6 K20 ["System"]
      240 GETTABLEKS                       R6 R6 K30 ["Contrast"]
      242 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      244 SETTABLEKS                       R5 R4 K0 ["container"]
      246 DUPTABLE                         R5 K23 [{"style"}]
      247 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      249 GETTABLEKS                       R6 R6 K24 ["Content"]
      251 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      253 SETTABLEKS                       R6 R5 K22 ["style"]
      255 SETTABLEKS                       R5 R4 K11 ["content"]
      257 DUPTABLE                         R5 K23 [{"style"}]
      258 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      260 GETTABLEKS                       R6 R6 K24 ["Content"]
      262 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      264 SETTABLEKS                       R6 R5 K22 ["style"]
      266 SETTABLEKS                       R5 R4 K12 ["icon"]
      268 SETTABLE                         R4 R2 R3
      269 GETUPVAL                         R3 1
      270 GETTABLEKS                       R3 R3 K32 ["Neutral"]
      272 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      273 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      274 GETUPVAL                         R7 0
      275 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      277 JUMPIFNOT                        R7 ; [+7]
      278 GETTABLEKS                       R6 R0 K19 ["Color"]
      280 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      282 GETTABLEKS                       R6 R6 K34 ["Background"]
      284 JUMP                             ; [+6]
      285 GETTABLEKS                       R6 R0 K19 ["Color"]
      287 GETTABLEKS                       R6 R6 K35 ["Shift"]
      289 GETTABLEKS                       R6 R6 K36 ["Shift_300"]
      291 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      293 SETTABLEKS                       R5 R4 K0 ["container"]
      295 DUPTABLE                         R5 K23 [{"style"}]
      296 GETUPVAL                         R7 0
      297 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      299 JUMPIFNOT                        R7 ; [+7]
      300 GETTABLEKS                       R6 R0 K19 ["Color"]
      302 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      304 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      306 JUMP                             ; [+6]
      307 GETTABLEKS                       R6 R0 K19 ["Color"]
      309 GETTABLEKS                       R6 R6 K24 ["Content"]
      311 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      313 SETTABLEKS                       R6 R5 K22 ["style"]
      315 SETTABLEKS                       R5 R4 K11 ["content"]
      317 DUPTABLE                         R5 K23 [{"style"}]
      318 GETTABLEKS                       R6 R0 K19 ["Color"]
      320 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      322 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      324 SETTABLEKS                       R6 R5 K22 ["style"]
      326 SETTABLEKS                       R5 R4 K12 ["icon"]
      328 SETTABLE                         R4 R2 R3
      329 GETUPVAL                         R3 1
      330 GETTABLEKS                       R3 R3 K38 ["OverMedia"]
      332 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      333 DUPTABLE                         R5 K40 [{"backgroundStyle", "stroke"}]
      334 GETUPVAL                         R7 0
      335 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      337 JUMPIFNOT                        R7 ; [+7]
      338 GETTABLEKS                       R6 R0 K19 ["Color"]
      340 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      342 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      344 JUMP                             ; [+6]
      345 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      347 GETTABLEKS                       R6 R6 K42 ["Surface"]
      349 GETTABLEKS                       R6 R6 K43 ["Surface_100"]
      351 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      353 GETUPVAL                         R7 0
      354 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      356 JUMPIFNOT                        R7 ; [+2]
      357 LOADNIL                          R6
      358 JUMP                             ; [+21]
      359 DUPTABLE                         R6 K44 [{"Color", "Transparency"}]
      360 GETTABLEKS                       R7 R0 K28 ["LightMode"]
      362 GETTABLEKS                       R7 R7 K45 ["Stroke"]
      364 GETTABLEKS                       R7 R7 K46 ["Default"]
      366 GETTABLEKS                       R7 R7 K16 ["Color3"]
      368 SETTABLEKS                       R7 R6 K19 ["Color"]
      370 GETTABLEKS                       R7 R0 K28 ["LightMode"]
      372 GETTABLEKS                       R7 R7 K45 ["Stroke"]
      374 GETTABLEKS                       R7 R7 K46 ["Default"]
      376 GETTABLEKS                       R7 R7 K17 ["Transparency"]
      378 SETTABLEKS                       R7 R6 K17 ["Transparency"]
      380 SETTABLEKS                       R6 R5 K39 ["stroke"]
      382 SETTABLEKS                       R5 R4 K0 ["container"]
      384 DUPTABLE                         R5 K23 [{"style"}]
      385 GETUPVAL                         R7 0
      386 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      388 JUMPIFNOT                        R7 ; [+7]
      389 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      391 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      393 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      395 JUMP                             ; [+6]
      396 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      398 GETTABLEKS                       R6 R6 K24 ["Content"]
      400 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      402 SETTABLEKS                       R6 R5 K22 ["style"]
      404 SETTABLEKS                       R5 R4 K11 ["content"]
      406 DUPTABLE                         R5 K23 [{"style"}]
      407 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      409 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      411 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      413 SETTABLEKS                       R6 R5 K22 ["style"]
      415 SETTABLEKS                       R5 R4 K12 ["icon"]
      417 SETTABLE                         R4 R2 R3
      418 GETUPVAL                         R4 0
      419 GETTABLEKS                       R4 R4 K5 ["FoundationBadgeBetaUpdate"]
      421 JUMPIFNOT                        R4 ; [+2]
      422 LOADNIL                          R3
      423 JUMP                             ; [+20]
      424 NEWTABLE                         R3 2 0
      426 LOADB                            R4 1
      427 DUPTABLE                         R5 K47 [{"container"}]
      428 DUPTABLE                         R6 K4 [{"tag"}]
      429 LOADK                            R7 K48 ["size-600"]
      430 SETTABLEKS                       R7 R6 K3 ["tag"]
      432 SETTABLEKS                       R6 R5 K0 ["container"]
      434 SETTABLE                         R5 R3 R4
      435 LOADB                            R4 0
      436 DUPTABLE                         R5 K47 [{"container"}]
      437 DUPTABLE                         R6 K4 [{"tag"}]
      438 LOADK                            R7 K49 ["size-0-600 auto-x padding-x-small"]
      439 SETTABLEKS                       R7 R6 K3 ["tag"]
      441 SETTABLEKS                       R6 R5 K0 ["container"]
      443 SETTABLE                         R5 R3 R4
      444 GETUPVAL                         R5 0
      445 GETTABLEKS                       R5 R5 K5 ["FoundationBadgeBetaUpdate"]
      447 JUMPIFNOT                        R5 ; [+78]
      448 NEWTABLE                         R4 4 0
      450 GETUPVAL                         R5 2
      451 GETTABLEKS                       R5 R5 K50 ["XSmall"]
      453 DUPTABLE                         R6 K51 [{"container", "text", "icon"}]
      454 DUPTABLE                         R7 K4 [{"tag"}]
      455 LOADK                            R8 K52 ["gap-xxsmall size-0-400 padding-x-xsmall"]
      456 SETTABLEKS                       R8 R7 K3 ["tag"]
      458 SETTABLEKS                       R7 R6 K0 ["container"]
      460 DUPTABLE                         R7 K4 [{"tag"}]
      461 LOADK                            R8 K53 ["text-caption-small"]
      462 SETTABLEKS                       R8 R7 K3 ["tag"]
      464 SETTABLEKS                       R7 R6 K1 ["text"]
      466 DUPTABLE                         R7 K55 [{"size"}]
      467 GETUPVAL                         R8 3
      468 GETTABLEKS                       R8 R8 K50 ["XSmall"]
      470 SETTABLEKS                       R8 R7 K54 ["size"]
      472 SETTABLEKS                       R7 R6 K12 ["icon"]
      474 SETTABLE                         R6 R4 R5
      475 GETUPVAL                         R5 2
      476 GETTABLEKS                       R5 R5 K56 ["Small"]
      478 DUPTABLE                         R6 K51 [{"container", "text", "icon"}]
      479 DUPTABLE                         R7 K4 [{"tag"}]
      480 LOADK                            R8 K57 ["gap-xsmall size-0-600 padding-x-small"]
      481 SETTABLEKS                       R8 R7 K3 ["tag"]
      483 SETTABLEKS                       R7 R6 K0 ["container"]
      485 DUPTABLE                         R7 K4 [{"tag"}]
      486 LOADK                            R8 K58 ["text-caption-medium"]
      487 SETTABLEKS                       R8 R7 K3 ["tag"]
      489 SETTABLEKS                       R7 R6 K1 ["text"]
      491 DUPTABLE                         R7 K55 [{"size"}]
      492 GETUPVAL                         R8 3
      493 GETTABLEKS                       R8 R8 K50 ["XSmall"]
      495 SETTABLEKS                       R8 R7 K54 ["size"]
      497 SETTABLEKS                       R7 R6 K12 ["icon"]
      499 SETTABLE                         R6 R4 R5
      500 GETUPVAL                         R5 2
      501 GETTABLEKS                       R5 R5 K59 ["Medium"]
      503 DUPTABLE                         R6 K51 [{"container", "text", "icon"}]
      504 DUPTABLE                         R7 K4 [{"tag"}]
      505 LOADK                            R8 K57 ["gap-xsmall size-0-600 padding-x-small"]
      506 SETTABLEKS                       R8 R7 K3 ["tag"]
      508 SETTABLEKS                       R7 R6 K0 ["container"]
      510 DUPTABLE                         R7 K4 [{"tag"}]
      511 LOADK                            R8 K58 ["text-caption-medium"]
      512 SETTABLEKS                       R8 R7 K3 ["tag"]
      514 SETTABLEKS                       R7 R6 K1 ["text"]
      516 DUPTABLE                         R7 K55 [{"size"}]
      517 GETUPVAL                         R8 3
      518 GETTABLEKS                       R8 R8 K50 ["XSmall"]
      520 SETTABLEKS                       R8 R7 K54 ["size"]
      522 SETTABLEKS                       R7 R6 K12 ["icon"]
      524 SETTABLE                         R6 R4 R5
      525 JUMP                             ; [+1]
      526 LOADNIL                          R4
      527 NEWTABLE                         R5 2 0
      529 GETUPVAL                         R6 4
      530 GETTABLEKS                       R6 R6 K60 ["Pill"]
      532 DUPTABLE                         R7 K47 [{"container"}]
      533 DUPTABLE                         R8 K4 [{"tag"}]
      534 LOADK                            R9 K61 ["radius-circle"]
      535 SETTABLEKS                       R9 R8 K3 ["tag"]
      537 SETTABLEKS                       R8 R7 K0 ["container"]
      539 SETTABLE                         R7 R5 R6
      540 GETUPVAL                         R6 4
      541 GETTABLEKS                       R6 R6 K62 ["Box"]
      543 DUPTABLE                         R7 K47 [{"container"}]
      544 DUPTABLE                         R8 K4 [{"tag"}]
      545 LOADK                            R9 K63 ["radius-small"]
      546 SETTABLEKS                       R9 R8 K3 ["tag"]
      548 SETTABLEKS                       R8 R7 K0 ["container"]
      550 SETTABLE                         R7 R5 R6
      551 GETUPVAL                         R7 0
      552 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      554 JUMPIFNOT                        R7 ; [+36]
      555 NEWTABLE                         R6 4 0
      557 GETUPVAL                         R7 5
      558 GETTABLEKS                       R7 R7 K64 ["Left"]
      560 DUPTABLE                         R8 K65 [{"text"}]
      561 DUPTABLE                         R9 K4 [{"tag"}]
      562 LOADK                            R10 K66 ["padding-right-xsmall"]
      563 SETTABLEKS                       R10 R9 K3 ["tag"]
      565 SETTABLEKS                       R9 R8 K1 ["text"]
      567 SETTABLE                         R8 R6 R7
      568 GETUPVAL                         R7 5
      569 GETTABLEKS                       R7 R7 K67 ["Right"]
      571 DUPTABLE                         R8 K65 [{"text"}]
      572 DUPTABLE                         R9 K4 [{"tag"}]
      573 LOADK                            R10 K68 ["padding-left-xsmall"]
      574 SETTABLEKS                       R10 R9 K3 ["tag"]
      576 SETTABLEKS                       R9 R8 K1 ["text"]
      578 SETTABLE                         R8 R6 R7
      579 GETUPVAL                         R7 6
      580 GETTABLEKS                       R7 R7 K69 ["None"]
      582 DUPTABLE                         R8 K65 [{"text"}]
      583 DUPTABLE                         R9 K4 [{"tag"}]
      584 LOADK                            R10 K70 ["padding-x-xsmall"]
      585 SETTABLEKS                       R10 R9 K3 ["tag"]
      587 SETTABLEKS                       R9 R8 K1 ["text"]
      589 SETTABLE                         R8 R6 R7
      590 JUMP                             ; [+1]
      591 LOADNIL                          R6
      592 DUPTABLE                         R7 K77 [{"common", "variants", "shapes", "iconOnly", "sizes", "iconPlacement"}]
      593 SETTABLEKS                       R1 R7 K71 ["common"]
      595 SETTABLEKS                       R2 R7 K72 ["variants"]
      597 SETTABLEKS                       R5 R7 K73 ["shapes"]
      599 GETUPVAL                         R9 0
      600 GETTABLEKS                       R9 R9 K5 ["FoundationBadgeBetaUpdate"]
      602 JUMPIFNOT                        R9 ; [+2]
      603 LOADNIL                          R8
      604 JUMP                             ; [+1]
      605 MOVE                             R8 R3
      606 SETTABLEKS                       R8 R7 K74 ["iconOnly"]
      608 SETTABLEKS                       R4 R7 K75 ["sizes"]
      610 SETTABLEKS                       R6 R7 K76 ["iconPlacement"]
      612 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useVariants"]
        3 LOADK                            R7 K1 ["Badge"]
        4 GETGLOBAL                        R8 K2 ["variantsFactory"]
        6 MOVE                             R9 R0
        7 CALL                             R6 3 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R8 R6 K3 ["common"]
       11 GETTABLEKS                       R10 R6 K4 ["variants"]
       13 GETTABLE                         R9 R10 R1
       14 GETTABLEKS                       R11 R6 K5 ["shapes"]
       16 GETTABLE                         R10 R11 R2
       17 GETUPVAL                         R12 2
       18 GETTABLEKS                       R12 R12 K6 ["FoundationBadgeBetaUpdate"]
       20 JUMPIFNOT                        R12 ; [+4]
       21 GETTABLEKS                       R12 R6 K7 ["sizes"]
       23 GETTABLE                         R11 R12 R3
       24 JUMP                             ; [+1]
       25 LOADNIL                          R11
       26 GETUPVAL                         R13 2
       27 GETTABLEKS                       R13 R13 K6 ["FoundationBadgeBetaUpdate"]
       29 JUMPIFNOT                        R13 ; [+10]
       30 GETTABLEKS                       R13 R6 K8 ["iconPlacement"]
       32 JUMPIFNOT                        R4 ; [+2]
       33 MOVE                             R14 R4
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R14 3
       36 GETTABLEKS                       R14 R14 K9 ["None"]
       38 GETTABLE                         R12 R13 R14
       39 JUMP                             ; [+1]
       40 LOADNIL                          R12
       41 GETUPVAL                         R14 2
       42 GETTABLEKS                       R14 R14 K6 ["FoundationBadgeBetaUpdate"]
       44 JUMPIFNOT                        R14 ; [+2]
       45 LOADNIL                          R13
       46 JUMP                             ; [+3]
       47 GETTABLEKS                       R14 R6 K10 ["iconOnly"]
       49 GETTABLE                         R13 R14 R5
       50 CALL                             R7 6 -1
       51 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["BadgeVariant"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["BadgeShape"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K7 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["BadgeSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Enums"]
       39 GETTABLEKS                       R7 R7 K12 ["IconPosition"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K7 ["Enums"]
       46 GETTABLEKS                       R8 R8 K13 ["IconSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Utility"]
       60 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Utility"]
       67 GETTABLEKS                       R11 R11 K18 ["Flags"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Providers"]
       74 GETTABLEKS                       R12 R12 K20 ["Style"]
       76 GETTABLEKS                       R12 R12 K21 ["Tokens"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K19 ["Providers"]
       83 GETTABLEKS                       R13 R13 K20 ["Style"]
       85 GETTABLEKS                       R13 R13 K22 ["VariantsContext"]
       87 CALL                             R12 1 1
       88 DUPCLOSURE                       R13 K23 [PROTO_0]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R3
       96 SETGLOBAL                        R13 K24 ["variantsFactory"]
       98 DUPCLOSURE                       R13 K25 [PROTO_1]
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 RETURN                           R13 1
