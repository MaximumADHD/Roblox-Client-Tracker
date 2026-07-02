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
       63 GETTABLEKS                       R14 R8 K20 ["Material"]
       65 GETIMPORT                        R15 K23 [Enum.Material.Air]
       67 JUMPIFNOTEQ                      R14 R15 ; [+7]
       69 NAMECALL                         R14 R1 K24 ["skipBudget"]
       71 CALL                             R14 1 0
       72 LOADB                            R14 1
       73 LOADN                            R15 0
       74 RETURN                           R14 2
       75 GETUPVAL                         R16 4
       76 GETTABLEKS                       R16 R16 K25 ["Sphere"]
       78 JUMPIFNOTEQ                      R7 R16 ; [+3]
       80 MOVE                             R15 R6
       81 JUMP                             ; [+1]
       82 MOVE                             R15 R5
       83 GETUPVAL                         R16 5
       84 MUL                              R14 R15 R16
       85 GETUPVAL                         R16 5
       86 MUL                              R15 R6 R16
       87 MULK                             R16 R15 K26 [0.5]
       88 GETUPVAL                         R17 6
       89 GETUPVAL                         R19 2
       90 GETTABLEKS                       R19 R19 K27 ["PivotPosition"]
       92 GETTABLE                         R18 R3 R19
       93 GETTABLEKS                       R19 R8 K28 ["Position"]
       95 MOVE                             R20 R14
       96 CALL                             R17 3 1
       97 GETUPVAL                         R18 7
       98 GETTABLEKS                       R19 R2 K28 ["Position"]
      100 MOVE                             R20 R17
      101 MOVE                             R21 R16
      102 CALL                             R18 3 1
      103 LENGTH                           R20 R18
      104 GETTABLE                         R19 R18 R20
      105 SETTABLEKS                       R19 R2 K28 ["Position"]
      107 GETUPVAL                         R20 8
      108 GETTABLEKS                       R20 R20 K29 ["Paint"]
      110 JUMPIFEQ                         R11 R20 ; [+2]
      112 LOADB                            R19 0 +1
      113 LOADB                            R19 1
      114 GETUPVAL                         R21 8
      115 GETTABLEKS                       R21 R21 K30 ["Replace"]
      117 JUMPIFEQ                         R11 R21 ; [+2]
      119 LOADB                            R20 0 +1
      120 LOADB                            R20 1
      121 MOVE                             R21 R18
      122 LOADNIL                          R22
      123 LOADNIL                          R23
      124 FORGPREP                         R21
      125 GETTABLEKS                       R26 R2 K31 ["LastPosition"]
      127 JUMPIFNOTEQ                      R25 R26 ; [+15]
      129 NAMECALL                         R26 R1 K24 ["skipBudget"]
      131 CALL                             R26 1 0
      132 GETUPVAL                         R26 0
      133 GETTABLEKS                       R26 R26 K4 ["ProfileTools"]
      135 CALL                             R26 0 1
      136 JUMPIFNOT                        R26 ; [+3]
      137 GETIMPORT                        R26 K33 [debug.profileend]
      139 CALL                             R26 0 0
      140 LOADB                            R26 1
      141 LOADN                            R27 0
      142 RETURN                           R26 2
      143 SETTABLEKS                       R25 R2 K31 ["LastPosition"]
      145 GETUPVAL                         R26 9
      146 MOVE                             R27 R25
      147 MOVE                             R28 R16
      148 MOVE                             R29 R14
      149 CALL                             R26 3 2
      150 GETIMPORT                        R28 K36 [Region3.new]
      152 MOVE                             R29 R26
      153 MOVE                             R30 R27
      154 CALL                             R28 2 1
      155 GETUPVAL                         R29 4
      156 GETTABLEKS                       R29 R29 K37 ["Cube"]
      158 JUMPIFNOTEQ                      R7 R29 ; [+13]
      160 JUMPIFNOT                        R20 ; [+11]
      161 GETUPVAL                         R29 10
      162 GETTABLEKS                       R29 R29 K38 ["Terrain"]
      164 MOVE                             R31 R28
      165 GETUPVAL                         R32 5
      166 MOVE                             R33 R12
      167 MOVE                             R34 R13
      168 NAMECALL                         R29 R29 K39 ["ReplaceMaterial"]
      170 CALL                             R29 5 0
      171 JUMP                             ; [+199]
      172 GETTABLEKS                       R31 R27 K40 ["X"]
      174 GETTABLEKS                       R32 R26 K40 ["X"]
      176 SUB                              R30 R31 R32
      177 MULK                             R29 R30 K26 [0.5]
      178 GETUPVAL                         R30 10
      179 GETTABLEKS                       R30 R30 K38 ["Terrain"]
      181 MOVE                             R32 R28
      182 GETUPVAL                         R33 5
      183 NAMECALL                         R30 R30 K41 ["ReadVoxels"]
      185 CALL                             R30 3 2
      186 LOADNIL                          R32
      187 SETTABLEKS                       R32 R30 K13 ["Size"]
      189 LOADNIL                          R32
      190 SETTABLEKS                       R32 R31 K13 ["Size"]
      192 GETUPVAL                         R32 5
      193 GETIMPORT                        R34 K23 [Enum.Material.Air]
      195 JUMPIFEQ                         R12 R34 ; [+2]
      197 LOADB                            R33 0 +1
      198 LOADB                            R33 1
      199 LOADB                            R34 0
      200 GETUPVAL                         R35 4
      201 GETTABLEKS                       R35 R35 K25 ["Sphere"]
      203 JUMPIFNOTEQ                      R7 R35 ; [+6]
      205 LOADN                            R35 2
      206 JUMPIFLT                         R35 R6 ; [+2]
      208 LOADB                            R34 0 +1
      209 LOADB                            R34 1
      210 GETUPVAL                         R36 4
      211 GETTABLEKS                       R36 R36 K42 ["Cylinder"]
      213 JUMPIFNOTEQ                      R7 R36 ; [+5]
      215 LOADB                            R35 1
      216 LOADN                            R36 2
      217 JUMPIFLT                         R36 R6 ; [+2]
      219 MOVE                             R35 R34
      220 GETTABLEKS                       R38 R26 K40 ["X"]
      222 MULK                             R39 R32 K26 [0.5]
      223 SUB                              R37 R38 R39
      224 GETTABLEKS                       R38 R25 K40 ["X"]
      226 SUB                              R36 R37 R38
      227 GETTABLEKS                       R39 R26 K43 ["Y"]
      229 MULK                             R40 R32 K26 [0.5]
      230 SUB                              R38 R39 R40
      231 GETTABLEKS                       R39 R25 K43 ["Y"]
      233 SUB                              R37 R38 R39
      234 GETTABLEKS                       R40 R26 K44 ["Z"]
      236 MULK                             R41 R32 K26 [0.5]
      237 SUB                              R39 R40 R41
      238 GETTABLEKS                       R40 R25 K44 ["Z"]
      240 SUB                              R38 R39 R40
      241 LOADNIL                          R39
      242 LOADNIL                          R40
      243 GETIMPORT                        R41 K47 [os.clock]
      245 CALL                             R41 0 1
      246 MOVE                             R42 R31
      247 LOADNIL                          R43
      248 LOADNIL                          R44
      249 FORGPREP                         R42
      250 JUMPIFNOT                        R35 ; [+4]
      251 MUL                              R48 R45 R32
      252 ADD                              R47 R48 R36
      253 POWK                             R39 R47 K48 [2]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R39
      256 GETTABLE                         R47 R30 R45
      257 MOVE                             R48 R46
      258 LOADNIL                          R49
      259 LOADNIL                          R50
      260 FORGPREP                         R48
      261 JUMPIFNOT                        R34 ; [+5]
      262 MUL                              R55 R51 R32
      263 ADD                              R54 R55 R37
      264 POWK                             R53 R54 K48 [2]
      265 ADD                              R40 R39 R53
      266 JUMP                             ; [+1]
      267 LOADNIL                          R40
      268 GETTABLE                         R53 R47 R51
      269 MOVE                             R54 R52
      270 LOADNIL                          R55
      271 LOADNIL                          R56
      272 FORGPREP                         R54
      273 GETTABLE                         R59 R53 R57
      274 LOADN                            R60 1
      275 JUMPIFNOT                        R35 ; [+20]
      276 MUL                              R63 R57 R32
      277 ADD                              R62 R63 R38
      278 POWK                             R61 R62 K48 [2]
      279 JUMPIFNOT                        R34 ; [+6]
      280 ADD                              R63 R40 R61
      281 FASTCALL1                        MATH_SQRT R63 ; [+2]
      282 GETIMPORT                        R62 K51 [math.sqrt]
      284 CALL                             R62 1 1
      285 JUMP                             ; [+5]
      286 ADD                              R63 R39 R61
      287 FASTCALL1                        MATH_SQRT R63 ; [+2]
      288 GETIMPORT                        R62 K51 [math.sqrt]
      290 CALL                             R62 1 1
      291 GETUPVAL                         R63 11
      292 MOVE                             R64 R62
      293 MOVE                             R65 R29
      294 CALL                             R63 2 1
      295 MOVE                             R60 R63
      296 LOADN                            R61 0
      297 JUMPIFNOTLT                      R61 R60 ; [+23]
      299 JUMPIFNOT                        R9 ; [+4]
      300 GETIMPORT                        R61 K53 [Enum.Material.Water]
      302 JUMPIFEQ                         R59 R61 ; [+18]
      304 JUMPIFNOT                        R19 ; [+3]
      305 SETTABLE                         R58 R52 R57
      306 SETTABLE                         R12 R53 R57
      307 JUMP                             ; [+15]
      308 JUMPIFNOT                        R20 ; [+14]
      309 JUMPIFNOT                        R33 ; [+2]
      310 LOADN                            R61 1
      311 JUMP                             ; [+1]
      312 MOVE                             R61 R58
      313 SETTABLE                         R61 R52 R57
      314 JUMPIFNOTEQ                      R12 R59 ; [+3]
      316 MOVE                             R61 R13
      317 JUMP                             ; [+1]
      318 MOVE                             R61 R59
      319 SETTABLE                         R61 R53 R57
      320 JUMP                             ; [+2]
      321 SETTABLE                         R58 R52 R57
      322 SETTABLE                         R59 R53 R57
      323 FORGLOOP                         R54 2 ; [-51]
      325 FORGLOOP                         R48 2 ; [-65]
      327 FORGLOOP                         R42 2 ; [-78]
      329 GETUPVAL                         R44 12
      330 GETTABLEKS                       R44 R44 K54 ["NormalizeBrushTimer"]
      332 MOVE                             R45 R41
      333 MOVE                             R46 R6
      334 MOVE                             R47 R5
      335 CALL                             R44 3 -1
      336 NAMECALL                         R42 R1 K55 ["addTimeStatistic"]
      338 CALL                             R42 -1 0
      339 GETIMPORT                        R42 K53 [Enum.Material.Water]
      341 JUMPIFEQ                         R12 R42 ; [+5]
      343 GETIMPORT                        R42 K53 [Enum.Material.Water]
      345 JUMPIFNOTEQ                      R13 R42 ; [+13]
      347 GETUPVAL                         R42 10
      348 GETTABLEKS                       R42 R42 K38 ["Terrain"]
      350 MOVE                             R44 R28
      351 GETUPVAL                         R45 13
      352 GETTABLEKS                       R45 R45 K56 ["VoxelResolution"]
      354 GETIMPORT                        R46 K23 [Enum.Material.Air]
      356 NAMECALL                         R42 R42 K57 ["FillRegion"]
      358 CALL                             R42 4 0
      359 GETUPVAL                         R42 10
      360 GETTABLEKS                       R42 R42 K38 ["Terrain"]
      362 MOVE                             R44 R28
      363 GETUPVAL                         R45 13
      364 GETTABLEKS                       R45 R45 K56 ["VoxelResolution"]
      366 MOVE                             R46 R30
      367 MOVE                             R47 R31
      368 NAMECALL                         R42 R42 K58 ["WriteVoxels"]
      370 CALL                             R42 5 0
      371 FORGLOOP                         R21 2 ; [-247]
      373 GETUPVAL                         R21 0
      374 GETTABLEKS                       R21 R21 K4 ["ProfileTools"]
      376 CALL                             R21 0 1
      377 JUMPIFNOT                        R21 ; [+3]
      378 GETIMPORT                        R21 K33 [debug.profileend]
      380 CALL                             R21 0 0
      381 LOADB                            R21 1
      382 LOADN                            R22 0
      383 RETURN                           R21 2

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
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U3
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R1
       23 GETUPVAL                         R5 13
       24 GETTABLEKS                       R5 R5 K1 ["new"]
       26 DUPTABLE                         R6 K8 [{["Budget"] = 0.005, ["OnFinish"], ["OnStart"], ["OnStep"], ["Name"]}]
       27 SETTABLEKS                       R4 R6 K4 ["OnFinish"]
       29 SETTABLEKS                       R2 R6 K5 ["OnStart"]
       31 SETTABLEKS                       R3 R6 K6 ["OnStep"]
       33 SETTABLEKS                       R0 R6 K7 ["Name"]
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1

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
       56 GETTABLEKS                       R11 R0 K6 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["Types"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K19 ["BrushShape"]
       63 GETTABLEKS                       R12 R10 K20 ["BrushSettings"]
       65 GETTABLEKS                       R13 R10 K21 ["Category"]
       67 GETTABLEKS                       R14 R10 K22 ["MaterialMode"]
       69 GETTABLEKS                       R15 R10 K23 ["MaterialSettings"]
       71 GETIMPORT                        R16 K5 [require]
       73 GETTABLEKS                       R17 R0 K6 ["Src"]
       75 GETTABLEKS                       R17 R17 K10 ["Util"]
       77 GETTABLEKS                       R17 R17 K24 ["DebugFlags"]
       79 CALL                             R16 1 1
       80 DUPCLOSURE                       R17 K25 [PROTO_3]
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 RETURN                           R17 1
