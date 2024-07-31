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
  GETTABLEKS R8 R9 K6 ["FixedYPlane"]
  GETTABLE R7 R2 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["FlattenPlane"]
  GETTABLE R8 R2 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["State"]
  GETTABLE R9 R2 R10
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["Sphere"]
  JUMPIFNOTEQ R6 R12 [+3]
  MOVE R11 R5
  JUMP [+1]
  MOVE R11 R4
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K10 ["VoxelResolution"]
  MUL R10 R11 R12
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["Auto"]
  JUMPIFNOTEQ R8 R12 [+11]
  GETUPVAL R11 5
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["PivotPosition"]
  GETTABLE R12 R2 R13
  GETTABLEKS R13 R9 K13 ["Position"]
  MOVE R14 R10
  CALL R11 3 1
  JUMP [+7]
  LOADN R12 0
  MOVE R13 R7
  LOADN R14 0
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K16 [Vector3.new]
  CALL R11 3 1
  DUPTABLE R12 K19 [{"Plane", "PlanePosition", "Position"}]
  GETIMPORT R13 K21 [Vector3.yAxis]
  SETTABLEKS R13 R12 K17 ["Plane"]
  SETTABLEKS R11 R12 K18 ["PlanePosition"]
  SETTABLEKS R11 R12 K13 ["Position"]
  SETTABLEKS R12 R0 K8 ["State"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProfileTools"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K7 [debug.profilebegin]
  LOADK R3 K8 ["Flatten"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K9 ["Payload"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K12 ["Height"]
  GETTABLEKS R6 R4 K13 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["FlattenMode"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["Strength"]
  GETTABLE R10 R3 R11
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K0 ["State"]
  GETTABLE R11 R3 R12
  LOADB R12 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K18 ["Grow"]
  JUMPIFEQ R8 R13 [+8]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K19 ["Both"]
  JUMPIFEQ R8 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  LOADB R13 1
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K20 ["Erode"]
  JUMPIFEQ R8 R14 [+8]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K19 ["Both"]
  JUMPIFEQ R8 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K21 ["Sphere"]
  JUMPIFNOTEQ R7 R16 [+3]
  MOVE R15 R6
  JUMP [+1]
  MOVE R15 R5
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K22 ["VoxelResolution"]
  MUL R14 R15 R16
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K22 ["VoxelResolution"]
  MUL R15 R6 R16
  MULK R16 R15 K23 [0.5]
  GETTABLEKS R17 R2 K24 ["PlanePosition"]
  GETUPVAL R18 6
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K25 ["PivotPosition"]
  GETTABLE R19 R3 R20
  GETTABLEKS R20 R11 K26 ["Position"]
  MOVE R21 R14
  CALL R18 3 1
  GETUPVAL R19 7
  GETTABLEKS R20 R2 K26 ["Position"]
  MOVE R21 R18
  MOVE R22 R16
  CALL R19 3 1
  LENGTH R21 R19
  GETTABLE R20 R19 R21
  SETTABLEKS R20 R2 K26 ["Position"]
  GETUPVAL R20 8
  MOVE R21 R18
  MOVE R22 R16
  MOVE R23 R14
  CALL R20 3 2
  MOVE R22 R19
  LOADNIL R23
  LOADNIL R24
  FORGPREP R22
  GETIMPORT R27 K29 [Region3.new]
  MOVE R28 R20
  MOVE R29 R21
  CALL R27 2 1
  GETTABLEKS R30 R21 K30 ["X"]
  GETTABLEKS R31 R20 K30 ["X"]
  SUB R29 R30 R31
  MULK R28 R29 K23 [0.5]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K31 ["Terrain"]
  MOVE R31 R27
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K22 ["VoxelResolution"]
  NAMECALL R29 R29 K32 ["ReadVoxels"]
  CALL R29 3 2
  LOADNIL R31
  SETTABLEKS R31 R30 K13 ["Size"]
  LOADNIL R31
  SETTABLEKS R31 R29 K13 ["Size"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K31 ["Terrain"]
  MOVE R33 R27
  GETUPVAL R35 5
  GETTABLEKS R34 R35 K22 ["VoxelResolution"]
  NAMECALL R31 R31 K32 ["ReadVoxels"]
  CALL R31 3 2
  LENGTH R33 R29
  GETTABLEN R35 R29 1
  LENGTH R34 R35
  GETTABLEN R37 R29 1
  GETTABLEN R36 R37 1
  LENGTH R35 R36
  GETTABLEKS R38 R17 K33 ["Y"]
  GETTABLEKS R39 R26 K33 ["Y"]
  SUB R37 R38 R39
  GETUPVAL R39 5
  GETTABLEKS R38 R39 K22 ["VoxelResolution"]
  DIV R36 R37 R38
  GETTABLEKS R38 R26 K33 ["Y"]
  GETUPVAL R40 5
  GETTABLEKS R39 R40 K22 ["VoxelResolution"]
  DIV R37 R38 R39
  FASTCALL1 MATH_FLOOR R37 [+3]
  MOVE R40 R37
  GETIMPORT R39 K36 [math.floor]
  CALL R39 1 1
  SUB R38 R37 R39
  DIVK R43 R34 K37 [2]
  ADD R42 R36 R43
  ADD R41 R42 R38
  FASTCALL1 MATH_FLOOR R41 [+2]
  GETIMPORT R40 K36 [math.floor]
  CALL R40 1 1
  LOADN R41 1
  MOVE R42 R34
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R39 K39 [math.clamp]
  CALL R39 3 1
  GETTABLEKS R43 R17 K33 ["Y"]
  ADDK R42 R43 K37 [2]
  GETUPVAL R44 5
  GETTABLEKS R43 R44 K22 ["VoxelResolution"]
  MOD R41 R42 R43
  GETUPVAL R43 5
  GETTABLEKS R42 R43 K22 ["VoxelResolution"]
  DIV R40 R41 R42
  MULK R42 R40 K40 [256]
  FASTCALL1 MATH_FLOOR R42 [+2]
  GETIMPORT R41 K36 [math.floor]
  CALL R41 1 1
  DIVK R40 R41 K40 [256]
  LOADB R41 0
  GETUPVAL R43 4
  GETTABLEKS R42 R43 K21 ["Sphere"]
  JUMPIFNOTEQ R7 R42 [+6]
  LOADN R42 2
  JUMPIFLT R42 R6 [+2]
  LOADB R41 0 +1
  LOADB R41 1
  GETUPVAL R44 4
  GETTABLEKS R43 R44 K41 ["Cylinder"]
  JUMPIFNOTEQ R7 R43 [+5]
  LOADB R42 1
  LOADN R43 2
  JUMPIFLT R43 R6 [+2]
  MOVE R42 R41
  GETTABLEKS R45 R20 K30 ["X"]
  GETUPVAL R47 10
  MULK R46 R47 K23 [0.5]
  SUB R44 R45 R46
  GETTABLEKS R45 R26 K30 ["X"]
  SUB R43 R44 R45
  GETTABLEKS R46 R20 K33 ["Y"]
  GETUPVAL R48 10
  MULK R47 R48 K23 [0.5]
  SUB R45 R46 R47
  GETTABLEKS R46 R26 K33 ["Y"]
  SUB R44 R45 R46
  GETTABLEKS R47 R20 K42 ["Z"]
  GETUPVAL R49 10
  MULK R48 R49 K23 [0.5]
  SUB R46 R47 R48
  GETTABLEKS R47 R26 K42 ["Z"]
  SUB R45 R46 R47
  LOADNIL R46
  LOADNIL R47
  LOADNIL R48
  GETIMPORT R49 K45 [os.clock]
  CALL R49 0 1
  LOADN R52 1
  MOVE R50 R33
  LOADN R51 1
  FORNPREP R50
  JUMPIFNOT R42 [+6]
  GETUPVAL R56 5
  GETTABLEKS R55 R56 K22 ["VoxelResolution"]
  MUL R54 R52 R55
  ADD R53 R54 R43
  POWK R46 R53 K37 [2]
  GETTABLE R53 R30 R52
  GETTABLE R54 R29 R52
  GETTABLE R55 R32 R52
  GETTABLE R56 R31 R52
  LOADN R59 1
  MOVE R57 R35
  LOADN R58 1
  FORNPREP R57
  LOADN R60 1
  JUMPIFNOT R42 [+17]
  GETUPVAL R64 5
  GETTABLEKS R63 R64 K22 ["VoxelResolution"]
  MUL R62 R59 R63
  ADD R61 R62 R45
  POWK R47 R61 K37 [2]
  ADD R62 R46 R47
  FASTCALL1 MATH_SQRT R62 [+2]
  GETIMPORT R61 K47 [math.sqrt]
  CALL R61 1 1
  MOVE R48 R61
  GETUPVAL R61 11
  MOVE R62 R48
  MOVE R63 R28
  CALL R61 2 1
  MOVE R60 R61
  MUL R64 R60 R10
  MULK R63 R64 K48 [0.1]
  FASTCALL1 MATH_LOG R6 [+3]
  MOVE R66 R6
  GETIMPORT R65 K51 [math.log]
  CALL R65 1 1
  DIVK R64 R65 K49 [8]
  MUL R62 R63 R64
  GETUPVAL R64 5
  GETTABLEKS R63 R64 K52 ["MinimumOccupancy"]
  FASTCALL2 MATH_MAX R62 R63 [+3]
  GETIMPORT R61 K54 [math.max]
  CALL R61 2 1
  MUL R65 R60 R10
  MULK R64 R65 K48 [0.1]
  FASTCALL1 MATH_LOG R6 [+3]
  MOVE R67 R6
  GETIMPORT R66 K51 [math.log]
  CALL R66 1 1
  DIVK R65 R66 K49 [8]
  MUL R63 R64 R65
  GETUPVAL R65 5
  GETTABLEKS R64 R65 K52 ["MinimumOccupancy"]
  FASTCALL2 MATH_MAX R63 R64 [+3]
  GETIMPORT R62 K54 [math.max]
  CALL R62 2 1
  LOADB R63 0
  JUMPIFNOT R12 [+78]
  LOADN R66 1
  MOVE R64 R39
  LOADN R65 1
  FORNPREP R64
  GETTABLE R68 R53 R66
  GETTABLE R67 R68 R59
  GETTABLE R69 R54 R66
  GETTABLE R68 R69 R59
  LOADN R69 1
  JUMPIFNOT R42 [+20]
  JUMPIFNOT R41 [+13]
  ADD R72 R46 R47
  GETUPVAL R77 5
  GETTABLEKS R76 R77 K22 ["VoxelResolution"]
  MUL R75 R66 R76
  ADD R74 R75 R44
  POWK R73 R74 K37 [2]
  ADD R71 R72 R73
  FASTCALL1 MATH_SQRT R71 [+2]
  GETIMPORT R70 K47 [math.sqrt]
  CALL R70 1 1
  JUMP [+1]
  MOVE R70 R48
  GETUPVAL R71 12
  MOVE R72 R70
  MOVE R73 R28
  CALL R71 2 1
  MOVE R69 R71
  LOADN R70 0
  JUMPIFLE R69 R70 [+45]
  JUMPIFNOTEQKN R67 K55 [0] [+3]
  JUMPIF R63 [+1]
  JUMP [+40]
  LOADB R63 1
  JUMPIFEQKN R67 K56 [1] [+38]
  ADD R70 R67 R61
  LOADN R71 1
  JUMPIFNOTLT R71 R70 [+4]
  SUBK R61 R70 K56 [1]
  LOADN R70 1
  JUMP [+1]
  LOADN R61 0
  JUMPIFNOTEQ R66 R39 [+4]
  JUMPIFNOTLT R40 R70 [+2]
  MOVE R70 R40
  JUMPIFNOTEQKN R67 K55 [0] [+9]
  LOADN R71 1
  JUMPIFNOTLT R71 R66 [+6]
  GETTABLE R72 R29 R52
  SUBK R73 R66 K56 [1]
  GETTABLE R71 R72 R73
  GETTABLE R68 R71 R59
  JUMP [0]
  JUMPIFNOT R9 [+4]
  GETIMPORT R71 K60 [Enum.Material.Water]
  JUMPIFEQ R68 R71 [+11]
  JUMPIFNOT R68 [+9]
  JUMPIFEQ R67 R70 [+8]
  GETTABLE R71 R55 R66
  SETTABLE R70 R71 R59
  GETTABLE R71 R56 R66
  SETTABLE R68 R71 R59
  JUMPIFEQKN R61 K55 [0] [+2]
  FORNLOOP R64
  LOADB R64 0
  JUMPIFNOT R13 [+69]
  MOVE R67 R34
  MOVE R65 R39
  LOADN R66 255
  FORNPREP R65
  GETTABLE R69 R53 R67
  GETTABLE R68 R69 R59
  GETTABLE R70 R54 R67
  GETTABLE R69 R70 R59
  LOADN R70 1
  JUMPIFNOT R42 [+20]
  JUMPIFNOT R41 [+13]
  ADD R73 R46 R47
  GETUPVAL R78 5
  GETTABLEKS R77 R78 K22 ["VoxelResolution"]
  MUL R76 R67 R77
  ADD R75 R76 R44
  POWK R74 R75 K37 [2]
  ADD R72 R73 R74
  FASTCALL1 MATH_SQRT R72 [+2]
  GETIMPORT R71 K47 [math.sqrt]
  CALL R71 1 1
  JUMP [+1]
  MOVE R71 R48
  GETUPVAL R72 12
  MOVE R73 R71
  MOVE R74 R28
  CALL R72 2 1
  MOVE R70 R72
  LOADN R71 0
  JUMPIFLE R70 R71 [+36]
  JUMPIFNOTEQKN R68 K56 [1] [+3]
  JUMPIF R64 [+1]
  JUMP [+31]
  LOADB R64 1
  JUMPIFEQKN R68 K55 [0] [+29]
  SUB R71 R68 R62
  LOADN R72 0
  JUMPIFNOTLT R71 R72 [+4]
  MINUS R62 R71
  LOADN R71 0
  JUMP [+1]
  LOADN R62 0
  JUMPIFNOTEQ R67 R39 [+4]
  JUMPIFNOTLT R71 R40 [+2]
  MOVE R71 R40
  JUMPIFNOTEQKN R71 K55 [0] [+3]
  GETIMPORT R69 K62 [Enum.Material.Air]
  JUMPIFNOT R9 [+4]
  GETIMPORT R72 K60 [Enum.Material.Water]
  JUMPIFEQ R69 R72 [+8]
  GETTABLE R72 R55 R67
  SETTABLE R71 R72 R59
  GETTABLE R72 R56 R67
  SETTABLE R69 R72 R59
  JUMPIFEQKN R62 K55 [0] [+2]
  FORNLOOP R65
  FORNLOOP R57
  FORNLOOP R50
  GETUPVAL R53 13
  GETTABLEKS R52 R53 K63 ["NormalizeBrushTimer"]
  MOVE R53 R49
  MOVE R54 R6
  MOVE R55 R5
  CALL R52 3 -1
  NAMECALL R50 R1 K64 ["addTimeStatistic"]
  CALL R50 -1 0
  GETUPVAL R51 9
  GETTABLEKS R50 R51 K31 ["Terrain"]
  MOVE R52 R27
  GETUPVAL R54 5
  GETTABLEKS R53 R54 K22 ["VoxelResolution"]
  MOVE R54 R31
  MOVE R55 R32
  NAMECALL R50 R50 K65 ["WriteVoxels"]
  CALL R50 5 0
  FORGLOOP R22 2 [-393]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K4 ["ProfileTools"]
  CALL R22 0 1
  JUMPIFNOT R22 [+3]
  GETIMPORT R22 K67 [debug.profileend]
  CALL R22 0 0
  LOADB R22 1
  LOADN R23 0
  RETURN R22 2

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChangeHistoryService"]
  LOADK R2 K1 ["Flatten"]
  NAMECALL R0 R0 K2 ["SetWaypoint"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 14
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "Name", "OnFinish", "OnStart", "OnStep"}]
  LOADK R7 K8 [0.0005]
  SETTABLEKS R7 R6 K2 ["Budget"]
  SETTABLEKS R0 R6 K3 ["Name"]
  SETTABLEKS R4 R6 K4 ["OnFinish"]
  SETTABLEKS R2 R6 K5 ["OnStart"]
  SETTABLEKS R3 R6 K6 ["OnStep"]
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
  GETTABLEKS R6 R2 K13 ["CalculateBrushOccupancy"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["CalculateMagnitudePercent"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["ClampVoxelBoundaries"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K16 ["ConvertForPivot"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K17 ["DebugFlags"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R2 K18 ["getDraggedPositions"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["BrushShape"]
  GETTABLEKS R13 R11 K21 ["BrushSettings"]
  GETTABLEKS R14 R11 K22 ["Category"]
  GETTABLEKS R15 R11 K23 ["FlattenMode"]
  GETTABLEKS R16 R11 K24 ["FlattenPlane"]
  GETTABLEKS R17 R1 K25 ["VoxelResolution"]
  DUPCLOSURE R18 K26 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R18 1
