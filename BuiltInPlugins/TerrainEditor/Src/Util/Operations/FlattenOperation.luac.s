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
       79 GETUPVAL                         R15 4
       80 CALL                             R15 0 1
       81 JUMPIFNOT                        R15 ; [+8]
       82 GETUPVAL                         R14 5
       83 GETTABLEKS                       R14 R14 K21 ["new"]
       85 GETUPVAL                         R15 6
       86 GETTABLEKS                       R15 R15 K22 ["Terrain"]
       88 CALL                             R14 1 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R14
       91 JUMPIFNOT                        R14 ; [+3]
       92 GETTABLEKS                       R15 R14 K23 ["air"]
       94 JUMP                             ; [+2]
       95 GETIMPORT                        R15 K27 [Enum.Material.Air]
       97 JUMPIFNOT                        R14 ; [+3]
       98 GETTABLEKS                       R16 R14 K28 ["water"]
      100 JUMP                             ; [+2]
      101 GETIMPORT                        R16 K30 [Enum.Material.Water]
      103 GETUPVAL                         R19 7
      104 GETTABLEKS                       R19 R19 K31 ["Sphere"]
      106 JUMPIFNOTEQ                      R7 R19 ; [+3]
      108 MOVE                             R18 R6
      109 JUMP                             ; [+1]
      110 MOVE                             R18 R5
      111 GETUPVAL                         R19 8
      112 GETTABLEKS                       R19 R19 K32 ["VoxelResolution"]
      114 MUL                              R17 R18 R19
      115 GETUPVAL                         R19 8
      116 GETTABLEKS                       R19 R19 K32 ["VoxelResolution"]
      118 MUL                              R18 R6 R19
      119 MULK                             R19 R18 K33 [0.5]
      120 GETTABLEKS                       R20 R2 K34 ["PlanePosition"]
      122 GETUPVAL                         R21 9
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R23 R23 K35 ["PivotPosition"]
      126 GETTABLE                         R22 R3 R23
      127 GETTABLEKS                       R23 R11 K36 ["Position"]
      129 MOVE                             R24 R17
      130 CALL                             R21 3 1
      131 GETUPVAL                         R22 10
      132 GETTABLEKS                       R23 R2 K36 ["Position"]
      134 MOVE                             R24 R21
      135 MOVE                             R25 R19
      136 CALL                             R22 3 1
      137 LENGTH                           R24 R22
      138 GETTABLE                         R23 R22 R24
      139 SETTABLEKS                       R23 R2 K36 ["Position"]
      141 GETUPVAL                         R23 11
      142 MOVE                             R24 R21
      143 MOVE                             R25 R19
      144 MOVE                             R26 R17
      145 CALL                             R23 3 2
      146 MOVE                             R25 R22
      147 LOADNIL                          R26
      148 LOADNIL                          R27
      149 FORGPREP                         R25
      150 GETIMPORT                        R30 K38 [Region3.new]
      152 MOVE                             R31 R23
      153 MOVE                             R32 R24
      154 CALL                             R30 2 1
      155 GETTABLEKS                       R33 R24 K39 ["X"]
      157 GETTABLEKS                       R34 R23 K39 ["X"]
      159 SUB                              R32 R33 R34
      160 MULK                             R31 R32 K33 [0.5]
      161 JUMPIFNOT                        R14 ; [+5]
      162 MOVE                             R34 R30
      163 NAMECALL                         R32 R14 K40 ["readRegion"]
      165 CALL                             R32 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R32
      168 LOADNIL                          R33
      169 LOADNIL                          R34
      170 LOADNIL                          R35
      171 LOADNIL                          R36
      172 JUMPIFNOT                        R32 ; [+5]
      173 GETTABLEKS                       R33 R32 K41 ["materials"]
      175 GETTABLEKS                       R34 R32 K42 ["occupancies"]
      177 JUMP                             ; [+30]
      178 GETUPVAL                         R37 6
      179 GETTABLEKS                       R37 R37 K22 ["Terrain"]
      181 MOVE                             R39 R30
      182 GETUPVAL                         R40 8
      183 GETTABLEKS                       R40 R40 K32 ["VoxelResolution"]
      185 NAMECALL                         R37 R37 K43 ["ReadVoxels"]
      187 CALL                             R37 3 2
      188 MOVE                             R33 R37
      189 MOVE                             R34 R38
      190 LOADNIL                          R37
      191 SETTABLEKS                       R37 R34 K13 ["Size"]
      193 LOADNIL                          R37
      194 SETTABLEKS                       R37 R33 K13 ["Size"]
      196 GETUPVAL                         R37 6
      197 GETTABLEKS                       R37 R37 K22 ["Terrain"]
      199 MOVE                             R39 R30
      200 GETUPVAL                         R40 8
      201 GETTABLEKS                       R40 R40 K32 ["VoxelResolution"]
      203 NAMECALL                         R37 R37 K43 ["ReadVoxels"]
      205 CALL                             R37 3 2
      206 MOVE                             R35 R37
      207 MOVE                             R36 R38
      208 LENGTH                           R37 R33
      209 GETTABLEN                        R39 R33 1
      210 LENGTH                           R38 R39
      211 GETTABLEN                        R41 R33 1
      212 GETTABLEN                        R40 R41 1
      213 LENGTH                           R39 R40
      214 GETTABLEKS                       R45 R20 K45 ["Y"]
      216 GETTABLEKS                       R46 R23 K45 ["Y"]
      218 SUB                              R44 R45 R46
      219 GETUPVAL                         R45 8
      220 GETTABLEKS                       R45 R45 K32 ["VoxelResolution"]
      222 DIV                              R43 R44 R45
      223 FASTCALL1                        MATH_FLOOR R43 ; [+2]
      224 GETIMPORT                        R42 K48 [math.floor]
      226 CALL                             R42 1 1
      227 ADDK                             R41 R42 K44 [1]
      228 LOADN                            R42 1
      229 FASTCALL3                        MATH_CLAMP R41 R42 R38
      231 MOVE                             R43 R38
      232 GETIMPORT                        R40 K50 [math.clamp]
      234 CALL                             R40 3 1
      235 GETTABLEKS                       R44 R20 K45 ["Y"]
      237 GETUPVAL                         R45 8
      238 GETTABLEKS                       R45 R45 K32 ["VoxelResolution"]
      240 DIV                              R43 R44 R45
      241 FASTCALL1                        MATH_FLOOR R43 ; [+2]
      242 GETIMPORT                        R42 K48 [math.floor]
      244 CALL                             R42 1 1
      245 GETTABLEKS                       R44 R20 K45 ["Y"]
      247 GETUPVAL                         R45 8
      248 GETTABLEKS                       R45 R45 K32 ["VoxelResolution"]
      250 DIV                              R43 R44 R45
      251 SUB                              R41 R42 R43
      252 MULK                             R43 R41 K51 [256]
      253 FASTCALL1                        MATH_FLOOR R43 ; [+2]
      254 GETIMPORT                        R42 K48 [math.floor]
      256 CALL                             R42 1 1
      257 DIVK                             R41 R42 K51 [256]
      258 LOADB                            R42 0
      259 GETUPVAL                         R43 7
      260 GETTABLEKS                       R43 R43 K31 ["Sphere"]
      262 JUMPIFNOTEQ                      R7 R43 ; [+6]
      264 LOADN                            R43 2
      265 JUMPIFLT                         R43 R6 ; [+2]
      267 LOADB                            R42 0 +1
      268 LOADB                            R42 1
      269 GETUPVAL                         R44 7
      270 GETTABLEKS                       R44 R44 K52 ["Cylinder"]
      272 JUMPIFNOTEQ                      R7 R44 ; [+5]
      274 LOADB                            R43 1
      275 LOADN                            R44 2
      276 JUMPIFLT                         R44 R6 ; [+2]
      278 MOVE                             R43 R42
      279 GETTABLEKS                       R46 R23 K39 ["X"]
      281 GETUPVAL                         R48 12
      282 MULK                             R47 R48 K33 [0.5]
      283 SUB                              R45 R46 R47
      284 GETTABLEKS                       R46 R29 K39 ["X"]
      286 SUB                              R44 R45 R46
      287 GETTABLEKS                       R47 R23 K45 ["Y"]
      289 GETUPVAL                         R49 12
      290 MULK                             R48 R49 K33 [0.5]
      291 SUB                              R46 R47 R48
      292 GETTABLEKS                       R47 R29 K45 ["Y"]
      294 SUB                              R45 R46 R47
      295 GETTABLEKS                       R48 R23 K53 ["Z"]
      297 GETUPVAL                         R50 12
      298 MULK                             R49 R50 K33 [0.5]
      299 SUB                              R47 R48 R49
      300 GETTABLEKS                       R48 R29 K53 ["Z"]
      302 SUB                              R46 R47 R48
      303 LOADNIL                          R47
      304 LOADNIL                          R48
      305 LOADNIL                          R49
      306 GETIMPORT                        R50 K56 [os.clock]
      308 CALL                             R50 0 1
      309 LOADN                            R53 1
      310 MOVE                             R51 R37
      311 LOADN                            R52 1
      312 FORNPREP                         R51
      313 JUMPIFNOT                        R43 ; [+6]
      314 GETUPVAL                         R56 8
      315 GETTABLEKS                       R56 R56 K32 ["VoxelResolution"]
      317 MUL                              R55 R53 R56
      318 ADD                              R54 R55 R44
      319 POWK                             R47 R54 K57 [2]
      320 GETTABLE                         R54 R34 R53
      321 GETTABLE                         R55 R33 R53
      322 JUMPIFNOT                        R36 ; [+2]
      323 GETTABLE                         R56 R36 R53
      324 JUMP                             ; [+1]
      325 LOADNIL                          R56
      326 JUMPIFNOT                        R35 ; [+2]
      327 GETTABLE                         R57 R35 R53
      328 JUMP                             ; [+1]
      329 LOADNIL                          R57
      330 LOADN                            R60 1
      331 MOVE                             R58 R39
      332 LOADN                            R59 1
      333 FORNPREP                         R58
      334 LOADN                            R61 1
      335 JUMPIFNOT                        R43 ; [+17]
      336 GETUPVAL                         R64 8
      337 GETTABLEKS                       R64 R64 K32 ["VoxelResolution"]
      339 MUL                              R63 R60 R64
      340 ADD                              R62 R63 R46
      341 POWK                             R48 R62 K57 [2]
      342 ADD                              R63 R47 R48
      343 FASTCALL1                        MATH_SQRT R63 ; [+2]
      344 GETIMPORT                        R62 K59 [math.sqrt]
      346 CALL                             R62 1 1
      347 MOVE                             R49 R62
      348 GETUPVAL                         R62 13
      349 MOVE                             R63 R49
      350 MOVE                             R64 R31
      351 CALL                             R62 2 1
      352 MOVE                             R61 R62
      353 MUL                              R65 R61 R10
      354 MULK                             R64 R65 K60 [0.25]
      355 FASTCALL1                        MATH_LOG R6 ; [+3]
      356 MOVE                             R67 R6
      357 GETIMPORT                        R66 K63 [math.log]
      359 CALL                             R66 1 1
      360 DIVK                             R65 R66 K61 [8]
      361 MUL                              R63 R64 R65
      362 GETUPVAL                         R64 8
      363 GETTABLEKS                       R64 R64 K64 ["MinimumOccupancy"]
      365 FASTCALL2                        MATH_MAX R63 R64 ; [+3]
      367 GETIMPORT                        R62 K66 [math.max]
      369 CALL                             R62 2 1
      370 MUL                              R66 R61 R10
      371 MULK                             R65 R66 K60 [0.25]
      372 FASTCALL1                        MATH_LOG R6 ; [+3]
      373 MOVE                             R68 R6
      374 GETIMPORT                        R67 K63 [math.log]
      376 CALL                             R67 1 1
      377 DIVK                             R66 R67 K61 [8]
      378 MUL                              R64 R65 R66
      379 GETUPVAL                         R65 8
      380 GETTABLEKS                       R65 R65 K64 ["MinimumOccupancy"]
      382 FASTCALL2                        MATH_MAX R64 R65 ; [+3]
      384 GETIMPORT                        R63 K66 [math.max]
      386 CALL                             R63 2 1
      387 LOADB                            R64 0
      388 JUMPIFNOT                        R12 ; [+86]
      389 LOADN                            R67 1
      390 MOVE                             R65 R40
      391 LOADN                            R66 1
      392 FORNPREP                         R65
      393 GETTABLE                         R69 R54 R67
      394 GETTABLE                         R68 R69 R60
      395 GETTABLE                         R70 R55 R67
      396 GETTABLE                         R69 R70 R60
      397 LOADN                            R70 1
      398 JUMPIFNOT                        R43 ; [+20]
      399 JUMPIFNOT                        R42 ; [+13]
      400 ADD                              R73 R47 R48
      401 GETUPVAL                         R77 8
      402 GETTABLEKS                       R77 R77 K32 ["VoxelResolution"]
      404 MUL                              R76 R67 R77
      405 ADD                              R75 R76 R45
      406 POWK                             R74 R75 K57 [2]
      407 ADD                              R72 R73 R74
      408 FASTCALL1                        MATH_SQRT R72 ; [+2]
      409 GETIMPORT                        R71 K59 [math.sqrt]
      411 CALL                             R71 1 1
      412 JUMP                             ; [+1]
      413 MOVE                             R71 R49
      414 GETUPVAL                         R72 14
      415 MOVE                             R73 R71
      416 MOVE                             R74 R31
      417 CALL                             R72 2 1
      418 MOVE                             R70 R72
      419 LOADN                            R71 0
      420 JUMPIFLE                         R70 R71 ; [+53]
      422 JUMPIFNOTEQKN                    R68 K67 [0] ; [+3]
      424 JUMPIF                           R64 ; [+1]
      425 JUMP                             ; [+48]
      426 LOADB                            R64 1
      427 JUMPIFEQKN                       R68 K44 [1] ; [+46]
      429 ADD                              R71 R68 R62
      430 LOADN                            R72 1
      431 JUMPIFNOTLT                      R72 R71 ; [+4]
      433 SUBK                             R62 R71 K44 [1]
      434 LOADN                            R71 1
      435 JUMP                             ; [+1]
      436 LOADN                            R62 0
      437 JUMPIFNOTEQ                      R67 R40 ; [+4]
      439 JUMPIFNOTLT                      R41 R71 ; [+2]
      441 MOVE                             R71 R41
      442 JUMPIFNOTEQKN                    R68 K67 [0] ; [+9]
      444 LOADN                            R72 1
      445 JUMPIFNOTLT                      R72 R67 ; [+6]
      447 GETTABLE                         R73 R33 R53
      448 SUBK                             R74 R67 K44 [1]
      449 GETTABLE                         R72 R73 R74
      450 GETTABLE                         R69 R72 R60
      451 JUMP                             ; [0]
      452 JUMPIFNOT                        R9 ; [+2]
      453 JUMPIFEQ                         R69 R16 ; [+21]
      455 JUMPIFNOT                        R69 ; [+19]
      456 JUMPIFEQ                         R68 R71 ; [+18]
      458 JUMPIFNOT                        R32 ; [+9]
      459 MOVE                             R74 R53
      460 MOVE                             R75 R67
      461 MOVE                             R76 R60
      462 MOVE                             R77 R69
      463 MOVE                             R78 R71
      464 NAMECALL                         R72 R32 K68 ["setVoxel"]
      466 CALL                             R72 6 0
      467 JUMP                             ; [+4]
      468 GETTABLE                         R72 R56 R67
      469 SETTABLE                         R71 R72 R60
      470 GETTABLE                         R72 R57 R67
      471 SETTABLE                         R69 R72 R60
      472 JUMPIFEQKN                       R62 K67 [0] ; [+2]
      474 FORNLOOP                         R65
      475 LOADB                            R65 0
      476 JUMPIFNOT                        R13 ; [+76]
      477 MOVE                             R68 R38
      478 MOVE                             R66 R40
      479 LOADN                            R67 -1
      480 FORNPREP                         R66
      481 GETTABLE                         R70 R54 R68
      482 GETTABLE                         R69 R70 R60
      483 GETTABLE                         R71 R55 R68
      484 GETTABLE                         R70 R71 R60
      485 LOADN                            R71 1
      486 JUMPIFNOT                        R43 ; [+20]
      487 JUMPIFNOT                        R42 ; [+13]
      488 ADD                              R74 R47 R48
      489 GETUPVAL                         R78 8
      490 GETTABLEKS                       R78 R78 K32 ["VoxelResolution"]
      492 MUL                              R77 R68 R78
      493 ADD                              R76 R77 R45
      494 POWK                             R75 R76 K57 [2]
      495 ADD                              R73 R74 R75
      496 FASTCALL1                        MATH_SQRT R73 ; [+2]
      497 GETIMPORT                        R72 K59 [math.sqrt]
      499 CALL                             R72 1 1
      500 JUMP                             ; [+1]
      501 MOVE                             R72 R49
      502 GETUPVAL                         R73 14
      503 MOVE                             R74 R72
      504 MOVE                             R75 R31
      505 CALL                             R73 2 1
      506 MOVE                             R71 R73
      507 LOADN                            R72 0
      508 JUMPIFLE                         R71 R72 ; [+43]
      510 JUMPIFNOTEQKN                    R69 K44 [1] ; [+3]
      512 JUMPIF                           R65 ; [+1]
      513 JUMP                             ; [+38]
      514 LOADB                            R65 1
      515 JUMPIFEQKN                       R69 K67 [0] ; [+36]
      517 SUB                              R72 R69 R63
      518 LOADN                            R73 0
      519 JUMPIFNOTLT                      R72 R73 ; [+4]
      521 MINUS                            R63 R72
      522 LOADN                            R72 0
      523 JUMP                             ; [+1]
      524 LOADN                            R63 0
      525 JUMPIFNOTEQ                      R68 R40 ; [+4]
      527 JUMPIFNOTLT                      R72 R41 ; [+2]
      529 MOVE                             R72 R41
      530 JUMPIFNOTEQKN                    R72 K67 [0] ; [+2]
      532 MOVE                             R70 R15
      533 JUMPIFNOT                        R9 ; [+2]
      534 JUMPIFEQ                         R70 R16 ; [+18]
      536 JUMPIFNOT                        R32 ; [+9]
      537 MOVE                             R75 R53
      538 MOVE                             R76 R68
      539 MOVE                             R77 R60
      540 MOVE                             R78 R70
      541 MOVE                             R79 R72
      542 NAMECALL                         R73 R32 K68 ["setVoxel"]
      544 CALL                             R73 6 0
      545 JUMP                             ; [+4]
      546 GETTABLE                         R73 R56 R68
      547 SETTABLE                         R72 R73 R60
      548 GETTABLE                         R73 R57 R68
      549 SETTABLE                         R70 R73 R60
      550 JUMPIFEQKN                       R63 K67 [0] ; [+2]
      552 FORNLOOP                         R66
      553 FORNLOOP                         R58
      554 FORNLOOP                         R51
      555 GETUPVAL                         R53 15
      556 GETTABLEKS                       R53 R53 K69 ["NormalizeBrushTimer"]
      558 MOVE                             R54 R50
      559 MOVE                             R55 R6
      560 MOVE                             R56 R5
      561 CALL                             R53 3 -1
      562 NAMECALL                         R51 R1 K70 ["addTimeStatistic"]
      564 CALL                             R51 -1 0
      565 JUMPIFNOT                        R32 ; [+5]
      566 MOVE                             R53 R30
      567 NAMECALL                         R51 R32 K71 ["write"]
      569 CALL                             R51 2 0
      570 JUMP                             ; [+12]
      571 GETUPVAL                         R51 6
      572 GETTABLEKS                       R51 R51 K22 ["Terrain"]
      574 MOVE                             R53 R30
      575 GETUPVAL                         R54 8
      576 GETTABLEKS                       R54 R54 K32 ["VoxelResolution"]
      578 MOVE                             R55 R35
      579 MOVE                             R56 R36
      580 NAMECALL                         R51 R51 K72 ["WriteVoxels"]
      582 CALL                             R51 5 0
      583 FORGLOOP                         R25 2 ; [-434]
      585 GETUPVAL                         R25 0
      586 GETTABLEKS                       R25 R25 K4 ["ProfileTools"]
      588 CALL                             R25 0 1
      589 JUMPIFNOT                        R25 ; [+3]
      590 GETIMPORT                        R25 K74 [debug.profileend]
      592 CALL                             R25 0 0
      593 LOADB                            R25 1
      594 LOADN                            R26 0
      595 RETURN                           R25 2

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
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          VAL R1
       26 GETUPVAL                         R5 16
       27 GETTABLEKS                       R5 R5 K1 ["new"]
       29 DUPTABLE                         R6 K8 [{["Budget"] = 0.0005, ["Name"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       30 SETTABLEKS                       R0 R6 K4 ["Name"]
       32 SETTABLEKS                       R4 R6 K5 ["OnFinish"]
       34 SETTABLEKS                       R2 R6 K6 ["OnStart"]
       36 SETTABLEKS                       R3 R6 K7 ["OnStep"]
       38 CALL                             R5 1 -1
       39 RETURN                           R5 -1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagEnableTerrainPalette"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R0 K6 ["Src"]
       27 GETTABLEKS                       R3 R3 K11 ["Util"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R3 K12 ["AnalyticsHelper"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R3 K13 ["Operations"]
       38 GETTABLEKS                       R6 R6 K14 ["BaseOperation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R3 K15 ["CalculateBrushOccupancy"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R3 K16 ["CalculateMagnitudePercent"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R3 K17 ["ClampVoxelBoundaries"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R3 K18 ["ConvertForPivot"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R3 K19 ["DebugFlags"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R3 K13 ["Operations"]
       70 GETTABLEKS                       R12 R12 K20 ["FlattenMaterialBackend"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R3 K21 ["getDraggedPositions"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K6 ["Src"]
       82 GETTABLEKS                       R14 R14 K22 ["Types"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R13 K23 ["BrushShape"]
       87 GETTABLEKS                       R15 R13 K24 ["BrushSettings"]
       89 GETTABLEKS                       R16 R13 K25 ["Category"]
       91 GETTABLEKS                       R17 R13 K26 ["FlattenMode"]
       93 GETTABLEKS                       R18 R13 K27 ["FlattenPlane"]
       95 GETTABLEKS                       R19 R1 K28 ["VoxelResolution"]
       97 DUPCLOSURE                       R20 K29 [PROTO_3]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 RETURN                           R20 1
