PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "segment", "text", "icon", "divider"}]
        1 DUPTABLE                         R2 K8 [{["tag"] = "row align-y-center auto-xy bg-surface-300"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K10 [{["tag"] = "row align-y-center size-0-full auto-xy"}]
        5 SETTABLEKS                       R2 R1 K1 ["segment"]
        7 DUPTABLE                         R2 K12 [{["tag"] = "auto-x text-truncate-end content-emphasis"}]
        8 SETTABLEKS                       R2 R1 K2 ["text"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K13 ["FoundationSegmentedControlIconSupport"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 DUPTABLE                         R2 K15 [{"style"}]
       15 GETTABLEKS                       R3 R0 K16 ["Color"]
       17 GETTABLEKS                       R3 R3 K17 ["Content"]
       19 GETTABLEKS                       R3 R3 K18 ["Emphasis"]
       21 SETTABLEKS                       R3 R2 K14 ["style"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K3 ["icon"]
       27 DUPTABLE                         R2 K20 [{["tag"] = "row"}]
       28 SETTABLEKS                       R2 R1 K4 ["divider"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K21 ["FoundationSegmentedControlCircular"]
       33 JUMPIFNOT                        R2 ; [+308]
       34 NEWTABLE                         R2 4 0
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       39 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       40 DUPTABLE                         R5 K23 [{"tag"}]
       41 NEWTABLE                         R6 2 0
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K24 ["size-600"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
       49 NOT                              R7 R8
       50 SETTABLEKS                       R7 R6 K26 ["padding-xsmall"]
       52 SETTABLEKS                       R6 R5 K6 ["tag"]
       54 SETTABLEKS                       R5 R4 K0 ["container"]
       56 DUPTABLE                         R5 K28 [{["tag"] = "padding-small"}]
       57 SETTABLEKS                       R5 R4 K1 ["segment"]
       59 DUPTABLE                         R5 K30 [{["tag"] = "text-caption-small"}]
       60 SETTABLEKS                       R5 R4 K2 ["text"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
       65 JUMPIFNOT                        R6 ; [+7]
       66 DUPTABLE                         R5 K32 [{"size"}]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K33 ["Small"]
       70 SETTABLEKS                       R6 R5 K31 ["size"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R5
       74 SETTABLEKS                       R5 R4 K3 ["icon"]
       76 DUPTABLE                         R5 K35 [{"Size"}]
       77 GETIMPORT                        R6 K38 [UDim2.new]
       79 LOADN                            R7 0
       80 GETTABLEKS                       R8 R0 K39 ["Stroke"]
       82 GETTABLEKS                       R8 R8 K40 ["Standard"]
       84 LOADN                            R9 1
       85 LOADN                            R10 0
       86 CALL                             R6 4 1
       87 SETTABLEKS                       R6 R5 K34 ["Size"]
       89 SETTABLEKS                       R5 R4 K4 ["divider"]
       91 SETTABLE                         R4 R2 R3
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K33 ["Small"]
       95 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       96 DUPTABLE                         R5 K23 [{"tag"}]
       97 NEWTABLE                         R6 2 0
       99 LOADB                            R7 1
      100 SETTABLEKS                       R7 R6 K41 ["size-800"]
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R8 R8 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      105 NOT                              R7 R8
      106 SETTABLEKS                       R7 R6 K26 ["padding-xsmall"]
      108 SETTABLEKS                       R6 R5 K6 ["tag"]
      110 SETTABLEKS                       R5 R4 K0 ["container"]
      112 DUPTABLE                         R5 K28 [{["tag"] = "padding-small"}]
      113 SETTABLEKS                       R5 R4 K1 ["segment"]
      115 DUPTABLE                         R5 K30 [{["tag"] = "text-caption-small"}]
      116 SETTABLEKS                       R5 R4 K2 ["text"]
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      121 JUMPIFNOT                        R6 ; [+7]
      122 DUPTABLE                         R5 K32 [{"size"}]
      123 GETUPVAL                         R6 2
      124 GETTABLEKS                       R6 R6 K42 ["Medium"]
      126 SETTABLEKS                       R6 R5 K31 ["size"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R5
      130 SETTABLEKS                       R5 R4 K3 ["icon"]
      132 DUPTABLE                         R5 K35 [{"Size"}]
      133 GETIMPORT                        R6 K38 [UDim2.new]
      135 LOADN                            R7 0
      136 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      138 GETTABLEKS                       R8 R8 K40 ["Standard"]
      140 LOADN                            R9 1
      141 LOADN                            R10 0
      142 CALL                             R6 4 1
      143 SETTABLEKS                       R6 R5 K34 ["Size"]
      145 SETTABLEKS                       R5 R4 K4 ["divider"]
      147 SETTABLE                         R4 R2 R3
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R3 R3 K42 ["Medium"]
      151 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      152 DUPTABLE                         R5 K44 [{["tag"] = "size-1000 padding-xsmall"}]
      153 SETTABLEKS                       R5 R4 K0 ["container"]
      155 DUPTABLE                         R5 K28 [{["tag"] = "padding-small"}]
      156 SETTABLEKS                       R5 R4 K1 ["segment"]
      158 DUPTABLE                         R5 K46 [{["tag"] = "text-caption-medium"}]
      159 SETTABLEKS                       R5 R4 K2 ["text"]
      161 GETUPVAL                         R6 0
      162 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      164 JUMPIFNOT                        R6 ; [+7]
      165 DUPTABLE                         R5 K32 [{"size"}]
      166 GETUPVAL                         R6 2
      167 GETTABLEKS                       R6 R6 K42 ["Medium"]
      169 SETTABLEKS                       R6 R5 K31 ["size"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R5
      173 SETTABLEKS                       R5 R4 K3 ["icon"]
      175 DUPTABLE                         R5 K35 [{"Size"}]
      176 GETIMPORT                        R6 K38 [UDim2.new]
      178 LOADN                            R7 0
      179 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      181 GETTABLEKS                       R8 R8 K40 ["Standard"]
      183 LOADN                            R9 1
      184 LOADN                            R10 0
      185 CALL                             R6 4 1
      186 SETTABLEKS                       R6 R5 K34 ["Size"]
      188 SETTABLEKS                       R5 R4 K4 ["divider"]
      190 SETTABLE                         R4 R2 R3
      191 GETUPVAL                         R3 1
      192 GETTABLEKS                       R3 R3 K47 ["Large"]
      194 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      195 DUPTABLE                         R5 K49 [{["tag"] = "size-1200 padding-xsmall"}]
      196 SETTABLEKS                       R5 R4 K0 ["container"]
      198 DUPTABLE                         R5 K51 [{["tag"] = "padding-medium"}]
      199 SETTABLEKS                       R5 R4 K1 ["segment"]
      201 DUPTABLE                         R5 K46 [{["tag"] = "text-caption-medium"}]
      202 SETTABLEKS                       R5 R4 K2 ["text"]
      204 GETUPVAL                         R6 0
      205 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      207 JUMPIFNOT                        R6 ; [+7]
      208 DUPTABLE                         R5 K32 [{"size"}]
      209 GETUPVAL                         R6 2
      210 GETTABLEKS                       R6 R6 K47 ["Large"]
      212 SETTABLEKS                       R6 R5 K31 ["size"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R5
      216 SETTABLEKS                       R5 R4 K3 ["icon"]
      218 DUPTABLE                         R5 K35 [{"Size"}]
      219 GETIMPORT                        R6 K38 [UDim2.new]
      221 LOADN                            R7 0
      222 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      224 GETTABLEKS                       R8 R8 K40 ["Standard"]
      226 LOADN                            R9 1
      227 LOADN                            R10 0
      228 CALL                             R6 4 1
      229 SETTABLEKS                       R6 R5 K34 ["Size"]
      231 SETTABLEKS                       R5 R4 K4 ["divider"]
      233 SETTABLE                         R4 R2 R3
      234 NEWTABLE                         R3 4 0
      236 GETUPVAL                         R4 1
      237 GETTABLEKS                       R4 R4 K22 ["XSmall"]
      239 DUPTABLE                         R5 K52 [{"container", "segment"}]
      240 DUPTABLE                         R6 K23 [{"tag"}]
      241 NEWTABLE                         R7 2 0
      243 GETUPVAL                         R8 0
      244 GETTABLEKS                       R8 R8 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      246 SETTABLEKS                       R8 R7 K53 ["radius-medium"]
      248 GETUPVAL                         R9 0
      249 GETTABLEKS                       R9 R9 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      251 NOT                              R8 R9
      252 SETTABLEKS                       R8 R7 K54 ["radius-small"]
      254 SETTABLEKS                       R7 R6 K6 ["tag"]
      256 SETTABLEKS                       R6 R5 K0 ["container"]
      258 DUPTABLE                         R6 K23 [{"tag"}]
      259 NEWTABLE                         R7 2 0
      261 GETUPVAL                         R8 0
      262 GETTABLEKS                       R8 R8 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      264 SETTABLEKS                       R8 R7 K53 ["radius-medium"]
      266 GETUPVAL                         R9 0
      267 GETTABLEKS                       R9 R9 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      269 NOT                              R8 R9
      270 SETTABLEKS                       R8 R7 K54 ["radius-small"]
      272 SETTABLEKS                       R7 R6 K6 ["tag"]
      274 SETTABLEKS                       R6 R5 K1 ["segment"]
      276 SETTABLE                         R5 R3 R4
      277 GETUPVAL                         R4 1
      278 GETTABLEKS                       R4 R4 K33 ["Small"]
      280 DUPTABLE                         R5 K52 [{"container", "segment"}]
      281 DUPTABLE                         R6 K55 [{["tag"] = "radius-medium"}]
      282 SETTABLEKS                       R6 R5 K0 ["container"]
      284 DUPTABLE                         R6 K23 [{"tag"}]
      285 NEWTABLE                         R7 2 0
      287 GETUPVAL                         R8 0
      288 GETTABLEKS                       R8 R8 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      290 SETTABLEKS                       R8 R7 K53 ["radius-medium"]
      292 GETUPVAL                         R9 0
      293 GETTABLEKS                       R9 R9 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      295 NOT                              R8 R9
      296 SETTABLEKS                       R8 R7 K54 ["radius-small"]
      298 SETTABLEKS                       R7 R6 K6 ["tag"]
      300 SETTABLEKS                       R6 R5 K1 ["segment"]
      302 SETTABLE                         R5 R3 R4
      303 GETUPVAL                         R4 1
      304 GETTABLEKS                       R4 R4 K42 ["Medium"]
      306 DUPTABLE                         R5 K52 [{"container", "segment"}]
      307 DUPTABLE                         R6 K55 [{["tag"] = "radius-medium"}]
      308 SETTABLEKS                       R6 R5 K0 ["container"]
      310 DUPTABLE                         R6 K56 [{["tag"] = "radius-small"}]
      311 SETTABLEKS                       R6 R5 K1 ["segment"]
      313 SETTABLE                         R5 R3 R4
      314 GETUPVAL                         R4 1
      315 GETTABLEKS                       R4 R4 K47 ["Large"]
      317 DUPTABLE                         R5 K52 [{"container", "segment"}]
      318 DUPTABLE                         R6 K55 [{["tag"] = "radius-medium"}]
      319 SETTABLEKS                       R6 R5 K0 ["container"]
      321 DUPTABLE                         R6 K56 [{["tag"] = "radius-small"}]
      322 SETTABLEKS                       R6 R5 K1 ["segment"]
      324 SETTABLE                         R5 R3 R4
      325 DUPTABLE                         R4 K52 [{"container", "segment"}]
      326 DUPTABLE                         R5 K58 [{["tag"] = "radius-circle"}]
      327 SETTABLEKS                       R5 R4 K0 ["container"]
      329 DUPTABLE                         R5 K58 [{["tag"] = "radius-circle"}]
      330 SETTABLEKS                       R5 R4 K1 ["segment"]
      332 DUPTABLE                         R5 K63 [{"common", "sizes", "defaultRadius", "circularRadius"}]
      333 SETTABLEKS                       R1 R5 K59 ["common"]
      335 SETTABLEKS                       R2 R5 K60 ["sizes"]
      337 SETTABLEKS                       R3 R5 K61 ["defaultRadius"]
      339 SETTABLEKS                       R4 R5 K62 ["circularRadius"]
      341 RETURN                           R5 1
      342 NEWTABLE                         R2 4 0
      344 GETUPVAL                         R3 1
      345 GETTABLEKS                       R3 R3 K22 ["XSmall"]
      347 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      348 DUPTABLE                         R5 K23 [{"tag"}]
      349 GETUPVAL                         R7 0
      350 GETTABLEKS                       R7 R7 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      352 JUMPIFNOT                        R7 ; [+2]
      353 LOADK                            R6 K64 ["size-600 radius-medium"]
      354 JUMP                             ; [+1]
      355 LOADK                            R6 K65 ["size-600 padding-xsmall radius-small"]
      356 SETTABLEKS                       R6 R5 K6 ["tag"]
      358 SETTABLEKS                       R5 R4 K0 ["container"]
      360 DUPTABLE                         R5 K23 [{"tag"}]
      361 GETUPVAL                         R7 0
      362 GETTABLEKS                       R7 R7 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      364 JUMPIFNOT                        R7 ; [+2]
      365 LOADK                            R6 K66 ["padding-small radius-medium"]
      366 JUMP                             ; [+1]
      367 LOADK                            R6 K67 ["padding-small radius-small"]
      368 SETTABLEKS                       R6 R5 K6 ["tag"]
      370 SETTABLEKS                       R5 R4 K1 ["segment"]
      372 DUPTABLE                         R5 K30 [{["tag"] = "text-caption-small"}]
      373 SETTABLEKS                       R5 R4 K2 ["text"]
      375 GETUPVAL                         R6 0
      376 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      378 JUMPIFNOT                        R6 ; [+7]
      379 DUPTABLE                         R5 K32 [{"size"}]
      380 GETUPVAL                         R6 2
      381 GETTABLEKS                       R6 R6 K33 ["Small"]
      383 SETTABLEKS                       R6 R5 K31 ["size"]
      385 JUMP                             ; [+1]
      386 LOADNIL                          R5
      387 SETTABLEKS                       R5 R4 K3 ["icon"]
      389 DUPTABLE                         R5 K35 [{"Size"}]
      390 GETIMPORT                        R6 K38 [UDim2.new]
      392 LOADN                            R7 0
      393 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      395 GETTABLEKS                       R8 R8 K40 ["Standard"]
      397 LOADN                            R9 1
      398 LOADN                            R10 0
      399 CALL                             R6 4 1
      400 SETTABLEKS                       R6 R5 K34 ["Size"]
      402 SETTABLEKS                       R5 R4 K4 ["divider"]
      404 SETTABLE                         R4 R2 R3
      405 GETUPVAL                         R3 1
      406 GETTABLEKS                       R3 R3 K33 ["Small"]
      408 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      409 DUPTABLE                         R5 K23 [{"tag"}]
      410 GETUPVAL                         R7 0
      411 GETTABLEKS                       R7 R7 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      413 JUMPIFNOT                        R7 ; [+2]
      414 LOADK                            R6 K68 ["size-800 radius-medium"]
      415 JUMP                             ; [+1]
      416 LOADK                            R6 K69 ["size-800 padding-xsmall radius-medium"]
      417 SETTABLEKS                       R6 R5 K6 ["tag"]
      419 SETTABLEKS                       R5 R4 K0 ["container"]
      421 DUPTABLE                         R5 K23 [{"tag"}]
      422 GETUPVAL                         R7 0
      423 GETTABLEKS                       R7 R7 K25 ["FoundationSegmentedControlSizePaddingUpdate"]
      425 JUMPIFNOT                        R7 ; [+2]
      426 LOADK                            R6 K66 ["padding-small radius-medium"]
      427 JUMP                             ; [+1]
      428 LOADK                            R6 K67 ["padding-small radius-small"]
      429 SETTABLEKS                       R6 R5 K6 ["tag"]
      431 SETTABLEKS                       R5 R4 K1 ["segment"]
      433 DUPTABLE                         R5 K30 [{["tag"] = "text-caption-small"}]
      434 SETTABLEKS                       R5 R4 K2 ["text"]
      436 GETUPVAL                         R6 0
      437 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      439 JUMPIFNOT                        R6 ; [+7]
      440 DUPTABLE                         R5 K32 [{"size"}]
      441 GETUPVAL                         R6 2
      442 GETTABLEKS                       R6 R6 K42 ["Medium"]
      444 SETTABLEKS                       R6 R5 K31 ["size"]
      446 JUMP                             ; [+1]
      447 LOADNIL                          R5
      448 SETTABLEKS                       R5 R4 K3 ["icon"]
      450 DUPTABLE                         R5 K35 [{"Size"}]
      451 GETIMPORT                        R6 K38 [UDim2.new]
      453 LOADN                            R7 0
      454 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      456 GETTABLEKS                       R8 R8 K40 ["Standard"]
      458 LOADN                            R9 1
      459 LOADN                            R10 0
      460 CALL                             R6 4 1
      461 SETTABLEKS                       R6 R5 K34 ["Size"]
      463 SETTABLEKS                       R5 R4 K4 ["divider"]
      465 SETTABLE                         R4 R2 R3
      466 GETUPVAL                         R3 1
      467 GETTABLEKS                       R3 R3 K42 ["Medium"]
      469 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      470 DUPTABLE                         R5 K71 [{["tag"] = "size-1000 padding-xsmall radius-medium"}]
      471 SETTABLEKS                       R5 R4 K0 ["container"]
      473 DUPTABLE                         R5 K72 [{["tag"] = "padding-small radius-small"}]
      474 SETTABLEKS                       R5 R4 K1 ["segment"]
      476 DUPTABLE                         R5 K46 [{["tag"] = "text-caption-medium"}]
      477 SETTABLEKS                       R5 R4 K2 ["text"]
      479 GETUPVAL                         R6 0
      480 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      482 JUMPIFNOT                        R6 ; [+7]
      483 DUPTABLE                         R5 K32 [{"size"}]
      484 GETUPVAL                         R6 2
      485 GETTABLEKS                       R6 R6 K42 ["Medium"]
      487 SETTABLEKS                       R6 R5 K31 ["size"]
      489 JUMP                             ; [+1]
      490 LOADNIL                          R5
      491 SETTABLEKS                       R5 R4 K3 ["icon"]
      493 DUPTABLE                         R5 K35 [{"Size"}]
      494 GETIMPORT                        R6 K38 [UDim2.new]
      496 LOADN                            R7 0
      497 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      499 GETTABLEKS                       R8 R8 K40 ["Standard"]
      501 LOADN                            R9 1
      502 LOADN                            R10 0
      503 CALL                             R6 4 1
      504 SETTABLEKS                       R6 R5 K34 ["Size"]
      506 SETTABLEKS                       R5 R4 K4 ["divider"]
      508 SETTABLE                         R4 R2 R3
      509 GETUPVAL                         R3 1
      510 GETTABLEKS                       R3 R3 K47 ["Large"]
      512 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      513 DUPTABLE                         R5 K74 [{["tag"] = "size-1200 padding-xsmall radius-medium"}]
      514 SETTABLEKS                       R5 R4 K0 ["container"]
      516 DUPTABLE                         R5 K76 [{["tag"] = "padding-medium radius-small"}]
      517 SETTABLEKS                       R5 R4 K1 ["segment"]
      519 DUPTABLE                         R5 K46 [{["tag"] = "text-caption-medium"}]
      520 SETTABLEKS                       R5 R4 K2 ["text"]
      522 GETUPVAL                         R6 0
      523 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      525 JUMPIFNOT                        R6 ; [+7]
      526 DUPTABLE                         R5 K32 [{"size"}]
      527 GETUPVAL                         R6 2
      528 GETTABLEKS                       R6 R6 K47 ["Large"]
      530 SETTABLEKS                       R6 R5 K31 ["size"]
      532 JUMP                             ; [+1]
      533 LOADNIL                          R5
      534 SETTABLEKS                       R5 R4 K3 ["icon"]
      536 DUPTABLE                         R5 K35 [{"Size"}]
      537 GETIMPORT                        R6 K38 [UDim2.new]
      539 LOADN                            R7 0
      540 GETTABLEKS                       R8 R0 K39 ["Stroke"]
      542 GETTABLEKS                       R8 R8 K40 ["Standard"]
      544 LOADN                            R9 1
      545 LOADN                            R10 0
      546 CALL                             R6 4 1
      547 SETTABLEKS                       R6 R5 K34 ["Size"]
      549 SETTABLEKS                       R5 R4 K4 ["divider"]
      551 SETTABLE                         R4 R2 R3
      552 DUPTABLE                         R3 K78 [{["common"], ["sizes"], ["defaultRadius"] = , ["circularRadius"] = }]
      553 SETTABLEKS                       R1 R3 K59 ["common"]
      555 SETTABLEKS                       R2 R3 K60 ["sizes"]
      557 RETURN                           R3 1

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
