PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Payload"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["BrushSize"]
        9 GETTABLE                         R3 R2 R4
       10 GETTABLEKS                       R4 R3 K3 ["Height"]
       12 GETTABLEKS                       R5 R3 K4 ["Size"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["BrushShape"]
       17 GETTABLE                         R6 R2 R7
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K6 ["State"]
       21 GETTABLE                         R7 R2 R8
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K7 ["Sphere"]
       25 JUMPIFNOTEQ                      R6 R10 ; [+3]
       27 MOVE                             R9 R5
       28 JUMP                             ; [+1]
       29 MOVE                             R9 R4
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K8 ["VoxelResolution"]
       33 MUL                              R8 R9 R10
       34 GETUPVAL                         R9 4
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K9 ["PivotPosition"]
       38 GETTABLE                         R10 R2 R11
       39 GETTABLEKS                       R11 R7 K10 ["Position"]
       41 MOVE                             R12 R8
       42 CALL                             R9 3 1
       43 DUPTABLE                         R10 K11 [{"Position"}]
       44 SETTABLEKS                       R9 R10 K10 ["Position"]
       46 SETTABLEKS                       R10 R0 K6 ["State"]
       48 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["ProfileTools"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETIMPORT                        R2 K7 [debug.profilebegin]
       15 LOADK                            R3 K8 ["Draw"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K0 ["State"]
       19 GETTABLEKS                       R4 R0 K9 ["Payload"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K10 ["BrushSettings"]
       24 GETTABLE                         R3 R4 R5
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K11 ["BrushSize"]
       28 GETTABLE                         R4 R3 R5
       29 GETTABLEKS                       R5 R4 K12 ["Height"]
       31 GETTABLEKS                       R6 R4 K13 ["Size"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K14 ["BrushMode"]
       36 GETTABLE                         R7 R3 R8
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K15 ["BrushShape"]
       40 GETTABLE                         R8 R3 R9
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K0 ["State"]
       44 GETTABLE                         R9 R3 R10
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K16 ["IgnoreWater"]
       48 GETTABLE                         R10 R3 R11
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K17 ["TemporarySmooth"]
       52 GETTABLE                         R11 R3 R12
       53 JUMPIFNOT                        R11 ; [+36]
       54 GETTABLEKS                       R12 R2 K18 ["Smooth"]
       56 JUMPIF                           R12 ; [+15]
       57 GETUPVAL                         R12 3
       58 LOADK                            R13 K18 ["Smooth"]
       59 GETUPVAL                         R14 4
       60 CALL                             R12 2 1
       61 DUPTABLE                         R15 K19 [{"Payload"}]
       62 GETTABLEKS                       R16 R0 K9 ["Payload"]
       64 SETTABLEKS                       R16 R15 K9 ["Payload"]
       66 NAMECALL                         R13 R12 K20 ["start"]
       68 CALL                             R13 2 0
       69 SETTABLEKS                       R12 R2 K18 ["Smooth"]
       71 JUMP                             ; [+7]
       72 GETTABLEKS                       R12 R2 K18 ["Smooth"]
       74 GETTABLEKS                       R14 R0 K9 ["Payload"]
       76 NAMECALL                         R12 R12 K21 ["updatePayload"]
       78 CALL                             R12 2 0
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K4 ["ProfileTools"]
       82 CALL                             R12 0 1
       83 JUMPIFNOT                        R12 ; [+3]
       84 GETIMPORT                        R12 K23 [debug.profileend]
       86 CALL                             R12 0 0
       87 LOADB                            R12 1
       88 LOADN                            R13 0
       89 RETURN                           R12 2
       90 GETTABLEKS                       R12 R2 K18 ["Smooth"]
       92 JUMPIFNOT                        R12 ; [+12]
       93 GETTABLEKS                       R12 R2 K18 ["Smooth"]
       95 NAMECALL                         R12 R12 K24 ["cancel"]
       97 CALL                             R12 1 0
       98 LOADNIL                          R12
       99 SETTABLEKS                       R12 R2 K18 ["Smooth"]
      101 GETTABLEKS                       R12 R9 K25 ["Position"]
      103 SETTABLEKS                       R12 R2 K25 ["Position"]
      105 GETTABLEKS                       R12 R9 K26 ["Material"]
      107 GETIMPORT                        R13 K29 [Enum.Material.Air]
      109 JUMPIFNOTEQ                      R12 R13 ; [+7]
      111 NAMECALL                         R12 R1 K30 ["skipBudget"]
      113 CALL                             R12 1 0
      114 LOADB                            R12 1
      115 LOADN                            R13 0
      116 RETURN                           R12 2
      117 GETTABLEKS                       R13 R0 K9 ["Payload"]
      119 GETUPVAL                         R14 1
      120 GETTABLEKS                       R14 R14 K31 ["MaterialSettings"]
      122 GETTABLE                         R12 R13 R14
      123 GETUPVAL                         R14 5
      124 GETTABLEKS                       R14 R14 K32 ["AutoMaterial"]
      126 GETTABLE                         R13 R12 R14
      127 GETUPVAL                         R15 5
      128 GETTABLEKS                       R15 R15 K33 ["SourceMaterial"]
      130 GETTABLE                         R14 R12 R15
      131 GETUPVAL                         R16 5
      132 GETTABLEKS                       R16 R16 K34 ["SourceMaterialSlot"]
      134 GETTABLE                         R15 R12 R16
      135 GETUPVAL                         R17 6
      136 CALL                             R17 0 1
      137 JUMPIFNOT                        R17 ; [+8]
      138 GETUPVAL                         R16 7
      139 GETTABLEKS                       R16 R16 K35 ["new"]
      141 GETUPVAL                         R17 4
      142 GETTABLEKS                       R17 R17 K36 ["Terrain"]
      144 CALL                             R16 1 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R16
      147 JUMPIFNOT                        R16 ; [+20]
      148 GETUPVAL                         R17 8
      149 GETTABLEKS                       R17 R17 K37 ["Add"]
      151 JUMPIFNOTEQ                      R7 R17 ; [+16]
      153 JUMPIF                           R13 ; [+14]
      154 MOVE                             R19 R15
      155 NAMECALL                         R17 R16 K38 ["isMaterialValid"]
      157 CALL                             R17 2 1
      158 JUMPIF                           R17 ; [+9]
      159 NAMECALL                         R17 R1 K39 ["reportInvalidMaterialSlot"]
      161 CALL                             R17 1 0
      162 NAMECALL                         R17 R1 K30 ["skipBudget"]
      164 CALL                             R17 1 0
      165 LOADB                            R17 1
      166 LOADN                            R18 0
      167 RETURN                           R17 2
      168 GETUPVAL                         R19 9
      169 GETTABLEKS                       R19 R19 K40 ["Sphere"]
      171 JUMPIFNOTEQ                      R8 R19 ; [+3]
      173 MOVE                             R18 R6
      174 JUMP                             ; [+1]
      175 MOVE                             R18 R5
      176 GETUPVAL                         R19 10
      177 GETTABLEKS                       R19 R19 K41 ["VoxelResolution"]
      179 MUL                              R17 R18 R19
      180 GETUPVAL                         R19 10
      181 GETTABLEKS                       R19 R19 K41 ["VoxelResolution"]
      183 MUL                              R18 R6 R19
      184 MULK                             R19 R18 K42 [0.5]
      185 GETUPVAL                         R20 8
      186 GETTABLEKS                       R20 R20 K37 ["Add"]
      188 JUMPIFNOTEQ                      R7 R20 ; [+6]
      190 SUBK                             R6 R6 K43 [1]
      191 SUBK                             R17 R17 K44 [2]
      192 SUBK                             R18 R18 K44 [2]
      193 SUBK                             R19 R19 K43 [1]
      194 JUMP                             ; [+5]
      195 GETIMPORT                        R14 K29 [Enum.Material.Air]
      197 JUMPIFNOT                        R16 ; [+2]
      198 GETTABLEKS                       R15 R16 K45 ["air"]
      200 GETUPVAL                         R20 11
      201 GETUPVAL                         R22 2
      202 GETTABLEKS                       R22 R22 K46 ["PivotPosition"]
      204 GETTABLE                         R21 R3 R22
      205 GETTABLEKS                       R22 R9 K25 ["Position"]
      207 MOVE                             R23 R17
      208 CALL                             R20 3 1
      209 GETUPVAL                         R21 12
      210 GETTABLEKS                       R22 R2 K25 ["Position"]
      212 MOVE                             R23 R20
      213 MOVE                             R24 R19
      214 CALL                             R21 3 1
      215 LENGTH                           R23 R21
      216 GETTABLE                         R22 R21 R23
      217 SETTABLEKS                       R22 R2 K25 ["Position"]
      219 MOVE                             R22 R21
      220 LOADNIL                          R23
      221 LOADNIL                          R24
      222 FORGPREP                         R22
      223 GETTABLEKS                       R27 R2 K47 ["LastPosition"]
      225 JUMPIFNOTEQ                      R26 R27 ; [+16]
      227 JUMPIF                           R13 ; [+14]
      228 NAMECALL                         R27 R1 K30 ["skipBudget"]
      230 CALL                             R27 1 0
      231 GETUPVAL                         R27 0
      232 GETTABLEKS                       R27 R27 K4 ["ProfileTools"]
      234 CALL                             R27 0 1
      235 JUMPIFNOT                        R27 ; [+3]
      236 GETIMPORT                        R27 K23 [debug.profileend]
      238 CALL                             R27 0 0
      239 LOADB                            R27 1
      240 LOADN                            R28 0
      241 RETURN                           R27 2
      242 SETTABLEKS                       R26 R2 K47 ["LastPosition"]
      244 GETUPVAL                         R27 13
      245 MOVE                             R28 R26
      246 MOVE                             R29 R19
      247 MOVE                             R30 R17
      248 CALL                             R27 3 2
      249 GETIMPORT                        R29 K50 [os.clock]
      251 CALL                             R29 0 1
      252 GETUPVAL                         R31 8
      253 GETTABLEKS                       R31 R31 K37 ["Add"]
      255 JUMPIFEQ                         R7 R31 ; [+9]
      257 LOADB                            R30 0
      258 GETUPVAL                         R31 8
      259 GETTABLEKS                       R31 R31 K51 ["Subtract"]
      261 JUMPIFNOTEQ                      R7 R31 ; [+11]
      263 NOT                              R30 R10
      264 JUMPIFNOT                        R30 ; [+8]
      265 NOT                              R30 R13
      266 JUMPIFNOT                        R30 ; [+6]
      267 NOT                              R30 R16
      268 JUMPIF                           R30 ; [+4]
      269 MOVE                             R32 R15
      270 NAMECALL                         R30 R16 K52 ["canUseGeometricFill"]
      272 CALL                             R30 2 1
      273 JUMPIFNOT                        R30 ; [+167]
      274 JUMPIFNOT                        R16 ; [+67]
      275 GETUPVAL                         R31 9
      276 GETTABLEKS                       R31 R31 K40 ["Sphere"]
      278 JUMPIFNOTEQ                      R8 R31 ; [+8]
      280 MOVE                             R33 R26
      281 MOVE                             R34 R19
      282 MOVE                             R35 R15
      283 NAMECALL                         R31 R16 K53 ["fillBall"]
      285 CALL                             R31 4 0
      286 JUMP                             ; [+133]
      287 GETUPVAL                         R31 9
      288 GETTABLEKS                       R31 R31 K54 ["Cube"]
      290 JUMPIFNOTEQ                      R8 R31 ; [+18]
      292 GETIMPORT                        R33 K56 [CFrame.new]
      294 MOVE                             R34 R26
      295 CALL                             R33 1 1
      296 FASTCALL3                        VECTOR R18 R17 R18
      298 MOVE                             R35 R18
      299 MOVE                             R36 R17
      300 MOVE                             R37 R18
      301 GETIMPORT                        R34 K58 [Vector3.new]
      303 CALL                             R34 3 1
      304 MOVE                             R35 R15
      305 NAMECALL                         R31 R16 K59 ["fillBlock"]
      307 CALL                             R31 4 0
      308 JUMP                             ; [+111]
      309 GETUPVAL                         R31 9
      310 GETTABLEKS                       R31 R31 K60 ["Cylinder"]
      312 JUMPIFNOTEQ                      R8 R31 ; [+107]
      314 SUB                              R31 R28 R27
      315 GETTABLEKS                       R31 R31 K61 ["X"]
      317 LOADN                            R33 2
      318 GETUPVAL                         R34 10
      319 GETTABLEKS                       R34 R34 K41 ["VoxelResolution"]
      321 MUL                              R32 R33 R34
      322 JUMPIFNOTLE                      R31 R32 ; [+8]
      324 MOVE                             R33 R26
      325 MOVE                             R34 R19
      326 MOVE                             R35 R15
      327 NAMECALL                         R31 R16 K53 ["fillBall"]
      329 CALL                             R31 4 0
      330 JUMP                             ; [+89]
      331 GETIMPORT                        R33 K56 [CFrame.new]
      333 MOVE                             R34 R26
      334 CALL                             R33 1 1
      335 MOVE                             R34 R17
      336 MOVE                             R35 R19
      337 MOVE                             R36 R15
      338 NAMECALL                         R31 R16 K62 ["fillCylinder"]
      340 CALL                             R31 5 0
      341 JUMP                             ; [+78]
      342 GETUPVAL                         R31 9
      343 GETTABLEKS                       R31 R31 K40 ["Sphere"]
      345 JUMPIFNOTEQ                      R8 R31 ; [+11]
      347 GETUPVAL                         R31 4
      348 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      350 MOVE                             R33 R26
      351 MOVE                             R34 R19
      352 MOVE                             R35 R14
      353 NAMECALL                         R31 R31 K63 ["FillBall"]
      355 CALL                             R31 4 0
      356 JUMP                             ; [+63]
      357 GETUPVAL                         R31 9
      358 GETTABLEKS                       R31 R31 K54 ["Cube"]
      360 JUMPIFNOTEQ                      R8 R31 ; [+21]
      362 GETUPVAL                         R31 4
      363 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      365 GETIMPORT                        R33 K56 [CFrame.new]
      367 MOVE                             R34 R26
      368 CALL                             R33 1 1
      369 FASTCALL3                        VECTOR R18 R17 R18
      371 MOVE                             R35 R18
      372 MOVE                             R36 R17
      373 MOVE                             R37 R18
      374 GETIMPORT                        R34 K58 [Vector3.new]
      376 CALL                             R34 3 1
      377 MOVE                             R35 R14
      378 NAMECALL                         R31 R31 K64 ["FillBlock"]
      380 CALL                             R31 4 0
      381 JUMP                             ; [+38]
      382 GETUPVAL                         R31 9
      383 GETTABLEKS                       R31 R31 K60 ["Cylinder"]
      385 JUMPIFNOTEQ                      R8 R31 ; [+34]
      387 SUB                              R31 R28 R27
      388 GETTABLEKS                       R31 R31 K61 ["X"]
      390 LOADN                            R33 2
      391 GETUPVAL                         R34 10
      392 GETTABLEKS                       R34 R34 K41 ["VoxelResolution"]
      394 MUL                              R32 R33 R34
      395 JUMPIFNOTLE                      R31 R32 ; [+11]
      397 GETUPVAL                         R31 4
      398 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      400 MOVE                             R33 R26
      401 MOVE                             R34 R19
      402 MOVE                             R35 R14
      403 NAMECALL                         R31 R31 K63 ["FillBall"]
      405 CALL                             R31 4 0
      406 JUMP                             ; [+13]
      407 GETUPVAL                         R31 4
      408 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      410 GETIMPORT                        R33 K56 [CFrame.new]
      412 MOVE                             R34 R26
      413 CALL                             R33 1 1
      414 MOVE                             R34 R17
      415 MOVE                             R35 R19
      416 MOVE                             R36 R14
      417 NAMECALL                         R31 R31 K65 ["FillCylinder"]
      419 CALL                             R31 5 0
      420 GETUPVAL                         R33 14
      421 GETTABLEKS                       R33 R33 K66 ["NormalizeBrushTimer"]
      423 MOVE                             R34 R29
      424 GETTABLEKS                       R35 R4 K13 ["Size"]
      426 GETTABLEKS                       R36 R4 K12 ["Height"]
      428 CALL                             R33 3 -1
      429 NAMECALL                         R31 R1 K67 ["addTimeStatistic"]
      431 CALL                             R31 -1 0
      432 GETUPVAL                         R31 8
      433 GETTABLEKS                       R31 R31 K37 ["Add"]
      435 JUMPIFNOTEQ                      R7 R31 ; [+497]
      437 NAMECALL                         R31 R1 K68 ["recordMaterialApplied"]
      439 CALL                             R31 1 0
      440 JUMP                             ; [+492]
      441 GETIMPORT                        R31 K70 [Region3.new]
      443 MOVE                             R32 R27
      444 MOVE                             R33 R28
      445 CALL                             R31 2 1
      446 GETTABLEKS                       R34 R28 K61 ["X"]
      448 GETTABLEKS                       R35 R27 K61 ["X"]
      450 SUB                              R33 R34 R35
      451 MULK                             R32 R33 K42 [0.5]
      452 SUB                              R34 R28 R27
      453 GETUPVAL                         R35 10
      454 GETTABLEKS                       R35 R35 K41 ["VoxelResolution"]
      456 DIV                              R33 R34 R35
      457 JUMPIFNOT                        R16 ; [+205]
      458 MOVE                             R36 R31
      459 NAMECALL                         R34 R16 K71 ["readRegion"]
      461 CALL                             R34 2 1
      462 GETUPVAL                         R35 10
      463 GETTABLEKS                       R35 R35 K41 ["VoxelResolution"]
      465 LOADB                            R36 0
      466 GETUPVAL                         R37 9
      467 GETTABLEKS                       R37 R37 K40 ["Sphere"]
      469 JUMPIFNOTEQ                      R8 R37 ; [+6]
      471 LOADN                            R37 2
      472 JUMPIFLT                         R37 R6 ; [+2]
      474 LOADB                            R36 0 +1
      475 LOADB                            R36 1
      476 GETUPVAL                         R38 9
      477 GETTABLEKS                       R38 R38 K60 ["Cylinder"]
      479 JUMPIFNOTEQ                      R8 R38 ; [+5]
      481 LOADB                            R37 1
      482 LOADN                            R38 2
      483 JUMPIFLT                         R38 R6 ; [+2]
      485 MOVE                             R37 R36
      486 GETTABLEKS                       R40 R27 K61 ["X"]
      488 MULK                             R41 R35 K42 [0.5]
      489 SUB                              R39 R40 R41
      490 GETTABLEKS                       R40 R26 K61 ["X"]
      492 SUB                              R38 R39 R40
      493 GETTABLEKS                       R41 R27 K72 ["Y"]
      495 MULK                             R42 R35 K42 [0.5]
      496 SUB                              R40 R41 R42
      497 GETTABLEKS                       R41 R26 K72 ["Y"]
      499 SUB                              R39 R40 R41
      500 GETTABLEKS                       R42 R27 K73 ["Z"]
      502 MULK                             R43 R35 K42 [0.5]
      503 SUB                              R41 R42 R43
      504 GETTABLEKS                       R42 R26 K73 ["Z"]
      506 SUB                              R40 R41 R42
      507 LOADNIL                          R41
      508 LOADNIL                          R42
      509 GETUPVAL                         R44 8
      510 GETTABLEKS                       R44 R44 K37 ["Add"]
      512 JUMPIFEQ                         R7 R44 ; [+2]
      514 LOADB                            R43 0 +1
      515 LOADB                            R43 1
      516 GETUPVAL                         R45 8
      517 GETTABLEKS                       R45 R45 K51 ["Subtract"]
      519 JUMPIFEQ                         R7 R45 ; [+2]
      521 LOADB                            R44 0 +1
      522 LOADB                            R44 1
      523 GETIMPORT                        R45 K50 [os.clock]
      525 CALL                             R45 0 1
      526 LOADN                            R48 1
      527 GETTABLEKS                       R46 R34 K74 ["sizeX"]
      529 LOADN                            R47 1
      530 FORNPREP                         R46
      531 JUMPIFNOT                        R37 ; [+4]
      532 MUL                              R50 R48 R35
      533 ADD                              R49 R50 R38
      534 POWK                             R41 R49 K44 [2]
      535 JUMP                             ; [+1]
      536 LOADNIL                          R41
      537 LOADN                            R51 1
      538 GETTABLEKS                       R49 R34 K75 ["sizeY"]
      540 LOADN                            R50 1
      541 FORNPREP                         R49
      542 JUMPIFNOT                        R36 ; [+5]
      543 MUL                              R54 R51 R35
      544 ADD                              R53 R54 R39
      545 POWK                             R52 R53 K44 [2]
      546 ADD                              R42 R41 R52
      547 JUMP                             ; [+1]
      548 LOADNIL                          R42
      549 LOADN                            R54 1
      550 GETTABLEKS                       R52 R34 K76 ["sizeZ"]
      552 LOADN                            R53 1
      553 FORNPREP                         R52
      554 MOVE                             R57 R48
      555 MOVE                             R58 R51
      556 MOVE                             R59 R54
      557 NAMECALL                         R55 R34 K77 ["getOccupancy"]
      559 CALL                             R55 4 1
      560 MOVE                             R58 R48
      561 MOVE                             R59 R51
      562 MOVE                             R60 R54
      563 NAMECALL                         R56 R34 K78 ["getMaterial"]
      565 CALL                             R56 4 1
      566 LOADN                            R57 1
      567 JUMPIFNOT                        R37 ; [+20]
      568 MUL                              R60 R54 R35
      569 ADD                              R59 R60 R40
      570 POWK                             R58 R59 K44 [2]
      571 JUMPIFNOT                        R36 ; [+6]
      572 ADD                              R60 R42 R58
      573 FASTCALL1                        MATH_SQRT R60 ; [+2]
      574 GETIMPORT                        R59 K81 [math.sqrt]
      576 CALL                             R59 1 1
      577 JUMP                             ; [+5]
      578 ADD                              R60 R41 R58
      579 FASTCALL1                        MATH_SQRT R60 ; [+2]
      580 GETIMPORT                        R59 K81 [math.sqrt]
      582 CALL                             R59 1 1
      583 GETUPVAL                         R60 15
      584 MOVE                             R61 R59
      585 MOVE                             R62 R32
      586 CALL                             R60 2 1
      587 MOVE                             R57 R60
      588 JUMPIFNOT                        R43 ; [+25]
      589 JUMPIFNOTLT                      R55 R57 ; [+24]
      591 JUMPIFNOT                        R13 ; [+12]
      592 GETUPVAL                         R59 16
      593 MOVE                             R60 R48
      594 MOVE                             R61 R51
      595 MOVE                             R62 R54
      596 GETTABLEKS                       R63 R34 K82 ["materials"]
      598 MOVE                             R64 R33
      599 GETTABLEKS                       R65 R16 K45 ["air"]
      601 CALL                             R59 6 1
      602 OR                               R58 R59 R56
      603 JUMP                             ; [+1]
      604 MOVE                             R58 R15
      605 MOVE                             R61 R48
      606 MOVE                             R62 R51
      607 MOVE                             R63 R54
      608 MOVE                             R64 R58
      609 MOVE                             R65 R57
      610 NAMECALL                         R59 R34 K83 ["setAdded"]
      612 CALL                             R59 6 0
      613 JUMP                             ; [+22]
      614 JUMPIFNOT                        R44 ; [+21]
      615 JUMPIFNOT                        R10 ; [+4]
      616 GETTABLEKS                       R58 R16 K84 ["water"]
      618 JUMPIFEQ                         R56 R58 ; [+17]
      620 GETUPVAL                         R58 10
      621 GETTABLEKS                       R58 R58 K85 ["MinimumOccupancy"]
      623 JUMPIFNOTLE                      R58 R57 ; [+12]
      625 MOVE                             R60 R48
      626 MOVE                             R61 R51
      627 MOVE                             R62 R54
      628 JUMPIFEQKN                       R57 K43 [1] ; [+2]
      630 LOADB                            R63 0 +1
      631 LOADB                            R63 1
      632 MOVE                             R64 R10
      633 NAMECALL                         R58 R34 K86 ["setSubtracted"]
      635 CALL                             R58 6 0
      636 FORNLOOP                         R52
      637 FORNLOOP                         R49
      638 FORNLOOP                         R46
      639 GETUPVAL                         R48 14
      640 GETTABLEKS                       R48 R48 K66 ["NormalizeBrushTimer"]
      642 MOVE                             R49 R45
      643 GETTABLEKS                       R50 R4 K13 ["Size"]
      645 GETTABLEKS                       R51 R4 K12 ["Height"]
      647 CALL                             R48 3 -1
      648 NAMECALL                         R46 R1 K67 ["addTimeStatistic"]
      650 CALL                             R46 -1 0
      651 MOVE                             R48 R31
      652 GETUPVAL                         R50 8
      653 GETTABLEKS                       R50 R50 K51 ["Subtract"]
      655 JUMPIFEQ                         R7 R50 ; [+2]
      657 LOADB                            R49 0 +1
      658 LOADB                            R49 1
      659 NAMECALL                         R46 R34 K87 ["write"]
      661 CALL                             R46 3 0
      662 JUMP                             ; [+262]
      663 GETUPVAL                         R34 4
      664 GETTABLEKS                       R34 R34 K36 ["Terrain"]
      666 MOVE                             R36 R31
      667 GETUPVAL                         R37 10
      668 GETTABLEKS                       R37 R37 K41 ["VoxelResolution"]
      670 NAMECALL                         R34 R34 K88 ["ReadVoxels"]
      672 CALL                             R34 3 2
      673 LOADNIL                          R36
      674 SETTABLEKS                       R36 R34 K13 ["Size"]
      676 LOADNIL                          R36
      677 SETTABLEKS                       R36 R35 K13 ["Size"]
      679 LENGTH                           R36 R34
      680 GETTABLEN                        R38 R34 1
      681 LENGTH                           R37 R38
      682 GETIMPORT                        R38 K91 [table.create]
      684 MOVE                             R39 R36
      685 CALL                             R38 1 1
      686 GETIMPORT                        R39 K91 [table.create]
      688 MOVE                             R40 R36
      689 CALL                             R39 1 1
      690 GETIMPORT                        R40 K91 [table.create]
      692 MOVE                             R41 R36
      693 CALL                             R40 1 1
      694 GETUPVAL                         R41 10
      695 GETTABLEKS                       R41 R41 K41 ["VoxelResolution"]
      697 LOADB                            R42 0
      698 GETUPVAL                         R43 9
      699 GETTABLEKS                       R43 R43 K40 ["Sphere"]
      701 JUMPIFNOTEQ                      R8 R43 ; [+6]
      703 LOADN                            R43 2
      704 JUMPIFLT                         R43 R6 ; [+2]
      706 LOADB                            R42 0 +1
      707 LOADB                            R42 1
      708 GETUPVAL                         R44 9
      709 GETTABLEKS                       R44 R44 K60 ["Cylinder"]
      711 JUMPIFNOTEQ                      R8 R44 ; [+5]
      713 LOADB                            R43 1
      714 LOADN                            R44 2
      715 JUMPIFLT                         R44 R6 ; [+2]
      717 MOVE                             R43 R42
      718 GETTABLEKS                       R46 R27 K61 ["X"]
      720 MULK                             R47 R41 K42 [0.5]
      721 SUB                              R45 R46 R47
      722 GETTABLEKS                       R46 R26 K61 ["X"]
      724 SUB                              R44 R45 R46
      725 GETTABLEKS                       R47 R27 K72 ["Y"]
      727 MULK                             R48 R41 K42 [0.5]
      728 SUB                              R46 R47 R48
      729 GETTABLEKS                       R47 R26 K72 ["Y"]
      731 SUB                              R45 R46 R47
      732 GETTABLEKS                       R48 R27 K73 ["Z"]
      734 MULK                             R49 R41 K42 [0.5]
      735 SUB                              R47 R48 R49
      736 GETTABLEKS                       R48 R26 K73 ["Z"]
      738 SUB                              R46 R47 R48
      739 LOADNIL                          R47
      740 LOADNIL                          R48
      741 GETUPVAL                         R50 8
      742 GETTABLEKS                       R50 R50 K37 ["Add"]
      744 JUMPIFEQ                         R7 R50 ; [+2]
      746 LOADB                            R49 0 +1
      747 LOADB                            R49 1
      748 GETUPVAL                         R51 8
      749 GETTABLEKS                       R51 R51 K51 ["Subtract"]
      751 JUMPIFEQ                         R7 R51 ; [+2]
      753 LOADB                            R50 0 +1
      754 LOADB                            R50 1
      755 GETIMPORT                        R51 K50 [os.clock]
      757 CALL                             R51 0 1
      758 MOVE                             R52 R35
      759 LOADNIL                          R53
      760 LOADNIL                          R54
      761 FORGPREP                         R52
      762 JUMPIFNOT                        R43 ; [+4]
      763 MUL                              R58 R55 R41
      764 ADD                              R57 R58 R44
      765 POWK                             R47 R57 K44 [2]
      766 JUMP                             ; [+1]
      767 LOADNIL                          R47
      768 GETTABLE                         R57 R34 R55
      769 GETIMPORT                        R58 K91 [table.create]
      771 MOVE                             R59 R37
      772 CALL                             R58 1 1
      773 GETIMPORT                        R59 K91 [table.create]
      775 MOVE                             R60 R37
      776 CALL                             R59 1 1
      777 GETIMPORT                        R60 K91 [table.create]
      779 MOVE                             R61 R37
      780 CALL                             R60 1 1
      781 SETTABLE                         R58 R38 R55
      782 SETTABLE                         R59 R39 R55
      783 SETTABLE                         R60 R40 R55
      784 MOVE                             R61 R56
      785 LOADNIL                          R62
      786 LOADNIL                          R63
      787 FORGPREP                         R61
      788 JUMPIFNOT                        R42 ; [+5]
      789 MUL                              R68 R64 R41
      790 ADD                              R67 R68 R45
      791 POWK                             R66 R67 K44 [2]
      792 ADD                              R48 R47 R66
      793 JUMP                             ; [+1]
      794 LOADNIL                          R48
      795 GETTABLE                         R66 R57 R64
      796 GETIMPORT                        R67 K93 [table.clone]
      798 MOVE                             R68 R66
      799 CALL                             R67 1 1
      800 GETIMPORT                        R68 K93 [table.clone]
      802 MOVE                             R69 R66
      803 CALL                             R68 1 1
      804 GETIMPORT                        R69 K93 [table.clone]
      806 MOVE                             R70 R65
      807 CALL                             R69 1 1
      808 SETTABLE                         R67 R58 R64
      809 SETTABLE                         R68 R59 R64
      810 SETTABLE                         R69 R60 R64
      811 MOVE                             R70 R65
      812 LOADNIL                          R71
      813 LOADNIL                          R72
      814 FORGPREP                         R70
      815 GETTABLE                         R75 R66 R73
      816 LOADN                            R76 1
      817 JUMPIFNOT                        R43 ; [+20]
      818 MUL                              R79 R73 R41
      819 ADD                              R78 R79 R46
      820 POWK                             R77 R78 K44 [2]
      821 JUMPIFNOT                        R42 ; [+6]
      822 ADD                              R79 R48 R77
      823 FASTCALL1                        MATH_SQRT R79 ; [+2]
      824 GETIMPORT                        R78 K81 [math.sqrt]
      826 CALL                             R78 1 1
      827 JUMP                             ; [+5]
      828 ADD                              R79 R47 R77
      829 FASTCALL1                        MATH_SQRT R79 ; [+2]
      830 GETIMPORT                        R78 K81 [math.sqrt]
      832 CALL                             R78 1 1
      833 GETUPVAL                         R79 15
      834 MOVE                             R80 R78
      835 MOVE                             R81 R32
      836 CALL                             R79 2 1
      837 MOVE                             R76 R79
      838 JUMPIFNOT                        R49 ; [+16]
      839 JUMPIFNOTLT                      R74 R76 ; [+15]
      841 SETTABLE                         R76 R65 R73
      842 JUMPIF                           R13 ; [+2]
      843 SETTABLE                         R75 R67 R73
      844 JUMP                             ; [+33]
      845 GETUPVAL                         R78 17
      846 MOVE                             R79 R55
      847 MOVE                             R80 R64
      848 MOVE                             R81 R73
      849 MOVE                             R82 R34
      850 MOVE                             R83 R33
      851 CALL                             R78 5 1
      852 OR                               R77 R78 R75
      853 SETTABLE                         R77 R67 R73
      854 JUMP                             ; [+23]
      855 JUMPIFNOT                        R50 ; [+22]
      856 JUMPIFNOT                        R10 ; [+4]
      857 GETIMPORT                        R77 K95 [Enum.Material.Water]
      859 JUMPIFEQ                         R75 R77 ; [+18]
      861 GETUPVAL                         R77 10
      862 GETTABLEKS                       R77 R77 K85 ["MinimumOccupancy"]
      864 JUMPIFNOTLE                      R77 R76 ; [+13]
      866 LOADN                            R77 0
      867 SETTABLE                         R77 R65 R73
      868 GETIMPORT                        R77 K29 [Enum.Material.Air]
      870 SETTABLE                         R77 R67 R73
      871 JUMPIFNOTEQKN                    R76 K43 [1] ; [+6]
      873 GETIMPORT                        R77 K29 [Enum.Material.Air]
      875 SETTABLE                         R77 R68 R73
      876 LOADN                            R77 0
      877 SETTABLE                         R77 R69 R73
      878 FORGLOOP                         R70 2 ; [-64]
      880 FORGLOOP                         R61 2 ; [-93]
      882 FORGLOOP                         R52 2 ; [-121]
      884 GETUPVAL                         R54 14
      885 GETTABLEKS                       R54 R54 K66 ["NormalizeBrushTimer"]
      887 MOVE                             R55 R51
      888 GETTABLEKS                       R56 R4 K13 ["Size"]
      890 GETTABLEKS                       R57 R4 K12 ["Height"]
      892 CALL                             R54 3 -1
      893 NAMECALL                         R52 R1 K67 ["addTimeStatistic"]
      895 CALL                             R52 -1 0
      896 GETUPVAL                         R52 8
      897 GETTABLEKS                       R52 R52 K51 ["Subtract"]
      899 JUMPIFNOTEQ                      R7 R52 ; [+13]
      901 GETUPVAL                         R52 4
      902 GETTABLEKS                       R52 R52 K36 ["Terrain"]
      904 MOVE                             R54 R31
      905 GETUPVAL                         R55 10
      906 GETTABLEKS                       R55 R55 K41 ["VoxelResolution"]
      908 MOVE                             R56 R39
      909 MOVE                             R57 R40
      910 NAMECALL                         R52 R52 K96 ["WriteVoxels"]
      912 CALL                             R52 5 0
      913 GETUPVAL                         R52 4
      914 GETTABLEKS                       R52 R52 K36 ["Terrain"]
      916 MOVE                             R54 R31
      917 GETUPVAL                         R55 10
      918 GETTABLEKS                       R55 R55 K41 ["VoxelResolution"]
      920 MOVE                             R56 R38
      921 MOVE                             R57 R35
      922 NAMECALL                         R52 R52 K96 ["WriteVoxels"]
      924 CALL                             R52 5 0
      925 GETUPVAL                         R34 8
      926 GETTABLEKS                       R34 R34 K37 ["Add"]
      928 JUMPIFNOTEQ                      R7 R34 ; [+4]
      930 NAMECALL                         R34 R1 K68 ["recordMaterialApplied"]
      932 CALL                             R34 1 0
      933 FORGLOOP                         R22 2 ; [-711]
      935 GETUPVAL                         R22 0
      936 GETTABLEKS                       R22 R22 K4 ["ProfileTools"]
      938 CALL                             R22 0 1
      939 JUMPIFNOT                        R22 ; [+3]
      940 GETIMPORT                        R22 K23 [debug.profileend]
      942 CALL                             R22 0 0
      943 LOADB                            R22 1
      944 LOADN                            R23 0
      945 RETURN                           R22 2

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to finish without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["ChangeHistoryService"]
       13 LOADK                            R5 K5 ["Draw"]
       14 NAMECALL                         R3 R3 K6 ["SetWaypoint"]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R2 K7 ["Smooth"]
       19 JUMPIFNOT                        R3 ; [+5]
       20 GETTABLEKS                       R3 R2 K7 ["Smooth"]
       22 NAMECALL                         R3 R3 K8 ["cancel"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          VAL R1
       27 GETUPVAL                         R5 17
       28 GETTABLEKS                       R5 R5 K1 ["new"]
       30 DUPTABLE                         R6 K8 [{["Budget"] = 0.005, ["Name"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       31 SETTABLEKS                       R0 R6 K4 ["Name"]
       33 SETTABLEKS                       R4 R6 K5 ["OnFinish"]
       35 SETTABLEKS                       R2 R6 K6 ["OnStart"]
       37 SETTABLEKS                       R3 R6 K7 ["OnStep"]
       39 CALL                             R5 1 -1
       40 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Util"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["AnalyticsHelper"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K11 ["Operations"]
       29 GETTABLEKS                       R5 R5 K12 ["BaseOperation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R2 K13 ["CalculateAutoMaterial"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R2 K14 ["CalculateAutoMaterialByIdentity"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R2 K15 ["CalculateBrushOccupancy"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R2 K16 ["ClampVoxelBoundaries"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R2 K17 ["ConvertForPivot"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R2 K18 ["getDraggedPositions"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K6 ["Src"]
       66 GETTABLEKS                       R12 R12 K9 ["Util"]
       68 GETTABLEKS                       R12 R12 K11 ["Operations"]
       70 GETTABLEKS                       R12 R12 K19 ["DrawMaterialBackend"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K6 ["Src"]
       77 GETTABLEKS                       R13 R13 K9 ["Util"]
       79 GETTABLEKS                       R13 R13 K11 ["Operations"]
       81 GETTABLEKS                       R13 R13 K20 ["SmoothOperation"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K21 ["Flags"]
       90 GETTABLEKS                       R14 R14 K22 ["getFFlagEnableTerrainPalette"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K23 ["Types"]
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R15 R14 K24 ["BrushMode"]
      102 GETTABLEKS                       R16 R14 K25 ["BrushShape"]
      104 GETTABLEKS                       R17 R14 K26 ["BrushSettings"]
      106 GETTABLEKS                       R18 R14 K27 ["Category"]
      108 GETTABLEKS                       R19 R14 K28 ["MaterialSettings"]
      110 GETIMPORT                        R20 K5 [require]
      112 GETTABLEKS                       R21 R0 K6 ["Src"]
      114 GETTABLEKS                       R21 R21 K9 ["Util"]
      116 GETTABLEKS                       R21 R21 K29 ["DebugFlags"]
      118 CALL                             R20 1 1
      119 DUPCLOSURE                       R21 K30 [PROTO_3]
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R4
      138 RETURN                           R21 1
