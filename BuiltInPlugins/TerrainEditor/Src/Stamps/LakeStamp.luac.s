PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R5 R3 K0 ["width"]
  GETTABLEKS R6 R3 K1 ["bankSize"]
  GETTABLEKS R7 R3 K2 ["slope"]
  GETTABLEKS R8 R3 K3 ["regionSize"]
  GETTABLEKS R9 R4 K4 ["amplitude"]
  GETTABLEKS R10 R4 K5 ["frequency"]
  GETTABLEKS R11 R4 K6 ["offset"]
  GETTABLEKS R13 R4 K8 ["seed"]
  ORK R12 R13 K7 [12345]
  MULK R14 R12 K10 [1.5]
  ADDK R13 R14 K9 [17]
  GETIMPORT R14 K13 [Vector2.new]
  GETTABLEKS R16 R0 K14 ["_sliceX"]
  DIV R15 R1 R16
  GETTABLEKS R17 R0 K15 ["_sliceZ"]
  DIV R16 R2 R17
  CALL R14 2 1
  GETUPVAL R17 0
  SUB R16 R14 R17
  GETTABLEKS R15 R16 K16 ["magnitude"]
  FASTCALL2K MATH_MIN R5 K17 [+5]
  MOVE R17 R5
  LOADK R18 K17 [0.45]
  GETIMPORT R16 K20 [math.min]
  CALL R16 2 1
  MOVE R5 R16
  GETTABLEKS R16 R0 K21 ["_getRotatedPoint"]
  SUBK R17 R1 K22 [0.5]
  SUBK R18 R2 K22 [0.5]
  CALL R16 2 2
  GETUPVAL R20 1
  MUL R19 R16 R20
  GETTABLEKS R20 R11 K23 ["X"]
  SUB R18 R19 R20
  GETUPVAL R21 1
  MUL R20 R17 R21
  GETTABLEKS R21 R11 K24 ["Y"]
  SUB R19 R20 R21
  GETIMPORT R20 K26 [math.noise]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K27 ["SHAPE_FREQUENCY"]
  MUL R22 R10 R23
  MUL R21 R22 R18
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K27 ["SHAPE_FREQUENCY"]
  MUL R23 R10 R24
  MUL R22 R23 R19
  MOVE R23 R12
  CALL R20 3 1
  MOVE R23 R20
  LOADN R24 255
  LOADN R25 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R22 K29 [math.clamp]
  CALL R22 3 1
  MUL R21 R22 R9
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K30 ["SHAPE_AMPLITUDE"]
  MUL R20 R21 R22
  ADD R21 R15 R20
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K31 ["Ground"]
  LOADK R23 K22 [0.5]
  JUMPIFNOTLT R23 R21 [+4]
  LOADN R23 0
  MOVE R24 R22
  RETURN R23 2
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K32 ["Bank"]
  MULK R26 R7 K34 [3.14159265358979]
  DIVK R25 R26 K33 [180]
  FASTCALL1 MATH_TAN R25 [+2]
  GETIMPORT R24 K36 [math.tan]
  CALL R24 1 1
  GETTABLEKS R27 R8 K23 ["X"]
  GETTABLEKS R28 R8 K37 ["Z"]
  FASTCALL2 MATH_MIN R27 R28 [+3]
  GETIMPORT R26 K20 [math.min]
  CALL R26 2 1
  GETTABLEKS R27 R8 K24 ["Y"]
  DIV R25 R26 R27
  MUL R23 R24 R25
  MINUS R25 R23
  SUB R26 R21 R5
  MUL R24 R25 R26
  MUL R26 R6 R23
  MUL R25 R26 R5
  JUMPIFNOTLT R25 R24 [+60]
  DIV R28 R25 R23
  MINUS R27 R28
  ADD R26 R27 R5
  MINUS R29 R23
  MULK R28 R29 K38 [4]
  SUB R29 R21 R26
  MUL R27 R28 R29
  ADD R24 R27 R25
  LOADN R27 1
  JUMPIFNOTLT R27 R24 [+26]
  GETIMPORT R29 K26 [math.noise]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K39 ["BOTTOM_FREQUENCY"]
  MUL R31 R10 R32
  MUL R30 R31 R18
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K39 ["BOTTOM_FREQUENCY"]
  MUL R32 R10 R33
  MUL R31 R32 R19
  MOVE R32 R13
  CALL R29 3 1
  MUL R28 R29 R9
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K40 ["BOTTOM_AMPLITUDE"]
  MUL R27 R28 R29
  LOADN R28 1
  SUB R24 R28 R27
  GETUPVAL R28 3
  GETTABLEKS R22 R28 K41 ["Bottom"]
  JUMP [+23]
  GETIMPORT R29 K26 [math.noise]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K42 ["SIDE_FREQUENCY"]
  MUL R31 R10 R32
  MUL R30 R31 R18
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K42 ["SIDE_FREQUENCY"]
  MUL R32 R10 R33
  MUL R31 R32 R19
  MOVE R32 R13
  CALL R29 3 1
  MUL R28 R29 R9
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K43 ["SIDE_AMPLITUDE"]
  MUL R27 R28 R29
  ADD R24 R24 R27
  GETUPVAL R28 3
  GETTABLEKS R22 R28 K44 ["Bluff"]
  MOVE R26 R24
  MOVE R27 R22
  RETURN R26 2

