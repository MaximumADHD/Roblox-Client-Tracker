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
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["darkenForHeader"]
        6 GETIMPORT                        R1 K4 [table.freeze]
        8 NEWTABLE                         R2 0 5
       10 GETIMPORT                        R3 K7 [Color3.fromHex]
       12 LOADK                            R4 K8 ["#4a2882"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K7 [Color3.fromHex]
       16 LOADK                            R5 K9 ["#5c6aa7"]
       17 CALL                             R4 1 1
       18 GETIMPORT                        R5 K7 [Color3.fromHex]
       20 LOADK                            R6 K10 ["#4ea4a4"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K7 [Color3.fromHex]
       24 LOADK                            R7 K11 ["#86d5a0"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K7 [Color3.fromHex]
       28 LOADK                            R8 K12 ["#eee5a5"]
       29 CALL                             R7 1 -1
       30 SETLIST                          R2 R3 -1 [1]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K13 ["Default"]
       35 GETIMPORT                        R1 K4 [table.freeze]
       37 NEWTABLE                         R2 0 5
       39 GETIMPORT                        R3 K15 [Color3.fromRGB]
       41 LOADN                            R4 60
       42 LOADN                            R5 97
       43 LOADN                            R6 249
       44 CALL                             R3 3 1
       45 GETIMPORT                        R4 K15 [Color3.fromRGB]
       47 LOADN                            R5 117
       48 LOADN                            R6 144
       49 LOADN                            R7 250
       50 CALL                             R4 3 1
       51 GETIMPORT                        R5 K15 [Color3.fromRGB]
       53 LOADN                            R6 88
       54 LOADN                            R7 197
       55 LOADN                            R8 232
       56 CALL                             R5 3 1
       57 GETIMPORT                        R6 K15 [Color3.fromRGB]
       59 LOADN                            R7 160
       60 LOADN                            R8 233
       61 LOADN                            R9 252
       62 CALL                             R6 3 1
       63 GETIMPORT                        R7 K15 [Color3.fromRGB]
       65 LOADN                            R8 210
       66 LOADN                            R9 248
       67 LOADN                            R10 255
       68 CALL                             R7 3 -1
       69 SETLIST                          R2 R3 -1 [1]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K16 ["IceBlue"]
       74 GETIMPORT                        R1 K4 [table.freeze]
       76 NEWTABLE                         R2 0 5
       78 GETIMPORT                        R3 K15 [Color3.fromRGB]
       80 LOADN                            R4 35
       81 LOADN                            R5 113
       82 LOADN                            R6 32
       83 CALL                             R3 3 1
       84 GETIMPORT                        R4 K15 [Color3.fromRGB]
       86 LOADN                            R5 66
       87 LOADN                            R6 168
       88 LOADN                            R7 108
       89 CALL                             R4 3 1
       90 GETIMPORT                        R5 K15 [Color3.fromRGB]
       92 LOADN                            R6 145
       93 LOADN                            R7 179
       94 LOADN                            R8 49
       95 CALL                             R5 3 1
       96 GETIMPORT                        R6 K15 [Color3.fromRGB]
       98 LOADN                            R7 242
       99 LOADN                            R8 200
      100 LOADN                            R9 56
      101 CALL                             R6 3 1
      102 GETIMPORT                        R7 K15 [Color3.fromRGB]
      104 LOADN                            R8 246
      105 LOADN                            R9 222
      106 LOADN                            R10 113
      107 CALL                             R7 3 -1
      108 SETLIST                          R2 R3 -1 [1]
      110 CALL                             R1 1 1
      111 SETTABLEKS                       R1 R0 K17 ["Forest"]
      113 GETIMPORT                        R1 K4 [table.freeze]
      115 NEWTABLE                         R2 0 5
      117 GETIMPORT                        R3 K15 [Color3.fromRGB]
      119 LOADN                            R4 45
      120 LOADN                            R5 73
      121 LOADN                            R6 187
      122 CALL                             R3 3 1
      123 GETIMPORT                        R4 K15 [Color3.fromRGB]
      125 LOADN                            R5 60
      126 LOADN                            R6 97
      127 LOADN                            R7 249
      128 CALL                             R4 3 1
      129 GETIMPORT                        R5 K15 [Color3.fromRGB]
      131 LOADN                            R6 169
      132 LOADN                            R7 124
      133 LOADN                            R8 247
      134 CALL                             R5 3 1
      135 GETIMPORT                        R6 K15 [Color3.fromRGB]
      137 LOADN                            R7 199
      138 LOADN                            R8 169
      139 LOADN                            R9 249
      140 CALL                             R6 3 1
      141 GETIMPORT                        R7 K15 [Color3.fromRGB]
      143 LOADN                            R8 247
      144 LOADN                            R9 185
      145 LOADN                            R10 244
      146 CALL                             R7 3 -1
      147 SETLIST                          R2 R3 -1 [1]
      149 CALL                             R1 1 1
      150 SETTABLEKS                       R1 R0 K18 ["Blue"]
      152 GETIMPORT                        R1 K4 [table.freeze]
      154 NEWTABLE                         R2 0 5
      156 GETIMPORT                        R3 K15 [Color3.fromRGB]
      158 LOADN                            R4 142
      159 LOADN                            R5 32
      160 LOADN                            R6 146
      161 CALL                             R3 3 1
      162 GETIMPORT                        R4 K15 [Color3.fromRGB]
      164 LOADN                            R5 165
      165 LOADN                            R6 46
      166 LOADN                            R7 168
      167 CALL                             R4 3 1
      168 GETIMPORT                        R5 K15 [Color3.fromRGB]
      170 LOADN                            R6 204
      171 LOADN                            R7 81
      172 LOADN                            R8 210
      173 CALL                             R5 3 1
      174 GETIMPORT                        R6 K15 [Color3.fromRGB]
      176 LOADN                            R7 184
      177 LOADN                            R8 147
      178 LOADN                            R9 248
      179 CALL                             R6 3 1
      180 GETIMPORT                        R7 K15 [Color3.fromRGB]
      182 LOADN                            R8 215
      183 LOADN                            R9 194
      184 LOADN                            R10 251
      185 CALL                             R7 3 -1
      186 SETLIST                          R2 R3 -1 [1]
      188 CALL                             R1 1 1
      189 SETTABLEKS                       R1 R0 K19 ["Magenta"]
      191 GETIMPORT                        R1 K4 [table.freeze]
      193 NEWTABLE                         R2 0 5
      195 GETIMPORT                        R3 K15 [Color3.fromRGB]
      197 LOADN                            R4 81
      198 LOADN                            R5 37
      199 LOADN                            R6 155
      200 CALL                             R3 3 1
      201 GETIMPORT                        R4 K15 [Color3.fromRGB]
      203 LOADN                            R5 117
      204 LOADN                            R6 53
      205 LOADN                            R7 226
      206 CALL                             R4 3 1
      207 GETIMPORT                        R5 K15 [Color3.fromRGB]
      209 LOADN                            R6 152
      210 LOADN                            R7 98
      211 LOADN                            R8 246
      212 CALL                             R5 3 1
      213 GETIMPORT                        R6 K15 [Color3.fromRGB]
      215 LOADN                            R7 117
      216 LOADN                            R8 144
      217 LOADN                            R9 250
      218 CALL                             R6 3 1
      219 GETIMPORT                        R7 K15 [Color3.fromRGB]
      221 LOADN                            R8 164
      222 LOADN                            R9 183
      223 LOADN                            R10 252
      224 CALL                             R7 3 -1
      225 SETLIST                          R2 R3 -1 [1]
      227 CALL                             R1 1 1
      228 SETTABLEKS                       R1 R0 K20 ["Purple"]
      230 GETIMPORT                        R1 K4 [table.freeze]
      232 NEWTABLE                         R2 0 5
      234 GETIMPORT                        R3 K15 [Color3.fromRGB]
      236 LOADN                            R4 21
      237 LOADN                            R5 78
      238 LOADN                            R6 22
      239 CALL                             R3 3 1
      240 GETIMPORT                        R4 K15 [Color3.fromRGB]
      242 LOADN                            R5 35
      243 LOADN                            R6 113
      244 LOADN                            R7 32
      245 CALL                             R4 3 1
      246 GETIMPORT                        R5 K15 [Color3.fromRGB]
      248 LOADN                            R6 113
      249 LOADN                            R7 141
      250 LOADN                            R8 37
      251 CALL                             R5 3 1
      252 GETIMPORT                        R6 K15 [Color3.fromRGB]
      254 LOADN                            R7 145
      255 LOADN                            R8 179
      256 LOADN                            R9 49
      257 CALL                             R6 3 1
      258 GETIMPORT                        R7 K15 [Color3.fromRGB]
      260 LOADN                            R8 191
      261 LOADN                            R9 214
      262 LOADN                            R10 115
      263 CALL                             R7 3 -1
      264 SETLIST                          R2 R3 -1 [1]
      266 CALL                             R1 1 1
      267 SETTABLEKS                       R1 R0 K21 ["Green"]
      269 GETIMPORT                        R1 K4 [table.freeze]
      271 NEWTABLE                         R2 0 5
      273 GETIMPORT                        R3 K15 [Color3.fromRGB]
      275 LOADN                            R4 191
      276 LOADN                            R5 42
      277 LOADN                            R6 14
      278 CALL                             R3 3 1
      279 GETIMPORT                        R4 K15 [Color3.fromRGB]
      281 LOADN                            R5 214
      282 LOADN                            R6 60
      283 LOADN                            R7 33
      284 CALL                             R4 3 1
      285 GETIMPORT                        R5 K15 [Color3.fromRGB]
      287 LOADN                            R6 230
      288 LOADN                            R7 83
      289 LOADN                            R8 55
      290 CALL                             R5 3 1
      291 GETIMPORT                        R6 K15 [Color3.fromRGB]
      293 LOADN                            R7 241
      294 LOADN                            R8 111
      295 LOADN                            R9 82
      296 CALL                             R6 3 1
      297 GETIMPORT                        R7 K15 [Color3.fromRGB]
      299 LOADN                            R8 246
      300 LOADN                            R9 137
      301 LOADN                            R10 112
      302 CALL                             R7 3 -1
      303 SETLIST                          R2 R3 -1 [1]
      305 CALL                             R1 1 1
      306 SETTABLEKS                       R1 R0 K22 ["Red"]
      308 GETIMPORT                        R1 K4 [table.freeze]
      310 DUPTABLE                         R2 K29 [{"Default", "Depth", "CastShadows", "CastShadowsPancaked", "Transparent", "Terrain", "Grass"}]
      311 GETTABLEKS                       R3 R0 K13 ["Default"]
      313 SETTABLEKS                       R3 R2 K13 ["Default"]
      315 GETTABLEKS                       R3 R0 K18 ["Blue"]
      317 SETTABLEKS                       R3 R2 K23 ["Depth"]
      319 GETTABLEKS                       R3 R0 K20 ["Purple"]
      321 SETTABLEKS                       R3 R2 K24 ["CastShadows"]
      323 GETTABLEKS                       R3 R0 K20 ["Purple"]
      325 SETTABLEKS                       R3 R2 K25 ["CastShadowsPancaked"]
      327 GETTABLEKS                       R3 R0 K17 ["Forest"]
      329 SETTABLEKS                       R3 R2 K26 ["Transparent"]
      331 GETTABLEKS                       R3 R0 K21 ["Green"]
      333 SETTABLEKS                       R3 R2 K27 ["Terrain"]
      335 GETTABLEKS                       R3 R0 K21 ["Green"]
      337 SETTABLEKS                       R3 R2 K28 ["Grass"]
      339 CALL                             R1 1 1
      340 SETTABLEKS                       R1 R0 K30 ["PassRamps"]
      342 GETIMPORT                        R1 K4 [table.freeze]
      344 NEWTABLE                         R2 0 5
      346 GETIMPORT                        R3 K15 [Color3.fromRGB]
      348 LOADN                            R4 159
      349 LOADN                            R5 56
      350 LOADN                            R6 73
      351 CALL                             R3 3 1
      352 GETIMPORT                        R4 K15 [Color3.fromRGB]
      354 LOADN                            R5 190
      355 LOADN                            R6 81
      356 LOADN                            R7 88
      357 CALL                             R4 3 1
      358 GETIMPORT                        R5 K15 [Color3.fromRGB]
      360 LOADN                            R6 195
      361 LOADN                            R7 112
      362 LOADN                            R8 100
      363 CALL                             R5 3 1
      364 GETIMPORT                        R6 K15 [Color3.fromRGB]
      366 LOADN                            R7 221
      367 LOADN                            R8 142
      368 LOADN                            R9 125
      369 CALL                             R6 3 1
      370 GETIMPORT                        R7 K15 [Color3.fromRGB]
      372 LOADN                            R8 237
      373 LOADN                            R9 165
      374 LOADN                            R10 148
      375 CALL                             R7 3 -1
      376 SETLIST                          R2 R3 -1 [1]
      378 CALL                             R1 1 1
      379 SETTABLEKS                       R1 R0 K31 ["IceBlueWarm"]
      381 GETIMPORT                        R1 K4 [table.freeze]
      383 NEWTABLE                         R2 0 5
      385 GETIMPORT                        R3 K15 [Color3.fromRGB]
      387 LOADN                            R4 31
      388 LOADN                            R5 83
      389 LOADN                            R6 79
      390 CALL                             R3 3 1
      391 GETIMPORT                        R4 K15 [Color3.fromRGB]
      393 LOADN                            R5 56
      394 LOADN                            R6 121
      395 LOADN                            R7 87
      396 CALL                             R4 3 1
      397 GETIMPORT                        R5 K15 [Color3.fromRGB]
      399 LOADN                            R6 72
      400 LOADN                            R7 176
      401 LOADN                            R8 139
      402 CALL                             R5 3 1
      403 GETIMPORT                        R6 K15 [Color3.fromRGB]
      405 LOADN                            R7 102
      406 LOADN                            R8 214
      407 LOADN                            R9 162
      408 CALL                             R6 3 1
      409 GETIMPORT                        R7 K15 [Color3.fromRGB]
      411 LOADN                            R8 162
      412 LOADN                            R9 197
      413 LOADN                            R10 101
      414 CALL                             R7 3 -1
      415 SETLIST                          R2 R3 -1 [1]
      417 CALL                             R1 1 1
      418 SETTABLEKS                       R1 R0 K32 ["IceBlueCool"]
      420 GETIMPORT                        R1 K4 [table.freeze]
      422 DUPTABLE                         R2 K43 [{"Opaque", "Transparent", "Terrain", "Grass", "UI", "Decal", "Cloud", "GenericPostProcess", "SSAO", "DOF", "Particles", "Sky", "Shadows"}]
      423 GETIMPORT                        R3 K15 [Color3.fromRGB]
      425 LOADN                            R4 40
      426 LOADN                            R5 123
      427 LOADN                            R6 168
      428 CALL                             R3 3 1
      429 SETTABLEKS                       R3 R2 K33 ["Opaque"]
      431 GETIMPORT                        R3 K15 [Color3.fromRGB]
      433 LOADN                            R4 56
      434 LOADN                            R5 160
      435 LOADN                            R6 203
      436 CALL                             R3 3 1
      437 SETTABLEKS                       R3 R2 K26 ["Transparent"]
      439 GETIMPORT                        R3 K15 [Color3.fromRGB]
      441 LOADN                            R4 42
      442 LOADN                            R5 132
      443 LOADN                            R6 37
      444 CALL                             R3 3 1
      445 SETTABLEKS                       R3 R2 K27 ["Terrain"]
      447 GETIMPORT                        R3 K15 [Color3.fromRGB]
      449 LOADN                            R4 82
      450 LOADN                            R5 207
      451 LOADN                            R6 131
      452 CALL                             R3 3 1
      453 SETTABLEKS                       R3 R2 K28 ["Grass"]
      455 GETIMPORT                        R3 K15 [Color3.fromRGB]
      457 LOADN                            R4 145
      458 LOADN                            R5 179
      459 LOADN                            R6 49
      460 CALL                             R3 3 1
      461 SETTABLEKS                       R3 R2 K34 ["UI"]
      463 GETIMPORT                        R3 K15 [Color3.fromRGB]
      465 LOADN                            R4 88
      466 LOADN                            R5 197
      467 LOADN                            R6 232
      468 CALL                             R3 3 1
      469 SETTABLEKS                       R3 R2 K35 ["Decal"]
      471 GETIMPORT                        R3 K15 [Color3.fromRGB]
      473 LOADN                            R4 124
      474 LOADN                            R5 217
      475 LOADN                            R6 244
      476 CALL                             R3 3 1
      477 SETTABLEKS                       R3 R2 K36 ["Cloud"]
      479 GETIMPORT                        R3 K15 [Color3.fromRGB]
      481 LOADN                            R4 74
      482 LOADN                            R5 187
      483 LOADN                            R6 119
      484 CALL                             R3 3 1
      485 SETTABLEKS                       R3 R2 K37 ["GenericPostProcess"]
      487 GETIMPORT                        R3 K15 [Color3.fromRGB]
      489 LOADN                            R4 33
      490 LOADN                            R5 105
      491 LOADN                            R6 149
      492 CALL                             R3 3 1
      493 SETTABLEKS                       R3 R2 K38 ["SSAO"]
      495 GETIMPORT                        R3 K15 [Color3.fromRGB]
      497 LOADN                            R4 66
      498 LOADN                            R5 168
      499 LOADN                            R6 108
      500 CALL                             R3 3 1
      501 SETTABLEKS                       R3 R2 K39 ["DOF"]
      503 GETIMPORT                        R3 K15 [Color3.fromRGB]
      505 LOADN                            R4 165
      506 LOADN                            R5 196
      507 LOADN                            R6 67
      508 CALL                             R3 3 1
      509 SETTABLEKS                       R3 R2 K40 ["Particles"]
      511 GETIMPORT                        R3 K15 [Color3.fromRGB]
      513 LOADN                            R4 191
      514 LOADN                            R5 214
      515 LOADN                            R6 115
      516 CALL                             R3 3 1
      517 SETTABLEKS                       R3 R2 K41 ["Sky"]
      519 GETIMPORT                        R3 K15 [Color3.fromRGB]
      521 LOADN                            R4 81
      522 LOADN                            R5 37
      523 LOADN                            R6 155
      524 CALL                             R3 3 1
      525 SETTABLEKS                       R3 R2 K42 ["Shadows"]
      527 CALL                             R1 1 1
      528 SETTABLEKS                       R1 R0 K44 ["TriangleCategories"]
      530 GETIMPORT                        R1 K4 [table.freeze]
      532 MOVE                             R2 R0
      533 CALL                             R1 1 -1
      534 RETURN                           R1 -1
