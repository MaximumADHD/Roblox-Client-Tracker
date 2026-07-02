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
       35 JUMPIFNOT                        R7 ; [+12]
       36 DUPTABLE                         R6 K19 [{["Color3"], ["Transparency"] = 0.8}]
       37 GETTABLEKS                       R7 R0 K20 ["Color"]
       39 GETTABLEKS                       R7 R7 K21 ["System"]
       41 GETTABLEKS                       R7 R7 K10 ["Alert"]
       43 GETTABLEKS                       R7 R7 K16 ["Color3"]
       45 SETTABLEKS                       R7 R6 K16 ["Color3"]
       47 JUMP                             ; [+6]
       48 GETTABLEKS                       R6 R0 K20 ["Color"]
       50 GETTABLEKS                       R6 R6 K21 ["System"]
       52 GETTABLEKS                       R6 R6 K10 ["Alert"]
       54 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
       56 SETTABLEKS                       R5 R4 K0 ["container"]
       58 DUPTABLE                         R5 K23 [{"style"}]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
       62 JUMPIFNOT                        R7 ; [+7]
       63 GETTABLEKS                       R6 R0 K20 ["Color"]
       65 GETTABLEKS                       R6 R6 K24 ["Content"]
       67 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
       69 JUMP                             ; [+6]
       70 GETTABLEKS                       R6 R0 K26 ["DarkMode"]
       72 GETTABLEKS                       R6 R6 K24 ["Content"]
       74 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
       76 SETTABLEKS                       R6 R5 K22 ["style"]
       78 SETTABLEKS                       R5 R4 K11 ["content"]
       80 DUPTABLE                         R5 K23 [{"style"}]
       81 GETTABLEKS                       R6 R0 K20 ["Color"]
       83 GETTABLEKS                       R6 R6 K21 ["System"]
       85 GETTABLEKS                       R6 R6 K10 ["Alert"]
       87 SETTABLEKS                       R6 R5 K22 ["style"]
       89 SETTABLEKS                       R5 R4 K12 ["icon"]
       91 SETTABLE                         R4 R2 R3
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K27 ["Success"]
       95 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
       96 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      100 JUMPIFNOT                        R7 ; [+12]
      101 DUPTABLE                         R6 K19 [{["Color3"], ["Transparency"] = 0.8}]
      102 GETTABLEKS                       R7 R0 K20 ["Color"]
      104 GETTABLEKS                       R7 R7 K21 ["System"]
      106 GETTABLEKS                       R7 R7 K27 ["Success"]
      108 GETTABLEKS                       R7 R7 K16 ["Color3"]
      110 SETTABLEKS                       R7 R6 K16 ["Color3"]
      112 JUMP                             ; [+6]
      113 GETTABLEKS                       R6 R0 K20 ["Color"]
      115 GETTABLEKS                       R6 R6 K21 ["System"]
      117 GETTABLEKS                       R6 R6 K27 ["Success"]
      119 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      121 SETTABLEKS                       R5 R4 K0 ["container"]
      123 DUPTABLE                         R5 K23 [{"style"}]
      124 GETUPVAL                         R7 0
      125 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      127 JUMPIFNOT                        R7 ; [+7]
      128 GETTABLEKS                       R6 R0 K20 ["Color"]
      130 GETTABLEKS                       R6 R6 K24 ["Content"]
      132 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      134 JUMP                             ; [+6]
      135 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      137 GETTABLEKS                       R6 R6 K24 ["Content"]
      139 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      141 SETTABLEKS                       R6 R5 K22 ["style"]
      143 SETTABLEKS                       R5 R4 K11 ["content"]
      145 DUPTABLE                         R5 K23 [{"style"}]
      146 GETTABLEKS                       R6 R0 K20 ["Color"]
      148 GETTABLEKS                       R6 R6 K21 ["System"]
      150 GETTABLEKS                       R6 R6 K27 ["Success"]
      152 SETTABLEKS                       R6 R5 K22 ["style"]
      154 SETTABLEKS                       R5 R4 K12 ["icon"]
      156 SETTABLE                         R4 R2 R3
      157 GETUPVAL                         R3 1
      158 GETTABLEKS                       R3 R3 K29 ["Warning"]
      160 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      161 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      162 GETUPVAL                         R7 0
      163 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      165 JUMPIFNOT                        R7 ; [+12]
      166 DUPTABLE                         R6 K19 [{["Color3"], ["Transparency"] = 0.8}]
      167 GETTABLEKS                       R7 R0 K20 ["Color"]
      169 GETTABLEKS                       R7 R7 K21 ["System"]
      171 GETTABLEKS                       R7 R7 K29 ["Warning"]
      173 GETTABLEKS                       R7 R7 K16 ["Color3"]
      175 SETTABLEKS                       R7 R6 K16 ["Color3"]
      177 JUMP                             ; [+6]
      178 GETTABLEKS                       R6 R0 K20 ["Color"]
      180 GETTABLEKS                       R6 R6 K21 ["System"]
      182 GETTABLEKS                       R6 R6 K29 ["Warning"]
      184 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      186 SETTABLEKS                       R5 R4 K0 ["container"]
      188 DUPTABLE                         R5 K23 [{"style"}]
      189 GETUPVAL                         R7 0
      190 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      192 JUMPIFNOT                        R7 ; [+7]
      193 GETTABLEKS                       R6 R0 K20 ["Color"]
      195 GETTABLEKS                       R6 R6 K24 ["Content"]
      197 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      199 JUMP                             ; [+6]
      200 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      202 GETTABLEKS                       R6 R6 K24 ["Content"]
      204 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      206 SETTABLEKS                       R6 R5 K22 ["style"]
      208 SETTABLEKS                       R5 R4 K11 ["content"]
      210 DUPTABLE                         R5 K23 [{"style"}]
      211 GETTABLEKS                       R6 R0 K20 ["Color"]
      213 GETTABLEKS                       R6 R6 K21 ["System"]
      215 GETTABLEKS                       R6 R6 K29 ["Warning"]
      217 SETTABLEKS                       R6 R5 K22 ["style"]
      219 SETTABLEKS                       R5 R4 K12 ["icon"]
      221 SETTABLE                         R4 R2 R3
      222 GETUPVAL                         R3 1
      223 GETTABLEKS                       R3 R3 K30 ["Contrast"]
      225 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      226 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      227 GETTABLEKS                       R6 R0 K20 ["Color"]
      229 GETTABLEKS                       R6 R6 K21 ["System"]
      231 GETTABLEKS                       R6 R6 K30 ["Contrast"]
      233 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      235 SETTABLEKS                       R5 R4 K0 ["container"]
      237 DUPTABLE                         R5 K23 [{"style"}]
      238 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      240 GETTABLEKS                       R6 R6 K24 ["Content"]
      242 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      244 SETTABLEKS                       R6 R5 K22 ["style"]
      246 SETTABLEKS                       R5 R4 K11 ["content"]
      248 DUPTABLE                         R5 K23 [{"style"}]
      249 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      251 GETTABLEKS                       R6 R6 K24 ["Content"]
      253 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      255 SETTABLEKS                       R6 R5 K22 ["style"]
      257 SETTABLEKS                       R5 R4 K12 ["icon"]
      259 SETTABLE                         R4 R2 R3
      260 GETUPVAL                         R3 1
      261 GETTABLEKS                       R3 R3 K32 ["Neutral"]
      263 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      264 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      265 GETUPVAL                         R7 0
      266 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      268 JUMPIFNOT                        R7 ; [+7]
      269 GETTABLEKS                       R6 R0 K20 ["Color"]
      271 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      273 GETTABLEKS                       R6 R6 K34 ["Background"]
      275 JUMP                             ; [+6]
      276 GETTABLEKS                       R6 R0 K20 ["Color"]
      278 GETTABLEKS                       R6 R6 K35 ["Shift"]
      280 GETTABLEKS                       R6 R6 K36 ["Shift_300"]
      282 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      284 SETTABLEKS                       R5 R4 K0 ["container"]
      286 DUPTABLE                         R5 K23 [{"style"}]
      287 GETUPVAL                         R7 0
      288 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      290 JUMPIFNOT                        R7 ; [+7]
      291 GETTABLEKS                       R6 R0 K20 ["Color"]
      293 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      295 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      297 JUMP                             ; [+6]
      298 GETTABLEKS                       R6 R0 K20 ["Color"]
      300 GETTABLEKS                       R6 R6 K24 ["Content"]
      302 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      304 SETTABLEKS                       R6 R5 K22 ["style"]
      306 SETTABLEKS                       R5 R4 K11 ["content"]
      308 DUPTABLE                         R5 K23 [{"style"}]
      309 GETTABLEKS                       R6 R0 K20 ["Color"]
      311 GETTABLEKS                       R6 R6 K33 ["ActionStandard"]
      313 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      315 SETTABLEKS                       R6 R5 K22 ["style"]
      317 SETTABLEKS                       R5 R4 K12 ["icon"]
      319 SETTABLE                         R4 R2 R3
      320 GETUPVAL                         R3 1
      321 GETTABLEKS                       R3 R3 K38 ["OverMedia"]
      323 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      324 DUPTABLE                         R5 K40 [{"backgroundStyle", "stroke"}]
      325 GETUPVAL                         R7 0
      326 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      328 JUMPIFNOT                        R7 ; [+7]
      329 GETTABLEKS                       R6 R0 K20 ["Color"]
      331 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      333 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      335 JUMP                             ; [+6]
      336 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      338 GETTABLEKS                       R6 R6 K42 ["Surface"]
      340 GETTABLEKS                       R6 R6 K43 ["Surface_100"]
      342 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      344 GETUPVAL                         R7 0
      345 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      347 JUMPIFNOT                        R7 ; [+2]
      348 LOADNIL                          R6
      349 JUMP                             ; [+21]
      350 DUPTABLE                         R6 K44 [{"Color", "Transparency"}]
      351 GETTABLEKS                       R7 R0 K28 ["LightMode"]
      353 GETTABLEKS                       R7 R7 K45 ["Stroke"]
      355 GETTABLEKS                       R7 R7 K46 ["Default"]
      357 GETTABLEKS                       R7 R7 K16 ["Color3"]
      359 SETTABLEKS                       R7 R6 K20 ["Color"]
      361 GETTABLEKS                       R7 R0 K28 ["LightMode"]
      363 GETTABLEKS                       R7 R7 K45 ["Stroke"]
      365 GETTABLEKS                       R7 R7 K46 ["Default"]
      367 GETTABLEKS                       R7 R7 K17 ["Transparency"]
      369 SETTABLEKS                       R7 R6 K17 ["Transparency"]
      371 SETTABLEKS                       R6 R5 K39 ["stroke"]
      373 SETTABLEKS                       R5 R4 K0 ["container"]
      375 DUPTABLE                         R5 K23 [{"style"}]
      376 GETUPVAL                         R7 0
      377 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      379 JUMPIFNOT                        R7 ; [+7]
      380 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      382 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      384 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      386 JUMP                             ; [+6]
      387 GETTABLEKS                       R6 R0 K28 ["LightMode"]
      389 GETTABLEKS                       R6 R6 K24 ["Content"]
      391 GETTABLEKS                       R6 R6 K25 ["Emphasis"]
      393 SETTABLEKS                       R6 R5 K22 ["style"]
      395 SETTABLEKS                       R5 R4 K11 ["content"]
      397 DUPTABLE                         R5 K23 [{"style"}]
      398 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      400 GETTABLEKS                       R6 R6 K38 ["OverMedia"]
      402 GETTABLEKS                       R6 R6 K41 ["OverMedia_0"]
      404 SETTABLEKS                       R6 R5 K22 ["style"]
      406 SETTABLEKS                       R5 R4 K12 ["icon"]
      408 SETTABLE                         R4 R2 R3
      409 GETUPVAL                         R3 1
      410 GETTABLEKS                       R3 R3 K25 ["Emphasis"]
      412 DUPTABLE                         R4 K13 [{"container", "content", "icon"}]
      413 DUPTABLE                         R5 K15 [{"backgroundStyle"}]
      414 GETTABLEKS                       R6 R0 K20 ["Color"]
      416 GETTABLEKS                       R6 R6 K47 ["ActionEmphasis"]
      418 GETTABLEKS                       R6 R6 K34 ["Background"]
      420 SETTABLEKS                       R6 R5 K14 ["backgroundStyle"]
      422 SETTABLEKS                       R5 R4 K0 ["container"]
      424 DUPTABLE                         R5 K23 [{"style"}]
      425 GETTABLEKS                       R6 R0 K20 ["Color"]
      427 GETTABLEKS                       R6 R6 K47 ["ActionEmphasis"]
      429 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      431 SETTABLEKS                       R6 R5 K22 ["style"]
      433 SETTABLEKS                       R5 R4 K11 ["content"]
      435 DUPTABLE                         R5 K23 [{"style"}]
      436 GETTABLEKS                       R6 R0 K20 ["Color"]
      438 GETTABLEKS                       R6 R6 K47 ["ActionEmphasis"]
      440 GETTABLEKS                       R6 R6 K37 ["Foreground"]
      442 SETTABLEKS                       R6 R5 K22 ["style"]
      444 SETTABLEKS                       R5 R4 K12 ["icon"]
      446 SETTABLE                         R4 R2 R3
      447 GETUPVAL                         R4 0
      448 GETTABLEKS                       R4 R4 K5 ["FoundationBadgeBetaUpdate"]
      450 JUMPIFNOT                        R4 ; [+2]
      451 LOADNIL                          R3
      452 JUMP                             ; [+14]
      453 NEWTABLE                         R3 2 0
      455 LOADB                            R4 1
      456 DUPTABLE                         R5 K48 [{"container"}]
      457 DUPTABLE                         R6 K50 [{["tag"] = "size-600"}]
      458 SETTABLEKS                       R6 R5 K0 ["container"]
      460 SETTABLE                         R5 R3 R4
      461 LOADB                            R4 0
      462 DUPTABLE                         R5 K48 [{"container"}]
      463 DUPTABLE                         R6 K52 [{["tag"] = "size-0-600 auto-x padding-x-small"}]
      464 SETTABLEKS                       R6 R5 K0 ["container"]
      466 SETTABLE                         R5 R3 R4
      467 GETUPVAL                         R5 0
      468 GETTABLEKS                       R5 R5 K5 ["FoundationBadgeBetaUpdate"]
      470 JUMPIFNOT                        R5 ; [+60]
      471 NEWTABLE                         R4 4 0
      473 GETUPVAL                         R5 2
      474 GETTABLEKS                       R5 R5 K53 ["XSmall"]
      476 DUPTABLE                         R6 K54 [{"container", "text", "icon"}]
      477 DUPTABLE                         R7 K56 [{["tag"] = "gap-xxsmall size-0-400 padding-x-xsmall"}]
      478 SETTABLEKS                       R7 R6 K0 ["container"]
      480 DUPTABLE                         R7 K58 [{["tag"] = "text-caption-small"}]
      481 SETTABLEKS                       R7 R6 K1 ["text"]
      483 DUPTABLE                         R7 K60 [{"size"}]
      484 GETUPVAL                         R8 3
      485 GETTABLEKS                       R8 R8 K53 ["XSmall"]
      487 SETTABLEKS                       R8 R7 K59 ["size"]
      489 SETTABLEKS                       R7 R6 K12 ["icon"]
      491 SETTABLE                         R6 R4 R5
      492 GETUPVAL                         R5 2
      493 GETTABLEKS                       R5 R5 K61 ["Small"]
      495 DUPTABLE                         R6 K54 [{"container", "text", "icon"}]
      496 DUPTABLE                         R7 K63 [{["tag"] = "gap-xsmall size-0-600 padding-x-small"}]
      497 SETTABLEKS                       R7 R6 K0 ["container"]
      499 DUPTABLE                         R7 K65 [{["tag"] = "text-caption-medium"}]
      500 SETTABLEKS                       R7 R6 K1 ["text"]
      502 DUPTABLE                         R7 K60 [{"size"}]
      503 GETUPVAL                         R8 3
      504 GETTABLEKS                       R8 R8 K53 ["XSmall"]
      506 SETTABLEKS                       R8 R7 K59 ["size"]
      508 SETTABLEKS                       R7 R6 K12 ["icon"]
      510 SETTABLE                         R6 R4 R5
      511 GETUPVAL                         R5 2
      512 GETTABLEKS                       R5 R5 K66 ["Medium"]
      514 DUPTABLE                         R6 K54 [{"container", "text", "icon"}]
      515 DUPTABLE                         R7 K63 [{["tag"] = "gap-xsmall size-0-600 padding-x-small"}]
      516 SETTABLEKS                       R7 R6 K0 ["container"]
      518 DUPTABLE                         R7 K65 [{["tag"] = "text-caption-medium"}]
      519 SETTABLEKS                       R7 R6 K1 ["text"]
      521 DUPTABLE                         R7 K60 [{"size"}]
      522 GETUPVAL                         R8 3
      523 GETTABLEKS                       R8 R8 K53 ["XSmall"]
      525 SETTABLEKS                       R8 R7 K59 ["size"]
      527 SETTABLEKS                       R7 R6 K12 ["icon"]
      529 SETTABLE                         R6 R4 R5
      530 JUMP                             ; [+1]
      531 LOADNIL                          R4
      532 NEWTABLE                         R5 2 0
      534 GETUPVAL                         R6 4
      535 GETTABLEKS                       R6 R6 K67 ["Pill"]
      537 DUPTABLE                         R7 K48 [{"container"}]
      538 DUPTABLE                         R8 K69 [{["tag"] = "radius-circle"}]
      539 SETTABLEKS                       R8 R7 K0 ["container"]
      541 SETTABLE                         R7 R5 R6
      542 GETUPVAL                         R6 4
      543 GETTABLEKS                       R6 R6 K70 ["Box"]
      545 DUPTABLE                         R7 K48 [{"container"}]
      546 DUPTABLE                         R8 K72 [{["tag"] = "radius-small"}]
      547 SETTABLEKS                       R8 R7 K0 ["container"]
      549 SETTABLE                         R7 R5 R6
      550 GETUPVAL                         R7 0
      551 GETTABLEKS                       R7 R7 K5 ["FoundationBadgeBetaUpdate"]
      553 JUMPIFNOT                        R7 ; [+27]
      554 NEWTABLE                         R6 4 0
      556 GETUPVAL                         R7 5
      557 GETTABLEKS                       R7 R7 K73 ["Left"]
      559 DUPTABLE                         R8 K74 [{"text"}]
      560 DUPTABLE                         R9 K76 [{["tag"] = "padding-right-xsmall"}]
      561 SETTABLEKS                       R9 R8 K1 ["text"]
      563 SETTABLE                         R8 R6 R7
      564 GETUPVAL                         R7 5
      565 GETTABLEKS                       R7 R7 K77 ["Right"]
      567 DUPTABLE                         R8 K74 [{"text"}]
      568 DUPTABLE                         R9 K79 [{["tag"] = "padding-left-xsmall"}]
      569 SETTABLEKS                       R9 R8 K1 ["text"]
      571 SETTABLE                         R8 R6 R7
      572 GETUPVAL                         R7 6
      573 GETTABLEKS                       R7 R7 K80 ["None"]
      575 DUPTABLE                         R8 K74 [{"text"}]
      576 DUPTABLE                         R9 K82 [{["tag"] = "padding-x-xsmall"}]
      577 SETTABLEKS                       R9 R8 K1 ["text"]
      579 SETTABLE                         R8 R6 R7
      580 JUMP                             ; [+1]
      581 LOADNIL                          R6
      582 DUPTABLE                         R7 K89 [{"common", "variants", "shapes", "iconOnly", "sizes", "iconPlacement"}]
      583 SETTABLEKS                       R1 R7 K83 ["common"]
      585 SETTABLEKS                       R2 R7 K84 ["variants"]
      587 SETTABLEKS                       R5 R7 K85 ["shapes"]
      589 GETUPVAL                         R9 0
      590 GETTABLEKS                       R9 R9 K5 ["FoundationBadgeBetaUpdate"]
      592 JUMPIFNOT                        R9 ; [+2]
      593 LOADNIL                          R8
      594 JUMP                             ; [+1]
      595 MOVE                             R8 R3
      596 SETTABLEKS                       R8 R7 K86 ["iconOnly"]
      598 SETTABLEKS                       R4 R7 K87 ["sizes"]
      600 SETTABLEKS                       R6 R7 K88 ["iconPlacement"]
      602 RETURN                           R7 1

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
