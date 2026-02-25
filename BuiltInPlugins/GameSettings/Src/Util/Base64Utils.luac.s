PROTO_0:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DIVK                             R3 R1 K3 [3]
        5 FASTCALL1                        MATH_CEIL R3 ; [+2]
        6 GETIMPORT                        R2 K6 [math.ceil]
        8 CALL                             R2 1 1
        9 MULK                             R3 R2 K7 [4]
       10 GETIMPORT                        R4 K9 [buffer.create]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 LOADN                            R7 1
       15 SUBK                             R5 R2 K10 [1]
       16 LOADN                            R6 1
       17 FORNPREP                         R5
       18 SUBK                             R9 R7 K10 [1]
       19 MULK                             R8 R9 K3 [3]
       20 SUBK                             R10 R7 K10 [1]
       21 MULK                             R9 R10 K7 [4]
       22 FASTCALL2                        BUFFER_READU32 R0 R8 ; [+5]
       24 MOVE                             R12 R0
       25 MOVE                             R13 R8
       26 GETIMPORT                        R11 K12 [buffer.readu32]
       28 CALL                             R11 2 1
       29 FASTCALL1                        BIT32_BYTESWAP R11 ; [+2]
       30 GETIMPORT                        R10 K15 [bit32.byteswap]
       32 CALL                             R10 1 1
       33 FASTCALL2K                       BIT32_RSHIFT R10 K16 ; [+5]
       35 MOVE                             R12 R10
       36 LOADK                            R13 K16 [26]
       37 GETIMPORT                        R11 K18 [bit32.rshift]
       39 CALL                             R11 2 1
       40 FASTCALL2K                       BIT32_RSHIFT R10 K19 ; [+5]
       42 MOVE                             R14 R10
       43 LOADK                            R15 K19 [20]
       44 GETIMPORT                        R13 K18 [bit32.rshift]
       46 CALL                             R13 2 1
       47 FASTCALL2K                       BIT32_BAND R13 K20 ; [+4]
       49 LOADK                            R14 K20 [63]
       50 GETIMPORT                        R12 K22 [bit32.band]
       52 CALL                             R12 2 1
       53 FASTCALL2K                       BIT32_RSHIFT R10 K23 ; [+5]
       55 MOVE                             R15 R10
       56 LOADK                            R16 K23 [14]
       57 GETIMPORT                        R14 K18 [bit32.rshift]
       59 CALL                             R14 2 1
       60 FASTCALL2K                       BIT32_BAND R14 K20 ; [+4]
       62 LOADK                            R15 K20 [63]
       63 GETIMPORT                        R13 K22 [bit32.band]
       65 CALL                             R13 2 1
       66 FASTCALL2K                       BIT32_RSHIFT R10 K24 ; [+5]
       68 MOVE                             R16 R10
       69 LOADK                            R17 K24 [8]
       70 GETIMPORT                        R15 K18 [bit32.rshift]
       72 CALL                             R15 2 1
       73 FASTCALL2K                       BIT32_BAND R15 K20 ; [+4]
       75 LOADK                            R16 K20 [63]
       76 GETIMPORT                        R14 K22 [bit32.band]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R19 0
       80 FASTCALL2                        BUFFER_READU8 R19 R11 ; [+4]
       82 MOVE                             R20 R11
       83 GETIMPORT                        R18 K26 [buffer.readu8]
       85 CALL                             R18 2 1
       86 FASTCALL3                        BUFFER_WRITEU8 R4 R9 R18
       88 MOVE                             R16 R4
       89 MOVE                             R17 R9
       90 GETIMPORT                        R15 K28 [buffer.writeu8]
       92 CALL                             R15 3 0
       93 ADDK                             R17 R9 K10 [1]
       94 GETUPVAL                         R19 0
       95 FASTCALL2                        BUFFER_READU8 R19 R12 ; [+4]
       97 MOVE                             R20 R12
       98 GETIMPORT                        R18 K26 [buffer.readu8]
      100 CALL                             R18 2 1
      101 FASTCALL3                        BUFFER_WRITEU8 R4 R17 R18
      103 MOVE                             R16 R4
      104 GETIMPORT                        R15 K28 [buffer.writeu8]
      106 CALL                             R15 3 0
      107 ADDK                             R17 R9 K29 [2]
      108 GETUPVAL                         R19 0
      109 FASTCALL2                        BUFFER_READU8 R19 R13 ; [+4]
      111 MOVE                             R20 R13
      112 GETIMPORT                        R18 K26 [buffer.readu8]
      114 CALL                             R18 2 1
      115 FASTCALL3                        BUFFER_WRITEU8 R4 R17 R18
      117 MOVE                             R16 R4
      118 GETIMPORT                        R15 K28 [buffer.writeu8]
      120 CALL                             R15 3 0
      121 ADDK                             R17 R9 K3 [3]
      122 GETUPVAL                         R19 0
      123 FASTCALL2                        BUFFER_READU8 R19 R14 ; [+4]
      125 MOVE                             R20 R14
      126 GETIMPORT                        R18 K26 [buffer.readu8]
      128 CALL                             R18 2 1
      129 FASTCALL3                        BUFFER_WRITEU8 R4 R17 R18
      131 MOVE                             R16 R4
      132 GETIMPORT                        R15 K28 [buffer.writeu8]
      134 CALL                             R15 3 0
      135 FORNLOOP                         R5
      136 MODK                             R5 R1 K3 [3]
      137 JUMPIFNOTEQKN                    R5 K10 [1] ; [+73]
      139 SUBK                             R8 R1 K10 [1]
      140 FASTCALL2                        BUFFER_READU8 R0 R8 ; [+4]
      142 MOVE                             R7 R0
      143 GETIMPORT                        R6 K26 [buffer.readu8]
      145 CALL                             R6 2 1
      146 FASTCALL2K                       BIT32_RSHIFT R6 K29 ; [+5]
      148 MOVE                             R8 R6
      149 LOADK                            R9 K29 [2]
      150 GETIMPORT                        R7 K18 [bit32.rshift]
      152 CALL                             R7 2 1
      153 FASTCALL2K                       BIT32_LSHIFT R6 K7 ; [+5]
      155 MOVE                             R10 R6
      156 LOADK                            R11 K7 [4]
      157 GETIMPORT                        R9 K31 [bit32.lshift]
      159 CALL                             R9 2 1
      160 FASTCALL2K                       BIT32_BAND R9 K20 ; [+4]
      162 LOADK                            R10 K20 [63]
      163 GETIMPORT                        R8 K22 [bit32.band]
      165 CALL                             R8 2 1
      166 SUBK                             R11 R3 K7 [4]
      167 GETUPVAL                         R13 0
      168 FASTCALL2                        BUFFER_READU8 R13 R7 ; [+4]
      170 MOVE                             R14 R7
      171 GETIMPORT                        R12 K26 [buffer.readu8]
      173 CALL                             R12 2 1
      174 FASTCALL3                        BUFFER_WRITEU8 R4 R11 R12
      176 MOVE                             R10 R4
      177 GETIMPORT                        R9 K28 [buffer.writeu8]
      179 CALL                             R9 3 0
      180 SUBK                             R11 R3 K3 [3]
      181 GETUPVAL                         R13 0
      182 FASTCALL2                        BUFFER_READU8 R13 R8 ; [+4]
      184 MOVE                             R14 R8
      185 GETIMPORT                        R12 K26 [buffer.readu8]
      187 CALL                             R12 2 1
      188 FASTCALL3                        BUFFER_WRITEU8 R4 R11 R12
      190 MOVE                             R10 R4
      191 GETIMPORT                        R9 K28 [buffer.writeu8]
      193 CALL                             R9 3 0
      194 SUBK                             R11 R3 K29 [2]
      195 LOADN                            R12 61
      196 FASTCALL3                        BUFFER_WRITEU8 R4 R11 R12
      198 MOVE                             R10 R4
      199 GETIMPORT                        R9 K28 [buffer.writeu8]
      201 CALL                             R9 3 0
      202 SUBK                             R11 R3 K10 [1]
      203 LOADN                            R12 61
      204 FASTCALL3                        BUFFER_WRITEU8 R4 R11 R12
      206 MOVE                             R10 R4
      207 GETIMPORT                        R9 K28 [buffer.writeu8]
      209 CALL                             R9 3 0
      210 RETURN                           R4 1
      211 JUMPIFNOTEQKN                    R5 K29 [2] ; [+110]
      213 SUBK                             R10 R1 K29 [2]
      214 FASTCALL2                        BUFFER_READU8 R0 R10 ; [+4]
      216 MOVE                             R9 R0
      217 GETIMPORT                        R8 K26 [buffer.readu8]
      219 CALL                             R8 2 1
      220 FASTCALL2K                       BIT32_LSHIFT R8 K24 ; [+4]
      222 LOADK                            R9 K24 [8]
      223 GETIMPORT                        R7 K31 [bit32.lshift]
      225 CALL                             R7 2 1
      226 SUBK                             R10 R1 K10 [1]
      227 FASTCALL2                        BUFFER_READU8 R0 R10 ; [+4]
      229 MOVE                             R9 R0
      230 GETIMPORT                        R8 K26 [buffer.readu8]
      232 CALL                             R8 2 1
      233 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      235 GETIMPORT                        R6 K33 [bit32.bor]
      237 CALL                             R6 2 1
      238 FASTCALL2K                       BIT32_RSHIFT R6 K34 ; [+5]
      240 MOVE                             R8 R6
      241 LOADK                            R9 K34 [10]
      242 GETIMPORT                        R7 K18 [bit32.rshift]
      244 CALL                             R7 2 1
      245 FASTCALL2K                       BIT32_RSHIFT R6 K7 ; [+5]
      247 MOVE                             R10 R6
      248 LOADK                            R11 K7 [4]
      249 GETIMPORT                        R9 K18 [bit32.rshift]
      251 CALL                             R9 2 1
      252 FASTCALL2K                       BIT32_BAND R9 K20 ; [+4]
      254 LOADK                            R10 K20 [63]
      255 GETIMPORT                        R8 K22 [bit32.band]
      257 CALL                             R8 2 1
      258 FASTCALL2K                       BIT32_LSHIFT R6 K29 ; [+5]
      260 MOVE                             R11 R6
      261 LOADK                            R12 K29 [2]
      262 GETIMPORT                        R10 K31 [bit32.lshift]
      264 CALL                             R10 2 1
      265 FASTCALL2K                       BIT32_BAND R10 K20 ; [+4]
      267 LOADK                            R11 K20 [63]
      268 GETIMPORT                        R9 K22 [bit32.band]
      270 CALL                             R9 2 1
      271 SUBK                             R12 R3 K7 [4]
      272 GETUPVAL                         R14 0
      273 FASTCALL2                        BUFFER_READU8 R14 R7 ; [+4]
      275 MOVE                             R15 R7
      276 GETIMPORT                        R13 K26 [buffer.readu8]
      278 CALL                             R13 2 1
      279 FASTCALL3                        BUFFER_WRITEU8 R4 R12 R13
      281 MOVE                             R11 R4
      282 GETIMPORT                        R10 K28 [buffer.writeu8]
      284 CALL                             R10 3 0
      285 SUBK                             R12 R3 K3 [3]
      286 GETUPVAL                         R14 0
      287 FASTCALL2                        BUFFER_READU8 R14 R8 ; [+4]
      289 MOVE                             R15 R8
      290 GETIMPORT                        R13 K26 [buffer.readu8]
      292 CALL                             R13 2 1
      293 FASTCALL3                        BUFFER_WRITEU8 R4 R12 R13
      295 MOVE                             R11 R4
      296 GETIMPORT                        R10 K28 [buffer.writeu8]
      298 CALL                             R10 3 0
      299 SUBK                             R12 R3 K29 [2]
      300 GETUPVAL                         R14 0
      301 FASTCALL2                        BUFFER_READU8 R14 R9 ; [+4]
      303 MOVE                             R15 R9
      304 GETIMPORT                        R13 K26 [buffer.readu8]
      306 CALL                             R13 2 1
      307 FASTCALL3                        BUFFER_WRITEU8 R4 R12 R13
      309 MOVE                             R11 R4
      310 GETIMPORT                        R10 K28 [buffer.writeu8]
      312 CALL                             R10 3 0
      313 SUBK                             R12 R3 K10 [1]
      314 LOADN                            R13 61
      315 FASTCALL3                        BUFFER_WRITEU8 R4 R12 R13
      317 MOVE                             R11 R4
      318 GETIMPORT                        R10 K28 [buffer.writeu8]
      320 CALL                             R10 3 0
      321 RETURN                           R4 1
      322 JUMPIFNOTEQKN                    R5 K35 [0] ; [+136]
      324 JUMPIFEQKN                       R1 K35 [0] ; [+134]
      326 SUBK                             R10 R1 K3 [3]
      327 FASTCALL2                        BUFFER_READU8 R0 R10 ; [+4]
      329 MOVE                             R9 R0
      330 GETIMPORT                        R8 K26 [buffer.readu8]
      332 CALL                             R8 2 1
      333 FASTCALL2K                       BIT32_LSHIFT R8 K36 ; [+4]
      335 LOADK                            R9 K36 [16]
      336 GETIMPORT                        R7 K31 [bit32.lshift]
      338 CALL                             R7 2 1
      339 SUBK                             R11 R1 K29 [2]
      340 FASTCALL2                        BUFFER_READU8 R0 R11 ; [+4]
      342 MOVE                             R10 R0
      343 GETIMPORT                        R9 K26 [buffer.readu8]
      345 CALL                             R9 2 1
      346 FASTCALL2K                       BIT32_LSHIFT R9 K24 ; [+4]
      348 LOADK                            R10 K24 [8]
      349 GETIMPORT                        R8 K31 [bit32.lshift]
      351 CALL                             R8 2 1
      352 SUBK                             R11 R1 K10 [1]
      353 FASTCALL2                        BUFFER_READU8 R0 R11 ; [+4]
      355 MOVE                             R10 R0
      356 GETIMPORT                        R9 K26 [buffer.readu8]
      358 CALL                             R9 2 1
      359 FASTCALL                         BIT32_BOR ; [+2]
      360 GETIMPORT                        R6 K33 [bit32.bor]
      362 CALL                             R6 3 1
      363 FASTCALL2K                       BIT32_RSHIFT R6 K37 ; [+5]
      365 MOVE                             R8 R6
      366 LOADK                            R9 K37 [18]
      367 GETIMPORT                        R7 K18 [bit32.rshift]
      369 CALL                             R7 2 1
      370 FASTCALL2K                       BIT32_RSHIFT R6 K38 ; [+5]
      372 MOVE                             R10 R6
      373 LOADK                            R11 K38 [12]
      374 GETIMPORT                        R9 K18 [bit32.rshift]
      376 CALL                             R9 2 1
      377 FASTCALL2K                       BIT32_BAND R9 K20 ; [+4]
      379 LOADK                            R10 K20 [63]
      380 GETIMPORT                        R8 K22 [bit32.band]
      382 CALL                             R8 2 1
      383 FASTCALL2K                       BIT32_RSHIFT R6 K39 ; [+5]
      385 MOVE                             R11 R6
      386 LOADK                            R12 K39 [6]
      387 GETIMPORT                        R10 K18 [bit32.rshift]
      389 CALL                             R10 2 1
      390 FASTCALL2K                       BIT32_BAND R10 K20 ; [+4]
      392 LOADK                            R11 K20 [63]
      393 GETIMPORT                        R9 K22 [bit32.band]
      395 CALL                             R9 2 1
      396 FASTCALL2K                       BIT32_BAND R6 K20 ; [+5]
      398 MOVE                             R11 R6
      399 LOADK                            R12 K20 [63]
      400 GETIMPORT                        R10 K22 [bit32.band]
      402 CALL                             R10 2 1
      403 SUBK                             R13 R3 K7 [4]
      404 GETUPVAL                         R15 0
      405 FASTCALL2                        BUFFER_READU8 R15 R7 ; [+4]
      407 MOVE                             R16 R7
      408 GETIMPORT                        R14 K26 [buffer.readu8]
      410 CALL                             R14 2 1
      411 FASTCALL3                        BUFFER_WRITEU8 R4 R13 R14
      413 MOVE                             R12 R4
      414 GETIMPORT                        R11 K28 [buffer.writeu8]
      416 CALL                             R11 3 0
      417 SUBK                             R13 R3 K3 [3]
      418 GETUPVAL                         R15 0
      419 FASTCALL2                        BUFFER_READU8 R15 R8 ; [+4]
      421 MOVE                             R16 R8
      422 GETIMPORT                        R14 K26 [buffer.readu8]
      424 CALL                             R14 2 1
      425 FASTCALL3                        BUFFER_WRITEU8 R4 R13 R14
      427 MOVE                             R12 R4
      428 GETIMPORT                        R11 K28 [buffer.writeu8]
      430 CALL                             R11 3 0
      431 SUBK                             R13 R3 K29 [2]
      432 GETUPVAL                         R15 0
      433 FASTCALL2                        BUFFER_READU8 R15 R9 ; [+4]
      435 MOVE                             R16 R9
      436 GETIMPORT                        R14 K26 [buffer.readu8]
      438 CALL                             R14 2 1
      439 FASTCALL3                        BUFFER_WRITEU8 R4 R13 R14
      441 MOVE                             R12 R4
      442 GETIMPORT                        R11 K28 [buffer.writeu8]
      444 CALL                             R11 3 0
      445 SUBK                             R13 R3 K10 [1]
      446 GETUPVAL                         R15 0
      447 FASTCALL2                        BUFFER_READU8 R15 R10 ; [+4]
      449 MOVE                             R16 R10
      450 GETIMPORT                        R14 K26 [buffer.readu8]
      452 CALL                             R14 2 1
      453 FASTCALL3                        BUFFER_WRITEU8 R4 R13 R14
      455 MOVE                             R12 R4
      456 GETIMPORT                        R11 K28 [buffer.writeu8]
      458 CALL                             R11 3 0
      459 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DIVK                             R3 R1 K3 [4]
        5 FASTCALL1                        MATH_CEIL R3 ; [+2]
        6 GETIMPORT                        R2 K6 [math.ceil]
        8 CALL                             R2 1 1
        9 LOADN                            R3 0
       10 JUMPIFEQKN                       R1 K7 [0] ; [+21]
       12 SUBK                             R6 R1 K8 [1]
       13 FASTCALL2                        BUFFER_READU8 R0 R6 ; [+4]
       15 MOVE                             R5 R0
       16 GETIMPORT                        R4 K10 [buffer.readu8]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKN                    R4 K11 [61] ; [+2]
       21 ADDK                             R3 R3 K8 [1]
       22 SUBK                             R6 R1 K12 [2]
       23 FASTCALL2                        BUFFER_READU8 R0 R6 ; [+4]
       25 MOVE                             R5 R0
       26 GETIMPORT                        R4 K10 [buffer.readu8]
       28 CALL                             R4 2 1
       29 JUMPIFNOTEQKN                    R4 K11 [61] ; [+2]
       31 ADDK                             R3 R3 K8 [1]
       32 MULK                             R5 R2 K13 [3]
       33 SUB                              R4 R5 R3
       34 GETIMPORT                        R5 K15 [buffer.create]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 LOADN                            R8 1
       39 SUBK                             R6 R2 K8 [1]
       40 LOADN                            R7 1
       41 FORNPREP                         R6
       42 SUBK                             R10 R8 K8 [1]
       43 MULK                             R9 R10 K3 [4]
       44 SUBK                             R11 R8 K8 [1]
       45 MULK                             R10 R11 K13 [3]
       46 GETUPVAL                         R12 0
       47 FASTCALL2                        BUFFER_READU8 R0 R9 ; [+5]
       49 MOVE                             R14 R0
       50 MOVE                             R15 R9
       51 GETIMPORT                        R13 K10 [buffer.readu8]
       53 CALL                             R13 2 1
       54 FASTCALL2                        BUFFER_READU8 R12 R13 ; [+3]
       56 GETIMPORT                        R11 K10 [buffer.readu8]
       58 CALL                             R11 2 1
       59 GETUPVAL                         R13 0
       60 ADDK                             R16 R9 K8 [1]
       61 FASTCALL2                        BUFFER_READU8 R0 R16 ; [+4]
       63 MOVE                             R15 R0
       64 GETIMPORT                        R14 K10 [buffer.readu8]
       66 CALL                             R14 2 1
       67 FASTCALL2                        BUFFER_READU8 R13 R14 ; [+3]
       69 GETIMPORT                        R12 K10 [buffer.readu8]
       71 CALL                             R12 2 1
       72 GETUPVAL                         R14 0
       73 ADDK                             R17 R9 K12 [2]
       74 FASTCALL2                        BUFFER_READU8 R0 R17 ; [+4]
       76 MOVE                             R16 R0
       77 GETIMPORT                        R15 K10 [buffer.readu8]
       79 CALL                             R15 2 1
       80 FASTCALL2                        BUFFER_READU8 R14 R15 ; [+3]
       82 GETIMPORT                        R13 K10 [buffer.readu8]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R15 0
       86 ADDK                             R18 R9 K13 [3]
       87 FASTCALL2                        BUFFER_READU8 R0 R18 ; [+4]
       89 MOVE                             R17 R0
       90 GETIMPORT                        R16 K10 [buffer.readu8]
       92 CALL                             R16 2 1
       93 FASTCALL2                        BUFFER_READU8 R15 R16 ; [+3]
       95 GETIMPORT                        R14 K10 [buffer.readu8]
       97 CALL                             R14 2 1
       98 FASTCALL2K                       BIT32_LSHIFT R11 K16 ; [+5]
      100 MOVE                             R17 R11
      101 LOADK                            R18 K16 [18]
      102 GETIMPORT                        R16 K19 [bit32.lshift]
      104 CALL                             R16 2 1
      105 FASTCALL2K                       BIT32_LSHIFT R12 K20 ; [+5]
      107 MOVE                             R18 R12
      108 LOADK                            R19 K20 [12]
      109 GETIMPORT                        R17 K19 [bit32.lshift]
      111 CALL                             R17 2 1
      112 FASTCALL2K                       BIT32_LSHIFT R13 K21 ; [+5]
      114 MOVE                             R19 R13
      115 LOADK                            R20 K21 [6]
      116 GETIMPORT                        R18 K19 [bit32.lshift]
      118 CALL                             R18 2 1
      119 MOVE                             R19 R14
      120 FASTCALL                         BIT32_BOR ; [+2]
      121 GETIMPORT                        R15 K23 [bit32.bor]
      123 CALL                             R15 4 1
      124 FASTCALL2K                       BIT32_RSHIFT R15 K24 ; [+5]
      126 MOVE                             R17 R15
      127 LOADK                            R18 K24 [16]
      128 GETIMPORT                        R16 K26 [bit32.rshift]
      130 CALL                             R16 2 1
      131 FASTCALL2K                       BIT32_RSHIFT R15 K27 ; [+5]
      133 MOVE                             R19 R15
      134 LOADK                            R20 K27 [8]
      135 GETIMPORT                        R18 K26 [bit32.rshift]
      137 CALL                             R18 2 1
      138 FASTCALL2K                       BIT32_BAND R18 K28 ; [+4]
      140 LOADK                            R19 K28 [255]
      141 GETIMPORT                        R17 K30 [bit32.band]
      143 CALL                             R17 2 1
      144 FASTCALL2K                       BIT32_BAND R15 K28 ; [+5]
      146 MOVE                             R19 R15
      147 LOADK                            R20 K28 [255]
      148 GETIMPORT                        R18 K30 [bit32.band]
      150 CALL                             R18 2 1
      151 FASTCALL3                        BUFFER_WRITEU8 R5 R10 R16
      153 MOVE                             R20 R5
      154 MOVE                             R21 R10
      155 MOVE                             R22 R16
      156 GETIMPORT                        R19 K32 [buffer.writeu8]
      158 CALL                             R19 3 0
      159 ADDK                             R21 R10 K8 [1]
      160 FASTCALL3                        BUFFER_WRITEU8 R5 R21 R17
      162 MOVE                             R20 R5
      163 MOVE                             R22 R17
      164 GETIMPORT                        R19 K32 [buffer.writeu8]
      166 CALL                             R19 3 0
      167 ADDK                             R21 R10 K12 [2]
      168 FASTCALL3                        BUFFER_WRITEU8 R5 R21 R18
      170 MOVE                             R20 R5
      171 MOVE                             R22 R18
      172 GETIMPORT                        R19 K32 [buffer.writeu8]
      174 CALL                             R19 3 0
      175 FORNLOOP                         R6
      176 JUMPIFEQKN                       R1 K7 [0] ; [+142]
      178 SUBK                             R7 R2 K8 [1]
      179 MULK                             R6 R7 K3 [4]
      180 SUBK                             R8 R2 K8 [1]
      181 MULK                             R7 R8 K13 [3]
      182 GETUPVAL                         R9 0
      183 FASTCALL2                        BUFFER_READU8 R0 R6 ; [+5]
      185 MOVE                             R11 R0
      186 MOVE                             R12 R6
      187 GETIMPORT                        R10 K10 [buffer.readu8]
      189 CALL                             R10 2 1
      190 FASTCALL2                        BUFFER_READU8 R9 R10 ; [+3]
      192 GETIMPORT                        R8 K10 [buffer.readu8]
      194 CALL                             R8 2 1
      195 GETUPVAL                         R10 0
      196 ADDK                             R13 R6 K8 [1]
      197 FASTCALL2                        BUFFER_READU8 R0 R13 ; [+4]
      199 MOVE                             R12 R0
      200 GETIMPORT                        R11 K10 [buffer.readu8]
      202 CALL                             R11 2 1
      203 FASTCALL2                        BUFFER_READU8 R10 R11 ; [+3]
      205 GETIMPORT                        R9 K10 [buffer.readu8]
      207 CALL                             R9 2 1
      208 GETUPVAL                         R11 0
      209 ADDK                             R14 R6 K12 [2]
      210 FASTCALL2                        BUFFER_READU8 R0 R14 ; [+4]
      212 MOVE                             R13 R0
      213 GETIMPORT                        R12 K10 [buffer.readu8]
      215 CALL                             R12 2 1
      216 FASTCALL2                        BUFFER_READU8 R11 R12 ; [+3]
      218 GETIMPORT                        R10 K10 [buffer.readu8]
      220 CALL                             R10 2 1
      221 GETUPVAL                         R12 0
      222 ADDK                             R15 R6 K13 [3]
      223 FASTCALL2                        BUFFER_READU8 R0 R15 ; [+4]
      225 MOVE                             R14 R0
      226 GETIMPORT                        R13 K10 [buffer.readu8]
      228 CALL                             R13 2 1
      229 FASTCALL2                        BUFFER_READU8 R12 R13 ; [+3]
      231 GETIMPORT                        R11 K10 [buffer.readu8]
      233 CALL                             R11 2 1
      234 FASTCALL2K                       BIT32_LSHIFT R8 K16 ; [+5]
      236 MOVE                             R14 R8
      237 LOADK                            R15 K16 [18]
      238 GETIMPORT                        R13 K19 [bit32.lshift]
      240 CALL                             R13 2 1
      241 FASTCALL2K                       BIT32_LSHIFT R9 K20 ; [+5]
      243 MOVE                             R15 R9
      244 LOADK                            R16 K20 [12]
      245 GETIMPORT                        R14 K19 [bit32.lshift]
      247 CALL                             R14 2 1
      248 FASTCALL2K                       BIT32_LSHIFT R10 K21 ; [+5]
      250 MOVE                             R16 R10
      251 LOADK                            R17 K21 [6]
      252 GETIMPORT                        R15 K19 [bit32.lshift]
      254 CALL                             R15 2 1
      255 MOVE                             R16 R11
      256 FASTCALL                         BIT32_BOR ; [+2]
      257 GETIMPORT                        R12 K23 [bit32.bor]
      259 CALL                             R12 4 1
      260 LOADN                            R13 2
      261 JUMPIFNOTLE                      R3 R13 ; [+57]
      263 FASTCALL2K                       BIT32_RSHIFT R12 K24 ; [+5]
      265 MOVE                             R14 R12
      266 LOADK                            R15 K24 [16]
      267 GETIMPORT                        R13 K26 [bit32.rshift]
      269 CALL                             R13 2 1
      270 FASTCALL3                        BUFFER_WRITEU8 R5 R7 R13
      272 MOVE                             R15 R5
      273 MOVE                             R16 R7
      274 MOVE                             R17 R13
      275 GETIMPORT                        R14 K32 [buffer.writeu8]
      277 CALL                             R14 3 0
      278 LOADN                            R14 1
      279 JUMPIFNOTLE                      R3 R14 ; [+39]
      281 FASTCALL2K                       BIT32_RSHIFT R12 K27 ; [+5]
      283 MOVE                             R16 R12
      284 LOADK                            R17 K27 [8]
      285 GETIMPORT                        R15 K26 [bit32.rshift]
      287 CALL                             R15 2 1
      288 FASTCALL2K                       BIT32_BAND R15 K28 ; [+4]
      290 LOADK                            R16 K28 [255]
      291 GETIMPORT                        R14 K30 [bit32.band]
      293 CALL                             R14 2 1
      294 ADDK                             R17 R7 K8 [1]
      295 FASTCALL3                        BUFFER_WRITEU8 R5 R17 R14
      297 MOVE                             R16 R5
      298 MOVE                             R18 R14
      299 GETIMPORT                        R15 K32 [buffer.writeu8]
      301 CALL                             R15 3 0
      302 JUMPIFNOTEQKN                    R3 K7 [0] ; [+16]
      304 FASTCALL2K                       BIT32_BAND R12 K28 ; [+5]
      306 MOVE                             R16 R12
      307 LOADK                            R17 K28 [255]
      308 GETIMPORT                        R15 K30 [bit32.band]
      310 CALL                             R15 2 1
      311 ADDK                             R18 R7 K12 [2]
      312 FASTCALL3                        BUFFER_WRITEU8 R5 R18 R15
      314 MOVE                             R17 R5
      315 MOVE                             R19 R15
      316 GETIMPORT                        R16 K32 [buffer.writeu8]
      318 CALL                             R16 3 0
      319 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [buffer.create]
        3 LOADN                            R1 64
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K2 [buffer.create]
        7 LOADN                            R2 0
        8 CALL                             R1 1 1
        9 LOADN                            R4 1
       10 LOADN                            R2 64
       11 LOADN                            R3 1
       12 FORNPREP                         R2
       13 SUBK                             R5 R4 K3 [1]
       14 LOADK                            R7 K4 ["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"]
       15 FASTCALL2                        STRING_BYTE R7 R4 ; [+4]
       17 MOVE                             R8 R4
       18 GETIMPORT                        R6 K7 [string.byte]
       20 CALL                             R6 2 1
       21 FASTCALL3                        BUFFER_WRITEU8 R0 R5 R6
       23 MOVE                             R8 R0
       24 MOVE                             R9 R5
       25 MOVE                             R10 R6
       26 GETIMPORT                        R7 K9 [buffer.writeu8]
       28 CALL                             R7 3 0
       29 FASTCALL3                        BUFFER_WRITEU8 R1 R6 R5
       31 MOVE                             R8 R1
       32 MOVE                             R9 R6
       33 MOVE                             R10 R5
       34 GETIMPORT                        R7 K9 [buffer.writeu8]
       36 CALL                             R7 3 0
       37 FORNLOOP                         R2
       38 NEWTABLE                         R2 2 0
       40 DUPCLOSURE                       R3 K10 [PROTO_0]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R3 R2 K11 ["encode"]
       44 DUPCLOSURE                       R3 K12 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R3 R2 K13 ["decode"]
       48 RETURN                           R2 1
