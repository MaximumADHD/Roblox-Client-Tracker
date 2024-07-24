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
  ADD R18 R19 R20
  GETUPVAL R21 1
  MUL R20 R17 R21
  GETTABLEKS R21 R11 K24 ["Y"]
  ADD R19 R20 R21
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
  LOADK R22 K22 [0.5]
  JUMPIFNOTLT R22 R21 [+3]
  LOADN R22 0
  RETURN R22 1
  MULK R25 R7 K32 [3.14159265358979]
  DIVK R24 R25 K31 [180]
  FASTCALL1 MATH_TAN R24 [+2]
  GETIMPORT R23 K34 [math.tan]
  CALL R23 1 1
  GETTABLEKS R26 R8 K23 ["X"]
  GETTABLEKS R27 R8 K35 ["Z"]
  FASTCALL2 MATH_MIN R26 R27 [+3]
  GETIMPORT R25 K20 [math.min]
  CALL R25 2 1
  GETTABLEKS R26 R8 K24 ["Y"]
  DIV R24 R25 R26
  MUL R22 R23 R24
  MINUS R24 R22
  SUB R25 R21 R5
  MUL R23 R24 R25
  MUL R25 R6 R22
  MUL R24 R25 R5
  JUMPIFNOTLT R24 R23 [+54]
  DIV R27 R24 R22
  MINUS R26 R27
  ADD R25 R26 R5
  MINUS R28 R22
  MULK R27 R28 K36 [4]
  SUB R28 R21 R25
  MUL R26 R27 R28
  ADD R23 R26 R24
  LOADN R26 1
  JUMPIFNOTLT R26 R23 [+23]
  GETIMPORT R28 K26 [math.noise]
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K37 ["BOTTOM_FREQUENCY"]
  MUL R30 R10 R31
  MUL R29 R30 R18
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K37 ["BOTTOM_FREQUENCY"]
  MUL R31 R10 R32
  MUL R30 R31 R19
  MOVE R31 R13
  CALL R28 3 1
  MUL R27 R28 R9
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K38 ["BOTTOM_AMPLITUDE"]
  MUL R26 R27 R28
  LOADN R27 1
  SUB R23 R27 R26
  RETURN R23 1
  GETIMPORT R28 K26 [math.noise]
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K39 ["SIDE_FREQUENCY"]
  MUL R30 R10 R31
  MUL R29 R30 R18
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K39 ["SIDE_FREQUENCY"]
  MUL R31 R10 R32
  MUL R30 R31 R19
  MOVE R31 R13
  CALL R28 3 1
  MUL R27 R28 R9
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K40 ["SIDE_AMPLITUDE"]
  MUL R26 R27 R28
  ADD R23 R23 R26
  RETURN R23 1

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
  JUMPIF R5 [+5]
  GETIMPORT R6 K10 [warn]
  LOADK R7 K11 ["BankSize not provided!"]
  CALL R6 1 0
  RETURN R0 0
  GETIMPORT R6 K14 [table.create]
  GETTABLEKS R7 R0 K15 ["_heightMapSize"]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K16 ["_noiseMap"]
  LOADN R8 1
  GETTABLEKS R6 R0 K17 ["_sliceX"]
  LOADN R7 1
  FORNPREP R6
  LOADN R11 1
  GETTABLEKS R9 R0 K18 ["_sliceZ"]
  LOADN R10 1
  FORNPREP R9
  MOVE R14 R8
  MOVE R15 R11
  NAMECALL R12 R0 K19 ["getIndex"]
  CALL R12 3 1
  JUMPIFEQKN R8 K20 [1] [+11]
  GETTABLEKS R13 R0 K17 ["_sliceX"]
  JUMPIFEQ R8 R13 [+7]
  JUMPIFEQKN R11 K20 [1] [+5]
  GETTABLEKS R13 R0 K18 ["_sliceZ"]
  JUMPIFNOTEQ R11 R13 [+6]
  GETTABLEKS R13 R0 K16 ["_noiseMap"]
  LOADN R14 0
  SETTABLE R14 R13 R12
  JUMP [+32]
  GETTABLEKS R13 R0 K16 ["_noiseMap"]
  MOVE R16 R8
  MOVE R17 R11
  DUPTABLE R18 K25 [{"bankSize", "regionSize", "slope", "width"}]
  SETTABLEKS R5 R18 K21 ["bankSize"]
  GETTABLEKS R20 R0 K26 ["_region"]
  GETTABLEKS R19 R20 K27 ["Size"]
  SETTABLEKS R19 R18 K22 ["regionSize"]
  LOADN R19 22
  SETTABLEKS R19 R18 K23 ["slope"]
  LOADK R19 K28 [0.45]
  SETTABLEKS R19 R18 K24 ["width"]
  DUPTABLE R19 K33 [{"frequency", "amplitude", "offset", "seed"}]
  SETTABLEKS R1 R19 K29 ["frequency"]
  SETTABLEKS R2 R19 K30 ["amplitude"]
  SETTABLEKS R3 R19 K31 ["offset"]
  SETTABLEKS R4 R19 K32 ["seed"]
  NAMECALL R14 R0 K34 ["getLakeHeight"]
  CALL R14 5 1
  SETTABLE R14 R13 R12
  FORNLOOP R9
  FORNLOOP R6
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_heightMapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_heightMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_heightMapSize"]
  LOADN R2 1
  FORNPREP R1
  LOADN R5 1
  GETTABLEKS R8 R0 K5 ["_noiseMap"]
  GETTABLE R7 R8 R3
  LOADN R8 255
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K8 [math.clamp]
  CALL R6 3 1
  SUB R4 R5 R6
  GETTABLEKS R6 R0 K9 ["_sliceY"]
  MUL R5 R6 R4
  GETTABLEKS R6 R0 K4 ["_heightMap"]
  MOVE R8 R5
  LOADN R9 1
  GETTABLEKS R10 R0 K9 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K8 [math.clamp]
  CALL R7 3 1
  SETTABLE R7 R6 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_4:
  LOADN R3 1
  GETTABLEKS R4 R0 K0 ["_heightMap"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K0 ["_heightMap"]
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K1 ["_heightmapCache"]
  GETTABLE R5 R6 R3
  JUMPIFNOTLT R4 R5 [+9]
  MOVE R5 R4
  GETTABLEKS R6 R0 K1 ["_heightmapCache"]
  SETTABLE R4 R6 R3
  GETTABLEKS R6 R0 K2 ["_blendingFactorMap"]
  LOADN R7 0
  SETTABLE R7 R6 R3
  GETTABLEKS R6 R0 K3 ["_addBlending"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R0 K2 ["_blendingFactorMap"]
  GETTABLE R6 R7 R3
  GETTABLEKS R7 R0 K0 ["_heightMap"]
  LOADN R11 1
  SUB R10 R11 R6
  MUL R9 R10 R4
  MUL R10 R6 R5
  ADD R8 R9 R10
  SETTABLE R8 R7 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["WaterLevel"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+72]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+70]
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceY"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K3 ["_sliceY"]
  DIV R5 R4 R6
  JUMPIFNOTLT R5 R1 [+60]
  LOADN R7 1
  GETTABLEKS R5 R0 K4 ["_sliceX"]
  LOADN R6 1
  FORNPREP R5
  LOADN R10 1
  GETTABLEKS R8 R0 K5 ["_sliceZ"]
  LOADN R9 1
  FORNPREP R8
  MOVE R13 R7
  MOVE R14 R10
  NAMECALL R11 R0 K6 ["getIndex"]
  CALL R11 3 1
  LOADB R12 1
  GETTABLEKS R16 R0 K7 ["_materialMap"]
  GETTABLE R15 R16 R7
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R10
  GETIMPORT R14 K11 [Enum.Material.Air]
  JUMPIFEQ R13 R14 [+10]
  GETTABLEKS R16 R0 K12 ["_occupancyMap"]
  GETTABLE R15 R16 R7
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R10
  JUMPIFEQKN R13 K13 [0] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLEKS R14 R0 K14 ["_blendingFactorMap"]
  GETTABLE R13 R14 R11
  LOADN R14 0
  JUMPIFNOTLE R13 R14 [+15]
  JUMPIFNOT R12 [+13]
  GETTABLEKS R15 R0 K7 ["_materialMap"]
  GETTABLE R14 R15 R7
  GETTABLE R13 R14 R4
  GETIMPORT R14 K16 [Enum.Material.Water]
  SETTABLE R14 R13 R10
  GETTABLEKS R15 R0 K12 ["_occupancyMap"]
  GETTABLE R14 R15 R7
  GETTABLE R13 R14 R4
  LOADN R14 1
  SETTABLE R14 R13 R10
  FORNLOOP R8
  FORNLOOP R5
  JUMP [+1]
  RETURN R0 0
  FORNLOOP R2
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
  DUPTABLE R8 K22 [{"BOTTOM_AMPLITUDE", "BOTTOM_FREQUENCY", "SHAPE_AMPLITUDE", "SHAPE_FREQUENCY", "SIDE_AMPLITUDE", "SIDE_FREQUENCY"}]
  LOADK R9 K23 [0.5]
  SETTABLEKS R9 R8 K16 ["BOTTOM_AMPLITUDE"]
  LOADK R9 K24 [0.125]
  SETTABLEKS R9 R8 K17 ["BOTTOM_FREQUENCY"]
  LOADK R9 K25 [0.15]
  SETTABLEKS R9 R8 K18 ["SHAPE_AMPLITUDE"]
  LOADK R9 K26 [0.025]
  SETTABLEKS R9 R8 K19 ["SHAPE_FREQUENCY"]
  LOADK R9 K27 [0.1]
  SETTABLEKS R9 R8 K20 ["SIDE_AMPLITUDE"]
  LOADK R9 K28 [0.25]
  SETTABLEKS R9 R8 K21 ["SIDE_FREQUENCY"]
  GETIMPORT R9 K31 [Vector2.new]
  LOADK R10 K23 [0.5]
  LOADK R11 K23 [0.5]
  CALL R9 2 1
  GETTABLEKS R12 R7 K32 ["Lake"]
  NAMECALL R10 R1 K30 ["new"]
  CALL R10 2 1
  DUPCLOSURE R11 K33 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K34 ["init"]
  DUPCLOSURE R11 K35 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K36 ["getLakeHeight"]
  DUPCLOSURE R11 K37 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K38 ["generateNoiseMap"]
  DUPCLOSURE R11 K39 [PROTO_3]
  SETTABLEKS R11 R10 K40 ["generateHeightMap"]
  DUPCLOSURE R11 K41 [PROTO_4]
  SETTABLEKS R11 R10 K42 ["blendHeightMap"]
  DUPCLOSURE R11 K43 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K44 ["postProcessing"]
  RETURN R10 1
