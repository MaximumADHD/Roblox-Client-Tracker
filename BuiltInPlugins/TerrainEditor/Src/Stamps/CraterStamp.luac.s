PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
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
  GETTABLEKS R5 R0 K0 ["_payload"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["BuildSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["FillBottom"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K0 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RimHeight"]
  GETTABLE R4 R5 R6
  DUPTABLE R5 K9 [{"center2d", "hillWidth", "hillHeight"}]
  GETIMPORT R6 K12 [Vector2.new]
  LOADK R7 K13 [0.5]
  LOADK R8 K13 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["center2d"]
  LOADK R6 K14 [0.2]
  SETTABLEKS R6 R5 K7 ["hillWidth"]
  LOADK R6 K15 [1.7]
  SETTABLEKS R6 R5 K8 ["hillHeight"]
  MOVE R8 R5
  NAMECALL R6 R0 K16 ["generateHill"]
  CALL R6 2 0
  LOADN R6 0
  JUMPIFNOTLT R6 R1 [+7]
  LOADN R6 0
  JUMPIFNOTLT R6 R2 [+4]
  NAMECALL R6 R0 K17 ["addErosion"]
  CALL R6 1 0
  GETIMPORT R6 K20 [table.create]
  GETTABLEKS R7 R0 K21 ["_mapSize"]
  LOADB R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K22 ["_fillBottomPositions"]
  LOADN R9 1
  SUB R8 R9 R4
  MULK R7 R8 K23 [0.25]
  ADDK R6 R7 K13 [0.5]
  LOADN R8 1
  SUB R7 R8 R6
  LOADN R9 1
  SUB R8 R9 R3
  LOADN R11 1
  GETTABLEKS R9 R0 K24 ["_sliceX"]
  LOADN R10 1
  FORNPREP R9
  LOADN R14 1
  GETTABLEKS R12 R0 K25 ["_sliceZ"]
  LOADN R13 1
  FORNPREP R12
  MOVE R17 R11
  MOVE R18 R14
  NAMECALL R15 R0 K26 ["getIndex"]
  CALL R15 3 1
  GETTABLEKS R17 R0 K27 ["_noiseMap"]
  GETTABLE R16 R17 R15
  JUMPIFNOTLT R7 R16 [+30]
  LOADN R18 0
  JUMPIFNOTLT R18 R8 [+4]
  SUB R18 R16 R7
  DIV R17 R18 R8
  JUMP [+1]
  LOADN R17 0
  MOVE R19 R17
  LOADN R20 0
  LOADN R21 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R18 K30 [math.clamp]
  CALL R18 3 1
  MOVE R17 R18
  LOADN R18 1
  LOADN R21 1
  SUB R20 R21 R17
  POWK R19 R20 K31 [4]
  SUB R17 R18 R19
  GETTABLEKS R18 R0 K27 ["_noiseMap"]
  MUL R20 R17 R8
  SUB R19 R7 R20
  SETTABLE R19 R18 R15
  GETTABLEKS R18 R0 K22 ["_fillBottomPositions"]
  LOADB R19 1
  SETTABLE R19 R18 R15
  FORNLOOP R12
  FORNLOOP R9
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R0 K1 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["RimHeight"]
  GETTABLE R2 R3 R4
  ORK R1 R2 K0 [0]
  LOADN R4 1
  ADD R3 R4 R1
  MULK R2 R3 K4 [0.25]
  LOADN R6 1
  SUB R5 R6 R1
  MULK R4 R5 K4 [0.25]
  ADDK R3 R4 K5 [0.5]
  GETTABLEKS R6 R0 K6 ["_sliceY"]
  GETTABLEKS R7 R0 K7 ["_medianHeightCache"]
  SUB R5 R6 R7
  LOADN R6 5
  JUMPIFLT R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R5 K10 [table.create]
  GETTABLEKS R6 R0 K11 ["_mapSize"]
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R0 K12 ["_heightMap"]
  LOADN R7 1
  GETTABLEKS R5 R0 K11 ["_mapSize"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R10 R0 K13 ["_noiseMap"]
  GETTABLE R9 R10 R7
  LOADN R10 255
  MOVE R11 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K16 [math.clamp]
  CALL R8 3 1
  JUMPIFNOT R4 [+4]
  GETTABLEKS R10 R0 K17 ["_heightmapCache"]
  GETTABLE R9 R10 R7
  JUMP [+2]
  GETTABLEKS R9 R0 K6 ["_sliceY"]
  ADD R11 R3 R8
  MUL R10 R9 R11
  GETTABLEKS R11 R0 K12 ["_heightMap"]
  MOVE R13 R10
  LOADN R14 1
  GETTABLEKS R15 R0 K6 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K16 [math.clamp]
  CALL R12 3 1
  SETTABLE R12 R11 R7
  FORNLOOP R5
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_heightmapCache"]
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  LOADN R4 1
  GETTABLEKS R2 R0 K5 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K6 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R11 R0 K8 ["_sliceY"]
  LOADN R9 1
  LOADN R10 255
  FORNPREP R9
  GETTABLEKS R15 R0 K9 ["_occupancyCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  JUMPIFEQKN R12 K10 [0] [+14]
  GETTABLEKS R15 R0 K11 ["_materialCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  GETIMPORT R13 K15 [Enum.Material.Air]
  JUMPIFEQ R12 R13 [+5]
  GETTABLEKS R12 R0 K4 ["_heightmapCache"]
  SETTABLE R11 R12 R8
  JUMP [+1]
  FORNLOOP R9
  GETTABLEKS R10 R0 K4 ["_heightmapCache"]
  GETTABLE R9 R10 R8
  SETTABLE R9 R1 R8
  FORNLOOP R5
  FORNLOOP R2
  GETIMPORT R2 K17 [table.sort]
  MOVE R3 R1
  CALL R2 1 0
  LOADN R3 1
  LENGTH R6 R1
  DIVK R5 R6 K18 [2]
  FASTCALL1 MATH_FLOOR R5 [+2]
  GETIMPORT R4 K21 [math.floor]
  CALL R4 1 1
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K23 [math.max]
  CALL R2 2 1
  GETTABLE R3 R1 R2
  SETTABLEKS R3 R0 K24 ["_medianHeightCache"]
  RETURN R0 0

PROTO_4:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["MountainBaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BuildSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["TerrainType"]
  GETTABLEKS R8 R5 K13 ["Crater"]
  NAMECALL R6 R1 K14 ["new"]
  CALL R6 2 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K16 ["init"]
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K18 ["generateNoiseMap"]
  DUPCLOSURE R7 K19 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K20 ["generateHeightMap"]
  DUPCLOSURE R7 K21 [PROTO_3]
  SETTABLEKS R7 R6 K22 ["generateHeightMapCacheTopDown"]
  DUPCLOSURE R7 K23 [PROTO_4]
  SETTABLEKS R7 R6 K24 ["generateHeightMapCacheBottomUp"]
  RETURN R6 1
