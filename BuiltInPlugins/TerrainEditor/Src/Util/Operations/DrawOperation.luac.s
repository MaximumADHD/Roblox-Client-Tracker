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
      131 GETUPVAL                         R17 6
      132 GETTABLEKS                       R17 R17 K34 ["Sphere"]
      134 JUMPIFNOTEQ                      R8 R17 ; [+3]
      136 MOVE                             R16 R6
      137 JUMP                             ; [+1]
      138 MOVE                             R16 R5
      139 GETUPVAL                         R17 7
      140 GETTABLEKS                       R17 R17 K35 ["VoxelResolution"]
      142 MUL                              R15 R16 R17
      143 GETUPVAL                         R17 7
      144 GETTABLEKS                       R17 R17 K35 ["VoxelResolution"]
      146 MUL                              R16 R6 R17
      147 MULK                             R17 R16 K36 [0.5]
      148 GETUPVAL                         R18 8
      149 GETTABLEKS                       R18 R18 K37 ["Add"]
      151 JUMPIFNOTEQ                      R7 R18 ; [+6]
      153 SUBK                             R6 R6 K38 [1]
      154 SUBK                             R15 R15 K39 [2]
      155 SUBK                             R16 R16 K39 [2]
      156 SUBK                             R17 R17 K38 [1]
      157 JUMP                             ; [+2]
      158 GETIMPORT                        R14 K29 [Enum.Material.Air]
      160 GETUPVAL                         R18 9
      161 GETUPVAL                         R20 2
      162 GETTABLEKS                       R20 R20 K40 ["PivotPosition"]
      164 GETTABLE                         R19 R3 R20
      165 GETTABLEKS                       R20 R9 K25 ["Position"]
      167 MOVE                             R21 R15
      168 CALL                             R18 3 1
      169 GETUPVAL                         R19 10
      170 GETTABLEKS                       R20 R2 K25 ["Position"]
      172 MOVE                             R21 R18
      173 MOVE                             R22 R17
      174 CALL                             R19 3 1
      175 LENGTH                           R21 R19
      176 GETTABLE                         R20 R19 R21
      177 SETTABLEKS                       R20 R2 K25 ["Position"]
      179 MOVE                             R20 R19
      180 LOADNIL                          R21
      181 LOADNIL                          R22
      182 FORGPREP                         R20
      183 GETTABLEKS                       R25 R2 K41 ["LastPosition"]
      185 JUMPIFNOTEQ                      R24 R25 ; [+16]
      187 JUMPIF                           R13 ; [+14]
      188 NAMECALL                         R25 R1 K30 ["skipBudget"]
      190 CALL                             R25 1 0
      191 GETUPVAL                         R25 0
      192 GETTABLEKS                       R25 R25 K4 ["ProfileTools"]
      194 CALL                             R25 0 1
      195 JUMPIFNOT                        R25 ; [+3]
      196 GETIMPORT                        R25 K23 [debug.profileend]
      198 CALL                             R25 0 0
      199 LOADB                            R25 1
      200 LOADN                            R26 0
      201 RETURN                           R25 2
      202 SETTABLEKS                       R24 R2 K41 ["LastPosition"]
      204 GETUPVAL                         R25 11
      205 MOVE                             R26 R24
      206 MOVE                             R27 R17
      207 MOVE                             R28 R15
      208 CALL                             R25 3 2
      209 GETIMPORT                        R27 K44 [os.clock]
      211 CALL                             R27 0 1
      212 GETUPVAL                         R29 8
      213 GETTABLEKS                       R29 R29 K37 ["Add"]
      215 JUMPIFEQ                         R7 R29 ; [+9]
      217 LOADB                            R28 0
      218 GETUPVAL                         R29 8
      219 GETTABLEKS                       R29 R29 K45 ["Subtract"]
      221 JUMPIFNOTEQ                      R7 R29 ; [+4]
      223 NOT                              R28 R10
      224 JUMPIFNOT                        R28 ; [+1]
      225 NOT                              R28 R13
      226 JUMPIFNOT                        R28 ; [+91]
      227 GETUPVAL                         R29 6
      228 GETTABLEKS                       R29 R29 K34 ["Sphere"]
      230 JUMPIFNOTEQ                      R8 R29 ; [+11]
      232 GETUPVAL                         R29 4
      233 GETTABLEKS                       R29 R29 K46 ["Terrain"]
      235 MOVE                             R31 R24
      236 MOVE                             R32 R17
      237 MOVE                             R33 R14
      238 NAMECALL                         R29 R29 K47 ["FillBall"]
      240 CALL                             R29 4 0
      241 JUMP                             ; [+63]
      242 GETUPVAL                         R29 6
      243 GETTABLEKS                       R29 R29 K48 ["Cube"]
      245 JUMPIFNOTEQ                      R8 R29 ; [+21]
      247 GETUPVAL                         R29 4
      248 GETTABLEKS                       R29 R29 K46 ["Terrain"]
      250 GETIMPORT                        R31 K51 [CFrame.new]
      252 MOVE                             R32 R24
      253 CALL                             R31 1 1
      254 FASTCALL3                        VECTOR R16 R15 R16
      256 MOVE                             R33 R16
      257 MOVE                             R34 R15
      258 MOVE                             R35 R16
      259 GETIMPORT                        R32 K53 [Vector3.new]
      261 CALL                             R32 3 1
      262 MOVE                             R33 R14
      263 NAMECALL                         R29 R29 K54 ["FillBlock"]
      265 CALL                             R29 4 0
      266 JUMP                             ; [+38]
      267 GETUPVAL                         R29 6
      268 GETTABLEKS                       R29 R29 K55 ["Cylinder"]
      270 JUMPIFNOTEQ                      R8 R29 ; [+34]
      272 SUB                              R29 R26 R25
      273 GETTABLEKS                       R29 R29 K56 ["X"]
      275 LOADN                            R31 2
      276 GETUPVAL                         R32 7
      277 GETTABLEKS                       R32 R32 K35 ["VoxelResolution"]
      279 MUL                              R30 R31 R32
      280 JUMPIFNOTLE                      R29 R30 ; [+11]
      282 GETUPVAL                         R29 4
      283 GETTABLEKS                       R29 R29 K46 ["Terrain"]
      285 MOVE                             R31 R24
      286 MOVE                             R32 R17
      287 MOVE                             R33 R14
      288 NAMECALL                         R29 R29 K47 ["FillBall"]
      290 CALL                             R29 4 0
      291 JUMP                             ; [+13]
      292 GETUPVAL                         R29 4
      293 GETTABLEKS                       R29 R29 K46 ["Terrain"]
      295 GETIMPORT                        R31 K51 [CFrame.new]
      297 MOVE                             R32 R24
      298 CALL                             R31 1 1
      299 MOVE                             R32 R15
      300 MOVE                             R33 R17
      301 MOVE                             R34 R14
      302 NAMECALL                         R29 R29 K57 ["FillCylinder"]
      304 CALL                             R29 5 0
      305 GETUPVAL                         R31 12
      306 GETTABLEKS                       R31 R31 K58 ["NormalizeBrushTimer"]
      308 MOVE                             R32 R27
      309 GETTABLEKS                       R33 R4 K13 ["Size"]
      311 GETTABLEKS                       R34 R4 K12 ["Height"]
      313 CALL                             R31 3 -1
      314 NAMECALL                         R29 R1 K59 ["addTimeStatistic"]
      316 CALL                             R29 -1 0
      317 JUMP                             ; [+281]
      318 GETIMPORT                        R29 K61 [Region3.new]
      320 MOVE                             R30 R25
      321 MOVE                             R31 R26
      322 CALL                             R29 2 1
      323 GETTABLEKS                       R32 R26 K56 ["X"]
      325 GETTABLEKS                       R33 R25 K56 ["X"]
      327 SUB                              R31 R32 R33
      328 MULK                             R30 R31 K36 [0.5]
      329 SUB                              R32 R26 R25
      330 GETUPVAL                         R33 7
      331 GETTABLEKS                       R33 R33 K35 ["VoxelResolution"]
      333 DIV                              R31 R32 R33
      334 GETUPVAL                         R32 4
      335 GETTABLEKS                       R32 R32 K46 ["Terrain"]
      337 MOVE                             R34 R29
      338 GETUPVAL                         R35 7
      339 GETTABLEKS                       R35 R35 K35 ["VoxelResolution"]
      341 NAMECALL                         R32 R32 K62 ["ReadVoxels"]
      343 CALL                             R32 3 2
      344 LOADNIL                          R34
      345 SETTABLEKS                       R34 R32 K13 ["Size"]
      347 LOADNIL                          R34
      348 SETTABLEKS                       R34 R33 K13 ["Size"]
      350 LENGTH                           R34 R32
      351 GETTABLEN                        R36 R32 1
      352 LENGTH                           R35 R36
      353 GETTABLEN                        R38 R32 1
      354 GETTABLEN                        R37 R38 1
      355 LENGTH                           R36 R37
      356 GETIMPORT                        R37 K65 [table.create]
      358 MOVE                             R38 R34
      359 CALL                             R37 1 1
      360 GETIMPORT                        R38 K65 [table.create]
      362 MOVE                             R39 R34
      363 CALL                             R38 1 1
      364 GETIMPORT                        R39 K65 [table.create]
      366 MOVE                             R40 R34
      367 CALL                             R39 1 1
      368 GETUPVAL                         R40 7
      369 GETTABLEKS                       R40 R40 K35 ["VoxelResolution"]
      371 LOADB                            R41 0
      372 GETUPVAL                         R42 6
      373 GETTABLEKS                       R42 R42 K34 ["Sphere"]
      375 JUMPIFNOTEQ                      R8 R42 ; [+6]
      377 LOADN                            R42 2
      378 JUMPIFLT                         R42 R6 ; [+2]
      380 LOADB                            R41 0 +1
      381 LOADB                            R41 1
      382 GETUPVAL                         R43 6
      383 GETTABLEKS                       R43 R43 K55 ["Cylinder"]
      385 JUMPIFNOTEQ                      R8 R43 ; [+5]
      387 LOADB                            R42 1
      388 LOADN                            R43 2
      389 JUMPIFLT                         R43 R6 ; [+2]
      391 MOVE                             R42 R41
      392 GETTABLEKS                       R45 R25 K56 ["X"]
      394 MULK                             R46 R40 K36 [0.5]
      395 SUB                              R44 R45 R46
      396 GETTABLEKS                       R45 R24 K56 ["X"]
      398 SUB                              R43 R44 R45
      399 GETTABLEKS                       R46 R25 K66 ["Y"]
      401 MULK                             R47 R40 K36 [0.5]
      402 SUB                              R45 R46 R47
      403 GETTABLEKS                       R46 R24 K66 ["Y"]
      405 SUB                              R44 R45 R46
      406 GETTABLEKS                       R47 R25 K67 ["Z"]
      408 MULK                             R48 R40 K36 [0.5]
      409 SUB                              R46 R47 R48
      410 GETTABLEKS                       R47 R24 K67 ["Z"]
      412 SUB                              R45 R46 R47
      413 LOADNIL                          R46
      414 LOADNIL                          R47
      415 GETUPVAL                         R49 8
      416 GETTABLEKS                       R49 R49 K37 ["Add"]
      418 JUMPIFEQ                         R7 R49 ; [+2]
      420 LOADB                            R48 0 +1
      421 LOADB                            R48 1
      422 GETUPVAL                         R50 8
      423 GETTABLEKS                       R50 R50 K45 ["Subtract"]
      425 JUMPIFEQ                         R7 R50 ; [+2]
      427 LOADB                            R49 0 +1
      428 LOADB                            R49 1
      429 GETIMPORT                        R50 K44 [os.clock]
      431 CALL                             R50 0 1
      432 MOVE                             R51 R33
      433 LOADNIL                          R52
      434 LOADNIL                          R53
      435 FORGPREP                         R51
      436 JUMPIFNOT                        R42 ; [+4]
      437 MUL                              R57 R54 R40
      438 ADD                              R56 R57 R43
      439 POWK                             R46 R56 K39 [2]
      440 JUMP                             ; [+1]
      441 LOADNIL                          R46
      442 GETTABLE                         R56 R32 R54
      443 GETIMPORT                        R57 K65 [table.create]
      445 MOVE                             R58 R35
      446 CALL                             R57 1 1
      447 GETIMPORT                        R58 K65 [table.create]
      449 MOVE                             R59 R35
      450 CALL                             R58 1 1
      451 GETIMPORT                        R59 K65 [table.create]
      453 MOVE                             R60 R35
      454 CALL                             R59 1 1
      455 SETTABLE                         R57 R37 R54
      456 SETTABLE                         R58 R38 R54
      457 SETTABLE                         R59 R39 R54
      458 MOVE                             R60 R55
      459 LOADNIL                          R61
      460 LOADNIL                          R62
      461 FORGPREP                         R60
      462 JUMPIFNOT                        R41 ; [+5]
      463 MUL                              R67 R63 R40
      464 ADD                              R66 R67 R44
      465 POWK                             R65 R66 K39 [2]
      466 ADD                              R47 R46 R65
      467 JUMP                             ; [+1]
      468 LOADNIL                          R47
      469 GETTABLE                         R65 R56 R63
      470 GETIMPORT                        R66 K69 [table.clone]
      472 MOVE                             R67 R65
      473 CALL                             R66 1 1
      474 GETIMPORT                        R67 K69 [table.clone]
      476 MOVE                             R68 R65
      477 CALL                             R67 1 1
      478 GETIMPORT                        R68 K69 [table.clone]
      480 MOVE                             R69 R64
      481 CALL                             R68 1 1
      482 SETTABLE                         R66 R57 R63
      483 SETTABLE                         R67 R58 R63
      484 SETTABLE                         R68 R59 R63
      485 MOVE                             R69 R64
      486 LOADNIL                          R70
      487 LOADNIL                          R71
      488 FORGPREP                         R69
      489 GETTABLE                         R74 R65 R72
      490 LOADN                            R75 1
      491 JUMPIFNOT                        R42 ; [+20]
      492 MUL                              R78 R72 R40
      493 ADD                              R77 R78 R45
      494 POWK                             R76 R77 K39 [2]
      495 JUMPIFNOT                        R41 ; [+6]
      496 ADD                              R78 R47 R76
      497 FASTCALL1                        MATH_SQRT R78 ; [+2]
      498 GETIMPORT                        R77 K72 [math.sqrt]
      500 CALL                             R77 1 1
      501 JUMP                             ; [+5]
      502 ADD                              R78 R46 R76
      503 FASTCALL1                        MATH_SQRT R78 ; [+2]
      504 GETIMPORT                        R77 K72 [math.sqrt]
      506 CALL                             R77 1 1
      507 GETUPVAL                         R78 13
      508 MOVE                             R79 R77
      509 MOVE                             R80 R30
      510 CALL                             R78 2 1
      511 MOVE                             R75 R78
      512 JUMPIFNOT                        R48 ; [+16]
      513 JUMPIFNOTLT                      R73 R75 ; [+15]
      515 SETTABLE                         R75 R64 R72
      516 JUMPIF                           R13 ; [+2]
      517 SETTABLE                         R74 R66 R72
      518 JUMP                             ; [+33]
      519 GETUPVAL                         R77 14
      520 MOVE                             R78 R54
      521 MOVE                             R79 R63
      522 MOVE                             R80 R72
      523 MOVE                             R81 R32
      524 MOVE                             R82 R31
      525 CALL                             R77 5 1
      526 OR                               R76 R77 R74
      527 SETTABLE                         R76 R66 R72
      528 JUMP                             ; [+23]
      529 JUMPIFNOT                        R49 ; [+22]
      530 JUMPIFNOT                        R10 ; [+4]
      531 GETIMPORT                        R76 K74 [Enum.Material.Water]
      533 JUMPIFEQ                         R74 R76 ; [+18]
      535 GETUPVAL                         R76 7
      536 GETTABLEKS                       R76 R76 K75 ["MinimumOccupancy"]
      538 JUMPIFNOTLE                      R76 R75 ; [+13]
      540 LOADN                            R76 0
      541 SETTABLE                         R76 R64 R72
      542 GETIMPORT                        R76 K29 [Enum.Material.Air]
      544 SETTABLE                         R76 R66 R72
      545 JUMPIFNOTEQKN                    R75 K38 [1] ; [+6]
      547 GETIMPORT                        R76 K29 [Enum.Material.Air]
      549 SETTABLE                         R76 R67 R72
      550 LOADN                            R76 0
      551 SETTABLE                         R76 R68 R72
      552 FORGLOOP                         R69 2 ; [-64]
      554 FORGLOOP                         R60 2 ; [-93]
      556 FORGLOOP                         R51 2 ; [-121]
      558 GETUPVAL                         R53 12
      559 GETTABLEKS                       R53 R53 K58 ["NormalizeBrushTimer"]
      561 MOVE                             R54 R50
      562 GETTABLEKS                       R55 R4 K13 ["Size"]
      564 GETTABLEKS                       R56 R4 K12 ["Height"]
      566 CALL                             R53 3 -1
      567 NAMECALL                         R51 R1 K59 ["addTimeStatistic"]
      569 CALL                             R51 -1 0
      570 GETUPVAL                         R51 8
      571 GETTABLEKS                       R51 R51 K45 ["Subtract"]
      573 JUMPIFNOTEQ                      R7 R51 ; [+13]
      575 GETUPVAL                         R51 4
      576 GETTABLEKS                       R51 R51 K46 ["Terrain"]
      578 MOVE                             R53 R29
      579 GETUPVAL                         R54 7
      580 GETTABLEKS                       R54 R54 K35 ["VoxelResolution"]
      582 MOVE                             R55 R38
      583 MOVE                             R56 R39
      584 NAMECALL                         R51 R51 K76 ["WriteVoxels"]
      586 CALL                             R51 5 0
      587 GETUPVAL                         R51 4
      588 GETTABLEKS                       R51 R51 K46 ["Terrain"]
      590 MOVE                             R53 R29
      591 GETUPVAL                         R54 7
      592 GETTABLEKS                       R54 R54 K35 ["VoxelResolution"]
      594 MOVE                             R55 R37
      595 MOVE                             R56 R33
      596 NAMECALL                         R51 R51 K76 ["WriteVoxels"]
      598 CALL                             R51 5 0
      599 FORGLOOP                         R20 2 ; [-417]
      601 GETUPVAL                         R20 0
      602 GETTABLEKS                       R20 R20 K4 ["ProfileTools"]
      604 CALL                             R20 0 1
      605 JUMPIFNOT                        R20 ; [+3]
      606 GETIMPORT                        R20 K23 [debug.profileend]
      608 CALL                             R20 0 0
      609 LOADB                            R20 1
      610 LOADN                            R21 0
      611 RETURN                           R20 2

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
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          VAL R1
       24 GETUPVAL                         R5 14
       25 GETTABLEKS                       R5 R5 K1 ["new"]
       27 DUPTABLE                         R6 K8 [{["Budget"] = 0.005, ["Name"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       28 SETTABLEKS                       R0 R6 K4 ["Name"]
       30 SETTABLEKS                       R4 R6 K5 ["OnFinish"]
       32 SETTABLEKS                       R2 R6 K6 ["OnStart"]
       34 SETTABLEKS                       R3 R6 K7 ["OnStep"]
       36 CALL                             R5 1 -1
       37 RETURN                           R5 -1

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
       39 GETTABLEKS                       R7 R2 K14 ["CalculateBrushOccupancy"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R2 K15 ["ClampVoxelBoundaries"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R2 K16 ["ConvertForPivot"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R2 K17 ["getDraggedPositions"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Src"]
       61 GETTABLEKS                       R11 R11 K9 ["Util"]
       63 GETTABLEKS                       R11 R11 K11 ["Operations"]
       65 GETTABLEKS                       R11 R11 K18 ["SmoothOperation"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K6 ["Src"]
       72 GETTABLEKS                       R12 R12 K19 ["Types"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R12 R11 K20 ["BrushMode"]
       77 GETTABLEKS                       R13 R11 K21 ["BrushShape"]
       79 GETTABLEKS                       R14 R11 K22 ["BrushSettings"]
       81 GETTABLEKS                       R15 R11 K23 ["Category"]
       83 GETTABLEKS                       R16 R11 K24 ["MaterialSettings"]
       85 GETIMPORT                        R17 K5 [require]
       87 GETTABLEKS                       R18 R0 K6 ["Src"]
       89 GETTABLEKS                       R18 R18 K9 ["Util"]
       91 GETTABLEKS                       R18 R18 K25 ["DebugFlags"]
       93 CALL                             R17 1 1
       94 DUPCLOSURE                       R18 K26 [PROTO_3]
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 RETURN                           R18 1
