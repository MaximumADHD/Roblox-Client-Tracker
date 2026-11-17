PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.abs]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.abs]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_ABS R5 ; [+2]
       15 GETIMPORT                        R4 K3 [math.abs]
       17 CALL                             R4 1 1
       18 FASTCALL                         MATH_MAX ; [+2]
       19 GETIMPORT                        R1 K7 [math.max]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 [-Infinity]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [ipairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R10 R7
        8 NAMECALL                         R8 R0 K3 ["Dot"]
       10 CALL                             R8 2 1
       11 JUMPIFNOTLT                      R1 R8 ; [+3]
       13 MOVE                             R1 R8
       14 MOVE                             R2 R7
       15 FORGLOOP                         R3 2 [inext] ; [-9]
       17 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["Cross"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["Magnitude"]
        6 LOADK                            R4 K2 [1E-06]
        7 JUMPIFNOTLT                      R3 R4 ; [+21]
        9 GETTABLEKS                       R4 R0 K3 ["X"]
       11 FASTCALL1                        MATH_ABS R4 ; [+2]
       12 GETIMPORT                        R3 K6 [math.abs]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K7 [0.99]
       16 JUMPIFNOTLT                      R3 R4 ; [+7]
       18 LOADK                            R5 K8 [{1, 0, 0}]
       19 NAMECALL                         R3 R0 K0 ["Cross"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+5]
       24 LOADK                            R5 K9 [{0, 1, 0}]
       25 NAMECALL                         R3 R0 K0 ["Cross"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 GETTABLEKS                       R3 R2 K10 ["Unit"]
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+259]
        3 GETTABLEKS                       R1 R0 K0 ["RightVector"]
        5 GETTABLEKS                       R2 R0 K1 ["UpVector"]
        7 GETTABLEKS                       R4 R0 K2 ["LookVector"]
        9 MINUS                            R3 R4
       10 GETTABLEKS                       R8 R1 K3 ["X"]
       12 FASTCALL1                        MATH_ABS R8 ; [+2]
       13 GETIMPORT                        R7 K6 [math.abs]
       15 CALL                             R7 1 1
       16 GETTABLEKS                       R9 R1 K7 ["Y"]
       18 FASTCALL1                        MATH_ABS R9 ; [+2]
       19 GETIMPORT                        R8 K6 [math.abs]
       21 CALL                             R8 1 1
       22 GETTABLEKS                       R10 R1 K8 ["Z"]
       24 FASTCALL1                        MATH_ABS R10 ; [+2]
       25 GETIMPORT                        R9 K6 [math.abs]
       27 CALL                             R9 1 1
       28 FASTCALL                         MATH_MAX ; [+2]
       29 GETIMPORT                        R6 K10 [math.max]
       31 CALL                             R6 3 1
       32 MOVE                             R4 R6
       33 GETTABLEKS                       R9 R2 K3 ["X"]
       35 FASTCALL1                        MATH_ABS R9 ; [+2]
       36 GETIMPORT                        R8 K6 [math.abs]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R10 R2 K7 ["Y"]
       41 FASTCALL1                        MATH_ABS R10 ; [+2]
       42 GETIMPORT                        R9 K6 [math.abs]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R11 R2 K8 ["Z"]
       47 FASTCALL1                        MATH_ABS R11 ; [+2]
       48 GETIMPORT                        R10 K6 [math.abs]
       50 CALL                             R10 1 1
       51 FASTCALL                         MATH_MAX ; [+2]
       52 GETIMPORT                        R7 K10 [math.max]
       54 CALL                             R7 3 1
       55 MOVE                             R5 R7
       56 GETTABLEKS                       R8 R3 K3 ["X"]
       58 FASTCALL1                        MATH_ABS R8 ; [+2]
       59 GETIMPORT                        R7 K6 [math.abs]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R9 R3 K7 ["Y"]
       64 FASTCALL1                        MATH_ABS R9 ; [+2]
       65 GETIMPORT                        R8 K6 [math.abs]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R10 R3 K8 ["Z"]
       70 FASTCALL1                        MATH_ABS R10 ; [+2]
       71 GETIMPORT                        R9 K6 [math.abs]
       73 CALL                             R9 1 1
       74 FASTCALL                         MATH_MAX ; [+2]
       75 GETIMPORT                        R6 K10 [math.max]
       77 CALL                             R6 3 1
       78 JUMPIFNOTLT                      R5 R4 ; [+49]
       80 JUMPIFNOTLT                      R6 R4 ; [+47]
       82 GETUPVAL                         R7 1
       83 MOVE                             R8 R1
       84 CALL                             R7 1 1
       85 MOVE                             R1 R7
       86 JUMPIFNOTLT                      R6 R5 ; [+6]
       88 GETUPVAL                         R7 1
       89 MOVE                             R8 R2
       90 CALL                             R7 1 1
       91 MOVE                             R2 R7
       92 JUMP                             ; [+159]
       93 GETUPVAL                         R7 1
       94 MOVE                             R8 R3
       95 CALL                             R7 1 1
       96 MOVE                             R11 R1
       97 NAMECALL                         R9 R7 K11 ["Cross"]
       99 CALL                             R9 2 1
      100 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      102 LOADK                            R11 K13 [1E-06]
      103 JUMPIFNOTLT                      R10 R11 ; [+21]
      105 GETTABLEKS                       R11 R7 K3 ["X"]
      107 FASTCALL1                        MATH_ABS R11 ; [+2]
      108 GETIMPORT                        R10 K6 [math.abs]
      110 CALL                             R10 1 1
      111 LOADK                            R11 K14 [0.99]
      112 JUMPIFNOTLT                      R10 R11 ; [+7]
      114 LOADK                            R12 K15 [{1, 0, 0}]
      115 NAMECALL                         R10 R7 K11 ["Cross"]
      117 CALL                             R10 2 1
      118 MOVE                             R9 R10
      119 JUMP                             ; [+5]
      120 LOADK                            R12 K16 [{0, 1, 0}]
      121 NAMECALL                         R10 R7 K11 ["Cross"]
      123 CALL                             R10 2 1
      124 MOVE                             R9 R10
      125 GETTABLEKS                       R2 R9 K17 ["Unit"]
      127 JUMP                             ; [+124]
      128 JUMPIFNOTLT                      R6 R5 ; [+47]
      130 GETUPVAL                         R7 1
      131 MOVE                             R8 R2
      132 CALL                             R7 1 1
      133 MOVE                             R2 R7
      134 JUMPIFNOTLT                      R6 R4 ; [+6]
      136 GETUPVAL                         R7 1
      137 MOVE                             R8 R1
      138 CALL                             R7 1 1
      139 MOVE                             R1 R7
      140 JUMP                             ; [+111]
      141 GETUPVAL                         R7 1
      142 MOVE                             R8 R3
      143 CALL                             R7 1 1
      144 MOVE                             R11 R7
      145 NAMECALL                         R9 R2 K11 ["Cross"]
      147 CALL                             R9 2 1
      148 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      150 LOADK                            R11 K13 [1E-06]
      151 JUMPIFNOTLT                      R10 R11 ; [+21]
      153 GETTABLEKS                       R11 R2 K3 ["X"]
      155 FASTCALL1                        MATH_ABS R11 ; [+2]
      156 GETIMPORT                        R10 K6 [math.abs]
      158 CALL                             R10 1 1
      159 LOADK                            R11 K14 [0.99]
      160 JUMPIFNOTLT                      R10 R11 ; [+7]
      162 LOADK                            R12 K15 [{1, 0, 0}]
      163 NAMECALL                         R10 R2 K11 ["Cross"]
      165 CALL                             R10 2 1
      166 MOVE                             R9 R10
      167 JUMP                             ; [+5]
      168 LOADK                            R12 K16 [{0, 1, 0}]
      169 NAMECALL                         R10 R2 K11 ["Cross"]
      171 CALL                             R10 2 1
      172 MOVE                             R9 R10
      173 GETTABLEKS                       R1 R9 K17 ["Unit"]
      175 JUMP                             ; [+76]
      176 GETUPVAL                         R7 1
      177 MOVE                             R8 R3
      178 CALL                             R7 1 1
      179 JUMPIFNOTLT                      R5 R4 ; [+37]
      181 GETUPVAL                         R8 1
      182 MOVE                             R9 R1
      183 CALL                             R8 1 1
      184 MOVE                             R1 R8
      185 MOVE                             R11 R1
      186 NAMECALL                         R9 R7 K11 ["Cross"]
      188 CALL                             R9 2 1
      189 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      191 LOADK                            R11 K13 [1E-06]
      192 JUMPIFNOTLT                      R10 R11 ; [+21]
      194 GETTABLEKS                       R11 R7 K3 ["X"]
      196 FASTCALL1                        MATH_ABS R11 ; [+2]
      197 GETIMPORT                        R10 K6 [math.abs]
      199 CALL                             R10 1 1
      200 LOADK                            R11 K14 [0.99]
      201 JUMPIFNOTLT                      R10 R11 ; [+7]
      203 LOADK                            R12 K15 [{1, 0, 0}]
      204 NAMECALL                         R10 R7 K11 ["Cross"]
      206 CALL                             R10 2 1
      207 MOVE                             R9 R10
      208 JUMP                             ; [+5]
      209 LOADK                            R12 K16 [{0, 1, 0}]
      210 NAMECALL                         R10 R7 K11 ["Cross"]
      212 CALL                             R10 2 1
      213 MOVE                             R9 R10
      214 GETTABLEKS                       R2 R9 K17 ["Unit"]
      216 JUMP                             ; [+35]
      217 GETUPVAL                         R8 1
      218 MOVE                             R9 R2
      219 CALL                             R8 1 1
      220 MOVE                             R2 R8
      221 MOVE                             R11 R7
      222 NAMECALL                         R9 R2 K11 ["Cross"]
      224 CALL                             R9 2 1
      225 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      227 LOADK                            R11 K13 [1E-06]
      228 JUMPIFNOTLT                      R10 R11 ; [+21]
      230 GETTABLEKS                       R11 R2 K3 ["X"]
      232 FASTCALL1                        MATH_ABS R11 ; [+2]
      233 GETIMPORT                        R10 K6 [math.abs]
      235 CALL                             R10 1 1
      236 LOADK                            R11 K14 [0.99]
      237 JUMPIFNOTLT                      R10 R11 ; [+7]
      239 LOADK                            R12 K15 [{1, 0, 0}]
      240 NAMECALL                         R10 R2 K11 ["Cross"]
      242 CALL                             R10 2 1
      243 MOVE                             R9 R10
      244 JUMP                             ; [+5]
      245 LOADK                            R12 K16 [{0, 1, 0}]
      246 NAMECALL                         R10 R2 K11 ["Cross"]
      248 CALL                             R10 2 1
      249 MOVE                             R9 R10
      250 GETTABLEKS                       R1 R9 K17 ["Unit"]
      252 GETIMPORT                        R7 K20 [CFrame.fromMatrix]
      254 FASTCALL                         VECTOR ; [+2]
      255 GETIMPORT                        R8 K23 [Vector3.new]
      257 CALL                             R8 0 1
      258 MOVE                             R9 R1
      259 MOVE                             R10 R2
      260 CALL                             R7 3 -1
      261 RETURN                           R7 -1
      262 GETTABLEKS                       R1 R0 K0 ["RightVector"]
      264 GETTABLEKS                       R2 R0 K1 ["UpVector"]
      266 GETTABLEKS                       R4 R0 K2 ["LookVector"]
      268 MINUS                            R3 R4
      269 GETTABLEKS                       R8 R1 K3 ["X"]
      271 FASTCALL1                        MATH_ABS R8 ; [+2]
      272 GETIMPORT                        R7 K6 [math.abs]
      274 CALL                             R7 1 1
      275 GETTABLEKS                       R9 R1 K7 ["Y"]
      277 FASTCALL1                        MATH_ABS R9 ; [+2]
      278 GETIMPORT                        R8 K6 [math.abs]
      280 CALL                             R8 1 1
      281 GETTABLEKS                       R10 R1 K8 ["Z"]
      283 FASTCALL1                        MATH_ABS R10 ; [+2]
      284 GETIMPORT                        R9 K6 [math.abs]
      286 CALL                             R9 1 1
      287 FASTCALL                         MATH_MAX ; [+2]
      288 GETIMPORT                        R6 K10 [math.max]
      290 CALL                             R6 3 1
      291 MOVE                             R4 R6
      292 GETTABLEKS                       R9 R2 K3 ["X"]
      294 FASTCALL1                        MATH_ABS R9 ; [+2]
      295 GETIMPORT                        R8 K6 [math.abs]
      297 CALL                             R8 1 1
      298 GETTABLEKS                       R10 R2 K7 ["Y"]
      300 FASTCALL1                        MATH_ABS R10 ; [+2]
      301 GETIMPORT                        R9 K6 [math.abs]
      303 CALL                             R9 1 1
      304 GETTABLEKS                       R11 R2 K8 ["Z"]
      306 FASTCALL1                        MATH_ABS R11 ; [+2]
      307 GETIMPORT                        R10 K6 [math.abs]
      309 CALL                             R10 1 1
      310 FASTCALL                         MATH_MAX ; [+2]
      311 GETIMPORT                        R7 K10 [math.max]
      313 CALL                             R7 3 1
      314 MOVE                             R5 R7
      315 GETTABLEKS                       R10 R3 K3 ["X"]
      317 FASTCALL1                        MATH_ABS R10 ; [+2]
      318 GETIMPORT                        R9 K6 [math.abs]
      320 CALL                             R9 1 1
      321 GETTABLEKS                       R11 R3 K7 ["Y"]
      323 FASTCALL1                        MATH_ABS R11 ; [+2]
      324 GETIMPORT                        R10 K6 [math.abs]
      326 CALL                             R10 1 1
      327 GETTABLEKS                       R12 R3 K8 ["Z"]
      329 FASTCALL1                        MATH_ABS R12 ; [+2]
      330 GETIMPORT                        R11 K6 [math.abs]
      332 CALL                             R11 1 1
      333 FASTCALL                         MATH_MAX ; [+2]
      334 GETIMPORT                        R8 K10 [math.max]
      336 CALL                             R8 3 1
      337 MOVE                             R6 R8
      338 JUMPIFNOTLT                      R5 R4 ; [+25]
      340 JUMPIFNOTLT                      R6 R4 ; [+23]
      342 GETUPVAL                         R7 1
      343 MOVE                             R8 R1
      344 CALL                             R7 1 1
      345 MOVE                             R1 R7
      346 JUMPIFNOTLT                      R6 R5 ; [+6]
      348 GETUPVAL                         R7 1
      349 MOVE                             R8 R2
      350 CALL                             R7 1 1
      351 MOVE                             R2 R7
      352 JUMP                             ; [+62]
      353 GETUPVAL                         R7 1
      354 MOVE                             R8 R3
      355 CALL                             R7 1 1
      356 MOVE                             R3 R7
      357 MOVE                             R9 R1
      358 NAMECALL                         R7 R3 K11 ["Cross"]
      360 CALL                             R7 2 1
      361 GETTABLEKS                       R2 R7 K17 ["Unit"]
      363 JUMP                             ; [+51]
      364 JUMPIFNOTLT                      R6 R5 ; [+23]
      366 GETUPVAL                         R7 1
      367 MOVE                             R8 R2
      368 CALL                             R7 1 1
      369 MOVE                             R2 R7
      370 JUMPIFNOTLT                      R6 R4 ; [+6]
      372 GETUPVAL                         R7 1
      373 MOVE                             R8 R1
      374 CALL                             R7 1 1
      375 MOVE                             R1 R7
      376 JUMP                             ; [+38]
      377 GETUPVAL                         R7 1
      378 MOVE                             R8 R3
      379 CALL                             R7 1 1
      380 MOVE                             R3 R7
      381 MOVE                             R9 R3
      382 NAMECALL                         R7 R2 K11 ["Cross"]
      384 CALL                             R7 2 1
      385 GETTABLEKS                       R1 R7 K17 ["Unit"]
      387 JUMP                             ; [+27]
      388 GETUPVAL                         R7 1
      389 MOVE                             R8 R3
      390 CALL                             R7 1 1
      391 MOVE                             R3 R7
      392 JUMPIFNOTLT                      R5 R4 ; [+12]
      394 GETUPVAL                         R7 1
      395 MOVE                             R8 R1
      396 CALL                             R7 1 1
      397 MOVE                             R1 R7
      398 MOVE                             R9 R1
      399 NAMECALL                         R7 R3 K11 ["Cross"]
      401 CALL                             R7 2 1
      402 GETTABLEKS                       R2 R7 K17 ["Unit"]
      404 JUMP                             ; [+10]
      405 GETUPVAL                         R7 1
      406 MOVE                             R8 R2
      407 CALL                             R7 1 1
      408 MOVE                             R2 R7
      409 MOVE                             R9 R3
      410 NAMECALL                         R7 R2 K11 ["Cross"]
      412 CALL                             R7 2 1
      413 GETTABLEKS                       R1 R7 K17 ["Unit"]
      415 GETIMPORT                        R7 K20 [CFrame.fromMatrix]
      417 FASTCALL                         VECTOR ; [+2]
      418 GETIMPORT                        R8 K23 [Vector3.new]
      420 CALL                             R8 0 1
      421 MOVE                             R9 R1
      422 MOVE                             R10 R2
      423 CALL                             R7 3 -1
      424 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagSBT4977DraggerTeleportsAssembly"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 6
       16 LOADK                            R3 K7 [{1, 0, 0}]
       17 LOADK                            R4 K8 [{-1, 0, 0}]
       18 LOADK                            R5 K9 [{0, 1, 0}]
       19 LOADK                            R6 K10 [{0, -1, 0}]
       20 LOADK                            R7 K11 [{0, 0, 1}]
       21 LOADK                            R8 K12 [{0, 0, -1}]
       22 SETLIST                          R2 R3 6 [1]
       24 DUPCLOSURE                       R3 K13 [PROTO_0]
       25 DUPCLOSURE                       R4 K14 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R5 K15 [PROTO_2]
       28 DUPCLOSURE                       R6 K16 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
