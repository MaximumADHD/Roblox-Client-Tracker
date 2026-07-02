PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R6 R0 K0 ["Payload"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K1 ["BiomeSettings"]
        6 GETTABLE                         R5 R6 R7
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K2 ["Seed"]
       10 GETTABLE                         R4 R5 R6
       11 FASTCALL1                        TOSTRING R4 ; [+2]
       12 GETIMPORT                        R3 K4 [tostring]
       14 CALL                             R3 1 1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 4
       20 MOVE                             R5 R2
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R7 R0 K0 ["Payload"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K5 ["SelectionSettings"]
       27 GETTABLE                         R6 R7 R8
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K6 ["Transform"]
       31 GETTABLE                         R5 R6 R7
       32 GETTABLEKS                       R5 R5 K7 ["Position"]
       34 GETTABLEKS                       R8 R0 K0 ["Payload"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K5 ["SelectionSettings"]
       39 GETTABLE                         R7 R8 R9
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K8 ["Size"]
       43 GETTABLE                         R6 R7 R8
       44 DIVK                             R7 R6 K9 [2]
       45 GETIMPORT                        R8 K12 [Region3.new]
       47 SUB                              R9 R5 R7
       48 ADD                              R10 R5 R7
       49 CALL                             R8 2 1
       50 GETUPVAL                         R11 6
       51 NAMECALL                         R9 R8 K13 ["ExpandToGrid"]
       53 CALL                             R9 2 1
       54 MOVE                             R8 R9
       55 GETTABLEKS                       R9 R8 K14 ["CFrame"]
       57 GETTABLEKS                       R5 R9 K7 ["Position"]
       59 GETTABLEKS                       R10 R8 K8 ["Size"]
       61 GETUPVAL                         R11 6
       62 DIV                              R9 R10 R11
       63 DIVK                             R10 R9 K9 [2]
       64 GETUPVAL                         R12 6
       65 DIV                              R11 R5 R12
       66 MINUS                            R15 R10
       67 LOADK                            R16 K15 [{-1, 0, 0}]
       68 ADD                              R14 R15 R16
       69 GETUPVAL                         R15 6
       70 MUL                              R13 R14 R15
       71 ADD                              R12 R13 R5
       72 LOADK                            R16 K16 [{-1, 1, 1}]
       73 MUL                              R15 R10 R16
       74 GETUPVAL                         R16 6
       75 MUL                              R14 R15 R16
       76 ADD                              R13 R14 R5
       77 GETIMPORT                        R14 K12 [Region3.new]
       79 MOVE                             R15 R12
       80 MOVE                             R16 R13
       81 CALL                             R14 2 1
       82 GETUPVAL                         R16 6
       83 NAMECALL                         R14 R14 K13 ["ExpandToGrid"]
       85 CALL                             R14 2 1
       86 GETTABLEKS                       R16 R14 K8 ["Size"]
       88 GETTABLEKS                       R16 R16 K17 ["Y"]
       90 GETUPVAL                         R17 6
       91 DIV                              R15 R16 R17
       92 GETTABLEKS                       R17 R14 K8 ["Size"]
       94 GETTABLEKS                       R17 R17 K18 ["Z"]
       96 GETUPVAL                         R18 6
       97 DIV                              R16 R17 R18
       98 DIVRK                            R18 K19 [65536] R15
       99 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      100 GETIMPORT                        R17 K22 [math.floor]
      102 CALL                             R17 1 1
      103 NEWTABLE                         R18 0 1
      105 GETIMPORT                        R19 K25 [table.create]
      107 MOVE                             R20 R15
      108 CALL                             R19 1 -1
      109 SETLIST                          R18 R19 -1 [1]
      111 NEWTABLE                         R19 0 1
      113 GETIMPORT                        R20 K25 [table.create]
      115 MOVE                             R21 R15
      116 CALL                             R20 1 -1
      117 SETLIST                          R19 R20 -1 [1]
      119 LOADN                            R22 1
      120 MOVE                             R20 R15
      121 LOADN                            R21 1
      122 FORNPREP                         R20
      123 JUMPIFNOTLT                      R16 R17 ; [+3]
      125 MOVE                             R23 R16
      126 JUMP                             ; [+1]
      127 MOVE                             R23 R17
      128 GETTABLEN                        R24 R18 1
      129 GETIMPORT                        R25 K25 [table.create]
      131 MOVE                             R26 R23
      132 LOADN                            R27 0
      133 CALL                             R25 2 1
      134 SETTABLE                         R25 R24 R22
      135 GETTABLEN                        R24 R19 1
      136 GETIMPORT                        R25 K25 [table.create]
      138 MOVE                             R26 R23
      139 GETIMPORT                        R27 K29 [Enum.Material.Air]
      141 CALL                             R25 2 1
      142 SETTABLE                         R25 R24 R22
      143 FORNLOOP                         R20
      144 GETIMPORT                        R20 K25 [table.create]
      146 LOADN                            R21 9
      147 CALL                             R20 1 1
      148 LOADN                            R23 1
      149 LOADN                            R21 9
      150 LOADN                            R22 1
      151 FORNPREP                         R21
      152 DUPTABLE                         R24 K33 [{["DistSquared"] = 0, ["BiomeNoise"] = 0}]
      153 SETTABLE                         R24 R20 R23
      154 FORNLOOP                         R21
      155 GETTABLEKS                       R23 R0 K0 ["Payload"]
      157 GETUPVAL                         R24 1
      158 GETTABLEKS                       R24 R24 K1 ["BiomeSettings"]
      160 GETTABLE                         R22 R23 R24
      161 GETUPVAL                         R23 2
      162 GETTABLEKS                       R23 R23 K34 ["BiomeBlending"]
      164 GETTABLE                         R21 R22 R23
      165 NEWTABLE                         R22 0 0
      167 GETTABLEKS                       R27 R0 K0 ["Payload"]
      169 GETUPVAL                         R28 1
      170 GETTABLEKS                       R28 R28 K1 ["BiomeSettings"]
      172 GETTABLE                         R26 R27 R28
      173 GETUPVAL                         R27 2
      174 GETTABLEKS                       R27 R27 K35 ["Biomes"]
      176 GETTABLE                         R23 R26 R27
      177 LOADNIL                          R24
      178 LOADNIL                          R25
      179 FORGPREP                         R23
      180 JUMPIFNOT                        R27 ; [+7]
      181 FASTCALL2                        TABLE_INSERT R22 R26 ; [+5]
      183 MOVE                             R29 R22
      184 MOVE                             R30 R26
      185 GETIMPORT                        R28 K37 [table.insert]
      187 CALL                             R28 2 0
      188 FORGLOOP                         R23 2 ; [-9]
      190 DUPTABLE                         R23 K56 [{["Biomes"], ["BiomePoints"], ["BiomeBlending"], ["BiomeBlendingInverse"], ["BiomeSize"], ["GetPerlin"], ["GetNoise"], ["MaterialMap"], ["MaxWidth"], ["OccupancyMap"], ["Position"], ["PreviousColumnHeights"], ["ProcessVoxel"], ["SliceY"], ["SliceZ"], ["StartTime"], ["VoxelCorner"], ["VoxelExtents"], ["VoxelSize"], ["X"] = 1}]
      191 SETTABLEKS                       R22 R23 K35 ["Biomes"]
      193 SETTABLEKS                       R20 R23 K38 ["BiomePoints"]
      195 SETTABLEKS                       R21 R23 K34 ["BiomeBlending"]
      197 SUBRK                            R24 K55 [1] R21
      198 SETTABLEKS                       R24 R23 K39 ["BiomeBlendingInverse"]
      200 GETTABLEKS                       R26 R0 K0 ["Payload"]
      202 GETUPVAL                         R27 1
      203 GETTABLEKS                       R27 R27 K1 ["BiomeSettings"]
      205 GETTABLE                         R25 R26 R27
      206 GETUPVAL                         R26 2
      207 GETTABLEKS                       R26 R26 K40 ["BiomeSize"]
      209 GETTABLE                         R24 R25 R26
      210 SETTABLEKS                       R24 R23 K40 ["BiomeSize"]
      212 SETTABLEKS                       R3 R23 K41 ["GetPerlin"]
      214 SETTABLEKS                       R4 R23 K42 ["GetNoise"]
      216 SETTABLEKS                       R19 R23 K43 ["MaterialMap"]
      218 SETTABLEKS                       R17 R23 K44 ["MaxWidth"]
      220 SETTABLEKS                       R18 R23 K45 ["OccupancyMap"]
      222 SETTABLEKS                       R5 R23 K7 ["Position"]
      224 NEWTABLE                         R24 0 0
      226 SETTABLEKS                       R24 R23 K46 ["PreviousColumnHeights"]
      228 GETUPVAL                         R24 7
      229 MOVE                             R25 R3
      230 MOVE                             R26 R4
      231 DUPTABLE                         R27 K67 [{["Biomes"], ["DefaultBiomeFill"], ["DefaultBiomeSurface"], ["DefaultBiomeValue"] = 0.5, ["HasCaves"], ["MapHeight"], ["SurfaceThickness"] = 0.018, ["WaterLevel"] = 0.48}]
      232 SETTABLEKS                       R22 R27 K35 ["Biomes"]
      234 GETIMPORT                        R28 K69 [Enum.Material.Rock]
      236 SETTABLEKS                       R28 R27 K57 ["DefaultBiomeFill"]
      238 GETIMPORT                        R28 K71 [Enum.Material.Grass]
      240 SETTABLEKS                       R28 R27 K58 ["DefaultBiomeSurface"]
      242 GETTABLEKS                       R30 R0 K0 ["Payload"]
      244 GETUPVAL                         R31 1
      245 GETTABLEKS                       R31 R31 K1 ["BiomeSettings"]
      247 GETTABLE                         R29 R30 R31
      248 GETUPVAL                         R30 2
      249 GETTABLEKS                       R30 R30 K72 ["Caves"]
      251 GETTABLE                         R28 R29 R30
      252 SETTABLEKS                       R28 R27 K61 ["HasCaves"]
      254 GETTABLEKS                       R30 R6 K17 ["Y"]
      256 GETUPVAL                         R31 6
      257 DIV                              R29 R30 R31
      258 DIVRK                            R28 K60 [0.5] R29
      259 SETTABLEKS                       R28 R27 K62 ["MapHeight"]
      261 CALL                             R24 3 1
      262 SETTABLEKS                       R24 R23 K47 ["ProcessVoxel"]
      264 SETTABLEKS                       R15 R23 K48 ["SliceY"]
      266 SETTABLEKS                       R16 R23 K49 ["SliceZ"]
      268 GETIMPORT                        R24 K75 [os.clock]
      270 CALL                             R24 0 1
      271 SETTABLEKS                       R24 R23 K50 ["StartTime"]
      273 DIVK                             R25 R9 K9 [2]
      274 SUB                              R24 R11 R25
      275 SETTABLEKS                       R24 R23 K51 ["VoxelCorner"]
      277 SETTABLEKS                       R10 R23 K52 ["VoxelExtents"]
      279 SETTABLEKS                       R9 R23 K53 ["VoxelSize"]
      281 SETTABLEKS                       R23 R0 K76 ["State"]
      283 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["State"]
        2 GETTABLEKS                       R3 R2 K1 ["Biomes"]
        4 GETTABLEKS                       R4 R2 K2 ["BiomePoints"]
        6 GETTABLEKS                       R5 R2 K3 ["BiomeSize"]
        8 GETTABLEKS                       R6 R2 K4 ["BiomeBlending"]
       10 GETTABLEKS                       R7 R2 K5 ["BiomeBlendingInverse"]
       12 GETTABLEKS                       R8 R2 K6 ["GetPerlin"]
       14 GETTABLEKS                       R9 R2 K7 ["GetNoise"]
       16 GETTABLEKS                       R10 R2 K8 ["MaterialMap"]
       18 GETTABLEKS                       R11 R2 K9 ["MaxWidth"]
       20 GETTABLEKS                       R12 R2 K10 ["OccupancyMap"]
       22 GETTABLEKS                       R13 R2 K11 ["Position"]
       24 GETTABLEKS                       R14 R2 K12 ["PreviousColumnHeights"]
       26 GETTABLEKS                       R15 R2 K13 ["ProcessVoxel"]
       28 GETTABLEKS                       R16 R2 K14 ["SliceY"]
       30 GETTABLEKS                       R17 R2 K15 ["SliceZ"]
       32 GETTABLEKS                       R18 R2 K16 ["VoxelCorner"]
       34 GETTABLEKS                       R19 R2 K17 ["VoxelExtents"]
       36 GETTABLEKS                       R20 R2 K18 ["VoxelSize"]
       38 GETTABLEKS                       R21 R2 K19 ["X"]
       40 GETTABLEKS                       R23 R19 K19 ["X"]
       42 SUB                              R22 R21 R23
       43 MOVE                             R23 R17
       44 GETTABLEKS                       R25 R19 K20 ["Z"]
       46 MINUS                            R24 R25
       47 NEWTABLE                         R25 0 0
       49 LOADN                            R26 0
       50 JUMPIFNOTLT                      R26 R23 ; [+48]
       52 JUMPIFNOTLT                      R23 R11 ; [+3]
       54 MOVE                             R26 R23
       55 JUMP                             ; [+1]
       56 MOVE                             R26 R11
       57 SUBK                             R30 R22 K21 [1]
       58 GETTABLEKS                       R32 R19 K22 ["Y"]
       60 MINUS                            R31 R32
       61 FASTCALL3                        VECTOR R30 R31 R24
       63 MOVE                             R32 R24
       64 GETIMPORT                        R29 K25 [Vector3.new]
       66 CALL                             R29 3 1
       67 GETUPVAL                         R30 0
       68 MUL                              R28 R29 R30
       69 ADD                              R27 R28 R13
       70 GETTABLEKS                       R32 R19 K22 ["Y"]
       72 ADD                              R33 R24 R26
       73 FASTCALL3                        VECTOR R22 R32 R33
       75 MOVE                             R31 R22
       76 GETIMPORT                        R30 K25 [Vector3.new]
       78 CALL                             R30 3 1
       79 GETUPVAL                         R31 0
       80 MUL                              R29 R30 R31
       81 ADD                              R28 R29 R13
       82 MOVE                             R30 R25
       83 GETIMPORT                        R31 K27 [Region3.new]
       85 MOVE                             R32 R27
       86 MOVE                             R33 R28
       87 CALL                             R31 2 1
       88 GETUPVAL                         R33 0
       89 NAMECALL                         R31 R31 K28 ["ExpandToGrid"]
       91 CALL                             R31 2 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R29 K31 [table.insert]
       95 CALL                             R29 -1 0
       96 SUB                              R23 R23 R11
       97 ADD                              R24 R24 R11
       98 JUMPBACK                         ; [-50]
       99 LENGTH                           R26 R25
      100 JUMPIFNOTEQKN                    R26 K32 [0] ; [+4]
      102 LOADB                            R26 0
      103 LOADN                            R27 1
      104 RETURN                           R26 2
      105 LOADN                            R26 1
      106 LOADN                            R29 1
      107 MOVE                             R27 R17
      108 LOADN                            R28 1
      109 FORNPREP                         R27
      110 SUBK                             R33 R29 K21 [1]
      111 DIV                              R32 R33 R11
      112 FASTCALL1                        MATH_FLOOR R32 ; [+2]
      113 GETIMPORT                        R31 K35 [math.floor]
      115 CALL                             R31 1 1
      116 ADDK                             R30 R31 K21 [1]
      117 JUMPIFEQ                         R30 R26 ; [+60]
      119 GETUPVAL                         R31 1
      120 GETTABLEKS                       R31 R31 K36 ["Terrain"]
      122 GETTABLE                         R33 R25 R26
      123 GETUPVAL                         R34 0
      124 MOVE                             R35 R10
      125 MOVE                             R36 R12
      126 NAMECALL                         R31 R31 K37 ["WriteVoxels"]
      128 CALL                             R31 5 0
      129 LENGTH                           R31 R25
      130 JUMPIFNOTEQ                      R30 R31 ; [+46]
      132 GETTABLE                         R32 R25 R30
      133 GETTABLEKS                       R32 R32 K38 ["Size"]
      135 GETTABLEKS                       R32 R32 K20 ["Z"]
      137 GETUPVAL                         R33 0
      138 DIV                              R31 R32 R33
      139 NEWTABLE                         R32 0 1
      141 GETIMPORT                        R33 K40 [table.create]
      143 MOVE                             R34 R16
      144 CALL                             R33 1 -1
      145 SETLIST                          R32 R33 -1 [1]
      147 MOVE                             R12 R32
      148 NEWTABLE                         R32 0 1
      150 GETIMPORT                        R33 K40 [table.create]
      152 MOVE                             R34 R16
      153 CALL                             R33 1 -1
      154 SETLIST                          R32 R33 -1 [1]
      156 MOVE                             R10 R32
      157 LOADN                            R34 1
      158 MOVE                             R32 R16
      159 LOADN                            R33 1
      160 FORNPREP                         R32
      161 GETTABLEN                        R35 R12 1
      162 GETIMPORT                        R36 K40 [table.create]
      164 MOVE                             R37 R31
      165 LOADN                            R38 0
      166 CALL                             R36 2 1
      167 SETTABLE                         R36 R35 R34
      168 GETTABLEN                        R35 R10 1
      169 GETIMPORT                        R36 K40 [table.create]
      171 MOVE                             R37 R31
      172 GETIMPORT                        R38 K44 [Enum.Material.Air]
      174 CALL                             R36 2 1
      175 SETTABLE                         R36 R35 R34
      176 FORNLOOP                         R32
      177 MOVE                             R26 R30
      178 SUBK                             R33 R26 K21 [1]
      179 MUL                              R32 R33 R11
      180 SUB                              R31 R29 R32
      181 LOADK                            R35 K45 [{1, 0, 1}]
      182 MUL                              R34 R18 R35
      183 SUBK                             R36 R21 K21 [1]
      184 LOADN                            R37 0
      185 LOADN                            R38 0
      186 FASTCALL                         VECTOR ; [+2]
      187 GETIMPORT                        R35 K25 [Vector3.new]
      189 CALL                             R35 3 1
      190 ADD                              R33 R34 R35
      191 LOADN                            R35 0
      192 LOADN                            R36 0
      193 SUBK                             R37 R29 K21 [1]
      194 FASTCALL                         VECTOR ; [+2]
      195 GETIMPORT                        R34 K25 [Vector3.new]
      197 CALL                             R34 3 1
      198 ADD                              R32 R33 R34
      199 GETTABLEKS                       R36 R32 K19 ["X"]
      201 DIV                              R35 R36 R5
      202 GETUPVAL                         R37 2
      203 MOVE                             R38 R8
      204 MOVE                             R39 R32
      205 LOADN                            R40 233
      206 MULK                             R41 R5 K47 [0.3]
      207 CALL                             R38 3 -1
      208 CALL                             R37 -1 1
      209 MULK                             R36 R37 K46 [0.25]
      210 ADD                              R34 R35 R36
      211 GETUPVAL                         R36 2
      212 MOVE                             R37 R8
      213 MOVE                             R38 R32
      214 LOADN                            R39 235
      215 MULK                             R40 R5 K49 [0.05]
      216 CALL                             R37 3 -1
      217 CALL                             R36 -1 1
      218 MULK                             R35 R36 K48 [0.075]
      219 ADD                              R33 R34 R35
      220 GETTABLEKS                       R37 R32 K20 ["Z"]
      222 DIV                              R36 R37 R5
      223 GETUPVAL                         R38 2
      224 MOVE                             R39 R8
      225 MOVE                             R40 R32
      226 LOADN                            R41 234
      227 MULK                             R42 R5 K47 [0.3]
      228 CALL                             R39 3 -1
      229 CALL                             R38 -1 1
      230 MULK                             R37 R38 K46 [0.25]
      231 ADD                              R35 R36 R37
      232 GETUPVAL                         R37 2
      233 MOVE                             R38 R8
      234 MOVE                             R39 R32
      235 LOADN                            R40 236
      236 MULK                             R41 R5 K49 [0.05]
      237 CALL                             R38 3 -1
      238 CALL                             R37 -1 1
      239 MULK                             R36 R37 K48 [0.075]
      240 ADD                              R34 R35 R36
      241 LOADK                            R35 K50 [10000000]
      242 LOADB                            R36 0
      243 LOADN                            R37 0
      244 LOADN                            R40 -1
      245 LOADN                            R38 1
      246 LOADN                            R39 1
      247 FORNPREP                         R38
      248 LOADN                            R43 -1
      249 LOADN                            R41 1
      250 LOADN                            R42 1
      251 FORNPREP                         R41
      252 ADD                              R46 R33 R40
      253 ADDK                             R45 R46 K51 [0.5]
      254 FASTCALL1                        MATH_FLOOR R45 ; [+2]
      255 GETIMPORT                        R44 K35 [math.floor]
      257 CALL                             R44 1 1
      258 ADD                              R47 R34 R43
      259 ADDK                             R46 R47 K51 [0.5]
      260 FASTCALL1                        MATH_FLOOR R46 ; [+2]
      261 GETIMPORT                        R45 K35 [math.floor]
      263 CALL                             R45 1 1
      264 MOVE                             R49 R9
      265 LOADN                            R53 53
      266 FASTCALL3                        VECTOR R44 R45 R53
      268 MOVE                             R51 R44
      269 MOVE                             R52 R45
      270 GETIMPORT                        R50 K25 [Vector3.new]
      272 CALL                             R50 3 1
      273 CALL                             R49 1 1
      274 SUBK                             R48 R49 K51 [0.5]
      275 MULK                             R47 R48 K52 [0.75]
      276 ADD                              R46 R44 R47
      277 MOVE                             R50 R9
      278 LOADN                            R54 73
      279 FASTCALL3                        VECTOR R44 R45 R54
      281 MOVE                             R52 R44
      282 MOVE                             R53 R45
      283 GETIMPORT                        R51 K25 [Vector3.new]
      285 CALL                             R51 3 1
      286 CALL                             R50 1 1
      287 SUBK                             R49 R50 K51 [0.5]
      288 MULK                             R48 R49 K52 [0.75]
      289 ADD                              R47 R45 R48
      290 SUB                              R50 R46 R33
      291 POWK                             R49 R50 K53 [2]
      292 SUB                              R51 R47 R34
      293 POWK                             R50 R51 K53 [2]
      294 ADD                              R48 R49 R50
      295 JUMPIFNOTLT                      R48 R35 ; [+2]
      297 MOVE                             R35 R48
      298 ADDK                             R52 R40 K21 [1]
      299 ADDK                             R54 R43 K21 [1]
      300 MULK                             R53 R54 K54 [3]
      301 ADD                              R51 R52 R53
      302 ADDK                             R50 R51 K21 [1]
      303 GETTABLE                         R49 R4 R50
      304 SETTABLEKS                       R48 R49 K55 ["DistSquared"]
      306 MOVE                             R50 R9
      307 LOADN                            R54 0
      308 FASTCALL3                        VECTOR R44 R45 R54
      310 MOVE                             R52 R44
      311 MOVE                             R53 R45
      312 GETIMPORT                        R51 K25 [Vector3.new]
      314 CALL                             R51 3 1
      315 CALL                             R50 1 1
      316 SETTABLEKS                       R50 R49 K56 ["BiomeNoise"]
      318 FORNLOOP                         R41
      319 FORNLOOP                         R38
      320 GETIMPORT                        R38 K40 [table.create]
      322 LENGTH                           R39 R3
      323 CALL                             R38 1 1
      324 MOVE                             R39 R4
      325 LOADNIL                          R40
      326 LOADNIL                          R41
      327 FORGPREP                         R39
      328 GETTABLEKS                       R45 R43 K55 ["DistSquared"]
      330 JUMPIFNOTEQ                      R45 R35 ; [+3]
      332 LOADN                            R44 1
      333 JUMP                             ; [+14]
      334 FASTCALL1                        MATH_SQRT R35 ; [+3]
      335 MOVE                             R48 R35
      336 GETIMPORT                        R47 K58 [math.sqrt]
      338 CALL                             R47 1 1
      339 GETTABLEKS                       R49 R43 K55 ["DistSquared"]
      341 FASTCALL1                        MATH_SQRT R49 ; [+2]
      342 GETIMPORT                        R48 K58 [math.sqrt]
      344 CALL                             R48 1 1
      345 DIV                              R46 R47 R48
      346 SUB                              R45 R46 R7
      347 DIV                              R44 R45 R6
      348 LOADN                            R45 0
      349 JUMPIFNOTLT                      R45 R44 ; [+22]
      351 POWK                             R44 R44 K59 [2.1]
      352 ADD                              R37 R37 R44
      353 LENGTH                           R47 R3
      354 GETTABLEKS                       R49 R43 K56 ["BiomeNoise"]
      356 SUBRK                            R48 K21 [1] R49
      357 MUL                              R46 R47 R48
      358 FASTCALL1                        MATH_CEIL R46 ; [+2]
      359 GETIMPORT                        R45 K61 [math.ceil]
      361 CALL                             R45 1 1
      362 GETTABLE                         R46 R3 R45
      363 GETTABLE                         R47 R38 R46
      364 JUMPIF                           R47 ; [+1]
      365 DUPTABLE                         R47 K63 [{["Weight"] = 0}]
      366 GETTABLEKS                       R49 R47 K62 ["Weight"]
      368 ADD                              R48 R49 R44
      369 SETTABLEKS                       R48 R47 K62 ["Weight"]
      371 SETTABLE                         R47 R38 R46
      372 FORGLOOP                         R39 2 ; [-45]
      374 GETIMPORT                        R39 K65 [pairs]
      376 MOVE                             R40 R38
      377 CALL                             R39 1 3
      378 FORGPREP_NEXT                    R39
      379 GETTABLEKS                       R45 R43 K62 ["Weight"]
      381 DIV                              R44 R45 R37
      382 SETTABLEKS                       R44 R43 K62 ["Weight"]
      384 GETUPVAL                         R44 3
      385 GETTABLEKS                       R44 R44 K66 ["Arctic"]
      387 JUMPIFNOTEQ                      R42 R44 ; [+2]
      389 LOADB                            R36 1
      390 FORGLOOP                         R39 2 ; [-12]
      392 GETTABLE                         R40 R14 R29
      393 OR                               R39 R40 R16
      394 LOADB                            R40 0
      395 LOADN                            R41 0
      396 LOADN                            R44 1
      397 MOVE                             R42 R16
      398 LOADN                            R43 1
      399 FORNPREP                         R42
      400 JUMPIF                           R40 ; [+38]
      401 GETTABLEKS                       R46 R32 K19 ["X"]
      403 GETTABLEKS                       R48 R32 K20 ["Z"]
      405 FASTCALL3                        VECTOR R46 R16 R48
      407 MOVE                             R47 R16
      408 GETIMPORT                        R45 K25 [Vector3.new]
      410 CALL                             R45 3 1
      411 MOVE                             R46 R15
      412 FASTCALL3                        VECTOR R21 R44 R29
      414 MOVE                             R48 R21
      415 MOVE                             R49 R44
      416 MOVE                             R50 R29
      417 GETIMPORT                        R47 K25 [Vector3.new]
      419 CALL                             R47 3 1
      420 MOVE                             R48 R45
      421 DUPTABLE                         R49 K69 [{"WeightPoints", "HasCaves"}]
      422 SETTABLEKS                       R38 R49 K67 ["WeightPoints"]
      424 NOT                              R50 R36
      425 SETTABLEKS                       R50 R49 K68 ["HasCaves"]
      427 CALL                             R46 3 3
      428 GETUPVAL                         R49 4
      429 ADDK                             R49 R49 K21 [1]
      430 SETUPVAL                         R49 4
      431 GETTABLEN                        R50 R10 1
      432 GETTABLE                         R49 R50 R44
      433 SETTABLE                         R46 R49 R31
      434 GETTABLEN                        R50 R12 1
      435 GETTABLE                         R49 R50 R44
      436 SETTABLE                         R47 R49 R31
      437 MOVE                             R41 R44
      438 MOVE                             R40 R48
      439 JUMPIFNOT                        R40 ; [+14]
      440 GETUPVAL                         R45 5
      441 ADDK                             R45 R45 K21 [1]
      442 SETUPVAL                         R45 5
      443 GETTABLEN                        R46 R12 1
      444 GETTABLE                         R45 R46 R44
      445 LOADN                            R46 0
      446 SETTABLE                         R46 R45 R31
      447 GETTABLEN                        R46 R10 1
      448 GETTABLE                         R45 R46 R44
      449 GETIMPORT                        R46 K44 [Enum.Material.Air]
      451 SETTABLE                         R46 R45 R31
      452 JUMPIFLT                         R39 R44 ; [+2]
      454 FORNLOOP                         R42
      455 SETTABLE                         R41 R14 R29
      456 FORNLOOP                         R27
      457 GETUPVAL                         R27 1
      458 GETTABLEKS                       R27 R27 K36 ["Terrain"]
      460 GETIMPORT                        R28 K72 [Enum.TerrainAcquisitionMethod.Generate]
      462 SETTABLEKS                       R28 R27 K73 ["LastUsedModificationMethod"]
      464 GETUPVAL                         R27 1
      465 GETTABLEKS                       R27 R27 K36 ["Terrain"]
      467 GETTABLE                         R29 R25 R26
      468 GETUPVAL                         R30 0
      469 MOVE                             R31 R10
      470 MOVE                             R32 R12
      471 NAMECALL                         R27 R27 K37 ["WriteVoxels"]
      473 CALL                             R27 5 0
      474 GETTABLEKS                       R27 R0 K0 ["State"]
      476 GETTABLEKS                       R28 R27 K19 ["X"]
      478 ADDK                             R28 R28 K21 [1]
      479 SETTABLEKS                       R28 R27 K19 ["X"]
      481 GETTABLEKS                       R28 R20 K74 ["x"]
      483 DIV                              R27 R21 R28
      484 LOADN                            R29 1
      485 JUMPIFLT                         R27 R29 ; [+2]
      487 LOADB                            R28 0 +1
      488 LOADB                            R28 1
      489 MOVE                             R29 R27
      490 RETURN                           R28 2

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["Payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["SelectionSettings"]
        5 GETTABLE                         R3 R4 R5
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Size"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R3 R2 K3 ["X"]
       12 GETUPVAL                         R4 2
       13 JUMPIFNOTLE                      R4 R3 ; [+23]
       15 GETTABLEKS                       R3 R2 K4 ["Y"]
       17 GETUPVAL                         R4 2
       18 JUMPIFNOTLE                      R4 R3 ; [+18]
       20 GETTABLEKS                       R3 R2 K5 ["Z"]
       22 GETUPVAL                         R4 2
       23 JUMPIFNOTLE                      R4 R3 ; [+13]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K6 ["NormalizeRegionTimer"]
       28 GETTABLEKS                       R6 R0 K7 ["State"]
       30 GETTABLEKS                       R6 R6 K8 ["StartTime"]
       32 MOVE                             R7 R2
       33 CALL                             R5 2 -1
       34 NAMECALL                         R3 R1 K9 ["addTimeStatistic"]
       36 CALL                             R3 -1 0
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K10 ["ChangeHistoryService"]
       40 LOADK                            R5 K11 ["GenerateAction"]
       41 NAMECALL                         R3 R3 K12 ["SetWaypoint"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R3 0
        1 LOADN                            R4 0
        2 DUPCLOSURE                       R5 K0 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          REF R3
       17 CAPTURE                          REF R4
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          UPVAL U11
       23 CAPTURE                          VAL R2
       24 GETUPVAL                         R8 12
       25 GETTABLEKS                       R8 R8 K1 ["new"]
       27 DUPTABLE                         R9 K10 [{["AllowPause"] = True, ["AllowCancel"] = True, ["Description"], ["Name"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       28 SETTABLEKS                       R1 R9 K5 ["Description"]
       30 SETTABLEKS                       R0 R9 K6 ["Name"]
       32 SETTABLEKS                       R7 R9 K7 ["OnFinish"]
       34 SETTABLEKS                       R5 R9 K8 ["OnStart"]
       36 SETTABLEKS                       R6 R9 K9 ["OnStep"]
       38 CALL                             R8 1 -1
       39 CLOSEUPVALS                      R3
       40 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["Generation"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["ComputeMasterSeed"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["NoisySeed"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Perlin"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ProcessVoxel"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ProcessPerlin"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K8 [require]
       40 GETTABLEKS                       R8 R0 K4 ["Src"]
       42 GETTABLEKS                       R8 R8 K14 ["Resources"]
       44 GETTABLEKS                       R8 R8 K15 ["Constants"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["VoxelResolution"]
       49 GETTABLEKS                       R9 R7 K17 ["RegionNormalization"]
       51 GETTABLEKS                       R10 R0 K4 ["Src"]
       53 GETTABLEKS                       R10 R10 K5 ["Util"]
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R10 K18 ["AnalyticsHelper"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K8 [require]
       62 GETTABLEKS                       R13 R10 K19 ["Operations"]
       64 GETTABLEKS                       R13 R13 K20 ["BaseOperation"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K8 [require]
       69 GETTABLEKS                       R14 R0 K4 ["Src"]
       71 GETTABLEKS                       R14 R14 K21 ["Types"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R13 K22 ["Biome"]
       76 GETTABLEKS                       R15 R13 K23 ["BiomeSettings"]
       78 GETTABLEKS                       R16 R13 K24 ["Category"]
       80 GETTABLEKS                       R17 R13 K25 ["SelectionSettings"]
       82 DUPCLOSURE                       R18 K26 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R17
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 RETURN                           R18 1
