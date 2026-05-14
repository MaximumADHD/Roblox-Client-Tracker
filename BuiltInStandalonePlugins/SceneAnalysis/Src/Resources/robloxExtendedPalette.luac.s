PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["palette"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["indexPalette"]
        9 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       11 MOVE                             R7 R4
       12 GETIMPORT                        R5 K4 [table.insert]
       14 CALL                             R5 2 0
       15 FORGLOOP                         R0 2 ; [-10]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["palette"]
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["names"]
       26 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       28 MOVE                             R7 R3
       29 GETIMPORT                        R5 K4 [table.insert]
       31 CALL                             R5 2 0
       32 FORGLOOP                         R0 2 ; [-10]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K0 ["palette"]
       37 LOADNIL                          R1
       38 LOADNIL                          R2
       39 FORGPREP                         R0
       40 GETIMPORT                        R5 K7 [table.freeze]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 FORGLOOP                         R0 2 ; [-5]
       46 GETIMPORT                        R0 K7 [table.freeze]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K1 ["indexPalette"]
       51 CALL                             R0 1 0
       52 GETIMPORT                        R0 K7 [table.freeze]
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K5 ["names"]
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["names"]
        3 LENGTH                           R0 R1
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["indexPalette"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["palette"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["palette"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["palette"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["names"]
       11 GETTABLEN                        R3 R4 1
       12 GETTABLE                         R1 R2 R3
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["indexPalette"]
        3 SUBK                             R5 R0 K1 [1]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["indexPalette"]
        7 LENGTH                           R6 R7
        8 MOD                              R4 R5 R6
        9 ADDK                             R3 R4 K1 [1]
       10 GETTABLE                         R1 R2 R3
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["names"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["indexPalette"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["names"]
       11 NEWTABLE                         R1 16 0
       13 NEWTABLE                         R2 0 14
       15 GETIMPORT                        R3 K4 [Color3.fromRGB]
       17 LOADN                            R4 57
       18 LOADN                            R5 5
       19 LOADN                            R6 0
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K4 [Color3.fromRGB]
       23 LOADN                            R5 84
       24 LOADN                            R6 12
       25 LOADN                            R7 1
       26 CALL                             R4 3 1
       27 GETIMPORT                        R5 K4 [Color3.fromRGB]
       29 LOADN                            R6 109
       30 LOADN                            R7 17
       31 LOADN                            R8 2
       32 CALL                             R5 3 1
       33 GETIMPORT                        R6 K4 [Color3.fromRGB]
       35 LOADN                            R7 136
       36 LOADN                            R8 25
       37 LOADN                            R9 3
       38 CALL                             R6 3 1
       39 GETIMPORT                        R7 K4 [Color3.fromRGB]
       41 LOADN                            R8 163
       42 LOADN                            R9 32
       43 LOADN                            R10 6
       44 CALL                             R7 3 1
       45 GETIMPORT                        R8 K4 [Color3.fromRGB]
       47 LOADN                            R9 191
       48 LOADN                            R10 42
       49 LOADN                            R11 14
       50 CALL                             R8 3 1
       51 GETIMPORT                        R9 K4 [Color3.fromRGB]
       53 LOADN                            R10 214
       54 LOADN                            R11 60
       55 LOADN                            R12 33
       56 CALL                             R9 3 1
       57 GETIMPORT                        R10 K4 [Color3.fromRGB]
       59 LOADN                            R11 230
       60 LOADN                            R12 83
       61 LOADN                            R13 55
       62 CALL                             R10 3 1
       63 GETIMPORT                        R11 K4 [Color3.fromRGB]
       65 LOADN                            R12 241
       66 LOADN                            R13 111
       67 LOADN                            R14 82
       68 CALL                             R11 3 1
       69 GETIMPORT                        R12 K4 [Color3.fromRGB]
       71 LOADN                            R13 246
       72 LOADN                            R14 137
       73 LOADN                            R15 112
       74 CALL                             R12 3 1
       75 GETIMPORT                        R13 K4 [Color3.fromRGB]
       77 LOADN                            R14 248
       78 LOADN                            R15 164
       79 LOADN                            R16 144
       80 CALL                             R13 3 1
       81 GETIMPORT                        R14 K4 [Color3.fromRGB]
       83 LOADN                            R15 250
       84 LOADN                            R16 191
       85 LOADN                            R17 176
       86 CALL                             R14 3 1
       87 GETIMPORT                        R15 K4 [Color3.fromRGB]
       89 LOADN                            R16 251
       90 LOADN                            R17 214
       91 LOADN                            R18 204
       92 CALL                             R15 3 1
       93 GETIMPORT                        R16 K4 [Color3.fromRGB]
       95 LOADN                            R17 254
       96 LOADN                            R18 237
       97 LOADN                            R19 234
       98 CALL                             R16 3 -1
       99 SETLIST                          R2 R3 -1 [1]
      101 SETTABLEKS                       R2 R1 K5 ["Red"]
      103 NEWTABLE                         R2 0 14
      105 GETIMPORT                        R3 K4 [Color3.fromRGB]
      107 LOADN                            R4 21
      108 LOADN                            R5 28
      109 LOADN                            R6 3
      110 CALL                             R3 3 1
      111 GETIMPORT                        R4 K4 [Color3.fromRGB]
      113 LOADN                            R5 33
      114 LOADN                            R6 42
      115 LOADN                            R7 7
      116 CALL                             R4 3 1
      117 GETIMPORT                        R5 K4 [Color3.fromRGB]
      119 LOADN                            R6 47
      120 LOADN                            R7 57
      121 LOADN                            R8 11
      122 CALL                             R5 3 1
      123 GETIMPORT                        R6 K4 [Color3.fromRGB]
      125 LOADN                            R7 59
      126 LOADN                            R8 73
      127 LOADN                            R9 16
      128 CALL                             R6 3 1
      129 GETIMPORT                        R7 K4 [Color3.fromRGB]
      131 LOADN                            R8 72
      132 LOADN                            R9 89
      133 LOADN                            R10 20
      134 CALL                             R7 3 1
      135 GETIMPORT                        R8 K4 [Color3.fromRGB]
      137 LOADN                            R9 85
      138 LOADN                            R10 107
      139 LOADN                            R11 25
      140 CALL                             R8 3 1
      141 GETIMPORT                        R9 K4 [Color3.fromRGB]
      143 LOADN                            R10 100
      144 LOADN                            R11 125
      145 LOADN                            R12 31
      146 CALL                             R9 3 1
      147 GETIMPORT                        R10 K4 [Color3.fromRGB]
      149 LOADN                            R11 113
      150 LOADN                            R12 141
      151 LOADN                            R13 37
      152 CALL                             R10 3 1
      153 GETIMPORT                        R11 K4 [Color3.fromRGB]
      155 LOADN                            R12 129
      156 LOADN                            R13 161
      157 LOADN                            R14 42
      158 CALL                             R11 3 1
      159 GETIMPORT                        R12 K4 [Color3.fromRGB]
      161 LOADN                            R13 145
      162 LOADN                            R14 179
      163 LOADN                            R15 49
      164 CALL                             R12 3 1
      165 GETIMPORT                        R13 K4 [Color3.fromRGB]
      167 LOADN                            R14 165
      168 LOADN                            R15 196
      169 LOADN                            R16 67
      170 CALL                             R13 3 1
      171 GETIMPORT                        R14 K4 [Color3.fromRGB]
      173 LOADN                            R15 191
      174 LOADN                            R16 214
      175 LOADN                            R17 115
      176 CALL                             R14 3 1
      177 GETIMPORT                        R15 K4 [Color3.fromRGB]
      179 LOADN                            R16 214
      180 LOADN                            R17 228
      181 LOADN                            R18 161
      182 CALL                             R15 3 1
      183 GETIMPORT                        R16 K4 [Color3.fromRGB]
      185 LOADN                            R17 237
      186 LOADN                            R18 244
      187 LOADN                            R19 216
      188 CALL                             R16 3 -1
      189 SETLIST                          R2 R3 -1 [1]
      191 SETTABLEKS                       R2 R1 K6 ["Lima"]
      193 NEWTABLE                         R2 0 14
      195 GETIMPORT                        R3 K4 [Color3.fromRGB]
      197 LOADN                            R4 3
      198 LOADN                            R5 25
      199 LOADN                            R6 45
      200 CALL                             R3 3 1
      201 GETIMPORT                        R4 K4 [Color3.fromRGB]
      203 LOADN                            R5 8
      204 LOADN                            R6 41
      205 LOADN                            R7 68
      206 CALL                             R4 3 1
      207 GETIMPORT                        R5 K4 [Color3.fromRGB]
      209 LOADN                            R6 14
      210 LOADN                            R7 56
      211 LOADN                            R8 90
      212 CALL                             R5 3 1
      213 GETIMPORT                        R6 K4 [Color3.fromRGB]
      215 LOADN                            R7 20
      216 LOADN                            R8 71
      217 LOADN                            R9 111
      218 CALL                             R6 3 1
      219 GETIMPORT                        R7 K4 [Color3.fromRGB]
      221 LOADN                            R8 26
      222 LOADN                            R9 87
      223 LOADN                            R10 129
      224 CALL                             R7 3 1
      225 GETIMPORT                        R8 K4 [Color3.fromRGB]
      227 LOADN                            R9 33
      228 LOADN                            R10 105
      229 LOADN                            R11 149
      230 CALL                             R8 3 1
      231 GETIMPORT                        R9 K4 [Color3.fromRGB]
      233 LOADN                            R10 40
      234 LOADN                            R11 123
      235 LOADN                            R12 168
      236 CALL                             R9 3 1
      237 GETIMPORT                        R10 K4 [Color3.fromRGB]
      239 LOADN                            R11 47
      240 LOADN                            R12 140
      241 LOADN                            R13 186
      242 CALL                             R10 3 1
      243 GETIMPORT                        R11 K4 [Color3.fromRGB]
      245 LOADN                            R12 56
      246 LOADN                            R13 160
      247 LOADN                            R14 203
      248 CALL                             R11 3 1
      249 GETIMPORT                        R12 K4 [Color3.fromRGB]
      251 LOADN                            R13 67
      252 LOADN                            R14 179
      253 LOADN                            R15 220
      254 CALL                             R12 3 1
      255 GETIMPORT                        R13 K4 [Color3.fromRGB]
      257 LOADN                            R14 88
      258 LOADN                            R15 197
      259 LOADN                            R16 232
      260 CALL                             R13 3 1
      261 GETIMPORT                        R14 K4 [Color3.fromRGB]
      263 LOADN                            R15 124
      264 LOADN                            R16 217
      265 LOADN                            R17 244
      266 CALL                             R14 3 1
      267 GETIMPORT                        R15 K4 [Color3.fromRGB]
      269 LOADN                            R16 160
      270 LOADN                            R17 233
      271 LOADN                            R18 252
      272 CALL                             R15 3 1
      273 GETIMPORT                        R16 K4 [Color3.fromRGB]
      275 LOADN                            R17 210
      276 LOADN                            R18 248
      277 LOADN                            R19 255
      278 CALL                             R16 3 -1
      279 SETLIST                          R2 R3 -1 [1]
      281 SETTABLEKS                       R2 R1 K7 ["Ice"]
      283 NEWTABLE                         R2 0 14
      285 GETIMPORT                        R3 K4 [Color3.fromRGB]
      287 LOADN                            R4 48
      288 LOADN                            R5 6
      289 LOADN                            R6 48
      290 CALL                             R3 3 1
      291 GETIMPORT                        R4 K4 [Color3.fromRGB]
      293 LOADN                            R5 73
      294 LOADN                            R6 12
      295 LOADN                            R7 73
      296 CALL                             R4 3 1
      297 GETIMPORT                        R5 K4 [Color3.fromRGB]
      299 LOADN                            R6 95
      300 LOADN                            R7 19
      301 LOADN                            R8 96
      302 CALL                             R5 3 1
      303 GETIMPORT                        R6 K4 [Color3.fromRGB]
      305 LOADN                            R7 119
      306 LOADN                            R8 24
      307 LOADN                            R9 122
      308 CALL                             R6 3 1
      309 GETIMPORT                        R7 K4 [Color3.fromRGB]
      311 LOADN                            R8 142
      312 LOADN                            R9 32
      313 LOADN                            R10 146
      314 CALL                             R7 3 1
      315 GETIMPORT                        R8 K4 [Color3.fromRGB]
      317 LOADN                            R9 165
      318 LOADN                            R10 46
      319 LOADN                            R11 168
      320 CALL                             R8 3 1
      321 GETIMPORT                        R9 K4 [Color3.fromRGB]
      323 LOADN                            R10 187
      324 LOADN                            R11 64
      325 LOADN                            R12 190
      326 CALL                             R9 3 1
      327 GETIMPORT                        R10 K4 [Color3.fromRGB]
      329 LOADN                            R11 204
      330 LOADN                            R12 81
      331 LOADN                            R13 210
      332 CALL                             R10 3 1
      333 GETIMPORT                        R11 K4 [Color3.fromRGB]
      335 LOADN                            R12 221
      336 LOADN                            R13 106
      337 LOADN                            R14 225
      338 CALL                             R11 3 1
      339 GETIMPORT                        R12 K4 [Color3.fromRGB]
      341 LOADN                            R13 231
      342 LOADN                            R14 130
      343 LOADN                            R15 234
      344 CALL                             R12 3 1
      345 GETIMPORT                        R13 K4 [Color3.fromRGB]
      347 LOADN                            R14 240
      348 LOADN                            R15 157
      349 LOADN                            R16 239
      350 CALL                             R13 3 1
      351 GETIMPORT                        R14 K4 [Color3.fromRGB]
      353 LOADN                            R15 247
      354 LOADN                            R16 185
      355 LOADN                            R17 244
      356 CALL                             R14 3 1
      357 GETIMPORT                        R15 K4 [Color3.fromRGB]
      359 LOADN                            R16 251
      360 LOADN                            R17 210
      361 LOADN                            R18 247
      362 CALL                             R15 3 1
      363 GETIMPORT                        R16 K4 [Color3.fromRGB]
      365 LOADN                            R17 253
      366 LOADN                            R18 236
      367 LOADN                            R19 251
      368 CALL                             R16 3 -1
      369 SETLIST                          R2 R3 -1 [1]
      371 SETTABLEKS                       R2 R1 K8 ["Magenta"]
      373 NEWTABLE                         R2 0 14
      375 GETIMPORT                        R3 K4 [Color3.fromRGB]
      377 LOADN                            R4 48
      378 LOADN                            R5 17
      379 LOADN                            R6 2
      380 CALL                             R3 3 1
      381 GETIMPORT                        R4 K4 [Color3.fromRGB]
      383 LOADN                            R5 69
      384 LOADN                            R6 27
      385 LOADN                            R7 3
      386 CALL                             R4 3 1
      387 GETIMPORT                        R5 K4 [Color3.fromRGB]
      389 LOADN                            R6 91
      390 LOADN                            R7 38
      391 LOADN                            R8 5
      392 CALL                             R5 3 1
      393 GETIMPORT                        R6 K4 [Color3.fromRGB]
      395 LOADN                            R7 114
      396 LOADN                            R8 49
      397 LOADN                            R9 8
      398 CALL                             R6 3 1
      399 GETIMPORT                        R7 K4 [Color3.fromRGB]
      401 LOADN                            R8 136
      402 LOADN                            R9 62
      403 LOADN                            R10 12
      404 CALL                             R7 3 1
      405 GETIMPORT                        R8 K4 [Color3.fromRGB]
      407 LOADN                            R9 159
      408 LOADN                            R10 76
      409 LOADN                            R11 16
      410 CALL                             R8 3 1
      411 GETIMPORT                        R9 K4 [Color3.fromRGB]
      413 LOADN                            R10 183
      414 LOADN                            R11 91
      415 LOADN                            R12 20
      416 CALL                             R9 3 1
      417 GETIMPORT                        R10 K4 [Color3.fromRGB]
      419 LOADN                            R11 205
      420 LOADN                            R12 106
      421 LOADN                            R13 25
      422 CALL                             R10 3 1
      423 GETIMPORT                        R11 K4 [Color3.fromRGB]
      425 LOADN                            R12 224
      426 LOADN                            R13 125
      427 LOADN                            R14 32
      428 CALL                             R11 3 1
      429 GETIMPORT                        R12 K4 [Color3.fromRGB]
      431 LOADN                            R13 237
      432 LOADN                            R14 146
      433 LOADN                            R15 42
      434 CALL                             R12 3 1
      435 GETIMPORT                        R13 K4 [Color3.fromRGB]
      437 LOADN                            R14 248
      438 LOADN                            R15 168
      439 LOADN                            R16 76
      440 CALL                             R13 3 1
      441 GETIMPORT                        R14 K4 [Color3.fromRGB]
      443 LOADN                            R15 250
      444 LOADN                            R16 194
      445 LOADN                            R17 117
      446 CALL                             R14 3 1
      447 GETIMPORT                        R15 K4 [Color3.fromRGB]
      449 LOADN                            R16 251
      450 LOADN                            R17 217
      451 LOADN                            R18 162
      452 CALL                             R15 3 1
      453 GETIMPORT                        R16 K4 [Color3.fromRGB]
      455 LOADN                            R17 254
      456 LOADN                            R18 240
      457 LOADN                            R19 215
      458 CALL                             R16 3 -1
      459 SETLIST                          R2 R3 -1 [1]
      461 SETTABLEKS                       R2 R1 K9 ["Orange"]
      463 NEWTABLE                         R2 0 14
      465 GETIMPORT                        R3 K4 [Color3.fromRGB]
      467 LOADN                            R4 4
      468 LOADN                            R5 29
      469 LOADN                            R6 5
      470 CALL                             R3 3 1
      471 GETIMPORT                        R4 K4 [Color3.fromRGB]
      473 LOADN                            R5 10
      474 LOADN                            R6 47
      475 LOADN                            R7 10
      476 CALL                             R4 3 1
      477 GETIMPORT                        R5 K4 [Color3.fromRGB]
      479 LOADN                            R6 15
      480 LOADN                            R7 62
      481 LOADN                            R8 16
      482 CALL                             R5 3 1
      483 GETIMPORT                        R6 K4 [Color3.fromRGB]
      485 LOADN                            R7 21
      486 LOADN                            R8 78
      487 LOADN                            R9 22
      488 CALL                             R6 3 1
      489 GETIMPORT                        R7 K4 [Color3.fromRGB]
      491 LOADN                            R8 28
      492 LOADN                            R9 95
      493 LOADN                            R10 27
      494 CALL                             R7 3 1
      495 GETIMPORT                        R8 K4 [Color3.fromRGB]
      497 LOADN                            R9 35
      498 LOADN                            R10 113
      499 LOADN                            R11 32
      500 CALL                             R8 3 1
      501 GETIMPORT                        R9 K4 [Color3.fromRGB]
      503 LOADN                            R10 42
      504 LOADN                            R11 132
      505 LOADN                            R12 37
      506 CALL                             R9 3 1
      507 GETIMPORT                        R10 K4 [Color3.fromRGB]
      509 LOADN                            R11 49
      510 LOADN                            R12 150
      511 LOADN                            R13 45
      512 CALL                             R10 3 1
      513 GETIMPORT                        R11 K4 [Color3.fromRGB]
      515 LOADN                            R12 61
      516 LOADN                            R13 170
      517 LOADN                            R14 59
      518 CALL                             R11 3 1
      519 GETIMPORT                        R12 K4 [Color3.fromRGB]
      521 LOADN                            R13 80
      522 LOADN                            R14 189
      523 LOADN                            R15 77
      524 CALL                             R12 3 1
      525 GETIMPORT                        R13 K4 [Color3.fromRGB]
      527 LOADN                            R14 105
      528 LOADN                            R15 206
      529 LOADN                            R16 96
      530 CALL                             R13 3 1
      531 GETIMPORT                        R14 K4 [Color3.fromRGB]
      533 LOADN                            R15 137
      534 LOADN                            R16 223
      535 LOADN                            R17 123
      536 CALL                             R14 3 1
      537 GETIMPORT                        R15 K4 [Color3.fromRGB]
      539 LOADN                            R16 171
      540 LOADN                            R17 239
      541 LOADN                            R18 151
      542 CALL                             R15 3 1
      543 GETIMPORT                        R16 K4 [Color3.fromRGB]
      545 LOADN                            R17 217
      546 LOADN                            R18 251
      547 LOADN                            R19 204
      548 CALL                             R16 3 -1
      549 SETLIST                          R2 R3 -1 [1]
      551 SETTABLEKS                       R2 R1 K10 ["Green"]
      553 NEWTABLE                         R2 0 14
      555 GETIMPORT                        R3 K4 [Color3.fromRGB]
      557 LOADN                            R4 12
      558 LOADN                            R5 21
      559 LOADN                            R6 66
      560 CALL                             R3 3 1
      561 GETIMPORT                        R4 K4 [Color3.fromRGB]
      563 LOADN                            R5 20
      564 LOADN                            R6 35
      565 LOADN                            R7 94
      566 CALL                             R4 3 1
      567 GETIMPORT                        R5 K4 [Color3.fromRGB]
      569 LOADN                            R6 28
      570 LOADN                            R7 47
      571 LOADN                            R8 121
      572 CALL                             R5 3 1
      573 GETIMPORT                        R6 K4 [Color3.fromRGB]
      575 LOADN                            R7 37
      576 LOADN                            R8 61
      577 LOADN                            R9 153
      578 CALL                             R6 3 1
      579 GETIMPORT                        R7 K4 [Color3.fromRGB]
      581 LOADN                            R8 45
      582 LOADN                            R9 73
      583 LOADN                            R10 187
      584 CALL                             R7 3 1
      585 GETIMPORT                        R8 K4 [Color3.fromRGB]
      587 LOADN                            R9 53
      588 LOADN                            R10 86
      589 LOADN                            R11 223
      590 CALL                             R8 3 1
      591 GETIMPORT                        R9 K4 [Color3.fromRGB]
      593 LOADN                            R10 60
      594 LOADN                            R11 97
      595 LOADN                            R12 249
      596 CALL                             R9 3 1
      597 GETIMPORT                        R10 K4 [Color3.fromRGB]
      599 LOADN                            R11 92
      600 LOADN                            R12 124
      601 LOADN                            R13 250
      602 CALL                             R10 3 1
      603 GETIMPORT                        R11 K4 [Color3.fromRGB]
      605 LOADN                            R12 117
      606 LOADN                            R13 144
      607 LOADN                            R14 250
      608 CALL                             R11 3 1
      609 GETIMPORT                        R12 K4 [Color3.fromRGB]
      611 LOADN                            R13 140
      612 LOADN                            R14 162
      613 LOADN                            R15 251
      614 CALL                             R12 3 1
      615 GETIMPORT                        R13 K4 [Color3.fromRGB]
      617 LOADN                            R14 164
      618 LOADN                            R15 183
      619 LOADN                            R16 252
      620 CALL                             R13 3 1
      621 GETIMPORT                        R14 K4 [Color3.fromRGB]
      623 LOADN                            R15 190
      624 LOADN                            R16 202
      625 LOADN                            R17 252
      626 CALL                             R14 3 1
      627 GETIMPORT                        R15 K4 [Color3.fromRGB]
      629 LOADN                            R16 213
      630 LOADN                            R17 221
      631 LOADN                            R18 253
      632 CALL                             R15 3 1
      633 GETIMPORT                        R16 K4 [Color3.fromRGB]
      635 LOADN                            R17 236
      636 LOADN                            R18 241
      637 LOADN                            R19 254
      638 CALL                             R16 3 -1
      639 SETLIST                          R2 R3 -1 [1]
      641 SETTABLEKS                       R2 R1 K11 ["Blue"]
      643 NEWTABLE                         R2 0 14
      645 GETIMPORT                        R3 K4 [Color3.fromRGB]
      647 LOADN                            R4 55
      648 LOADN                            R5 5
      649 LOADN                            R6 25
      650 CALL                             R3 3 1
      651 GETIMPORT                        R4 K4 [Color3.fromRGB]
      653 LOADN                            R5 80
      654 LOADN                            R6 11
      655 LOADN                            R7 39
      656 CALL                             R4 3 1
      657 GETIMPORT                        R5 K4 [Color3.fromRGB]
      659 LOADN                            R6 105
      660 LOADN                            R7 17
      661 LOADN                            R8 53
      662 CALL                             R5 3 1
      663 GETIMPORT                        R6 K4 [Color3.fromRGB]
      665 LOADN                            R7 131
      666 LOADN                            R8 24
      667 LOADN                            R9 64
      668 CALL                             R6 3 1
      669 GETIMPORT                        R7 K4 [Color3.fromRGB]
      671 LOADN                            R8 158
      672 LOADN                            R9 32
      673 LOADN                            R10 79
      674 CALL                             R7 3 1
      675 GETIMPORT                        R8 K4 [Color3.fromRGB]
      677 LOADN                            R9 182
      678 LOADN                            R10 48
      679 LOADN                            R11 95
      680 CALL                             R8 3 1
      681 GETIMPORT                        R9 K4 [Color3.fromRGB]
      683 LOADN                            R10 203
      684 LOADN                            R11 65
      685 LOADN                            R12 117
      686 CALL                             R9 3 1
      687 GETIMPORT                        R10 K4 [Color3.fromRGB]
      689 LOADN                            R11 220
      690 LOADN                            R12 84
      691 LOADN                            R13 135
      692 CALL                             R10 3 1
      693 GETIMPORT                        R11 K4 [Color3.fromRGB]
      695 LOADN                            R12 233
      696 LOADN                            R13 110
      697 LOADN                            R14 156
      698 CALL                             R11 3 1
      699 GETIMPORT                        R12 K4 [Color3.fromRGB]
      701 LOADN                            R13 243
      702 LOADN                            R14 133
      703 LOADN                            R15 172
      704 CALL                             R12 3 1
      705 GETIMPORT                        R13 K4 [Color3.fromRGB]
      707 LOADN                            R14 248
      708 LOADN                            R15 160
      709 LOADN                            R16 191
      710 CALL                             R13 3 1
      711 GETIMPORT                        R14 K4 [Color3.fromRGB]
      713 LOADN                            R15 249
      714 LOADN                            R16 188
      715 LOADN                            R17 209
      716 CALL                             R14 3 1
      717 GETIMPORT                        R15 K4 [Color3.fromRGB]
      719 LOADN                            R16 251
      720 LOADN                            R17 212
      721 LOADN                            R18 225
      722 CALL                             R15 3 1
      723 GETIMPORT                        R16 K4 [Color3.fromRGB]
      725 LOADN                            R17 253
      726 LOADN                            R18 236
      727 LOADN                            R19 243
      728 CALL                             R16 3 -1
      729 SETLIST                          R2 R3 -1 [1]
      731 SETTABLEKS                       R2 R1 K12 ["Berry"]
      733 NEWTABLE                         R2 0 14
      735 GETIMPORT                        R3 K4 [Color3.fromRGB]
      737 LOADN                            R4 34
      738 LOADN                            R5 24
      739 LOADN                            R6 2
      740 CALL                             R3 3 1
      741 GETIMPORT                        R4 K4 [Color3.fromRGB]
      743 LOADN                            R5 53
      744 LOADN                            R6 38
      745 LOADN                            R7 4
      746 CALL                             R4 3 1
      747 GETIMPORT                        R5 K4 [Color3.fromRGB]
      749 LOADN                            R6 69
      750 LOADN                            R7 50
      751 LOADN                            R8 7
      752 CALL                             R5 3 1
      753 GETIMPORT                        R6 K4 [Color3.fromRGB]
      755 LOADN                            R7 87
      756 LOADN                            R8 64
      757 LOADN                            R9 11
      758 CALL                             R6 3 1
      759 GETIMPORT                        R7 K4 [Color3.fromRGB]
      761 LOADN                            R8 103
      762 LOADN                            R9 80
      763 LOADN                            R10 16
      764 CALL                             R7 3 1
      765 GETIMPORT                        R8 K4 [Color3.fromRGB]
      767 LOADN                            R9 123
      768 LOADN                            R10 96
      769 LOADN                            R11 21
      770 CALL                             R8 3 1
      771 GETIMPORT                        R9 K4 [Color3.fromRGB]
      773 LOADN                            R10 142
      774 LOADN                            R11 112
      775 LOADN                            R12 26
      776 CALL                             R9 3 1
      777 GETIMPORT                        R10 K4 [Color3.fromRGB]
      779 LOADN                            R11 159
      780 LOADN                            R12 128
      781 LOADN                            R13 31
      782 CALL                             R10 3 1
      783 GETIMPORT                        R11 K4 [Color3.fromRGB]
      785 LOADN                            R12 179
      786 LOADN                            R13 147
      787 LOADN                            R14 37
      788 CALL                             R11 3 1
      789 GETIMPORT                        R12 K4 [Color3.fromRGB]
      791 LOADN                            R13 197
      792 LOADN                            R14 163
      793 LOADN                            R15 42
      794 CALL                             R12 3 1
      795 GETIMPORT                        R13 K4 [Color3.fromRGB]
      797 LOADN                            R14 222
      798 LOADN                            R15 180
      799 LOADN                            R16 48
      800 CALL                             R13 3 1
      801 GETIMPORT                        R14 K4 [Color3.fromRGB]
      803 LOADN                            R15 242
      804 LOADN                            R16 200
      805 LOADN                            R17 56
      806 CALL                             R14 3 1
      807 GETIMPORT                        R15 K4 [Color3.fromRGB]
      809 LOADN                            R16 246
      810 LOADN                            R17 222
      811 LOADN                            R18 113
      812 CALL                             R15 3 1
      813 GETIMPORT                        R16 K4 [Color3.fromRGB]
      815 LOADN                            R17 251
      816 LOADN                            R18 242
      817 LOADN                            R19 195
      818 CALL                             R16 3 -1
      819 SETLIST                          R2 R3 -1 [1]
      821 SETTABLEKS                       R2 R1 K13 ["Yellow"]
      823 NEWTABLE                         R2 0 14
      825 GETIMPORT                        R3 K4 [Color3.fromRGB]
      827 LOADN                            R4 7
      828 LOADN                            R5 29
      829 LOADN                            R6 17
      830 CALL                             R3 3 1
      831 GETIMPORT                        R4 K4 [Color3.fromRGB]
      833 LOADN                            R5 14
      834 LOADN                            R6 45
      835 LOADN                            R7 28
      836 CALL                             R4 3 1
      837 GETIMPORT                        R5 K4 [Color3.fromRGB]
      839 LOADN                            R6 22
      840 LOADN                            R7 60
      841 LOADN                            R8 39
      842 CALL                             R5 3 1
      843 GETIMPORT                        R6 K4 [Color3.fromRGB]
      845 LOADN                            R7 29
      846 LOADN                            R8 77
      847 LOADN                            R9 50
      848 CALL                             R6 3 1
      849 GETIMPORT                        R7 K4 [Color3.fromRGB]
      851 LOADN                            R8 35
      852 LOADN                            R9 93
      853 LOADN                            R10 60
      854 CALL                             R7 3 1
      855 GETIMPORT                        R8 K4 [Color3.fromRGB]
      857 LOADN                            R9 42
      858 LOADN                            R10 111
      859 LOADN                            R11 71
      860 CALL                             R8 3 1
      861 GETIMPORT                        R9 K4 [Color3.fromRGB]
      863 LOADN                            R10 50
      864 LOADN                            R11 129
      865 LOADN                            R12 83
      866 CALL                             R9 3 1
      867 GETIMPORT                        R10 K4 [Color3.fromRGB]
      869 LOADN                            R11 57
      870 LOADN                            R12 148
      871 LOADN                            R13 95
      872 CALL                             R10 3 1
      873 GETIMPORT                        R11 K4 [Color3.fromRGB]
      875 LOADN                            R12 66
      876 LOADN                            R13 168
      877 LOADN                            R14 108
      878 CALL                             R11 3 1
      879 GETIMPORT                        R12 K4 [Color3.fromRGB]
      881 LOADN                            R13 74
      882 LOADN                            R14 187
      883 LOADN                            R15 119
      884 CALL                             R12 3 1
      885 GETIMPORT                        R13 K4 [Color3.fromRGB]
      887 LOADN                            R14 82
      888 LOADN                            R15 207
      889 LOADN                            R16 131
      890 CALL                             R13 3 1
      891 GETIMPORT                        R14 K4 [Color3.fromRGB]
      893 LOADN                            R15 82
      894 LOADN                            R16 228
      895 LOADN                            R17 142
      896 CALL                             R14 3 1
      897 GETIMPORT                        R15 K4 [Color3.fromRGB]
      899 LOADN                            R16 125
      900 LOADN                            R17 244
      901 LOADN                            R18 173
      902 CALL                             R15 3 1
      903 GETIMPORT                        R16 K4 [Color3.fromRGB]
      905 LOADN                            R17 198
      906 LOADN                            R18 253
      907 LOADN                            R19 225
      908 CALL                             R16 3 -1
      909 SETLIST                          R2 R3 -1 [1]
      911 SETTABLEKS                       R2 R1 K14 ["RainForest"]
      913 NEWTABLE                         R2 0 14
      915 GETIMPORT                        R3 K4 [Color3.fromRGB]
      917 LOADN                            R4 31
      918 LOADN                            R5 10
      919 LOADN                            R6 65
      920 CALL                             R3 3 1
      921 GETIMPORT                        R4 K4 [Color3.fromRGB]
      923 LOADN                            R5 48
      924 LOADN                            R6 20
      925 LOADN                            R7 95
      926 CALL                             R4 3 1
      927 GETIMPORT                        R5 K4 [Color3.fromRGB]
      929 LOADN                            R6 64
      930 LOADN                            R7 29
      931 LOADN                            R8 124
      932 CALL                             R5 3 1
      933 GETIMPORT                        R6 K4 [Color3.fromRGB]
      935 LOADN                            R7 81
      936 LOADN                            R8 37
      937 LOADN                            R9 155
      938 CALL                             R6 3 1
      939 GETIMPORT                        R7 K4 [Color3.fromRGB]
      941 LOADN                            R8 99
      942 LOADN                            R9 44
      943 LOADN                            R10 191
      944 CALL                             R7 3 1
      945 GETIMPORT                        R8 K4 [Color3.fromRGB]
      947 LOADN                            R9 117
      948 LOADN                            R10 53
      949 LOADN                            R11 226
      950 CALL                             R8 3 1
      951 GETIMPORT                        R9 K4 [Color3.fromRGB]
      953 LOADN                            R10 136
      954 LOADN                            R11 72
      955 LOADN                            R12 246
      956 CALL                             R9 3 1
      957 GETIMPORT                        R10 K4 [Color3.fromRGB]
      959 LOADN                            R11 152
      960 LOADN                            R12 98
      961 LOADN                            R13 246
      962 CALL                             R10 3 1
      963 GETIMPORT                        R11 K4 [Color3.fromRGB]
      965 LOADN                            R12 169
      966 LOADN                            R13 124
      967 LOADN                            R14 247
      968 CALL                             R11 3 1
      969 GETIMPORT                        R12 K4 [Color3.fromRGB]
      971 LOADN                            R13 184
      972 LOADN                            R14 147
      973 LOADN                            R15 248
      974 CALL                             R12 3 1
      975 GETIMPORT                        R13 K4 [Color3.fromRGB]
      977 LOADN                            R14 199
      978 LOADN                            R15 169
      979 LOADN                            R16 249
      980 CALL                             R13 3 1
      981 GETIMPORT                        R14 K4 [Color3.fromRGB]
      983 LOADN                            R15 215
      984 LOADN                            R16 194
      985 LOADN                            R17 251
      986 CALL                             R14 3 1
      987 GETIMPORT                        R15 K4 [Color3.fromRGB]
      989 LOADN                            R16 229
      990 LOADN                            R17 216
      991 LOADN                            R18 252
      992 CALL                             R15 3 1
      993 GETIMPORT                        R16 K4 [Color3.fromRGB]
      995 LOADN                            R17 244
      996 LOADN                            R18 238
      997 LOADN                            R19 254
      998 CALL                             R16 3 -1
      999 SETLIST                          R2 R3 -1 [1]
     1001 SETTABLEKS                       R2 R1 K15 ["Purple"]
     1003 NEWTABLE                         R2 0 14
     1005 GETIMPORT                        R3 K4 [Color3.fromRGB]
     1007 LOADN                            R4 28
     1008 LOADN                            R5 24
     1009 LOADN                            R6 12
     1010 CALL                             R3 3 1
     1011 GETIMPORT                        R4 K4 [Color3.fromRGB]
     1013 LOADN                            R5 44
     1014 LOADN                            R6 39
     1015 LOADN                            R7 22
     1016 CALL                             R4 3 1
     1017 GETIMPORT                        R5 K4 [Color3.fromRGB]
     1019 LOADN                            R6 60
     1020 LOADN                            R7 53
     1021 LOADN                            R8 31
     1022 CALL                             R5 3 1
     1023 GETIMPORT                        R6 K4 [Color3.fromRGB]
     1025 LOADN                            R7 76
     1026 LOADN                            R8 68
     1027 LOADN                            R9 42
     1028 CALL                             R6 3 1
     1029 GETIMPORT                        R7 K4 [Color3.fromRGB]
     1031 LOADN                            R8 92
     1032 LOADN                            R9 82
     1033 LOADN                            R10 52
     1034 CALL                             R7 3 1
     1035 GETIMPORT                        R8 K4 [Color3.fromRGB]
     1037 LOADN                            R9 110
     1038 LOADN                            R10 98
     1039 LOADN                            R11 62
     1040 CALL                             R8 3 1
     1041 GETIMPORT                        R9 K4 [Color3.fromRGB]
     1043 LOADN                            R10 128
     1044 LOADN                            R11 116
     1045 LOADN                            R12 75
     1046 CALL                             R9 3 1
     1047 GETIMPORT                        R10 K4 [Color3.fromRGB]
     1049 LOADN                            R11 145
     1050 LOADN                            R12 132
     1051 LOADN                            R13 86
     1052 CALL                             R10 3 1
     1053 GETIMPORT                        R11 K4 [Color3.fromRGB]
     1055 LOADN                            R12 164
     1056 LOADN                            R13 150
     1057 LOADN                            R14 99
     1058 CALL                             R11 3 1
     1059 GETIMPORT                        R12 K4 [Color3.fromRGB]
     1061 LOADN                            R13 183
     1062 LOADN                            R14 167
     1063 LOADN                            R15 111
     1064 CALL                             R12 3 1
     1065 GETIMPORT                        R13 K4 [Color3.fromRGB]
     1067 LOADN                            R14 202
     1068 LOADN                            R15 184
     1069 LOADN                            R16 124
     1070 CALL                             R13 3 1
     1071 GETIMPORT                        R14 K4 [Color3.fromRGB]
     1073 LOADN                            R15 222
     1074 LOADN                            R16 203
     1075 LOADN                            R17 139
     1076 CALL                             R14 3 1
     1077 GETIMPORT                        R15 K4 [Color3.fromRGB]
     1079 LOADN                            R16 241
     1080 LOADN                            R17 221
     1081 LOADN                            R18 154
     1082 CALL                             R15 3 1
     1083 GETIMPORT                        R16 K4 [Color3.fromRGB]
     1085 LOADN                            R17 253
     1086 LOADN                            R18 243
     1087 LOADN                            R19 176
     1088 CALL                             R16 3 -1
     1089 SETLIST                          R2 R3 -1 [1]
     1091 SETTABLEKS                       R2 R1 K16 ["Gold"]
     1093 SETTABLEKS                       R1 R0 K17 ["palette"]
     1095 DUPCLOSURE                       R1 K18 [PROTO_0]
     1096 CAPTURE                          VAL R0
     1097 MOVE                             R2 R1
     1098 CALL                             R2 0 0
     1099 DUPCLOSURE                       R2 K19 [PROTO_1]
     1100 CAPTURE                          VAL R0
     1101 SETTABLEKS                       R2 R0 K20 ["getPaletteCount"]
     1103 DUPCLOSURE                       R2 K21 [PROTO_2]
     1104 CAPTURE                          VAL R0
     1105 SETTABLEKS                       R2 R0 K22 ["getIndexPalette"]
     1107 DUPCLOSURE                       R2 K23 [PROTO_3]
     1108 CAPTURE                          VAL R0
     1109 SETTABLEKS                       R2 R0 K24 ["getPalette"]
     1111 DUPCLOSURE                       R2 K25 [PROTO_4]
     1112 CAPTURE                          VAL R0
     1113 SETTABLEKS                       R2 R0 K26 ["getPaletteByName"]
     1115 DUPCLOSURE                       R2 K27 [PROTO_5]
     1116 CAPTURE                          VAL R0
     1117 SETTABLEKS                       R2 R0 K28 ["getPaletteByIndex"]
     1119 DUPCLOSURE                       R2 K29 [PROTO_6]
     1120 CAPTURE                          VAL R0
     1121 SETTABLEKS                       R2 R0 K30 ["getAllPaletteNames"]
     1123 RETURN                           R0 1
