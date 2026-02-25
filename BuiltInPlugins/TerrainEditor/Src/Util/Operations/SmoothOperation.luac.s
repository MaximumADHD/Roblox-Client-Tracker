PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BrushSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["BrushSize"]
        9 GETTABLE                         R3 R2 R4
       10 GETTABLEKS                       R4 R3 K3 ["Height"]
       12 GETTABLEKS                       R5 R3 K4 ["Size"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K5 ["BrushShape"]
       17 GETTABLE                         R6 R2 R7
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K6 ["State"]
       21 GETTABLE                         R7 R2 R8
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R10 R11 K7 ["Sphere"]
       25 JUMPIFNOTEQ                      R6 R10 ; [+3]
       27 MOVE                             R9 R5
       28 JUMP                             ; [+1]
       29 MOVE                             R9 R4
       30 GETUPVAL                         R10 3
       31 MUL                              R8 R9 R10
       32 GETUPVAL                         R9 4
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R11 R12 K8 ["PivotPosition"]
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
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["ProfileTools"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETIMPORT                        R2 K7 [debug.profilebegin]
       15 LOADK                            R3 K8 ["Smooth"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K0 ["State"]
       19 GETTABLEKS                       R4 R0 K9 ["Payload"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K10 ["BrushSettings"]
       24 GETTABLE                         R3 R4 R5
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K11 ["BrushSize"]
       28 GETTABLE                         R4 R3 R5
       29 GETTABLEKS                       R5 R4 K12 ["Height"]
       31 GETTABLEKS                       R6 R4 K13 ["Size"]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K14 ["BrushShape"]
       36 GETTABLE                         R7 R3 R8
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R9 R10 K0 ["State"]
       40 GETTABLE                         R8 R3 R9
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R10 R11 K15 ["IgnoreWater"]
       44 GETTABLE                         R9 R3 R10
       45 GETUPVAL                         R13 2
       46 GETTABLEKS                       R12 R13 K17 ["Strength"]
       48 GETTABLE                         R11 R3 R12
       49 ORK                              R10 R11 K16 [1]
       50 LOADB                            R11 0
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R12 R13 K18 ["Sphere"]
       54 JUMPIFNOTEQ                      R7 R12 ; [+6]
       56 LOADN                            R12 2
       57 JUMPIFLT                         R12 R6 ; [+2]
       59 LOADB                            R11 0 +1
       60 LOADB                            R11 1
       61 GETUPVAL                         R14 3
       62 GETTABLEKS                       R13 R14 K19 ["Cylinder"]
       64 JUMPIFNOTEQ                      R7 R13 ; [+5]
       66 LOADB                            R12 1
       67 LOADN                            R13 2
       68 JUMPIFLT                         R13 R6 ; [+2]
       70 MOVE                             R12 R11
       71 GETUPVAL                         R16 3
       72 GETTABLEKS                       R15 R16 K18 ["Sphere"]
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
       85 GETUPVAL                         R19 2
       86 GETTABLEKS                       R18 R19 K21 ["PivotPosition"]
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
      103 MOVE                             R18 R17
      104 LOADNIL                          R19
      105 LOADNIL                          R20
      106 FORGPREP                         R18
      107 GETUPVAL                         R23 7
      108 MOVE                             R24 R22
      109 MOVE                             R25 R15
      110 MOVE                             R26 R13
      111 CALL                             R23 3 2
      112 GETIMPORT                        R25 K25 [Region3.new]
      114 MOVE                             R26 R23
      115 MOVE                             R27 R24
      116 CALL                             R25 2 1
      117 GETTABLEKS                       R28 R24 K26 ["X"]
      119 GETTABLEKS                       R29 R23 K26 ["X"]
      121 SUB                              R27 R28 R29
      122 MULK                             R26 R27 K20 [0.5]
      123 GETTABLEKS                       R29 R23 K26 ["X"]
      125 GETUPVAL                         R31 4
      126 MULK                             R30 R31 K20 [0.5]
      127 SUB                              R28 R29 R30
      128 GETTABLEKS                       R29 R22 K26 ["X"]
      130 SUB                              R27 R28 R29
      131 GETTABLEKS                       R30 R23 K27 ["Y"]
      133 GETUPVAL                         R32 4
      134 MULK                             R31 R32 K20 [0.5]
      135 SUB                              R29 R30 R31
      136 GETTABLEKS                       R30 R22 K27 ["Y"]
      138 SUB                              R28 R29 R30
      139 GETTABLEKS                       R31 R23 K28 ["Z"]
      141 GETUPVAL                         R33 4
      142 MULK                             R32 R33 K20 [0.5]
      143 SUB                              R30 R31 R32
      144 GETTABLEKS                       R31 R22 K28 ["Z"]
      146 SUB                              R29 R30 R31
      147 LOADNIL                          R30
      148 LOADNIL                          R31
      149 GETUPVAL                         R33 8
      150 GETTABLEKS                       R32 R33 K29 ["Terrain"]
      152 MOVE                             R34 R25
      153 GETUPVAL                         R35 4
      154 NAMECALL                         R32 R32 K30 ["ReadVoxels"]
      156 CALL                             R32 3 2
      157 GETUPVAL                         R35 8
      158 GETTABLEKS                       R34 R35 K29 ["Terrain"]
      160 MOVE                             R36 R25
      161 GETUPVAL                         R37 4
      162 MOVE                             R38 R10
      163 NAMECALL                         R34 R34 K31 ["SmoothRegion"]
      165 CALL                             R34 4 2
      166 LOADNIL                          R36
      167 SETTABLEKS                       R36 R32 K13 ["Size"]
      169 LOADNIL                          R36
      170 SETTABLEKS                       R36 R33 K13 ["Size"]
      172 GETIMPORT                        R36 K34 [os.clock]
      174 CALL                             R36 0 1
      175 MOVE                             R37 R33
      176 LOADNIL                          R38
      177 LOADNIL                          R39
      178 FORGPREP                         R37
      179 JUMPIFNOT                        R12 ; [+5]
      180 GETUPVAL                         R44 4
      181 MUL                              R43 R40 R44
      182 ADD                              R42 R43 R27
      183 POWK                             R30 R42 K35 [2]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R30
      186 GETTABLE                         R42 R34 R40
      187 GETTABLE                         R43 R35 R40
      188 GETTABLE                         R44 R32 R40
      189 MOVE                             R45 R41
      190 LOADNIL                          R46
      191 LOADNIL                          R47
      192 FORGPREP                         R45
      193 JUMPIFNOT                        R11 ; [+6]
      194 GETUPVAL                         R53 4
      195 MUL                              R52 R48 R53
      196 ADD                              R51 R52 R28
      197 POWK                             R50 R51 K35 [2]
      198 ADD                              R31 R30 R50
      199 JUMP                             ; [+1]
      200 LOADNIL                          R31
      201 GETTABLE                         R50 R42 R48
      202 GETTABLE                         R51 R43 R48
      203 GETTABLE                         R52 R44 R48
      204 MOVE                             R53 R49
      205 LOADNIL                          R54
      206 LOADNIL                          R55
      207 FORGPREP                         R53
      208 GETTABLE                         R58 R52 R56
      209 LOADN                            R59 1
      210 LOADN                            R60 1
      211 JUMPIFNOT                        R12 ; [+26]
      212 GETUPVAL                         R64 4
      213 MUL                              R63 R56 R64
      214 ADD                              R62 R63 R29
      215 POWK                             R61 R62 K35 [2]
      216 JUMPIFNOT                        R11 ; [+6]
      217 ADD                              R63 R31 R61
      218 FASTCALL1                        MATH_SQRT R63 ; [+2]
      219 GETIMPORT                        R62 K38 [math.sqrt]
      221 CALL                             R62 1 1
      222 JUMP                             ; [+5]
      223 ADD                              R63 R30 R61
      224 FASTCALL1                        MATH_SQRT R63 ; [+2]
      225 GETIMPORT                        R62 K38 [math.sqrt]
      227 CALL                             R62 1 1
      228 GETUPVAL                         R63 9
      229 MOVE                             R64 R62
      230 MOVE                             R65 R26
      231 CALL                             R63 2 1
      232 MOVE                             R59 R63
      233 GETUPVAL                         R63 10
      234 MOVE                             R64 R62
      235 MOVE                             R65 R26
      236 CALL                             R63 2 1
      237 MOVE                             R60 R63
      238 JUMPIFNOT                        R9 ; [+7]
      239 GETIMPORT                        R61 K42 [Enum.Material.Water]
      241 JUMPIFNOTEQ                      R58 R61 ; [+4]
      243 SETTABLE                         R57 R43 R56
      244 SETTABLE                         R58 R50 R56
      245 RETURN                           R0 0
      246 GETTABLE                         R61 R50 R56
      247 LOADB                            R62 1
      248 GETIMPORT                        R63 K44 [Enum.Material.Air]
      250 JUMPIFEQ                         R61 R63 ; [+7]
      252 GETTABLE                         R63 R51 R56
      253 LOADN                            R64 0
      254 JUMPIFLE                         R63 R64 ; [+2]
      256 LOADB                            R62 0 +1
      257 LOADB                            R62 1
      258 GETTABLE                         R67 R51 R56
      259 SUB                              R66 R67 R57
      260 MUL                              R65 R66 R10
      261 MUL                              R64 R65 R59
      262 MUL                              R63 R64 R60
      263 ADD                              R65 R57 R63
      264 LOADN                            R66 0
      265 LOADN                            R67 1
      266 FASTCALL                         MATH_CLAMP ; [+2]
      267 GETIMPORT                        R64 K46 [math.clamp]
      269 CALL                             R64 3 1
      270 GETTABLE                         R65 R51 R56
      271 JUMPIFEQ                         R64 R65 ; [+16]
      273 SETTABLE                         R64 R51 R56
      274 JUMPIFNOT                        R62 ; [+7]
      275 GETUPVAL                         R66 11
      276 GETTABLEKS                       R65 R66 K47 ["MinimumSmooth"]
      278 JUMPIFNOTLE                      R65 R64 ; [+3]
      280 SETTABLE                         R58 R50 R56
      281 JUMP                             ; [+6]
      282 LOADN                            R65 0
      283 JUMPIFNOTLE                      R64 R65 ; [+4]
      285 GETIMPORT                        R65 K44 [Enum.Material.Air]
      287 SETTABLE                         R65 R50 R56
      288 FORGLOOP                         R53 2 ; [-81]
      290 FORGLOOP                         R45 2 ; [-98]
      292 FORGLOOP                         R37 2 ; [-114]
      294 GETUPVAL                         R40 12
      295 GETTABLEKS                       R39 R40 K48 ["NormalizeBrushTimer"]
      297 MOVE                             R40 R36
      298 MOVE                             R41 R6
      299 MOVE                             R42 R5
      300 CALL                             R39 3 -1
      301 NAMECALL                         R37 R1 K49 ["addTimeStatistic"]
      303 CALL                             R37 -1 0
      304 GETUPVAL                         R38 8
      305 GETTABLEKS                       R37 R38 K29 ["Terrain"]
      307 MOVE                             R39 R25
      308 GETUPVAL                         R40 4
      309 MOVE                             R41 R34
      310 MOVE                             R42 R35
      311 NAMECALL                         R37 R37 K50 ["WriteVoxels"]
      313 CALL                             R37 5 0
      314 FORGLOOP                         R18 2 ; [-208]
      316 GETUPVAL                         R19 0
      317 GETTABLEKS                       R18 R19 K4 ["ProfileTools"]
      319 CALL                             R18 0 1
      320 JUMPIFNOT                        R18 ; [+3]
      321 GETIMPORT                        R18 K52 [debug.profileend]
      323 CALL                             R18 0 0
      324 LOADB                            R18 1
      325 LOADN                            R19 0
      326 RETURN                           R18 2

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ChangeHistoryService"]
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
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          VAL R1
       22 GETUPVAL                         R6 12
       23 GETTABLEKS                       R5 R6 K1 ["new"]
       25 DUPTABLE                         R6 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
       26 LOADK                            R7 K8 [0.005]
       27 SETTABLEKS                       R7 R6 K2 ["Budget"]
       29 SETTABLEKS                       R4 R6 K3 ["OnFinish"]
       31 SETTABLEKS                       R2 R6 K4 ["OnStart"]
       33 SETTABLEKS                       R3 R6 K5 ["OnStep"]
       35 SETTABLEKS                       R0 R6 K6 ["Name"]
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["VoxelResolution"]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K10 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K11 ["AnalyticsHelper"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R3 K12 ["Operations"]
       31 GETTABLEKS                       R6 R7 K13 ["BaseOperation"]
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
       61 GETTABLEKS                       R13 R0 K6 ["Src"]
       63 GETTABLEKS                       R12 R13 K19 ["Types"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R11 K20 ["BrushShape"]
       68 GETTABLEKS                       R13 R11 K21 ["BrushSettings"]
       70 GETTABLEKS                       R14 R11 K22 ["Category"]
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R18 R0 K6 ["Src"]
       76 GETTABLEKS                       R17 R18 K10 ["Util"]
       78 GETTABLEKS                       R16 R17 K23 ["DebugFlags"]
       80 CALL                             R15 1 1
       81 DUPCLOSURE                       R16 K24 [PROTO_3]
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 RETURN                           R16 1
