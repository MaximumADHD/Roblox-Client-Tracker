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
       83 JUMPIFNOT                        R16 ; [+29]
       84 MOVE                             R19 R14
       85 NAMECALL                         R17 R16 K24 ["isMaterialValid"]
       87 CALL                             R17 2 1
       88 JUMPIFNOT                        R17 ; [+10]
       89 GETUPVAL                         R17 7
       90 GETTABLEKS                       R17 R17 K25 ["Replace"]
       92 JUMPIFNOTEQ                      R11 R17 ; [+20]
       94 MOVE                             R19 R15
       95 NAMECALL                         R17 R16 K24 ["isMaterialValid"]
       97 CALL                             R17 2 1
       98 JUMPIF                           R17 ; [+14]
       99 NAMECALL                         R17 R1 K26 ["skipBudget"]
      101 CALL                             R17 1 0
      102 GETUPVAL                         R17 0
      103 GETTABLEKS                       R17 R17 K4 ["ProfileTools"]
      105 CALL                             R17 0 1
      106 JUMPIFNOT                        R17 ; [+3]
      107 GETIMPORT                        R17 K28 [debug.profileend]
      109 CALL                             R17 0 0
      110 LOADB                            R17 1
      111 LOADN                            R18 0
      112 RETURN                           R17 2
      113 JUMPIFNOT                        R16 ; [+2]
      114 MOVE                             R17 R14
      115 JUMP                             ; [+1]
      116 MOVE                             R17 R12
      117 JUMPIFNOT                        R16 ; [+2]
      118 MOVE                             R18 R15
      119 JUMP                             ; [+1]
      120 MOVE                             R18 R13
      121 JUMPIFNOT                        R16 ; [+3]
      122 GETTABLEKS                       R19 R16 K29 ["water"]
      124 JUMP                             ; [+2]
      125 GETIMPORT                        R19 K33 [Enum.Material.Water]
      127 GETTABLEKS                       R20 R8 K31 ["Material"]
      129 GETIMPORT                        R21 K35 [Enum.Material.Air]
      131 JUMPIFNOTEQ                      R20 R21 ; [+7]
      133 NAMECALL                         R20 R1 K26 ["skipBudget"]
      135 CALL                             R20 1 0
      136 LOADB                            R20 1
      137 LOADN                            R21 0
      138 RETURN                           R20 2
      139 GETUPVAL                         R22 8
      140 GETTABLEKS                       R22 R22 K36 ["Sphere"]
      142 JUMPIFNOTEQ                      R7 R22 ; [+3]
      144 MOVE                             R21 R6
      145 JUMP                             ; [+1]
      146 MOVE                             R21 R5
      147 GETUPVAL                         R22 9
      148 MUL                              R20 R21 R22
      149 GETUPVAL                         R22 9
      150 MUL                              R21 R6 R22
      151 MULK                             R22 R21 K37 [0.5]
      152 GETUPVAL                         R23 10
      153 GETUPVAL                         R25 2
      154 GETTABLEKS                       R25 R25 K38 ["PivotPosition"]
      156 GETTABLE                         R24 R3 R25
      157 GETTABLEKS                       R25 R8 K39 ["Position"]
      159 MOVE                             R26 R20
      160 CALL                             R23 3 1
      161 GETUPVAL                         R24 11
      162 GETTABLEKS                       R25 R2 K39 ["Position"]
      164 MOVE                             R26 R23
      165 MOVE                             R27 R22
      166 CALL                             R24 3 1
      167 LENGTH                           R26 R24
      168 GETTABLE                         R25 R24 R26
      169 SETTABLEKS                       R25 R2 K39 ["Position"]
      171 GETUPVAL                         R26 7
      172 GETTABLEKS                       R26 R26 K40 ["Paint"]
      174 JUMPIFEQ                         R11 R26 ; [+2]
      176 LOADB                            R25 0 +1
      177 LOADB                            R25 1
      178 GETUPVAL                         R27 7
      179 GETTABLEKS                       R27 R27 K25 ["Replace"]
      181 JUMPIFEQ                         R11 R27 ; [+2]
      183 LOADB                            R26 0 +1
      184 LOADB                            R26 1
      185 MOVE                             R27 R24
      186 LOADNIL                          R28
      187 LOADNIL                          R29
      188 FORGPREP                         R27
      189 GETTABLEKS                       R32 R2 K41 ["LastPosition"]
      191 JUMPIFNOTEQ                      R31 R32 ; [+15]
      193 NAMECALL                         R32 R1 K26 ["skipBudget"]
      195 CALL                             R32 1 0
      196 GETUPVAL                         R32 0
      197 GETTABLEKS                       R32 R32 K4 ["ProfileTools"]
      199 CALL                             R32 0 1
      200 JUMPIFNOT                        R32 ; [+3]
      201 GETIMPORT                        R32 K28 [debug.profileend]
      203 CALL                             R32 0 0
      204 LOADB                            R32 1
      205 LOADN                            R33 0
      206 RETURN                           R32 2
      207 SETTABLEKS                       R31 R2 K41 ["LastPosition"]
      209 GETUPVAL                         R32 12
      210 MOVE                             R33 R31
      211 MOVE                             R34 R22
      212 MOVE                             R35 R20
      213 CALL                             R32 3 2
      214 GETIMPORT                        R34 K43 [Region3.new]
      216 MOVE                             R35 R32
      217 MOVE                             R36 R33
      218 CALL                             R34 2 1
      219 JUMPIF                           R16 ; [+17]
      220 GETUPVAL                         R35 8
      221 GETTABLEKS                       R35 R35 K44 ["Cube"]
      223 JUMPIFNOTEQ                      R7 R35 ; [+13]
      225 JUMPIFNOT                        R26 ; [+11]
      226 GETUPVAL                         R35 6
      227 GETTABLEKS                       R35 R35 K23 ["Terrain"]
      229 MOVE                             R37 R34
      230 GETUPVAL                         R38 9
      231 MOVE                             R39 R12
      232 MOVE                             R40 R13
      233 NAMECALL                         R35 R35 K45 ["ReplaceMaterial"]
      235 CALL                             R35 5 0
      236 JUMP                             ; [+263]
      237 GETTABLEKS                       R37 R33 K46 ["X"]
      239 GETTABLEKS                       R38 R32 K46 ["X"]
      241 SUB                              R36 R37 R38
      242 MULK                             R35 R36 K37 [0.5]
      243 JUMPIFNOT                        R16 ; [+5]
      244 MOVE                             R38 R34
      245 NAMECALL                         R36 R16 K47 ["readRegion"]
      247 CALL                             R36 2 1
      248 JUMP                             ; [+1]
      249 LOADNIL                          R36
      250 LOADNIL                          R37
      251 LOADNIL                          R38
      252 JUMPIFNOT                        R36 ; [+5]
      253 GETTABLEKS                       R37 R36 K48 ["materials"]
      255 GETTABLEKS                       R38 R36 K49 ["occupancies"]
      257 JUMP                             ; [+10]
      258 GETUPVAL                         R39 6
      259 GETTABLEKS                       R39 R39 K23 ["Terrain"]
      261 MOVE                             R41 R34
      262 GETUPVAL                         R42 9
      263 NAMECALL                         R39 R39 K50 ["ReadVoxels"]
      265 CALL                             R39 3 2
      266 MOVE                             R37 R39
      267 MOVE                             R38 R40
      268 LOADNIL                          R39
      269 SETTABLEKS                       R39 R37 K13 ["Size"]
      271 LOADNIL                          R39
      272 SETTABLEKS                       R39 R38 K13 ["Size"]
      274 GETUPVAL                         R39 9
      275 JUMPIFNOT                        R16 ; [+3]
      276 GETTABLEKS                       R41 R16 K51 ["air"]
      278 JUMP                             ; [+2]
      279 GETIMPORT                        R41 K35 [Enum.Material.Air]
      281 JUMPIFEQ                         R17 R41 ; [+2]
      283 LOADB                            R40 0 +1
      284 LOADB                            R40 1
      285 LOADB                            R41 0
      286 GETUPVAL                         R42 8
      287 GETTABLEKS                       R42 R42 K36 ["Sphere"]
      289 JUMPIFNOTEQ                      R7 R42 ; [+6]
      291 LOADN                            R42 2
      292 JUMPIFLT                         R42 R6 ; [+2]
      294 LOADB                            R41 0 +1
      295 LOADB                            R41 1
      296 GETUPVAL                         R43 8
      297 GETTABLEKS                       R43 R43 K52 ["Cylinder"]
      299 JUMPIFNOTEQ                      R7 R43 ; [+5]
      301 LOADB                            R42 1
      302 LOADN                            R43 2
      303 JUMPIFLT                         R43 R6 ; [+2]
      305 MOVE                             R42 R41
      306 JUMPIFNOT                        R36 ; [+3]
      307 JUMPIFNOT                        R25 ; [+2]
      308 LOADN                            R43 1
      309 JUMP                             ; [+11]
      310 JUMPIFNOT                        R36 ; [+3]
      311 JUMPIFNOT                        R26 ; [+2]
      312 LOADN                            R43 2
      313 JUMP                             ; [+7]
      314 JUMPIFNOT                        R25 ; [+2]
      315 LOADN                            R43 3
      316 JUMP                             ; [+4]
      317 JUMPIFNOT                        R26 ; [+2]
      318 LOADN                            R43 4
      319 JUMP                             ; [+1]
      320 LOADN                            R43 0
      321 GETTABLEKS                       R46 R32 K46 ["X"]
      323 MULK                             R47 R39 K37 [0.5]
      324 SUB                              R45 R46 R47
      325 GETTABLEKS                       R46 R31 K46 ["X"]
      327 SUB                              R44 R45 R46
      328 GETTABLEKS                       R47 R32 K53 ["Y"]
      330 MULK                             R48 R39 K37 [0.5]
      331 SUB                              R46 R47 R48
      332 GETTABLEKS                       R47 R31 K53 ["Y"]
      334 SUB                              R45 R46 R47
      335 GETTABLEKS                       R48 R32 K54 ["Z"]
      337 MULK                             R49 R39 K37 [0.5]
      338 SUB                              R47 R48 R49
      339 GETTABLEKS                       R48 R31 K54 ["Z"]
      341 SUB                              R46 R47 R48
      342 LOADNIL                          R47
      343 LOADNIL                          R48
      344 GETIMPORT                        R49 K57 [os.clock]
      346 CALL                             R49 0 1
      347 MOVE                             R50 R38
      348 LOADNIL                          R51
      349 LOADNIL                          R52
      350 FORGPREP                         R50
      351 JUMPIFNOT                        R42 ; [+4]
      352 MUL                              R56 R53 R39
      353 ADD                              R55 R56 R44
      354 POWK                             R47 R55 K58 [2]
      355 JUMP                             ; [+1]
      356 LOADNIL                          R47
      357 GETTABLE                         R55 R37 R53
      358 MOVE                             R56 R54
      359 LOADNIL                          R57
      360 LOADNIL                          R58
      361 FORGPREP                         R56
      362 JUMPIFNOT                        R41 ; [+5]
      363 MUL                              R63 R59 R39
      364 ADD                              R62 R63 R45
      365 POWK                             R61 R62 K58 [2]
      366 ADD                              R48 R47 R61
      367 JUMP                             ; [+1]
      368 LOADNIL                          R48
      369 GETTABLE                         R61 R55 R59
      370 MOVE                             R62 R60
      371 LOADNIL                          R63
      372 LOADNIL                          R64
      373 FORGPREP                         R62
      374 GETTABLE                         R67 R61 R65
      375 LOADN                            R68 1
      376 JUMPIFNOT                        R42 ; [+20]
      377 MUL                              R71 R65 R39
      378 ADD                              R70 R71 R46
      379 POWK                             R69 R70 K58 [2]
      380 JUMPIFNOT                        R41 ; [+6]
      381 ADD                              R71 R48 R69
      382 FASTCALL1                        MATH_SQRT R71 ; [+2]
      383 GETIMPORT                        R70 K61 [math.sqrt]
      385 CALL                             R70 1 1
      386 JUMP                             ; [+5]
      387 ADD                              R71 R47 R69
      388 FASTCALL1                        MATH_SQRT R71 ; [+2]
      389 GETIMPORT                        R70 K61 [math.sqrt]
      391 CALL                             R70 1 1
      392 GETUPVAL                         R71 13
      393 MOVE                             R72 R70
      394 MOVE                             R73 R35
      395 CALL                             R71 2 1
      396 MOVE                             R68 R71
      397 LOADN                            R69 0
      398 JUMPIFNOTLT                      R69 R68 ; [+45]
      400 JUMPIFNOT                        R9 ; [+2]
      401 JUMPIFEQ                         R67 R19 ; [+42]
      403 JUMPIFNOTEQKN                    R43 K62 [1] ; [+9]
      405 MOVE                             R71 R53
      406 MOVE                             R72 R59
      407 MOVE                             R73 R65
      408 MOVE                             R74 R17
      409 NAMECALL                         R69 R36 K63 ["paint"]
      411 CALL                             R69 5 0
      412 JUMP                             ; [+33]
      413 JUMPIFNOTEQKN                    R43 K58 [2] ; [+11]
      415 MOVE                             R71 R53
      416 MOVE                             R72 R59
      417 MOVE                             R73 R65
      418 MOVE                             R74 R17
      419 MOVE                             R75 R18
      420 MOVE                             R76 R9
      421 NAMECALL                         R69 R36 K64 ["replace"]
      423 CALL                             R69 7 0
      424 JUMP                             ; [+21]
      425 JUMPIFNOTEQKN                    R43 K65 [3] ; [+4]
      427 SETTABLE                         R66 R60 R65
      428 SETTABLE                         R12 R61 R65
      429 JUMP                             ; [+16]
      430 JUMPIFNOTEQKN                    R43 K66 [4] ; [+15]
      432 JUMPIFNOT                        R40 ; [+2]
      433 LOADN                            R69 1
      434 JUMP                             ; [+1]
      435 MOVE                             R69 R66
      436 SETTABLE                         R69 R60 R65
      437 JUMPIFNOTEQ                      R12 R67 ; [+3]
      439 MOVE                             R69 R13
      440 JUMP                             ; [+1]
      441 MOVE                             R69 R67
      442 SETTABLE                         R69 R61 R65
      443 JUMP                             ; [+2]
      444 SETTABLE                         R66 R60 R65
      445 SETTABLE                         R67 R61 R65
      446 FORGLOOP                         R62 2 ; [-73]
      448 FORGLOOP                         R56 2 ; [-87]
      450 FORGLOOP                         R50 2 ; [-100]
      452 GETUPVAL                         R52 14
      453 GETTABLEKS                       R52 R52 K67 ["NormalizeBrushTimer"]
      455 MOVE                             R53 R49
      456 MOVE                             R54 R6
      457 MOVE                             R55 R5
      458 CALL                             R52 3 -1
      459 NAMECALL                         R50 R1 K68 ["addTimeStatistic"]
      461 CALL                             R50 -1 0
      462 JUMPIFNOT                        R36 ; [+5]
      463 MOVE                             R52 R34
      464 NAMECALL                         R50 R36 K69 ["write"]
      466 CALL                             R50 2 0
      467 JUMP                             ; [+32]
      468 GETIMPORT                        R50 K33 [Enum.Material.Water]
      470 JUMPIFEQ                         R12 R50 ; [+5]
      472 GETIMPORT                        R50 K33 [Enum.Material.Water]
      474 JUMPIFNOTEQ                      R13 R50 ; [+13]
      476 GETUPVAL                         R50 6
      477 GETTABLEKS                       R50 R50 K23 ["Terrain"]
      479 MOVE                             R52 R34
      480 GETUPVAL                         R53 15
      481 GETTABLEKS                       R53 R53 K70 ["VoxelResolution"]
      483 GETIMPORT                        R54 K35 [Enum.Material.Air]
      485 NAMECALL                         R50 R50 K71 ["FillRegion"]
      487 CALL                             R50 4 0
      488 GETUPVAL                         R50 6
      489 GETTABLEKS                       R50 R50 K23 ["Terrain"]
      491 MOVE                             R52 R34
      492 GETUPVAL                         R53 15
      493 GETTABLEKS                       R53 R53 K70 ["VoxelResolution"]
      495 MOVE                             R54 R37
      496 MOVE                             R55 R38
      497 NAMECALL                         R50 R50 K72 ["WriteVoxels"]
      499 CALL                             R50 5 0
      500 FORGLOOP                         R27 2 ; [-312]
      502 GETUPVAL                         R27 0
      503 GETTABLEKS                       R27 R27 K4 ["ProfileTools"]
      505 CALL                             R27 0 1
      506 JUMPIFNOT                        R27 ; [+3]
      507 GETIMPORT                        R27 K28 [debug.profileend]
      509 CALL                             R27 0 0
      510 LOADB                            R27 1
      511 LOADN                            R28 0
      512 RETURN                           R27 2

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
