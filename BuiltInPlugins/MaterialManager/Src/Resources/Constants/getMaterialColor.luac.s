PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 GETTABLEKS                       R2 R3 K0 ["Color"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 NEWTABLE                         R1 64 0
       13 GETIMPORT                        R2 K6 [Enum.Material.Asphalt]
       15 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
       16 GETIMPORT                        R4 K12 [Color3.fromRGB]
       18 LOADN                            R5 55
       19 LOADN                            R6 56
       20 LOADN                            R7 56
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K7 ["Color"]
       24 GETIMPORT                        R4 K12 [Color3.fromRGB]
       26 LOADN                            R5 115
       27 LOADN                            R6 123
       28 LOADN                            R7 107
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K8 ["OldColor"]
       32 SETTABLE                         R3 R1 R2
       33 GETIMPORT                        R2 K14 [Enum.Material.Basalt]
       35 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
       36 GETIMPORT                        R4 K12 [Color3.fromRGB]
       38 LOADN                            R5 43
       39 LOADN                            R6 44
       40 LOADN                            R7 35
       41 CALL                             R4 3 1
       42 SETTABLEKS                       R4 R3 K7 ["Color"]
       44 GETIMPORT                        R4 K12 [Color3.fromRGB]
       46 LOADN                            R5 30
       47 LOADN                            R6 30
       48 LOADN                            R7 37
       49 CALL                             R4 3 1
       50 SETTABLEKS                       R4 R3 K8 ["OldColor"]
       52 SETTABLE                         R3 R1 R2
       53 GETIMPORT                        R2 K16 [Enum.Material.Brick]
       55 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
       56 GETIMPORT                        R4 K12 [Color3.fromRGB]
       58 LOADN                            R5 121
       59 LOADN                            R6 86
       60 LOADN                            R7 70
       61 CALL                             R4 3 1
       62 SETTABLEKS                       R4 R3 K7 ["Color"]
       64 GETIMPORT                        R4 K12 [Color3.fromRGB]
       66 LOADN                            R5 198
       67 LOADN                            R6 195
       68 LOADN                            R7 194
       69 CALL                             R4 3 1
       70 SETTABLEKS                       R4 R3 K8 ["OldColor"]
       72 SETTABLE                         R3 R1 R2
       73 GETIMPORT                        R2 K18 [Enum.Material.Cardboard]
       75 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
       76 GETIMPORT                        R4 K12 [Color3.fromRGB]
       78 LOADN                            R5 255
       79 LOADN                            R6 206
       80 LOADN                            R7 152
       81 CALL                             R4 3 1
       82 SETTABLEKS                       R4 R3 K7 ["Color"]
       84 GETIMPORT                        R4 K12 [Color3.fromRGB]
       86 LOADN                            R5 255
       87 LOADN                            R6 206
       88 LOADN                            R7 152
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R3 K8 ["OldColor"]
       92 SETTABLE                         R3 R1 R2
       93 GETIMPORT                        R2 K20 [Enum.Material.Carpet]
       95 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
       96 GETIMPORT                        R4 K12 [Color3.fromRGB]
       98 LOADN                            R5 163
       99 LOADN                            R6 162
      100 LOADN                            R7 165
      101 CALL                             R4 3 1
      102 SETTABLEKS                       R4 R3 K7 ["Color"]
      104 GETIMPORT                        R4 K12 [Color3.fromRGB]
      106 LOADN                            R5 163
      107 LOADN                            R6 162
      108 LOADN                            R7 165
      109 CALL                             R4 3 1
      110 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      112 SETTABLE                         R3 R1 R2
      113 GETIMPORT                        R2 K22 [Enum.Material.CeramicTiles]
      115 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      116 GETIMPORT                        R4 K12 [Color3.fromRGB]
      118 LOADN                            R5 181
      119 LOADN                            R6 173
      120 LOADN                            R7 156
      121 CALL                             R4 3 1
      122 SETTABLEKS                       R4 R3 K7 ["Color"]
      124 GETIMPORT                        R4 K12 [Color3.fromRGB]
      126 LOADN                            R5 181
      127 LOADN                            R6 173
      128 LOADN                            R7 156
      129 CALL                             R4 3 1
      130 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      132 SETTABLE                         R3 R1 R2
      133 GETIMPORT                        R2 K24 [Enum.Material.ClayRoofTiles]
      135 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      136 GETIMPORT                        R4 K12 [Color3.fromRGB]
      138 LOADN                            R5 255
      139 LOADN                            R6 142
      140 LOADN                            R7 87
      141 CALL                             R4 3 1
      142 SETTABLEKS                       R4 R3 K7 ["Color"]
      144 GETIMPORT                        R4 K12 [Color3.fromRGB]
      146 LOADN                            R5 255
      147 LOADN                            R6 142
      148 LOADN                            R7 87
      149 CALL                             R4 3 1
      150 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      152 SETTABLE                         R3 R1 R2
      153 GETIMPORT                        R2 K26 [Enum.Material.Cobblestone]
      155 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      156 GETIMPORT                        R4 K12 [Color3.fromRGB]
      158 LOADN                            R5 101
      159 LOADN                            R6 92
      160 LOADN                            R7 63
      161 CALL                             R4 3 1
      162 SETTABLEKS                       R4 R3 K7 ["Color"]
      164 GETIMPORT                        R4 K12 [Color3.fromRGB]
      166 LOADN                            R5 207
      167 LOADN                            R6 193
      168 LOADN                            R7 180
      169 CALL                             R4 3 1
      170 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      172 SETTABLE                         R3 R1 R2
      173 GETIMPORT                        R2 K28 [Enum.Material.Concrete]
      175 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      176 GETIMPORT                        R4 K12 [Color3.fromRGB]
      178 LOADN                            R5 107
      179 LOADN                            R6 103
      180 LOADN                            R7 98
      181 CALL                             R4 3 1
      182 SETTABLEKS                       R4 R3 K7 ["Color"]
      184 GETIMPORT                        R4 K12 [Color3.fromRGB]
      186 LOADN                            R5 203
      187 LOADN                            R6 203
      188 LOADN                            R7 203
      189 CALL                             R4 3 1
      190 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      192 SETTABLE                         R3 R1 R2
      193 GETIMPORT                        R2 K30 [Enum.Material.CorrodedMetal]
      195 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      196 GETIMPORT                        R4 K12 [Color3.fromRGB]
      198 LOADN                            R5 147
      199 LOADN                            R6 106
      200 LOADN                            R7 88
      201 CALL                             R4 3 1
      202 SETTABLEKS                       R4 R3 K7 ["Color"]
      204 GETIMPORT                        R4 K12 [Color3.fromRGB]
      206 LOADN                            R5 150
      207 LOADN                            R6 109
      208 LOADN                            R7 86
      209 CALL                             R4 3 1
      210 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      212 SETTABLE                         R3 R1 R2
      213 GETIMPORT                        R2 K32 [Enum.Material.CrackedLava]
      215 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      216 GETIMPORT                        R4 K12 [Color3.fromRGB]
      218 LOADN                            R5 67
      219 LOADN                            R6 39
      220 LOADN                            R7 41
      221 CALL                             R4 3 1
      222 SETTABLEKS                       R4 R3 K7 ["Color"]
      224 GETIMPORT                        R4 K12 [Color3.fromRGB]
      226 LOADN                            R5 232
      227 LOADN                            R6 156
      228 LOADN                            R7 74
      229 CALL                             R4 3 1
      230 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      232 SETTABLE                         R3 R1 R2
      233 GETIMPORT                        R2 K34 [Enum.Material.DiamondPlate]
      235 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      236 GETIMPORT                        R4 K12 [Color3.fromRGB]
      238 LOADN                            R5 204
      239 LOADN                            R6 203
      240 LOADN                            R7 202
      241 CALL                             R4 3 1
      242 SETTABLEKS                       R4 R3 K7 ["Color"]
      244 GETIMPORT                        R4 K12 [Color3.fromRGB]
      246 LOADN                            R5 161
      247 LOADN                            R6 161
      248 LOADN                            R7 161
      249 CALL                             R4 3 1
      250 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      252 SETTABLE                         R3 R1 R2
      253 GETIMPORT                        R2 K36 [Enum.Material.Fabric]
      255 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      256 GETIMPORT                        R4 K12 [Color3.fromRGB]
      258 LOADN                            R5 145
      259 LOADN                            R6 137
      260 LOADN                            R7 129
      261 CALL                             R4 3 1
      262 SETTABLEKS                       R4 R3 K7 ["Color"]
      264 GETIMPORT                        R4 K12 [Color3.fromRGB]
      266 LOADN                            R5 96
      267 LOADN                            R6 95
      268 LOADN                            R7 93
      269 CALL                             R4 3 1
      270 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      272 SETTABLE                         R3 R1 R2
      273 GETIMPORT                        R2 K38 [Enum.Material.Foil]
      275 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      276 GETIMPORT                        R4 K12 [Color3.fromRGB]
      278 LOADN                            R5 236
      279 LOADN                            R6 236
      280 LOADN                            R7 236
      281 CALL                             R4 3 1
      282 SETTABLEKS                       R4 R3 K7 ["Color"]
      284 GETIMPORT                        R4 K12 [Color3.fromRGB]
      286 LOADN                            R5 255
      287 LOADN                            R6 255
      288 LOADN                            R7 255
      289 CALL                             R4 3 1
      290 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      292 SETTABLE                         R3 R1 R2
      293 GETIMPORT                        R2 K40 [Enum.Material.Glacier]
      295 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      296 GETIMPORT                        R4 K12 [Color3.fromRGB]
      298 LOADN                            R5 175
      299 LOADN                            R6 217
      300 LOADN                            R7 228
      301 CALL                             R4 3 1
      302 SETTABLEKS                       R4 R3 K7 ["Color"]
      304 GETIMPORT                        R4 K12 [Color3.fromRGB]
      306 LOADN                            R5 101
      307 LOADN                            R6 176
      308 LOADN                            R7 234
      309 CALL                             R4 3 1
      310 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      312 SETTABLE                         R3 R1 R2
      313 GETIMPORT                        R2 K42 [Enum.Material.Granite]
      315 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      316 GETIMPORT                        R4 K12 [Color3.fromRGB]
      318 LOADN                            R5 88
      319 LOADN                            R6 78
      320 LOADN                            R7 68
      321 CALL                             R4 3 1
      322 SETTABLEKS                       R4 R3 K7 ["Color"]
      324 GETIMPORT                        R4 K12 [Color3.fromRGB]
      326 LOADN                            R5 104
      327 LOADN                            R6 104
      328 LOADN                            R7 104
      329 CALL                             R4 3 1
      330 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      332 SETTABLE                         R3 R1 R2
      333 GETIMPORT                        R2 K44 [Enum.Material.Grass]
      335 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      336 GETIMPORT                        R4 K12 [Color3.fromRGB]
      338 LOADN                            R5 71
      339 LOADN                            R6 77
      340 LOADN                            R7 37
      341 CALL                             R4 3 1
      342 SETTABLEKS                       R4 R3 K7 ["Color"]
      344 GETIMPORT                        R4 K12 [Color3.fromRGB]
      346 LOADN                            R5 157
      347 LOADN                            R6 157
      348 LOADN                            R7 150
      349 CALL                             R4 3 1
      350 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      352 SETTABLE                         R3 R1 R2
      353 GETIMPORT                        R2 K46 [Enum.Material.Ground]
      355 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      356 GETIMPORT                        R4 K12 [Color3.fromRGB]
      358 LOADN                            R5 74
      359 LOADN                            R6 67
      360 LOADN                            R7 46
      361 CALL                             R4 3 1
      362 SETTABLEKS                       R4 R3 K7 ["Color"]
      364 GETIMPORT                        R4 K12 [Color3.fromRGB]
      366 LOADN                            R5 112
      367 LOADN                            R6 87
      368 LOADN                            R7 43
      369 CALL                             R4 3 1
      370 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      372 SETTABLE                         R3 R1 R2
      373 GETIMPORT                        R2 K48 [Enum.Material.Ice]
      375 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      376 GETIMPORT                        R4 K12 [Color3.fromRGB]
      378 LOADN                            R5 195
      379 LOADN                            R6 224
      380 LOADN                            R7 239
      381 CALL                             R4 3 1
      382 SETTABLEKS                       R4 R3 K7 ["Color"]
      384 GETIMPORT                        R4 K12 [Color3.fromRGB]
      386 LOADN                            R5 255
      387 LOADN                            R6 255
      388 LOADN                            R7 255
      389 CALL                             R4 3 1
      390 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      392 SETTABLE                         R3 R1 R2
      393 GETIMPORT                        R2 K50 [Enum.Material.LeafyGrass]
      395 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      396 GETIMPORT                        R4 K12 [Color3.fromRGB]
      398 LOADN                            R5 74
      399 LOADN                            R6 72
      400 LOADN                            R7 35
      401 CALL                             R4 3 1
      402 SETTABLEKS                       R4 R3 K7 ["Color"]
      404 GETIMPORT                        R4 K12 [Color3.fromRGB]
      406 LOADN                            R5 115
      407 LOADN                            R6 132
      408 LOADN                            R7 74
      409 CALL                             R4 3 1
      410 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      412 SETTABLE                         R3 R1 R2
      413 GETIMPORT                        R2 K52 [Enum.Material.Leather]
      415 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      416 GETIMPORT                        R4 K12 [Color3.fromRGB]
      418 LOADN                            R5 110
      419 LOADN                            R6 73
      420 LOADN                            R7 53
      421 CALL                             R4 3 1
      422 SETTABLEKS                       R4 R3 K7 ["Color"]
      424 GETIMPORT                        R4 K12 [Color3.fromRGB]
      426 LOADN                            R5 110
      427 LOADN                            R6 73
      428 LOADN                            R7 53
      429 CALL                             R4 3 1
      430 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      432 SETTABLE                         R3 R1 R2
      433 GETIMPORT                        R2 K54 [Enum.Material.Limestone]
      435 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      436 GETIMPORT                        R4 K12 [Color3.fromRGB]
      438 LOADN                            R5 217
      439 LOADN                            R6 185
      440 LOADN                            R7 142
      441 CALL                             R4 3 1
      442 SETTABLEKS                       R4 R3 K7 ["Color"]
      444 GETIMPORT                        R4 K12 [Color3.fromRGB]
      446 LOADN                            R5 206
      447 LOADN                            R6 173
      448 LOADN                            R7 148
      449 CALL                             R4 3 1
      450 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      452 SETTABLE                         R3 R1 R2
      453 GETIMPORT                        R2 K56 [Enum.Material.Marble]
      455 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      456 GETIMPORT                        R4 K12 [Color3.fromRGB]
      458 LOADN                            R5 168
      459 LOADN                            R6 171
      460 LOADN                            R7 181
      461 CALL                             R4 3 1
      462 SETTABLEKS                       R4 R3 K7 ["Color"]
      464 GETIMPORT                        R4 K12 [Color3.fromRGB]
      466 LOADN                            R5 193
      467 LOADN                            R6 193
      468 LOADN                            R7 193
      469 CALL                             R4 3 1
      470 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      472 SETTABLE                         R3 R1 R2
      473 GETIMPORT                        R2 K58 [Enum.Material.Metal]
      475 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      476 GETIMPORT                        R4 K12 [Color3.fromRGB]
      478 LOADN                            R5 192
      479 LOADN                            R6 192
      480 LOADN                            R7 192
      481 CALL                             R4 3 1
      482 SETTABLEKS                       R4 R3 K7 ["Color"]
      484 GETIMPORT                        R4 K12 [Color3.fromRGB]
      486 LOADN                            R5 193
      487 LOADN                            R6 192
      488 LOADN                            R7 193
      489 CALL                             R4 3 1
      490 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      492 SETTABLE                         R3 R1 R2
      493 GETIMPORT                        R2 K60 [Enum.Material.Mud]
      495 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      496 GETIMPORT                        R4 K12 [Color3.fromRGB]
      498 LOADN                            R5 83
      499 LOADN                            R6 73
      500 LOADN                            R7 57
      501 CALL                             R4 3 1
      502 SETTABLEKS                       R4 R3 K7 ["Color"]
      504 GETIMPORT                        R4 K12 [Color3.fromRGB]
      506 LOADN                            R5 44
      507 LOADN                            R6 20
      508 LOADN                            R7 11
      509 CALL                             R4 3 1
      510 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      512 SETTABLE                         R3 R1 R2
      513 GETIMPORT                        R2 K62 [Enum.Material.Pavement]
      515 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      516 GETIMPORT                        R4 K12 [Color3.fromRGB]
      518 LOADN                            R5 86
      519 LOADN                            R6 86
      520 LOADN                            R7 88
      521 CALL                             R4 3 1
      522 SETTABLEKS                       R4 R3 K7 ["Color"]
      524 GETIMPORT                        R4 K12 [Color3.fromRGB]
      526 LOADN                            R5 148
      527 LOADN                            R6 148
      528 LOADN                            R7 140
      529 CALL                             R4 3 1
      530 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      532 SETTABLE                         R3 R1 R2
      533 GETIMPORT                        R2 K64 [Enum.Material.Pebble]
      535 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      536 GETIMPORT                        R4 K12 [Color3.fromRGB]
      538 LOADN                            R5 134
      539 LOADN                            R6 134
      540 LOADN                            R7 129
      541 CALL                             R4 3 1
      542 SETTABLEKS                       R4 R3 K7 ["Color"]
      544 GETIMPORT                        R4 K12 [Color3.fromRGB]
      546 LOADN                            R5 203
      547 LOADN                            R6 203
      548 LOADN                            R7 203
      549 CALL                             R4 3 1
      550 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      552 SETTABLE                         R3 R1 R2
      553 GETIMPORT                        R2 K66 [Enum.Material.Plaster]
      555 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      556 GETIMPORT                        R4 K12 [Color3.fromRGB]
      558 LOADN                            R5 204
      559 LOADN                            R6 142
      560 LOADN                            R7 105
      561 CALL                             R4 3 1
      562 SETTABLEKS                       R4 R3 K7 ["Color"]
      564 GETIMPORT                        R4 K12 [Color3.fromRGB]
      566 LOADN                            R5 204
      567 LOADN                            R6 142
      568 LOADN                            R7 105
      569 CALL                             R4 3 1
      570 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      572 SETTABLE                         R3 R1 R2
      573 GETIMPORT                        R2 K68 [Enum.Material.Rock]
      575 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      576 GETIMPORT                        R4 K12 [Color3.fromRGB]
      578 LOADN                            R5 62
      579 LOADN                            R6 59
      580 LOADN                            R7 58
      581 CALL                             R4 3 1
      582 SETTABLEKS                       R4 R3 K7 ["Color"]
      584 GETIMPORT                        R4 K12 [Color3.fromRGB]
      586 LOADN                            R5 102
      587 LOADN                            R6 108
      588 LOADN                            R7 111
      589 CALL                             R4 3 1
      590 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      592 SETTABLE                         R3 R1 R2
      593 GETIMPORT                        R2 K70 [Enum.Material.RoofShingles]
      595 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      596 GETIMPORT                        R4 K12 [Color3.fromRGB]
      598 LOADN                            R5 66
      599 LOADN                            R6 66
      600 LOADN                            R7 66
      601 CALL                             R4 3 1
      602 SETTABLEKS                       R4 R3 K7 ["Color"]
      604 GETIMPORT                        R4 K12 [Color3.fromRGB]
      606 LOADN                            R5 66
      607 LOADN                            R6 66
      608 LOADN                            R7 66
      609 CALL                             R4 3 1
      610 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      612 SETTABLE                         R3 R1 R2
      613 GETIMPORT                        R2 K72 [Enum.Material.Rubber]
      615 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      616 GETIMPORT                        R4 K12 [Color3.fromRGB]
      618 LOADN                            R5 32
      619 LOADN                            R6 32
      620 LOADN                            R7 32
      621 CALL                             R4 3 1
      622 SETTABLEKS                       R4 R3 K7 ["Color"]
      624 GETIMPORT                        R4 K12 [Color3.fromRGB]
      626 LOADN                            R5 32
      627 LOADN                            R6 32
      628 LOADN                            R7 32
      629 CALL                             R4 3 1
      630 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      632 SETTABLE                         R3 R1 R2
      633 GETIMPORT                        R2 K74 [Enum.Material.Salt]
      635 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      636 GETIMPORT                        R4 K12 [Color3.fromRGB]
      638 LOADN                            R5 180
      639 LOADN                            R6 180
      640 LOADN                            R7 179
      641 CALL                             R4 3 1
      642 SETTABLEKS                       R4 R3 K7 ["Color"]
      644 GETIMPORT                        R4 K12 [Color3.fromRGB]
      646 LOADN                            R5 198
      647 LOADN                            R6 189
      648 LOADN                            R7 181
      649 CALL                             R4 3 1
      650 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      652 SETTABLE                         R3 R1 R2
      653 GETIMPORT                        R2 K76 [Enum.Material.Sand]
      655 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      656 GETIMPORT                        R4 K12 [Color3.fromRGB]
      658 LOADN                            R5 122
      659 LOADN                            R6 111
      660 LOADN                            R7 84
      661 CALL                             R4 3 1
      662 SETTABLEKS                       R4 R3 K7 ["Color"]
      664 GETIMPORT                        R4 K12 [Color3.fromRGB]
      666 LOADN                            R5 216
      667 LOADN                            R6 216
      668 LOADN                            R7 216
      669 CALL                             R4 3 1
      670 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      672 SETTABLE                         R3 R1 R2
      673 GETIMPORT                        R2 K78 [Enum.Material.Sandstone]
      675 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      676 GETIMPORT                        R4 K12 [Color3.fromRGB]
      678 LOADN                            R5 118
      679 LOADN                            R6 77
      680 LOADN                            R7 61
      681 CALL                             R4 3 1
      682 SETTABLEKS                       R4 R3 K7 ["Color"]
      684 GETIMPORT                        R4 K12 [Color3.fromRGB]
      686 LOADN                            R5 137
      687 LOADN                            R6 90
      688 LOADN                            R7 71
      689 CALL                             R4 3 1
      690 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      692 SETTABLE                         R3 R1 R2
      693 GETIMPORT                        R2 K80 [Enum.Material.Slate]
      695 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      696 GETIMPORT                        R4 K12 [Color3.fromRGB]
      698 LOADN                            R5 118
      699 LOADN                            R6 126
      700 LOADN                            R7 142
      701 CALL                             R4 3 1
      702 SETTABLEKS                       R4 R3 K7 ["Color"]
      704 GETIMPORT                        R4 K12 [Color3.fromRGB]
      706 LOADN                            R5 186
      707 LOADN                            R6 186
      708 LOADN                            R7 186
      709 CALL                             R4 3 1
      710 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      712 SETTABLE                         R3 R1 R2
      713 GETIMPORT                        R2 K82 [Enum.Material.Snow]
      715 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      716 GETIMPORT                        R4 K12 [Color3.fromRGB]
      718 LOADN                            R5 179
      719 LOADN                            R6 185
      720 LOADN                            R7 195
      721 CALL                             R4 3 1
      722 SETTABLEKS                       R4 R3 K7 ["Color"]
      724 GETIMPORT                        R4 K12 [Color3.fromRGB]
      726 LOADN                            R5 195
      727 LOADN                            R6 199
      728 LOADN                            R7 218
      729 CALL                             R4 3 1
      730 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      732 SETTABLE                         R3 R1 R2
      733 GETIMPORT                        R2 K84 [Enum.Material.Wood]
      735 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      736 GETIMPORT                        R4 K12 [Color3.fromRGB]
      738 LOADN                            R5 136
      739 LOADN                            R6 101
      740 LOADN                            R7 71
      741 CALL                             R4 3 1
      742 SETTABLEKS                       R4 R3 K7 ["Color"]
      744 GETIMPORT                        R4 K12 [Color3.fromRGB]
      746 LOADN                            R5 224
      747 LOADN                            R6 224
      748 LOADN                            R7 224
      749 CALL                             R4 3 1
      750 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      752 SETTABLE                         R3 R1 R2
      753 GETIMPORT                        R2 K86 [Enum.Material.WoodPlanks]
      755 DUPTABLE                         R3 K9 [{"Color", "OldColor"}]
      756 GETIMPORT                        R4 K12 [Color3.fromRGB]
      758 LOADN                            R5 126
      759 LOADN                            R6 99
      760 LOADN                            R7 68
      761 CALL                             R4 3 1
      762 SETTABLEKS                       R4 R3 K7 ["Color"]
      764 GETIMPORT                        R4 K12 [Color3.fromRGB]
      766 LOADN                            R5 207
      767 LOADN                            R6 203
      768 LOADN                            R7 197
      769 CALL                             R4 3 1
      770 SETTABLEKS                       R4 R3 K8 ["OldColor"]
      772 SETTABLE                         R3 R1 R2
      773 DUPCLOSURE                       R2 K87 [PROTO_0]
      774 CAPTURE                          VAL R1
      775 RETURN                           R2 1
