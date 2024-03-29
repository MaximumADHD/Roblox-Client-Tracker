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
  NAMECALL R3 R0 K2 ["setupRegion"]
  CALL R3 1 0
  RETURN R0 1

PROTO_2:
  JUMPIFNOT R2 [+51]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["OperationSource"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKS R3 K2 ["Gizmo"] [+42]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Transform"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+22]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Size"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K4 ["_payload"]
  JUMPIFNOT R2 [+39]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K6 ["_region"]
  NAMECALL R3 R0 K7 ["revertRegion"]
  CALL R3 2 0
  NAMECALL R3 R0 K8 ["setupRegion"]
  CALL R3 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["BlendingEdge"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+4]
  MOVE R6 R3
  NAMECALL R4 R0 K10 ["updateBlendingFactorMap"]
  CALL R4 2 0
  NAMECALL R3 R0 K11 ["generateStamp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_terrainType"]
  RETURN R1 1

PROTO_4:
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
  GETTABLEKS R5 R0 K9 ["_region"]
  NAMECALL R3 R0 K17 ["cacheRegion"]
  CALL R3 2 0
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["BlendingEdge"]
  GETTABLE R5 R6 R7
  NAMECALL R3 R0 K19 ["updateBlendingFactorMap"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R5 R0 K0 ["_sliceZ"]
  SUBK R6 R1 K1 [1]
  MUL R4 R5 R6
  ADD R3 R4 R2
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_region"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R0 K0 ["_region"]
  GETTABLEKS R1 R2 K1 ["Size"]
  GETIMPORT R2 K4 [Vector3.zero]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  NAMECALL R1 R0 K5 ["generateNoiseMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["generateHeightMap"]
  CALL R1 1 0
  GETTABLEKS R4 R0 K7 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["BlendingEdge"]
  GETTABLE R2 R3 R4
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R0 K10 ["blendHeightMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K11 ["generateOccupancyMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K12 ["generateSlopeMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K13 ["generateMaterialMap"]
  CALL R2 1 0
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R0 K14 ["blendMaterialMap"]
  CALL R2 1 0
  NAMECALL R2 R0 K15 ["postProcessing"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K16 ["_services"]
  GETTABLEKS R2 R3 K17 ["Terrain"]
  GETTABLEKS R4 R0 K0 ["_region"]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K18 ["_materialMap"]
  GETTABLEKS R7 R0 K19 ["_occupancyMap"]
  NAMECALL R2 R2 K20 ["WriteVoxels"]
  CALL R2 5 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_noiseMap"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Amplitude"]
  GETTABLE R1 R2 R3
  DIVK R2 R1 K3 [2]
  GETTABLEKS R4 R0 K4 ["_sliceY"]
  LOADN R6 1
  SUB R5 R6 R2
  MUL R3 R4 R5
  GETIMPORT R4 K7 [table.create]
  GETTABLEKS R6 R0 K8 ["_sliceX"]
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  MUL R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R0 K10 ["_heightMap"]
  LOADN R6 1
  GETTABLEKS R4 R0 K8 ["_sliceX"]
  LOADN R5 1
  FORNPREP R4
  LOADN R9 1
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  LOADN R8 1
  FORNPREP R7
  MOVE R12 R6
  MOVE R13 R9
  NAMECALL R10 R0 K11 ["getIndex"]
  CALL R10 3 1
  GETTABLEKS R12 R0 K12 ["_noiseMap"]
  GETTABLE R11 R12 R10
  GETTABLEKS R14 R0 K4 ["_sliceY"]
  MUL R13 R14 R2
  MUL R12 R13 R11
  ADD R13 R3 R12
  GETTABLEKS R14 R0 K10 ["_heightMap"]
  MOVE R16 R13
  LOADN R17 1
  GETTABLEKS R18 R0 K4 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R15 K15 [math.clamp]
  CALL R15 3 1
  SETTABLE R15 R14 R10
  FORNLOOP R7
  FORNLOOP R4
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_slopeMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  LOADN R6 1
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  LOADN R5 1
  FORNPREP R4
  MOVE R9 R3
  MOVE R10 R6
  NAMECALL R7 R0 K6 ["getIndex"]
  CALL R7 3 1
  GETTABLEKS R9 R0 K7 ["_heightMap"]
  GETTABLE R8 R9 R7
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R0 K3 ["_sliceX"]
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+40]
  SUBK R12 R3 K8 [1]
  LOADN R13 1
  GETTABLEKS R14 R0 K3 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K11 [math.clamp]
  CALL R11 3 1
  ADDK R13 R3 K8 [1]
  LOADN R14 1
  GETTABLEKS R15 R0 K3 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K11 [math.clamp]
  CALL R12 3 1
  GETTABLEKS R13 R0 K3 ["_sliceX"]
  JUMPIFNOTLT R3 R13 [+11]
  GETTABLEKS R14 R0 K7 ["_heightMap"]
  MOVE R17 R12
  MOVE R18 R6
  NAMECALL R15 R0 K6 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R9 R13 R8
  JUMP [+9]
  GETTABLEKS R14 R0 K7 ["_heightMap"]
  MOVE R17 R11
  MOVE R18 R6
  NAMECALL R15 R0 K6 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R9 R8 R13
  GETTABLEKS R11 R0 K4 ["_sliceZ"]
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+40]
  SUBK R12 R6 K8 [1]
  LOADN R13 1
  GETTABLEKS R14 R0 K4 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K11 [math.clamp]
  CALL R11 3 1
  ADDK R13 R6 K8 [1]
  LOADN R14 1
  GETTABLEKS R15 R0 K4 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K11 [math.clamp]
  CALL R12 3 1
  GETTABLEKS R13 R0 K4 ["_sliceZ"]
  JUMPIFNOTLT R6 R13 [+11]
  GETTABLEKS R14 R0 K7 ["_heightMap"]
  MOVE R17 R3
  MOVE R18 R12
  NAMECALL R15 R0 K6 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R10 R13 R8
  JUMP [+9]
  GETTABLEKS R14 R0 K7 ["_heightMap"]
  MOVE R17 R3
  MOVE R18 R11
  NAMECALL R15 R0 K6 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R10 R8 R13
  GETTABLEKS R11 R0 K5 ["_slopeMap"]
  FASTCALL1 MATH_ABS R9 [+3]
  MOVE R19 R9
  GETIMPORT R18 K16 [math.abs]
  CALL R18 1 1
  FASTCALL1 MATH_ABS R10 [+3]
  MOVE R20 R10
  GETIMPORT R19 K16 [math.abs]
  CALL R19 1 1
  ADD R17 R18 R19
  FASTCALL1 MATH_MAX R17 [+2]
  GETIMPORT R16 K18 [math.max]
  CALL R16 1 1
  DIVK R15 R16 K14 [2]
  FASTCALL1 MATH_ATAN R15 [+2]
  GETIMPORT R14 K20 [math.atan]
  CALL R14 1 1
  MULK R13 R14 K13 [180]
  DIVK R12 R13 K12 [3.14]
  SETTABLE R12 R11 R7
  FORNLOOP R4
  FORNLOOP R1
  RETURN R0 0

PROTO_10:
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
  GETIMPORT R8 K2 [table.create]
  GETTABLEKS R9 R0 K6 ["_sliceZ"]
  LOADN R10 0
  CALL R8 2 1
  SETTABLE R8 R7 R6
  LOADN R9 1
  GETTABLEKS R7 R0 K6 ["_sliceZ"]
  LOADN R8 1
  FORNPREP R7
  SUBK R10 R6 K7 [1]
  MOVE R13 R3
  MOVE R14 R9
  NAMECALL R11 R0 K8 ["getIndex"]
  CALL R11 3 1
  GETTABLEKS R13 R0 K9 ["_heightMap"]
  GETTABLE R12 R13 R11
  GETTABLEKS R15 R0 K4 ["_occupancyMap"]
  GETTABLE R14 R15 R3
  GETTABLE R13 R14 R6
  SUB R15 R12 R10
  LOADN R16 0
  LOADN R17 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R14 K12 [math.clamp]
  CALL R14 3 1
  SETTABLE R14 R13 R9
  FORNLOOP R7
  FORNLOOP R4
  FORNLOOP R1
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_materialMap"]
  GETTABLEKS R3 R0 K5 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Material"]
  GETTABLE R1 R2 R3
  DUPTABLE R2 K13 [{"HeightInPercentage", "HeightInStud", "Position", "Slope", "FillBottom"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["HeightInPercentage"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["HeightInStud"]
  GETIMPORT R3 K16 [Vector3.zero]
  SETTABLEKS R3 R2 K10 ["Position"]
  LOADN R3 0
  SETTABLEKS R3 R2 K11 ["Slope"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["FillBottom"]
  LOADN R5 1
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  LOADN R4 1
  FORNPREP R3
  GETTABLEKS R6 R0 K4 ["_materialMap"]
  GETIMPORT R7 K2 [table.create]
  GETTABLEKS R8 R0 K17 ["_sliceY"]
  CALL R7 1 1
  SETTABLE R7 R6 R5
  LOADN R8 1
  GETTABLEKS R6 R0 K17 ["_sliceY"]
  LOADN R7 1
  FORNPREP R6
  GETTABLEKS R10 R0 K4 ["_materialMap"]
  GETTABLE R9 R10 R5
  GETIMPORT R10 K2 [table.create]
  GETTABLEKS R11 R0 K18 ["_sliceZ"]
  GETIMPORT R12 K21 [Enum.Material.Air]
  CALL R10 2 1
  SETTABLE R10 R9 R8
  LOADN R11 1
  GETTABLEKS R9 R0 K18 ["_sliceZ"]
  LOADN R10 1
  FORNPREP R9
  JUMPIFNOT R1 [+59]
  SUBK R13 R8 K22 [0.5]
  GETTABLEKS R14 R0 K17 ["_sliceY"]
  DIV R12 R13 R14
  SETTABLEKS R12 R2 K8 ["HeightInPercentage"]
  SUBK R13 R8 K22 [0.5]
  GETUPVAL R14 2
  MUL R12 R13 R14
  SETTABLEKS R12 R2 K9 ["HeightInStud"]
  MOVE R13 R5
  MOVE R14 R8
  MOVE R15 R11
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K24 [Vector3.new]
  CALL R12 3 1
  SETTABLEKS R12 R2 K10 ["Position"]
  GETTABLEKS R13 R0 K25 ["_slopeMap"]
  MOVE R16 R5
  MOVE R17 R11
  NAMECALL R14 R0 K26 ["getIndex"]
  CALL R14 3 1
  GETTABLE R12 R13 R14
  SETTABLEKS R12 R2 K11 ["Slope"]
  GETTABLEKS R13 R0 K27 ["_fillBottomPositions"]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R13 R0 K27 ["_fillBottomPositions"]
  MOVE R16 R5
  MOVE R17 R11
  NAMECALL R14 R0 K26 ["getIndex"]
  CALL R14 3 1
  GETTABLE R12 R13 R14
  JUMP [+1]
  LOADB R12 0
  SETTABLEKS R12 R2 K12 ["FillBottom"]
  GETTABLEKS R14 R0 K4 ["_materialMap"]
  GETTABLE R13 R14 R5
  GETTABLE R12 R13 R8
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K28 ["FromPreset"]
  MOVE R14 R1
  MOVE R15 R2
  CALL R13 2 1
  JUMPIF R13 [+1]
  GETUPVAL R13 4
  SETTABLE R13 R12 R11
  JUMP [+6]
  GETTABLEKS R14 R0 K4 ["_materialMap"]
  GETTABLE R13 R14 R5
  GETTABLE R12 R13 R8
  GETUPVAL R13 4
  SETTABLE R13 R12 R11
  FORNLOOP R9
  FORNLOOP R6
  FORNLOOP R3
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R4 R0 K3 ["_sliceX"]
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+31]
  DUPTABLE R2 K11 [{"CurveWidth", "Distance", "PreserveDistance", "PreserveRatio", "RoundCorner"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["CurveWidth"]
  MULK R3 R1 K12 [0.9]
  SETTABLEKS R3 R2 K7 ["Distance"]
  LOADK R4 K13 [0.7]
  DIVK R5 R1 K14 [5]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K8 ["PreserveDistance"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["PreserveRatio"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["RoundCorner"]
  GETUPVAL R3 0
  GETIMPORT R4 K17 [Vector2.new]
  GETTABLEKS R5 R0 K3 ["_sliceX"]
  GETTABLEKS R6 R0 K4 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_blendingFactorMap"]
  RETURN R0 0

PROTO_13:
  LOADN R3 1
  GETTABLEKS R4 R0 K0 ["_heightMap"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K0 ["_heightMap"]
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K1 ["_heightmapCache"]
  GETTABLE R5 R6 R3
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+12]
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

PROTO_14:
  DUPTABLE R1 K3 [{"BlendingFactor", "EdgePosition", "Width"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["BlendingFactor"]
  LOADK R2 K4 [0.8]
  SETTABLEKS R2 R1 K1 ["EdgePosition"]
  LOADK R2 K5 [0.2]
  SETTABLEKS R2 R1 K2 ["Width"]
  LOADN R4 1
  GETTABLEKS R5 R0 K6 ["_materialMap"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R9 R0 K6 ["_materialMap"]
  GETTABLEN R8 R9 1
  LENGTH R5 R8
  LOADN R6 1
  FORNPREP R5
  LOADN R10 1
  GETTABLEKS R13 R0 K6 ["_materialMap"]
  GETTABLEN R12 R13 1
  GETTABLEN R11 R12 1
  LENGTH R8 R11
  LOADN R9 1
  FORNPREP R8
  GETTABLEKS R16 R0 K6 ["_materialMap"]
  GETTABLEN R15 R16 1
  GETTABLEN R14 R15 1
  LENGTH R13 R14
  SUBK R14 R4 K7 [1]
  MUL R12 R13 R14
  ADD R11 R12 R10
  GETTABLEKS R15 R0 K6 ["_materialMap"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R7
  GETTABLE R12 R13 R10
  GETTABLEKS R14 R0 K8 ["_surfaceMaterialCache"]
  GETTABLE R13 R14 R11
  GETIMPORT R14 K12 [Enum.Material.Air]
  JUMPIFEQ R13 R14 [+18]
  GETTABLEKS R15 R0 K13 ["_blendingFactorMap"]
  GETTABLE R14 R15 R11
  SETTABLEKS R14 R1 K0 ["BlendingFactor"]
  GETTABLEKS R16 R0 K6 ["_materialMap"]
  GETTABLE R15 R16 R4
  GETTABLE R14 R15 R7
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["Blend"]
  MOVE R16 R12
  MOVE R17 R13
  MOVE R18 R1
  CALL R15 3 1
  SETTABLE R15 R14 R10
  FORNLOOP R8
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_15:
  RETURN R0 0

PROTO_16:
  NAMECALL R1 R0 K0 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R0 K0 ["_region"]
  NAMECALL R1 R0 K1 ["revertRegion"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  NAMECALL R2 R2 K2 ["ReadVoxels"]
  CALL R2 3 2
  SETTABLEKS R2 R0 K3 ["_materialCache"]
  SETTABLEKS R3 R0 K4 ["_occupancyCache"]
  GETIMPORT R2 K7 [table.create]
  GETTABLEKS R5 R0 K3 ["_materialCache"]
  LENGTH R4 R5
  GETTABLEKS R8 R0 K3 ["_materialCache"]
  GETTABLEN R7 R8 1
  GETTABLEN R6 R7 1
  LENGTH R5 R6
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["_heightmapCache"]
  GETIMPORT R2 K7 [table.create]
  GETTABLEKS R5 R0 K3 ["_materialCache"]
  LENGTH R4 R5
  GETTABLEKS R8 R0 K3 ["_materialCache"]
  GETTABLEN R7 R8 1
  GETTABLEN R6 R7 1
  LENGTH R5 R6
  MUL R3 R4 R5
  GETIMPORT R4 K12 [Enum.Material.Air]
  CALL R2 2 1
  SETTABLEKS R2 R0 K13 ["_surfaceMaterialCache"]
  LOADN R4 1
  GETTABLEKS R5 R0 K3 ["_materialCache"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R10 R0 K3 ["_materialCache"]
  GETTABLEN R9 R10 1
  GETTABLEN R8 R9 1
  LENGTH R5 R8
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R13 R0 K3 ["_materialCache"]
  GETTABLEN R12 R13 1
  GETTABLEN R11 R12 1
  LENGTH R10 R11
  SUBK R11 R4 K14 [1]
  MUL R9 R10 R11
  ADD R8 R9 R7
  GETTABLEKS R13 R0 K3 ["_materialCache"]
  GETTABLE R12 R13 R4
  LENGTH R11 R12
  LOADN R9 1
  LOADN R10 255
  FORNPREP R9
  GETTABLEKS R15 R0 K4 ["_occupancyCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  JUMPIFEQKN R12 K15 [0] [+29]
  GETTABLEKS R15 R0 K3 ["_materialCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  GETIMPORT R13 K12 [Enum.Material.Air]
  JUMPIFEQ R12 R13 [+20]
  GETTABLEKS R12 R0 K8 ["_heightmapCache"]
  SUBK R14 R11 K14 [1]
  GETTABLEKS R18 R0 K4 ["_occupancyCache"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R11
  GETTABLE R15 R16 R7
  ADD R13 R14 R15
  SETTABLE R13 R12 R8
  GETTABLEKS R12 R0 K13 ["_surfaceMaterialCache"]
  GETTABLEKS R16 R0 K3 ["_materialCache"]
  GETTABLE R15 R16 R4
  GETTABLE R14 R15 R11
  GETTABLE R13 R14 R7
  SETTABLE R13 R12 R8
  JUMP [+1]
  FORNLOOP R9
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_19:
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R0 K0 ["_materialCache"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R0 K1 ["_occupancyCache"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R3 R0 K2 ["_services"]
  GETTABLEKS R2 R3 K3 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["_materialCache"]
  GETTABLEKS R7 R0 K1 ["_occupancyCache"]
  NAMECALL R2 R2 K4 ["WriteVoxels"]
  CALL R2 5 0
  RETURN R0 0

PROTO_20:
  LOADNIL R1
  LOADNIL R2
  SETTABLEKS R1 R0 K0 ["_materialCache"]
  SETTABLEKS R2 R0 K1 ["_occupancyCache"]
  LOADNIL R1
  LOADNIL R2
  SETTABLEKS R1 R0 K2 ["_heightmapCache"]
  SETTABLEKS R2 R0 K3 ["_surfaceMaterialCache"]
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
  GETIMPORT R9 K20 [Enum.Material.Ground]
  NEWTABLE R10 32 0
  SETTABLEKS R10 R10 K21 ["__index"]
  DUPCLOSURE R11 K22 [PROTO_0]
  SETTABLEKS R11 R10 K23 ["new"]
  DUPCLOSURE R11 K24 [PROTO_1]
  SETTABLEKS R11 R10 K25 ["init"]
  DUPCLOSURE R11 K26 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K27 ["update"]
  DUPCLOSURE R11 K28 [PROTO_3]
  SETTABLEKS R11 R10 K29 ["getTerrainType"]
  DUPCLOSURE R11 K30 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K31 ["setupRegion"]
  DUPCLOSURE R11 K32 [PROTO_5]
  SETTABLEKS R11 R10 K33 ["getIndex"]
  DUPCLOSURE R11 K34 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K35 ["generateStamp"]
  DUPCLOSURE R11 K36 [PROTO_7]
  SETTABLEKS R11 R10 K37 ["generateNoiseMap"]
  DUPCLOSURE R11 K38 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K39 ["generateHeightMap"]
  DUPCLOSURE R11 K40 [PROTO_9]
  SETTABLEKS R11 R10 K41 ["generateSlopeMap"]
  DUPCLOSURE R11 K42 [PROTO_10]
  SETTABLEKS R11 R10 K43 ["generateOccupancyMap"]
  DUPCLOSURE R11 K44 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K45 ["generateMaterialMap"]
  DUPCLOSURE R11 K46 [PROTO_12]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K47 ["updateBlendingFactorMap"]
  DUPCLOSURE R11 K48 [PROTO_13]
  SETTABLEKS R11 R10 K49 ["blendHeightMap"]
  DUPCLOSURE R11 K50 [PROTO_14]
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K51 ["blendMaterialMap"]
  DUPCLOSURE R11 K52 [PROTO_15]
  SETTABLEKS R11 R10 K53 ["postProcessing"]
  DUPCLOSURE R11 K54 [PROTO_16]
  SETTABLEKS R11 R10 K55 ["commit"]
  DUPCLOSURE R11 K56 [PROTO_17]
  SETTABLEKS R11 R10 K57 ["destroy"]
  DUPCLOSURE R11 K58 [PROTO_18]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K59 ["cacheRegion"]
  DUPCLOSURE R11 K60 [PROTO_19]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K61 ["revertRegion"]
  DUPCLOSURE R11 K62 [PROTO_20]
  SETTABLEKS R11 R10 K63 ["clearRegionCache"]
  RETURN R10 1
