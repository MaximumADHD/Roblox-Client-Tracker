PROTO_0:
        0 GETIMPORT                        R1 K2 [BrickColor.new]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K3 ["Color"]
        6 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R9 K2 [BrickColor.new]
        8 MOVE                             R10 R6
        9 CALL                             R9 1 1
       10 GETTABLEKS                       R9 R9 K3 ["Color"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarPreviewerReplaceSkinColors"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_1]
       18 NEWTABLE                         R4 0 71
       20 LOADK                            R5 K11 ["Dirt brown"]
       21 LOADK                            R6 K12 ["Reddish brown"]
       22 LOADK                            R7 K13 ["Brown"]
       23 LOADK                            R8 K14 ["Sand red"]
       24 LOADK                            R9 K15 ["Linen"]
       25 LOADK                            R10 K16 ["Burlap"]
       26 LOADK                            R11 K17 ["Brick yellow"]
       27 LOADK                            R12 K18 ["Medium red"]
       28 LOADK                            R13 K19 ["Dusty Rose"]
       29 LOADK                            R14 K20 ["CGA brown"]
       30 LOADK                            R15 K21 ["Dark orange"]
       31 LOADK                            R16 K22 ["Nougat"]
       32 LOADK                            R17 K23 ["Light orange"]
       33 LOADK                            R18 K24 ["Pastel brown"]
       34 LOADK                            R19 K25 ["Neon orange"]
       35 LOADK                            R20 K26 ["Bright orange"]
       36 SETLIST                          R4 R5 16 [1]
       38 LOADK                            R5 K27 ["Br. yellowish orange"]
       39 LOADK                            R6 K28 ["Deep orange"]
       40 LOADK                            R7 K29 ["Bright yellow"]
       41 LOADK                            R8 K30 ["Daisy orange"]
       42 LOADK                            R9 K31 ["Cool yellow"]
       43 LOADK                            R10 K32 ["Earth green"]
       44 LOADK                            R11 K33 ["Camo"]
       45 LOADK                            R12 K34 ["Dark green"]
       46 LOADK                            R13 K35 ["Br. yellowish green"]
       47 LOADK                            R14 K36 ["Navy blue"]
       48 LOADK                            R15 K37 ["Deep blue"]
       49 LOADK                            R16 K38 ["Really blue"]
       50 LOADK                            R17 K39 ["Bright blue"]
       51 LOADK                            R18 K40 ["Steel blue"]
       52 LOADK                            R19 K41 ["Medium blue"]
       53 LOADK                            R20 K42 ["Light blue"]
       54 SETLIST                          R4 R5 16 [17]
       56 LOADK                            R5 K43 ["Bright bluish green"]
       57 LOADK                            R6 K44 ["Teal"]
       58 LOADK                            R7 K45 ["Pastel blue-green"]
       59 LOADK                            R8 K46 ["Toothpaste"]
       60 LOADK                            R9 K47 ["Cyan"]
       61 LOADK                            R10 K48 ["Pastel Blue"]
       62 LOADK                            R11 K49 ["Pastel light blue"]
       63 LOADK                            R12 K50 ["Bright violet"]
       64 LOADK                            R13 K51 ["Lavender"]
       65 LOADK                            R14 K52 ["Lilac"]
       66 LOADK                            R15 K53 ["Magenta"]
       67 LOADK                            R16 K54 ["Royal purple"]
       68 LOADK                            R17 K55 ["Alder"]
       69 LOADK                            R18 K56 ["Pastel violet"]
       70 LOADK                            R19 K57 ["Bright red"]
       71 LOADK                            R20 K58 ["Really red"]
       72 SETLIST                          R4 R5 16 [33]
       74 LOADK                            R5 K59 ["Hot pink"]
       75 LOADK                            R6 K60 ["Pink"]
       76 LOADK                            R7 K61 ["Carnation pink"]
       77 LOADK                            R8 K62 ["Light reddish violet"]
       78 LOADK                            R9 K63 ["Pastel orange"]
       79 LOADK                            R10 K64 ["Dark taupe"]
       80 LOADK                            R11 K65 ["Cork"]
       81 LOADK                            R12 K66 ["Olive"]
       82 LOADK                            R13 K67 ["Medium green"]
       83 LOADK                            R14 K68 ["Grime"]
       84 LOADK                            R15 K69 ["Sand green"]
       85 LOADK                            R16 K70 ["Sand blue"]
       86 LOADK                            R17 K71 ["Lime green"]
       87 LOADK                            R18 K72 ["Pastel green"]
       88 LOADK                            R19 K73 ["New Yeller"]
       89 LOADK                            R20 K74 ["Pastel yellow"]
       90 SETLIST                          R4 R5 16 [49]
       92 LOADK                            R5 K75 ["Really black"]
       93 LOADK                            R6 K76 ["Black"]
       94 LOADK                            R7 K77 ["Dark stone grey"]
       95 LOADK                            R8 K78 ["Medium stone grey"]
       96 LOADK                            R9 K79 ["Mid gray"]
       97 LOADK                            R10 K80 ["Light stone grey"]
       98 LOADK                            R11 K81 ["White"]
       99 SETLIST                          R4 R5 7 [65]
      101 NEWTABLE                         R5 0 114
      103 GETIMPORT                        R6 K84 [Color3.fromRGB]
      105 LOADN                            R7 49
      106 LOADN                            R8 44
      107 LOADN                            R9 37
      108 CALL                             R6 3 1
      109 GETIMPORT                        R7 K84 [Color3.fromRGB]
      111 LOADN                            R8 61
      112 LOADN                            R9 46
      113 LOADN                            R10 36
      114 CALL                             R7 3 1
      115 GETIMPORT                        R8 K84 [Color3.fromRGB]
      117 LOADN                            R9 78
      118 LOADN                            R10 55
      119 LOADN                            R11 49
      120 CALL                             R8 3 1
      121 GETIMPORT                        R9 K84 [Color3.fromRGB]
      123 LOADN                            R10 62
      124 LOADN                            R11 53
      125 LOADN                            R12 42
      126 CALL                             R9 3 1
      127 GETIMPORT                        R10 K84 [Color3.fromRGB]
      129 LOADN                            R11 75
      130 LOADN                            R12 56
      131 LOADN                            R13 46
      132 CALL                             R10 3 1
      133 GETIMPORT                        R11 K84 [Color3.fromRGB]
      135 LOADN                            R12 96
      136 LOADN                            R13 57
      137 LOADN                            R14 45
      138 CALL                             R11 3 1
      139 GETIMPORT                        R12 K84 [Color3.fromRGB]
      141 LOADN                            R13 90
      142 LOADN                            R14 76
      143 LOADN                            R15 46
      144 CALL                             R12 3 1
      145 GETIMPORT                        R13 K84 [Color3.fromRGB]
      147 LOADN                            R14 86
      148 LOADN                            R15 66
      149 LOADN                            R16 54
      150 CALL                             R13 3 1
      151 GETIMPORT                        R14 K84 [Color3.fromRGB]
      153 LOADN                            R15 92
      154 LOADN                            R16 66
      155 LOADN                            R17 49
      156 CALL                             R14 3 1
      157 GETIMPORT                        R15 K84 [Color3.fromRGB]
      159 LOADN                            R16 94
      160 LOADN                            R17 64
      161 LOADN                            R18 53
      162 CALL                             R15 3 1
      163 GETIMPORT                        R16 K84 [Color3.fromRGB]
      165 LOADN                            R17 82
      166 LOADN                            R18 69
      167 LOADN                            R19 54
      168 CALL                             R16 3 1
      169 GETIMPORT                        R17 K84 [Color3.fromRGB]
      171 LOADN                            R18 90
      172 LOADN                            R19 76
      173 LOADN                            R20 66
      174 CALL                             R17 3 1
      175 GETIMPORT                        R18 K84 [Color3.fromRGB]
      177 LOADN                            R19 98
      178 LOADN                            R20 70
      179 LOADN                            R21 58
      180 CALL                             R18 3 1
      181 GETIMPORT                        R19 K84 [Color3.fromRGB]
      183 LOADN                            R20 116
      184 LOADN                            R21 87
      185 LOADN                            R22 62
      186 CALL                             R19 3 1
      187 GETIMPORT                        R20 K84 [Color3.fromRGB]
      189 LOADN                            R21 124
      190 LOADN                            R22 92
      191 LOADN                            R23 70
      192 CALL                             R20 3 1
      193 GETIMPORT                        R21 K84 [Color3.fromRGB]
      195 LOADN                            R22 115
      196 LOADN                            R23 92
      197 LOADN                            R24 61
      198 CALL                             R21 3 1
      199 SETLIST                          R5 R6 16 [1]
      201 GETIMPORT                        R6 K84 [Color3.fromRGB]
      203 LOADN                            R7 137
      204 LOADN                            R8 110
      205 LOADN                            R9 74
      206 CALL                             R6 3 1
      207 GETIMPORT                        R7 K84 [Color3.fromRGB]
      209 LOADN                            R8 138
      210 LOADN                            R9 102
      211 LOADN                            R10 70
      212 CALL                             R7 3 1
      213 GETIMPORT                        R8 K84 [Color3.fromRGB]
      215 LOADN                            R9 140
      216 LOADN                            R10 95
      217 LOADN                            R11 77
      218 CALL                             R8 3 1
      219 GETIMPORT                        R9 K84 [Color3.fromRGB]
      221 LOADN                            R10 118
      222 LOADN                            R11 82
      223 LOADN                            R12 67
      224 CALL                             R9 3 1
      225 GETIMPORT                        R10 K84 [Color3.fromRGB]
      227 LOADN                            R11 199
      228 LOADN                            R12 172
      229 LOADN                            R13 120
      230 CALL                             R10 3 1
      231 GETIMPORT                        R11 K84 [Color3.fromRGB]
      233 LOADN                            R12 188
      234 LOADN                            R13 155
      235 LOADN                            R14 93
      236 CALL                             R11 3 1
      237 GETIMPORT                        R12 K84 [Color3.fromRGB]
      239 LOADN                            R13 170
      240 LOADN                            R14 138
      241 LOADN                            R15 98
      242 CALL                             R12 3 1
      243 GETIMPORT                        R13 K84 [Color3.fromRGB]
      245 LOADN                            R14 173
      246 LOADN                            R15 130
      247 LOADN                            R16 96
      248 CALL                             R13 3 1
      249 GETIMPORT                        R14 K84 [Color3.fromRGB]
      251 LOADN                            R15 174
      252 LOADN                            R16 121
      253 LOADN                            R17 102
      254 CALL                             R14 3 1
      255 GETIMPORT                        R15 K84 [Color3.fromRGB]
      257 LOADN                            R16 145
      258 LOADN                            R17 123
      259 LOADN                            R18 90
      260 CALL                             R15 3 1
      261 GETIMPORT                        R16 K84 [Color3.fromRGB]
      263 LOADN                            R17 175
      264 LOADN                            R18 148
      265 LOADN                            R19 131
      266 CALL                             R16 3 1
      267 GETIMPORT                        R17 K84 [Color3.fromRGB]
      269 LOADN                            R18 149
      270 LOADN                            R19 121
      271 LOADN                            R20 119
      272 CALL                             R17 3 1
      273 GETIMPORT                        R18 K84 [Color3.fromRGB]
      275 LOADN                            R19 215
      276 LOADN                            R20 197
      277 LOADN                            R21 154
      278 CALL                             R18 3 1
      279 GETIMPORT                        R19 K84 [Color3.fromRGB]
      281 LOADN                            R20 218
      282 LOADN                            R21 182
      283 LOADN                            R22 142
      284 CALL                             R19 3 1
      285 GETIMPORT                        R20 K84 [Color3.fromRGB]
      287 LOADN                            R21 211
      288 LOADN                            R22 167
      289 LOADN                            R23 131
      290 CALL                             R20 3 1
      291 GETIMPORT                        R21 K84 [Color3.fromRGB]
      293 LOADN                            R22 212
      294 LOADN                            R23 158
      295 LOADN                            R24 140
      296 CALL                             R21 3 1
      297 SETLIST                          R5 R6 16 [17]
      299 GETIMPORT                        R6 K84 [Color3.fromRGB]
      301 LOADN                            R7 204
      302 LOADN                            R8 142
      303 LOADN                            R9 105
      304 CALL                             R6 3 1
      305 GETIMPORT                        R7 K84 [Color3.fromRGB]
      307 LOADN                            R8 230
      308 LOADN                            R9 199
      309 LOADN                            R10 158
      310 CALL                             R7 3 1
      311 GETIMPORT                        R8 K84 [Color3.fromRGB]
      313 LOADN                            R9 229
      314 LOADN                            R10 186
      315 LOADN                            R11 152
      316 CALL                             R8 3 1
      317 GETIMPORT                        R9 K84 [Color3.fromRGB]
      319 LOADN                            R10 234
      320 LOADN                            R11 184
      321 LOADN                            R12 146
      322 CALL                             R9 3 1
      323 GETIMPORT                        R10 K84 [Color3.fromRGB]
      325 LOADN                            R11 232
      326 LOADN                            R12 186
      327 LOADN                            R13 170
      328 CALL                             R10 3 1
      329 GETIMPORT                        R11 K84 [Color3.fromRGB]
      331 LOADN                            R12 255
      332 LOADN                            R13 204
      333 LOADN                            R14 153
      334 CALL                             R11 3 1
      335 GETIMPORT                        R12 K84 [Color3.fromRGB]
      337 LOADN                            R13 238
      338 LOADN                            R14 203
      339 LOADN                            R15 173
      340 CALL                             R12 3 1
      341 GETIMPORT                        R13 K84 [Color3.fromRGB]
      343 LOADN                            R14 240
      344 LOADN                            R15 212
      345 LOADN                            R16 185
      346 CALL                             R13 3 1
      347 GETIMPORT                        R14 K84 [Color3.fromRGB]
      349 LOADN                            R15 237
      350 LOADN                            R16 213
      351 LOADN                            R17 180
      352 CALL                             R14 3 1
      353 GETIMPORT                        R15 K84 [Color3.fromRGB]
      355 LOADN                            R16 239
      356 LOADN                            R17 220
      357 LOADN                            R18 191
      358 CALL                             R15 3 1
      359 GETIMPORT                        R16 K84 [Color3.fromRGB]
      361 LOADN                            R17 243
      362 LOADN                            R18 223
      363 LOADN                            R19 212
      364 CALL                             R16 3 1
      365 GETIMPORT                        R17 K84 [Color3.fromRGB]
      367 LOADN                            R18 240
      368 LOADN                            R19 205
      369 LOADN                            R20 196
      370 CALL                             R17 3 1
      371 GETIMPORT                        R18 K84 [Color3.fromRGB]
      373 LOADN                            R19 17
      374 LOADN                            R20 17
      375 LOADN                            R21 17
      376 CALL                             R18 3 1
      377 GETIMPORT                        R19 K84 [Color3.fromRGB]
      379 LOADN                            R20 27
      380 LOADN                            R21 42
      381 LOADN                            R22 53
      382 CALL                             R19 3 1
      383 GETIMPORT                        R20 K84 [Color3.fromRGB]
      385 LOADN                            R21 99
      386 LOADN                            R22 95
      387 LOADN                            R23 98
      388 CALL                             R20 3 1
      389 GETIMPORT                        R21 K84 [Color3.fromRGB]
      391 LOADN                            R22 163
      392 LOADN                            R23 162
      393 LOADN                            R24 165
      394 CALL                             R21 3 1
      395 SETLIST                          R5 R6 16 [33]
      397 GETIMPORT                        R6 K84 [Color3.fromRGB]
      399 LOADN                            R7 205
      400 LOADN                            R8 205
      401 LOADN                            R9 205
      402 CALL                             R6 3 1
      403 GETIMPORT                        R7 K84 [Color3.fromRGB]
      405 LOADN                            R8 229
      406 LOADN                            R9 228
      407 LOADN                            R10 223
      408 CALL                             R7 3 1
      409 GETIMPORT                        R8 K84 [Color3.fromRGB]
      411 LOADN                            R9 242
      412 LOADN                            R10 243
      413 LOADN                            R11 243
      414 CALL                             R8 3 1
      415 GETIMPORT                        R9 K84 [Color3.fromRGB]
      417 LOADN                            R10 248
      418 LOADN                            R11 248
      419 LOADN                            R12 248
      420 CALL                             R9 3 1
      421 GETIMPORT                        R10 K84 [Color3.fromRGB]
      423 LOADN                            R11 255
      424 LOADN                            R12 0
      425 LOADN                            R13 0
      426 CALL                             R10 3 1
      427 GETIMPORT                        R11 K84 [Color3.fromRGB]
      429 LOADN                            R12 196
      430 LOADN                            R13 40
      431 LOADN                            R14 28
      432 CALL                             R11 3 1
      433 GETIMPORT                        R12 K84 [Color3.fromRGB]
      435 LOADN                            R13 180
      436 LOADN                            R14 58
      437 LOADN                            R15 52
      438 CALL                             R12 3 1
      439 GETIMPORT                        R13 K84 [Color3.fromRGB]
      441 LOADN                            R14 163
      442 LOADN                            R15 75
      443 LOADN                            R16 75
      444 CALL                             R13 3 1
      445 GETIMPORT                        R14 K84 [Color3.fromRGB]
      447 LOADN                            R15 218
      448 LOADN                            R16 134
      449 LOADN                            R17 122
      450 CALL                             R14 3 1
      451 GETIMPORT                        R15 K84 [Color3.fromRGB]
      453 LOADN                            R16 105
      454 LOADN                            R17 64
      455 LOADN                            R18 40
      456 CALL                             R15 3 1
      457 GETIMPORT                        R16 K84 [Color3.fromRGB]
      459 LOADN                            R17 170
      460 LOADN                            R18 85
      461 LOADN                            R19 0
      462 CALL                             R16 3 1
      463 GETIMPORT                        R17 K84 [Color3.fromRGB]
      465 LOADN                            R18 160
      466 LOADN                            R19 95
      467 LOADN                            R20 53
      468 CALL                             R17 3 1
      469 GETIMPORT                        R18 K84 [Color3.fromRGB]
      471 LOADN                            R19 213
      472 LOADN                            R20 115
      473 LOADN                            R21 61
      474 CALL                             R18 3 1
      475 GETIMPORT                        R19 K84 [Color3.fromRGB]
      477 LOADN                            R20 218
      478 LOADN                            R21 133
      479 LOADN                            R22 65
      480 CALL                             R19 3 1
      481 GETIMPORT                        R20 K84 [Color3.fromRGB]
      483 LOADN                            R21 226
      484 LOADN                            R22 155
      485 LOADN                            R23 64
      486 CALL                             R20 3 1
      487 GETIMPORT                        R21 K84 [Color3.fromRGB]
      489 LOADN                            R22 255
      490 LOADN                            R23 175
      491 LOADN                            R24 0
      492 CALL                             R21 3 1
      493 SETLIST                          R5 R6 16 [49]
      495 GETIMPORT                        R6 K84 [Color3.fromRGB]
      497 LOADN                            R7 245
      498 LOADN                            R8 205
      499 LOADN                            R9 48
      500 CALL                             R6 3 1
      501 GETIMPORT                        R7 K84 [Color3.fromRGB]
      503 LOADN                            R8 248
      504 LOADN                            R9 217
      505 LOADN                            R10 109
      506 CALL                             R7 3 1
      507 GETIMPORT                        R8 K84 [Color3.fromRGB]
      509 LOADN                            R9 253
      510 LOADN                            R10 234
      511 LOADN                            R11 141
      512 CALL                             R8 3 1
      513 GETIMPORT                        R9 K84 [Color3.fromRGB]
      515 LOADN                            R10 255
      516 LOADN                            R11 255
      517 LOADN                            R12 204
      518 CALL                             R9 3 1
      519 GETIMPORT                        R10 K84 [Color3.fromRGB]
      521 LOADN                            R11 255
      522 LOADN                            R12 255
      523 LOADN                            R13 0
      524 CALL                             R10 3 1
      525 GETIMPORT                        R11 K84 [Color3.fromRGB]
      527 LOADN                            R12 193
      528 LOADN                            R13 190
      529 LOADN                            R14 66
      530 CALL                             R11 3 1
      531 GETIMPORT                        R12 K84 [Color3.fromRGB]
      533 LOADN                            R13 164
      534 LOADN                            R14 189
      535 LOADN                            R15 71
      536 CALL                             R12 3 1
      537 GETIMPORT                        R13 K84 [Color3.fromRGB]
      539 LOADN                            R14 0
      540 LOADN                            R15 255
      541 LOADN                            R16 0
      542 CALL                             R13 3 1
      543 GETIMPORT                        R14 K84 [Color3.fromRGB]
      545 LOADN                            R15 58
      546 LOADN                            R16 125
      547 LOADN                            R17 21
      548 CALL                             R14 3 1
      549 GETIMPORT                        R15 K84 [Color3.fromRGB]
      551 LOADN                            R16 75
      552 LOADN                            R17 151
      553 LOADN                            R18 75
      554 CALL                             R15 3 1
      555 GETIMPORT                        R16 K84 [Color3.fromRGB]
      557 LOADN                            R17 91
      558 LOADN                            R18 154
      559 LOADN                            R19 76
      560 CALL                             R16 3 1
      561 GETIMPORT                        R17 K84 [Color3.fromRGB]
      563 LOADN                            R18 161
      564 LOADN                            R19 196
      565 LOADN                            R20 140
      566 CALL                             R17 3 1
      567 GETIMPORT                        R18 K84 [Color3.fromRGB]
      569 LOADN                            R19 204
      570 LOADN                            R20 255
      571 LOADN                            R21 204
      572 CALL                             R18 3 1
      573 GETIMPORT                        R19 K84 [Color3.fromRGB]
      575 LOADN                            R20 39
      576 LOADN                            R21 70
      577 LOADN                            R22 45
      578 CALL                             R19 3 1
      579 GETIMPORT                        R20 K84 [Color3.fromRGB]
      581 LOADN                            R21 40
      582 LOADN                            R22 127
      583 LOADN                            R23 71
      584 CALL                             R20 3 1
      585 GETIMPORT                        R21 K84 [Color3.fromRGB]
      587 LOADN                            R22 124
      588 LOADN                            R23 156
      589 LOADN                            R24 107
      590 CALL                             R21 3 1
      591 SETLIST                          R5 R6 16 [65]
      593 GETIMPORT                        R6 K84 [Color3.fromRGB]
      595 LOADN                            R7 91
      596 LOADN                            R8 108
      597 LOADN                            R9 84
      598 CALL                             R6 3 1
      599 GETIMPORT                        R7 K84 [Color3.fromRGB]
      601 LOADN                            R8 127
      602 LOADN                            R9 142
      603 LOADN                            R10 100
      604 CALL                             R7 3 1
      605 GETIMPORT                        R8 K84 [Color3.fromRGB]
      607 LOADN                            R9 127
      608 LOADN                            R10 142
      609 LOADN                            R11 130
      610 CALL                             R8 3 1
      611 GETIMPORT                        R9 K84 [Color3.fromRGB]
      613 LOADN                            R10 0
      614 LOADN                            R11 32
      615 LOADN                            R12 96
      616 CALL                             R9 3 1
      617 GETIMPORT                        R10 K84 [Color3.fromRGB]
      619 LOADN                            R11 0
      620 LOADN                            R12 0
      621 LOADN                            R13 255
      622 CALL                             R10 3 1
      623 GETIMPORT                        R11 K84 [Color3.fromRGB]
      625 LOADN                            R12 4
      626 LOADN                            R13 175
      627 LOADN                            R14 236
      628 CALL                             R11 3 1
      629 GETIMPORT                        R12 K84 [Color3.fromRGB]
      631 LOADN                            R13 128
      632 LOADN                            R14 187
      633 LOADN                            R15 220
      634 CALL                             R12 3 1
      635 GETIMPORT                        R13 K84 [Color3.fromRGB]
      637 LOADN                            R14 116
      638 LOADN                            R15 134
      639 LOADN                            R16 157
      640 CALL                             R13 3 1
      641 GETIMPORT                        R14 K84 [Color3.fromRGB]
      643 LOADN                            R15 0
      644 LOADN                            R16 143
      645 LOADN                            R17 156
      646 CALL                             R14 3 1
      647 GETIMPORT                        R15 K84 [Color3.fromRGB]
      649 LOADN                            R16 0
      650 LOADN                            R17 255
      651 LOADN                            R18 255
      652 CALL                             R15 3 1
      653 GETIMPORT                        R16 K84 [Color3.fromRGB]
      655 LOADN                            R17 18
      656 LOADN                            R18 238
      657 LOADN                            R19 212
      658 CALL                             R16 3 1
      659 GETIMPORT                        R17 K84 [Color3.fromRGB]
      661 LOADN                            R18 159
      662 LOADN                            R19 243
      663 LOADN                            R20 233
      664 CALL                             R17 3 1
      665 GETIMPORT                        R18 K84 [Color3.fromRGB]
      667 LOADN                            R19 200
      668 LOADN                            R20 245
      669 LOADN                            R21 240
      670 CALL                             R18 3 1
      671 GETIMPORT                        R19 K84 [Color3.fromRGB]
      673 LOADN                            R20 33
      674 LOADN                            R21 84
      675 LOADN                            R22 185
      676 CALL                             R19 3 1
      677 GETIMPORT                        R20 K84 [Color3.fromRGB]
      679 LOADN                            R21 13
      680 LOADN                            R22 105
      681 LOADN                            R23 172
      682 CALL                             R20 3 1
      683 GETIMPORT                        R21 K84 [Color3.fromRGB]
      685 LOADN                            R22 82
      686 LOADN                            R23 124
      687 LOADN                            R24 174
      688 CALL                             R21 3 1
      689 SETLIST                          R5 R6 16 [81]
      691 GETIMPORT                        R6 K84 [Color3.fromRGB]
      693 LOADN                            R7 97
      694 LOADN                            R8 140
      695 LOADN                            R9 189
      696 CALL                             R6 3 1
      697 GETIMPORT                        R7 K84 [Color3.fromRGB]
      699 LOADN                            R8 110
      700 LOADN                            R9 153
      701 LOADN                            R10 202
      702 CALL                             R7 3 1
      703 GETIMPORT                        R8 K84 [Color3.fromRGB]
      705 LOADN                            R9 175
      706 LOADN                            R10 221
      707 LOADN                            R11 255
      708 CALL                             R8 3 1
      709 GETIMPORT                        R9 K84 [Color3.fromRGB]
      711 LOADN                            R10 180
      712 LOADN                            R11 210
      713 LOADN                            R12 228
      714 CALL                             R9 3 1
      715 GETIMPORT                        R10 K84 [Color3.fromRGB]
      717 LOADN                            R11 255
      718 LOADN                            R12 0
      719 LOADN                            R13 191
      720 CALL                             R10 3 1
      721 GETIMPORT                        R11 K84 [Color3.fromRGB]
      723 LOADN                            R12 255
      724 LOADN                            R13 102
      725 LOADN                            R14 204
      726 CALL                             R11 3 1
      727 GETIMPORT                        R12 K84 [Color3.fromRGB]
      729 LOADN                            R13 255
      730 LOADN                            R14 152
      731 LOADN                            R15 220
      732 CALL                             R12 3 1
      733 GETIMPORT                        R13 K84 [Color3.fromRGB]
      735 LOADN                            R14 255
      736 LOADN                            R15 201
      737 LOADN                            R16 201
      738 CALL                             R13 3 1
      739 GETIMPORT                        R14 K84 [Color3.fromRGB]
      741 LOADN                            R15 232
      742 LOADN                            R16 186
      743 LOADN                            R17 200
      744 CALL                             R14 3 1
      745 GETIMPORT                        R15 K84 [Color3.fromRGB]
      747 LOADN                            R16 98
      748 LOADN                            R17 37
      749 LOADN                            R18 209
      750 CALL                             R15 3 1
      751 GETIMPORT                        R16 K84 [Color3.fromRGB]
      753 LOADN                            R17 180
      754 LOADN                            R18 128
      755 LOADN                            R19 255
      756 CALL                             R16 3 1
      757 GETIMPORT                        R17 K84 [Color3.fromRGB]
      759 LOADN                            R18 177
      760 LOADN                            R19 167
      761 LOADN                            R20 255
      762 CALL                             R17 3 1
      763 GETIMPORT                        R18 K84 [Color3.fromRGB]
      765 LOADN                            R19 107
      766 LOADN                            R20 50
      767 LOADN                            R21 124
      768 CALL                             R18 3 1
      769 GETIMPORT                        R19 K84 [Color3.fromRGB]
      771 LOADN                            R20 124
      772 LOADN                            R21 71
      773 LOADN                            R22 142
      774 CALL                             R19 3 1
      775 GETIMPORT                        R20 K84 [Color3.fromRGB]
      777 LOADN                            R21 140
      778 LOADN                            R22 91
      779 LOADN                            R23 159
      780 CALL                             R20 3 1
      781 GETIMPORT                        R21 K84 [Color3.fromRGB]
      783 LOADN                            R22 170
      784 LOADN                            R23 0
      785 LOADN                            R24 170
      786 CALL                             R21 3 1
      787 SETLIST                          R5 R6 16 [97]
      789 GETIMPORT                        R6 K84 [Color3.fromRGB]
      791 LOADN                            R7 169
      792 LOADN                            R8 47
      793 LOADN                            R9 163
      794 CALL                             R6 3 1
      795 GETIMPORT                        R7 K84 [Color3.fromRGB]
      797 LOADN                            R8 167
      798 LOADN                            R9 94
      799 LOADN                            R10 155
      800 CALL                             R7 3 -1
      801 SETLIST                          R5 R6 -1 [113]
      803 MOVE                             R7 R1
      804 CALL                             R7 0 1
      805 JUMPIFNOT                        R7 ; [+2]
      806 MOVE                             R6 R5
      807 RETURN                           R6 1
      808 MOVE                             R6 R3
      809 MOVE                             R7 R4
      810 CALL                             R6 1 1
      811 RETURN                           R6 1
