PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_terrainType"}]
        1 SETTABLEKS                       R1 R2 K0 ["_terrainType"]
        3 FASTCALL2                        SETMETATABLE R2 R0 ; [+5]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R0
        7 GETIMPORT                        R3 K3 [setmetatable]
        9 CALL                             R3 2 0
       10 SETTABLEKS                       R0 R0 K4 ["__index"]
       12 RETURN                           R2 1

PROTO_1:
        0 SETTABLEKS                       R2 R0 K0 ["_services"]
        2 SETTABLEKS                       R1 R0 K1 ["_payload"]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R0 K2 ["_time"]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R0 K3 ["_timeTotals"]
       10 NAMECALL                         R3 R0 K4 ["setupRegion"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K3 ["BuildSettings"]
        7 GETTABLE                         R4 R2 R5
        8 JUMP                             ; [+1]
        9 LOADNIL                          R4
       10 JUMPIFNOT                        R4 ; [+33]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K4 ["Transform"]
       14 GETTABLE                         R5 R4 R6
       15 GETTABLEKS                       R8 R0 K5 ["_payload"]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K3 ["BuildSettings"]
       20 GETTABLE                         R7 R8 R9
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K4 ["Transform"]
       24 GETTABLE                         R6 R7 R8
       25 JUMPIFNOTEQ                      R5 R6 ; [+18]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K6 ["Size"]
       30 GETTABLE                         R5 R4 R6
       31 GETTABLEKS                       R8 R0 K5 ["_payload"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K3 ["BuildSettings"]
       36 GETTABLE                         R7 R8 R9
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K6 ["Size"]
       40 GETTABLE                         R6 R7 R8
       41 JUMPIFNOTEQ                      R5 R6 ; [+2]
       43 RETURN                           R0 0
       44 SETTABLEKS                       R1 R0 K5 ["_payload"]
       46 DUPTABLE                         R5 K12 [{"noiseMap", "heightMap", "heightMapCacheTopDown", "heightMapCacheBottomUp", "heightMapSnappingUpdate"}]
       47 LOADB                            R6 1
       48 SETTABLEKS                       R6 R5 K7 ["noiseMap"]
       50 LOADB                            R6 1
       51 SETTABLEKS                       R6 R5 K8 ["heightMap"]
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R5 K9 ["heightMapCacheTopDown"]
       56 LOADB                            R6 1
       57 SETTABLEKS                       R6 R5 K10 ["heightMapCacheBottomUp"]
       59 LOADB                            R6 1
       60 SETTABLEKS                       R6 R5 K11 ["heightMapSnappingUpdate"]
       62 JUMPIFNOT                        R4 ; [+130]
       63 LOADB                            R6 1
       64 LOADB                            R7 1
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R9 R10 K4 ["Transform"]
       68 GETTABLE                         R8 R4 R9
       69 JUMPIF                           R8 ; [+5]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R9 R10 K6 ["Size"]
       73 GETTABLE                         R8 R4 R9
       74 JUMPIFNOT                        R8 ; [+43]
       75 GETTABLEKS                       R9 R0 K13 ["_region"]
       77 GETTABLEKS                       R8 R9 K6 ["Size"]
       79 GETTABLEKS                       R11 R0 K13 ["_region"]
       81 NAMECALL                         R9 R0 K14 ["revertRegion"]
       83 CALL                             R9 2 0
       84 NAMECALL                         R9 R0 K15 ["setupRegion"]
       86 CALL                             R9 1 0
       87 GETTABLEKS                       R10 R0 K13 ["_region"]
       89 GETTABLEKS                       R9 R10 K6 ["Size"]
       91 JUMPIFNOTEQ                      R8 R9 ; [+4]
       93 LOADB                            R6 0
       94 LOADB                            R7 0
       95 JUMP                             ; [+28]
       96 GETTABLEKS                       R9 R8 K16 ["X"]
       98 GETTABLEKS                       R12 R0 K13 ["_region"]
      100 GETTABLEKS                       R11 R12 K6 ["Size"]
      102 GETTABLEKS                       R10 R11 K16 ["X"]
      104 JUMPIFNOTEQ                      R9 R10 ; [+19]
      106 GETTABLEKS                       R9 R8 K17 ["Z"]
      108 GETTABLEKS                       R12 R0 K13 ["_region"]
      110 GETTABLEKS                       R11 R12 K6 ["Size"]
      112 GETTABLEKS                       R10 R11 K17 ["Z"]
      114 JUMPIFNOTEQ                      R9 R10 ; [+9]
      116 LOADB                            R7 0
      117 JUMP                             ; [+6]
      118 LOADB                            R8 0
      119 SETTABLEKS                       R8 R5 K9 ["heightMapCacheTopDown"]
      121 LOADB                            R8 0
      122 SETTABLEKS                       R8 R5 K10 ["heightMapCacheBottomUp"]
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R9 R10 K4 ["Transform"]
      127 GETTABLE                         R8 R4 R9
      128 JUMPIF                           R8 ; [+3]
      129 LOADB                            R8 0
      130 SETTABLEKS                       R8 R5 K11 ["heightMapSnappingUpdate"]
      132 GETUPVAL                         R10 1
      133 GETTABLEKS                       R9 R10 K18 ["BlendingEdge"]
      135 GETTABLE                         R8 R4 R9
      136 JUMPIFNOT                        R8 ; [+11]
      137 LOADN                            R10 0
      138 JUMPIFLT                         R10 R8 ; [+2]
      140 LOADB                            R9 0 +1
      141 LOADB                            R9 1
      142 SETTABLEKS                       R9 R0 K19 ["_addBlending"]
      144 MOVE                             R11 R8
      145 NAMECALL                         R9 R0 K20 ["updateBlendingFactorMap"]
      147 CALL                             R9 2 0
      148 JUMPIF                           R6 ; [+6]
      149 LOADB                            R9 0
      150 SETTABLEKS                       R9 R5 K7 ["noiseMap"]
      152 LOADB                            R9 0
      153 SETTABLEKS                       R9 R5 K8 ["heightMap"]
      155 JUMPIF                           R7 ; [+3]
      156 LOADB                            R9 0
      157 SETTABLEKS                       R9 R5 K7 ["noiseMap"]
      159 GETUPVAL                         R11 1
      160 GETTABLEKS                       R10 R11 K21 ["Material"]
      162 GETTABLE                         R9 R4 R10
      163 JUMPIF                           R9 ; [+15]
      164 GETUPVAL                         R11 1
      165 GETTABLEKS                       R10 R11 K22 ["MaterialLUT"]
      167 GETTABLE                         R9 R4 R10
      168 JUMPIF                           R9 ; [+10]
      169 GETUPVAL                         R11 1
      170 GETTABLEKS                       R10 R11 K23 ["WaterLevel"]
      172 GETTABLE                         R9 R4 R10
      173 JUMPIF                           R9 ; [+5]
      174 GETUPVAL                         R11 1
      175 GETTABLEKS                       R10 R11 K18 ["BlendingEdge"]
      177 GETTABLE                         R9 R4 R10
      178 JUMPIFNOT                        R9 ; [+6]
      179 LOADB                            R9 0
      180 SETTABLEKS                       R9 R5 K7 ["noiseMap"]
      182 LOADB                            R9 0
      183 SETTABLEKS                       R9 R5 K8 ["heightMap"]
      185 GETTABLEKS                       R9 R5 K8 ["heightMap"]
      187 JUMPIF                           R9 ; [+2]
      188 GETTABLEKS                       R9 R5 K10 ["heightMapCacheBottomUp"]
      190 SETTABLEKS                       R9 R5 K10 ["heightMapCacheBottomUp"]
      192 JUMP                             ; [+20]
      193 GETUPVAL                         R9 0
      194 GETTABLEKS                       R8 R9 K3 ["BuildSettings"]
      196 GETTABLE                         R7 R1 R8
      197 GETUPVAL                         R9 1
      198 GETTABLEKS                       R8 R9 K18 ["BlendingEdge"]
      200 GETTABLE                         R6 R7 R8
      201 JUMPIFNOT                        R6 ; [+11]
      202 LOADN                            R8 0
      203 JUMPIFLT                         R8 R6 ; [+2]
      205 LOADB                            R7 0 +1
      206 LOADB                            R7 1
      207 SETTABLEKS                       R7 R0 K19 ["_addBlending"]
      209 MOVE                             R9 R6
      210 NAMECALL                         R7 R0 K20 ["updateBlendingFactorMap"]
      212 CALL                             R7 2 0
      213 GETTABLEKS                       R10 R0 K5 ["_payload"]
      215 GETUPVAL                         R12 0
      216 GETTABLEKS                       R11 R12 K3 ["BuildSettings"]
      218 GETTABLE                         R9 R10 R11
      219 GETUPVAL                         R11 1
      220 GETTABLEKS                       R10 R11 K25 ["AdvancedNoise"]
      222 GETTABLE                         R8 R9 R10
      223 GETTABLEKS                       R7 R8 K24 ["Children"]
      225 GETUPVAL                         R9 1
      226 GETTABLEKS                       R8 R9 K26 ["Rotation"]
      228 GETTABLE                         R6 R7 R8
      229 JUMPIFNOT                        R6 ; [+8]
      230 LOADN                            R8 0
      231 JUMPIFNOTLT                      R8 R6 ; [+6]
      233 LOADN                            R8 104
      234 JUMPIFNOTLT                      R6 R8 ; [+3]
      236 MOVE                             R7 R6
      237 JUMP                             ; [+1]
      238 LOADN                            R7 0
      239 SETTABLEKS                       R7 R0 K27 ["_rotationY"]
      241 GETUPVAL                         R7 2
      242 GETTABLEKS                       R8 R0 K28 ["_sliceX"]
      244 GETTABLEKS                       R9 R0 K29 ["_sliceZ"]
      246 GETTABLEKS                       R11 R0 K27 ["_rotationY"]
      248 FASTCALL1                        MATH_RAD R11 ; [+2]
      249 GETIMPORT                        R10 K32 [math.rad]
      251 CALL                             R10 1 1
      252 CALL                             R7 3 1
      253 SETTABLEKS                       R7 R0 K33 ["_getRotatedPoint"]
      255 MOVE                             R9 R5
      256 NAMECALL                         R7 R0 K34 ["generateStamp"]
      258 CALL                             R7 2 0
      259 GETTABLEKS                       R7 R0 K35 ["_time"]
      261 GETUPVAL                         R9 3
      262 GETTABLEKS                       R8 R9 K36 ["NormalizeRegionTimer"]
      264 MOVE                             R9 R3
      265 GETTABLEKS                       R12 R0 K5 ["_payload"]
      267 GETUPVAL                         R14 0
      268 GETTABLEKS                       R13 R14 K3 ["BuildSettings"]
      270 GETTABLE                         R11 R12 R13
      271 GETUPVAL                         R13 1
      272 GETTABLEKS                       R12 R13 K6 ["Size"]
      274 GETTABLE                         R10 R11 R12
      275 CALL                             R8 2 1
      276 ADD                              R7 R7 R8
      277 SETTABLEKS                       R7 R0 K35 ["_time"]
      279 GETTABLEKS                       R7 R0 K37 ["_timeTotals"]
      281 ADDK                             R7 R7 K38 [1]
      282 SETTABLEKS                       R7 R0 K37 ["_timeTotals"]
      284 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_time"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["_timeTotals"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R0 K0 ["_time"]
        8 GETTABLEKS                       R3 R0 K1 ["_timeTotals"]
       10 DIV                              R1 R2 R3
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainType"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["_payload"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
        5 GETTABLE                         R3 R4 R5
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Transform"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R1 R2 K3 ["Position"]
       12 GETTABLEKS                       R5 R0 K0 ["_payload"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K1 ["BuildSettings"]
       17 GETTABLE                         R4 R5 R6
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["Size"]
       21 GETTABLE                         R3 R4 R5
       22 DIVK                             R2 R3 K4 [2]
       23 GETIMPORT                        R3 K8 [Region3.new]
       25 SUB                              R4 R1 R2
       26 ADD                              R5 R1 R2
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R0 K9 ["_region"]
       30 GETTABLEKS                       R3 R0 K9 ["_region"]
       32 GETUPVAL                         R5 2
       33 NAMECALL                         R3 R3 K10 ["ExpandToGrid"]
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R0 K9 ["_region"]
       38 GETTABLEKS                       R6 R0 K9 ["_region"]
       40 GETTABLEKS                       R5 R6 K5 ["Size"]
       42 GETTABLEKS                       R4 R5 K11 ["X"]
       44 GETUPVAL                         R5 2
       45 DIV                              R3 R4 R5
       46 SETTABLEKS                       R3 R0 K12 ["_sliceX"]
       48 GETTABLEKS                       R6 R0 K9 ["_region"]
       50 GETTABLEKS                       R5 R6 K5 ["Size"]
       52 GETTABLEKS                       R4 R5 K13 ["Y"]
       54 GETUPVAL                         R5 2
       55 DIV                              R3 R4 R5
       56 SETTABLEKS                       R3 R0 K14 ["_sliceY"]
       58 GETTABLEKS                       R6 R0 K9 ["_region"]
       60 GETTABLEKS                       R5 R6 K5 ["Size"]
       62 GETTABLEKS                       R4 R5 K15 ["Z"]
       64 GETUPVAL                         R5 2
       65 DIV                              R3 R4 R5
       66 SETTABLEKS                       R3 R0 K16 ["_sliceZ"]
       68 GETTABLEKS                       R4 R0 K12 ["_sliceX"]
       70 GETTABLEKS                       R5 R0 K16 ["_sliceZ"]
       72 MUL                              R3 R4 R5
       73 SETTABLEKS                       R3 R0 K17 ["_mapSize"]
       75 GETTABLEKS                       R5 R0 K9 ["_region"]
       77 NAMECALL                         R3 R0 K18 ["cacheRegion"]
       79 CALL                             R3 2 0
       80 GETTABLEKS                       R8 R0 K0 ["_payload"]
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R9 R10 K1 ["BuildSettings"]
       85 GETTABLE                         R7 R8 R9
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R8 R9 K20 ["BlendingEdge"]
       89 GETTABLE                         R6 R7 R8
       90 ORK                              R5 R6 K19 [0]
       91 NAMECALL                         R3 R0 K21 ["updateBlendingFactorMap"]
       93 CALL                             R3 2 0
       94 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["_sliceZ"]
        2 SUBK                             R6 R1 K1 [1]
        3 MUL                              R4 R5 R6
        4 ADD                              R3 R4 R2
        5 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_region"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["_region"]
        5 GETTABLEKS                       R2 R3 K1 ["Size"]
        7 LOADK                            R3 K2 [{0, 0, 0}]
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K3 ["heightMapCacheTopDown"]
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETIMPORT                        R2 K6 [debug.profilebegin]
       16 LOADK                            R3 K7 ["TG_GenerateHeightCacheTopDown"]
       17 CALL                             R2 1 0
       18 NAMECALL                         R2 R0 K8 ["generateHeightMapCacheTopDown"]
       20 CALL                             R2 1 0
       21 GETIMPORT                        R2 K10 [debug.profileend]
       23 CALL                             R2 0 0
       24 GETTABLEKS                       R2 R1 K11 ["noiseMap"]
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETIMPORT                        R2 K6 [debug.profilebegin]
       29 LOADK                            R3 K12 ["TG_GenerateNoise"]
       30 CALL                             R2 1 0
       31 NAMECALL                         R2 R0 K13 ["generateNoiseMap"]
       33 CALL                             R2 1 0
       34 GETIMPORT                        R2 K10 [debug.profileend]
       36 CALL                             R2 0 0
       37 GETTABLEKS                       R2 R1 K14 ["heightMap"]
       39 JUMPIFNOT                        R2 ; [+10]
       40 GETIMPORT                        R2 K6 [debug.profilebegin]
       42 LOADK                            R3 K15 ["TG_GenerateHeight"]
       43 CALL                             R2 1 0
       44 NAMECALL                         R2 R0 K16 ["generateHeightMap"]
       46 CALL                             R2 1 0
       47 GETIMPORT                        R2 K10 [debug.profileend]
       49 CALL                             R2 0 0
       50 GETTABLEKS                       R2 R1 K17 ["heightMapCacheBottomUp"]
       52 JUMPIFNOT                        R2 ; [+10]
       53 GETIMPORT                        R2 K6 [debug.profilebegin]
       55 LOADK                            R3 K18 ["TG_GenerateHeightCacheBottomUp"]
       56 CALL                             R2 1 0
       57 NAMECALL                         R2 R0 K19 ["generateHeightMapCacheBottomUp"]
       59 CALL                             R2 1 0
       60 GETIMPORT                        R2 K10 [debug.profileend]
       62 CALL                             R2 0 0
       63 GETIMPORT                        R2 K6 [debug.profilebegin]
       65 LOADK                            R3 K20 ["TG_BlendHeight"]
       66 CALL                             R2 1 0
       67 NAMECALL                         R2 R0 K21 ["blendHeightMap"]
       69 CALL                             R2 1 0
       70 GETIMPORT                        R2 K10 [debug.profileend]
       72 CALL                             R2 0 0
       73 GETIMPORT                        R2 K6 [debug.profilebegin]
       75 LOADK                            R3 K22 ["TG_GenerateOccupancyMap"]
       76 CALL                             R2 1 0
       77 NAMECALL                         R2 R0 K23 ["generateOccupancyMap"]
       79 CALL                             R2 1 0
       80 GETIMPORT                        R2 K10 [debug.profileend]
       82 CALL                             R2 0 0
       83 GETIMPORT                        R2 K6 [debug.profilebegin]
       85 LOADK                            R3 K24 ["TG_GenerateSlopeMap"]
       86 CALL                             R2 1 0
       87 NAMECALL                         R2 R0 K25 ["generateSlopeMap"]
       89 CALL                             R2 1 0
       90 GETIMPORT                        R2 K10 [debug.profileend]
       92 CALL                             R2 0 0
       93 GETIMPORT                        R2 K6 [debug.profilebegin]
       95 LOADK                            R3 K26 ["TG_GenerateMaterial"]
       96 CALL                             R2 1 0
       97 NAMECALL                         R2 R0 K27 ["generateMaterialMap"]
       99 CALL                             R2 1 0
      100 GETIMPORT                        R2 K10 [debug.profileend]
      102 CALL                             R2 0 0
      103 GETIMPORT                        R2 K6 [debug.profilebegin]
      105 LOADK                            R3 K28 ["TG_BlendMaterialMap"]
      106 CALL                             R2 1 0
      107 NAMECALL                         R2 R0 K29 ["blendMaterialMap"]
      109 CALL                             R2 1 0
      110 GETIMPORT                        R2 K10 [debug.profileend]
      112 CALL                             R2 0 0
      113 GETIMPORT                        R2 K6 [debug.profilebegin]
      115 LOADK                            R3 K30 ["TG_PostProcessing"]
      116 CALL                             R2 1 0
      117 NAMECALL                         R2 R0 K31 ["postProcessing"]
      119 CALL                             R2 1 0
      120 GETIMPORT                        R2 K10 [debug.profileend]
      122 CALL                             R2 0 0
      123 GETUPVAL                         R2 0
      124 CALL                             R2 0 1
      125 JUMPIFNOT                        R2 ; [+3]
      126 NAMECALL                         R2 R0 K32 ["debugDraw"]
      128 CALL                             R2 1 0
      129 GETTABLEKS                       R3 R0 K33 ["_services"]
      131 GETTABLEKS                       R2 R3 K34 ["Terrain"]
      133 GETTABLEKS                       R4 R0 K0 ["_region"]
      135 GETUPVAL                         R5 1
      136 DUPTABLE                         R6 K37 [{"SolidMaterial", "SolidOccupancy"}]
      137 GETTABLEKS                       R7 R0 K38 ["_materialMap"]
      139 SETTABLEKS                       R7 R6 K35 ["SolidMaterial"]
      141 GETTABLEKS                       R7 R0 K39 ["_occupancyMap"]
      143 SETTABLEKS                       R7 R6 K36 ["SolidOccupancy"]
      145 NAMECALL                         R2 R2 K40 ["WriteVoxelChannels"]
      147 CALL                             R2 4 0
      148 GETTABLEKS                       R2 R0 K41 ["_waterMap"]
      150 JUMPIFNOT                        R2 ; [+15]
      151 GETTABLEKS                       R3 R0 K33 ["_services"]
      153 GETTABLEKS                       R2 R3 K34 ["Terrain"]
      155 GETTABLEKS                       R4 R0 K0 ["_region"]
      157 GETUPVAL                         R5 1
      158 DUPTABLE                         R6 K43 [{"LiquidOccupancy"}]
      159 GETTABLEKS                       R7 R0 K41 ["_waterMap"]
      161 SETTABLEKS                       R7 R6 K42 ["LiquidOccupancy"]
      163 NAMECALL                         R2 R2 K40 ["WriteVoxelChannels"]
      165 CALL                             R2 4 0
      166 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_noiseMap"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["NoiseScale"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R4 R0 K0 ["_payload"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["NoiseStrength"]
       19 GETTABLE                         R2 R3 R4
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R1 ; [+3]
       23 DIVK                             R3 R2 K4 [2]
       24 JUMP                             ; [+1]
       25 LOADN                            R3 0
       26 GETTABLEKS                       R5 R0 K5 ["_sliceY"]
       28 SUBRK                            R6 R6 K3 ["NoiseStrength"]
       29 MUL                              R4 R5 R6
       30 GETIMPORT                        R5 K9 [table.create]
       32 GETTABLEKS                       R6 R0 K10 ["_mapSize"]
       34 LOADN                            R7 0
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R0 K11 ["_heightMapFromNoise"]
       38 LOADN                            R7 1
       39 GETTABLEKS                       R5 R0 K10 ["_mapSize"]
       41 LOADN                            R6 1
       42 FORNPREP                         R5
       43 GETTABLEKS                       R9 R0 K12 ["_noiseMap"]
       45 GETTABLE                         R8 R9 R7
       46 GETTABLEKS                       R11 R0 K5 ["_sliceY"]
       48 MUL                              R10 R11 R3
       49 MUL                              R9 R10 R8
       50 ADD                              R10 R4 R9
       51 GETTABLEKS                       R11 R0 K11 ["_heightMapFromNoise"]
       53 LOADN                            R14 0
       54 GETTABLEKS                       R15 R0 K5 ["_sliceY"]
       56 FASTCALL3                        MATH_CLAMP R10 R14 R15
       58 MOVE                             R13 R10
       59 GETIMPORT                        R12 K15 [math.clamp]
       61 CALL                             R12 3 1
       62 SETTABLE                         R12 R11 R7
       63 FORNLOOP                         R5
       64 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_slopeMap"]
        8 GETIMPORT                        R1 K2 [table.create]
       10 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["_minNeighborHeight"]
       16 NEWTABLE                         R1 0 8
       18 NEWTABLE                         R2 0 2
       20 LOADN                            R3 255
       21 LOADN                            R4 0
       22 SETLIST                          R2 R3 2 [1]
       24 NEWTABLE                         R3 0 2
       26 LOADN                            R4 1
       27 LOADN                            R5 0
       28 SETLIST                          R3 R4 2 [1]
       30 NEWTABLE                         R4 0 2
       32 LOADN                            R5 0
       33 LOADN                            R6 255
       34 SETLIST                          R4 R5 2 [1]
       36 NEWTABLE                         R5 0 2
       38 LOADN                            R6 0
       39 LOADN                            R7 1
       40 SETLIST                          R5 R6 2 [1]
       42 NEWTABLE                         R6 0 2
       44 LOADN                            R7 255
       45 LOADN                            R8 255
       46 SETLIST                          R6 R7 2 [1]
       48 NEWTABLE                         R7 0 2
       50 LOADN                            R8 255
       51 LOADN                            R9 1
       52 SETLIST                          R7 R8 2 [1]
       54 NEWTABLE                         R8 0 2
       56 LOADN                            R9 1
       57 LOADN                            R10 255
       58 SETLIST                          R8 R9 2 [1]
       60 NEWTABLE                         R9 0 2
       62 LOADN                            R10 1
       63 LOADN                            R11 1
       64 SETLIST                          R9 R10 2 [1]
       66 SETLIST                          R1 R2 8 [1]
       68 LOADN                            R4 1
       69 GETTABLEKS                       R2 R0 K6 ["_sliceX"]
       71 LOADN                            R3 1
       72 FORNPREP                         R2
       73 LOADN                            R7 1
       74 GETTABLEKS                       R5 R0 K7 ["_sliceZ"]
       76 LOADN                            R6 1
       77 FORNPREP                         R5
       78 MOVE                             R10 R4
       79 MOVE                             R11 R7
       80 NAMECALL                         R8 R0 K8 ["getIndex"]
       82 CALL                             R8 3 1
       83 GETTABLEKS                       R10 R0 K9 ["_heightMap"]
       85 GETTABLE                         R9 R10 R8
       86 FASTCALL1                        MATH_FLOOR R9 ; [+3]
       87 MOVE                             R11 R9
       88 GETIMPORT                        R10 K12 [math.floor]
       90 CALL                             R10 1 1
       91 LOADN                            R11 0
       92 LOADN                            R12 0
       93 LOADN                            R13 0
       94 LOADN                            R14 0
       95 LOADN                            R15 0
       96 LOADN                            R16 0
       97 GETTABLEKS                       R17 R0 K5 ["_minNeighborHeight"]
       99 SETTABLE                         R10 R17 R8
      100 MOVE                             R17 R1
      101 LOADNIL                          R18
      102 LOADNIL                          R19
      103 FORGPREP                         R17
      104 GETTABLEN                        R23 R21 1
      105 ADD                              R22 R4 R23
      106 GETTABLEN                        R24 R21 2
      107 ADD                              R23 R7 R24
      108 LOADB                            R24 0
      109 LOADN                            R25 0
      110 JUMPIFNOTLT                      R25 R22 ; [+16]
      112 LOADB                            R24 0
      113 GETTABLEKS                       R25 R0 K6 ["_sliceX"]
      115 JUMPIFNOTLE                      R22 R25 ; [+11]
      117 LOADB                            R24 0
      118 LOADN                            R25 0
      119 JUMPIFNOTLT                      R25 R23 ; [+7]
      121 GETTABLEKS                       R25 R0 K7 ["_sliceZ"]
      123 JUMPIFLE                         R23 R25 ; [+2]
      125 LOADB                            R24 0 +1
      126 LOADB                            R24 1
      127 JUMPIFNOT                        R24 ; [+9]
      128 GETTABLEKS                       R26 R0 K9 ["_heightMap"]
      130 MOVE                             R29 R22
      131 MOVE                             R30 R23
      132 NAMECALL                         R27 R0 K8 ["getIndex"]
      134 CALL                             R27 3 1
      135 GETTABLE                         R25 R26 R27
      136 JUMP                             ; [+1]
      137 LOADN                            R25 0
      138 FASTCALL1                        MATH_FLOOR R25 ; [+3]
      139 MOVE                             R27 R25
      140 GETIMPORT                        R26 K12 [math.floor]
      142 CALL                             R26 1 1
      143 GETTABLEKS                       R27 R0 K5 ["_minNeighborHeight"]
      145 GETTABLEKS                       R30 R0 K5 ["_minNeighborHeight"]
      147 GETTABLE                         R29 R30 R8
      148 FASTCALL2                        MATH_MIN R29 R26 ; [+4]
      150 MOVE                             R30 R26
      151 GETIMPORT                        R28 K14 [math.min]
      153 CALL                             R28 2 1
      154 SETTABLE                         R28 R27 R8
      155 JUMPIFNOT                        R24 ; [+29]
      156 GETTABLEN                        R27 R21 1
      157 JUMPIFNOTEQKN                    R27 K15 [0] ; [+9]
      159 SUB                              R28 R25 R9
      160 FASTCALL1                        MATH_ABS R28 ; [+2]
      161 GETIMPORT                        R27 K17 [math.abs]
      163 CALL                             R27 1 1
      164 ADD                              R11 R11 R27
      165 ADDK                             R12 R12 K18 [1]
      166 JUMP                             ; [+18]
      167 GETTABLEN                        R27 R21 2
      168 JUMPIFNOTEQKN                    R27 K15 [0] ; [+9]
      170 SUB                              R28 R25 R9
      171 FASTCALL1                        MATH_ABS R28 ; [+2]
      172 GETIMPORT                        R27 K17 [math.abs]
      174 CALL                             R27 1 1
      175 ADD                              R13 R13 R27
      176 ADDK                             R14 R14 K18 [1]
      177 JUMP                             ; [+7]
      178 SUB                              R28 R25 R9
      179 FASTCALL1                        MATH_ABS R28 ; [+2]
      180 GETIMPORT                        R27 K17 [math.abs]
      182 CALL                             R27 1 1
      183 ADD                              R15 R15 R27
      184 ADDK                             R16 R16 K18 [1]
      185 FORGLOOP                         R17 2 ; [-82]
      187 JUMPIFNOTEQKN                    R12 K15 [0] ; [+3]
      189 LOADN                            R11 0
      190 JUMP                             ; [+1]
      191 DIV                              R11 R11 R12
      192 JUMPIFNOTEQKN                    R14 K15 [0] ; [+3]
      194 LOADN                            R13 0
      195 JUMP                             ; [+1]
      196 DIV                              R13 R13 R14
      197 JUMPIFNOTEQKN                    R16 K15 [0] ; [+3]
      199 LOADN                            R15 0
      200 JUMP                             ; [+1]
      201 DIV                              R15 R15 R16
      202 GETTABLEKS                       R17 R0 K4 ["_slopeMap"]
      204 MUL                              R23 R11 R11
      205 MUL                              R24 R13 R13
      206 ADD                              R22 R23 R24
      207 MUL                              R23 R15 R15
      208 ADD                              R21 R22 R23
      209 DIVK                             R20 R21 K19 [4]
      210 FASTCALL1                        MATH_SQRT R20 ; [+2]
      211 GETIMPORT                        R19 K21 [math.sqrt]
      213 CALL                             R19 1 1
      214 FASTCALL1                        MATH_ATAN R19 ; [+2]
      215 GETIMPORT                        R18 K23 [math.atan]
      217 CALL                             R18 1 1
      218 SETTABLE                         R18 R17 R8
      219 FORNLOOP                         R5
      220 FORNLOOP                         R2
      221 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_sliceX"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_occupancyMap"]
        7 LOADN                            R3 1
        8 GETTABLEKS                       R1 R0 K3 ["_sliceX"]
       10 LOADN                            R2 1
       11 FORNPREP                         R1
       12 GETTABLEKS                       R4 R0 K4 ["_occupancyMap"]
       14 GETIMPORT                        R5 K2 [table.create]
       16 GETTABLEKS                       R6 R0 K5 ["_sliceY"]
       18 CALL                             R5 1 1
       19 SETTABLE                         R5 R4 R3
       20 LOADN                            R6 1
       21 GETTABLEKS                       R4 R0 K5 ["_sliceY"]
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 GETTABLEKS                       R8 R0 K4 ["_occupancyMap"]
       27 GETTABLE                         R7 R8 R3
       28 GETIMPORT                        R8 K7 [table.clone]
       30 GETTABLEKS                       R11 R0 K8 ["_occupancyCache"]
       32 GETTABLE                         R10 R11 R3
       33 GETTABLE                         R9 R10 R6
       34 CALL                             R8 1 1
       35 SETTABLE                         R8 R7 R6
       36 FORNLOOP                         R4
       37 FORNLOOP                         R1
       38 LOADN                            R3 1
       39 GETTABLEKS                       R1 R0 K3 ["_sliceX"]
       41 LOADN                            R2 1
       42 FORNPREP                         R1
       43 GETTABLEKS                       R5 R0 K4 ["_occupancyMap"]
       45 GETTABLE                         R4 R5 R3
       46 LOADN                            R7 1
       47 GETTABLEKS                       R5 R0 K9 ["_sliceZ"]
       49 LOADN                            R6 1
       50 FORNPREP                         R5
       51 MOVE                             R10 R3
       52 MOVE                             R11 R7
       53 NAMECALL                         R8 R0 K10 ["getIndex"]
       55 CALL                             R8 3 1
       56 GETTABLEKS                       R10 R0 K11 ["_heightMap"]
       58 GETTABLE                         R9 R10 R8
       59 FASTCALL1                        MATH_FLOOR R9 ; [+3]
       60 MOVE                             R11 R9
       61 GETIMPORT                        R10 K14 [math.floor]
       63 CALL                             R10 1 1
       64 FASTCALL1                        MATH_CEIL R9 ; [+3]
       65 MOVE                             R13 R9
       66 GETIMPORT                        R12 K17 [math.ceil]
       68 CALL                             R12 1 1
       69 ADDK                             R11 R12 K15 [1]
       70 LOADN                            R14 1
       71 MOVE                             R12 R10
       72 LOADN                            R13 1
       73 FORNPREP                         R12
       74 GETTABLE                         R15 R4 R14
       75 LOADN                            R16 1
       76 SETTABLE                         R16 R15 R7
       77 FORNLOOP                         R12
       78 SUB                              R12 R9 R10
       79 LOADN                            R13 0
       80 JUMPIFNOTLT                      R13 R12 ; [+12]
       82 ADDK                             R14 R10 K15 [1]
       83 GETTABLEKS                       R15 R0 K5 ["_sliceY"]
       85 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       87 GETIMPORT                        R13 K19 [math.min]
       89 CALL                             R13 2 1
       90 GETTABLE                         R12 R4 R13
       91 SUB                              R13 R9 R10
       92 SETTABLE                         R13 R12 R7
       93 GETTABLEKS                       R12 R0 K20 ["_fillBottomPositions"]
       95 JUMPIFNOT                        R12 ; [+13]
       96 GETTABLEKS                       R13 R0 K20 ["_fillBottomPositions"]
       98 GETTABLE                         R12 R13 R8
       99 JUMPIFNOT                        R12 ; [+9]
      100 MOVE                             R14 R11
      101 GETTABLEKS                       R12 R0 K5 ["_sliceY"]
      103 LOADN                            R13 1
      104 FORNPREP                         R12
      105 GETTABLE                         R15 R4 R14
      106 LOADN                            R16 0
      107 SETTABLE                         R16 R15 R7
      108 FORNLOOP                         R12
      109 FORNLOOP                         R5
      110 FORNLOOP                         R1
      111 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["MaterialLUT"]
        9 GETTABLE                         R1 R2 R3
       10 GETIMPORT                        R2 K5 [table.create]
       12 GETTABLEKS                       R3 R0 K6 ["_sliceX"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R0 K7 ["_materialMap"]
       17 LOADN                            R4 1
       18 GETTABLEKS                       R2 R0 K6 ["_sliceX"]
       20 LOADN                            R3 1
       21 FORNPREP                         R2
       22 GETTABLEKS                       R5 R0 K7 ["_materialMap"]
       24 GETIMPORT                        R6 K5 [table.create]
       26 GETTABLEKS                       R7 R0 K8 ["_sliceY"]
       28 CALL                             R6 1 1
       29 SETTABLE                         R6 R5 R4
       30 LOADN                            R7 1
       31 GETTABLEKS                       R5 R0 K8 ["_sliceY"]
       33 LOADN                            R6 1
       34 FORNPREP                         R5
       35 GETTABLEKS                       R9 R0 K7 ["_materialMap"]
       37 GETTABLE                         R8 R9 R4
       38 GETIMPORT                        R9 K10 [table.clone]
       40 GETTABLEKS                       R12 R0 K11 ["_materialCache"]
       42 GETTABLE                         R11 R12 R4
       43 GETTABLE                         R10 R11 R7
       44 CALL                             R9 1 1
       45 SETTABLE                         R9 R8 R7
       46 FORNLOOP                         R5
       47 FORNLOOP                         R2
       48 LOADN                            R4 1
       49 GETTABLEKS                       R2 R0 K6 ["_sliceX"]
       51 LOADN                            R3 1
       52 FORNPREP                         R2
       53 GETTABLEKS                       R6 R0 K7 ["_materialMap"]
       55 GETTABLE                         R5 R6 R4
       56 LOADN                            R8 1
       57 GETTABLEKS                       R6 R0 K12 ["_sliceZ"]
       59 LOADN                            R7 1
       60 FORNPREP                         R6
       61 MOVE                             R11 R4
       62 MOVE                             R12 R8
       63 NAMECALL                         R9 R0 K13 ["getIndex"]
       65 CALL                             R9 3 1
       66 LOADN                            R11 1
       67 GETTABLEKS                       R14 R0 K15 ["_minNeighborHeight"]
       69 GETTABLE                         R13 R14 R9
       70 SUBK                             R12 R13 K14 [1]
       71 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       73 GETIMPORT                        R10 K18 [math.max]
       75 CALL                             R10 2 1
       76 GETTABLEKS                       R14 R0 K19 ["_heightMap"]
       78 GETTABLE                         R13 R14 R9
       79 FASTCALL1                        MATH_CEIL R13 ; [+2]
       80 GETIMPORT                        R12 K21 [math.ceil]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R0 K8 ["_sliceY"]
       85 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       87 GETIMPORT                        R11 K23 [math.min]
       89 CALL                             R11 2 1
       90 GETTABLEKS                       R15 R0 K24 ["_slopeMap"]
       92 GETTABLE                         R14 R15 R9
       93 NAMECALL                         R12 R1 K25 ["GetSlopeIndex"]
       95 CALL                             R12 2 1
       96 GETTABLEKS                       R13 R0 K26 ["_fillBottomPositions"]
       98 JUMPIFNOT                        R13 ; [+17]
       99 GETTABLEKS                       R14 R0 K26 ["_fillBottomPositions"]
      101 GETTABLE                         R13 R14 R9
      102 JUMPIFNOT                        R13 ; [+13]
      103 GETTABLEKS                       R13 R1 K27 ["fillMaterial"]
      105 JUMPIFNOT                        R13 ; [+10]
      106 LOADN                            R15 1
      107 MOVE                             R13 R11
      108 LOADN                            R14 1
      109 FORNPREP                         R13
      110 GETTABLE                         R16 R5 R15
      111 GETTABLEKS                       R17 R1 K27 ["fillMaterial"]
      113 SETTABLE                         R17 R16 R8
      114 FORNLOOP                         R13
      115 JUMP                             ; [+23]
      116 LOADN                            R15 1
      117 SUBK                             R13 R10 K14 [1]
      118 LOADN                            R14 1
      119 FORNPREP                         R13
      120 GETTABLE                         R16 R5 R15
      121 GETTABLEKS                       R17 R1 K28 ["fallbackMaterial"]
      123 SETTABLE                         R17 R16 R8
      124 FORNLOOP                         R13
      125 MOVE                             R15 R10
      126 MOVE                             R13 R11
      127 LOADN                            R14 1
      128 FORNPREP                         R13
      129 GETTABLE                         R16 R5 R15
      130 MOVE                             R19 R15
      131 GETTABLEKS                       R20 R0 K8 ["_sliceY"]
      133 MOVE                             R21 R12
      134 NAMECALL                         R17 R1 K29 ["GetValueByIndex"]
      136 CALL                             R17 4 1
      137 SETTABLE                         R17 R16 R8
      138 FORNLOOP                         R13
      139 FORNLOOP                         R6
      140 FORNLOOP                         R2
      141 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["MaterialLUT"]
        9 GETTABLE                         R1 R2 R3
       10 LOADN                            R4 1
       11 GETTABLEKS                       R2 R0 K3 ["_sliceX"]
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETTABLEKS                       R6 R0 K4 ["_materialMap"]
       17 GETTABLE                         R5 R6 R4
       18 LOADN                            R8 1
       19 GETTABLEKS                       R6 R0 K5 ["_sliceZ"]
       21 LOADN                            R7 1
       22 FORNPREP                         R6
       23 MOVE                             R11 R4
       24 MOVE                             R12 R8
       25 NAMECALL                         R9 R0 K6 ["getIndex"]
       27 CALL                             R9 3 1
       28 GETTABLEKS                       R12 R0 K8 ["_minNeighborHeight"]
       30 GETTABLE                         R11 R12 R9
       31 SUBK                             R10 R11 K7 [2]
       32 LOADN                            R11 1
       33 JUMPIFLT                         R10 R11 ; [+28]
       35 GETTABLEKS                       R14 R0 K9 ["_slopeMap"]
       37 GETTABLE                         R13 R14 R9
       38 NAMECALL                         R11 R1 K10 ["GetSlopeIndex"]
       40 CALL                             R11 2 1
       41 GETTABLEKS                       R12 R0 K11 ["_fillBottomPositions"]
       43 JUMPIFNOT                        R12 ; [+4]
       44 GETTABLEKS                       R13 R0 K11 ["_fillBottomPositions"]
       46 GETTABLE                         R12 R13 R9
       47 JUMPIF                           R12 ; [+14]
       48 LOADN                            R14 1
       49 MOVE                             R12 R10
       50 LOADN                            R13 1
       51 FORNPREP                         R12
       52 GETTABLE                         R15 R5 R14
       53 MOVE                             R18 R14
       54 GETTABLEKS                       R19 R0 K12 ["_sliceY"]
       56 MOVE                             R20 R11
       57 NAMECALL                         R16 R1 K13 ["GetValueByIndex"]
       59 CALL                             R16 4 1
       60 SETTABLE                         R16 R15 R8
       61 FORNLOOP                         R12
       62 FORNLOOP                         R6
       63 FORNLOOP                         R2
       64 GETTABLEKS                       R3 R0 K14 ["_services"]
       66 GETTABLEKS                       R2 R3 K15 ["Terrain"]
       68 GETTABLEKS                       R4 R0 K16 ["_region"]
       70 GETUPVAL                         R5 2
       71 DUPTABLE                         R6 K19 [{"SolidMaterial", "SolidOccupancy"}]
       72 GETTABLEKS                       R7 R0 K4 ["_materialMap"]
       74 SETTABLEKS                       R7 R6 K17 ["SolidMaterial"]
       76 GETTABLEKS                       R7 R0 K20 ["_occupancyMap"]
       78 SETTABLEKS                       R7 R6 K18 ["SolidOccupancy"]
       80 NAMECALL                         R2 R2 K21 ["WriteVoxelChannels"]
       82 CALL                             R2 4 0
       83 GETTABLEKS                       R2 R0 K22 ["_waterMap"]
       85 JUMPIFNOT                        R2 ; [+15]
       86 GETTABLEKS                       R3 R0 K14 ["_services"]
       88 GETTABLEKS                       R2 R3 K15 ["Terrain"]
       90 GETTABLEKS                       R4 R0 K16 ["_region"]
       92 GETUPVAL                         R5 2
       93 DUPTABLE                         R6 K24 [{"LiquidOccupancy"}]
       94 GETTABLEKS                       R7 R0 K22 ["_waterMap"]
       96 SETTABLEKS                       R7 R6 K23 ["LiquidOccupancy"]
       98 NAMECALL                         R2 R2 K21 ["WriteVoxelChannels"]
      100 CALL                             R2 4 0
      101 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K4 ["_blendingFactorMap"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+22]
       11 DUPTABLE                         R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K5 ["PreserveDistance"]
       15 LOADK                            R3 K9 [0.2]
       16 SETTABLEKS                       R3 R2 K6 ["PreserveRatio"]
       18 SETTABLEKS                       R1 R2 K7 ["BlendingStrength"]
       20 GETUPVAL                         R3 0
       21 GETIMPORT                        R4 K12 [Vector2.new]
       23 GETTABLEKS                       R5 R0 K13 ["_sliceX"]
       25 GETTABLEKS                       R6 R0 K14 ["_sliceZ"]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K4 ["_blendingFactorMap"]
       32 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_heightMapFromNoise"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_heightMap"]
        7 GETTABLEKS                       R1 R0 K5 ["_addBlending"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 LOADN                            R3 1
       12 GETTABLEKS                       R1 R0 K6 ["_mapSize"]
       14 LOADN                            R2 1
       15 FORNPREP                         R1
       16 GETTABLEKS                       R5 R0 K3 ["_heightMapFromNoise"]
       18 GETTABLE                         R4 R5 R3
       19 GETTABLEKS                       R6 R0 K7 ["_heightmapCache"]
       21 GETTABLE                         R5 R6 R3
       22 GETTABLEKS                       R7 R0 K8 ["_blendingFactorMap"]
       24 GETTABLE                         R6 R7 R3
       25 GETTABLEKS                       R7 R0 K4 ["_heightMap"]
       27 SUBRK                            R10 R9 K6 ["_mapSize"]
       28 MUL                              R9 R10 R4
       29 MUL                              R10 R6 R5
       30 ADD                              R8 R9 R10
       31 SETTABLE                         R8 R7 R3
       32 FORNLOOP                         R1
       33 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_addBlending"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R6 R0 K3 ["_payload"]
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K4 ["BuildSettings"]
        9 GETTABLE                         R5 R6 R7
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K5 ["AdvancedNoise"]
       13 GETTABLE                         R4 R5 R6
       14 GETTABLEKS                       R3 R4 K2 ["Children"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K6 ["Seed"]
       19 GETTABLE                         R2 R3 R4
       20 MULK                             R1 R2 K1 [3.14159265358979]
       21 GETTABLEKS                       R6 R0 K3 ["_payload"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K4 ["BuildSettings"]
       26 GETTABLE                         R5 R6 R7
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["AdvancedNoise"]
       30 GETTABLE                         R4 R5 R6
       31 GETTABLEKS                       R3 R4 K2 ["Children"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K7 ["Offset"]
       36 GETTABLE                         R2 R3 R4
       37 LOADN                            R5 1
       38 GETTABLEKS                       R3 R0 K8 ["_sliceX"]
       40 LOADN                            R4 1
       41 FORNPREP                         R3
       42 LOADN                            R8 1
       43 GETTABLEKS                       R6 R0 K9 ["_sliceZ"]
       45 LOADN                            R7 1
       46 FORNPREP                         R6
       47 MOVE                             R11 R5
       48 MOVE                             R12 R8
       49 NAMECALL                         R9 R0 K10 ["getIndex"]
       51 CALL                             R9 3 1
       52 LOADN                            R11 1
       53 GETTABLEKS                       R14 R0 K12 ["_minNeighborHeight"]
       55 GETTABLE                         R13 R14 R9
       56 SUBK                             R12 R13 K11 [1]
       57 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       59 GETIMPORT                        R10 K15 [math.max]
       61 CALL                             R10 2 1
       62 GETTABLEKS                       R14 R0 K16 ["_heightMap"]
       64 GETTABLE                         R13 R14 R9
       65 FASTCALL1                        MATH_CEIL R13 ; [+2]
       66 GETIMPORT                        R12 K18 [math.ceil]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R0 K19 ["_sliceY"]
       71 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       73 GETIMPORT                        R11 K21 [math.min]
       75 CALL                             R11 2 1
       76 MOVE                             R14 R10
       77 MOVE                             R12 R11
       78 LOADN                            R13 1
       79 FORNPREP                         R12
       80 GETTABLEKS                       R18 R0 K22 ["_materialMap"]
       82 GETTABLE                         R17 R18 R5
       83 GETTABLE                         R16 R17 R14
       84 GETTABLE                         R15 R16 R8
       85 GETTABLEKS                       R19 R0 K23 ["_materialCache"]
       87 GETTABLE                         R18 R19 R5
       88 GETTABLE                         R17 R18 R14
       89 GETTABLE                         R16 R17 R8
       90 GETIMPORT                        R17 K27 [Enum.Material.Air]
       92 JUMPIFEQ                         R16 R17 ; [+39]
       94 GETTABLEKS                       R17 R0 K28 ["_getRotatedPoint"]
       96 SUBK                             R18 R5 K29 [0.5]
       97 SUBK                             R19 R8 K29 [0.5]
       98 CALL                             R17 2 2
       99 GETTABLEKS                       R20 R2 K30 ["X"]
      101 SUB                              R19 R17 R20
      102 GETTABLEKS                       R21 R2 K31 ["Y"]
      104 SUB                              R20 R18 R21
      105 GETIMPORT                        R22 K33 [math.noise]
      107 GETTABLEKS                       R24 R0 K8 ["_sliceX"]
      109 DIV                              R23 R19 R24
      110 MOVE                             R24 R1
      111 GETTABLEKS                       R26 R0 K9 ["_sliceZ"]
      113 DIV                              R25 R20 R26
      114 CALL                             R22 3 1
      115 FASTCALL1                        MATH_ABS R22 ; [+2]
      116 GETIMPORT                        R21 K35 [math.abs]
      118 CALL                             R21 1 1
      119 GETTABLEKS                       R24 R0 K22 ["_materialMap"]
      121 GETTABLE                         R23 R24 R5
      122 GETTABLE                         R22 R23 R14
      123 GETTABLEKS                       R25 R0 K36 ["_blendingFactorMap"]
      125 GETTABLE                         R24 R25 R9
      126 JUMPIFNOTLT                      R24 R21 ; [+3]
      128 MOVE                             R23 R15
      129 JUMP                             ; [+1]
      130 MOVE                             R23 R16
      131 SETTABLE                         R23 R22 R8
      132 FORNLOOP                         R12
      133 FORNLOOP                         R6
      134 FORNLOOP                         R3
      135 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["fillInternalMaterial"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["clearRegionCache"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_region"]
        2 NAMECALL                         R1 R0 K1 ["revertRegion"]
        4 CALL                             R1 2 0
        5 NAMECALL                         R1 R0 K2 ["clearRegionCache"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["_getHeightMapCacheBottomUp"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_heightmapCache"]
        8 LOADN                            R3 1
        9 GETTABLEKS                       R1 R0 K5 ["_sliceX"]
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 LOADN                            R6 1
       14 GETTABLEKS                       R4 R0 K6 ["_sliceZ"]
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 MOVE                             R9 R3
       19 MOVE                             R10 R6
       20 NAMECALL                         R7 R0 K7 ["getIndex"]
       22 CALL                             R7 3 1
       23 GETTABLEKS                       R9 R0 K8 ["_heightMapFromNoise"]
       25 GETTABLE                         R8 R9 R7
       26 GETTABLEKS                       R10 R0 K9 ["_sliceY"]
       28 FASTCALL1                        MATH_CEIL R8 ; [+3]
       29 MOVE                             R12 R8
       30 GETIMPORT                        R11 K12 [math.ceil]
       32 CALL                             R11 1 1
       33 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       35 GETIMPORT                        R9 K14 [math.min]
       37 CALL                             R9 2 1
       38 LOADN                            R12 1
       39 MOVE                             R10 R9
       40 LOADN                            R11 1
       41 FORNPREP                         R10
       42 GETTABLEKS                       R16 R0 K15 ["_occupancyCache"]
       44 GETTABLE                         R15 R16 R3
       45 GETTABLE                         R14 R15 R12
       46 GETTABLE                         R13 R14 R6
       47 JUMPIFEQKN                       R13 K16 [0] ; [+23]
       49 GETTABLEKS                       R16 R0 K17 ["_materialCache"]
       51 GETTABLE                         R15 R16 R3
       52 GETTABLE                         R14 R15 R12
       53 GETTABLE                         R13 R14 R6
       54 GETIMPORT                        R14 K21 [Enum.Material.Air]
       56 JUMPIFEQ                         R13 R14 ; [+14]
       58 GETTABLEKS                       R13 R0 K4 ["_heightmapCache"]
       60 GETTABLE                         R14 R13 R7
       61 GETTABLEKS                       R18 R0 K15 ["_occupancyCache"]
       63 GETTABLE                         R17 R18 R3
       64 GETTABLE                         R16 R17 R12
       65 GETTABLE                         R15 R16 R6
       66 ADD                              R14 R14 R15
       67 SETTABLE                         R14 R13 R7
       68 JUMP                             ; [+1]
       69 JUMP                             ; [+1]
       70 FORNLOOP                         R10
       71 FORNLOOP                         R4
       72 FORNLOOP                         R1
       73 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_heightmapCache"]
        8 GETIMPORT                        R1 K2 [table.create]
       10 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 LOADN                            R2 0
       15 LOADN                            R5 1
       16 GETTABLEKS                       R3 R0 K5 ["_sliceX"]
       18 LOADN                            R4 1
       19 FORNPREP                         R3
       20 LOADN                            R8 1
       21 GETTABLEKS                       R6 R0 K6 ["_sliceZ"]
       23 LOADN                            R7 1
       24 FORNPREP                         R6
       25 MOVE                             R11 R5
       26 MOVE                             R12 R8
       27 NAMECALL                         R9 R0 K7 ["getIndex"]
       29 CALL                             R9 3 1
       30 GETTABLEKS                       R12 R0 K8 ["_sliceY"]
       32 LOADN                            R10 1
       33 LOADN                            R11 255
       34 FORNPREP                         R10
       35 GETTABLEKS                       R16 R0 K9 ["_occupancyCache"]
       37 GETTABLE                         R15 R16 R5
       38 GETTABLE                         R14 R15 R12
       39 GETTABLE                         R13 R14 R8
       40 JUMPIFEQKN                       R13 K10 [0] ; [+14]
       42 GETTABLEKS                       R16 R0 K11 ["_materialCache"]
       44 GETTABLE                         R15 R16 R5
       45 GETTABLE                         R14 R15 R12
       46 GETTABLE                         R13 R14 R8
       47 GETIMPORT                        R14 K15 [Enum.Material.Air]
       49 JUMPIFEQ                         R13 R14 ; [+5]
       51 GETTABLEKS                       R13 R0 K4 ["_heightmapCache"]
       53 SETTABLE                         R12 R13 R9
       54 JUMP                             ; [+1]
       55 FORNLOOP                         R10
       56 GETTABLEKS                       R11 R0 K4 ["_heightmapCache"]
       58 GETTABLE                         R10 R11 R9
       59 SETTABLE                         R10 R1 R9
       60 GETTABLE                         R10 R1 R9
       61 ADD                              R2 R2 R10
       62 FORNLOOP                         R6
       63 FORNLOOP                         R3
       64 GETIMPORT                        R3 K17 [table.sort]
       66 MOVE                             R4 R1
       67 CALL                             R3 1 0
       68 LOADN                            R4 1
       69 LENGTH                           R7 R1
       70 DIVK                             R6 R7 K18 [2]
       71 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       72 GETIMPORT                        R5 K21 [math.floor]
       74 CALL                             R5 1 1
       75 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       77 GETIMPORT                        R3 K23 [math.max]
       79 CALL                             R3 2 1
       80 GETTABLE                         R4 R1 R3
       81 SETTABLEKS                       R4 R0 K24 ["_medianHeightCache"]
       83 GETTABLEKS                       R5 R0 K3 ["_mapSize"]
       85 DIV                              R4 R2 R5
       86 SETTABLEKS                       R4 R0 K25 ["_meanHeightCache"]
       88 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_services"]
        2 GETTABLEKS                       R2 R3 K1 ["Terrain"]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 0
        6 NEWTABLE                         R6 0 3
        8 LOADK                            R7 K2 ["SolidMaterial"]
        9 LOADK                            R8 K3 ["SolidOccupancy"]
       10 LOADK                            R9 K4 ["LiquidOccupancy"]
       11 SETLIST                          R6 R7 3 [1]
       13 NAMECALL                         R2 R2 K5 ["ReadVoxelChannels"]
       15 CALL                             R2 4 1
       16 GETTABLEKS                       R3 R2 K2 ["SolidMaterial"]
       18 SETTABLEKS                       R3 R0 K6 ["_materialCache"]
       20 GETTABLEKS                       R3 R2 K3 ["SolidOccupancy"]
       22 SETTABLEKS                       R3 R0 K7 ["_occupancyCache"]
       24 GETTABLEKS                       R3 R2 K4 ["LiquidOccupancy"]
       26 SETTABLEKS                       R3 R0 K8 ["_waterCache"]
       28 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOT                        R1 ; [+31]
        1 GETTABLEKS                       R2 R0 K0 ["_materialCache"]
        3 JUMPIFNOT                        R2 ; [+28]
        4 GETTABLEKS                       R2 R0 K1 ["_occupancyCache"]
        6 JUMPIFNOT                        R2 ; [+25]
        7 GETTABLEKS                       R2 R0 K2 ["_waterCache"]
        9 JUMPIFNOT                        R2 ; [+22]
       10 GETTABLEKS                       R3 R0 K3 ["_services"]
       12 GETTABLEKS                       R2 R3 K4 ["Terrain"]
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 0
       16 DUPTABLE                         R6 K8 [{"SolidMaterial", "SolidOccupancy", "LiquidOccupancy"}]
       17 GETTABLEKS                       R7 R0 K0 ["_materialCache"]
       19 SETTABLEKS                       R7 R6 K5 ["SolidMaterial"]
       21 GETTABLEKS                       R7 R0 K1 ["_occupancyCache"]
       23 SETTABLEKS                       R7 R6 K6 ["SolidOccupancy"]
       25 GETTABLEKS                       R7 R0 K2 ["_waterCache"]
       27 SETTABLEKS                       R7 R6 K7 ["LiquidOccupancy"]
       29 NAMECALL                         R2 R2 K9 ["WriteVoxelChannels"]
       31 CALL                             R2 4 0
       32 RETURN                           R0 0

PROTO_26:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 SETTABLEKS                       R1 R0 K0 ["_materialCache"]
        4 SETTABLEKS                       R2 R0 K1 ["_occupancyCache"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_heightmapCache"]
        9 RETURN                           R0 0

PROTO_27:
        0 JUMPIF                           R2 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R4 0
        3 LOADK                            R6 K0 ["TG_DEBUG_DRAW_UI"]
        4 NAMECALL                         R4 R4 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 MOVE                             R8 R1
        8 LOADK                            R9 K2 ["Frame"]
        9 CONCAT                           R7 R8 R9
       10 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       12 CALL                             R5 2 1
       13 JUMPIF                           R5 ; [+26]
       14 GETIMPORT                        R6 K5 [Instance.new]
       16 LOADK                            R7 K2 ["Frame"]
       17 CALL                             R6 1 1
       18 MOVE                             R5 R6
       19 MOVE                             R7 R1
       20 LOADK                            R8 K2 ["Frame"]
       21 CONCAT                           R6 R7 R8
       22 SETTABLEKS                       R6 R5 K6 ["Name"]
       24 SETTABLEKS                       R4 R5 K7 ["Parent"]
       26 GETIMPORT                        R6 K11 [Enum.AutomaticSize.XY]
       28 SETTABLEKS                       R6 R5 K9 ["AutomaticSize"]
       30 GETIMPORT                        R6 K5 [Instance.new]
       32 LOADK                            R7 K12 ["UIListLayout"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R5 R6 K7 ["Parent"]
       36 GETIMPORT                        R7 K15 [Enum.FillDirection.Horizontal]
       38 SETTABLEKS                       R7 R6 K13 ["FillDirection"]
       40 MOVE                             R9 R1
       41 LOADK                            R10 K16 ["Text"]
       42 CONCAT                           R8 R9 R10
       43 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
       45 CALL                             R6 2 1
       46 JUMPIF                           R6 ; [+23]
       47 GETIMPORT                        R7 K5 [Instance.new]
       49 LOADK                            R8 K17 ["TextLabel"]
       50 CALL                             R7 1 1
       51 MOVE                             R6 R7
       52 MOVE                             R8 R1
       53 LOADK                            R9 K16 ["Text"]
       54 CONCAT                           R7 R8 R9
       55 SETTABLEKS                       R7 R6 K6 ["Name"]
       57 SETTABLEKS                       R5 R6 K7 ["Parent"]
       59 SETTABLEKS                       R1 R6 K16 ["Text"]
       61 GETIMPORT                        R7 K19 [UDim2.new]
       63 LOADN                            R8 0
       64 LOADN                            R9 150
       65 LOADN                            R10 0
       66 LOADN                            R11 20
       67 CALL                             R7 4 1
       68 SETTABLEKS                       R7 R6 K20 ["Size"]
       70 MOVE                             R8 R1
       71 LOADK                            R9 K21 ["Label"]
       72 CONCAT                           R7 R8 R9
       73 MOVE                             R10 R7
       74 NAMECALL                         R8 R5 K1 ["FindFirstChild"]
       76 CALL                             R8 2 1
       77 JUMPIF                           R8 ; [+21]
       78 GETIMPORT                        R9 K5 [Instance.new]
       80 LOADK                            R10 K22 ["ImageLabel"]
       81 CALL                             R9 1 1
       82 MOVE                             R8 R9
       83 SETTABLEKS                       R7 R8 K6 ["Name"]
       85 GETIMPORT                        R9 K19 [UDim2.new]
       87 LOADN                            R10 0
       88 LOADN                            R11 0
       89 LOADN                            R12 0
       90 LOADN                            R13 0
       91 CALL                             R9 4 1
       92 SETTABLEKS                       R9 R8 K23 ["Position"]
       94 LOADN                            R9 1
       95 SETTABLEKS                       R9 R8 K24 ["BackgroundTransparency"]
       97 SETTABLEKS                       R5 R8 K7 ["Parent"]
       99 MOVE                             R11 R1
      100 NAMECALL                         R9 R8 K1 ["FindFirstChild"]
      102 CALL                             R9 2 1
      103 JUMPIF                           R9 ; [+7]
      104 GETIMPORT                        R10 K5 [Instance.new]
      106 LOADK                            R11 K25 ["EditableImage"]
      107 CALL                             R10 1 1
      108 MOVE                             R9 R10
      109 SETTABLEKS                       R1 R9 K6 ["Name"]
      111 GETIMPORT                        R12 K27 [Vector2.new]
      113 GETTABLEKS                       R13 R0 K28 ["_sliceX"]
      115 GETTABLEKS                       R14 R0 K29 ["_sliceZ"]
      117 CALL                             R12 2 -1
      118 NAMECALL                         R10 R9 K30 ["Resize"]
      120 CALL                             R10 -1 0
      121 GETIMPORT                        R10 K19 [UDim2.new]
      123 LOADN                            R11 0
      124 GETTABLEKS                       R12 R0 K28 ["_sliceX"]
      126 LOADN                            R13 0
      127 GETTABLEKS                       R14 R0 K29 ["_sliceZ"]
      129 CALL                             R10 4 1
      130 SETTABLEKS                       R10 R8 K20 ["Size"]
      132 GETIMPORT                        R10 K33 [table.create]
      134 GETTABLEKS                       R12 R0 K35 ["_mapSize"]
      136 MULK                             R11 R12 K34 [4]
      137 LOADN                            R12 1
      138 CALL                             R10 2 1
      139 LOADN                            R13 1
      140 GETTABLEKS                       R14 R9 K20 ["Size"]
      142 GETTABLEKS                       R11 R14 K36 ["X"]
      144 LOADN                            R12 1
      145 FORNPREP                         R11
      146 LOADN                            R16 1
      147 GETTABLEKS                       R17 R9 K20 ["Size"]
      149 GETTABLEKS                       R14 R17 K37 ["Y"]
      151 LOADN                            R15 1
      152 FORNPREP                         R14
      153 MOVE                             R19 R13
      154 MOVE                             R20 R16
      155 NAMECALL                         R17 R0 K38 ["getIndex"]
      157 CALL                             R17 3 1
      158 SUBK                             R20 R16 K39 [1]
      159 GETTABLEKS                       R22 R9 K20 ["Size"]
      161 GETTABLEKS                       R21 R22 K36 ["X"]
      163 MUL                              R19 R20 R21
      164 ADD                              R18 R19 R13
      165 LOADN                            R20 1
      166 SUBK                             R22 R18 K39 [1]
      167 MULK                             R21 R22 K34 [4]
      168 ADD                              R19 R20 R21
      169 LOADN                            R20 0
      170 GETTABLE                         R22 R2 R17
      171 FASTCALL1                        TYPEOF R22 ; [+2]
      172 GETIMPORT                        R21 K41 [typeof]
      174 CALL                             R21 1 1
      175 JUMPIFNOTEQKS                    R21 K42 ["boolean"] ; [+7]
      177 GETTABLE                         R21 R2 R17
      178 JUMPIFNOT                        R21 ; [+2]
      179 LOADN                            R20 1
      180 JUMP                             ; [+4]
      181 LOADN                            R20 0
      182 JUMP                             ; [+2]
      183 GETTABLE                         R21 R2 R17
      184 DIV                              R20 R21 R3
      185 LOADN                            R21 1
      186 JUMPIFNOTLT                      R21 R20 ; [+10]
      188 SUBK                             R21 R20 K39 [1]
      189 SETTABLE                         R21 R10 R19
      190 ADDK                             R21 R19 K39 [1]
      191 LOADN                            R22 0
      192 SETTABLE                         R22 R10 R21
      193 ADDK                             R21 R19 K43 [2]
      194 LOADN                            R22 0
      195 SETTABLE                         R22 R10 R21
      196 JUMP                             ; [+17]
      197 LOADN                            R21 0
      198 JUMPIFNOTLT                      R20 R21 ; [+10]
      200 LOADN                            R21 0
      201 SETTABLE                         R21 R10 R19
      202 ADDK                             R21 R19 K39 [1]
      203 LOADN                            R22 0
      204 SETTABLE                         R22 R10 R21
      205 ADDK                             R21 R19 K43 [2]
      206 MINUS                            R22 R20
      207 SETTABLE                         R22 R10 R21
      208 JUMP                             ; [+5]
      209 SETTABLE                         R20 R10 R19
      210 ADDK                             R21 R19 K39 [1]
      211 SETTABLE                         R20 R10 R21
      212 ADDK                             R21 R19 K43 [2]
      213 SETTABLE                         R20 R10 R21
      214 FORNLOOP                         R14
      215 FORNLOOP                         R11
      216 GETIMPORT                        R13 K45 [Vector2.zero]
      218 GETTABLEKS                       R14 R9 K20 ["Size"]
      220 MOVE                             R15 R10
      221 NAMECALL                         R11 R9 K46 ["WritePixels"]
      223 CALL                             R11 4 0
      224 SETTABLEKS                       R8 R9 K7 ["Parent"]
      226 GETIMPORT                        R11 K19 [UDim2.new]
      228 LOADN                            R12 0
      229 LOADN                            R13 200
      230 LOADN                            R14 0
      231 LOADN                            R15 200
      232 CALL                             R11 4 1
      233 SETTABLEKS                       R11 R8 K20 ["Size"]
      235 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["TG_DEBUG_DRAW_UI"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+29]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["ScreenGui"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 LOADK                            R2 K0 ["TG_DEBUG_DRAW_UI"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 GETIMPORT                        R2 K4 [Instance.new]
       19 LOADK                            R3 K8 ["UIListLayout"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K12 [Enum.HorizontalAlignment.Left]
       23 SETTABLEKS                       R3 R2 K10 ["HorizontalAlignment"]
       25 GETIMPORT                        R3 K15 [Enum.VerticalAlignment.Bottom]
       27 SETTABLEKS                       R3 R2 K13 ["VerticalAlignment"]
       29 GETIMPORT                        R3 K18 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R3 R2 K16 ["FillDirection"]
       33 SETTABLEKS                       R1 R2 K7 ["Parent"]
       35 LOADK                            R4 K19 ["Noisemap"]
       36 GETTABLEKS                       R5 R0 K20 ["_noiseMap"]
       38 LOADN                            R6 1
       39 LOADN                            R7 0
       40 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       42 CALL                             R2 5 0
       43 LOADK                            R4 K22 ["Heightmap"]
       44 GETTABLEKS                       R5 R0 K23 ["_heightMap"]
       46 GETTABLEKS                       R6 R0 K24 ["_sliceY"]
       48 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       50 CALL                             R2 4 0
       51 LOADK                            R4 K25 ["NeighborHeightMap"]
       52 GETTABLEKS                       R5 R0 K26 ["_minNeighborHeight"]
       54 GETTABLEKS                       R6 R0 K24 ["_sliceY"]
       56 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       58 CALL                             R2 4 0
       59 LOADK                            R4 K27 ["SlopeMap"]
       60 GETTABLEKS                       R5 R0 K28 ["_slopeMap"]
       62 LOADK                            R6 K29 [1.5707963267949]
       63 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       65 CALL                             R2 4 0
       66 LOADK                            R4 K30 ["Blending"]
       67 GETTABLEKS                       R5 R0 K31 ["_blendingFactorMap"]
       69 LOADN                            R6 1
       70 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       72 CALL                             R2 4 0
       73 LOADK                            R4 K32 ["HeightMapCache"]
       74 GETTABLEKS                       R5 R0 K33 ["_heightmapCache"]
       76 GETTABLEKS                       R6 R0 K24 ["_sliceY"]
       78 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       80 CALL                             R2 4 0
       81 LOADK                            R4 K34 ["FillBottom"]
       82 GETTABLEKS                       R5 R0 K35 ["_fillBottomPositions"]
       84 LOADN                            R6 1
       85 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       87 CALL                             R2 4 0
       88 LOADK                            R4 K36 ["LakeArea"]
       89 GETTABLEKS                       R5 R0 K37 ["_lakeAreaPositions"]
       91 LOADN                            R6 4
       92 NAMECALL                         R2 R0 K21 ["debugDrawArray"]
       94 CALL                             R2 4 0
       95 RETURN                           R0 0

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
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Types"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["BuildSettings"]
       27 GETTABLEKS                       R5 R3 K12 ["Category"]
       29 GETTABLEKS                       R8 R0 K6 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["Generation"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K15 ["GetBlendingFactorMap"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R6 K16 ["RotatePointInRectangle"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R12 R0 K6 ["Src"]
       49 GETTABLEKS                       R11 R12 K17 ["Flags"]
       51 GETTABLEKS                       R10 R11 K18 ["getFFlagTerrainEditorDebugMode"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R13 R0 K6 ["Src"]
       58 GETTABLEKS                       R12 R13 K13 ["Util"]
       60 GETTABLEKS                       R11 R12 K19 ["AnalyticsHelper"]
       62 CALL                             R10 1 1
       63 NEWTABLE                         R11 32 0
       65 GETIMPORT                        R12 K21 [game]
       67 LOADK                            R14 K22 ["StarterGui"]
       68 NAMECALL                         R12 R12 K23 ["GetService"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R11 R11 K24 ["__index"]
       73 DUPCLOSURE                       R13 K25 [PROTO_0]
       74 SETTABLEKS                       R13 R11 K26 ["new"]
       76 DUPCLOSURE                       R13 K27 [PROTO_1]
       77 SETTABLEKS                       R13 R11 K28 ["init"]
       79 DUPCLOSURE                       R13 K29 [PROTO_2]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R13 R11 K30 ["update"]
       86 DUPCLOSURE                       R13 K31 [PROTO_3]
       87 SETTABLEKS                       R13 R11 K32 ["getAverageFrameTime"]
       89 DUPCLOSURE                       R13 K33 [PROTO_4]
       90 SETTABLEKS                       R13 R11 K34 ["getTerrainType"]
       92 DUPCLOSURE                       R13 K35 [PROTO_5]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R13 R11 K36 ["setupRegion"]
       98 DUPCLOSURE                       R13 K37 [PROTO_6]
       99 SETTABLEKS                       R13 R11 K38 ["getIndex"]
      101 DUPCLOSURE                       R13 K39 [PROTO_7]
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R13 R11 K40 ["generateStamp"]
      106 DUPCLOSURE                       R13 K41 [PROTO_8]
      107 SETTABLEKS                       R13 R11 K42 ["generateNoiseMap"]
      109 DUPCLOSURE                       R13 K43 [PROTO_9]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R13 R11 K44 ["generateHeightMap"]
      114 DUPCLOSURE                       R13 K45 [PROTO_10]
      115 SETTABLEKS                       R13 R11 K46 ["generateSlopeMap"]
      117 DUPCLOSURE                       R13 K47 [PROTO_11]
      118 SETTABLEKS                       R13 R11 K48 ["generateOccupancyMap"]
      120 DUPCLOSURE                       R13 K49 [PROTO_12]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R13 R11 K50 ["generateMaterialMap"]
      125 DUPCLOSURE                       R13 K51 [PROTO_13]
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R13 R11 K52 ["fillInternalMaterial"]
      131 DUPCLOSURE                       R13 K53 [PROTO_14]
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R13 R11 K54 ["updateBlendingFactorMap"]
      135 DUPCLOSURE                       R13 K55 [PROTO_15]
      136 SETTABLEKS                       R13 R11 K56 ["blendHeightMap"]
      138 DUPCLOSURE                       R13 K57 [PROTO_16]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R13 R11 K58 ["blendMaterialMap"]
      143 DUPCLOSURE                       R13 K59 [PROTO_17]
      144 SETTABLEKS                       R13 R11 K60 ["postProcessing"]
      146 DUPCLOSURE                       R13 K61 [PROTO_18]
      147 SETTABLEKS                       R13 R11 K62 ["commit"]
      149 DUPCLOSURE                       R13 K63 [PROTO_19]
      150 SETTABLEKS                       R13 R11 K64 ["destroy"]
      152 DUPCLOSURE                       R13 K65 [PROTO_20]
      153 SETTABLEKS                       R13 R11 K66 ["generateHeightMapCacheTopDown"]
      155 DUPCLOSURE                       R13 K67 [PROTO_21]
      156 SETTABLEKS                       R13 R11 K68 ["generateHeightMapCacheBottomUp"]
      158 DUPCLOSURE                       R13 K69 [PROTO_22]
      159 SETTABLEKS                       R13 R11 K70 ["_getHeightMapCacheBottomUp"]
      161 DUPCLOSURE                       R13 K71 [PROTO_23]
      162 SETTABLEKS                       R13 R11 K72 ["_getHeightMapCacheTopDown"]
      164 DUPCLOSURE                       R13 K73 [PROTO_24]
      165 CAPTURE                          VAL R2
      166 SETTABLEKS                       R13 R11 K74 ["cacheRegion"]
      168 DUPCLOSURE                       R13 K75 [PROTO_25]
      169 CAPTURE                          VAL R2
      170 SETTABLEKS                       R13 R11 K76 ["revertRegion"]
      172 DUPCLOSURE                       R13 K77 [PROTO_26]
      173 SETTABLEKS                       R13 R11 K78 ["clearRegionCache"]
      175 DUPCLOSURE                       R13 K79 [PROTO_27]
      176 CAPTURE                          VAL R12
      177 SETTABLEKS                       R13 R11 K80 ["debugDrawArray"]
      179 DUPCLOSURE                       R13 K81 [PROTO_28]
      180 CAPTURE                          VAL R12
      181 SETTABLEKS                       R13 R11 K82 ["debugDraw"]
      183 RETURN                           R11 1
