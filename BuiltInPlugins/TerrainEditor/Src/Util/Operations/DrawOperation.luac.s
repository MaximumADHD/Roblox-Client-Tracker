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
      147 JUMPIFNOT                        R16 ; [+17]
      148 GETUPVAL                         R17 8
      149 GETTABLEKS                       R17 R17 K37 ["Add"]
      151 JUMPIFNOTEQ                      R7 R17 ; [+13]
      153 JUMPIF                           R13 ; [+11]
      154 MOVE                             R19 R15
      155 NAMECALL                         R17 R16 K38 ["isMaterialValid"]
      157 CALL                             R17 2 1
      158 JUMPIF                           R17 ; [+6]
      159 NAMECALL                         R17 R1 K30 ["skipBudget"]
      161 CALL                             R17 1 0
      162 LOADB                            R17 1
      163 LOADN                            R18 0
      164 RETURN                           R17 2
      165 GETUPVAL                         R19 9
      166 GETTABLEKS                       R19 R19 K39 ["Sphere"]
      168 JUMPIFNOTEQ                      R8 R19 ; [+3]
      170 MOVE                             R18 R6
      171 JUMP                             ; [+1]
      172 MOVE                             R18 R5
      173 GETUPVAL                         R19 10
      174 GETTABLEKS                       R19 R19 K40 ["VoxelResolution"]
      176 MUL                              R17 R18 R19
      177 GETUPVAL                         R19 10
      178 GETTABLEKS                       R19 R19 K40 ["VoxelResolution"]
      180 MUL                              R18 R6 R19
      181 MULK                             R19 R18 K41 [0.5]
      182 GETUPVAL                         R20 8
      183 GETTABLEKS                       R20 R20 K37 ["Add"]
      185 JUMPIFNOTEQ                      R7 R20 ; [+6]
      187 SUBK                             R6 R6 K42 [1]
      188 SUBK                             R17 R17 K43 [2]
      189 SUBK                             R18 R18 K43 [2]
      190 SUBK                             R19 R19 K42 [1]
      191 JUMP                             ; [+5]
      192 GETIMPORT                        R14 K29 [Enum.Material.Air]
      194 JUMPIFNOT                        R16 ; [+2]
      195 GETTABLEKS                       R15 R16 K44 ["air"]
      197 GETUPVAL                         R20 11
      198 GETUPVAL                         R22 2
      199 GETTABLEKS                       R22 R22 K45 ["PivotPosition"]
      201 GETTABLE                         R21 R3 R22
      202 GETTABLEKS                       R22 R9 K25 ["Position"]
      204 MOVE                             R23 R17
      205 CALL                             R20 3 1
      206 GETUPVAL                         R21 12
      207 GETTABLEKS                       R22 R2 K25 ["Position"]
      209 MOVE                             R23 R20
      210 MOVE                             R24 R19
      211 CALL                             R21 3 1
      212 LENGTH                           R23 R21
      213 GETTABLE                         R22 R21 R23
      214 SETTABLEKS                       R22 R2 K25 ["Position"]
      216 MOVE                             R22 R21
      217 LOADNIL                          R23
      218 LOADNIL                          R24
      219 FORGPREP                         R22
      220 GETTABLEKS                       R27 R2 K46 ["LastPosition"]
      222 JUMPIFNOTEQ                      R26 R27 ; [+16]
      224 JUMPIF                           R13 ; [+14]
      225 NAMECALL                         R27 R1 K30 ["skipBudget"]
      227 CALL                             R27 1 0
      228 GETUPVAL                         R27 0
      229 GETTABLEKS                       R27 R27 K4 ["ProfileTools"]
      231 CALL                             R27 0 1
      232 JUMPIFNOT                        R27 ; [+3]
      233 GETIMPORT                        R27 K23 [debug.profileend]
      235 CALL                             R27 0 0
      236 LOADB                            R27 1
      237 LOADN                            R28 0
      238 RETURN                           R27 2
      239 SETTABLEKS                       R26 R2 K46 ["LastPosition"]
      241 GETUPVAL                         R27 13
      242 MOVE                             R28 R26
      243 MOVE                             R29 R19
      244 MOVE                             R30 R17
      245 CALL                             R27 3 2
      246 GETIMPORT                        R29 K49 [os.clock]
      248 CALL                             R29 0 1
      249 GETUPVAL                         R31 8
      250 GETTABLEKS                       R31 R31 K37 ["Add"]
      252 JUMPIFEQ                         R7 R31 ; [+9]
      254 LOADB                            R30 0
      255 GETUPVAL                         R31 8
      256 GETTABLEKS                       R31 R31 K50 ["Subtract"]
      258 JUMPIFNOTEQ                      R7 R31 ; [+11]
      260 NOT                              R30 R10
      261 JUMPIFNOT                        R30 ; [+8]
      262 NOT                              R30 R13
      263 JUMPIFNOT                        R30 ; [+6]
      264 NOT                              R30 R16
      265 JUMPIF                           R30 ; [+4]
      266 MOVE                             R32 R15
      267 NAMECALL                         R30 R16 K51 ["canUseGeometricFill"]
      269 CALL                             R30 2 1
      270 JUMPIFNOT                        R30 ; [+159]
      271 JUMPIFNOT                        R16 ; [+67]
      272 GETUPVAL                         R31 9
      273 GETTABLEKS                       R31 R31 K39 ["Sphere"]
      275 JUMPIFNOTEQ                      R8 R31 ; [+8]
      277 MOVE                             R33 R26
      278 MOVE                             R34 R19
      279 MOVE                             R35 R15
      280 NAMECALL                         R31 R16 K52 ["fillBall"]
      282 CALL                             R31 4 0
      283 JUMP                             ; [+133]
      284 GETUPVAL                         R31 9
      285 GETTABLEKS                       R31 R31 K53 ["Cube"]
      287 JUMPIFNOTEQ                      R8 R31 ; [+18]
      289 GETIMPORT                        R33 K55 [CFrame.new]
      291 MOVE                             R34 R26
      292 CALL                             R33 1 1
      293 FASTCALL3                        VECTOR R18 R17 R18
      295 MOVE                             R35 R18
      296 MOVE                             R36 R17
      297 MOVE                             R37 R18
      298 GETIMPORT                        R34 K57 [Vector3.new]
      300 CALL                             R34 3 1
      301 MOVE                             R35 R15
      302 NAMECALL                         R31 R16 K58 ["fillBlock"]
      304 CALL                             R31 4 0
      305 JUMP                             ; [+111]
      306 GETUPVAL                         R31 9
      307 GETTABLEKS                       R31 R31 K59 ["Cylinder"]
      309 JUMPIFNOTEQ                      R8 R31 ; [+107]
      311 SUB                              R31 R28 R27
      312 GETTABLEKS                       R31 R31 K60 ["X"]
      314 LOADN                            R33 2
      315 GETUPVAL                         R34 10
      316 GETTABLEKS                       R34 R34 K40 ["VoxelResolution"]
      318 MUL                              R32 R33 R34
      319 JUMPIFNOTLE                      R31 R32 ; [+8]
      321 MOVE                             R33 R26
      322 MOVE                             R34 R19
      323 MOVE                             R35 R15
      324 NAMECALL                         R31 R16 K52 ["fillBall"]
      326 CALL                             R31 4 0
      327 JUMP                             ; [+89]
      328 GETIMPORT                        R33 K55 [CFrame.new]
      330 MOVE                             R34 R26
      331 CALL                             R33 1 1
      332 MOVE                             R34 R17
      333 MOVE                             R35 R19
      334 MOVE                             R36 R15
      335 NAMECALL                         R31 R16 K61 ["fillCylinder"]
      337 CALL                             R31 5 0
      338 JUMP                             ; [+78]
      339 GETUPVAL                         R31 9
      340 GETTABLEKS                       R31 R31 K39 ["Sphere"]
      342 JUMPIFNOTEQ                      R8 R31 ; [+11]
      344 GETUPVAL                         R31 4
      345 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      347 MOVE                             R33 R26
      348 MOVE                             R34 R19
      349 MOVE                             R35 R14
      350 NAMECALL                         R31 R31 K62 ["FillBall"]
      352 CALL                             R31 4 0
      353 JUMP                             ; [+63]
      354 GETUPVAL                         R31 9
      355 GETTABLEKS                       R31 R31 K53 ["Cube"]
      357 JUMPIFNOTEQ                      R8 R31 ; [+21]
      359 GETUPVAL                         R31 4
      360 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      362 GETIMPORT                        R33 K55 [CFrame.new]
      364 MOVE                             R34 R26
      365 CALL                             R33 1 1
      366 FASTCALL3                        VECTOR R18 R17 R18
      368 MOVE                             R35 R18
      369 MOVE                             R36 R17
      370 MOVE                             R37 R18
      371 GETIMPORT                        R34 K57 [Vector3.new]
      373 CALL                             R34 3 1
      374 MOVE                             R35 R14
      375 NAMECALL                         R31 R31 K63 ["FillBlock"]
      377 CALL                             R31 4 0
      378 JUMP                             ; [+38]
      379 GETUPVAL                         R31 9
      380 GETTABLEKS                       R31 R31 K59 ["Cylinder"]
      382 JUMPIFNOTEQ                      R8 R31 ; [+34]
      384 SUB                              R31 R28 R27
      385 GETTABLEKS                       R31 R31 K60 ["X"]
      387 LOADN                            R33 2
      388 GETUPVAL                         R34 10
      389 GETTABLEKS                       R34 R34 K40 ["VoxelResolution"]
      391 MUL                              R32 R33 R34
      392 JUMPIFNOTLE                      R31 R32 ; [+11]
      394 GETUPVAL                         R31 4
      395 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      397 MOVE                             R33 R26
      398 MOVE                             R34 R19
      399 MOVE                             R35 R14
      400 NAMECALL                         R31 R31 K62 ["FillBall"]
      402 CALL                             R31 4 0
      403 JUMP                             ; [+13]
      404 GETUPVAL                         R31 4
      405 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      407 GETIMPORT                        R33 K55 [CFrame.new]
      409 MOVE                             R34 R26
      410 CALL                             R33 1 1
      411 MOVE                             R34 R17
      412 MOVE                             R35 R19
      413 MOVE                             R36 R14
      414 NAMECALL                         R31 R31 K64 ["FillCylinder"]
      416 CALL                             R31 5 0
      417 GETUPVAL                         R33 14
      418 GETTABLEKS                       R33 R33 K65 ["NormalizeBrushTimer"]
      420 MOVE                             R34 R29
      421 GETTABLEKS                       R35 R4 K13 ["Size"]
      423 GETTABLEKS                       R36 R4 K12 ["Height"]
      425 CALL                             R33 3 -1
      426 NAMECALL                         R31 R1 K66 ["addTimeStatistic"]
      428 CALL                             R31 -1 0
      429 JUMP                             ; [+484]
      430 GETIMPORT                        R31 K68 [Region3.new]
      432 MOVE                             R32 R27
      433 MOVE                             R33 R28
      434 CALL                             R31 2 1
      435 GETTABLEKS                       R34 R28 K60 ["X"]
      437 GETTABLEKS                       R35 R27 K60 ["X"]
      439 SUB                              R33 R34 R35
      440 MULK                             R32 R33 K41 [0.5]
      441 SUB                              R34 R28 R27
      442 GETUPVAL                         R35 10
      443 GETTABLEKS                       R35 R35 K40 ["VoxelResolution"]
      445 DIV                              R33 R34 R35
      446 JUMPIFNOT                        R16 ; [+205]
      447 MOVE                             R36 R31
      448 NAMECALL                         R34 R16 K69 ["readRegion"]
      450 CALL                             R34 2 1
      451 GETUPVAL                         R35 10
      452 GETTABLEKS                       R35 R35 K40 ["VoxelResolution"]
      454 LOADB                            R36 0
      455 GETUPVAL                         R37 9
      456 GETTABLEKS                       R37 R37 K39 ["Sphere"]
      458 JUMPIFNOTEQ                      R8 R37 ; [+6]
      460 LOADN                            R37 2
      461 JUMPIFLT                         R37 R6 ; [+2]
      463 LOADB                            R36 0 +1
      464 LOADB                            R36 1
      465 GETUPVAL                         R38 9
      466 GETTABLEKS                       R38 R38 K59 ["Cylinder"]
      468 JUMPIFNOTEQ                      R8 R38 ; [+5]
      470 LOADB                            R37 1
      471 LOADN                            R38 2
      472 JUMPIFLT                         R38 R6 ; [+2]
      474 MOVE                             R37 R36
      475 GETTABLEKS                       R40 R27 K60 ["X"]
      477 MULK                             R41 R35 K41 [0.5]
      478 SUB                              R39 R40 R41
      479 GETTABLEKS                       R40 R26 K60 ["X"]
      481 SUB                              R38 R39 R40
      482 GETTABLEKS                       R41 R27 K70 ["Y"]
      484 MULK                             R42 R35 K41 [0.5]
      485 SUB                              R40 R41 R42
      486 GETTABLEKS                       R41 R26 K70 ["Y"]
      488 SUB                              R39 R40 R41
      489 GETTABLEKS                       R42 R27 K71 ["Z"]
      491 MULK                             R43 R35 K41 [0.5]
      492 SUB                              R41 R42 R43
      493 GETTABLEKS                       R42 R26 K71 ["Z"]
      495 SUB                              R40 R41 R42
      496 LOADNIL                          R41
      497 LOADNIL                          R42
      498 GETUPVAL                         R44 8
      499 GETTABLEKS                       R44 R44 K37 ["Add"]
      501 JUMPIFEQ                         R7 R44 ; [+2]
      503 LOADB                            R43 0 +1
      504 LOADB                            R43 1
      505 GETUPVAL                         R45 8
      506 GETTABLEKS                       R45 R45 K50 ["Subtract"]
      508 JUMPIFEQ                         R7 R45 ; [+2]
      510 LOADB                            R44 0 +1
      511 LOADB                            R44 1
      512 GETIMPORT                        R45 K49 [os.clock]
      514 CALL                             R45 0 1
      515 LOADN                            R48 1
      516 GETTABLEKS                       R46 R34 K72 ["sizeX"]
      518 LOADN                            R47 1
      519 FORNPREP                         R46
      520 JUMPIFNOT                        R37 ; [+4]
      521 MUL                              R50 R48 R35
      522 ADD                              R49 R50 R38
      523 POWK                             R41 R49 K43 [2]
      524 JUMP                             ; [+1]
      525 LOADNIL                          R41
      526 LOADN                            R51 1
      527 GETTABLEKS                       R49 R34 K73 ["sizeY"]
      529 LOADN                            R50 1
      530 FORNPREP                         R49
      531 JUMPIFNOT                        R36 ; [+5]
      532 MUL                              R54 R51 R35
      533 ADD                              R53 R54 R39
      534 POWK                             R52 R53 K43 [2]
      535 ADD                              R42 R41 R52
      536 JUMP                             ; [+1]
      537 LOADNIL                          R42
      538 LOADN                            R54 1
      539 GETTABLEKS                       R52 R34 K74 ["sizeZ"]
      541 LOADN                            R53 1
      542 FORNPREP                         R52
      543 MOVE                             R57 R48
      544 MOVE                             R58 R51
      545 MOVE                             R59 R54
      546 NAMECALL                         R55 R34 K75 ["getOccupancy"]
      548 CALL                             R55 4 1
      549 MOVE                             R58 R48
      550 MOVE                             R59 R51
      551 MOVE                             R60 R54
      552 NAMECALL                         R56 R34 K76 ["getMaterial"]
      554 CALL                             R56 4 1
      555 LOADN                            R57 1
      556 JUMPIFNOT                        R37 ; [+20]
      557 MUL                              R60 R54 R35
      558 ADD                              R59 R60 R40
      559 POWK                             R58 R59 K43 [2]
      560 JUMPIFNOT                        R36 ; [+6]
      561 ADD                              R60 R42 R58
      562 FASTCALL1                        MATH_SQRT R60 ; [+2]
      563 GETIMPORT                        R59 K79 [math.sqrt]
      565 CALL                             R59 1 1
      566 JUMP                             ; [+5]
      567 ADD                              R60 R41 R58
      568 FASTCALL1                        MATH_SQRT R60 ; [+2]
      569 GETIMPORT                        R59 K79 [math.sqrt]
      571 CALL                             R59 1 1
      572 GETUPVAL                         R60 15
      573 MOVE                             R61 R59
      574 MOVE                             R62 R32
      575 CALL                             R60 2 1
      576 MOVE                             R57 R60
      577 JUMPIFNOT                        R43 ; [+25]
      578 JUMPIFNOTLT                      R55 R57 ; [+24]
      580 JUMPIFNOT                        R13 ; [+12]
      581 GETUPVAL                         R59 16
      582 MOVE                             R60 R48
      583 MOVE                             R61 R51
      584 MOVE                             R62 R54
      585 GETTABLEKS                       R63 R34 K80 ["materials"]
      587 MOVE                             R64 R33
      588 GETTABLEKS                       R65 R16 K44 ["air"]
      590 CALL                             R59 6 1
      591 OR                               R58 R59 R56
      592 JUMP                             ; [+1]
      593 MOVE                             R58 R15
      594 MOVE                             R61 R48
      595 MOVE                             R62 R51
      596 MOVE                             R63 R54
      597 MOVE                             R64 R58
      598 MOVE                             R65 R57
      599 NAMECALL                         R59 R34 K81 ["setAdded"]
      601 CALL                             R59 6 0
      602 JUMP                             ; [+22]
      603 JUMPIFNOT                        R44 ; [+21]
      604 JUMPIFNOT                        R10 ; [+4]
      605 GETTABLEKS                       R58 R16 K82 ["water"]
      607 JUMPIFEQ                         R56 R58 ; [+17]
      609 GETUPVAL                         R58 10
      610 GETTABLEKS                       R58 R58 K83 ["MinimumOccupancy"]
      612 JUMPIFNOTLE                      R58 R57 ; [+12]
      614 MOVE                             R60 R48
      615 MOVE                             R61 R51
      616 MOVE                             R62 R54
      617 JUMPIFEQKN                       R57 K42 [1] ; [+2]
      619 LOADB                            R63 0 +1
      620 LOADB                            R63 1
      621 MOVE                             R64 R10
      622 NAMECALL                         R58 R34 K84 ["setSubtracted"]
      624 CALL                             R58 6 0
      625 FORNLOOP                         R52
      626 FORNLOOP                         R49
      627 FORNLOOP                         R46
      628 GETUPVAL                         R48 14
      629 GETTABLEKS                       R48 R48 K65 ["NormalizeBrushTimer"]
      631 MOVE                             R49 R45
      632 GETTABLEKS                       R50 R4 K13 ["Size"]
      634 GETTABLEKS                       R51 R4 K12 ["Height"]
      636 CALL                             R48 3 -1
      637 NAMECALL                         R46 R1 K66 ["addTimeStatistic"]
      639 CALL                             R46 -1 0
      640 MOVE                             R48 R31
      641 GETUPVAL                         R50 8
      642 GETTABLEKS                       R50 R50 K50 ["Subtract"]
      644 JUMPIFEQ                         R7 R50 ; [+2]
      646 LOADB                            R49 0 +1
      647 LOADB                            R49 1
      648 NAMECALL                         R46 R34 K85 ["write"]
      650 CALL                             R46 3 0
      651 JUMP                             ; [+262]
      652 GETUPVAL                         R34 4
      653 GETTABLEKS                       R34 R34 K36 ["Terrain"]
      655 MOVE                             R36 R31
      656 GETUPVAL                         R37 10
      657 GETTABLEKS                       R37 R37 K40 ["VoxelResolution"]
      659 NAMECALL                         R34 R34 K86 ["ReadVoxels"]
      661 CALL                             R34 3 2
      662 LOADNIL                          R36
      663 SETTABLEKS                       R36 R34 K13 ["Size"]
      665 LOADNIL                          R36
      666 SETTABLEKS                       R36 R35 K13 ["Size"]
      668 LENGTH                           R36 R34
      669 GETTABLEN                        R38 R34 1
      670 LENGTH                           R37 R38
      671 GETIMPORT                        R38 K89 [table.create]
      673 MOVE                             R39 R36
      674 CALL                             R38 1 1
      675 GETIMPORT                        R39 K89 [table.create]
      677 MOVE                             R40 R36
      678 CALL                             R39 1 1
      679 GETIMPORT                        R40 K89 [table.create]
      681 MOVE                             R41 R36
      682 CALL                             R40 1 1
      683 GETUPVAL                         R41 10
      684 GETTABLEKS                       R41 R41 K40 ["VoxelResolution"]
      686 LOADB                            R42 0
      687 GETUPVAL                         R43 9
      688 GETTABLEKS                       R43 R43 K39 ["Sphere"]
      690 JUMPIFNOTEQ                      R8 R43 ; [+6]
      692 LOADN                            R43 2
      693 JUMPIFLT                         R43 R6 ; [+2]
      695 LOADB                            R42 0 +1
      696 LOADB                            R42 1
      697 GETUPVAL                         R44 9
      698 GETTABLEKS                       R44 R44 K59 ["Cylinder"]
      700 JUMPIFNOTEQ                      R8 R44 ; [+5]
      702 LOADB                            R43 1
      703 LOADN                            R44 2
      704 JUMPIFLT                         R44 R6 ; [+2]
      706 MOVE                             R43 R42
      707 GETTABLEKS                       R46 R27 K60 ["X"]
      709 MULK                             R47 R41 K41 [0.5]
      710 SUB                              R45 R46 R47
      711 GETTABLEKS                       R46 R26 K60 ["X"]
      713 SUB                              R44 R45 R46
      714 GETTABLEKS                       R47 R27 K70 ["Y"]
      716 MULK                             R48 R41 K41 [0.5]
      717 SUB                              R46 R47 R48
      718 GETTABLEKS                       R47 R26 K70 ["Y"]
      720 SUB                              R45 R46 R47
      721 GETTABLEKS                       R48 R27 K71 ["Z"]
      723 MULK                             R49 R41 K41 [0.5]
      724 SUB                              R47 R48 R49
      725 GETTABLEKS                       R48 R26 K71 ["Z"]
      727 SUB                              R46 R47 R48
      728 LOADNIL                          R47
      729 LOADNIL                          R48
      730 GETUPVAL                         R50 8
      731 GETTABLEKS                       R50 R50 K37 ["Add"]
      733 JUMPIFEQ                         R7 R50 ; [+2]
      735 LOADB                            R49 0 +1
      736 LOADB                            R49 1
      737 GETUPVAL                         R51 8
      738 GETTABLEKS                       R51 R51 K50 ["Subtract"]
      740 JUMPIFEQ                         R7 R51 ; [+2]
      742 LOADB                            R50 0 +1
      743 LOADB                            R50 1
      744 GETIMPORT                        R51 K49 [os.clock]
      746 CALL                             R51 0 1
      747 MOVE                             R52 R35
      748 LOADNIL                          R53
      749 LOADNIL                          R54
      750 FORGPREP                         R52
      751 JUMPIFNOT                        R43 ; [+4]
      752 MUL                              R58 R55 R41
      753 ADD                              R57 R58 R44
      754 POWK                             R47 R57 K43 [2]
      755 JUMP                             ; [+1]
      756 LOADNIL                          R47
      757 GETTABLE                         R57 R34 R55
      758 GETIMPORT                        R58 K89 [table.create]
      760 MOVE                             R59 R37
      761 CALL                             R58 1 1
      762 GETIMPORT                        R59 K89 [table.create]
      764 MOVE                             R60 R37
      765 CALL                             R59 1 1
      766 GETIMPORT                        R60 K89 [table.create]
      768 MOVE                             R61 R37
      769 CALL                             R60 1 1
      770 SETTABLE                         R58 R38 R55
      771 SETTABLE                         R59 R39 R55
      772 SETTABLE                         R60 R40 R55
      773 MOVE                             R61 R56
      774 LOADNIL                          R62
      775 LOADNIL                          R63
      776 FORGPREP                         R61
      777 JUMPIFNOT                        R42 ; [+5]
      778 MUL                              R68 R64 R41
      779 ADD                              R67 R68 R45
      780 POWK                             R66 R67 K43 [2]
      781 ADD                              R48 R47 R66
      782 JUMP                             ; [+1]
      783 LOADNIL                          R48
      784 GETTABLE                         R66 R57 R64
      785 GETIMPORT                        R67 K91 [table.clone]
      787 MOVE                             R68 R66
      788 CALL                             R67 1 1
      789 GETIMPORT                        R68 K91 [table.clone]
      791 MOVE                             R69 R66
      792 CALL                             R68 1 1
      793 GETIMPORT                        R69 K91 [table.clone]
      795 MOVE                             R70 R65
      796 CALL                             R69 1 1
      797 SETTABLE                         R67 R58 R64
      798 SETTABLE                         R68 R59 R64
      799 SETTABLE                         R69 R60 R64
      800 MOVE                             R70 R65
      801 LOADNIL                          R71
      802 LOADNIL                          R72
      803 FORGPREP                         R70
      804 GETTABLE                         R75 R66 R73
      805 LOADN                            R76 1
      806 JUMPIFNOT                        R43 ; [+20]
      807 MUL                              R79 R73 R41
      808 ADD                              R78 R79 R46
      809 POWK                             R77 R78 K43 [2]
      810 JUMPIFNOT                        R42 ; [+6]
      811 ADD                              R79 R48 R77
      812 FASTCALL1                        MATH_SQRT R79 ; [+2]
      813 GETIMPORT                        R78 K79 [math.sqrt]
      815 CALL                             R78 1 1
      816 JUMP                             ; [+5]
      817 ADD                              R79 R47 R77
      818 FASTCALL1                        MATH_SQRT R79 ; [+2]
      819 GETIMPORT                        R78 K79 [math.sqrt]
      821 CALL                             R78 1 1
      822 GETUPVAL                         R79 15
      823 MOVE                             R80 R78
      824 MOVE                             R81 R32
      825 CALL                             R79 2 1
      826 MOVE                             R76 R79
      827 JUMPIFNOT                        R49 ; [+16]
      828 JUMPIFNOTLT                      R74 R76 ; [+15]
      830 SETTABLE                         R76 R65 R73
      831 JUMPIF                           R13 ; [+2]
      832 SETTABLE                         R75 R67 R73
      833 JUMP                             ; [+33]
      834 GETUPVAL                         R78 17
      835 MOVE                             R79 R55
      836 MOVE                             R80 R64
      837 MOVE                             R81 R73
      838 MOVE                             R82 R34
      839 MOVE                             R83 R33
      840 CALL                             R78 5 1
      841 OR                               R77 R78 R75
      842 SETTABLE                         R77 R67 R73
      843 JUMP                             ; [+23]
      844 JUMPIFNOT                        R50 ; [+22]
      845 JUMPIFNOT                        R10 ; [+4]
      846 GETIMPORT                        R77 K93 [Enum.Material.Water]
      848 JUMPIFEQ                         R75 R77 ; [+18]
      850 GETUPVAL                         R77 10
      851 GETTABLEKS                       R77 R77 K83 ["MinimumOccupancy"]
      853 JUMPIFNOTLE                      R77 R76 ; [+13]
      855 LOADN                            R77 0
      856 SETTABLE                         R77 R65 R73
      857 GETIMPORT                        R77 K29 [Enum.Material.Air]
      859 SETTABLE                         R77 R67 R73
      860 JUMPIFNOTEQKN                    R76 K42 [1] ; [+6]
      862 GETIMPORT                        R77 K29 [Enum.Material.Air]
      864 SETTABLE                         R77 R68 R73
      865 LOADN                            R77 0
      866 SETTABLE                         R77 R69 R73
      867 FORGLOOP                         R70 2 ; [-64]
      869 FORGLOOP                         R61 2 ; [-93]
      871 FORGLOOP                         R52 2 ; [-121]
      873 GETUPVAL                         R54 14
      874 GETTABLEKS                       R54 R54 K65 ["NormalizeBrushTimer"]
      876 MOVE                             R55 R51
      877 GETTABLEKS                       R56 R4 K13 ["Size"]
      879 GETTABLEKS                       R57 R4 K12 ["Height"]
      881 CALL                             R54 3 -1
      882 NAMECALL                         R52 R1 K66 ["addTimeStatistic"]
      884 CALL                             R52 -1 0
      885 GETUPVAL                         R52 8
      886 GETTABLEKS                       R52 R52 K50 ["Subtract"]
      888 JUMPIFNOTEQ                      R7 R52 ; [+13]
      890 GETUPVAL                         R52 4
      891 GETTABLEKS                       R52 R52 K36 ["Terrain"]
      893 MOVE                             R54 R31
      894 GETUPVAL                         R55 10
      895 GETTABLEKS                       R55 R55 K40 ["VoxelResolution"]
      897 MOVE                             R56 R39
      898 MOVE                             R57 R40
      899 NAMECALL                         R52 R52 K94 ["WriteVoxels"]
      901 CALL                             R52 5 0
      902 GETUPVAL                         R52 4
      903 GETTABLEKS                       R52 R52 K36 ["Terrain"]
      905 MOVE                             R54 R31
      906 GETUPVAL                         R55 10
      907 GETTABLEKS                       R55 R55 K40 ["VoxelResolution"]
      909 MOVE                             R56 R38
      910 MOVE                             R57 R35
      911 NAMECALL                         R52 R52 K94 ["WriteVoxels"]
      913 CALL                             R52 5 0
      914 FORGLOOP                         R22 2 ; [-695]
      916 GETUPVAL                         R22 0
      917 GETTABLEKS                       R22 R22 K4 ["ProfileTools"]
      919 CALL                             R22 0 1
      920 JUMPIFNOT                        R22 ; [+3]
      921 GETIMPORT                        R22 K23 [debug.profileend]
      923 CALL                             R22 0 0
      924 LOADB                            R22 1
      925 LOADN                            R23 0
      926 RETURN                           R22 2

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
