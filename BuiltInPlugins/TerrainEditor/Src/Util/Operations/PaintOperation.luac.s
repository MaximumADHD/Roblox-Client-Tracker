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
       83 JUMPIFNOT                        R16 ; [+32]
       84 MOVE                             R19 R14
       85 NAMECALL                         R17 R16 K24 ["isMaterialValid"]
       87 CALL                             R17 2 1
       88 JUMPIFNOT                        R17 ; [+10]
       89 GETUPVAL                         R17 7
       90 GETTABLEKS                       R17 R17 K25 ["Replace"]
       92 JUMPIFNOTEQ                      R11 R17 ; [+23]
       94 MOVE                             R19 R15
       95 NAMECALL                         R17 R16 K24 ["isMaterialValid"]
       97 CALL                             R17 2 1
       98 JUMPIF                           R17 ; [+17]
       99 NAMECALL                         R17 R1 K26 ["reportInvalidMaterialSlot"]
      101 CALL                             R17 1 0
      102 NAMECALL                         R17 R1 K27 ["skipBudget"]
      104 CALL                             R17 1 0
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R17 R17 K4 ["ProfileTools"]
      108 CALL                             R17 0 1
      109 JUMPIFNOT                        R17 ; [+3]
      110 GETIMPORT                        R17 K29 [debug.profileend]
      112 CALL                             R17 0 0
      113 LOADB                            R17 1
      114 LOADN                            R18 0
      115 RETURN                           R17 2
      116 JUMPIFNOT                        R16 ; [+2]
      117 MOVE                             R17 R14
      118 JUMP                             ; [+1]
      119 MOVE                             R17 R12
      120 JUMPIFNOT                        R16 ; [+2]
      121 MOVE                             R18 R15
      122 JUMP                             ; [+1]
      123 MOVE                             R18 R13
      124 JUMPIFNOT                        R16 ; [+3]
      125 GETTABLEKS                       R19 R16 K30 ["water"]
      127 JUMP                             ; [+2]
      128 GETIMPORT                        R19 K34 [Enum.Material.Water]
      130 GETTABLEKS                       R20 R8 K32 ["Material"]
      132 GETIMPORT                        R21 K36 [Enum.Material.Air]
      134 JUMPIFNOTEQ                      R20 R21 ; [+7]
      136 NAMECALL                         R20 R1 K27 ["skipBudget"]
      138 CALL                             R20 1 0
      139 LOADB                            R20 1
      140 LOADN                            R21 0
      141 RETURN                           R20 2
      142 GETUPVAL                         R22 8
      143 GETTABLEKS                       R22 R22 K37 ["Sphere"]
      145 JUMPIFNOTEQ                      R7 R22 ; [+3]
      147 MOVE                             R21 R6
      148 JUMP                             ; [+1]
      149 MOVE                             R21 R5
      150 GETUPVAL                         R22 9
      151 MUL                              R20 R21 R22
      152 GETUPVAL                         R22 9
      153 MUL                              R21 R6 R22
      154 MULK                             R22 R21 K38 [0.5]
      155 GETUPVAL                         R23 10
      156 GETUPVAL                         R25 2
      157 GETTABLEKS                       R25 R25 K39 ["PivotPosition"]
      159 GETTABLE                         R24 R3 R25
      160 GETTABLEKS                       R25 R8 K40 ["Position"]
      162 MOVE                             R26 R20
      163 CALL                             R23 3 1
      164 GETUPVAL                         R24 11
      165 GETTABLEKS                       R25 R2 K40 ["Position"]
      167 MOVE                             R26 R23
      168 MOVE                             R27 R22
      169 CALL                             R24 3 1
      170 LENGTH                           R26 R24
      171 GETTABLE                         R25 R24 R26
      172 SETTABLEKS                       R25 R2 K40 ["Position"]
      174 GETUPVAL                         R26 7
      175 GETTABLEKS                       R26 R26 K41 ["Paint"]
      177 JUMPIFEQ                         R11 R26 ; [+2]
      179 LOADB                            R25 0 +1
      180 LOADB                            R25 1
      181 GETUPVAL                         R27 7
      182 GETTABLEKS                       R27 R27 K25 ["Replace"]
      184 JUMPIFEQ                         R11 R27 ; [+2]
      186 LOADB                            R26 0 +1
      187 LOADB                            R26 1
      188 MOVE                             R27 R24
      189 LOADNIL                          R28
      190 LOADNIL                          R29
      191 FORGPREP                         R27
      192 GETTABLEKS                       R32 R2 K42 ["LastPosition"]
      194 JUMPIFNOTEQ                      R31 R32 ; [+15]
      196 NAMECALL                         R32 R1 K27 ["skipBudget"]
      198 CALL                             R32 1 0
      199 GETUPVAL                         R32 0
      200 GETTABLEKS                       R32 R32 K4 ["ProfileTools"]
      202 CALL                             R32 0 1
      203 JUMPIFNOT                        R32 ; [+3]
      204 GETIMPORT                        R32 K29 [debug.profileend]
      206 CALL                             R32 0 0
      207 LOADB                            R32 1
      208 LOADN                            R33 0
      209 RETURN                           R32 2
      210 SETTABLEKS                       R31 R2 K42 ["LastPosition"]
      212 GETUPVAL                         R32 12
      213 MOVE                             R33 R31
      214 MOVE                             R34 R22
      215 MOVE                             R35 R20
      216 CALL                             R32 3 2
      217 GETIMPORT                        R34 K44 [Region3.new]
      219 MOVE                             R35 R32
      220 MOVE                             R36 R33
      221 CALL                             R34 2 1
      222 JUMPIF                           R16 ; [+20]
      223 GETUPVAL                         R35 8
      224 GETTABLEKS                       R35 R35 K45 ["Cube"]
      226 JUMPIFNOTEQ                      R7 R35 ; [+16]
      228 JUMPIFNOT                        R26 ; [+14]
      229 GETUPVAL                         R35 6
      230 GETTABLEKS                       R35 R35 K23 ["Terrain"]
      232 MOVE                             R37 R34
      233 GETUPVAL                         R38 9
      234 MOVE                             R39 R12
      235 MOVE                             R40 R13
      236 NAMECALL                         R35 R35 K46 ["ReplaceMaterial"]
      238 CALL                             R35 5 0
      239 NAMECALL                         R35 R1 K47 ["recordMaterialApplied"]
      241 CALL                             R35 1 0
      242 JUMP                             ; [+266]
      243 GETTABLEKS                       R37 R33 K48 ["X"]
      245 GETTABLEKS                       R38 R32 K48 ["X"]
      247 SUB                              R36 R37 R38
      248 MULK                             R35 R36 K38 [0.5]
      249 JUMPIFNOT                        R16 ; [+5]
      250 MOVE                             R38 R34
      251 NAMECALL                         R36 R16 K49 ["readRegion"]
      253 CALL                             R36 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R36
      256 LOADNIL                          R37
      257 LOADNIL                          R38
      258 JUMPIFNOT                        R36 ; [+5]
      259 GETTABLEKS                       R37 R36 K50 ["materials"]
      261 GETTABLEKS                       R38 R36 K51 ["occupancies"]
      263 JUMP                             ; [+10]
      264 GETUPVAL                         R39 6
      265 GETTABLEKS                       R39 R39 K23 ["Terrain"]
      267 MOVE                             R41 R34
      268 GETUPVAL                         R42 9
      269 NAMECALL                         R39 R39 K52 ["ReadVoxels"]
      271 CALL                             R39 3 2
      272 MOVE                             R37 R39
      273 MOVE                             R38 R40
      274 LOADNIL                          R39
      275 SETTABLEKS                       R39 R37 K13 ["Size"]
      277 LOADNIL                          R39
      278 SETTABLEKS                       R39 R38 K13 ["Size"]
      280 GETUPVAL                         R39 9
      281 JUMPIFNOT                        R16 ; [+3]
      282 GETTABLEKS                       R41 R16 K53 ["air"]
      284 JUMP                             ; [+2]
      285 GETIMPORT                        R41 K36 [Enum.Material.Air]
      287 JUMPIFEQ                         R17 R41 ; [+2]
      289 LOADB                            R40 0 +1
      290 LOADB                            R40 1
      291 LOADB                            R41 0
      292 GETUPVAL                         R42 8
      293 GETTABLEKS                       R42 R42 K37 ["Sphere"]
      295 JUMPIFNOTEQ                      R7 R42 ; [+6]
      297 LOADN                            R42 2
      298 JUMPIFLT                         R42 R6 ; [+2]
      300 LOADB                            R41 0 +1
      301 LOADB                            R41 1
      302 GETUPVAL                         R43 8
      303 GETTABLEKS                       R43 R43 K54 ["Cylinder"]
      305 JUMPIFNOTEQ                      R7 R43 ; [+5]
      307 LOADB                            R42 1
      308 LOADN                            R43 2
      309 JUMPIFLT                         R43 R6 ; [+2]
      311 MOVE                             R42 R41
      312 JUMPIFNOT                        R36 ; [+3]
      313 JUMPIFNOT                        R25 ; [+2]
      314 LOADN                            R43 1
      315 JUMP                             ; [+11]
      316 JUMPIFNOT                        R36 ; [+3]
      317 JUMPIFNOT                        R26 ; [+2]
      318 LOADN                            R43 2
      319 JUMP                             ; [+7]
      320 JUMPIFNOT                        R25 ; [+2]
      321 LOADN                            R43 3
      322 JUMP                             ; [+4]
      323 JUMPIFNOT                        R26 ; [+2]
      324 LOADN                            R43 4
      325 JUMP                             ; [+1]
      326 LOADN                            R43 0
      327 GETTABLEKS                       R46 R32 K48 ["X"]
      329 MULK                             R47 R39 K38 [0.5]
      330 SUB                              R45 R46 R47
      331 GETTABLEKS                       R46 R31 K48 ["X"]
      333 SUB                              R44 R45 R46
      334 GETTABLEKS                       R47 R32 K55 ["Y"]
      336 MULK                             R48 R39 K38 [0.5]
      337 SUB                              R46 R47 R48
      338 GETTABLEKS                       R47 R31 K55 ["Y"]
      340 SUB                              R45 R46 R47
      341 GETTABLEKS                       R48 R32 K56 ["Z"]
      343 MULK                             R49 R39 K38 [0.5]
      344 SUB                              R47 R48 R49
      345 GETTABLEKS                       R48 R31 K56 ["Z"]
      347 SUB                              R46 R47 R48
      348 LOADNIL                          R47
      349 LOADNIL                          R48
      350 GETIMPORT                        R49 K59 [os.clock]
      352 CALL                             R49 0 1
      353 MOVE                             R50 R38
      354 LOADNIL                          R51
      355 LOADNIL                          R52
      356 FORGPREP                         R50
      357 JUMPIFNOT                        R42 ; [+4]
      358 MUL                              R56 R53 R39
      359 ADD                              R55 R56 R44
      360 POWK                             R47 R55 K60 [2]
      361 JUMP                             ; [+1]
      362 LOADNIL                          R47
      363 GETTABLE                         R55 R37 R53
      364 MOVE                             R56 R54
      365 LOADNIL                          R57
      366 LOADNIL                          R58
      367 FORGPREP                         R56
      368 JUMPIFNOT                        R41 ; [+5]
      369 MUL                              R63 R59 R39
      370 ADD                              R62 R63 R45
      371 POWK                             R61 R62 K60 [2]
      372 ADD                              R48 R47 R61
      373 JUMP                             ; [+1]
      374 LOADNIL                          R48
      375 GETTABLE                         R61 R55 R59
      376 MOVE                             R62 R60
      377 LOADNIL                          R63
      378 LOADNIL                          R64
      379 FORGPREP                         R62
      380 GETTABLE                         R67 R61 R65
      381 LOADN                            R68 1
      382 JUMPIFNOT                        R42 ; [+20]
      383 MUL                              R71 R65 R39
      384 ADD                              R70 R71 R46
      385 POWK                             R69 R70 K60 [2]
      386 JUMPIFNOT                        R41 ; [+6]
      387 ADD                              R71 R48 R69
      388 FASTCALL1                        MATH_SQRT R71 ; [+2]
      389 GETIMPORT                        R70 K63 [math.sqrt]
      391 CALL                             R70 1 1
      392 JUMP                             ; [+5]
      393 ADD                              R71 R47 R69
      394 FASTCALL1                        MATH_SQRT R71 ; [+2]
      395 GETIMPORT                        R70 K63 [math.sqrt]
      397 CALL                             R70 1 1
      398 GETUPVAL                         R71 13
      399 MOVE                             R72 R70
      400 MOVE                             R73 R35
      401 CALL                             R71 2 1
      402 MOVE                             R68 R71
      403 LOADN                            R69 0
      404 JUMPIFNOTLT                      R69 R68 ; [+45]
      406 JUMPIFNOT                        R9 ; [+2]
      407 JUMPIFEQ                         R67 R19 ; [+42]
      409 JUMPIFNOTEQKN                    R43 K64 [1] ; [+9]
      411 MOVE                             R71 R53
      412 MOVE                             R72 R59
      413 MOVE                             R73 R65
      414 MOVE                             R74 R17
      415 NAMECALL                         R69 R36 K65 ["paint"]
      417 CALL                             R69 5 0
      418 JUMP                             ; [+33]
      419 JUMPIFNOTEQKN                    R43 K60 [2] ; [+11]
      421 MOVE                             R71 R53
      422 MOVE                             R72 R59
      423 MOVE                             R73 R65
      424 MOVE                             R74 R17
      425 MOVE                             R75 R18
      426 MOVE                             R76 R9
      427 NAMECALL                         R69 R36 K66 ["replace"]
      429 CALL                             R69 7 0
      430 JUMP                             ; [+21]
      431 JUMPIFNOTEQKN                    R43 K67 [3] ; [+4]
      433 SETTABLE                         R66 R60 R65
      434 SETTABLE                         R12 R61 R65
      435 JUMP                             ; [+16]
      436 JUMPIFNOTEQKN                    R43 K68 [4] ; [+15]
      438 JUMPIFNOT                        R40 ; [+2]
      439 LOADN                            R69 1
      440 JUMP                             ; [+1]
      441 MOVE                             R69 R66
      442 SETTABLE                         R69 R60 R65
      443 JUMPIFNOTEQ                      R12 R67 ; [+3]
      445 MOVE                             R69 R13
      446 JUMP                             ; [+1]
      447 MOVE                             R69 R67
      448 SETTABLE                         R69 R61 R65
      449 JUMP                             ; [+2]
      450 SETTABLE                         R66 R60 R65
      451 SETTABLE                         R67 R61 R65
      452 FORGLOOP                         R62 2 ; [-73]
      454 FORGLOOP                         R56 2 ; [-87]
      456 FORGLOOP                         R50 2 ; [-100]
      458 GETUPVAL                         R52 14
      459 GETTABLEKS                       R52 R52 K69 ["NormalizeBrushTimer"]
      461 MOVE                             R53 R49
      462 MOVE                             R54 R6
      463 MOVE                             R55 R5
      464 CALL                             R52 3 -1
      465 NAMECALL                         R50 R1 K70 ["addTimeStatistic"]
      467 CALL                             R50 -1 0
      468 JUMPIFNOT                        R36 ; [+5]
      469 MOVE                             R52 R34
      470 NAMECALL                         R50 R36 K71 ["write"]
      472 CALL                             R50 2 0
      473 JUMP                             ; [+32]
      474 GETIMPORT                        R50 K34 [Enum.Material.Water]
      476 JUMPIFEQ                         R12 R50 ; [+5]
      478 GETIMPORT                        R50 K34 [Enum.Material.Water]
      480 JUMPIFNOTEQ                      R13 R50 ; [+13]
      482 GETUPVAL                         R50 6
      483 GETTABLEKS                       R50 R50 K23 ["Terrain"]
      485 MOVE                             R52 R34
      486 GETUPVAL                         R53 15
      487 GETTABLEKS                       R53 R53 K72 ["VoxelResolution"]
      489 GETIMPORT                        R54 K36 [Enum.Material.Air]
      491 NAMECALL                         R50 R50 K73 ["FillRegion"]
      493 CALL                             R50 4 0
      494 GETUPVAL                         R50 6
      495 GETTABLEKS                       R50 R50 K23 ["Terrain"]
      497 MOVE                             R52 R34
      498 GETUPVAL                         R53 15
      499 GETTABLEKS                       R53 R53 K72 ["VoxelResolution"]
      501 MOVE                             R54 R37
      502 MOVE                             R55 R38
      503 NAMECALL                         R50 R50 K74 ["WriteVoxels"]
      505 CALL                             R50 5 0
      506 NAMECALL                         R50 R1 K47 ["recordMaterialApplied"]
      508 CALL                             R50 1 0
      509 FORGLOOP                         R27 2 ; [-318]
      511 GETUPVAL                         R27 0
      512 GETTABLEKS                       R27 R27 K4 ["ProfileTools"]
      514 CALL                             R27 0 1
      515 JUMPIFNOT                        R27 ; [+3]
      516 GETIMPORT                        R27 K29 [debug.profileend]
      518 CALL                             R27 0 0
      519 LOADB                            R27 1
      520 LOADN                            R28 0
      521 RETURN                           R27 2

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
