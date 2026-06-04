PROTO_0:
        0 LOADK                            R3 K0 ["WedgePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 LOADK                            R1 K2 ["Wedge"]
        6 LOADK                            R2 K3 [{1, 1, 1}]
        7 RETURN                           R1 2
        8 LOADK                            R3 K4 ["CornerWedgePart"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 LOADK                            R1 K5 ["CornerWedge"]
       14 LOADK                            R2 K3 [{1, 1, 1}]
       15 RETURN                           R1 2
       16 LOADK                            R3 K6 ["Terrain"]
       17 NAMECALL                         R1 R0 K1 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+3]
       21 LOADK                            R1 K6 ["Terrain"]
       22 LOADK                            R2 K3 [{1, 1, 1}]
       23 RETURN                           R1 2
       24 LOADK                            R3 K7 ["UnionOperation"]
       25 NAMECALL                         R1 R0 K1 ["IsA"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+3]
       29 LOADK                            R1 K8 ["Brick"]
       30 LOADK                            R2 K3 [{1, 1, 1}]
       31 RETURN                           R1 2
       32 LOADK                            R3 K9 ["MeshPart"]
       33 NAMECALL                         R1 R0 K1 ["IsA"]
       35 CALL                             R1 2 1
       36 JUMPIFNOT                        R1 ; [+3]
       37 LOADK                            R1 K8 ["Brick"]
       38 LOADK                            R2 K3 [{1, 1, 1}]
       39 RETURN                           R1 2
       40 LOADK                            R3 K10 ["Part"]
       41 NAMECALL                         R1 R0 K1 ["IsA"]
       43 CALL                             R1 2 1
       44 JUMPIFNOT                        R1 ; [+45]
       45 GETTABLEKS                       R1 R0 K11 ["Shape"]
       47 GETIMPORT                        R2 K15 [Enum.PartType.Ball]
       49 JUMPIFNOTEQ                      R1 R2 ; [+4]
       51 LOADK                            R1 K16 ["Sphere"]
       52 LOADK                            R2 K3 [{1, 1, 1}]
       53 RETURN                           R1 2
       54 GETTABLEKS                       R1 R0 K11 ["Shape"]
       56 GETIMPORT                        R2 K18 [Enum.PartType.Cylinder]
       58 JUMPIFNOTEQ                      R1 R2 ; [+4]
       60 LOADK                            R1 K17 ["Cylinder"]
       61 LOADK                            R2 K3 [{1, 1, 1}]
       62 RETURN                           R1 2
       63 GETTABLEKS                       R1 R0 K11 ["Shape"]
       65 GETIMPORT                        R2 K20 [Enum.PartType.Block]
       67 JUMPIFNOTEQ                      R1 R2 ; [+4]
       69 LOADK                            R1 K8 ["Brick"]
       70 LOADK                            R2 K3 [{1, 1, 1}]
       71 RETURN                           R1 2
       72 GETTABLEKS                       R1 R0 K11 ["Shape"]
       74 GETIMPORT                        R2 K21 [Enum.PartType.Wedge]
       76 JUMPIFNOTEQ                      R1 R2 ; [+4]
       78 LOADK                            R1 K2 ["Wedge"]
       79 LOADK                            R2 K3 [{1, 1, 1}]
       80 RETURN                           R1 2
       81 GETTABLEKS                       R1 R0 K11 ["Shape"]
       83 GETIMPORT                        R2 K22 [Enum.PartType.CornerWedge]
       85 JUMPIFNOTEQ                      R1 R2 ; [+4]
       87 LOADK                            R1 K5 ["CornerWedge"]
       88 LOADK                            R2 K3 [{1, 1, 1}]
       89 RETURN                           R1 2
       90 LOADK                            R1 K8 ["Brick"]
       91 LOADK                            R2 K3 [{1, 1, 1}]
       92 RETURN                           R1 2

PROTO_1:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETTABLEKS                       R3 R0 K0 ["CFrame"]
        4 GETTABLEKS                       R4 R3 K1 ["p"]
        6 GETTABLEKS                       R6 R0 K3 ["Size"]
        8 GETTABLEKS                       R6 R6 K4 ["x"]
       10 DIVK                             R5 R6 K2 [2]
       11 GETTABLEKS                       R7 R0 K3 ["Size"]
       13 GETTABLEKS                       R7 R7 K5 ["y"]
       15 DIVK                             R6 R7 K2 [2]
       16 GETTABLEKS                       R8 R0 K3 ["Size"]
       18 GETTABLEKS                       R8 R8 K6 ["z"]
       20 DIVK                             R7 R8 K2 [2]
       21 GETTABLEKS                       R8 R3 K7 ["RightVector"]
       23 GETTABLEKS                       R9 R3 K8 ["UpVector"]
       25 GETTABLEKS                       R11 R3 K9 ["LookVector"]
       27 MINUS                            R10 R11
       28 LOADNIL                          R11
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 GETUPVAL                         R14 0
       32 MOVE                             R15 R0
       33 CALL                             R14 1 2
       34 GETTABLEKS                       R16 R15 K10 ["X"]
       36 MUL                              R5 R5 R16
       37 GETTABLEKS                       R16 R15 K11 ["Y"]
       39 MUL                              R6 R6 R16
       40 GETTABLEKS                       R16 R15 K12 ["Z"]
       42 MUL                              R7 R7 R16
       43 JUMPIFEQKS                       R14 K13 ["Brick"] ; [+5]
       45 JUMPIFEQKS                       R14 K14 ["Sphere"] ; [+3]
       47 JUMPIFNOTEQKS                    R14 K15 ["Cylinder"] ; [+341]
       49 NEWTABLE                         R16 0 8
       51 MUL                              R20 R8 R5
       52 ADD                              R19 R4 R20
       53 MUL                              R20 R9 R6
       54 ADD                              R18 R19 R20
       55 MUL                              R19 R10 R7
       56 ADD                              R17 R18 R19
       57 MUL                              R21 R8 R5
       58 ADD                              R20 R4 R21
       59 MUL                              R21 R9 R6
       60 ADD                              R19 R20 R21
       61 MUL                              R20 R10 R7
       62 SUB                              R18 R19 R20
       63 MUL                              R22 R8 R5
       64 SUB                              R21 R4 R22
       65 MUL                              R22 R9 R6
       66 ADD                              R20 R21 R22
       67 MUL                              R21 R10 R7
       68 ADD                              R19 R20 R21
       69 MUL                              R23 R8 R5
       70 SUB                              R22 R4 R23
       71 MUL                              R23 R9 R6
       72 ADD                              R21 R22 R23
       73 MUL                              R22 R10 R7
       74 SUB                              R20 R21 R22
       75 MUL                              R24 R8 R5
       76 ADD                              R23 R4 R24
       77 MUL                              R24 R9 R6
       78 SUB                              R22 R23 R24
       79 MUL                              R23 R10 R7
       80 ADD                              R21 R22 R23
       81 MUL                              R25 R8 R5
       82 ADD                              R24 R4 R25
       83 MUL                              R25 R9 R6
       84 SUB                              R23 R24 R25
       85 MUL                              R24 R10 R7
       86 SUB                              R22 R23 R24
       87 MUL                              R26 R8 R5
       88 SUB                              R25 R4 R26
       89 MUL                              R26 R9 R6
       90 SUB                              R24 R25 R26
       91 MUL                              R25 R10 R7
       92 ADD                              R23 R24 R25
       93 MUL                              R27 R8 R5
       94 SUB                              R26 R4 R27
       95 MUL                              R27 R9 R6
       96 SUB                              R25 R26 R27
       97 MUL                              R26 R10 R7
       98 SUB                              R24 R25 R26
       99 SETLIST                          R16 R17 8 [1]
      101 MOVE                             R11 R16
      102 NEWTABLE                         R16 0 12
      104 NEWTABLE                         R17 0 3
      106 GETTABLEN                        R18 R11 1
      107 GETTABLEN                        R19 R11 2
      108 LOADN                            R22 2
      109 MUL                              R21 R22 R5
      110 LOADN                            R23 2
      111 MUL                              R22 R23 R6
      112 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      114 GETIMPORT                        R20 K18 [math.min]
      116 CALL                             R20 2 1
      117 SETLIST                          R17 R18 3 [1]
      119 NEWTABLE                         R18 0 3
      121 GETTABLEN                        R19 R11 3
      122 GETTABLEN                        R20 R11 4
      123 LOADN                            R23 2
      124 MUL                              R22 R23 R5
      125 LOADN                            R24 2
      126 MUL                              R23 R24 R6
      127 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      129 GETIMPORT                        R21 K18 [math.min]
      131 CALL                             R21 2 1
      132 SETLIST                          R18 R19 3 [1]
      134 NEWTABLE                         R19 0 3
      136 GETTABLEN                        R20 R11 1
      137 GETTABLEN                        R21 R11 3
      138 LOADN                            R24 2
      139 MUL                              R23 R24 R6
      140 LOADN                            R25 2
      141 MUL                              R24 R25 R7
      142 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      144 GETIMPORT                        R22 K18 [math.min]
      146 CALL                             R22 2 1
      147 SETLIST                          R19 R20 3 [1]
      149 NEWTABLE                         R20 0 3
      151 GETTABLEN                        R21 R11 2
      152 GETTABLEN                        R22 R11 4
      153 LOADN                            R25 2
      154 MUL                              R24 R25 R6
      155 LOADN                            R26 2
      156 MUL                              R25 R26 R7
      157 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
      159 GETIMPORT                        R23 K18 [math.min]
      161 CALL                             R23 2 1
      162 SETLIST                          R20 R21 3 [1]
      164 NEWTABLE                         R21 0 3
      166 GETTABLEN                        R22 R11 5
      167 GETTABLEN                        R23 R11 6
      168 LOADN                            R26 2
      169 MUL                              R25 R26 R5
      170 LOADN                            R27 2
      171 MUL                              R26 R27 R6
      172 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      174 GETIMPORT                        R24 K18 [math.min]
      176 CALL                             R24 2 1
      177 SETLIST                          R21 R22 3 [1]
      179 NEWTABLE                         R22 0 3
      181 GETTABLEN                        R23 R11 7
      182 GETTABLEN                        R24 R11 8
      183 LOADN                            R27 2
      184 MUL                              R26 R27 R5
      185 LOADN                            R28 2
      186 MUL                              R27 R28 R6
      187 FASTCALL2                        MATH_MIN R26 R27 ; [+3]
      189 GETIMPORT                        R25 K18 [math.min]
      191 CALL                             R25 2 1
      192 SETLIST                          R22 R23 3 [1]
      194 NEWTABLE                         R23 0 3
      196 GETTABLEN                        R24 R11 5
      197 GETTABLEN                        R25 R11 7
      198 LOADN                            R28 2
      199 MUL                              R27 R28 R6
      200 LOADN                            R29 2
      201 MUL                              R28 R29 R7
      202 FASTCALL2                        MATH_MIN R27 R28 ; [+3]
      204 GETIMPORT                        R26 K18 [math.min]
      206 CALL                             R26 2 1
      207 SETLIST                          R23 R24 3 [1]
      209 NEWTABLE                         R24 0 3
      211 GETTABLEN                        R25 R11 6
      212 GETTABLEN                        R26 R11 8
      213 LOADN                            R29 2
      214 MUL                              R28 R29 R6
      215 LOADN                            R30 2
      216 MUL                              R29 R30 R7
      217 FASTCALL2                        MATH_MIN R28 R29 ; [+3]
      219 GETIMPORT                        R27 K18 [math.min]
      221 CALL                             R27 2 1
      222 SETLIST                          R24 R25 3 [1]
      224 NEWTABLE                         R25 0 3
      226 GETTABLEN                        R26 R11 1
      227 GETTABLEN                        R27 R11 5
      228 LOADN                            R30 2
      229 MUL                              R29 R30 R5
      230 LOADN                            R31 2
      231 MUL                              R30 R31 R7
      232 FASTCALL2                        MATH_MIN R29 R30 ; [+3]
      234 GETIMPORT                        R28 K18 [math.min]
      236 CALL                             R28 2 1
      237 SETLIST                          R25 R26 3 [1]
      239 NEWTABLE                         R26 0 3
      241 GETTABLEN                        R27 R11 2
      242 GETTABLEN                        R28 R11 6
      243 LOADN                            R31 2
      244 MUL                              R30 R31 R5
      245 LOADN                            R32 2
      246 MUL                              R31 R32 R7
      247 FASTCALL2                        MATH_MIN R30 R31 ; [+3]
      249 GETIMPORT                        R29 K18 [math.min]
      251 CALL                             R29 2 1
      252 SETLIST                          R26 R27 3 [1]
      254 NEWTABLE                         R27 0 3
      256 GETTABLEN                        R28 R11 3
      257 GETTABLEN                        R29 R11 7
      258 LOADN                            R32 2
      259 MUL                              R31 R32 R5
      260 LOADN                            R33 2
      261 MUL                              R32 R33 R7
      262 FASTCALL2                        MATH_MIN R31 R32 ; [+3]
      264 GETIMPORT                        R30 K18 [math.min]
      266 CALL                             R30 2 1
      267 SETLIST                          R27 R28 3 [1]
      269 NEWTABLE                         R28 0 3
      271 GETTABLEN                        R29 R11 4
      272 GETTABLEN                        R30 R11 8
      273 LOADN                            R33 2
      274 MUL                              R32 R33 R5
      275 LOADN                            R34 2
      276 MUL                              R33 R34 R7
      277 FASTCALL2                        MATH_MIN R32 R33 ; [+3]
      279 GETIMPORT                        R31 K18 [math.min]
      281 CALL                             R31 2 1
      282 SETLIST                          R28 R29 3 [1]
      284 SETLIST                          R16 R17 12 [1]
      286 MOVE                             R12 R16
      287 NEWTABLE                         R16 0 6
      289 NEWTABLE                         R17 0 5
      291 GETTABLEN                        R18 R11 1
      292 MOVE                             R19 R8
      293 LOADK                            R20 K19 ["RightSurface"]
      294 MOVE                             R21 R10
      295 NEWTABLE                         R22 0 4
      297 GETTABLEN                        R23 R11 5
      298 GETTABLEN                        R24 R11 6
      299 GETTABLEN                        R25 R11 2
      300 GETTABLEN                        R26 R11 1
      301 SETLIST                          R22 R23 4 [1]
      303 SETLIST                          R17 R18 5 [1]
      305 NEWTABLE                         R18 0 5
      307 GETTABLEN                        R19 R11 3
      308 MINUS                            R20 R8
      309 LOADK                            R21 K20 ["LeftSurface"]
      310 MOVE                             R22 R10
      311 NEWTABLE                         R23 0 4
      313 GETTABLEN                        R24 R11 3
      314 GETTABLEN                        R25 R11 4
      315 GETTABLEN                        R26 R11 8
      316 GETTABLEN                        R27 R11 7
      317 SETLIST                          R23 R24 4 [1]
      319 SETLIST                          R18 R19 5 [1]
      321 NEWTABLE                         R19 0 5
      323 GETTABLEN                        R20 R11 1
      324 MOVE                             R21 R9
      325 LOADK                            R22 K21 ["TopSurface"]
      326 MOVE                             R23 R8
      327 NEWTABLE                         R24 0 4
      329 GETTABLEN                        R25 R11 1
      330 GETTABLEN                        R26 R11 2
      331 GETTABLEN                        R27 R11 4
      332 GETTABLEN                        R28 R11 3
      333 SETLIST                          R24 R25 4 [1]
      335 SETLIST                          R19 R20 5 [1]
      337 NEWTABLE                         R20 0 5
      339 GETTABLEN                        R21 R11 5
      340 MINUS                            R22 R9
      341 LOADK                            R23 K22 ["BottomSurface"]
      342 MOVE                             R24 R8
      343 NEWTABLE                         R25 0 4
      345 GETTABLEN                        R26 R11 7
      346 GETTABLEN                        R27 R11 8
      347 GETTABLEN                        R28 R11 6
      348 GETTABLEN                        R29 R11 5
      349 SETLIST                          R25 R26 4 [1]
      351 SETLIST                          R20 R21 5 [1]
      353 NEWTABLE                         R21 0 5
      355 GETTABLEN                        R22 R11 1
      356 MOVE                             R23 R10
      357 LOADK                            R24 K23 ["BackSurface"]
      358 MOVE                             R25 R8
      359 NEWTABLE                         R26 0 4
      361 GETTABLEN                        R27 R11 1
      362 GETTABLEN                        R28 R11 3
      363 GETTABLEN                        R29 R11 7
      364 GETTABLEN                        R30 R11 5
      365 SETLIST                          R26 R27 4 [1]
      367 SETLIST                          R21 R22 5 [1]
      369 NEWTABLE                         R22 0 5
      371 GETTABLEN                        R23 R11 2
      372 MINUS                            R24 R10
      373 LOADK                            R25 K24 ["FrontSurface"]
      374 MOVE                             R26 R8
      375 NEWTABLE                         R27 0 4
      377 GETTABLEN                        R28 R11 6
      378 GETTABLEN                        R29 R11 8
      379 GETTABLEN                        R30 R11 4
      380 GETTABLEN                        R31 R11 2
      381 SETLIST                          R27 R28 4 [1]
      383 SETLIST                          R22 R23 5 [1]
      385 SETLIST                          R16 R17 6 [1]
      387 MOVE                             R13 R16
      388 JUMP                             ; [+598]
      389 JUMPIFEQKS                       R14 K14 ["Sphere"] ; [+3]
      391 JUMPIFNOTEQKS                    R14 K15 ["Cylinder"] ; [+109]
      393 GETUPVAL                         R16 1
      394 CALL                             R16 0 1
      395 JUMPIF                           R16 ; [+591]
      396 NEWTABLE                         R16 0 1
      398 MOVE                             R17 R1
      399 SETLIST                          R16 R17 1 [1]
      401 MOVE                             R11 R16
      402 NEWTABLE                         R12 0 0
      404 SUB                              R16 R1 R4
      405 GETTABLEKS                       R16 R16 K25 ["Unit"]
      407 LOADK                            R19 K26 [{0, 1, 0}]
      408 NAMECALL                         R17 R16 K27 ["Cross"]
      410 CALL                             R17 2 1
      411 GETTABLEKS                       R17 R17 K25 ["Unit"]
      413 LOADNIL                          R18
      414 GETTABLEKS                       R20 R16 K10 ["X"]
      416 FASTCALL1                        MATH_ABS R20 ; [+2]
      417 GETIMPORT                        R19 K29 [math.abs]
      419 CALL                             R19 1 1
      420 GETTABLEKS                       R21 R16 K11 ["Y"]
      422 FASTCALL1                        MATH_ABS R21 ; [+2]
      423 GETIMPORT                        R20 K29 [math.abs]
      425 CALL                             R20 1 1
      426 JUMPIFNOTLT                      R20 R19 ; [+25]
      428 GETTABLEKS                       R20 R16 K10 ["X"]
      430 FASTCALL1                        MATH_ABS R20 ; [+2]
      431 GETIMPORT                        R19 K29 [math.abs]
      433 CALL                             R19 1 1
      434 GETTABLEKS                       R21 R16 K12 ["Z"]
      436 FASTCALL1                        MATH_ABS R21 ; [+2]
      437 GETIMPORT                        R20 K29 [math.abs]
      439 CALL                             R20 1 1
      440 JUMPIFNOTLT                      R20 R19 ; [+11]
      442 GETTABLEKS                       R20 R16 K10 ["X"]
      444 LOADN                            R21 0
      445 JUMPIFNOTLT                      R21 R20 ; [+3]
      447 LOADK                            R19 K19 ["RightSurface"]
      448 JUMP                             ; [+1]
      449 LOADK                            R19 K20 ["LeftSurface"]
      450 MOVE                             R18 R19
      451 JUMP                             ; [+33]
      452 GETTABLEKS                       R20 R16 K11 ["Y"]
      454 FASTCALL1                        MATH_ABS R20 ; [+2]
      455 GETIMPORT                        R19 K29 [math.abs]
      457 CALL                             R19 1 1
      458 GETTABLEKS                       R21 R16 K12 ["Z"]
      460 FASTCALL1                        MATH_ABS R21 ; [+2]
      461 GETIMPORT                        R20 K29 [math.abs]
      463 CALL                             R20 1 1
      464 JUMPIFNOTLT                      R20 R19 ; [+11]
      466 GETTABLEKS                       R20 R16 K11 ["Y"]
      468 LOADN                            R21 0
      469 JUMPIFNOTLT                      R21 R20 ; [+3]
      471 LOADK                            R19 K21 ["TopSurface"]
      472 JUMP                             ; [+1]
      473 LOADK                            R19 K22 ["BottomSurface"]
      474 MOVE                             R18 R19
      475 JUMP                             ; [+9]
      476 GETTABLEKS                       R20 R16 K12 ["Z"]
      478 LOADN                            R21 0
      479 JUMPIFNOTLT                      R21 R20 ; [+3]
      481 LOADK                            R19 K23 ["BackSurface"]
      482 JUMP                             ; [+1]
      483 LOADK                            R19 K24 ["FrontSurface"]
      484 MOVE                             R18 R19
      485 NEWTABLE                         R19 0 1
      487 NEWTABLE                         R20 0 5
      489 MOVE                             R21 R1
      490 MOVE                             R22 R16
      491 MOVE                             R23 R18
      492 MOVE                             R24 R17
      493 NEWTABLE                         R25 0 0
      495 SETLIST                          R20 R21 5 [1]
      497 SETLIST                          R19 R20 1 [1]
      499 MOVE                             R13 R19
      500 JUMP                             ; [+486]
      501 JUMPIFNOTEQKS                    R14 K30 ["CornerWedge"] ; [+190]
      503 MUL                              R17 R10 R6
      504 MUL                              R18 R9 R7
      505 ADD                              R16 R17 R18
      506 GETTABLEKS                       R16 R16 K25 ["Unit"]
      508 MINUS                            R19 R8
      509 MUL                              R18 R19 R6
      510 MUL                              R19 R9 R5
      511 ADD                              R17 R18 R19
      512 GETTABLEKS                       R17 R17 K25 ["Unit"]
      514 NEWTABLE                         R18 0 5
      516 MUL                              R22 R8 R5
      517 ADD                              R21 R4 R22
      518 MUL                              R22 R9 R6
      519 ADD                              R20 R21 R22
      520 MUL                              R21 R10 R7
      521 SUB                              R19 R20 R21
      522 MUL                              R23 R8 R5
      523 ADD                              R22 R4 R23
      524 MUL                              R23 R9 R6
      525 SUB                              R21 R22 R23
      526 MUL                              R22 R10 R7
      527 ADD                              R20 R21 R22
      528 MUL                              R24 R8 R5
      529 ADD                              R23 R4 R24
      530 MUL                              R24 R9 R6
      531 SUB                              R22 R23 R24
      532 MUL                              R23 R10 R7
      533 SUB                              R21 R22 R23
      534 MUL                              R25 R8 R5
      535 SUB                              R24 R4 R25
      536 MUL                              R25 R9 R6
      537 SUB                              R23 R24 R25
      538 MUL                              R24 R10 R7
      539 ADD                              R22 R23 R24
      540 MUL                              R26 R8 R5
      541 SUB                              R25 R4 R26
      542 MUL                              R26 R9 R6
      543 SUB                              R24 R25 R26
      544 MUL                              R25 R10 R7
      545 SUB                              R23 R24 R25
      546 SETLIST                          R18 R19 5 [1]
      548 MOVE                             R11 R18
      549 NEWTABLE                         R18 0 8
      551 NEWTABLE                         R19 0 3
      553 GETTABLEN                        R20 R11 2
      554 GETTABLEN                        R21 R11 3
      555 LOADN                            R22 0
      556 SETLIST                          R19 R20 3 [1]
      558 NEWTABLE                         R20 0 3
      560 GETTABLEN                        R21 R11 3
      561 GETTABLEN                        R22 R11 5
      562 LOADN                            R23 0
      563 SETLIST                          R20 R21 3 [1]
      565 NEWTABLE                         R21 0 3
      567 GETTABLEN                        R22 R11 5
      568 GETTABLEN                        R23 R11 4
      569 LOADN                            R24 0
      570 SETLIST                          R21 R22 3 [1]
      572 NEWTABLE                         R22 0 3
      574 GETTABLEN                        R23 R11 4
      575 GETTABLEN                        R24 R11 2
      576 LOADN                            R25 0
      577 SETLIST                          R22 R23 3 [1]
      579 NEWTABLE                         R23 0 3
      581 GETTABLEN                        R24 R11 1
      582 GETTABLEN                        R25 R11 3
      583 LOADN                            R26 0
      584 SETLIST                          R23 R24 3 [1]
      586 NEWTABLE                         R24 0 3
      588 GETTABLEN                        R25 R11 1
      589 GETTABLEN                        R26 R11 2
      590 LOADN                            R27 0
      591 SETLIST                          R24 R25 3 [1]
      593 NEWTABLE                         R25 0 3
      595 GETTABLEN                        R26 R11 1
      596 GETTABLEN                        R27 R11 5
      597 LOADN                            R28 0
      598 SETLIST                          R25 R26 3 [1]
      600 NEWTABLE                         R26 0 3
      602 GETTABLEN                        R27 R11 1
      603 GETTABLEN                        R28 R11 4
      604 LOADN                            R29 0
      605 SETLIST                          R26 R27 3 [1]
      607 SETLIST                          R18 R19 8 [1]
      609 MOVE                             R12 R18
      610 NEWTABLE                         R18 0 5
      612 NEWTABLE                         R19 0 5
      614 GETTABLEN                        R20 R11 2
      615 MINUS                            R21 R9
      616 LOADK                            R22 K22 ["BottomSurface"]
      617 MOVE                             R23 R8
      618 NEWTABLE                         R24 0 4
      620 GETTABLEN                        R25 R11 2
      621 GETTABLEN                        R26 R11 3
      622 GETTABLEN                        R27 R11 5
      623 GETTABLEN                        R28 R11 4
      624 SETLIST                          R24 R25 4 [1]
      626 SETLIST                          R19 R20 5 [1]
      628 NEWTABLE                         R20 0 5
      630 GETTABLEN                        R21 R11 1
      631 MOVE                             R22 R8
      632 LOADK                            R23 K19 ["RightSurface"]
      633 MINUS                            R24 R9
      634 NEWTABLE                         R25 0 3
      636 GETTABLEN                        R26 R11 1
      637 GETTABLEN                        R27 R11 3
      638 GETTABLEN                        R28 R11 2
      639 SETLIST                          R25 R26 3 [1]
      641 SETLIST                          R20 R21 5 [1]
      643 NEWTABLE                         R21 0 5
      645 GETTABLEN                        R22 R11 1
      646 MINUS                            R23 R10
      647 LOADK                            R24 K24 ["FrontSurface"]
      648 MINUS                            R25 R9
      649 NEWTABLE                         R26 0 3
      651 GETTABLEN                        R27 R11 1
      652 GETTABLEN                        R28 R11 3
      653 GETTABLEN                        R29 R11 5
      654 SETLIST                          R26 R27 3 [1]
      656 SETLIST                          R21 R22 5 [1]
      658 NEWTABLE                         R22 0 5
      660 GETTABLEN                        R23 R11 1
      661 MOVE                             R24 R16
      662 LOADK                            R25 K23 ["BackSurface"]
      663 MOVE                             R26 R8
      664 NEWTABLE                         R27 0 3
      666 GETTABLEN                        R28 R11 1
      667 GETTABLEN                        R29 R11 2
      668 GETTABLEN                        R30 R11 4
      669 SETLIST                          R27 R28 3 [1]
      671 SETLIST                          R22 R23 5 [1]
      673 NEWTABLE                         R23 0 5
      675 GETTABLEN                        R24 R11 1
      676 MOVE                             R25 R17
      677 LOADK                            R26 K20 ["LeftSurface"]
      678 MOVE                             R27 R10
      679 NEWTABLE                         R28 0 3
      681 GETTABLEN                        R29 R11 1
      682 GETTABLEN                        R30 R11 5
      683 GETTABLEN                        R31 R11 4
      684 SETLIST                          R28 R29 3 [1]
      686 SETLIST                          R23 R24 5 [1]
      688 SETLIST                          R18 R19 5 [1]
      690 MOVE                             R13 R18
      691 JUMP                             ; [+295]
      692 JUMPIFNOTEQKS                    R14 K31 ["Wedge"] ; [+275]
      694 MINUS                            R18 R10
      695 MUL                              R17 R18 R6
      696 MUL                              R18 R9 R7
      697 ADD                              R16 R17 R18
      698 GETTABLEKS                       R16 R16 K25 ["Unit"]
      700 NEWTABLE                         R17 0 6
      702 MUL                              R21 R8 R5
      703 ADD                              R20 R4 R21
      704 MUL                              R21 R9 R6
      705 ADD                              R19 R20 R21
      706 MUL                              R20 R10 R7
      707 ADD                              R18 R19 R20
      708 MUL                              R22 R8 R5
      709 SUB                              R21 R4 R22
      710 MUL                              R22 R9 R6
      711 ADD                              R20 R21 R22
      712 MUL                              R21 R10 R7
      713 ADD                              R19 R20 R21
      714 MUL                              R23 R8 R5
      715 ADD                              R22 R4 R23
      716 MUL                              R23 R9 R6
      717 SUB                              R21 R22 R23
      718 MUL                              R22 R10 R7
      719 ADD                              R20 R21 R22
      720 MUL                              R24 R8 R5
      721 ADD                              R23 R4 R24
      722 MUL                              R24 R9 R6
      723 SUB                              R22 R23 R24
      724 MUL                              R23 R10 R7
      725 SUB                              R21 R22 R23
      726 MUL                              R25 R8 R5
      727 SUB                              R24 R4 R25
      728 MUL                              R25 R9 R6
      729 SUB                              R23 R24 R25
      730 MUL                              R24 R10 R7
      731 ADD                              R22 R23 R24
      732 MUL                              R26 R8 R5
      733 SUB                              R25 R4 R26
      734 MUL                              R26 R9 R6
      735 SUB                              R24 R25 R26
      736 MUL                              R25 R10 R7
      737 SUB                              R23 R24 R25
      738 SETLIST                          R17 R18 6 [1]
      740 MOVE                             R11 R17
      741 NEWTABLE                         R17 0 9
      743 NEWTABLE                         R18 0 3
      745 GETTABLEN                        R19 R11 1
      746 GETTABLEN                        R20 R11 2
      747 LOADN                            R23 2
      748 MUL                              R22 R23 R6
      749 LOADN                            R24 2
      750 MUL                              R23 R24 R7
      751 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      753 GETIMPORT                        R21 K18 [math.min]
      755 CALL                             R21 2 1
      756 SETLIST                          R18 R19 3 [1]
      758 NEWTABLE                         R19 0 3
      760 GETTABLEN                        R20 R11 1
      761 GETTABLEN                        R21 R11 4
      762 LOADN                            R24 2
      763 MUL                              R23 R24 R6
      764 LOADN                            R25 2
      765 MUL                              R24 R25 R7
      766 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      768 GETIMPORT                        R22 K18 [math.min]
      770 CALL                             R22 2 1
      771 SETLIST                          R19 R20 3 [1]
      773 NEWTABLE                         R20 0 3
      775 GETTABLEN                        R21 R11 2
      776 GETTABLEN                        R22 R11 6
      777 LOADN                            R25 2
      778 MUL                              R24 R25 R6
      779 LOADN                            R26 2
      780 MUL                              R25 R26 R7
      781 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
      783 GETIMPORT                        R23 K18 [math.min]
      785 CALL                             R23 2 1
      786 SETLIST                          R20 R21 3 [1]
      788 NEWTABLE                         R21 0 3
      790 GETTABLEN                        R22 R11 3
      791 GETTABLEN                        R23 R11 4
      792 LOADN                            R26 2
      793 MUL                              R25 R26 R5
      794 LOADN                            R27 2
      795 MUL                              R26 R27 R6
      796 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      798 GETIMPORT                        R24 K18 [math.min]
      800 CALL                             R24 2 1
      801 SETLIST                          R21 R22 3 [1]
      803 NEWTABLE                         R22 0 3
      805 GETTABLEN                        R23 R11 5
      806 GETTABLEN                        R24 R11 6
      807 LOADN                            R27 2
      808 MUL                              R26 R27 R5
      809 LOADN                            R28 2
      810 MUL                              R27 R28 R6
      811 FASTCALL2                        MATH_MIN R26 R27 ; [+3]
      813 GETIMPORT                        R25 K18 [math.min]
      815 CALL                             R25 2 1
      816 SETLIST                          R22 R23 3 [1]
      818 NEWTABLE                         R23 0 3
      820 GETTABLEN                        R24 R11 3
      821 GETTABLEN                        R25 R11 5
      822 LOADN                            R28 2
      823 MUL                              R27 R28 R6
      824 LOADN                            R29 2
      825 MUL                              R28 R29 R7
      826 FASTCALL2                        MATH_MIN R27 R28 ; [+3]
      828 GETIMPORT                        R26 K18 [math.min]
      830 CALL                             R26 2 1
      831 SETLIST                          R23 R24 3 [1]
      833 NEWTABLE                         R24 0 3
      835 GETTABLEN                        R25 R11 4
      836 GETTABLEN                        R26 R11 6
      837 LOADN                            R29 2
      838 MUL                              R28 R29 R6
      839 LOADN                            R30 2
      840 MUL                              R29 R30 R7
      841 FASTCALL2                        MATH_MIN R28 R29 ; [+3]
      843 GETIMPORT                        R27 K18 [math.min]
      845 CALL                             R27 2 1
      846 SETLIST                          R24 R25 3 [1]
      848 NEWTABLE                         R25 0 3
      850 GETTABLEN                        R26 R11 1
      851 GETTABLEN                        R27 R11 3
      852 LOADN                            R30 2
      853 MUL                              R29 R30 R5
      854 LOADN                            R31 2
      855 MUL                              R30 R31 R7
      856 FASTCALL2                        MATH_MIN R29 R30 ; [+3]
      858 GETIMPORT                        R28 K18 [math.min]
      860 CALL                             R28 2 1
      861 SETLIST                          R25 R26 3 [1]
      863 NEWTABLE                         R26 0 3
      865 GETTABLEN                        R27 R11 2
      866 GETTABLEN                        R28 R11 5
      867 LOADN                            R31 2
      868 MUL                              R30 R31 R5
      869 LOADN                            R32 2
      870 MUL                              R31 R32 R7
      871 FASTCALL2                        MATH_MIN R30 R31 ; [+3]
      873 GETIMPORT                        R29 K18 [math.min]
      875 CALL                             R29 2 1
      876 SETLIST                          R26 R27 3 [1]
      878 SETLIST                          R17 R18 9 [1]
      880 MOVE                             R12 R17
      881 NEWTABLE                         R17 0 5
      883 NEWTABLE                         R18 0 5
      885 GETTABLEN                        R19 R11 1
      886 MOVE                             R20 R8
      887 LOADK                            R21 K19 ["RightSurface"]
      888 MOVE                             R22 R10
      889 NEWTABLE                         R23 0 3
      891 GETTABLEN                        R24 R11 4
      892 GETTABLEN                        R25 R11 1
      893 GETTABLEN                        R26 R11 3
      894 SETLIST                          R23 R24 3 [1]
      896 SETLIST                          R18 R19 5 [1]
      898 NEWTABLE                         R19 0 5
      900 GETTABLEN                        R20 R11 2
      901 MINUS                            R21 R8
      902 LOADK                            R22 K20 ["LeftSurface"]
      903 MOVE                             R23 R10
      904 NEWTABLE                         R24 0 3
      906 GETTABLEN                        R25 R11 2
      907 GETTABLEN                        R26 R11 6
      908 GETTABLEN                        R27 R11 5
      909 SETLIST                          R24 R25 3 [1]
      911 SETLIST                          R19 R20 5 [1]
      913 NEWTABLE                         R20 0 5
      915 GETTABLEN                        R21 R11 3
      916 MINUS                            R22 R9
      917 LOADK                            R23 K22 ["BottomSurface"]
      918 MOVE                             R24 R8
      919 NEWTABLE                         R25 0 4
      921 GETTABLEN                        R26 R11 5
      922 GETTABLEN                        R27 R11 6
      923 GETTABLEN                        R28 R11 4
      924 GETTABLEN                        R29 R11 3
      925 SETLIST                          R25 R26 4 [1]
      927 SETLIST                          R20 R21 5 [1]
      929 NEWTABLE                         R21 0 5
      931 GETTABLEN                        R22 R11 1
      932 MOVE                             R23 R10
      933 LOADK                            R24 K23 ["BackSurface"]
      934 MOVE                             R25 R8
      935 NEWTABLE                         R26 0 4
      937 GETTABLEN                        R27 R11 1
      938 GETTABLEN                        R28 R11 2
      939 GETTABLEN                        R29 R11 5
      940 GETTABLEN                        R30 R11 3
      941 SETLIST                          R26 R27 4 [1]
      943 SETLIST                          R21 R22 5 [1]
      945 NEWTABLE                         R22 0 5
      947 GETTABLEN                        R23 R11 2
      948 MOVE                             R24 R16
      949 LOADK                            R25 K24 ["FrontSurface"]
      950 MOVE                             R28 R8
      951 NAMECALL                         R26 R16 K27 ["Cross"]
      953 CALL                             R26 2 1
      954 NEWTABLE                         R27 0 4
      956 GETTABLEN                        R28 R11 2
      957 GETTABLEN                        R29 R11 1
      958 GETTABLEN                        R30 R11 4
      959 GETTABLEN                        R31 R11 6
      960 SETLIST                          R27 R28 4 [1]
      962 SETLIST                          R22 R23 5 [1]
      964 SETLIST                          R17 R18 5 [1]
      966 MOVE                             R13 R17
      967 JUMP                             ; [+19]
      968 JUMPIFNOTEQKS                    R14 K32 ["Terrain"] ; [+9]
      970 LOADB                            R17 0
      971 FASTCALL2K                       ASSERT R17 K33 ; [+4]
      973 LOADK                            R18 K33 ["Called GetGeometry on Terrain"]
      974 GETIMPORT                        R16 K35 [assert]
      976 CALL                             R16 2 0
      977 JUMP                             ; [+9]
      978 LOADB                            R17 0
      979 LOADK                            R19 K36 ["Bad shape: "]
      980 MOVE                             R20 R14
      981 CONCAT                           R18 R19 R20
      982 FASTCALL2                        ASSERT R17 R18 ; [+3]
      984 GETIMPORT                        R16 K35 [assert]
      986 CALL                             R16 2 0
      987 DUPTABLE                         R16 K43 [{"part", "shape", "vertices", "edges", "faces", "vertexMargin"}]
      988 SETTABLEKS                       R0 R16 K37 ["part"]
      990 JUMPIFEQKS                       R14 K14 ["Sphere"] ; [+3]
      992 JUMPIFNOTEQKS                    R14 K15 ["Cylinder"] ; [+3]
      994 MOVE                             R17 R14
      995 JUMPIF                           R17 ; [+1]
      996 LOADK                            R17 K44 ["Mesh"]
      997 SETTABLEKS                       R17 R16 K38 ["shape"]
      999 SETTABLEKS                       R11 R16 K39 ["vertices"]
     1001 SETTABLEKS                       R12 R16 K40 ["edges"]
     1003 SETTABLEKS                       R13 R16 K41 ["faces"]
     1005 FASTCALL3                        MATH_MIN R5 R6 R7
     1007 MOVE                             R19 R5
     1008 MOVE                             R20 R6
     1009 MOVE                             R21 R7
     1010 GETIMPORT                        R18 K18 [math.min]
     1012 CALL                             R18 3 1
     1013 MULK                             R17 R18 K2 [2]
     1014 SETTABLEKS                       R17 R16 K42 ["vertexMargin"]
     1016 LOADN                            R17 0
     1017 GETIMPORT                        R18 K46 [ipairs]
     1019 MOVE                             R19 R13
     1020 CALL                             R18 1 3
     1021 FORGPREP_INEXT                   R18
     1022 ADDK                             R17 R17 K47 [1]
     1023 SETTABLEKS                       R17 R22 K48 ["id"]
     1025 GETTABLEN                        R23 R22 1
     1026 SETTABLEKS                       R23 R22 K49 ["point"]
     1028 GETTABLEN                        R23 R22 2
     1029 SETTABLEKS                       R23 R22 K50 ["normal"]
     1031 GETTABLEN                        R23 R22 3
     1032 SETTABLEKS                       R23 R22 K51 ["surface"]
     1034 GETTABLEN                        R23 R22 4
     1035 SETTABLEKS                       R23 R22 K52 ["direction"]
     1037 GETTABLEN                        R23 R22 5
     1038 SETTABLEKS                       R23 R22 K39 ["vertices"]
     1040 SETTABLEKS                       R0 R22 K37 ["part"]
     1042 LOADK                            R23 K53 ["Face"]
     1043 SETTABLEKS                       R23 R22 K54 ["type"]
     1045 LOADNIL                          R23
     1046 LOADNIL                          R24
     1047 LOADNIL                          R25
     1048 LOADNIL                          R26
     1049 SETTABLEN                        R23 R22 1
     1050 SETTABLEN                        R24 R22 2
     1051 SETTABLEN                        R25 R22 3
     1052 SETTABLEN                        R26 R22 4
     1053 FORGLOOP                         R18 2 [inext] ; [-32]
     1055 GETIMPORT                        R18 K46 [ipairs]
     1057 MOVE                             R19 R12
     1058 CALL                             R18 1 3
     1059 FORGPREP_INEXT                   R18
     1060 ADDK                             R17 R17 K47 [1]
     1061 SETTABLEKS                       R17 R22 K48 ["id"]
     1063 GETTABLEN                        R23 R22 1
     1064 GETTABLEN                        R24 R22 2
     1065 SETTABLEKS                       R23 R22 K55 ["a"]
     1067 SETTABLEKS                       R24 R22 K56 ["b"]
     1069 GETTABLEKS                       R24 R22 K56 ["b"]
     1071 GETTABLEKS                       R25 R22 K55 ["a"]
     1073 SUB                              R23 R24 R25
     1074 GETTABLEKS                       R23 R23 K25 ["Unit"]
     1076 SETTABLEKS                       R23 R22 K52 ["direction"]
     1078 GETTABLEKS                       R24 R22 K56 ["b"]
     1080 GETTABLEKS                       R25 R22 K55 ["a"]
     1082 SUB                              R23 R24 R25
     1083 GETTABLEKS                       R23 R23 K57 ["Magnitude"]
     1085 SETTABLEKS                       R23 R22 K58 ["length"]
     1087 GETTABLEN                        R23 R22 3
     1088 SETTABLEKS                       R23 R22 K59 ["edgeMargin"]
     1090 SETTABLEKS                       R0 R22 K37 ["part"]
     1092 GETTABLEKS                       R23 R16 K42 ["vertexMargin"]
     1094 SETTABLEKS                       R23 R22 K42 ["vertexMargin"]
     1096 LOADK                            R23 K60 ["Edge"]
     1097 SETTABLEKS                       R23 R22 K54 ["type"]
     1099 LOADNIL                          R23
     1100 LOADNIL                          R24
     1101 LOADNIL                          R25
     1102 SETTABLEN                        R23 R22 1
     1103 SETTABLEN                        R24 R22 2
     1104 SETTABLEN                        R25 R22 3
     1105 FORGLOOP                         R18 2 [inext] ; [-46]
     1107 GETIMPORT                        R18 K46 [ipairs]
     1109 MOVE                             R19 R11
     1110 CALL                             R18 1 3
     1111 FORGPREP_INEXT                   R18
     1112 ADDK                             R17 R17 K47 [1]
     1113 DUPTABLE                         R23 K62 [{"position", "id", "type"}]
     1114 SETTABLEKS                       R22 R23 K61 ["position"]
     1116 SETTABLEKS                       R17 R23 K48 ["id"]
     1118 LOADK                            R24 K63 ["Vertex"]
     1119 SETTABLEKS                       R24 R23 K54 ["type"]
     1121 SETTABLE                         R23 R11 R21
     1122 FORGLOOP                         R18 2 [inext] ; [-11]
     1124 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagDraggerFrameworkRemoveRedundancies"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 DUPCLOSURE                       R3 K8 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 RETURN                           R3 1