PROTO_2:
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
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLE R3 R4 R5
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["AdvancedNoise"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Children"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Seed"]
  GETTABLE R4 R5 R6
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["BankSize"]
  GETTABLE R5 R6 R7
  GETIMPORT R6 K11 [table.create]
  GETTABLEKS R7 R0 K12 ["_mapSize"]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K13 ["_noiseMap"]
  GETIMPORT R6 K11 [table.create]
  GETTABLEKS R7 R0 K12 ["_mapSize"]
  LOADB R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K14 ["_fillBottomPositions"]
  GETIMPORT R6 K11 [table.create]
  GETTABLEKS R7 R0 K12 ["_mapSize"]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K15 ["_lakeAreaPositions"]
  GETIMPORT R6 K11 [table.create]
  GETTABLEKS R7 R0 K12 ["_mapSize"]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K13 ["_noiseMap"]
  LOADN R8 1
  GETTABLEKS R6 R0 K16 ["_sliceX"]
  LOADN R7 1
  FORNPREP R6
  LOADN R11 1
  GETTABLEKS R9 R0 K17 ["_sliceZ"]
  LOADN R10 1
  FORNPREP R9
  MOVE R14 R8
  MOVE R15 R11
  NAMECALL R12 R0 K18 ["getIndex"]
  CALL R12 3 1
  JUMPIFEQKN R8 K19 [1] [+11]
  GETTABLEKS R13 R0 K16 ["_sliceX"]
  JUMPIFEQ R8 R13 [+7]
  JUMPIFEQKN R11 K19 [1] [+5]
  GETTABLEKS R13 R0 K17 ["_sliceZ"]
  JUMPIFNOTEQ R11 R13 [+6]
  GETTABLEKS R13 R0 K13 ["_noiseMap"]
  LOADN R14 0
  SETTABLE R14 R13 R12
  JUMP [+48]
  GETTABLEKS R13 R0 K13 ["_noiseMap"]
  GETTABLEKS R14 R0 K15 ["_lakeAreaPositions"]
  MOVE R17 R8
  MOVE R18 R11
  DUPTABLE R19 K24 [{"bankSize", "regionSize", "slope", "width"}]
  SETTABLEKS R5 R19 K20 ["bankSize"]
  GETTABLEKS R21 R0 K25 ["_region"]
  GETTABLEKS R20 R21 K26 ["Size"]
  SETTABLEKS R20 R19 K21 ["regionSize"]
  LOADN R20 22
  SETTABLEKS R20 R19 K22 ["slope"]
  LOADK R20 K27 [0.45]
  SETTABLEKS R20 R19 K23 ["width"]
  DUPTABLE R20 K32 [{"frequency", "amplitude", "offset", "seed"}]
  SETTABLEKS R1 R20 K28 ["frequency"]
  SETTABLEKS R2 R20 K29 ["amplitude"]
  SETTABLEKS R3 R20 K30 ["offset"]
  SETTABLEKS R4 R20 K31 ["seed"]
  NAMECALL R15 R0 K33 ["getLakeHeight"]
  CALL R15 5 2
  SETTABLE R15 R13 R12
  SETTABLE R16 R14 R12
  GETTABLEKS R13 R0 K14 ["_fillBottomPositions"]
  GETTABLEKS R16 R0 K15 ["_lakeAreaPositions"]
  GETTABLE R15 R16 R12
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K34 ["Ground"]
  JUMPIFNOTEQ R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLE R14 R13 R12
  FORNLOOP R9
  FORNLOOP R6
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_heightMap"]
  GETTABLEKS R3 R0 K5 ["_sliceY"]
  GETTABLEKS R4 R0 K6 ["_medianHeightCache"]
  SUB R2 R3 R4
  LOADN R3 5
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K7 ["_lakeAreaPositions"]
  GETTABLE R5 R6 R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Ground"]
  JUMPIFEQ R5 R6 [+30]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R6 R0 K9 ["_heightmapCache"]
  GETTABLE R5 R6 R4
  JUMP [+2]
  GETTABLEKS R5 R0 K5 ["_sliceY"]
  GETTABLEKS R8 R0 K10 ["_noiseMap"]
  GETTABLE R7 R8 R4
  LOADN R8 0
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K13 [math.clamp]
  CALL R6 3 1
  LOADN R9 1
  SUB R8 R9 R6
  MUL R7 R5 R8
  GETTABLEKS R8 R0 K4 ["_heightMap"]
  FASTCALL2K MATH_MAX R7 K14 [+5]
  MOVE R10 R7
  LOADK R11 K14 [1]
  GETIMPORT R9 K16 [math.max]
  CALL R9 2 1
  SETTABLE R9 R8 R4
  FORNLOOP R2
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_mapSize"]
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+22]
  DUPTABLE R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
  LOADN R3 0
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

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_sliceY"]
  SETTABLEKS R1 R0 K1 ["_minWaterPoint"]
  GETTABLEKS R1 R0 K0 ["_sliceY"]
  SETTABLEKS R1 R0 K2 ["_maxWaterPoint"]
  LOADN R3 1
  GETTABLEKS R4 R0 K3 ["_heightMap"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K3 ["_heightMap"]
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K4 ["_heightmapCache"]
  GETTABLE R5 R6 R3
  GETTABLEKS R7 R0 K5 ["_lakeAreaPositions"]
  GETTABLE R6 R7 R3
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Bank"]
  JUMPIFNOTEQ R6 R7 [+14]
  GETTABLEKS R7 R0 K2 ["_maxWaterPoint"]
  GETTABLEKS R9 R0 K3 ["_heightMap"]
  GETTABLE R8 R9 R3
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K9 [math.min]
  CALL R6 2 1
  SETTABLEKS R6 R0 K2 ["_maxWaterPoint"]
  JUMP [+20]
  GETTABLEKS R7 R0 K5 ["_lakeAreaPositions"]
  GETTABLE R6 R7 R3
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["Ground"]
  JUMPIFEQ R6 R7 [+13]
  GETTABLEKS R7 R0 K1 ["_minWaterPoint"]
  GETTABLEKS R9 R0 K3 ["_heightMap"]
  GETTABLE R8 R9 R3
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K9 [math.min]
  CALL R6 2 1
  SETTABLEKS R6 R0 K1 ["_minWaterPoint"]
  GETTABLEKS R6 R0 K11 ["_addBlending"]
  JUMPIFNOT R6 [+19]
  GETTABLEKS R7 R0 K5 ["_lakeAreaPositions"]
  GETTABLE R6 R7 R3
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Bank"]
  JUMPIFNOTEQ R6 R7 [+12]
  GETTABLEKS R7 R0 K12 ["_blendingFactorMap"]
  GETTABLE R6 R7 R3
  GETTABLEKS R7 R0 K3 ["_heightMap"]
  LOADN R11 1
  SUB R10 R11 R6
  MUL R9 R10 R4
  MUL R10 R6 R5
  ADD R8 R9 R10
  SETTABLE R8 R7 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_waterMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K4 ["_waterMap"]
  GETIMPORT R5 K2 [table.create]
  GETTABLEKS R6 R0 K5 ["_sliceY"]
  CALL R5 1 1
  SETTABLE R5 R4 R3
  LOADN R6 1
  GETTABLEKS R4 R0 K5 ["_sliceY"]
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R8 R0 K4 ["_waterMap"]
  GETTABLE R7 R8 R3
  GETIMPORT R8 K7 [table.clone]
  GETTABLEKS R11 R0 K8 ["_waterCache"]
  GETTABLE R10 R11 R3
  GETTABLE R9 R10 R6
  CALL R8 1 1
  SETTABLE R8 R7 R6
  FORNLOOP R4
  FORNLOOP R1
  GETTABLEKS R3 R0 K9 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["WaterLevel"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+70]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+68]
  GETTABLEKS R5 R0 K12 ["_minWaterPoint"]
  LOADN R7 1
  SUB R6 R7 R1
  MUL R4 R5 R6
  GETTABLEKS R6 R0 K13 ["_maxWaterPoint"]
  MUL R5 R6 R1
  ADD R3 R4 R5
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K16 [math.floor]
  CALL R2 1 1
  LOADN R3 1
  JUMPIFNOTLT R2 R3 [+2]
  RETURN R0 0
  LOADN R5 1
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  LOADN R4 1
  FORNPREP R3
  LOADN R8 1
  GETTABLEKS R6 R0 K17 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R5
  MOVE R12 R8
  NAMECALL R9 R0 K18 ["getIndex"]
  CALL R9 3 1
  GETTABLEKS R11 R0 K19 ["_lakeAreaPositions"]
  GETTABLE R10 R11 R9
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Ground"]
  JUMPIFEQ R10 R11 [+26]
  GETTABLEKS R11 R0 K19 ["_lakeAreaPositions"]
  GETTABLE R10 R11 R9
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["Bank"]
  JUMPIFEQ R10 R11 [+18]
  GETTABLEKS R14 R0 K22 ["_heightMap"]
  GETTABLE R13 R14 R9
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K24 [math.ceil]
  CALL R12 1 1
  MOVE R10 R2
  LOADN R11 1
  FORNPREP R10
  GETTABLEKS R15 R0 K4 ["_waterMap"]
  GETTABLE R14 R15 R5
  GETTABLE R13 R14 R12
  LOADN R14 1
  SETTABLE R14 R13 R8
  FORNLOOP R10
  FORNLOOP R6
  FORNLOOP R3
  RETURN R0 0

