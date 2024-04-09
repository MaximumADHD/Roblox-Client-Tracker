PROTO_0:
  GETTABLEKS R3 R0 K0 ["Payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R3 K3 ["Height"]
  GETTABLEKS R5 R3 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["BrushShape"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["State"]
  GETTABLE R7 R2 R8
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["Sphere"]
  JUMPIFNOTEQ R6 R10 [+3]
  MOVE R9 R5
  JUMP [+1]
  MOVE R9 R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["VoxelResolution"]
  MUL R8 R9 R10
  GETUPVAL R9 4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["PivotPosition"]
  GETTABLE R10 R2 R11
  GETTABLEKS R11 R7 K10 ["Position"]
  MOVE R12 R8
  CALL R9 3 1
  DUPTABLE R10 K11 [{"Position"}]
  SETTABLEKS R9 R10 K10 ["Position"]
  SETTABLEKS R10 R0 K6 ["State"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R1
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R2 4 2
  GETUPVAL R4 4
  JUMPIFNOT R4 [+55]
  GETUPVAL R7 5
  GETTABLEKS R8 R0 K0 ["X"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R0 K1 ["Y"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R0 K2 ["Z"]
  GETTABLE R4 R5 R6
  GETIMPORT R5 K6 [Enum.Material.Water]
  JUMPIFNOTEQ R4 R5 [+42]
  GETUPVAL R6 6
  GETTABLEKS R7 R0 K0 ["X"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R0 K1 ["Y"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K2 ["Z"]
  GETUPVAL R9 7
  GETTABLEKS R10 R0 K0 ["X"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K1 ["Y"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R0 K2 ["Z"]
  GETTABLE R6 R7 R8
  SETTABLE R6 R4 R5
  GETUPVAL R6 8
  GETTABLEKS R7 R0 K0 ["X"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R0 K1 ["Y"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K2 ["Z"]
  GETUPVAL R9 5
  GETTABLEKS R10 R0 K0 ["X"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K1 ["Y"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R0 K2 ["Z"]
  GETTABLE R6 R7 R8
  SETTABLE R6 R4 R5
  RETURN R0 0
  GETUPVAL R7 8
  GETTABLEKS R8 R0 K0 ["X"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R0 K1 ["Y"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R0 K2 ["Z"]
  GETTABLE R4 R5 R6
  LOADB R5 1
  GETIMPORT R6 K8 [Enum.Material.Air]
  JUMPIFEQ R4 R6 [+16]
  GETUPVAL R9 6
  GETTABLEKS R10 R0 K0 ["X"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K1 ["Y"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R0 K2 ["Z"]
  GETTABLE R6 R7 R8
  LOADN R7 0
  JUMPIFLE R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R13 6
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLE R10 R11 R12
  GETUPVAL R14 7
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  GETTABLE R11 R12 R13
  SUB R9 R10 R11
  GETUPVAL R10 9
  MUL R8 R9 R10
  MUL R7 R8 R2
  MUL R6 R7 R3
  GETUPVAL R12 7
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  GETTABLE R9 R10 R11
  ADD R8 R9 R6
  LOADN R9 0
  LOADN R10 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K11 [math.clamp]
  CALL R7 3 1
  GETUPVAL R11 6
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLE R8 R9 R10
  JUMPIFEQ R7 R8 [+53]
  GETUPVAL R10 6
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  SETTABLE R7 R8 R9
  JUMPIFNOT R5 [+26]
  GETUPVAL R9 10
  GETTABLEKS R8 R9 K12 ["MinimumSmooth"]
  JUMPIFNOTLE R8 R7 [+22]
  GETUPVAL R10 8
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETUPVAL R13 5
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLE R10 R11 R12
  SETTABLE R10 R8 R9
  RETURN R0 0
  LOADN R8 0
  JUMPIFNOTLE R7 R8 [+13]
  GETUPVAL R10 8
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETIMPORT R10 K8 [Enum.Material.Air]
  SETTABLE R10 R8 R9
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K6 [os.clock]
  CALL R3 0 1
  MOVE R2 R3
  GETTABLEKS R3 R0 K0 ["State"]
  GETTABLEKS R5 R0 K7 ["Payload"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["BrushSize"]
  GETTABLE R5 R4 R6
  GETTABLEKS R6 R5 K10 ["Height"]
  GETTABLEKS R7 R5 K11 ["Size"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["BrushShape"]
  GETTABLE R8 R4 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K0 ["State"]
  GETTABLE R9 R4 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["IgnoreWater"]
  GETTABLE R10 R4 R11
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K15 ["Strength"]
  GETTABLE R12 R4 R13
  ORK R11 R12 K14 [1]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["Sphere"]
  JUMPIFNOTEQ R8 R14 [+3]
  MOVE R13 R7
  JUMP [+1]
  MOVE R13 R6
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["VoxelResolution"]
  MUL R12 R13 R14
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["VoxelResolution"]
  MUL R13 R7 R14
  MULK R14 R13 K18 [0.5]
  GETUPVAL R15 5
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K19 ["PivotPosition"]
  GETTABLE R16 R4 R17
  GETTABLEKS R17 R9 K20 ["Position"]
  MOVE R18 R12
  CALL R15 3 1
  GETUPVAL R16 6
  GETTABLEKS R17 R3 K20 ["Position"]
  MOVE R18 R15
  MOVE R19 R14
  CALL R16 3 1
  LENGTH R18 R16
  GETTABLE R17 R16 R18
  SETTABLEKS R17 R3 K20 ["Position"]
  MOVE R17 R16
  LOADNIL R18
  LOADNIL R19
  FORGPREP R17
  GETUPVAL R22 7
  MOVE R23 R21
  MOVE R24 R14
  MOVE R25 R12
  CALL R22 3 2
  GETIMPORT R24 K23 [Region3.new]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  GETTABLEKS R27 R23 K24 ["X"]
  GETTABLEKS R28 R22 K24 ["X"]
  SUB R26 R27 R28
  MULK R25 R26 K18 [0.5]
  GETUPVAL R27 8
  GETTABLEKS R26 R27 K25 ["Terrain"]
  MOVE R28 R24
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K17 ["VoxelResolution"]
  NAMECALL R26 R26 K26 ["ReadVoxels"]
  CALL R26 3 2
  LOADNIL R28
  SETTABLEKS R28 R26 K11 ["Size"]
  LOADNIL R28
  SETTABLEKS R28 R27 K11 ["Size"]
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K25 ["Terrain"]
  MOVE R30 R24
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K17 ["VoxelResolution"]
  MOVE R32 R11
  NAMECALL R28 R28 K27 ["SmoothRegion"]
  CALL R28 4 2
  NEWCLOSURE R30 P0
  CAPTURE UPVAL U9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R25
  CAPTURE VAL R10
  CAPTURE VAL R26
  CAPTURE VAL R29
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R11
  CAPTURE UPVAL U4
  LOADNIL R31
  SETTABLEKS R31 R26 K11 ["Size"]
  LOADNIL R31
  SETTABLEKS R31 R27 K11 ["Size"]
  MOVE R31 R27
  LOADNIL R32
  LOADNIL R33
  FORGPREP R31
  GETTABLEKS R38 R22 K24 ["X"]
  SUBK R40 R34 K18 [0.5]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K17 ["VoxelResolution"]
  MUL R39 R40 R41
  ADD R37 R38 R39
  GETTABLEKS R38 R21 K24 ["X"]
  SUB R36 R37 R38
  MOVE R37 R35
  LOADNIL R38
  LOADNIL R39
  FORGPREP R37
  GETTABLEKS R44 R22 K28 ["Y"]
  SUBK R46 R40 K18 [0.5]
  GETUPVAL R48 4
  GETTABLEKS R47 R48 K17 ["VoxelResolution"]
  MUL R45 R46 R47
  ADD R43 R44 R45
  GETTABLEKS R44 R21 K28 ["Y"]
  SUB R42 R43 R44
  MOVE R43 R41
  LOADNIL R44
  LOADNIL R45
  FORGPREP R43
  MOVE R49 R34
  MOVE R50 R40
  MOVE R51 R46
  FASTCALL VECTOR [+2]
  GETIMPORT R48 K30 [Vector3.new]
  CALL R48 3 1
  MOVE R50 R36
  MOVE R51 R42
  GETTABLEKS R54 R22 K31 ["Z"]
  GETTABLEKS R57 R48 K31 ["Z"]
  SUBK R56 R57 K18 [0.5]
  GETUPVAL R58 4
  GETTABLEKS R57 R58 K17 ["VoxelResolution"]
  MUL R55 R56 R57
  ADD R53 R54 R55
  GETTABLEKS R54 R21 K31 ["Z"]
  SUB R52 R53 R54
  FASTCALL VECTOR [+2]
  GETIMPORT R49 K30 [Vector3.new]
  CALL R49 3 1
  MOVE R50 R30
  MOVE R51 R48
  MOVE R52 R49
  CALL R50 2 0
  FORGLOOP R43 2 [-31]
  FORGLOOP R37 2 [-48]
  FORGLOOP R31 2 [-65]
  GETUPVAL R32 8
  GETTABLEKS R31 R32 K25 ["Terrain"]
  MOVE R33 R24
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K17 ["VoxelResolution"]
  MOVE R35 R28
  MOVE R36 R29
  NAMECALL R31 R31 K32 ["WriteVoxels"]
  CALL R31 5 0
  GETUPVAL R31 0
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETUPVAL R34 10
  GETTABLEKS R33 R34 K33 ["NormalizeBrushTimer"]
  MOVE R34 R2
  MOVE R35 R7
  MOVE R36 R6
  CALL R33 3 -1
  NAMECALL R31 R1 K34 ["addTimeStatistic"]
  CALL R31 -1 0
  FORGLOOP R17 2 [-157]
  LOADB R17 1
  LOADN R18 0
  RETURN R17 2

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Smooth"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
  LOADK R7 K8 [0.005]
  SETTABLEKS R7 R6 K2 ["Budget"]
  SETTABLEKS R4 R6 K3 ["OnFinish"]
  SETTABLEKS R2 R6 K4 ["OnStart"]
  SETTABLEKS R3 R6 K5 ["OnStep"]
  SETTABLEKS R0 R6 K6 ["Name"]
  CALL R5 1 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["AnalyticsHelper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K11 ["Operations"]
  GETTABLEKS R5 R6 K12 ["BaseOperation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["CalculateBrushPower"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["ClampVoxelBoundaries"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["ConvertForPivot"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K16 ["getDraggedPositions"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K18 ["BrushShape"]
  GETTABLEKS R11 R9 K19 ["BrushSettings"]
  GETTABLEKS R12 R9 K20 ["Category"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K21 ["Flags"]
  GETTABLEKS R14 R15 K22 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R14 1
