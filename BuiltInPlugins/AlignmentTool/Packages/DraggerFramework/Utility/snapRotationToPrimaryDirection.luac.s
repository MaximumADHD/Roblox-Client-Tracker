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
        0 LOADK                            R1 K0 [-∞]
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
        2 JUMPIFNOT                        R1 ; [+265]
        3 GETTABLEKS                       R1 R0 K0 ["RightVector"]
        5 GETTABLEKS                       R2 R0 K1 ["UpVector"]
        7 GETTABLEKS                       R4 R0 K2 ["LookVector"]
        9 MINUS                            R3 R4
       10 MOVE                             R5 R1
       11 GETTABLEKS                       R8 R5 K3 ["X"]
       13 FASTCALL1                        MATH_ABS R8 ; [+2]
       14 GETIMPORT                        R7 K6 [math.abs]
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R9 R5 K7 ["Y"]
       19 FASTCALL1                        MATH_ABS R9 ; [+2]
       20 GETIMPORT                        R8 K6 [math.abs]
       22 CALL                             R8 1 1
       23 GETTABLEKS                       R10 R5 K8 ["Z"]
       25 FASTCALL1                        MATH_ABS R10 ; [+2]
       26 GETIMPORT                        R9 K6 [math.abs]
       28 CALL                             R9 1 1
       29 FASTCALL                         MATH_MAX ; [+2]
       30 GETIMPORT                        R6 K10 [math.max]
       32 CALL                             R6 3 1
       33 MOVE                             R4 R6
       34 MOVE                             R6 R2
       35 GETTABLEKS                       R9 R6 K3 ["X"]
       37 FASTCALL1                        MATH_ABS R9 ; [+2]
       38 GETIMPORT                        R8 K6 [math.abs]
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R10 R6 K7 ["Y"]
       43 FASTCALL1                        MATH_ABS R10 ; [+2]
       44 GETIMPORT                        R9 K6 [math.abs]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R11 R6 K8 ["Z"]
       49 FASTCALL1                        MATH_ABS R11 ; [+2]
       50 GETIMPORT                        R10 K6 [math.abs]
       52 CALL                             R10 1 1
       53 FASTCALL                         MATH_MAX ; [+2]
       54 GETIMPORT                        R7 K10 [math.max]
       56 CALL                             R7 3 1
       57 MOVE                             R5 R7
       58 GETTABLEKS                       R8 R3 K3 ["X"]
       60 FASTCALL1                        MATH_ABS R8 ; [+2]
       61 GETIMPORT                        R7 K6 [math.abs]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R9 R3 K7 ["Y"]
       66 FASTCALL1                        MATH_ABS R9 ; [+2]
       67 GETIMPORT                        R8 K6 [math.abs]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R10 R3 K8 ["Z"]
       72 FASTCALL1                        MATH_ABS R10 ; [+2]
       73 GETIMPORT                        R9 K6 [math.abs]
       75 CALL                             R9 1 1
       76 FASTCALL                         MATH_MAX ; [+2]
       77 GETIMPORT                        R6 K10 [math.max]
       79 CALL                             R6 3 1
       80 JUMPIFNOTLT                      R5 R4 ; [+50]
       82 JUMPIFNOTLT                      R6 R4 ; [+48]
       84 GETUPVAL                         R7 1
       85 MOVE                             R8 R1
       86 CALL                             R7 1 1
       87 MOVE                             R1 R7
       88 JUMPIFNOTLT                      R6 R5 ; [+6]
       90 GETUPVAL                         R7 1
       91 MOVE                             R8 R2
       92 CALL                             R7 1 1
       93 MOVE                             R2 R7
       94 JUMP                             ; [+163]
       95 GETUPVAL                         R7 1
       96 MOVE                             R8 R3
       97 CALL                             R7 1 1
       98 MOVE                             R8 R1
       99 MOVE                             R11 R8
      100 NAMECALL                         R9 R7 K11 ["Cross"]
      102 CALL                             R9 2 1
      103 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      105 LOADK                            R11 K13 [1E-06]
      106 JUMPIFNOTLT                      R10 R11 ; [+21]
      108 GETTABLEKS                       R11 R7 K3 ["X"]
      110 FASTCALL1                        MATH_ABS R11 ; [+2]
      111 GETIMPORT                        R10 K6 [math.abs]
      113 CALL                             R10 1 1
      114 LOADK                            R11 K14 [0.99]
      115 JUMPIFNOTLT                      R10 R11 ; [+7]
      117 LOADK                            R12 K15 [{1, 0, 0}]
      118 NAMECALL                         R10 R7 K11 ["Cross"]
      120 CALL                             R10 2 1
      121 MOVE                             R9 R10
      122 JUMP                             ; [+5]
      123 LOADK                            R12 K16 [{0, 1, 0}]
      124 NAMECALL                         R10 R7 K11 ["Cross"]
      126 CALL                             R10 2 1
      127 MOVE                             R9 R10
      128 GETTABLEKS                       R2 R9 K17 ["Unit"]
      130 JUMP                             ; [+127]
      131 JUMPIFNOTLT                      R6 R5 ; [+48]
      133 GETUPVAL                         R7 1
      134 MOVE                             R8 R2
      135 CALL                             R7 1 1
      136 MOVE                             R2 R7
      137 JUMPIFNOTLT                      R6 R4 ; [+6]
      139 GETUPVAL                         R7 1
      140 MOVE                             R8 R1
      141 CALL                             R7 1 1
      142 MOVE                             R1 R7
      143 JUMP                             ; [+114]
      144 GETUPVAL                         R7 1
      145 MOVE                             R8 R3
      146 CALL                             R7 1 1
      147 MOVE                             R8 R2
      148 MOVE                             R11 R7
      149 NAMECALL                         R9 R8 K11 ["Cross"]
      151 CALL                             R9 2 1
      152 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      154 LOADK                            R11 K13 [1E-06]
      155 JUMPIFNOTLT                      R10 R11 ; [+21]
      157 GETTABLEKS                       R11 R8 K3 ["X"]
      159 FASTCALL1                        MATH_ABS R11 ; [+2]
      160 GETIMPORT                        R10 K6 [math.abs]
      162 CALL                             R10 1 1
      163 LOADK                            R11 K14 [0.99]
      164 JUMPIFNOTLT                      R10 R11 ; [+7]
      166 LOADK                            R12 K15 [{1, 0, 0}]
      167 NAMECALL                         R10 R8 K11 ["Cross"]
      169 CALL                             R10 2 1
      170 MOVE                             R9 R10
      171 JUMP                             ; [+5]
      172 LOADK                            R12 K16 [{0, 1, 0}]
      173 NAMECALL                         R10 R8 K11 ["Cross"]
      175 CALL                             R10 2 1
      176 MOVE                             R9 R10
      177 GETTABLEKS                       R1 R9 K17 ["Unit"]
      179 JUMP                             ; [+78]
      180 GETUPVAL                         R7 1
      181 MOVE                             R8 R3
      182 CALL                             R7 1 1
      183 JUMPIFNOTLT                      R5 R4 ; [+38]
      185 GETUPVAL                         R8 1
      186 MOVE                             R9 R1
      187 CALL                             R8 1 1
      188 MOVE                             R1 R8
      189 MOVE                             R8 R1
      190 MOVE                             R11 R8
      191 NAMECALL                         R9 R7 K11 ["Cross"]
      193 CALL                             R9 2 1
      194 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      196 LOADK                            R11 K13 [1E-06]
      197 JUMPIFNOTLT                      R10 R11 ; [+21]
      199 GETTABLEKS                       R11 R7 K3 ["X"]
      201 FASTCALL1                        MATH_ABS R11 ; [+2]
      202 GETIMPORT                        R10 K6 [math.abs]
      204 CALL                             R10 1 1
      205 LOADK                            R11 K14 [0.99]
      206 JUMPIFNOTLT                      R10 R11 ; [+7]
      208 LOADK                            R12 K15 [{1, 0, 0}]
      209 NAMECALL                         R10 R7 K11 ["Cross"]
      211 CALL                             R10 2 1
      212 MOVE                             R9 R10
      213 JUMP                             ; [+5]
      214 LOADK                            R12 K16 [{0, 1, 0}]
      215 NAMECALL                         R10 R7 K11 ["Cross"]
      217 CALL                             R10 2 1
      218 MOVE                             R9 R10
      219 GETTABLEKS                       R2 R9 K17 ["Unit"]
      221 JUMP                             ; [+36]
      222 GETUPVAL                         R8 1
      223 MOVE                             R9 R2
      224 CALL                             R8 1 1
      225 MOVE                             R2 R8
      226 MOVE                             R8 R2
      227 MOVE                             R11 R7
      228 NAMECALL                         R9 R8 K11 ["Cross"]
      230 CALL                             R9 2 1
      231 GETTABLEKS                       R10 R9 K12 ["Magnitude"]
      233 LOADK                            R11 K13 [1E-06]
      234 JUMPIFNOTLT                      R10 R11 ; [+21]
      236 GETTABLEKS                       R11 R8 K3 ["X"]
      238 FASTCALL1                        MATH_ABS R11 ; [+2]
      239 GETIMPORT                        R10 K6 [math.abs]
      241 CALL                             R10 1 1
      242 LOADK                            R11 K14 [0.99]
      243 JUMPIFNOTLT                      R10 R11 ; [+7]
      245 LOADK                            R12 K15 [{1, 0, 0}]
      246 NAMECALL                         R10 R8 K11 ["Cross"]
      248 CALL                             R10 2 1
      249 MOVE                             R9 R10
      250 JUMP                             ; [+5]
      251 LOADK                            R12 K16 [{0, 1, 0}]
      252 NAMECALL                         R10 R8 K11 ["Cross"]
      254 CALL                             R10 2 1
      255 MOVE                             R9 R10
      256 GETTABLEKS                       R1 R9 K17 ["Unit"]
      258 GETIMPORT                        R7 K20 [CFrame.fromMatrix]
      260 FASTCALL                         VECTOR ; [+2]
      261 GETIMPORT                        R8 K23 [Vector3.new]
      263 CALL                             R8 0 1
      264 MOVE                             R9 R1
      265 MOVE                             R10 R2
      266 CALL                             R7 3 -1
      267 RETURN                           R7 -1
      268 GETTABLEKS                       R1 R0 K0 ["RightVector"]
      270 GETTABLEKS                       R2 R0 K1 ["UpVector"]
      272 GETTABLEKS                       R4 R0 K2 ["LookVector"]
      274 MINUS                            R3 R4
      275 MOVE                             R5 R1
      276 GETTABLEKS                       R8 R5 K3 ["X"]
      278 FASTCALL1                        MATH_ABS R8 ; [+2]
      279 GETIMPORT                        R7 K6 [math.abs]
      281 CALL                             R7 1 1
      282 GETTABLEKS                       R9 R5 K7 ["Y"]
      284 FASTCALL1                        MATH_ABS R9 ; [+2]
      285 GETIMPORT                        R8 K6 [math.abs]
      287 CALL                             R8 1 1
      288 GETTABLEKS                       R10 R5 K8 ["Z"]
      290 FASTCALL1                        MATH_ABS R10 ; [+2]
      291 GETIMPORT                        R9 K6 [math.abs]
      293 CALL                             R9 1 1
      294 FASTCALL                         MATH_MAX ; [+2]
      295 GETIMPORT                        R6 K10 [math.max]
      297 CALL                             R6 3 1
      298 MOVE                             R4 R6
      299 MOVE                             R6 R2
      300 GETTABLEKS                       R9 R6 K3 ["X"]
      302 FASTCALL1                        MATH_ABS R9 ; [+2]
      303 GETIMPORT                        R8 K6 [math.abs]
      305 CALL                             R8 1 1
      306 GETTABLEKS                       R10 R6 K7 ["Y"]
      308 FASTCALL1                        MATH_ABS R10 ; [+2]
      309 GETIMPORT                        R9 K6 [math.abs]
      311 CALL                             R9 1 1
      312 GETTABLEKS                       R11 R6 K8 ["Z"]
      314 FASTCALL1                        MATH_ABS R11 ; [+2]
      315 GETIMPORT                        R10 K6 [math.abs]
      317 CALL                             R10 1 1
      318 FASTCALL                         MATH_MAX ; [+2]
      319 GETIMPORT                        R7 K10 [math.max]
      321 CALL                             R7 3 1
      322 MOVE                             R5 R7
      323 MOVE                             R7 R3
      324 GETTABLEKS                       R10 R7 K3 ["X"]
      326 FASTCALL1                        MATH_ABS R10 ; [+2]
      327 GETIMPORT                        R9 K6 [math.abs]
      329 CALL                             R9 1 1
      330 GETTABLEKS                       R11 R7 K7 ["Y"]
      332 FASTCALL1                        MATH_ABS R11 ; [+2]
      333 GETIMPORT                        R10 K6 [math.abs]
      335 CALL                             R10 1 1
      336 GETTABLEKS                       R12 R7 K8 ["Z"]
      338 FASTCALL1                        MATH_ABS R12 ; [+2]
      339 GETIMPORT                        R11 K6 [math.abs]
      341 CALL                             R11 1 1
      342 FASTCALL                         MATH_MAX ; [+2]
      343 GETIMPORT                        R8 K10 [math.max]
      345 CALL                             R8 3 1
      346 MOVE                             R6 R8
      347 JUMPIFNOTLT                      R5 R4 ; [+25]
      349 JUMPIFNOTLT                      R6 R4 ; [+23]
      351 GETUPVAL                         R7 1
      352 MOVE                             R8 R1
      353 CALL                             R7 1 1
      354 MOVE                             R1 R7
      355 JUMPIFNOTLT                      R6 R5 ; [+6]
      357 GETUPVAL                         R7 1
      358 MOVE                             R8 R2
      359 CALL                             R7 1 1
      360 MOVE                             R2 R7
      361 JUMP                             ; [+62]
      362 GETUPVAL                         R7 1
      363 MOVE                             R8 R3
      364 CALL                             R7 1 1
      365 MOVE                             R3 R7
      366 MOVE                             R9 R1
      367 NAMECALL                         R7 R3 K11 ["Cross"]
      369 CALL                             R7 2 1
      370 GETTABLEKS                       R2 R7 K17 ["Unit"]
      372 JUMP                             ; [+51]
      373 JUMPIFNOTLT                      R6 R5 ; [+23]
      375 GETUPVAL                         R7 1
      376 MOVE                             R8 R2
      377 CALL                             R7 1 1
      378 MOVE                             R2 R7
      379 JUMPIFNOTLT                      R6 R4 ; [+6]
      381 GETUPVAL                         R7 1
      382 MOVE                             R8 R1
      383 CALL                             R7 1 1
      384 MOVE                             R1 R7
      385 JUMP                             ; [+38]
      386 GETUPVAL                         R7 1
      387 MOVE                             R8 R3
      388 CALL                             R7 1 1
      389 MOVE                             R3 R7
      390 MOVE                             R9 R3
      391 NAMECALL                         R7 R2 K11 ["Cross"]
      393 CALL                             R7 2 1
      394 GETTABLEKS                       R1 R7 K17 ["Unit"]
      396 JUMP                             ; [+27]
      397 GETUPVAL                         R7 1
      398 MOVE                             R8 R3
      399 CALL                             R7 1 1
      400 MOVE                             R3 R7
      401 JUMPIFNOTLT                      R5 R4 ; [+12]
      403 GETUPVAL                         R7 1
      404 MOVE                             R8 R1
      405 CALL                             R7 1 1
      406 MOVE                             R1 R7
      407 MOVE                             R9 R1
      408 NAMECALL                         R7 R3 K11 ["Cross"]
      410 CALL                             R7 2 1
      411 GETTABLEKS                       R2 R7 K17 ["Unit"]
      413 JUMP                             ; [+10]
      414 GETUPVAL                         R7 1
      415 MOVE                             R8 R2
      416 CALL                             R7 1 1
      417 MOVE                             R2 R7
      418 MOVE                             R9 R3
      419 NAMECALL                         R7 R2 K11 ["Cross"]
      421 CALL                             R7 2 1
      422 GETTABLEKS                       R1 R7 K17 ["Unit"]
      424 GETIMPORT                        R7 K20 [CFrame.fromMatrix]
      426 FASTCALL                         VECTOR ; [+2]
      427 GETIMPORT                        R8 K23 [Vector3.new]
      429 CALL                             R8 0 1
      430 MOVE                             R9 R1
      431 MOVE                             R10 R2
      432 CALL                             R7 3 -1
      433 RETURN                           R7 -1

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
