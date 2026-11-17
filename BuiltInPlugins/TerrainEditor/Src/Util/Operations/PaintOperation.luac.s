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
       15 LOADK                            R3 K8 ["Paint Operation"]
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
       34 GETTABLEKS                       R8 R8 K14 ["BrushShape"]
       36 GETTABLE                         R7 R3 R8
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K0 ["State"]
       40 GETTABLE                         R8 R3 R9
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K15 ["IgnoreWater"]
       44 GETTABLE                         R9 R3 R10
       45 GETTABLEKS                       R11 R0 K9 ["Payload"]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K16 ["MaterialSettings"]
       50 GETTABLE                         R10 R11 R12
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K17 ["MaterialMode"]
       54 GETTABLE                         R11 R10 R12
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R13 R13 K18 ["SourceMaterial"]
       58 GETTABLE                         R12 R10 R13
       59 GETUPVAL                         R14 3
       60 GETTABLEKS                       R14 R14 K19 ["TargetMaterial"]
       62 GETTABLE                         R13 R10 R14
       63 GETUPVAL                         R15 3
       64 GETTABLEKS                       R15 R15 K20 ["SourceMaterialSlot"]
       66 GETTABLE                         R14 R10 R15
       67 GETUPVAL                         R16 3
       68 GETTABLEKS                       R16 R16 K21 ["TargetMaterialSlot"]
       70 GETTABLE                         R15 R10 R16
       71 GETUPVAL                         R17 4
       72 CALL                             R17 0 1
       73 JUMPIFNOT                        R17 ; [+8]
       74 GETUPVAL                         R16 5
       75 GETTABLEKS                       R16 R16 K22 ["new"]
       77 GETUPVAL                         R17 6
       78 GETTABLEKS                       R17 R17 K23 ["Terrain"]
       80 CALL                             R16 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R16
       83 LOADB                            R17 0
       84 JUMPIFEQKNIL                     R16 ; [+15]
       86 LOADB                            R17 0
       87 GETUPVAL                         R18 7
       88 GETTABLEKS                       R18 R18 K24 ["Replace"]
       90 JUMPIFNOTEQ                      R11 R18 ; [+9]
       92 GETUPVAL                         R19 3
       93 GETTABLEKS                       R19 R19 K25 ["InvalidSourceMode"]
       95 GETTABLE                         R18 R10 R19
       96 JUMPIFEQKB                       R18 TRUE ; [+2]
       98 LOADB                            R17 0 +1
       99 LOADB                            R17 1
      100 JUMPIFNOT                        R16 ; [+33]
      101 JUMPIF                           R17 ; [+5]
      102 MOVE                             R20 R14
      103 NAMECALL                         R18 R16 K26 ["isMaterialValid"]
      105 CALL                             R18 2 1
      106 JUMPIFNOT                        R18 ; [+10]
      107 GETUPVAL                         R18 7
      108 GETTABLEKS                       R18 R18 K24 ["Replace"]
      110 JUMPIFNOTEQ                      R11 R18 ; [+23]
      112 MOVE                             R20 R15
      113 NAMECALL                         R18 R16 K26 ["isMaterialValid"]
      115 CALL                             R18 2 1
      116 JUMPIF                           R18 ; [+17]
      117 NAMECALL                         R18 R1 K27 ["reportInvalidMaterialSlot"]
      119 CALL                             R18 1 0
      120 NAMECALL                         R18 R1 K28 ["skipBudget"]
      122 CALL                             R18 1 0
      123 GETUPVAL                         R18 0
      124 GETTABLEKS                       R18 R18 K4 ["ProfileTools"]
      126 CALL                             R18 0 1
      127 JUMPIFNOT                        R18 ; [+3]
      128 GETIMPORT                        R18 K30 [debug.profileend]
      130 CALL                             R18 0 0
      131 LOADB                            R18 1
      132 LOADN                            R19 0
      133 RETURN                           R18 2
      134 JUMPIFNOT                        R17 ; [+2]
      135 LOADNIL                          R18
      136 JUMP                             ; [+4]
      137 JUMPIFNOT                        R16 ; [+2]
      138 MOVE                             R18 R14
      139 JUMP                             ; [+1]
      140 MOVE                             R18 R12
      141 JUMPIFNOT                        R16 ; [+2]
      142 MOVE                             R19 R15
      143 JUMP                             ; [+1]
      144 MOVE                             R19 R13
      145 JUMPIFNOT                        R16 ; [+3]
      146 GETTABLEKS                       R20 R16 K31 ["water"]
      148 JUMP                             ; [+2]
      149 GETIMPORT                        R20 K35 [Enum.Material.Water]
      151 GETTABLEKS                       R21 R8 K33 ["Material"]
      153 GETIMPORT                        R22 K37 [Enum.Material.Air]
      155 JUMPIFNOTEQ                      R21 R22 ; [+7]
      157 NAMECALL                         R21 R1 K28 ["skipBudget"]
      159 CALL                             R21 1 0
      160 LOADB                            R21 1
      161 LOADN                            R22 0
      162 RETURN                           R21 2
      163 GETUPVAL                         R23 8
      164 GETTABLEKS                       R23 R23 K38 ["Sphere"]
      166 JUMPIFNOTEQ                      R7 R23 ; [+3]
      168 MOVE                             R22 R6
      169 JUMP                             ; [+1]
      170 MOVE                             R22 R5
      171 GETUPVAL                         R23 9
      172 MUL                              R21 R22 R23
      173 GETUPVAL                         R23 9
      174 MUL                              R22 R6 R23
      175 MULK                             R23 R22 K39 [0.5]
      176 GETUPVAL                         R24 10
      177 GETUPVAL                         R26 2
      178 GETTABLEKS                       R26 R26 K40 ["PivotPosition"]
      180 GETTABLE                         R25 R3 R26
      181 GETTABLEKS                       R26 R8 K41 ["Position"]
      183 MOVE                             R27 R21
      184 CALL                             R24 3 1
      185 GETUPVAL                         R25 11
      186 GETTABLEKS                       R26 R2 K41 ["Position"]
      188 MOVE                             R27 R24
      189 MOVE                             R28 R23
      190 CALL                             R25 3 1
      191 LENGTH                           R27 R25
      192 GETTABLE                         R26 R25 R27
      193 SETTABLEKS                       R26 R2 K41 ["Position"]
      195 GETUPVAL                         R27 7
      196 GETTABLEKS                       R27 R27 K42 ["Paint"]
      198 JUMPIFEQ                         R11 R27 ; [+2]
      200 LOADB                            R26 0 +1
      201 LOADB                            R26 1
      202 GETUPVAL                         R28 7
      203 GETTABLEKS                       R28 R28 K24 ["Replace"]
      205 JUMPIFEQ                         R11 R28 ; [+2]
      207 LOADB                            R27 0 +1
      208 LOADB                            R27 1
      209 MOVE                             R28 R25
      210 LOADNIL                          R29
      211 LOADNIL                          R30
      212 FORGPREP                         R28
      213 GETTABLEKS                       R33 R2 K43 ["LastPosition"]
      215 JUMPIFNOTEQ                      R32 R33 ; [+15]
      217 NAMECALL                         R33 R1 K28 ["skipBudget"]
      219 CALL                             R33 1 0
      220 GETUPVAL                         R33 0
      221 GETTABLEKS                       R33 R33 K4 ["ProfileTools"]
      223 CALL                             R33 0 1
      224 JUMPIFNOT                        R33 ; [+3]
      225 GETIMPORT                        R33 K30 [debug.profileend]
      227 CALL                             R33 0 0
      228 LOADB                            R33 1
      229 LOADN                            R34 0
      230 RETURN                           R33 2
      231 SETTABLEKS                       R32 R2 K43 ["LastPosition"]
      233 GETUPVAL                         R33 12
      234 MOVE                             R34 R32
      235 MOVE                             R35 R23
      236 MOVE                             R36 R21
      237 CALL                             R33 3 2
      238 GETIMPORT                        R35 K45 [Region3.new]
      240 MOVE                             R36 R33
      241 MOVE                             R37 R34
      242 CALL                             R35 2 1
      243 JUMPIF                           R16 ; [+20]
      244 GETUPVAL                         R36 8
      245 GETTABLEKS                       R36 R36 K46 ["Cube"]
      247 JUMPIFNOTEQ                      R7 R36 ; [+16]
      249 JUMPIFNOT                        R27 ; [+14]
      250 GETUPVAL                         R36 6
      251 GETTABLEKS                       R36 R36 K23 ["Terrain"]
      253 MOVE                             R38 R35
      254 GETUPVAL                         R39 9
      255 MOVE                             R40 R12
      256 MOVE                             R41 R13
      257 NAMECALL                         R36 R36 K47 ["ReplaceMaterial"]
      259 CALL                             R36 5 0
      260 NAMECALL                         R36 R1 K48 ["recordMaterialApplied"]
      262 CALL                             R36 1 0
      263 JUMP                             ; [+266]
      264 GETTABLEKS                       R38 R34 K49 ["X"]
      266 GETTABLEKS                       R39 R33 K49 ["X"]
      268 SUB                              R37 R38 R39
      269 MULK                             R36 R37 K39 [0.5]
      270 JUMPIFNOT                        R16 ; [+5]
      271 MOVE                             R39 R35
      272 NAMECALL                         R37 R16 K50 ["readRegion"]
      274 CALL                             R37 2 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R37
      277 LOADNIL                          R38
      278 LOADNIL                          R39
      279 JUMPIFNOT                        R37 ; [+5]
      280 GETTABLEKS                       R38 R37 K51 ["materials"]
      282 GETTABLEKS                       R39 R37 K52 ["occupancies"]
      284 JUMP                             ; [+10]
      285 GETUPVAL                         R40 6
      286 GETTABLEKS                       R40 R40 K23 ["Terrain"]
      288 MOVE                             R42 R35
      289 GETUPVAL                         R43 9
      290 NAMECALL                         R40 R40 K53 ["ReadVoxels"]
      292 CALL                             R40 3 2
      293 MOVE                             R38 R40
      294 MOVE                             R39 R41
      295 LOADNIL                          R40
      296 SETTABLEKS                       R40 R38 K13 ["Size"]
      298 LOADNIL                          R40
      299 SETTABLEKS                       R40 R39 K13 ["Size"]
      301 GETUPVAL                         R40 9
      302 JUMPIFNOT                        R16 ; [+3]
      303 GETTABLEKS                       R42 R16 K54 ["air"]
      305 JUMP                             ; [+2]
      306 GETIMPORT                        R42 K37 [Enum.Material.Air]
      308 JUMPIFEQ                         R18 R42 ; [+2]
      310 LOADB                            R41 0 +1
      311 LOADB                            R41 1
      312 LOADB                            R42 0
      313 GETUPVAL                         R43 8
      314 GETTABLEKS                       R43 R43 K38 ["Sphere"]
      316 JUMPIFNOTEQ                      R7 R43 ; [+6]
      318 LOADN                            R43 2
      319 JUMPIFLT                         R43 R6 ; [+2]
      321 LOADB                            R42 0 +1
      322 LOADB                            R42 1
      323 GETUPVAL                         R44 8
      324 GETTABLEKS                       R44 R44 K55 ["Cylinder"]
      326 JUMPIFNOTEQ                      R7 R44 ; [+5]
      328 LOADB                            R43 1
      329 LOADN                            R44 2
      330 JUMPIFLT                         R44 R6 ; [+2]
      332 MOVE                             R43 R42
      333 JUMPIFNOT                        R37 ; [+3]
      334 JUMPIFNOT                        R26 ; [+2]
      335 LOADN                            R44 1
      336 JUMP                             ; [+11]
      337 JUMPIFNOT                        R37 ; [+3]
      338 JUMPIFNOT                        R27 ; [+2]
      339 LOADN                            R44 2
      340 JUMP                             ; [+7]
      341 JUMPIFNOT                        R26 ; [+2]
      342 LOADN                            R44 3
      343 JUMP                             ; [+4]
      344 JUMPIFNOT                        R27 ; [+2]
      345 LOADN                            R44 4
      346 JUMP                             ; [+1]
      347 LOADN                            R44 0
      348 GETTABLEKS                       R47 R33 K49 ["X"]
      350 MULK                             R48 R40 K39 [0.5]
      351 SUB                              R46 R47 R48
      352 GETTABLEKS                       R47 R32 K49 ["X"]
      354 SUB                              R45 R46 R47
      355 GETTABLEKS                       R48 R33 K56 ["Y"]
      357 MULK                             R49 R40 K39 [0.5]
      358 SUB                              R47 R48 R49
      359 GETTABLEKS                       R48 R32 K56 ["Y"]
      361 SUB                              R46 R47 R48
      362 GETTABLEKS                       R49 R33 K57 ["Z"]
      364 MULK                             R50 R40 K39 [0.5]
      365 SUB                              R48 R49 R50
      366 GETTABLEKS                       R49 R32 K57 ["Z"]
      368 SUB                              R47 R48 R49
      369 LOADNIL                          R48
      370 LOADNIL                          R49
      371 GETIMPORT                        R50 K60 [os.clock]
      373 CALL                             R50 0 1
      374 MOVE                             R51 R39
      375 LOADNIL                          R52
      376 LOADNIL                          R53
      377 FORGPREP                         R51
      378 JUMPIFNOT                        R43 ; [+4]
      379 MUL                              R57 R54 R40
      380 ADD                              R56 R57 R45
      381 POWK                             R48 R56 K61 [2]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R48
      384 GETTABLE                         R56 R38 R54
      385 MOVE                             R57 R55
      386 LOADNIL                          R58
      387 LOADNIL                          R59
      388 FORGPREP                         R57
      389 JUMPIFNOT                        R42 ; [+5]
      390 MUL                              R64 R60 R40
      391 ADD                              R63 R64 R46
      392 POWK                             R62 R63 K61 [2]
      393 ADD                              R49 R48 R62
      394 JUMP                             ; [+1]
      395 LOADNIL                          R49
      396 GETTABLE                         R62 R56 R60
      397 MOVE                             R63 R61
      398 LOADNIL                          R64
      399 LOADNIL                          R65
      400 FORGPREP                         R63
      401 GETTABLE                         R68 R62 R66
      402 LOADN                            R69 1
      403 JUMPIFNOT                        R43 ; [+20]
      404 MUL                              R72 R66 R40
      405 ADD                              R71 R72 R47
      406 POWK                             R70 R71 K61 [2]
      407 JUMPIFNOT                        R42 ; [+6]
      408 ADD                              R72 R49 R70
      409 FASTCALL1                        MATH_SQRT R72 ; [+2]
      410 GETIMPORT                        R71 K64 [math.sqrt]
      412 CALL                             R71 1 1
      413 JUMP                             ; [+5]
      414 ADD                              R72 R48 R70
      415 FASTCALL1                        MATH_SQRT R72 ; [+2]
      416 GETIMPORT                        R71 K64 [math.sqrt]
      418 CALL                             R71 1 1
      419 GETUPVAL                         R72 13
      420 MOVE                             R73 R71
      421 MOVE                             R74 R36
      422 CALL                             R72 2 1
      423 MOVE                             R69 R72
      424 LOADN                            R70 0
      425 JUMPIFNOTLT                      R70 R69 ; [+45]
      427 JUMPIFNOT                        R9 ; [+2]
      428 JUMPIFEQ                         R68 R20 ; [+42]
      430 JUMPIFNOTEQKN                    R44 K65 [1] ; [+9]
      432 MOVE                             R72 R54
      433 MOVE                             R73 R60
      434 MOVE                             R74 R66
      435 MOVE                             R75 R18
      436 NAMECALL                         R70 R37 K66 ["paint"]
      438 CALL                             R70 5 0
      439 JUMP                             ; [+33]
      440 JUMPIFNOTEQKN                    R44 K61 [2] ; [+11]
      442 MOVE                             R72 R54
      443 MOVE                             R73 R60
      444 MOVE                             R74 R66
      445 MOVE                             R75 R18
      446 MOVE                             R76 R19
      447 MOVE                             R77 R9
      448 NAMECALL                         R70 R37 K67 ["replace"]
      450 CALL                             R70 7 0
      451 JUMP                             ; [+21]
      452 JUMPIFNOTEQKN                    R44 K68 [3] ; [+4]
      454 SETTABLE                         R67 R61 R66
      455 SETTABLE                         R12 R62 R66
      456 JUMP                             ; [+16]
      457 JUMPIFNOTEQKN                    R44 K69 [4] ; [+15]
      459 JUMPIFNOT                        R41 ; [+2]
      460 LOADN                            R70 1
      461 JUMP                             ; [+1]
      462 MOVE                             R70 R67
      463 SETTABLE                         R70 R61 R66
      464 JUMPIFNOTEQ                      R12 R68 ; [+3]
      466 MOVE                             R70 R13
      467 JUMP                             ; [+1]
      468 MOVE                             R70 R68
      469 SETTABLE                         R70 R62 R66
      470 JUMP                             ; [+2]
      471 SETTABLE                         R67 R61 R66
      472 SETTABLE                         R68 R62 R66
      473 FORGLOOP                         R63 2 ; [-73]
      475 FORGLOOP                         R57 2 ; [-87]
      477 FORGLOOP                         R51 2 ; [-100]
      479 GETUPVAL                         R53 14
      480 GETTABLEKS                       R53 R53 K70 ["NormalizeBrushTimer"]
      482 MOVE                             R54 R50
      483 MOVE                             R55 R6
      484 MOVE                             R56 R5
      485 CALL                             R53 3 -1
      486 NAMECALL                         R51 R1 K71 ["addTimeStatistic"]
      488 CALL                             R51 -1 0
      489 JUMPIFNOT                        R37 ; [+5]
      490 MOVE                             R53 R35
      491 NAMECALL                         R51 R37 K72 ["write"]
      493 CALL                             R51 2 0
      494 JUMP                             ; [+32]
      495 GETIMPORT                        R51 K35 [Enum.Material.Water]
      497 JUMPIFEQ                         R12 R51 ; [+5]
      499 GETIMPORT                        R51 K35 [Enum.Material.Water]
      501 JUMPIFNOTEQ                      R13 R51 ; [+13]
      503 GETUPVAL                         R51 6
      504 GETTABLEKS                       R51 R51 K23 ["Terrain"]
      506 MOVE                             R53 R35
      507 GETUPVAL                         R54 15
      508 GETTABLEKS                       R54 R54 K73 ["VoxelResolution"]
      510 GETIMPORT                        R55 K37 [Enum.Material.Air]
      512 NAMECALL                         R51 R51 K74 ["FillRegion"]
      514 CALL                             R51 4 0
      515 GETUPVAL                         R51 6
      516 GETTABLEKS                       R51 R51 K23 ["Terrain"]
      518 MOVE                             R53 R35
      519 GETUPVAL                         R54 15
      520 GETTABLEKS                       R54 R54 K73 ["VoxelResolution"]
      522 MOVE                             R55 R38
      523 MOVE                             R56 R39
      524 NAMECALL                         R51 R51 K75 ["WriteVoxels"]
      526 CALL                             R51 5 0
      527 NAMECALL                         R51 R1 K48 ["recordMaterialApplied"]
      529 CALL                             R51 1 0
      530 FORGLOOP                         R28 2 ; [-318]
      532 GETUPVAL                         R28 0
      533 GETTABLEKS                       R28 R28 K4 ["ProfileTools"]
      535 CALL                             R28 0 1
      536 JUMPIFNOT                        R28 ; [+3]
      537 GETIMPORT                        R28 K30 [debug.profileend]
      539 CALL                             R28 0 0
      540 LOADB                            R28 1
      541 LOADN                            R29 0
      542 RETURN                           R28 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ChangeHistoryService"]
        3 LOADK                            R4 K1 ["Paint"]
        4 NAMECALL                         R2 R2 K2 ["SetWaypoint"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 CAPTURE                          UPVAL U3
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          VAL R1
       25 GETUPVAL                         R5 15
       26 GETTABLEKS                       R5 R5 K1 ["new"]
       28 DUPTABLE                         R6 K8 [{["Budget"] = 0.005, ["OnFinish"], ["OnStart"], ["OnStep"], ["Name"]}]
       29 SETTABLEKS                       R4 R6 K4 ["OnFinish"]
       31 SETTABLEKS                       R2 R6 K5 ["OnStart"]
       33 SETTABLEKS                       R3 R6 K6 ["OnStep"]
       35 SETTABLEKS                       R0 R6 K7 ["Name"]
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1

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
       16 GETTABLEKS                       R2 R1 K9 ["VoxelResolution"]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K11 ["AnalyticsHelper"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R3 K12 ["Operations"]
       31 GETTABLEKS                       R6 R6 K13 ["BaseOperation"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R3 K14 ["CalculateBrushOccupancy"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R3 K15 ["ClampVoxelBoundaries"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R3 K16 ["ConvertForPivot"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R3 K17 ["getDraggedPositions"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R3 K12 ["Operations"]
       58 GETTABLEKS                       R11 R11 K18 ["PaintMaterialBackend"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Flags"]
       67 GETTABLEKS                       R12 R12 K20 ["getFFlagEnableTerrainPalette"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K6 ["Src"]
       74 GETTABLEKS                       R13 R13 K21 ["Types"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R13 R12 K22 ["BrushShape"]
       79 GETTABLEKS                       R14 R12 K23 ["BrushSettings"]
       81 GETTABLEKS                       R15 R12 K24 ["Category"]
       83 GETTABLEKS                       R16 R12 K25 ["MaterialMode"]
       85 GETTABLEKS                       R17 R12 K26 ["MaterialSettings"]
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R0 K6 ["Src"]
       91 GETTABLEKS                       R19 R19 K10 ["Util"]
       93 GETTABLEKS                       R19 R19 K27 ["DebugFlags"]
       95 CALL                             R18 1 1
       96 DUPCLOSURE                       R19 K28 [PROTO_3]
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 RETURN                           R19 1
