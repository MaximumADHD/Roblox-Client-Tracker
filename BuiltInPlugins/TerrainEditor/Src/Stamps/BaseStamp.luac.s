PROTO_0:
  DUPTABLE R2 K1 [{"_terrainType"}]
  SETTABLEKS R1 R2 K0 ["_terrainType"]
  FASTCALL2 SETMETATABLE R2 R0 [+5]
  MOVE R4 R2
  MOVE R5 R0
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 0
  SETTABLEKS R0 R0 K4 ["__index"]
  RETURN R2 1

PROTO_1:
  SETTABLEKS R2 R0 K0 ["_services"]
  SETTABLEKS R1 R0 K1 ["_payload"]
  LOADN R3 0
  SETTABLEKS R3 R0 K2 ["_time"]
  LOADN R3 0
  SETTABLEKS R3 R0 K3 ["_timeTotals"]
  NAMECALL R3 R0 K4 ["setupRegion"]
  CALL R3 1 0
  RETURN R0 1

PROTO_2:
  GETIMPORT R3 K2 [os.clock]
  CALL R3 0 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["BuildSettings"]
  GETTABLE R4 R2 R5
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOT R4 [+33]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Transform"]
  GETTABLE R5 R4 R6
  GETTABLEKS R8 R0 K5 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["Transform"]
  GETTABLE R6 R7 R8
  JUMPIFNOTEQ R5 R6 [+18]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["Size"]
  GETTABLE R5 R4 R6
  GETTABLEKS R8 R0 K5 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["Size"]
  GETTABLE R6 R7 R8
  JUMPIFNOTEQ R5 R6 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K5 ["_payload"]
  DUPTABLE R5 K11 [{"noiseMap", "heightMap", "heightMapCacheTopDown", "heightMapCacheBottomUp"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["noiseMap"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["heightMap"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["heightMapCacheTopDown"]
  LOADB R6 1
  SETTABLEKS R6 R5 K10 ["heightMapCacheBottomUp"]
  JUMPIFNOT R4 [+121]
  LOADB R6 1
  LOADB R7 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["Transform"]
  GETTABLE R8 R4 R9
  JUMPIF R8 [+5]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["Size"]
  GETTABLE R8 R4 R9
  JUMPIFNOT R8 [+43]
  GETTABLEKS R9 R0 K12 ["_region"]
  GETTABLEKS R8 R9 K6 ["Size"]
  GETTABLEKS R11 R0 K12 ["_region"]
  NAMECALL R9 R0 K13 ["revertRegion"]
  CALL R9 2 0
  NAMECALL R9 R0 K14 ["setupRegion"]
  CALL R9 1 0
  GETTABLEKS R10 R0 K12 ["_region"]
  GETTABLEKS R9 R10 K6 ["Size"]
  JUMPIFNOTEQ R8 R9 [+4]
  LOADB R6 0
  LOADB R7 0
  JUMP [+28]
  GETTABLEKS R9 R8 K15 ["X"]
  GETTABLEKS R12 R0 K12 ["_region"]
  GETTABLEKS R11 R12 K6 ["Size"]
  GETTABLEKS R10 R11 K15 ["X"]
  JUMPIFNOTEQ R9 R10 [+19]
  GETTABLEKS R9 R8 K16 ["Z"]
  GETTABLEKS R12 R0 K12 ["_region"]
  GETTABLEKS R11 R12 K6 ["Size"]
  GETTABLEKS R10 R11 K16 ["Z"]
  JUMPIFNOTEQ R9 R10 [+9]
  LOADB R7 0
  JUMP [+6]
  LOADB R8 0
  SETTABLEKS R8 R5 K9 ["heightMapCacheTopDown"]
  LOADB R8 0
  SETTABLEKS R8 R5 K10 ["heightMapCacheBottomUp"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["BlendingEdge"]
  GETTABLE R8 R4 R9
  JUMPIFNOT R8 [+11]
  LOADN R10 0
  JUMPIFLT R10 R8 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R0 K18 ["_addBlending"]
  MOVE R11 R8
  NAMECALL R9 R0 K19 ["updateBlendingFactorMap"]
  CALL R9 2 0
  JUMPIF R6 [+6]
  LOADB R9 0
  SETTABLEKS R9 R5 K7 ["noiseMap"]
  LOADB R9 0
  SETTABLEKS R9 R5 K8 ["heightMap"]
  JUMPIF R7 [+3]
  LOADB R9 0
  SETTABLEKS R9 R5 K7 ["noiseMap"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K20 ["Material"]
  GETTABLE R9 R4 R10
  JUMPIF R9 [+15]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["MaterialLUT"]
  GETTABLE R9 R4 R10
  JUMPIF R9 [+10]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K22 ["WaterLevel"]
  GETTABLE R9 R4 R10
  JUMPIF R9 [+5]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["BlendingEdge"]
  GETTABLE R9 R4 R10
  JUMPIFNOT R9 [+6]
  LOADB R9 0
  SETTABLEKS R9 R5 K7 ["noiseMap"]
  LOADB R9 0
  SETTABLEKS R9 R5 K8 ["heightMap"]
  GETTABLEKS R9 R5 K8 ["heightMap"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R5 K10 ["heightMapCacheBottomUp"]
  SETTABLEKS R9 R5 K10 ["heightMapCacheBottomUp"]
  GETTABLEKS R10 R0 K5 ["_payload"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["BuildSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["AdvancedNoise"]
  GETTABLE R8 R9 R10
  GETTABLEKS R7 R8 K23 ["Children"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K25 ["Rotation"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+8]
  LOADN R8 0
  JUMPIFNOTLT R8 R6 [+6]
  LOADN R8 104
  JUMPIFNOTLT R6 R8 [+3]
  MOVE R7 R6
  JUMP [+1]
  LOADN R7 0
  SETTABLEKS R7 R0 K26 ["_rotationY"]
  GETUPVAL R7 2
  GETTABLEKS R8 R0 K27 ["_sliceX"]
  GETTABLEKS R9 R0 K28 ["_sliceZ"]
  GETTABLEKS R11 R0 K26 ["_rotationY"]
  FASTCALL1 MATH_RAD R11 [+2]
  GETIMPORT R10 K31 [math.rad]
  CALL R10 1 1
  CALL R7 3 1
  SETTABLEKS R7 R0 K32 ["_getRotatedPoint"]
  MOVE R9 R5
  NAMECALL R7 R0 K33 ["generateStamp"]
  CALL R7 2 0
  GETTABLEKS R7 R0 K34 ["_time"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K35 ["NormalizeRegionTimer"]
  MOVE R9 R3
  GETTABLEKS R12 R0 K5 ["_payload"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["BuildSettings"]
  GETTABLE R11 R12 R13
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["Size"]
  GETTABLE R10 R11 R12
  CALL R8 2 1
  ADD R7 R7 R8
  SETTABLEKS R7 R0 K34 ["_time"]
  GETTABLEKS R7 R0 K36 ["_timeTotals"]
  ADDK R7 R7 K37 [1]
  SETTABLEKS R7 R0 K36 ["_timeTotals"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_time"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K1 ["_timeTotals"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["_time"]
  GETTABLEKS R3 R0 K1 ["_timeTotals"]
  DIV R1 R2 R3
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_terrainType"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Transform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K3 ["Position"]
  GETTABLEKS R5 R0 K0 ["_payload"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["BuildSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  DIVK R2 R3 K4 [2]
  GETIMPORT R3 K8 [Region3.new]
  SUB R4 R1 R2
  ADD R5 R1 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R3 R0 K9 ["_region"]
  GETUPVAL R5 2
  NAMECALL R3 R3 K10 ["ExpandToGrid"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K11 ["X"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K12 ["_sliceX"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K13 ["Y"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K14 ["_sliceY"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K15 ["Z"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K16 ["_sliceZ"]
  GETTABLEKS R4 R0 K12 ["_sliceX"]
  GETTABLEKS R5 R0 K16 ["_sliceZ"]
  MUL R3 R4 R5
  SETTABLEKS R3 R0 K17 ["_mapSize"]
  GETTABLEKS R5 R0 K9 ["_region"]
  NAMECALL R3 R0 K18 ["cacheRegion"]
  CALL R3 2 0
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K20 ["BlendingEdge"]
  GETTABLE R6 R7 R8
  ORK R5 R6 K19 [0]
  NAMECALL R3 R0 K21 ["updateBlendingFactorMap"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R5 R0 K0 ["_sliceZ"]
  SUBK R6 R1 K1 [1]
  MUL R4 R5 R6
  ADD R3 R4 R2
  RETURN R3 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_region"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R0 K0 ["_region"]
  GETTABLEKS R2 R3 K1 ["Size"]
  GETIMPORT R3 K4 [Vector3.zero]
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K5 ["heightMapCacheTopDown"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K9 ["TG_GenerateHeightCacheTopDown"]
  CALL R2 1 0
  NAMECALL R2 R0 K10 ["generateHeightMapCacheTopDown"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETTABLEKS R2 R1 K13 ["noiseMap"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K14 ["TG_GenerateNoise"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["generateNoiseMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETTABLEKS R2 R1 K16 ["heightMap"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K17 ["TG_GenerateHeight"]
  CALL R2 1 0
  NAMECALL R2 R0 K18 ["generateHeightMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETTABLEKS R2 R1 K19 ["heightMapCacheBottomUp"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K20 ["TG_GenerateHeightCacheBottomUp"]
  CALL R2 1 0
  NAMECALL R2 R0 K21 ["generateHeightMapCacheBottomUp"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K22 ["TG_BlendHeight"]
  CALL R2 1 0
  NAMECALL R2 R0 K23 ["blendHeightMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K24 ["TG_GenerateOccupancyMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K25 ["generateOccupancyMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K26 ["TG_GenerateSlopeMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K27 ["generateSlopeMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K28 ["TG_GenerateMaterial"]
  CALL R2 1 0
  NAMECALL R2 R0 K29 ["generateMaterialMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K30 ["TG_BlendMaterialMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K31 ["blendMaterialMap"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETIMPORT R2 K8 [debug.profilebegin]
  LOADK R3 K32 ["TG_PostProcessing"]
  CALL R2 1 0
  NAMECALL R2 R0 K33 ["postProcessing"]
  CALL R2 1 0
  GETIMPORT R2 K12 [debug.profileend]
  CALL R2 0 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K34 ["debugDraw"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K35 ["_services"]
  GETTABLEKS R2 R3 K36 ["Terrain"]
  GETTABLEKS R4 R0 K0 ["_region"]
  GETUPVAL R5 1
  DUPTABLE R6 K39 [{"SolidMaterial", "SolidOccupancy"}]
  GETTABLEKS R7 R0 K40 ["_materialMap"]
  SETTABLEKS R7 R6 K37 ["SolidMaterial"]
  GETTABLEKS R7 R0 K41 ["_occupancyMap"]
  SETTABLEKS R7 R6 K38 ["SolidOccupancy"]
  NAMECALL R2 R2 K42 ["WriteVoxelChannels"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K43 ["_waterMap"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R0 K35 ["_services"]
  GETTABLEKS R2 R3 K36 ["Terrain"]
  GETTABLEKS R4 R0 K0 ["_region"]
  GETUPVAL R5 1
  DUPTABLE R6 K45 [{"LiquidOccupancy"}]
  GETTABLEKS R7 R0 K43 ["_waterMap"]
  SETTABLEKS R7 R6 K44 ["LiquidOccupancy"]
  NAMECALL R2 R2 K42 ["WriteVoxelChannels"]
  CALL R2 4 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_noiseMap"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R1 [+3]
  DIVK R3 R2 K4 [2]
  JUMP [+1]
  LOADN R3 0
  GETTABLEKS R5 R0 K5 ["_sliceY"]
  LOADN R7 1
  SUB R6 R7 R3
  MUL R4 R5 R6
  GETIMPORT R5 K8 [table.create]
  GETTABLEKS R6 R0 K9 ["_mapSize"]
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R0 K10 ["_heightMapFromNoise"]
  LOADN R7 1
  GETTABLEKS R5 R0 K9 ["_mapSize"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R9 R0 K11 ["_noiseMap"]
  GETTABLE R8 R9 R7
  GETTABLEKS R11 R0 K5 ["_sliceY"]
  MUL R10 R11 R3
  MUL R9 R10 R8
  ADD R10 R4 R9
  GETTABLEKS R11 R0 K10 ["_heightMapFromNoise"]
  MOVE R13 R10
  LOADN R14 0
  GETTABLEKS R15 R0 K5 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K14 [math.clamp]
  CALL R12 3 1
  SETTABLE R12 R11 R7
  FORNLOOP R5
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_slopeMap"]
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_minNeighborHeight"]
  NEWTABLE R1 0 8
  NEWTABLE R2 0 2
  LOADN R3 255
  LOADN R4 0
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 2
  LOADN R4 1
  LOADN R5 0
  SETLIST R3 R4 2 [1]
  NEWTABLE R4 0 2
  LOADN R5 0
  LOADN R6 255
  SETLIST R4 R5 2 [1]
  NEWTABLE R5 0 2
  LOADN R6 0
  LOADN R7 1
  SETLIST R5 R6 2 [1]
  NEWTABLE R6 0 2
  LOADN R7 255
  LOADN R8 255
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADN R8 255
  LOADN R9 1
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADN R9 1
  LOADN R10 255
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADN R10 1
  LOADN R11 1
  SETLIST R9 R10 2 [1]
  SETLIST R1 R2 8 [1]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K7 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K8 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K9 ["_heightMap"]
  GETTABLE R9 R10 R8
  FASTCALL1 MATH_FLOOR R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K12 [math.floor]
  CALL R10 1 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R0 K5 ["_minNeighborHeight"]
  SETTABLE R10 R17 R8
  MOVE R17 R1
  LOADNIL R18
  LOADNIL R19
  FORGPREP R17
  GETTABLEN R23 R21 1
  ADD R22 R4 R23
  GETTABLEN R24 R21 2
  ADD R23 R7 R24
  LOADB R24 0
  LOADN R25 0
  JUMPIFNOTLT R25 R22 [+16]
  LOADB R24 0
  GETTABLEKS R25 R0 K6 ["_sliceX"]
  JUMPIFNOTLE R22 R25 [+11]
  LOADB R24 0
  LOADN R25 0
  JUMPIFNOTLT R25 R23 [+7]
  GETTABLEKS R25 R0 K7 ["_sliceZ"]
  JUMPIFLE R23 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  JUMPIFNOT R24 [+9]
  GETTABLEKS R26 R0 K9 ["_heightMap"]
  MOVE R29 R22
  MOVE R30 R23
  NAMECALL R27 R0 K8 ["getIndex"]
  CALL R27 3 1
  GETTABLE R25 R26 R27
  JUMP [+1]
  LOADN R25 0
  FASTCALL1 MATH_FLOOR R25 [+3]
  MOVE R27 R25
  GETIMPORT R26 K12 [math.floor]
  CALL R26 1 1
  GETTABLEKS R27 R0 K5 ["_minNeighborHeight"]
  GETTABLEKS R30 R0 K5 ["_minNeighborHeight"]
  GETTABLE R29 R30 R8
  FASTCALL2 MATH_MIN R29 R26 [+4]
  MOVE R30 R26
  GETIMPORT R28 K14 [math.min]
  CALL R28 2 1
  SETTABLE R28 R27 R8
  JUMPIFNOT R24 [+29]
  GETTABLEN R27 R21 1
  JUMPIFNOTEQKN R27 K15 [0] [+9]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K17 [math.abs]
  CALL R27 1 1
  ADD R11 R11 R27
  ADDK R12 R12 K18 [1]
  JUMP [+18]
  GETTABLEN R27 R21 2
  JUMPIFNOTEQKN R27 K15 [0] [+9]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K17 [math.abs]
  CALL R27 1 1
  ADD R13 R13 R27
  ADDK R14 R14 K18 [1]
  JUMP [+7]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K17 [math.abs]
  CALL R27 1 1
  ADD R15 R15 R27
  ADDK R16 R16 K18 [1]
  FORGLOOP R17 2 [-82]
  JUMPIFNOTEQKN R12 K15 [0] [+3]
  LOADN R11 0
  JUMP [+1]
  DIV R11 R11 R12
  JUMPIFNOTEQKN R14 K15 [0] [+3]
  LOADN R13 0
  JUMP [+1]
  DIV R13 R13 R14
  JUMPIFNOTEQKN R16 K15 [0] [+3]
  LOADN R15 0
  JUMP [+1]
  DIV R15 R15 R16
  GETTABLEKS R17 R0 K4 ["_slopeMap"]
  MUL R23 R11 R11
  MUL R24 R13 R13
  ADD R22 R23 R24
  MUL R23 R15 R15
  ADD R21 R22 R23
  DIVK R20 R21 K19 [4]
  FASTCALL1 MATH_SQRT R20 [+2]
  GETIMPORT R19 K21 [math.sqrt]
  CALL R19 1 1
  FASTCALL1 MATH_ATAN R19 [+2]
  GETIMPORT R18 K23 [math.atan]
  CALL R18 1 1
  SETTABLE R18 R17 R8
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_occupancyMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K4 ["_occupancyMap"]
  GETIMPORT R5 K2 [table.create]
  GETTABLEKS R6 R0 K5 ["_sliceY"]
  CALL R5 1 1
  SETTABLE R5 R4 R3
  LOADN R6 1
  GETTABLEKS R4 R0 K5 ["_sliceY"]
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R8 R0 K4 ["_occupancyMap"]
  GETTABLE R7 R8 R3
  GETIMPORT R8 K7 [table.clone]
  GETTABLEKS R11 R0 K8 ["_occupancyCache"]
  GETTABLE R10 R11 R3
  GETTABLE R9 R10 R6
  CALL R8 1 1
  SETTABLE R8 R7 R6
  FORNLOOP R4
  FORNLOOP R1
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K4 ["_occupancyMap"]
  GETTABLE R4 R5 R3
  LOADN R7 1
  GETTABLEKS R5 R0 K9 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R3
  MOVE R11 R7
  NAMECALL R8 R0 K10 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K11 ["_heightMap"]
  GETTABLE R9 R10 R8
  FASTCALL1 MATH_FLOOR R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K14 [math.floor]
  CALL R10 1 1
  FASTCALL1 MATH_CEIL R9 [+3]
  MOVE R13 R9
  GETIMPORT R12 K17 [math.ceil]
  CALL R12 1 1
  ADDK R11 R12 K15 [1]
  LOADN R14 1
  MOVE R12 R10
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R4 R14
  LOADN R16 1
  SETTABLE R16 R15 R7
  FORNLOOP R12
  SUB R12 R9 R10
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+12]
  ADDK R14 R10 K15 [1]
  GETTABLEKS R15 R0 K5 ["_sliceY"]
  FASTCALL2 MATH_MIN R14 R15 [+3]
  GETIMPORT R13 K19 [math.min]
  CALL R13 2 1
  GETTABLE R12 R4 R13
  SUB R13 R9 R10
  SETTABLE R13 R12 R7
  GETTABLEKS R12 R0 K20 ["_fillBottomPositions"]
  JUMPIFNOT R12 [+13]
  GETTABLEKS R13 R0 K20 ["_fillBottomPositions"]
  GETTABLE R12 R13 R8
  JUMPIFNOT R12 [+9]
  MOVE R14 R11
  GETTABLEKS R12 R0 K5 ["_sliceY"]
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R4 R14
  LOADN R16 0
  SETTABLE R16 R15 R7
  FORNLOOP R12
  FORNLOOP R5
  FORNLOOP R1
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["MaterialLUT"]
  GETTABLE R1 R2 R3
  GETIMPORT R2 K5 [table.create]
  GETTABLEKS R3 R0 K6 ["_sliceX"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["_materialMap"]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R5 R0 K7 ["_materialMap"]
  GETIMPORT R6 K5 [table.create]
  GETTABLEKS R7 R0 K8 ["_sliceY"]
  CALL R6 1 1
  SETTABLE R6 R5 R4
  LOADN R7 1
  GETTABLEKS R5 R0 K8 ["_sliceY"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R9 R0 K7 ["_materialMap"]
  GETTABLE R8 R9 R4
  GETIMPORT R9 K10 [table.clone]
  GETTABLEKS R12 R0 K11 ["_materialCache"]
  GETTABLE R11 R12 R4
  GETTABLE R10 R11 R7
  CALL R9 1 1
  SETTABLE R9 R8 R7
  FORNLOOP R5
  FORNLOOP R2
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K7 ["_materialMap"]
  GETTABLE R5 R6 R4
  LOADN R8 1
  GETTABLEKS R6 R0 K12 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R4
  MOVE R12 R8
  NAMECALL R9 R0 K13 ["getIndex"]
  CALL R9 3 1
  LOADN R11 1
  GETTABLEKS R14 R0 K15 ["_minNeighborHeight"]
  GETTABLE R13 R14 R9
  SUBK R12 R13 K14 [1]
  FASTCALL2 MATH_MAX R11 R12 [+3]
  GETIMPORT R10 K18 [math.max]
  CALL R10 2 1
  GETTABLEKS R14 R0 K19 ["_heightMap"]
  GETTABLE R13 R14 R9
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K21 [math.ceil]
  CALL R12 1 1
  GETTABLEKS R13 R0 K8 ["_sliceY"]
  FASTCALL2 MATH_MIN R12 R13 [+3]
  GETIMPORT R11 K23 [math.min]
  CALL R11 2 1
  GETTABLEKS R15 R0 K24 ["_slopeMap"]
  GETTABLE R14 R15 R9
  NAMECALL R12 R1 K25 ["GetSlopeIndex"]
  CALL R12 2 1
  GETTABLEKS R13 R0 K26 ["_fillBottomPositions"]
  JUMPIFNOT R13 [+17]
  GETTABLEKS R14 R0 K26 ["_fillBottomPositions"]
  GETTABLE R13 R14 R9
  JUMPIFNOT R13 [+13]
  GETTABLEKS R13 R1 K27 ["fillMaterial"]
  JUMPIFNOT R13 [+10]
  LOADN R15 1
  MOVE R13 R11
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  GETTABLEKS R17 R1 K27 ["fillMaterial"]
  SETTABLE R17 R16 R8
  FORNLOOP R13
  JUMP [+23]
  LOADN R15 1
  SUBK R13 R10 K14 [1]
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  GETTABLEKS R17 R1 K28 ["fallbackMaterial"]
  SETTABLE R17 R16 R8
  FORNLOOP R13
  MOVE R15 R10
  MOVE R13 R11
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  MOVE R19 R15
  GETTABLEKS R20 R0 K8 ["_sliceY"]
  MOVE R21 R12
  NAMECALL R17 R1 K29 ["GetValueByIndex"]
  CALL R17 4 1
  SETTABLE R17 R16 R8
  FORNLOOP R13
  FORNLOOP R6
  FORNLOOP R2
  RETURN R0 0

PROTO_13:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["MaterialLUT"]
  GETTABLE R1 R2 R3
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K4 ["_materialMap"]
  GETTABLE R5 R6 R4
  LOADN R8 1
  GETTABLEKS R6 R0 K5 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R4
  MOVE R12 R8
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLEKS R12 R0 K8 ["_minNeighborHeight"]
  GETTABLE R11 R12 R9
  SUBK R10 R11 K7 [2]
  LOADN R11 1
  JUMPIFLT R10 R11 [+28]
  GETTABLEKS R14 R0 K9 ["_slopeMap"]
  GETTABLE R13 R14 R9
  NAMECALL R11 R1 K10 ["GetSlopeIndex"]
  CALL R11 2 1
  GETTABLEKS R12 R0 K11 ["_fillBottomPositions"]
  JUMPIFNOT R12 [+4]
  GETTABLEKS R13 R0 K11 ["_fillBottomPositions"]
  GETTABLE R12 R13 R9
  JUMPIF R12 [+14]
  LOADN R14 1
  MOVE R12 R10
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R5 R14
  MOVE R18 R14
  GETTABLEKS R19 R0 K12 ["_sliceY"]
  MOVE R20 R11
  NAMECALL R16 R1 K13 ["GetValueByIndex"]
  CALL R16 4 1
  SETTABLE R16 R15 R8
  FORNLOOP R12
  FORNLOOP R6
  FORNLOOP R2
  GETTABLEKS R3 R0 K14 ["_services"]
  GETTABLEKS R2 R3 K15 ["Terrain"]
  GETTABLEKS R4 R0 K16 ["_region"]
  GETUPVAL R5 2
  DUPTABLE R6 K19 [{"SolidMaterial", "SolidOccupancy"}]
  GETTABLEKS R7 R0 K4 ["_materialMap"]
  SETTABLEKS R7 R6 K17 ["SolidMaterial"]
  GETTABLEKS R7 R0 K20 ["_occupancyMap"]
  SETTABLEKS R7 R6 K18 ["SolidOccupancy"]
  NAMECALL R2 R2 K21 ["WriteVoxelChannels"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K22 ["_waterMap"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R0 K14 ["_services"]
  GETTABLEKS R2 R3 K15 ["Terrain"]
  GETTABLEKS R4 R0 K16 ["_region"]
  GETUPVAL R5 2
  DUPTABLE R6 K24 [{"LiquidOccupancy"}]
  GETTABLEKS R7 R0 K22 ["_waterMap"]
  SETTABLEKS R7 R6 K23 ["LiquidOccupancy"]
  NAMECALL R2 R2 K21 ["WriteVoxelChannels"]
  CALL R2 4 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_mapSize"]
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+22]
  DUPTABLE R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K5 ["PreserveDistance"]
  LOADK R3 K9 [0.2]
  SETTABLEKS R3 R2 K6 ["PreserveRatio"]
  SETTABLEKS R1 R2 K7 ["BlendingStrength"]
  GETUPVAL R3 0
  GETIMPORT R4 K12 [Vector2.new]
  GETTABLEKS R5 R0 K13 ["_sliceX"]
  GETTABLEKS R6 R0 K14 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["_blendingFactorMap"]
  RETURN R0 0

PROTO_15:
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R2 R0 K3 ["_heightMapFromNoise"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_heightMap"]
  GETTABLEKS R1 R0 K5 ["_addBlending"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADN R3 1
  GETTABLEKS R1 R0 K6 ["_mapSize"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K3 ["_heightMapFromNoise"]
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K7 ["_heightmapCache"]
  GETTABLE R5 R6 R3
  GETTABLEKS R7 R0 K8 ["_blendingFactorMap"]
  GETTABLE R6 R7 R3
  GETTABLEKS R7 R0 K4 ["_heightMap"]
  LOADN R11 1
  SUB R10 R11 R6
  MUL R9 R10 R4
  MUL R10 R6 R5
  ADD R8 R9 R10
  SETTABLE R8 R7 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_addBlending"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADN R3 1
  GETTABLEKS R1 R0 K1 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  LOADN R6 1
  GETTABLEKS R4 R0 K2 ["_sliceZ"]
  LOADN R5 1
  FORNPREP R4
  MOVE R9 R3
  MOVE R10 R6
  NAMECALL R7 R0 K3 ["getIndex"]
  CALL R7 3 1
  LOADN R9 1
  GETTABLEKS R12 R0 K5 ["_minNeighborHeight"]
  GETTABLE R11 R12 R7
  SUBK R10 R11 K4 [1]
  FASTCALL2 MATH_MAX R9 R10 [+3]
  GETIMPORT R8 K8 [math.max]
  CALL R8 2 1
  GETTABLEKS R12 R0 K9 ["_heightMap"]
  GETTABLE R11 R12 R7
  FASTCALL1 MATH_CEIL R11 [+2]
  GETIMPORT R10 K11 [math.ceil]
  CALL R10 1 1
  GETTABLEKS R11 R0 K12 ["_sliceY"]
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K14 [math.min]
  CALL R9 2 1
  MOVE R12 R8
  MOVE R10 R9
  LOADN R11 1
  FORNPREP R10
  GETTABLEKS R16 R0 K15 ["_materialMap"]
  GETTABLE R15 R16 R3
  GETTABLE R14 R15 R12
  GETTABLE R13 R14 R6
  GETTABLEKS R17 R0 K16 ["_materialCache"]
  GETTABLE R16 R17 R3
  GETTABLE R15 R16 R12
  GETTABLE R14 R15 R6
  GETIMPORT R15 K20 [Enum.Material.Air]
  JUMPIFEQ R14 R15 [+28]
  GETIMPORT R16 K22 [math.noise]
  GETTABLEKS R18 R0 K1 ["_sliceX"]
  DIV R17 R3 R18
  LOADN R18 0
  GETTABLEKS R20 R0 K2 ["_sliceZ"]
  DIV R19 R6 R20
  CALL R16 3 1
  FASTCALL1 MATH_ABS R16 [+2]
  GETIMPORT R15 K24 [math.abs]
  CALL R15 1 1
  GETTABLEKS R18 R0 K15 ["_materialMap"]
  GETTABLE R17 R18 R3
  GETTABLE R16 R17 R12
  GETTABLEKS R19 R0 K25 ["_blendingFactorMap"]
  GETTABLE R18 R19 R7
  JUMPIFNOTLT R18 R15 [+3]
  MOVE R17 R13
  JUMP [+1]
  MOVE R17 R14
  SETTABLE R17 R16 R6
  FORNLOOP R10
  FORNLOOP R4
  FORNLOOP R1
  RETURN R0 0

PROTO_17:
  RETURN R0 0

PROTO_18:
  NAMECALL R1 R0 K0 ["fillInternalMaterial"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R3 R0 K0 ["_region"]
  NAMECALL R1 R0 K1 ["revertRegion"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  RETURN R0 0

PROTO_21:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_heightmapCache"]
  LOADN R3 1
  GETTABLEKS R1 R0 K5 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  LOADN R6 1
  GETTABLEKS R4 R0 K6 ["_sliceZ"]
  LOADN R5 1
  FORNPREP R4
  MOVE R9 R3
  MOVE R10 R6
  NAMECALL R7 R0 K7 ["getIndex"]
  CALL R7 3 1
  GETTABLEKS R9 R0 K8 ["_heightMapFromNoise"]
  GETTABLE R8 R9 R7
  GETTABLEKS R10 R0 K9 ["_sliceY"]
  FASTCALL1 MATH_CEIL R8 [+3]
  MOVE R12 R8
  GETIMPORT R11 K12 [math.ceil]
  CALL R11 1 1
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K14 [math.min]
  CALL R9 2 1
  LOADN R12 1
  MOVE R10 R9
  LOADN R11 1
  FORNPREP R10
  GETTABLEKS R16 R0 K15 ["_occupancyCache"]
  GETTABLE R15 R16 R3
  GETTABLE R14 R15 R12
  GETTABLE R13 R14 R6
  JUMPIFEQKN R13 K16 [0] [+23]
  GETTABLEKS R16 R0 K17 ["_materialCache"]
  GETTABLE R15 R16 R3
  GETTABLE R14 R15 R12
  GETTABLE R13 R14 R6
  GETIMPORT R14 K21 [Enum.Material.Air]
  JUMPIFEQ R13 R14 [+14]
  GETTABLEKS R13 R0 K4 ["_heightmapCache"]
  GETTABLE R14 R13 R7
  GETTABLEKS R18 R0 K15 ["_occupancyCache"]
  GETTABLE R17 R18 R3
  GETTABLE R16 R17 R12
  GETTABLE R15 R16 R6
  ADD R14 R14 R15
  SETTABLE R14 R13 R7
  JUMP [+1]
  JUMP [+1]
  FORNLOOP R10
  FORNLOOP R4
  FORNLOOP R1
  RETURN R0 0

PROTO_22:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  NEWTABLE R6 0 3
  LOADK R7 K2 ["SolidMaterial"]
  LOADK R8 K3 ["SolidOccupancy"]
  LOADK R9 K4 ["LiquidOccupancy"]
  SETLIST R6 R7 3 [1]
  NAMECALL R2 R2 K5 ["ReadVoxelChannels"]
  CALL R2 4 1
  GETTABLEKS R3 R2 K2 ["SolidMaterial"]
  SETTABLEKS R3 R0 K6 ["_materialCache"]
  GETTABLEKS R3 R2 K3 ["SolidOccupancy"]
  SETTABLEKS R3 R0 K7 ["_occupancyCache"]
  GETTABLEKS R3 R2 K4 ["LiquidOccupancy"]
  SETTABLEKS R3 R0 K8 ["_waterCache"]
  RETURN R0 0

PROTO_23:
  JUMPIFNOT R1 [+31]
  GETTABLEKS R2 R0 K0 ["_materialCache"]
  JUMPIFNOT R2 [+28]
  GETTABLEKS R2 R0 K1 ["_occupancyCache"]
  JUMPIFNOT R2 [+25]
  GETTABLEKS R2 R0 K2 ["_waterCache"]
  JUMPIFNOT R2 [+22]
  GETTABLEKS R3 R0 K3 ["_services"]
  GETTABLEKS R2 R3 K4 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  DUPTABLE R6 K8 [{"SolidMaterial", "SolidOccupancy", "LiquidOccupancy"}]
  GETTABLEKS R7 R0 K0 ["_materialCache"]
  SETTABLEKS R7 R6 K5 ["SolidMaterial"]
  GETTABLEKS R7 R0 K1 ["_occupancyCache"]
  SETTABLEKS R7 R6 K6 ["SolidOccupancy"]
  GETTABLEKS R7 R0 K2 ["_waterCache"]
  SETTABLEKS R7 R6 K7 ["LiquidOccupancy"]
  NAMECALL R2 R2 K9 ["WriteVoxelChannels"]
  CALL R2 4 0
  RETURN R0 0

PROTO_24:
  LOADNIL R1
  LOADNIL R2
  SETTABLEKS R1 R0 K0 ["_materialCache"]
  SETTABLEKS R2 R0 K1 ["_occupancyCache"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_heightmapCache"]
  RETURN R0 0

PROTO_25:
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  LOADK R6 K0 ["TG_DEBUG_DRAW_UI"]
  NAMECALL R4 R4 K1 ["FindFirstChild"]
  CALL R4 2 1
  MOVE R8 R1
  LOADK R9 K2 ["Frame"]
  CONCAT R7 R8 R9
  NAMECALL R5 R4 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+26]
  GETIMPORT R6 K5 [Instance.new]
  LOADK R7 K2 ["Frame"]
  CALL R6 1 1
  MOVE R5 R6
  MOVE R7 R1
  LOADK R8 K2 ["Frame"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R5 K6 ["Name"]
  SETTABLEKS R4 R5 K7 ["Parent"]
  GETIMPORT R6 K11 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K9 ["AutomaticSize"]
  GETIMPORT R6 K5 [Instance.new]
  LOADK R7 K12 ["UIListLayout"]
  CALL R6 1 1
  SETTABLEKS R5 R6 K7 ["Parent"]
  GETIMPORT R7 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K13 ["FillDirection"]
  MOVE R9 R1
  LOADK R10 K16 ["Text"]
  CONCAT R8 R9 R10
  NAMECALL R6 R5 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIF R6 [+23]
  GETIMPORT R7 K5 [Instance.new]
  LOADK R8 K17 ["TextLabel"]
  CALL R7 1 1
  MOVE R6 R7
  MOVE R8 R1
  LOADK R9 K16 ["Text"]
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K6 ["Name"]
  SETTABLEKS R5 R6 K7 ["Parent"]
  SETTABLEKS R1 R6 K16 ["Text"]
  GETIMPORT R7 K19 [UDim2.new]
  LOADN R8 0
  LOADN R9 150
  LOADN R10 0
  LOADN R11 20
  CALL R7 4 1
  SETTABLEKS R7 R6 K20 ["Size"]
  MOVE R8 R1
  LOADK R9 K21 ["Label"]
  CONCAT R7 R8 R9
  MOVE R10 R7
  NAMECALL R8 R5 K1 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIF R8 [+21]
  GETIMPORT R9 K5 [Instance.new]
  LOADK R10 K22 ["ImageLabel"]
  CALL R9 1 1
  MOVE R8 R9
  SETTABLEKS R7 R8 K6 ["Name"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  LOADN R9 1
  SETTABLEKS R9 R8 K24 ["BackgroundTransparency"]
  SETTABLEKS R5 R8 K7 ["Parent"]
  MOVE R11 R1
  NAMECALL R9 R8 K1 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIF R9 [+7]
  GETIMPORT R10 K5 [Instance.new]
  LOADK R11 K25 ["EditableImage"]
  CALL R10 1 1
  MOVE R9 R10
  SETTABLEKS R1 R9 K6 ["Name"]
  GETIMPORT R12 K27 [Vector2.new]
  GETTABLEKS R13 R0 K28 ["_sliceX"]
  GETTABLEKS R14 R0 K29 ["_sliceZ"]
  CALL R12 2 -1
  NAMECALL R10 R9 K30 ["Resize"]
  CALL R10 -1 0
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 0
  GETTABLEKS R12 R0 K28 ["_sliceX"]
  LOADN R13 0
  GETTABLEKS R14 R0 K29 ["_sliceZ"]
  CALL R10 4 1
  SETTABLEKS R10 R8 K20 ["Size"]
  GETIMPORT R10 K33 [table.create]
  GETTABLEKS R12 R0 K35 ["_mapSize"]
  MULK R11 R12 K34 [4]
  LOADN R12 1
  CALL R10 2 1
  LOADN R13 1
  GETTABLEKS R14 R9 K20 ["Size"]
  GETTABLEKS R11 R14 K36 ["X"]
  LOADN R12 1
  FORNPREP R11
  LOADN R16 1
  GETTABLEKS R17 R9 K20 ["Size"]
  GETTABLEKS R14 R17 K37 ["Y"]
  LOADN R15 1
  FORNPREP R14
  MOVE R19 R13
  MOVE R20 R16
  NAMECALL R17 R0 K38 ["getIndex"]
  CALL R17 3 1
  SUBK R20 R16 K39 [1]
  GETTABLEKS R22 R9 K20 ["Size"]
  GETTABLEKS R21 R22 K36 ["X"]
  MUL R19 R20 R21
  ADD R18 R19 R13
  LOADN R20 1
  SUBK R22 R18 K39 [1]
  MULK R21 R22 K34 [4]
  ADD R19 R20 R21
  LOADN R20 0
  GETTABLE R22 R2 R17
  FASTCALL1 TYPEOF R22 [+2]
  GETIMPORT R21 K41 [typeof]
  CALL R21 1 1
  JUMPIFNOTEQKS R21 K42 ["boolean"] [+7]
  GETTABLE R21 R2 R17
  JUMPIFNOT R21 [+2]
  LOADN R20 1
  JUMP [+4]
  LOADN R20 0
  JUMP [+2]
  GETTABLE R21 R2 R17
  DIV R20 R21 R3
  LOADN R21 1
  JUMPIFNOTLT R21 R20 [+10]
  SUBK R21 R20 K39 [1]
  SETTABLE R21 R10 R19
  ADDK R21 R19 K39 [1]
  LOADN R22 0
  SETTABLE R22 R10 R21
  ADDK R21 R19 K43 [2]
  LOADN R22 0
  SETTABLE R22 R10 R21
  JUMP [+17]
  LOADN R21 0
  JUMPIFNOTLT R20 R21 [+10]
  LOADN R21 0
  SETTABLE R21 R10 R19
  ADDK R21 R19 K39 [1]
  LOADN R22 0
  SETTABLE R22 R10 R21
  ADDK R21 R19 K43 [2]
  MINUS R22 R20
  SETTABLE R22 R10 R21
  JUMP [+5]
  SETTABLE R20 R10 R19
  ADDK R21 R19 K39 [1]
  SETTABLE R20 R10 R21
  ADDK R21 R19 K43 [2]
  SETTABLE R20 R10 R21
  FORNLOOP R14
  FORNLOOP R11
  GETIMPORT R13 K45 [Vector2.zero]
  GETTABLEKS R14 R9 K20 ["Size"]
  MOVE R15 R10
  NAMECALL R11 R9 K46 ["WritePixels"]
  CALL R11 4 0
  SETTABLEKS R8 R9 K7 ["Parent"]
  GETIMPORT R11 K19 [UDim2.new]
  LOADN R12 0
  LOADN R13 200
  LOADN R14 0
  LOADN R15 200
  CALL R11 4 1
  SETTABLEKS R11 R8 K20 ["Size"]
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  LOADK R3 K0 ["TG_DEBUG_DRAW_UI"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+29]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["ScreenGui"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["TG_DEBUG_DRAW_UI"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K7 ["Parent"]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K8 ["UIListLayout"]
  CALL R2 1 1
  GETIMPORT R3 K12 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R3 R2 K10 ["HorizontalAlignment"]
  GETIMPORT R3 K15 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R3 R2 K13 ["VerticalAlignment"]
  GETIMPORT R3 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R3 R2 K16 ["FillDirection"]
  SETTABLEKS R1 R2 K7 ["Parent"]
  LOADK R4 K19 ["Noisemap"]
  GETTABLEKS R5 R0 K20 ["_noiseMap"]
  LOADN R6 1
  LOADN R7 0
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 5 0
  LOADK R4 K22 ["Heightmap"]
  GETTABLEKS R5 R0 K23 ["_heightMap"]
  GETTABLEKS R6 R0 K24 ["_sliceY"]
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K25 ["NeighborHeightMap"]
  GETTABLEKS R5 R0 K26 ["_minNeighborHeight"]
  GETTABLEKS R6 R0 K24 ["_sliceY"]
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K27 ["SlopeMap"]
  GETTABLEKS R5 R0 K28 ["_slopeMap"]
  LOADK R6 K29 [1.5707963267949]
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K30 ["Blending"]
  GETTABLEKS R5 R0 K31 ["_blendingFactorMap"]
  LOADN R6 1
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K32 ["HeightMapCache"]
  GETTABLEKS R5 R0 K33 ["_heightmapCache"]
  GETTABLEKS R6 R0 K24 ["_sliceY"]
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K34 ["FillBottom"]
  GETTABLEKS R5 R0 K35 ["_fillBottomPositions"]
  LOADN R6 1
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K36 ["LakeArea"]
  GETTABLEKS R5 R0 K37 ["_lakeAreaPositions"]
  LOADN R6 4
  NAMECALL R2 R0 K21 ["debugDrawArray"]
  CALL R2 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["BuildSettings"]
  GETTABLEKS R5 R3 K12 ["Category"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Generation"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GetBlendingFactorMap"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["GetMaterial"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K17 ["RotatePointInRectangle"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K19 ["getFFlagTerrainEditorDebugMode"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K13 ["Util"]
  GETTABLEKS R12 R13 K20 ["AnalyticsHelper"]
  CALL R11 1 1
  NEWTABLE R12 32 0
  GETIMPORT R13 K22 [game]
  LOADK R15 K23 ["StarterGui"]
  NAMECALL R13 R13 K24 ["GetService"]
  CALL R13 2 1
  SETTABLEKS R12 R12 K25 ["__index"]
  DUPCLOSURE R14 K26 [PROTO_0]
  SETTABLEKS R14 R12 K27 ["new"]
  DUPCLOSURE R14 K28 [PROTO_1]
  SETTABLEKS R14 R12 K29 ["init"]
  DUPCLOSURE R14 K30 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R14 R12 K31 ["update"]
  DUPCLOSURE R14 K32 [PROTO_3]
  SETTABLEKS R14 R12 K33 ["getAverageFrameTime"]
  DUPCLOSURE R14 K34 [PROTO_4]
  SETTABLEKS R14 R12 K35 ["getTerrainType"]
  DUPCLOSURE R14 K36 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K37 ["setupRegion"]
  DUPCLOSURE R14 K38 [PROTO_6]
  SETTABLEKS R14 R12 K39 ["getIndex"]
  DUPCLOSURE R14 K40 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K41 ["generateStamp"]
  DUPCLOSURE R14 K42 [PROTO_8]
  SETTABLEKS R14 R12 K43 ["generateNoiseMap"]
  DUPCLOSURE R14 K44 [PROTO_9]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R14 R12 K45 ["generateHeightMap"]
  DUPCLOSURE R14 K46 [PROTO_10]
  SETTABLEKS R14 R12 K47 ["generateSlopeMap"]
  DUPCLOSURE R14 K48 [PROTO_11]
  SETTABLEKS R14 R12 K49 ["generateOccupancyMap"]
  DUPCLOSURE R14 K50 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R14 R12 K51 ["generateMaterialMap"]
  DUPCLOSURE R14 K52 [PROTO_13]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K53 ["fillInternalMaterial"]
  DUPCLOSURE R14 K54 [PROTO_14]
  CAPTURE VAL R7
  SETTABLEKS R14 R12 K55 ["updateBlendingFactorMap"]
  DUPCLOSURE R14 K56 [PROTO_15]
  SETTABLEKS R14 R12 K57 ["blendHeightMap"]
  DUPCLOSURE R14 K58 [PROTO_16]
  SETTABLEKS R14 R12 K59 ["blendMaterialMap"]
  DUPCLOSURE R14 K60 [PROTO_17]
  SETTABLEKS R14 R12 K61 ["postProcessing"]
  DUPCLOSURE R14 K62 [PROTO_18]
  SETTABLEKS R14 R12 K63 ["commit"]
  DUPCLOSURE R14 K64 [PROTO_19]
  SETTABLEKS R14 R12 K65 ["destroy"]
  DUPCLOSURE R14 K66 [PROTO_20]
  SETTABLEKS R14 R12 K67 ["generateHeightMapCacheTopDown"]
  DUPCLOSURE R14 K68 [PROTO_21]
  SETTABLEKS R14 R12 K69 ["generateHeightMapCacheBottomUp"]
  DUPCLOSURE R14 K70 [PROTO_22]
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K71 ["cacheRegion"]
  DUPCLOSURE R14 K72 [PROTO_23]
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K73 ["revertRegion"]
  DUPCLOSURE R14 K74 [PROTO_24]
  SETTABLEKS R14 R12 K75 ["clearRegionCache"]
  DUPCLOSURE R14 K76 [PROTO_25]
  CAPTURE VAL R13
  SETTABLEKS R14 R12 K77 ["debugDrawArray"]
  DUPCLOSURE R14 K78 [PROTO_26]
  CAPTURE VAL R13
  SETTABLEKS R14 R12 K79 ["debugDraw"]
  RETURN R12 1
