PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "segment", "text", "icon", "divider"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["row align-y-center auto-xy bg-surface-300"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K7 [{"tag"}]
        8 LOADK                            R3 K9 ["row align-y-center size-0-full auto-xy"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["segment"]
       13 DUPTABLE                         R2 K7 [{"tag"}]
       14 LOADK                            R3 K10 ["auto-x text-truncate-end content-emphasis"]
       15 SETTABLEKS                       R3 R2 K6 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["text"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K11 ["FoundationSegmentedControlIconSupport"]
       22 JUMPIFNOT                        R3 ; [+10]
       23 DUPTABLE                         R2 K13 [{"style"}]
       24 GETTABLEKS                       R3 R0 K14 ["Color"]
       26 GETTABLEKS                       R3 R3 K15 ["Content"]
       28 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       30 SETTABLEKS                       R3 R2 K12 ["style"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K3 ["icon"]
       36 DUPTABLE                         R2 K7 [{"tag"}]
       37 LOADK                            R3 K17 ["row"]
       38 SETTABLEKS                       R3 R2 K6 ["tag"]
       40 SETTABLEKS                       R2 R1 K4 ["divider"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K18 ["FoundationSegmentedControlCircular"]
       45 JUMPIFNOT                        R2 ; [+359]
       46 NEWTABLE                         R2 4 0
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K19 ["XSmall"]
       51 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       52 DUPTABLE                         R5 K7 [{"tag"}]
       53 NEWTABLE                         R6 2 0
       55 LOADB                            R7 1
       56 SETTABLEKS                       R7 R6 K20 ["size-600"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
       61 NOT                              R7 R8
       62 SETTABLEKS                       R7 R6 K22 ["padding-xsmall"]
       64 SETTABLEKS                       R6 R5 K6 ["tag"]
       66 SETTABLEKS                       R5 R4 K0 ["container"]
       68 DUPTABLE                         R5 K7 [{"tag"}]
       69 LOADK                            R6 K23 ["padding-small"]
       70 SETTABLEKS                       R6 R5 K6 ["tag"]
       72 SETTABLEKS                       R5 R4 K1 ["segment"]
       74 DUPTABLE                         R5 K7 [{"tag"}]
       75 LOADK                            R6 K24 ["text-caption-small"]
       76 SETTABLEKS                       R6 R5 K6 ["tag"]
       78 SETTABLEKS                       R5 R4 K2 ["text"]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
       83 JUMPIFNOT                        R6 ; [+7]
       84 DUPTABLE                         R5 K26 [{"size"}]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R6 R6 K27 ["Small"]
       88 SETTABLEKS                       R6 R5 K25 ["size"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R5
       92 SETTABLEKS                       R5 R4 K3 ["icon"]
       94 DUPTABLE                         R5 K29 [{"Size"}]
       95 GETIMPORT                        R6 K32 [UDim2.new]
       97 LOADN                            R7 0
       98 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      100 GETTABLEKS                       R8 R8 K34 ["Standard"]
      102 LOADN                            R9 1
      103 LOADN                            R10 0
      104 CALL                             R6 4 1
      105 SETTABLEKS                       R6 R5 K28 ["Size"]
      107 SETTABLEKS                       R5 R4 K4 ["divider"]
      109 SETTABLE                         R4 R2 R3
      110 GETUPVAL                         R3 1
      111 GETTABLEKS                       R3 R3 K27 ["Small"]
      113 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      114 DUPTABLE                         R5 K7 [{"tag"}]
      115 NEWTABLE                         R6 2 0
      117 LOADB                            R7 1
      118 SETTABLEKS                       R7 R6 K35 ["size-800"]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      123 NOT                              R7 R8
      124 SETTABLEKS                       R7 R6 K22 ["padding-xsmall"]
      126 SETTABLEKS                       R6 R5 K6 ["tag"]
      128 SETTABLEKS                       R5 R4 K0 ["container"]
      130 DUPTABLE                         R5 K7 [{"tag"}]
      131 LOADK                            R6 K23 ["padding-small"]
      132 SETTABLEKS                       R6 R5 K6 ["tag"]
      134 SETTABLEKS                       R5 R4 K1 ["segment"]
      136 DUPTABLE                         R5 K7 [{"tag"}]
      137 LOADK                            R6 K24 ["text-caption-small"]
      138 SETTABLEKS                       R6 R5 K6 ["tag"]
      140 SETTABLEKS                       R5 R4 K2 ["text"]
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      145 JUMPIFNOT                        R6 ; [+7]
      146 DUPTABLE                         R5 K26 [{"size"}]
      147 GETUPVAL                         R6 2
      148 GETTABLEKS                       R6 R6 K36 ["Medium"]
      150 SETTABLEKS                       R6 R5 K25 ["size"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R5
      154 SETTABLEKS                       R5 R4 K3 ["icon"]
      156 DUPTABLE                         R5 K29 [{"Size"}]
      157 GETIMPORT                        R6 K32 [UDim2.new]
      159 LOADN                            R7 0
      160 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      162 GETTABLEKS                       R8 R8 K34 ["Standard"]
      164 LOADN                            R9 1
      165 LOADN                            R10 0
      166 CALL                             R6 4 1
      167 SETTABLEKS                       R6 R5 K28 ["Size"]
      169 SETTABLEKS                       R5 R4 K4 ["divider"]
      171 SETTABLE                         R4 R2 R3
      172 GETUPVAL                         R3 1
      173 GETTABLEKS                       R3 R3 K36 ["Medium"]
      175 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      176 DUPTABLE                         R5 K7 [{"tag"}]
      177 LOADK                            R6 K37 ["size-1000 padding-xsmall"]
      178 SETTABLEKS                       R6 R5 K6 ["tag"]
      180 SETTABLEKS                       R5 R4 K0 ["container"]
      182 DUPTABLE                         R5 K7 [{"tag"}]
      183 LOADK                            R6 K23 ["padding-small"]
      184 SETTABLEKS                       R6 R5 K6 ["tag"]
      186 SETTABLEKS                       R5 R4 K1 ["segment"]
      188 DUPTABLE                         R5 K7 [{"tag"}]
      189 LOADK                            R6 K38 ["text-caption-medium"]
      190 SETTABLEKS                       R6 R5 K6 ["tag"]
      192 SETTABLEKS                       R5 R4 K2 ["text"]
      194 GETUPVAL                         R6 0
      195 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      197 JUMPIFNOT                        R6 ; [+7]
      198 DUPTABLE                         R5 K26 [{"size"}]
      199 GETUPVAL                         R6 2
      200 GETTABLEKS                       R6 R6 K36 ["Medium"]
      202 SETTABLEKS                       R6 R5 K25 ["size"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K3 ["icon"]
      208 DUPTABLE                         R5 K29 [{"Size"}]
      209 GETIMPORT                        R6 K32 [UDim2.new]
      211 LOADN                            R7 0
      212 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      214 GETTABLEKS                       R8 R8 K34 ["Standard"]
      216 LOADN                            R9 1
      217 LOADN                            R10 0
      218 CALL                             R6 4 1
      219 SETTABLEKS                       R6 R5 K28 ["Size"]
      221 SETTABLEKS                       R5 R4 K4 ["divider"]
      223 SETTABLE                         R4 R2 R3
      224 GETUPVAL                         R3 1
      225 GETTABLEKS                       R3 R3 K39 ["Large"]
      227 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      228 DUPTABLE                         R5 K7 [{"tag"}]
      229 LOADK                            R6 K40 ["size-1200 padding-xsmall"]
      230 SETTABLEKS                       R6 R5 K6 ["tag"]
      232 SETTABLEKS                       R5 R4 K0 ["container"]
      234 DUPTABLE                         R5 K7 [{"tag"}]
      235 LOADK                            R6 K41 ["padding-medium"]
      236 SETTABLEKS                       R6 R5 K6 ["tag"]
      238 SETTABLEKS                       R5 R4 K1 ["segment"]
      240 DUPTABLE                         R5 K7 [{"tag"}]
      241 LOADK                            R6 K38 ["text-caption-medium"]
      242 SETTABLEKS                       R6 R5 K6 ["tag"]
      244 SETTABLEKS                       R5 R4 K2 ["text"]
      246 GETUPVAL                         R6 0
      247 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      249 JUMPIFNOT                        R6 ; [+7]
      250 DUPTABLE                         R5 K26 [{"size"}]
      251 GETUPVAL                         R6 2
      252 GETTABLEKS                       R6 R6 K39 ["Large"]
      254 SETTABLEKS                       R6 R5 K25 ["size"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R5
      258 SETTABLEKS                       R5 R4 K3 ["icon"]
      260 DUPTABLE                         R5 K29 [{"Size"}]
      261 GETIMPORT                        R6 K32 [UDim2.new]
      263 LOADN                            R7 0
      264 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      266 GETTABLEKS                       R8 R8 K34 ["Standard"]
      268 LOADN                            R9 1
      269 LOADN                            R10 0
      270 CALL                             R6 4 1
      271 SETTABLEKS                       R6 R5 K28 ["Size"]
      273 SETTABLEKS                       R5 R4 K4 ["divider"]
      275 SETTABLE                         R4 R2 R3
      276 NEWTABLE                         R3 4 0
      278 GETUPVAL                         R4 1
      279 GETTABLEKS                       R4 R4 K19 ["XSmall"]
      281 DUPTABLE                         R5 K42 [{"container", "segment"}]
      282 DUPTABLE                         R6 K7 [{"tag"}]
      283 NEWTABLE                         R7 2 0
      285 GETUPVAL                         R8 0
      286 GETTABLEKS                       R8 R8 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      288 SETTABLEKS                       R8 R7 K43 ["radius-medium"]
      290 GETUPVAL                         R9 0
      291 GETTABLEKS                       R9 R9 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      293 NOT                              R8 R9
      294 SETTABLEKS                       R8 R7 K44 ["radius-small"]
      296 SETTABLEKS                       R7 R6 K6 ["tag"]
      298 SETTABLEKS                       R6 R5 K0 ["container"]
      300 DUPTABLE                         R6 K7 [{"tag"}]
      301 NEWTABLE                         R7 2 0
      303 GETUPVAL                         R8 0
      304 GETTABLEKS                       R8 R8 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      306 SETTABLEKS                       R8 R7 K43 ["radius-medium"]
      308 GETUPVAL                         R9 0
      309 GETTABLEKS                       R9 R9 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      311 NOT                              R8 R9
      312 SETTABLEKS                       R8 R7 K44 ["radius-small"]
      314 SETTABLEKS                       R7 R6 K6 ["tag"]
      316 SETTABLEKS                       R6 R5 K1 ["segment"]
      318 SETTABLE                         R5 R3 R4
      319 GETUPVAL                         R4 1
      320 GETTABLEKS                       R4 R4 K27 ["Small"]
      322 DUPTABLE                         R5 K42 [{"container", "segment"}]
      323 DUPTABLE                         R6 K7 [{"tag"}]
      324 LOADK                            R7 K43 ["radius-medium"]
      325 SETTABLEKS                       R7 R6 K6 ["tag"]
      327 SETTABLEKS                       R6 R5 K0 ["container"]
      329 DUPTABLE                         R6 K7 [{"tag"}]
      330 NEWTABLE                         R7 2 0
      332 GETUPVAL                         R8 0
      333 GETTABLEKS                       R8 R8 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      335 SETTABLEKS                       R8 R7 K43 ["radius-medium"]
      337 GETUPVAL                         R9 0
      338 GETTABLEKS                       R9 R9 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      340 NOT                              R8 R9
      341 SETTABLEKS                       R8 R7 K44 ["radius-small"]
      343 SETTABLEKS                       R7 R6 K6 ["tag"]
      345 SETTABLEKS                       R6 R5 K1 ["segment"]
      347 SETTABLE                         R5 R3 R4
      348 GETUPVAL                         R4 1
      349 GETTABLEKS                       R4 R4 K36 ["Medium"]
      351 DUPTABLE                         R5 K42 [{"container", "segment"}]
      352 DUPTABLE                         R6 K7 [{"tag"}]
      353 LOADK                            R7 K43 ["radius-medium"]
      354 SETTABLEKS                       R7 R6 K6 ["tag"]
      356 SETTABLEKS                       R6 R5 K0 ["container"]
      358 DUPTABLE                         R6 K7 [{"tag"}]
      359 LOADK                            R7 K44 ["radius-small"]
      360 SETTABLEKS                       R7 R6 K6 ["tag"]
      362 SETTABLEKS                       R6 R5 K1 ["segment"]
      364 SETTABLE                         R5 R3 R4
      365 GETUPVAL                         R4 1
      366 GETTABLEKS                       R4 R4 K39 ["Large"]
      368 DUPTABLE                         R5 K42 [{"container", "segment"}]
      369 DUPTABLE                         R6 K7 [{"tag"}]
      370 LOADK                            R7 K43 ["radius-medium"]
      371 SETTABLEKS                       R7 R6 K6 ["tag"]
      373 SETTABLEKS                       R6 R5 K0 ["container"]
      375 DUPTABLE                         R6 K7 [{"tag"}]
      376 LOADK                            R7 K44 ["radius-small"]
      377 SETTABLEKS                       R7 R6 K6 ["tag"]
      379 SETTABLEKS                       R6 R5 K1 ["segment"]
      381 SETTABLE                         R5 R3 R4
      382 DUPTABLE                         R4 K42 [{"container", "segment"}]
      383 DUPTABLE                         R5 K7 [{"tag"}]
      384 LOADK                            R6 K45 ["radius-circle"]
      385 SETTABLEKS                       R6 R5 K6 ["tag"]
      387 SETTABLEKS                       R5 R4 K0 ["container"]
      389 DUPTABLE                         R5 K7 [{"tag"}]
      390 LOADK                            R6 K45 ["radius-circle"]
      391 SETTABLEKS                       R6 R5 K6 ["tag"]
      393 SETTABLEKS                       R5 R4 K1 ["segment"]
      395 DUPTABLE                         R5 K50 [{"common", "sizes", "defaultRadius", "circularRadius"}]
      396 SETTABLEKS                       R1 R5 K46 ["common"]
      398 SETTABLEKS                       R2 R5 K47 ["sizes"]
      400 SETTABLEKS                       R3 R5 K48 ["defaultRadius"]
      402 SETTABLEKS                       R4 R5 K49 ["circularRadius"]
      404 RETURN                           R5 1
      405 NEWTABLE                         R2 4 0
      407 GETUPVAL                         R3 1
      408 GETTABLEKS                       R3 R3 K19 ["XSmall"]
      410 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      411 DUPTABLE                         R5 K7 [{"tag"}]
      412 GETUPVAL                         R7 0
      413 GETTABLEKS                       R7 R7 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      415 JUMPIFNOT                        R7 ; [+2]
      416 LOADK                            R6 K51 ["size-600 radius-medium"]
      417 JUMP                             ; [+1]
      418 LOADK                            R6 K52 ["size-600 padding-xsmall radius-small"]
      419 SETTABLEKS                       R6 R5 K6 ["tag"]
      421 SETTABLEKS                       R5 R4 K0 ["container"]
      423 DUPTABLE                         R5 K7 [{"tag"}]
      424 GETUPVAL                         R7 0
      425 GETTABLEKS                       R7 R7 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      427 JUMPIFNOT                        R7 ; [+2]
      428 LOADK                            R6 K53 ["padding-small radius-medium"]
      429 JUMP                             ; [+1]
      430 LOADK                            R6 K54 ["padding-small radius-small"]
      431 SETTABLEKS                       R6 R5 K6 ["tag"]
      433 SETTABLEKS                       R5 R4 K1 ["segment"]
      435 DUPTABLE                         R5 K7 [{"tag"}]
      436 LOADK                            R6 K24 ["text-caption-small"]
      437 SETTABLEKS                       R6 R5 K6 ["tag"]
      439 SETTABLEKS                       R5 R4 K2 ["text"]
      441 GETUPVAL                         R6 0
      442 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      444 JUMPIFNOT                        R6 ; [+7]
      445 DUPTABLE                         R5 K26 [{"size"}]
      446 GETUPVAL                         R6 2
      447 GETTABLEKS                       R6 R6 K27 ["Small"]
      449 SETTABLEKS                       R6 R5 K25 ["size"]
      451 JUMP                             ; [+1]
      452 LOADNIL                          R5
      453 SETTABLEKS                       R5 R4 K3 ["icon"]
      455 DUPTABLE                         R5 K29 [{"Size"}]
      456 GETIMPORT                        R6 K32 [UDim2.new]
      458 LOADN                            R7 0
      459 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      461 GETTABLEKS                       R8 R8 K34 ["Standard"]
      463 LOADN                            R9 1
      464 LOADN                            R10 0
      465 CALL                             R6 4 1
      466 SETTABLEKS                       R6 R5 K28 ["Size"]
      468 SETTABLEKS                       R5 R4 K4 ["divider"]
      470 SETTABLE                         R4 R2 R3
      471 GETUPVAL                         R3 1
      472 GETTABLEKS                       R3 R3 K27 ["Small"]
      474 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      475 DUPTABLE                         R5 K7 [{"tag"}]
      476 GETUPVAL                         R7 0
      477 GETTABLEKS                       R7 R7 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      479 JUMPIFNOT                        R7 ; [+2]
      480 LOADK                            R6 K55 ["size-800 radius-medium"]
      481 JUMP                             ; [+1]
      482 LOADK                            R6 K56 ["size-800 padding-xsmall radius-medium"]
      483 SETTABLEKS                       R6 R5 K6 ["tag"]
      485 SETTABLEKS                       R5 R4 K0 ["container"]
      487 DUPTABLE                         R5 K7 [{"tag"}]
      488 GETUPVAL                         R7 0
      489 GETTABLEKS                       R7 R7 K21 ["FoundationSegmentedControlSizePaddingUpdate"]
      491 JUMPIFNOT                        R7 ; [+2]
      492 LOADK                            R6 K53 ["padding-small radius-medium"]
      493 JUMP                             ; [+1]
      494 LOADK                            R6 K54 ["padding-small radius-small"]
      495 SETTABLEKS                       R6 R5 K6 ["tag"]
      497 SETTABLEKS                       R5 R4 K1 ["segment"]
      499 DUPTABLE                         R5 K7 [{"tag"}]
      500 LOADK                            R6 K24 ["text-caption-small"]
      501 SETTABLEKS                       R6 R5 K6 ["tag"]
      503 SETTABLEKS                       R5 R4 K2 ["text"]
      505 GETUPVAL                         R6 0
      506 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      508 JUMPIFNOT                        R6 ; [+7]
      509 DUPTABLE                         R5 K26 [{"size"}]
      510 GETUPVAL                         R6 2
      511 GETTABLEKS                       R6 R6 K36 ["Medium"]
      513 SETTABLEKS                       R6 R5 K25 ["size"]
      515 JUMP                             ; [+1]
      516 LOADNIL                          R5
      517 SETTABLEKS                       R5 R4 K3 ["icon"]
      519 DUPTABLE                         R5 K29 [{"Size"}]
      520 GETIMPORT                        R6 K32 [UDim2.new]
      522 LOADN                            R7 0
      523 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      525 GETTABLEKS                       R8 R8 K34 ["Standard"]
      527 LOADN                            R9 1
      528 LOADN                            R10 0
      529 CALL                             R6 4 1
      530 SETTABLEKS                       R6 R5 K28 ["Size"]
      532 SETTABLEKS                       R5 R4 K4 ["divider"]
      534 SETTABLE                         R4 R2 R3
      535 GETUPVAL                         R3 1
      536 GETTABLEKS                       R3 R3 K36 ["Medium"]
      538 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      539 DUPTABLE                         R5 K7 [{"tag"}]
      540 LOADK                            R6 K57 ["size-1000 padding-xsmall radius-medium"]
      541 SETTABLEKS                       R6 R5 K6 ["tag"]
      543 SETTABLEKS                       R5 R4 K0 ["container"]
      545 DUPTABLE                         R5 K7 [{"tag"}]
      546 LOADK                            R6 K54 ["padding-small radius-small"]
      547 SETTABLEKS                       R6 R5 K6 ["tag"]
      549 SETTABLEKS                       R5 R4 K1 ["segment"]
      551 DUPTABLE                         R5 K7 [{"tag"}]
      552 LOADK                            R6 K38 ["text-caption-medium"]
      553 SETTABLEKS                       R6 R5 K6 ["tag"]
      555 SETTABLEKS                       R5 R4 K2 ["text"]
      557 GETUPVAL                         R6 0
      558 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      560 JUMPIFNOT                        R6 ; [+7]
      561 DUPTABLE                         R5 K26 [{"size"}]
      562 GETUPVAL                         R6 2
      563 GETTABLEKS                       R6 R6 K36 ["Medium"]
      565 SETTABLEKS                       R6 R5 K25 ["size"]
      567 JUMP                             ; [+1]
      568 LOADNIL                          R5
      569 SETTABLEKS                       R5 R4 K3 ["icon"]
      571 DUPTABLE                         R5 K29 [{"Size"}]
      572 GETIMPORT                        R6 K32 [UDim2.new]
      574 LOADN                            R7 0
      575 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      577 GETTABLEKS                       R8 R8 K34 ["Standard"]
      579 LOADN                            R9 1
      580 LOADN                            R10 0
      581 CALL                             R6 4 1
      582 SETTABLEKS                       R6 R5 K28 ["Size"]
      584 SETTABLEKS                       R5 R4 K4 ["divider"]
      586 SETTABLE                         R4 R2 R3
      587 GETUPVAL                         R3 1
      588 GETTABLEKS                       R3 R3 K39 ["Large"]
      590 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      591 DUPTABLE                         R5 K7 [{"tag"}]
      592 LOADK                            R6 K58 ["size-1200 padding-xsmall radius-medium"]
      593 SETTABLEKS                       R6 R5 K6 ["tag"]
      595 SETTABLEKS                       R5 R4 K0 ["container"]
      597 DUPTABLE                         R5 K7 [{"tag"}]
      598 LOADK                            R6 K59 ["padding-medium radius-small"]
      599 SETTABLEKS                       R6 R5 K6 ["tag"]
      601 SETTABLEKS                       R5 R4 K1 ["segment"]
      603 DUPTABLE                         R5 K7 [{"tag"}]
      604 LOADK                            R6 K38 ["text-caption-medium"]
      605 SETTABLEKS                       R6 R5 K6 ["tag"]
      607 SETTABLEKS                       R5 R4 K2 ["text"]
      609 GETUPVAL                         R6 0
      610 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      612 JUMPIFNOT                        R6 ; [+7]
      613 DUPTABLE                         R5 K26 [{"size"}]
      614 GETUPVAL                         R6 2
      615 GETTABLEKS                       R6 R6 K39 ["Large"]
      617 SETTABLEKS                       R6 R5 K25 ["size"]
      619 JUMP                             ; [+1]
      620 LOADNIL                          R5
      621 SETTABLEKS                       R5 R4 K3 ["icon"]
      623 DUPTABLE                         R5 K29 [{"Size"}]
      624 GETIMPORT                        R6 K32 [UDim2.new]
      626 LOADN                            R7 0
      627 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      629 GETTABLEKS                       R8 R8 K34 ["Standard"]
      631 LOADN                            R9 1
      632 LOADN                            R10 0
      633 CALL                             R6 4 1
      634 SETTABLEKS                       R6 R5 K28 ["Size"]
      636 SETTABLEKS                       R5 R4 K4 ["divider"]
      638 SETTABLE                         R4 R2 R3
      639 DUPTABLE                         R3 K50 [{"common", "sizes", "defaultRadius", "circularRadius"}]
      640 SETTABLEKS                       R1 R3 K46 ["common"]
      642 SETTABLEKS                       R2 R3 K47 ["sizes"]
      644 LOADNIL                          R4
      645 SETTABLEKS                       R4 R3 K48 ["defaultRadius"]
      647 LOADNIL                          R4
      648 SETTABLEKS                       R4 R3 K49 ["circularRadius"]
      650 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["SegmentedControl"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["FoundationSegmentedControlCircular"]
       10 JUMPIFNOT                        R4 ; [+15]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R5 R3 K3 ["common"]
       14 GETTABLEKS                       R7 R3 K4 ["sizes"]
       16 GETTABLE                         R6 R7 R1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R7 R3 K5 ["circularRadius"]
       20 JUMP                             ; [+3]
       21 GETTABLEKS                       R8 R3 K6 ["defaultRadius"]
       23 GETTABLE                         R7 R8 R1
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R5 R3 K3 ["common"]
       29 GETTABLEKS                       R7 R3 K4 ["sizes"]
       31 GETTABLE                         R6 R7 R1
       32 CALL                             R4 2 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Utility"]
       39 GETTABLEKS                       R6 R6 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Providers"]
       55 GETTABLEKS                       R8 R8 K15 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 RETURN                           R9 1