PROTO_7:
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

PROTO_8:
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
  GETTABLEKS R2 R3 K7 ["BaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["VoxelResolution"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BuildSettings"]
  GETTABLEKS R6 R4 K14 ["Category"]
  GETTABLEKS R7 R4 K15 ["TerrainType"]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Generation"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K18 ["GetBlendingFactorMap"]
  CALL R9 1 1
  DUPTABLE R10 K25 [{"BOTTOM_AMPLITUDE", "BOTTOM_FREQUENCY", "SHAPE_AMPLITUDE", "SHAPE_FREQUENCY", "SIDE_AMPLITUDE", "SIDE_FREQUENCY"}]
  LOADK R11 K26 [0.5]
  SETTABLEKS R11 R10 K19 ["BOTTOM_AMPLITUDE"]
  LOADK R11 K27 [0.125]
  SETTABLEKS R11 R10 K20 ["BOTTOM_FREQUENCY"]
  LOADK R11 K28 [0.15]
  SETTABLEKS R11 R10 K21 ["SHAPE_AMPLITUDE"]
  LOADK R11 K29 [0.025]
  SETTABLEKS R11 R10 K22 ["SHAPE_FREQUENCY"]
  LOADK R11 K30 [0.1]
  SETTABLEKS R11 R10 K23 ["SIDE_AMPLITUDE"]
  LOADK R11 K31 [0.25]
  SETTABLEKS R11 R10 K24 ["SIDE_FREQUENCY"]
  GETIMPORT R11 K34 [Vector2.new]
  LOADK R12 K26 [0.5]
  LOADK R13 K26 [0.5]
  CALL R11 2 1
  DUPTABLE R12 K39 [{"Ground", "Bank", "Bluff", "Bottom"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K35 ["Ground"]
  LOADN R13 1
  SETTABLEKS R13 R12 K36 ["Bank"]
  LOADN R13 2
  SETTABLEKS R13 R12 K37 ["Bluff"]
  LOADN R13 3
  SETTABLEKS R13 R12 K38 ["Bottom"]
  GETTABLEKS R15 R7 K40 ["Lake"]
  NAMECALL R13 R1 K33 ["new"]
  CALL R13 2 1
  DUPCLOSURE R14 K41 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K42 ["init"]
  DUPCLOSURE R14 K43 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K44 ["getLakeHeight"]
  DUPCLOSURE R14 K45 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K46 ["generateNoiseMap"]
  DUPCLOSURE R14 K47 [PROTO_3]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K48 ["generateHeightMap"]
  DUPCLOSURE R14 K49 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K50 ["updateBlendingFactorMap"]
  DUPCLOSURE R14 K51 [PROTO_5]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K52 ["blendHeightMap"]
  DUPCLOSURE R14 K53 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K54 ["postProcessing"]
  DUPCLOSURE R14 K55 [PROTO_7]
  SETTABLEKS R14 R13 K56 ["generateHeightMapCacheTopDown"]
  DUPCLOSURE R14 K57 [PROTO_8]
  SETTABLEKS R14 R13 K58 ["generateHeightMapCacheBottomUp"]
  RETURN R13 1
