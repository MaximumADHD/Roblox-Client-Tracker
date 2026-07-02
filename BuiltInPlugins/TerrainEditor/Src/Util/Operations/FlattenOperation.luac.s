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
       19 GETTABLEKS                       R8 R8 K6 ["FixedYPlane"]
       21 GETTABLE                         R7 R2 R8
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K7 ["FlattenPlane"]
       25 GETTABLE                         R8 R2 R9
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K8 ["State"]
       29 GETTABLE                         R9 R2 R10
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K9 ["Sphere"]
       33 JUMPIFNOTEQ                      R6 R12 ; [+3]
       35 MOVE                             R11 R5
       36 JUMP                             ; [+1]
       37 MOVE                             R11 R4
       38 GETUPVAL                         R12 3
       39 GETTABLEKS                       R12 R12 K10 ["VoxelResolution"]
       41 MUL                              R10 R11 R12
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K11 ["Auto"]
       45 JUMPIFNOTEQ                      R8 R12 ; [+11]
       47 GETUPVAL                         R11 5
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K12 ["PivotPosition"]
       51 GETTABLE                         R12 R2 R13
       52 GETTABLEKS                       R13 R9 K13 ["Position"]
       54 MOVE                             R14 R10
       55 CALL                             R11 3 1
       56 JUMP                             ; [+8]
       57 LOADN                            R12 0
       58 LOADN                            R14 0
       59 FASTCALL3                        VECTOR R12 R7 R14
       61 MOVE                             R13 R7
       62 GETIMPORT                        R11 K16 [Vector3.new]
       64 CALL                             R11 3 1
       65 DUPTABLE                         R12 K20 [{["Plane"] = {0, 1, 0}, ["PlanePosition"], ["Position"]}]
       66 SETTABLEKS                       R11 R12 K19 ["PlanePosition"]
       68 SETTABLEKS                       R11 R12 K13 ["Position"]
       70 SETTABLEKS                       R12 R0 K8 ["State"]
       72 RETURN                           R0 0

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
       15 LOADK                            R3 K8 ["Flatten"]
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
       38 GETTABLEKS                       R9 R9 K15 ["FlattenMode"]
       40 GETTABLE                         R8 R3 R9
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K16 ["IgnoreWater"]
       44 GETTABLE                         R9 R3 R10
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K17 ["Strength"]
       48 GETTABLE                         R10 R3 R11
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K0 ["State"]
       52 GETTABLE                         R11 R3 R12
       53 LOADB                            R12 1
       54 GETUPVAL                         R13 3
       55 GETTABLEKS                       R13 R13 K18 ["Grow"]
       57 JUMPIFEQ                         R8 R13 ; [+8]
       59 GETUPVAL                         R13 3
       60 GETTABLEKS                       R13 R13 K19 ["Both"]
       62 JUMPIFEQ                         R8 R13 ; [+2]
       64 LOADB                            R12 0 +1
       65 LOADB                            R12 1
       66 LOADB                            R13 1
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K20 ["Erode"]
       70 JUMPIFEQ                         R8 R14 ; [+8]
       72 GETUPVAL                         R14 3
       73 GETTABLEKS                       R14 R14 K19 ["Both"]
       75 JUMPIFEQ                         R8 R14 ; [+2]
       77 LOADB                            R13 0 +1
       78 LOADB                            R13 1
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R16 R16 K21 ["Sphere"]
       82 JUMPIFNOTEQ                      R7 R16 ; [+3]
       84 MOVE                             R15 R6
       85 JUMP                             ; [+1]
       86 MOVE                             R15 R5
       87 GETUPVAL                         R16 5
       88 GETTABLEKS                       R16 R16 K22 ["VoxelResolution"]
       90 MUL                              R14 R15 R16
       91 GETUPVAL                         R16 5
       92 GETTABLEKS                       R16 R16 K22 ["VoxelResolution"]
       94 MUL                              R15 R6 R16
       95 MULK                             R16 R15 K23 [0.5]
       96 GETTABLEKS                       R17 R2 K24 ["PlanePosition"]
       98 GETUPVAL                         R18 6
       99 GETUPVAL                         R20 2
      100 GETTABLEKS                       R20 R20 K25 ["PivotPosition"]
      102 GETTABLE                         R19 R3 R20
      103 GETTABLEKS                       R20 R11 K26 ["Position"]
      105 MOVE                             R21 R14
      106 CALL                             R18 3 1
      107 GETUPVAL                         R19 7
      108 GETTABLEKS                       R20 R2 K26 ["Position"]
      110 MOVE                             R21 R18
      111 MOVE                             R22 R16
      112 CALL                             R19 3 1
      113 LENGTH                           R21 R19
      114 GETTABLE                         R20 R19 R21
      115 SETTABLEKS                       R20 R2 K26 ["Position"]
      117 GETUPVAL                         R20 8
      118 MOVE                             R21 R18
      119 MOVE                             R22 R16
      120 MOVE                             R23 R14
      121 CALL                             R20 3 2
      122 MOVE                             R22 R19
      123 LOADNIL                          R23
      124 LOADNIL                          R24
      125 FORGPREP                         R22
      126 GETIMPORT                        R27 K29 [Region3.new]
      128 MOVE                             R28 R20
      129 MOVE                             R29 R21
      130 CALL                             R27 2 1
      131 GETTABLEKS                       R30 R21 K30 ["X"]
      133 GETTABLEKS                       R31 R20 K30 ["X"]
      135 SUB                              R29 R30 R31
      136 MULK                             R28 R29 K23 [0.5]
      137 GETUPVAL                         R29 9
      138 GETTABLEKS                       R29 R29 K31 ["Terrain"]
      140 MOVE                             R31 R27
      141 GETUPVAL                         R32 5
      142 GETTABLEKS                       R32 R32 K22 ["VoxelResolution"]
      144 NAMECALL                         R29 R29 K32 ["ReadVoxels"]
      146 CALL                             R29 3 2
      147 LOADNIL                          R31
      148 SETTABLEKS                       R31 R30 K13 ["Size"]
      150 LOADNIL                          R31
      151 SETTABLEKS                       R31 R29 K13 ["Size"]
      153 GETUPVAL                         R31 9
      154 GETTABLEKS                       R31 R31 K31 ["Terrain"]
      156 MOVE                             R33 R27
      157 GETUPVAL                         R34 5
      158 GETTABLEKS                       R34 R34 K22 ["VoxelResolution"]
      160 NAMECALL                         R31 R31 K32 ["ReadVoxels"]
      162 CALL                             R31 3 2
      163 LENGTH                           R33 R29
      164 GETTABLEN                        R35 R29 1
      165 LENGTH                           R34 R35
      166 GETTABLEN                        R37 R29 1
      167 GETTABLEN                        R36 R37 1
      168 LENGTH                           R35 R36
      169 GETTABLEKS                       R41 R17 K34 ["Y"]
      171 GETTABLEKS                       R42 R20 K34 ["Y"]
      173 SUB                              R40 R41 R42
      174 GETUPVAL                         R41 5
      175 GETTABLEKS                       R41 R41 K22 ["VoxelResolution"]
      177 DIV                              R39 R40 R41
      178 FASTCALL1                        MATH_FLOOR R39 ; [+2]
      179 GETIMPORT                        R38 K37 [math.floor]
      181 CALL                             R38 1 1
      182 ADDK                             R37 R38 K33 [1]
      183 LOADN                            R38 1
      184 FASTCALL3                        MATH_CLAMP R37 R38 R34
      186 MOVE                             R39 R34
      187 GETIMPORT                        R36 K39 [math.clamp]
      189 CALL                             R36 3 1
      190 GETTABLEKS                       R40 R17 K34 ["Y"]
      192 GETUPVAL                         R41 5
      193 GETTABLEKS                       R41 R41 K22 ["VoxelResolution"]
      195 DIV                              R39 R40 R41
      196 FASTCALL1                        MATH_FLOOR R39 ; [+2]
      197 GETIMPORT                        R38 K37 [math.floor]
      199 CALL                             R38 1 1
      200 GETTABLEKS                       R40 R17 K34 ["Y"]
      202 GETUPVAL                         R41 5
      203 GETTABLEKS                       R41 R41 K22 ["VoxelResolution"]
      205 DIV                              R39 R40 R41
      206 SUB                              R37 R38 R39
      207 MULK                             R39 R37 K40 [256]
      208 FASTCALL1                        MATH_FLOOR R39 ; [+2]
      209 GETIMPORT                        R38 K37 [math.floor]
      211 CALL                             R38 1 1
      212 DIVK                             R37 R38 K40 [256]
      213 LOADB                            R38 0
      214 GETUPVAL                         R39 4
      215 GETTABLEKS                       R39 R39 K21 ["Sphere"]
      217 JUMPIFNOTEQ                      R7 R39 ; [+6]
      219 LOADN                            R39 2
      220 JUMPIFLT                         R39 R6 ; [+2]
      222 LOADB                            R38 0 +1
      223 LOADB                            R38 1
      224 GETUPVAL                         R40 4
      225 GETTABLEKS                       R40 R40 K41 ["Cylinder"]
      227 JUMPIFNOTEQ                      R7 R40 ; [+5]
      229 LOADB                            R39 1
      230 LOADN                            R40 2
      231 JUMPIFLT                         R40 R6 ; [+2]
      233 MOVE                             R39 R38
      234 GETTABLEKS                       R42 R20 K30 ["X"]
      236 GETUPVAL                         R44 10
      237 MULK                             R43 R44 K23 [0.5]
      238 SUB                              R41 R42 R43
      239 GETTABLEKS                       R42 R26 K30 ["X"]
      241 SUB                              R40 R41 R42
      242 GETTABLEKS                       R43 R20 K34 ["Y"]
      244 GETUPVAL                         R45 10
      245 MULK                             R44 R45 K23 [0.5]
      246 SUB                              R42 R43 R44
      247 GETTABLEKS                       R43 R26 K34 ["Y"]
      249 SUB                              R41 R42 R43
      250 GETTABLEKS                       R44 R20 K42 ["Z"]
      252 GETUPVAL                         R46 10
      253 MULK                             R45 R46 K23 [0.5]
      254 SUB                              R43 R44 R45
      255 GETTABLEKS                       R44 R26 K42 ["Z"]
      257 SUB                              R42 R43 R44
      258 LOADNIL                          R43
      259 LOADNIL                          R44
      260 LOADNIL                          R45
      261 GETIMPORT                        R46 K45 [os.clock]
      263 CALL                             R46 0 1
      264 LOADN                            R49 1
      265 MOVE                             R47 R33
      266 LOADN                            R48 1
      267 FORNPREP                         R47
      268 JUMPIFNOT                        R39 ; [+6]
      269 GETUPVAL                         R52 5
      270 GETTABLEKS                       R52 R52 K22 ["VoxelResolution"]
      272 MUL                              R51 R49 R52
      273 ADD                              R50 R51 R40
      274 POWK                             R43 R50 K46 [2]
      275 GETTABLE                         R50 R30 R49
      276 GETTABLE                         R51 R29 R49
      277 GETTABLE                         R52 R32 R49
      278 GETTABLE                         R53 R31 R49
      279 LOADN                            R56 1
      280 MOVE                             R54 R35
      281 LOADN                            R55 1
      282 FORNPREP                         R54
      283 LOADN                            R57 1
      284 JUMPIFNOT                        R39 ; [+17]
      285 GETUPVAL                         R60 5
      286 GETTABLEKS                       R60 R60 K22 ["VoxelResolution"]
      288 MUL                              R59 R56 R60
      289 ADD                              R58 R59 R42
      290 POWK                             R44 R58 K46 [2]
      291 ADD                              R59 R43 R44
      292 FASTCALL1                        MATH_SQRT R59 ; [+2]
      293 GETIMPORT                        R58 K48 [math.sqrt]
      295 CALL                             R58 1 1
      296 MOVE                             R45 R58
      297 GETUPVAL                         R58 11
      298 MOVE                             R59 R45
      299 MOVE                             R60 R28
      300 CALL                             R58 2 1
      301 MOVE                             R57 R58
      302 MUL                              R61 R57 R10
      303 MULK                             R60 R61 K49 [0.25]
      304 FASTCALL1                        MATH_LOG R6 ; [+3]
      305 MOVE                             R63 R6
      306 GETIMPORT                        R62 K52 [math.log]
      308 CALL                             R62 1 1
      309 DIVK                             R61 R62 K50 [8]
      310 MUL                              R59 R60 R61
      311 GETUPVAL                         R60 5
      312 GETTABLEKS                       R60 R60 K53 ["MinimumOccupancy"]
      314 FASTCALL2                        MATH_MAX R59 R60 ; [+3]
      316 GETIMPORT                        R58 K55 [math.max]
      318 CALL                             R58 2 1
      319 MUL                              R62 R57 R10
      320 MULK                             R61 R62 K49 [0.25]
      321 FASTCALL1                        MATH_LOG R6 ; [+3]
      322 MOVE                             R64 R6
      323 GETIMPORT                        R63 K52 [math.log]
      325 CALL                             R63 1 1
      326 DIVK                             R62 R63 K50 [8]
      327 MUL                              R60 R61 R62
      328 GETUPVAL                         R61 5
      329 GETTABLEKS                       R61 R61 K53 ["MinimumOccupancy"]
      331 FASTCALL2                        MATH_MAX R60 R61 ; [+3]
      333 GETIMPORT                        R59 K55 [math.max]
      335 CALL                             R59 2 1
      336 LOADB                            R60 0
      337 JUMPIFNOT                        R12 ; [+78]
      338 LOADN                            R63 1
      339 MOVE                             R61 R36
      340 LOADN                            R62 1
      341 FORNPREP                         R61
      342 GETTABLE                         R65 R50 R63
      343 GETTABLE                         R64 R65 R56
      344 GETTABLE                         R66 R51 R63
      345 GETTABLE                         R65 R66 R56
      346 LOADN                            R66 1
      347 JUMPIFNOT                        R39 ; [+20]
      348 JUMPIFNOT                        R38 ; [+13]
      349 ADD                              R69 R43 R44
      350 GETUPVAL                         R73 5
      351 GETTABLEKS                       R73 R73 K22 ["VoxelResolution"]
      353 MUL                              R72 R63 R73
      354 ADD                              R71 R72 R41
      355 POWK                             R70 R71 K46 [2]
      356 ADD                              R68 R69 R70
      357 FASTCALL1                        MATH_SQRT R68 ; [+2]
      358 GETIMPORT                        R67 K48 [math.sqrt]
      360 CALL                             R67 1 1
      361 JUMP                             ; [+1]
      362 MOVE                             R67 R45
      363 GETUPVAL                         R68 12
      364 MOVE                             R69 R67
      365 MOVE                             R70 R28
      366 CALL                             R68 2 1
      367 MOVE                             R66 R68
      368 LOADN                            R67 0
      369 JUMPIFLE                         R66 R67 ; [+45]
      371 JUMPIFNOTEQKN                    R64 K56 [0] ; [+3]
      373 JUMPIF                           R60 ; [+1]
      374 JUMP                             ; [+40]
      375 LOADB                            R60 1
      376 JUMPIFEQKN                       R64 K33 [1] ; [+38]
      378 ADD                              R67 R64 R58
      379 LOADN                            R68 1
      380 JUMPIFNOTLT                      R68 R67 ; [+4]
      382 SUBK                             R58 R67 K33 [1]
      383 LOADN                            R67 1
      384 JUMP                             ; [+1]
      385 LOADN                            R58 0
      386 JUMPIFNOTEQ                      R63 R36 ; [+4]
      388 JUMPIFNOTLT                      R37 R67 ; [+2]
      390 MOVE                             R67 R37
      391 JUMPIFNOTEQKN                    R64 K56 [0] ; [+9]
      393 LOADN                            R68 1
      394 JUMPIFNOTLT                      R68 R63 ; [+6]
      396 GETTABLE                         R69 R29 R49
      397 SUBK                             R70 R63 K33 [1]
      398 GETTABLE                         R68 R69 R70
      399 GETTABLE                         R65 R68 R56
      400 JUMP                             ; [0]
      401 JUMPIFNOT                        R9 ; [+4]
      402 GETIMPORT                        R68 K60 [Enum.Material.Water]
      404 JUMPIFEQ                         R65 R68 ; [+11]
      406 JUMPIFNOT                        R65 ; [+9]
      407 JUMPIFEQ                         R64 R67 ; [+8]
      409 GETTABLE                         R68 R52 R63
      410 SETTABLE                         R67 R68 R56
      411 GETTABLE                         R68 R53 R63
      412 SETTABLE                         R65 R68 R56
      413 JUMPIFEQKN                       R58 K56 [0] ; [+2]
      415 FORNLOOP                         R61
      416 LOADB                            R61 0
      417 JUMPIFNOT                        R13 ; [+69]
      418 MOVE                             R64 R34
      419 MOVE                             R62 R36
      420 LOADN                            R63 -1
      421 FORNPREP                         R62
      422 GETTABLE                         R66 R50 R64
      423 GETTABLE                         R65 R66 R56
      424 GETTABLE                         R67 R51 R64
      425 GETTABLE                         R66 R67 R56
      426 LOADN                            R67 1
      427 JUMPIFNOT                        R39 ; [+20]
      428 JUMPIFNOT                        R38 ; [+13]
      429 ADD                              R70 R43 R44
      430 GETUPVAL                         R74 5
      431 GETTABLEKS                       R74 R74 K22 ["VoxelResolution"]
      433 MUL                              R73 R64 R74
      434 ADD                              R72 R73 R41
      435 POWK                             R71 R72 K46 [2]
      436 ADD                              R69 R70 R71
      437 FASTCALL1                        MATH_SQRT R69 ; [+2]
      438 GETIMPORT                        R68 K48 [math.sqrt]
      440 CALL                             R68 1 1
      441 JUMP                             ; [+1]
      442 MOVE                             R68 R45
      443 GETUPVAL                         R69 12
      444 MOVE                             R70 R68
      445 MOVE                             R71 R28
      446 CALL                             R69 2 1
      447 MOVE                             R67 R69
      448 LOADN                            R68 0
      449 JUMPIFLE                         R67 R68 ; [+36]
      451 JUMPIFNOTEQKN                    R65 K33 [1] ; [+3]
      453 JUMPIF                           R61 ; [+1]
      454 JUMP                             ; [+31]
      455 LOADB                            R61 1
      456 JUMPIFEQKN                       R65 K56 [0] ; [+29]
      458 SUB                              R68 R65 R59
      459 LOADN                            R69 0
      460 JUMPIFNOTLT                      R68 R69 ; [+4]
      462 MINUS                            R59 R68
      463 LOADN                            R68 0
      464 JUMP                             ; [+1]
      465 LOADN                            R59 0
      466 JUMPIFNOTEQ                      R64 R36 ; [+4]
      468 JUMPIFNOTLT                      R68 R37 ; [+2]
      470 MOVE                             R68 R37
      471 JUMPIFNOTEQKN                    R68 K56 [0] ; [+3]
      473 GETIMPORT                        R66 K62 [Enum.Material.Air]
      475 JUMPIFNOT                        R9 ; [+4]
      476 GETIMPORT                        R69 K60 [Enum.Material.Water]
      478 JUMPIFEQ                         R66 R69 ; [+8]
      480 GETTABLE                         R69 R52 R64
      481 SETTABLE                         R68 R69 R56
      482 GETTABLE                         R69 R53 R64
      483 SETTABLE                         R66 R69 R56
      484 JUMPIFEQKN                       R59 K56 [0] ; [+2]
      486 FORNLOOP                         R62
      487 FORNLOOP                         R54
      488 FORNLOOP                         R47
      489 GETUPVAL                         R49 13
      490 GETTABLEKS                       R49 R49 K63 ["NormalizeBrushTimer"]
      492 MOVE                             R50 R46
      493 MOVE                             R51 R6
      494 MOVE                             R52 R5
      495 CALL                             R49 3 -1
      496 NAMECALL                         R47 R1 K64 ["addTimeStatistic"]
      498 CALL                             R47 -1 0
      499 GETUPVAL                         R47 9
      500 GETTABLEKS                       R47 R47 K31 ["Terrain"]
      502 MOVE                             R49 R27
      503 GETUPVAL                         R50 5
      504 GETTABLEKS                       R50 R50 K22 ["VoxelResolution"]
      506 MOVE                             R51 R31
      507 MOVE                             R52 R32
      508 NAMECALL                         R47 R47 K65 ["WriteVoxels"]
      510 CALL                             R47 5 0
      511 FORGLOOP                         R22 2 ; [-386]
      513 GETUPVAL                         R22 0
      514 GETTABLEKS                       R22 R22 K4 ["ProfileTools"]
      516 CALL                             R22 0 1
      517 JUMPIFNOT                        R22 ; [+3]
      518 GETIMPORT                        R22 K67 [debug.profileend]
      520 CALL                             R22 0 0
      521 LOADB                            R22 1
      522 LOADN                            R23 0
      523 RETURN                           R22 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ChangeHistoryService"]
        3 LOADK                            R2 K1 ["Flatten"]
        4 NAMECALL                         R0 R0 K2 ["SetWaypoint"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          VAL R1
       24 GETUPVAL                         R5 14
       25 GETTABLEKS                       R5 R5 K1 ["new"]
       27 DUPTABLE                         R6 K8 [{["Budget"] = 0.0005, ["Name"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
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
       34 GETTABLEKS                       R6 R2 K13 ["CalculateBrushOccupancy"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R2 K14 ["CalculateMagnitudePercent"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R2 K15 ["ClampVoxelBoundaries"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R2 K16 ["ConvertForPivot"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R2 K17 ["DebugFlags"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R2 K18 ["getDraggedPositions"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K6 ["Src"]
       66 GETTABLEKS                       R12 R12 K19 ["Types"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R11 K20 ["BrushShape"]
       71 GETTABLEKS                       R13 R11 K21 ["BrushSettings"]
       73 GETTABLEKS                       R14 R11 K22 ["Category"]
       75 GETTABLEKS                       R15 R11 K23 ["FlattenMode"]
       77 GETTABLEKS                       R16 R11 K24 ["FlattenPlane"]
       79 GETTABLEKS                       R17 R1 K25 ["VoxelResolution"]
       81 DUPCLOSURE                       R18 K26 [PROTO_3]
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 RETURN                           R18 1
