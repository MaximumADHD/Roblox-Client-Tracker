PROTO_0:
        0 GETIMPORT                        R3 K2 [Color3.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [0.25]
        7 NAMECALL                         R1 R0 K4 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["darkenForHeader"]
       21 GETIMPORT                        R3 K13 [table.freeze]
       23 NEWTABLE                         R4 0 5
       25 GETIMPORT                        R5 K16 [Color3.fromHex]
       27 LOADK                            R6 K17 ["#4a2882"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K16 [Color3.fromHex]
       31 LOADK                            R7 K18 ["#5c6aa7"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K16 [Color3.fromHex]
       35 LOADK                            R8 K19 ["#4ea4a4"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K16 [Color3.fromHex]
       39 LOADK                            R9 K20 ["#86d5a0"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K16 [Color3.fromHex]
       43 LOADK                            R10 K21 ["#eee5a5"]
       44 CALL                             R9 1 -1
       45 SETLIST                          R4 R5 -1 [1]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K22 ["Default"]
       50 GETIMPORT                        R3 K13 [table.freeze]
       52 NEWTABLE                         R4 0 5
       54 GETIMPORT                        R5 K24 [Color3.fromRGB]
       56 LOADN                            R6 60
       57 LOADN                            R7 97
       58 LOADN                            R8 249
       59 CALL                             R5 3 1
       60 GETIMPORT                        R6 K24 [Color3.fromRGB]
       62 LOADN                            R7 117
       63 LOADN                            R8 144
       64 LOADN                            R9 250
       65 CALL                             R6 3 1
       66 GETIMPORT                        R7 K24 [Color3.fromRGB]
       68 LOADN                            R8 88
       69 LOADN                            R9 197
       70 LOADN                            R10 232
       71 CALL                             R7 3 1
       72 GETIMPORT                        R8 K24 [Color3.fromRGB]
       74 LOADN                            R9 160
       75 LOADN                            R10 233
       76 LOADN                            R11 252
       77 CALL                             R8 3 1
       78 GETIMPORT                        R9 K24 [Color3.fromRGB]
       80 LOADN                            R10 210
       81 LOADN                            R11 248
       82 LOADN                            R12 255
       83 CALL                             R9 3 -1
       84 SETLIST                          R4 R5 -1 [1]
       86 CALL                             R3 1 1
       87 GETIMPORT                        R4 K13 [table.freeze]
       89 NEWTABLE                         R5 0 5
       91 GETIMPORT                        R6 K24 [Color3.fromRGB]
       93 LOADN                            R7 26
       94 LOADN                            R8 87
       95 LOADN                            R9 129
       96 CALL                             R6 3 1
       97 GETIMPORT                        R7 K24 [Color3.fromRGB]
       99 LOADN                            R8 47
      100 LOADN                            R9 140
      101 LOADN                            R10 186
      102 CALL                             R7 3 1
      103 GETIMPORT                        R8 K24 [Color3.fromRGB]
      105 LOADN                            R9 66
      106 LOADN                            R10 168
      107 LOADN                            R11 108
      108 CALL                             R8 3 1
      109 GETIMPORT                        R9 K16 [Color3.fromHex]
      111 LOADK                            R10 K20 ["#86d5a0"]
      112 CALL                             R9 1 1
      113 GETIMPORT                        R10 K16 [Color3.fromHex]
      115 LOADK                            R11 K21 ["#eee5a5"]
      116 CALL                             R10 1 -1
      117 SETLIST                          R5 R6 -1 [1]
      119 CALL                             R4 1 1
      120 GETTABLEKS                       R6 R1 K25 ["getFFlagSceneAnalysisBugfixesMay2026"]
      122 CALL                             R6 0 1
      123 JUMPIFNOT                        R6 ; [+2]
      124 MOVE                             R5 R4
      125 JUMP                             ; [+1]
      126 MOVE                             R5 R3
      127 SETTABLEKS                       R5 R2 K26 ["IceBlue"]
      129 GETIMPORT                        R5 K13 [table.freeze]
      131 NEWTABLE                         R6 0 5
      133 GETIMPORT                        R7 K24 [Color3.fromRGB]
      135 LOADN                            R8 159
      136 LOADN                            R9 56
      137 LOADN                            R10 73
      138 CALL                             R7 3 1
      139 GETIMPORT                        R8 K24 [Color3.fromRGB]
      141 LOADN                            R9 190
      142 LOADN                            R10 81
      143 LOADN                            R11 88
      144 CALL                             R8 3 1
      145 GETIMPORT                        R9 K24 [Color3.fromRGB]
      147 LOADN                            R10 195
      148 LOADN                            R11 112
      149 LOADN                            R12 100
      150 CALL                             R9 3 1
      151 GETIMPORT                        R10 K24 [Color3.fromRGB]
      153 LOADN                            R11 221
      154 LOADN                            R12 142
      155 LOADN                            R13 125
      156 CALL                             R10 3 1
      157 GETIMPORT                        R11 K24 [Color3.fromRGB]
      159 LOADN                            R12 237
      160 LOADN                            R13 165
      161 LOADN                            R14 148
      162 CALL                             R11 3 -1
      163 SETLIST                          R6 R7 -1 [1]
      165 CALL                             R5 1 1
      166 SETTABLEKS                       R5 R2 K27 ["IceBlueWarm"]
      168 GETIMPORT                        R5 K13 [table.freeze]
      170 NEWTABLE                         R6 0 5
      172 GETIMPORT                        R7 K24 [Color3.fromRGB]
      174 LOADN                            R8 31
      175 LOADN                            R9 83
      176 LOADN                            R10 79
      177 CALL                             R7 3 1
      178 GETIMPORT                        R8 K24 [Color3.fromRGB]
      180 LOADN                            R9 56
      181 LOADN                            R10 121
      182 LOADN                            R11 87
      183 CALL                             R8 3 1
      184 GETIMPORT                        R9 K24 [Color3.fromRGB]
      186 LOADN                            R10 72
      187 LOADN                            R11 176
      188 LOADN                            R12 139
      189 CALL                             R9 3 1
      190 GETIMPORT                        R10 K24 [Color3.fromRGB]
      192 LOADN                            R11 102
      193 LOADN                            R12 214
      194 LOADN                            R13 162
      195 CALL                             R10 3 1
      196 GETIMPORT                        R11 K24 [Color3.fromRGB]
      198 LOADN                            R12 162
      199 LOADN                            R13 197
      200 LOADN                            R14 101
      201 CALL                             R11 3 -1
      202 SETLIST                          R6 R7 -1 [1]
      204 CALL                             R5 1 1
      205 SETTABLEKS                       R5 R2 K28 ["IceBlueCool"]
      207 GETIMPORT                        R5 K13 [table.freeze]
      209 NEWTABLE                         R6 0 5
      211 GETIMPORT                        R7 K24 [Color3.fromRGB]
      213 LOADN                            R8 35
      214 LOADN                            R9 113
      215 LOADN                            R10 32
      216 CALL                             R7 3 1
      217 GETIMPORT                        R8 K24 [Color3.fromRGB]
      219 LOADN                            R9 66
      220 LOADN                            R10 168
      221 LOADN                            R11 108
      222 CALL                             R8 3 1
      223 GETIMPORT                        R9 K24 [Color3.fromRGB]
      225 LOADN                            R10 145
      226 LOADN                            R11 179
      227 LOADN                            R12 49
      228 CALL                             R9 3 1
      229 GETIMPORT                        R10 K24 [Color3.fromRGB]
      231 LOADN                            R11 242
      232 LOADN                            R12 200
      233 LOADN                            R13 56
      234 CALL                             R10 3 1
      235 GETIMPORT                        R11 K24 [Color3.fromRGB]
      237 LOADN                            R12 246
      238 LOADN                            R13 222
      239 LOADN                            R14 113
      240 CALL                             R11 3 -1
      241 SETLIST                          R6 R7 -1 [1]
      243 CALL                             R5 1 1
      244 SETTABLEKS                       R5 R2 K29 ["Forest"]
      246 GETIMPORT                        R5 K13 [table.freeze]
      248 NEWTABLE                         R6 0 5
      250 GETIMPORT                        R7 K24 [Color3.fromRGB]
      252 LOADN                            R8 45
      253 LOADN                            R9 73
      254 LOADN                            R10 187
      255 CALL                             R7 3 1
      256 GETIMPORT                        R8 K24 [Color3.fromRGB]
      258 LOADN                            R9 60
      259 LOADN                            R10 97
      260 LOADN                            R11 249
      261 CALL                             R8 3 1
      262 GETIMPORT                        R9 K24 [Color3.fromRGB]
      264 LOADN                            R10 169
      265 LOADN                            R11 124
      266 LOADN                            R12 247
      267 CALL                             R9 3 1
      268 GETIMPORT                        R10 K24 [Color3.fromRGB]
      270 LOADN                            R11 199
      271 LOADN                            R12 169
      272 LOADN                            R13 249
      273 CALL                             R10 3 1
      274 GETIMPORT                        R11 K24 [Color3.fromRGB]
      276 LOADN                            R12 247
      277 LOADN                            R13 185
      278 LOADN                            R14 244
      279 CALL                             R11 3 -1
      280 SETLIST                          R6 R7 -1 [1]
      282 CALL                             R5 1 1
      283 SETTABLEKS                       R5 R2 K30 ["Blue"]
      285 GETIMPORT                        R5 K13 [table.freeze]
      287 NEWTABLE                         R6 0 5
      289 GETIMPORT                        R7 K24 [Color3.fromRGB]
      291 LOADN                            R8 142
      292 LOADN                            R9 32
      293 LOADN                            R10 146
      294 CALL                             R7 3 1
      295 GETIMPORT                        R8 K24 [Color3.fromRGB]
      297 LOADN                            R9 165
      298 LOADN                            R10 46
      299 LOADN                            R11 168
      300 CALL                             R8 3 1
      301 GETIMPORT                        R9 K24 [Color3.fromRGB]
      303 LOADN                            R10 204
      304 LOADN                            R11 81
      305 LOADN                            R12 210
      306 CALL                             R9 3 1
      307 GETIMPORT                        R10 K24 [Color3.fromRGB]
      309 LOADN                            R11 184
      310 LOADN                            R12 147
      311 LOADN                            R13 248
      312 CALL                             R10 3 1
      313 GETIMPORT                        R11 K24 [Color3.fromRGB]
      315 LOADN                            R12 215
      316 LOADN                            R13 194
      317 LOADN                            R14 251
      318 CALL                             R11 3 -1
      319 SETLIST                          R6 R7 -1 [1]
      321 CALL                             R5 1 1
      322 SETTABLEKS                       R5 R2 K31 ["Magenta"]
      324 GETIMPORT                        R5 K13 [table.freeze]
      326 NEWTABLE                         R6 0 5
      328 GETIMPORT                        R7 K24 [Color3.fromRGB]
      330 LOADN                            R8 81
      331 LOADN                            R9 37
      332 LOADN                            R10 155
      333 CALL                             R7 3 1
      334 GETIMPORT                        R8 K24 [Color3.fromRGB]
      336 LOADN                            R9 117
      337 LOADN                            R10 53
      338 LOADN                            R11 226
      339 CALL                             R8 3 1
      340 GETIMPORT                        R9 K24 [Color3.fromRGB]
      342 LOADN                            R10 152
      343 LOADN                            R11 98
      344 LOADN                            R12 246
      345 CALL                             R9 3 1
      346 GETIMPORT                        R10 K24 [Color3.fromRGB]
      348 LOADN                            R11 117
      349 LOADN                            R12 144
      350 LOADN                            R13 250
      351 CALL                             R10 3 1
      352 GETIMPORT                        R11 K24 [Color3.fromRGB]
      354 LOADN                            R12 164
      355 LOADN                            R13 183
      356 LOADN                            R14 252
      357 CALL                             R11 3 -1
      358 SETLIST                          R6 R7 -1 [1]
      360 CALL                             R5 1 1
      361 SETTABLEKS                       R5 R2 K32 ["Purple"]
      363 GETIMPORT                        R5 K13 [table.freeze]
      365 NEWTABLE                         R6 0 5
      367 GETIMPORT                        R7 K24 [Color3.fromRGB]
      369 LOADN                            R8 21
      370 LOADN                            R9 78
      371 LOADN                            R10 22
      372 CALL                             R7 3 1
      373 GETIMPORT                        R8 K24 [Color3.fromRGB]
      375 LOADN                            R9 35
      376 LOADN                            R10 113
      377 LOADN                            R11 32
      378 CALL                             R8 3 1
      379 GETIMPORT                        R9 K24 [Color3.fromRGB]
      381 LOADN                            R10 113
      382 LOADN                            R11 141
      383 LOADN                            R12 37
      384 CALL                             R9 3 1
      385 GETIMPORT                        R10 K24 [Color3.fromRGB]
      387 LOADN                            R11 145
      388 LOADN                            R12 179
      389 LOADN                            R13 49
      390 CALL                             R10 3 1
      391 GETIMPORT                        R11 K24 [Color3.fromRGB]
      393 LOADN                            R12 191
      394 LOADN                            R13 214
      395 LOADN                            R14 115
      396 CALL                             R11 3 -1
      397 SETLIST                          R6 R7 -1 [1]
      399 CALL                             R5 1 1
      400 SETTABLEKS                       R5 R2 K33 ["Green"]
      402 GETIMPORT                        R5 K13 [table.freeze]
      404 NEWTABLE                         R6 0 5
      406 GETIMPORT                        R7 K24 [Color3.fromRGB]
      408 LOADN                            R8 191
      409 LOADN                            R9 42
      410 LOADN                            R10 14
      411 CALL                             R7 3 1
      412 GETIMPORT                        R8 K24 [Color3.fromRGB]
      414 LOADN                            R9 214
      415 LOADN                            R10 60
      416 LOADN                            R11 33
      417 CALL                             R8 3 1
      418 GETIMPORT                        R9 K24 [Color3.fromRGB]
      420 LOADN                            R10 230
      421 LOADN                            R11 83
      422 LOADN                            R12 55
      423 CALL                             R9 3 1
      424 GETIMPORT                        R10 K24 [Color3.fromRGB]
      426 LOADN                            R11 241
      427 LOADN                            R12 111
      428 LOADN                            R13 82
      429 CALL                             R10 3 1
      430 GETIMPORT                        R11 K24 [Color3.fromRGB]
      432 LOADN                            R12 246
      433 LOADN                            R13 137
      434 LOADN                            R14 112
      435 CALL                             R11 3 -1
      436 SETLIST                          R6 R7 -1 [1]
      438 CALL                             R5 1 1
      439 SETTABLEKS                       R5 R2 K34 ["Red"]
      441 GETIMPORT                        R5 K13 [table.freeze]
      443 DUPTABLE                         R6 K41 [{"Default", "Depth", "CastShadows", "CastShadowsPancaked", "Transparent", "Terrain", "Grass"}]
      444 GETTABLEKS                       R7 R2 K22 ["Default"]
      446 SETTABLEKS                       R7 R6 K22 ["Default"]
      448 GETTABLEKS                       R7 R2 K30 ["Blue"]
      450 SETTABLEKS                       R7 R6 K35 ["Depth"]
      452 GETTABLEKS                       R7 R2 K32 ["Purple"]
      454 SETTABLEKS                       R7 R6 K36 ["CastShadows"]
      456 GETTABLEKS                       R7 R2 K32 ["Purple"]
      458 SETTABLEKS                       R7 R6 K37 ["CastShadowsPancaked"]
      460 GETTABLEKS                       R7 R2 K29 ["Forest"]
      462 SETTABLEKS                       R7 R6 K38 ["Transparent"]
      464 GETTABLEKS                       R7 R2 K33 ["Green"]
      466 SETTABLEKS                       R7 R6 K39 ["Terrain"]
      468 GETTABLEKS                       R7 R2 K33 ["Green"]
      470 SETTABLEKS                       R7 R6 K40 ["Grass"]
      472 CALL                             R5 1 1
      473 SETTABLEKS                       R5 R2 K42 ["PassRamps"]
      475 GETIMPORT                        R5 K13 [table.freeze]
      477 DUPTABLE                         R6 K53 [{"Opaque", "Transparent", "Terrain", "Grass", "UI", "Decal", "Cloud", "GenericPostProcess", "SSAO", "DOF", "Particles", "Sky", "Shadows"}]
      478 GETIMPORT                        R7 K24 [Color3.fromRGB]
      480 LOADN                            R8 40
      481 LOADN                            R9 123
      482 LOADN                            R10 168
      483 CALL                             R7 3 1
      484 SETTABLEKS                       R7 R6 K43 ["Opaque"]
      486 GETIMPORT                        R7 K24 [Color3.fromRGB]
      488 LOADN                            R8 56
      489 LOADN                            R9 160
      490 LOADN                            R10 203
      491 CALL                             R7 3 1
      492 SETTABLEKS                       R7 R6 K38 ["Transparent"]
      494 GETIMPORT                        R7 K24 [Color3.fromRGB]
      496 LOADN                            R8 42
      497 LOADN                            R9 132
      498 LOADN                            R10 37
      499 CALL                             R7 3 1
      500 SETTABLEKS                       R7 R6 K39 ["Terrain"]
      502 GETIMPORT                        R7 K24 [Color3.fromRGB]
      504 LOADN                            R8 82
      505 LOADN                            R9 207
      506 LOADN                            R10 131
      507 CALL                             R7 3 1
      508 SETTABLEKS                       R7 R6 K40 ["Grass"]
      510 GETIMPORT                        R7 K24 [Color3.fromRGB]
      512 LOADN                            R8 145
      513 LOADN                            R9 179
      514 LOADN                            R10 49
      515 CALL                             R7 3 1
      516 SETTABLEKS                       R7 R6 K44 ["UI"]
      518 GETIMPORT                        R7 K24 [Color3.fromRGB]
      520 LOADN                            R8 88
      521 LOADN                            R9 197
      522 LOADN                            R10 232
      523 CALL                             R7 3 1
      524 SETTABLEKS                       R7 R6 K45 ["Decal"]
      526 GETIMPORT                        R7 K24 [Color3.fromRGB]
      528 LOADN                            R8 124
      529 LOADN                            R9 217
      530 LOADN                            R10 244
      531 CALL                             R7 3 1
      532 SETTABLEKS                       R7 R6 K46 ["Cloud"]
      534 GETIMPORT                        R7 K24 [Color3.fromRGB]
      536 LOADN                            R8 74
      537 LOADN                            R9 187
      538 LOADN                            R10 119
      539 CALL                             R7 3 1
      540 SETTABLEKS                       R7 R6 K47 ["GenericPostProcess"]
      542 GETIMPORT                        R7 K24 [Color3.fromRGB]
      544 LOADN                            R8 33
      545 LOADN                            R9 105
      546 LOADN                            R10 149
      547 CALL                             R7 3 1
      548 SETTABLEKS                       R7 R6 K48 ["SSAO"]
      550 GETIMPORT                        R7 K24 [Color3.fromRGB]
      552 LOADN                            R8 66
      553 LOADN                            R9 168
      554 LOADN                            R10 108
      555 CALL                             R7 3 1
      556 SETTABLEKS                       R7 R6 K49 ["DOF"]
      558 GETIMPORT                        R7 K24 [Color3.fromRGB]
      560 LOADN                            R8 165
      561 LOADN                            R9 196
      562 LOADN                            R10 67
      563 CALL                             R7 3 1
      564 SETTABLEKS                       R7 R6 K50 ["Particles"]
      566 GETIMPORT                        R7 K24 [Color3.fromRGB]
      568 LOADN                            R8 191
      569 LOADN                            R9 214
      570 LOADN                            R10 115
      571 CALL                             R7 3 1
      572 SETTABLEKS                       R7 R6 K51 ["Sky"]
      574 GETIMPORT                        R7 K24 [Color3.fromRGB]
      576 LOADN                            R8 81
      577 LOADN                            R9 37
      578 LOADN                            R10 155
      579 CALL                             R7 3 1
      580 SETTABLEKS                       R7 R6 K52 ["Shadows"]
      582 CALL                             R5 1 1
      583 SETTABLEKS                       R5 R2 K54 ["TriangleCategories"]
      585 GETIMPORT                        R5 K13 [table.freeze]
      587 MOVE                             R6 R2
      588 CALL                             R5 1 -1
      589 RETURN                           R5 -1
