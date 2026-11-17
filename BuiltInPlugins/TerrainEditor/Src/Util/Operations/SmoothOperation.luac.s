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
       31 MUL                              R8 R9 R10
       32 GETUPVAL                         R9 4
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K8 ["PivotPosition"]
       36 GETTABLE                         R10 R2 R11
       37 GETTABLEKS                       R11 R7 K9 ["Position"]
       39 MOVE                             R12 R8
       40 CALL                             R9 3 1
       41 DUPTABLE                         R10 K10 [{"Position"}]
       42 SETTABLEKS                       R9 R10 K9 ["Position"]
       44 SETTABLEKS                       R10 R0 K6 ["State"]
       46 RETURN                           R0 0

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
       15 LOADK                            R3 K8 ["Smooth"]
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
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K17 ["Strength"]
       48 GETTABLE                         R11 R3 R12
       49 ORK                              R10 R11 K16 [1]
       50 LOADB                            R11 0
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K18 ["Sphere"]
       54 JUMPIFNOTEQ                      R7 R12 ; [+6]
       56 LOADN                            R12 2
       57 JUMPIFLT                         R12 R6 ; [+2]
       59 LOADB                            R11 0 +1
       60 LOADB                            R11 1
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K19 ["Cylinder"]
       64 JUMPIFNOTEQ                      R7 R13 ; [+5]
       66 LOADB                            R12 1
       67 LOADN                            R13 2
       68 JUMPIFLT                         R13 R6 ; [+2]
       70 MOVE                             R12 R11
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R15 R15 K18 ["Sphere"]
       74 JUMPIFNOTEQ                      R7 R15 ; [+3]
       76 MOVE                             R14 R6
       77 JUMP                             ; [+1]
       78 MOVE                             R14 R5
       79 GETUPVAL                         R15 4
       80 MUL                              R13 R14 R15
       81 GETUPVAL                         R15 4
       82 MUL                              R14 R6 R15
       83 MULK                             R15 R14 K20 [0.5]
       84 GETUPVAL                         R16 5
       85 GETUPVAL                         R18 2
       86 GETTABLEKS                       R18 R18 K21 ["PivotPosition"]
       88 GETTABLE                         R17 R3 R18
       89 GETTABLEKS                       R18 R8 K22 ["Position"]
       91 MOVE                             R19 R13
       92 CALL                             R16 3 1
       93 GETUPVAL                         R17 6
       94 GETTABLEKS                       R18 R2 K22 ["Position"]
       96 MOVE                             R19 R16
       97 MOVE                             R20 R15
       98 CALL                             R17 3 1
       99 LENGTH                           R19 R17
      100 GETTABLE                         R18 R17 R19
      101 SETTABLEKS                       R18 R2 K22 ["Position"]
      103 GETUPVAL                         R18 7
      104 CALL                             R18 0 1
      105 GETUPVAL                         R19 8
      106 GETTABLEKS                       R19 R19 K23 ["new"]
      108 GETUPVAL                         R20 9
      109 GETTABLEKS                       R20 R20 K24 ["Terrain"]
      111 CALL                             R19 1 1
      112 JUMPIFNOT                        R18 ; [+3]
      113 GETTABLEKS                       R20 R19 K25 ["air"]
      115 JUMP                             ; [+2]
      116 GETIMPORT                        R20 K29 [Enum.Material.Air]
      118 JUMPIFNOT                        R18 ; [+3]
      119 GETTABLEKS                       R21 R19 K30 ["water"]
      121 JUMP                             ; [+2]
      122 GETIMPORT                        R21 K32 [Enum.Material.Water]
      124 MOVE                             R22 R17
      125 LOADNIL                          R23
      126 LOADNIL                          R24
      127 FORGPREP                         R22
      128 GETUPVAL                         R27 10
      129 MOVE                             R28 R26
      130 MOVE                             R29 R15
      131 MOVE                             R30 R13
      132 CALL                             R27 3 2
      133 GETIMPORT                        R29 K34 [Region3.new]
      135 MOVE                             R30 R27
      136 MOVE                             R31 R28
      137 CALL                             R29 2 1
      138 GETTABLEKS                       R32 R28 K35 ["X"]
      140 GETTABLEKS                       R33 R27 K35 ["X"]
      142 SUB                              R31 R32 R33
      143 MULK                             R30 R31 K20 [0.5]
      144 GETTABLEKS                       R33 R27 K35 ["X"]
      146 GETUPVAL                         R35 4
      147 MULK                             R34 R35 K20 [0.5]
      148 SUB                              R32 R33 R34
      149 GETTABLEKS                       R33 R26 K35 ["X"]
      151 SUB                              R31 R32 R33
      152 GETTABLEKS                       R34 R27 K36 ["Y"]
      154 GETUPVAL                         R36 4
      155 MULK                             R35 R36 K20 [0.5]
      156 SUB                              R33 R34 R35
      157 GETTABLEKS                       R34 R26 K36 ["Y"]
      159 SUB                              R32 R33 R34
      160 GETTABLEKS                       R35 R27 K37 ["Z"]
      162 GETUPVAL                         R37 4
      163 MULK                             R36 R37 K20 [0.5]
      164 SUB                              R34 R35 R36
      165 GETTABLEKS                       R35 R26 K37 ["Z"]
      167 SUB                              R33 R34 R35
      168 LOADNIL                          R34
      169 LOADNIL                          R35
      170 JUMPIFNOT                        R18 ; [+6]
      171 MOVE                             R38 R29
      172 MOVE                             R39 R10
      173 NAMECALL                         R36 R19 K38 ["smoothRegion"]
      175 CALL                             R36 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R36
      178 LOADNIL                          R37
      179 LOADNIL                          R38
      180 LOADNIL                          R39
      181 LOADNIL                          R40
      182 JUMPIFNOT                        R36 ; [+9]
      183 GETTABLEKS                       R37 R36 K39 ["materials"]
      185 GETTABLEKS                       R38 R36 K40 ["occupancies"]
      187 GETTABLEKS                       R39 R36 K41 ["writeMaterials"]
      189 GETTABLEKS                       R40 R36 K42 ["writeOccupancies"]
      191 JUMP                             ; [+27]
      192 GETUPVAL                         R41 9
      193 GETTABLEKS                       R41 R41 K24 ["Terrain"]
      195 MOVE                             R43 R29
      196 GETUPVAL                         R44 4
      197 NAMECALL                         R41 R41 K43 ["ReadVoxels"]
      199 CALL                             R41 3 2
      200 MOVE                             R37 R41
      201 MOVE                             R38 R42
      202 GETUPVAL                         R41 9
      203 GETTABLEKS                       R41 R41 K24 ["Terrain"]
      205 MOVE                             R43 R29
      206 GETUPVAL                         R44 4
      207 MOVE                             R45 R10
      208 NAMECALL                         R41 R41 K44 ["SmoothRegion"]
      210 CALL                             R41 4 2
      211 MOVE                             R39 R41
      212 MOVE                             R40 R42
      213 LOADNIL                          R41
      214 SETTABLEKS                       R41 R37 K13 ["Size"]
      216 LOADNIL                          R41
      217 SETTABLEKS                       R41 R38 K13 ["Size"]
      219 GETIMPORT                        R41 K47 [os.clock]
      221 CALL                             R41 0 1
      222 MOVE                             R42 R38
      223 LOADNIL                          R43
      224 LOADNIL                          R44
      225 FORGPREP                         R42
      226 JUMPIFNOT                        R12 ; [+5]
      227 GETUPVAL                         R49 4
      228 MUL                              R48 R45 R49
      229 ADD                              R47 R48 R31
      230 POWK                             R34 R47 K48 [2]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R34
      233 GETTABLE                         R47 R39 R45
      234 GETTABLE                         R48 R40 R45
      235 GETTABLE                         R49 R37 R45
      236 MOVE                             R50 R46
      237 LOADNIL                          R51
      238 LOADNIL                          R52
      239 FORGPREP                         R50
      240 JUMPIFNOT                        R11 ; [+6]
      241 GETUPVAL                         R58 4
      242 MUL                              R57 R53 R58
      243 ADD                              R56 R57 R32
      244 POWK                             R55 R56 K48 [2]
      245 ADD                              R35 R34 R55
      246 JUMP                             ; [+1]
      247 LOADNIL                          R35
      248 GETTABLE                         R55 R47 R53
      249 GETTABLE                         R56 R48 R53
      250 GETTABLE                         R57 R49 R53
      251 MOVE                             R58 R54
      252 LOADNIL                          R59
      253 LOADNIL                          R60
      254 FORGPREP                         R58
      255 GETTABLE                         R63 R57 R61
      256 LOADN                            R64 1
      257 LOADN                            R65 1
      258 JUMPIFNOT                        R12 ; [+26]
      259 GETUPVAL                         R69 4
      260 MUL                              R68 R61 R69
      261 ADD                              R67 R68 R33
      262 POWK                             R66 R67 K48 [2]
      263 JUMPIFNOT                        R11 ; [+6]
      264 ADD                              R68 R35 R66
      265 FASTCALL1                        MATH_SQRT R68 ; [+2]
      266 GETIMPORT                        R67 K51 [math.sqrt]
      268 CALL                             R67 1 1
      269 JUMP                             ; [+5]
      270 ADD                              R68 R34 R66
      271 FASTCALL1                        MATH_SQRT R68 ; [+2]
      272 GETIMPORT                        R67 K51 [math.sqrt]
      274 CALL                             R67 1 1
      275 GETUPVAL                         R68 11
      276 MOVE                             R69 R67
      277 MOVE                             R70 R30
      278 CALL                             R68 2 1
      279 MOVE                             R64 R68
      280 GETUPVAL                         R68 12
      281 MOVE                             R69 R67
      282 MOVE                             R70 R30
      283 CALL                             R68 2 1
      284 MOVE                             R65 R68
      285 JUMPIFNOT                        R9 ; [+5]
      286 JUMPIFNOTEQ                      R63 R21 ; [+4]
      288 SETTABLE                         R62 R56 R61
      289 SETTABLE                         R63 R55 R61
      290 JUMP                             ; [+38]
      291 GETTABLE                         R66 R55 R61
      292 LOADB                            R67 1
      293 JUMPIFEQ                         R66 R20 ; [+7]
      295 GETTABLE                         R68 R56 R61
      296 LOADN                            R69 0
      297 JUMPIFLE                         R68 R69 ; [+2]
      299 LOADB                            R67 0 +1
      300 LOADB                            R67 1
      301 GETTABLE                         R72 R56 R61
      302 SUB                              R71 R72 R62
      303 MUL                              R70 R71 R10
      304 MUL                              R69 R70 R64
      305 MUL                              R68 R69 R65
      306 ADD                              R70 R62 R68
      307 LOADN                            R71 0
      308 LOADN                            R72 1
      309 FASTCALL                         MATH_CLAMP ; [+2]
      310 GETIMPORT                        R69 K53 [math.clamp]
      312 CALL                             R69 3 1
      313 GETTABLE                         R70 R56 R61
      314 JUMPIFEQ                         R69 R70 ; [+14]
      316 SETTABLE                         R69 R56 R61
      317 JUMPIFNOT                        R67 ; [+7]
      318 GETUPVAL                         R70 13
      319 GETTABLEKS                       R70 R70 K54 ["MinimumSmooth"]
      321 JUMPIFNOTLE                      R70 R69 ; [+3]
      323 SETTABLE                         R63 R55 R61
      324 JUMP                             ; [+4]
      325 LOADN                            R70 0
      326 JUMPIFNOTLE                      R69 R70 ; [+2]
      328 SETTABLE                         R20 R55 R61
      329 FORGLOOP                         R58 2 ; [-75]
      331 FORGLOOP                         R50 2 ; [-92]
      333 FORGLOOP                         R42 2 ; [-108]
      335 GETUPVAL                         R44 14
      336 GETTABLEKS                       R44 R44 K55 ["NormalizeBrushTimer"]
      338 MOVE                             R45 R41
      339 MOVE                             R46 R6
      340 MOVE                             R47 R5
      341 CALL                             R44 3 -1
      342 NAMECALL                         R42 R1 K56 ["addTimeStatistic"]
      344 CALL                             R42 -1 0
      345 JUMPIFNOT                        R36 ; [+5]
      346 MOVE                             R44 R29
      347 NAMECALL                         R42 R36 K57 ["write"]
      349 CALL                             R42 2 0
      350 JUMP                             ; [+10]
      351 GETUPVAL                         R42 9
      352 GETTABLEKS                       R42 R42 K24 ["Terrain"]
      354 MOVE                             R44 R29
      355 GETUPVAL                         R45 4
      356 MOVE                             R46 R39
      357 MOVE                             R47 R40
      358 NAMECALL                         R42 R42 K58 ["WriteVoxels"]
      360 CALL                             R42 5 0
      361 FORGLOOP                         R22 2 ; [-234]
      363 GETUPVAL                         R22 0
      364 GETTABLEKS                       R22 R22 K4 ["ProfileTools"]
      366 CALL                             R22 0 1
      367 JUMPIFNOT                        R22 ; [+3]
      368 GETIMPORT                        R22 K60 [debug.profileend]
      370 CALL                             R22 0 0
      371 LOADB                            R22 1
      372 LOADN                            R23 0
      373 RETURN                           R22 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ChangeHistoryService"]
        3 LOADK                            R4 K1 ["Smooth"]
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
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          VAL R1
       24 GETUPVAL                         R5 14
       25 GETTABLEKS                       R5 R5 K1 ["new"]
       27 DUPTABLE                         R6 K8 [{["Budget"] = 0.005, ["OnFinish"], ["OnStart"], ["OnStep"], ["Name"]}]
       28 SETTABLEKS                       R4 R6 K4 ["OnFinish"]
       30 SETTABLEKS                       R2 R6 K5 ["OnStart"]
       32 SETTABLEKS                       R3 R6 K6 ["OnStep"]
       34 SETTABLEKS                       R0 R6 K7 ["Name"]
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
       41 GETTABLEKS                       R8 R3 K15 ["CalculateMagnitudePercent"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R3 K16 ["ClampVoxelBoundaries"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R3 K17 ["ConvertForPivot"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R3 K18 ["getDraggedPositions"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R3 K12 ["Operations"]
       63 GETTABLEKS                       R12 R12 K19 ["SmoothMaterialBackend"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K6 ["Src"]
       70 GETTABLEKS                       R13 R13 K20 ["Flags"]
       72 GETTABLEKS                       R13 R13 K21 ["getFFlagEnableTerrainPalette"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R0 K6 ["Src"]
       79 GETTABLEKS                       R14 R14 K22 ["Types"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R13 K23 ["BrushShape"]
       84 GETTABLEKS                       R15 R13 K24 ["BrushSettings"]
       86 GETTABLEKS                       R16 R13 K25 ["Category"]
       88 GETIMPORT                        R17 K5 [require]
       90 GETTABLEKS                       R18 R0 K6 ["Src"]
       92 GETTABLEKS                       R18 R18 K10 ["Util"]
       94 GETTABLEKS                       R18 R18 K26 ["DebugFlags"]
       96 CALL                             R17 1 1
       97 DUPCLOSURE                       R18 K27 [PROTO_3]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 RETURN                           R18 1
