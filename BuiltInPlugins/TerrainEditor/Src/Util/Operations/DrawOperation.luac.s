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
  LOADK R3 K8 ["Draw"]
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
  GETTABLEKS R8 R9 K14 ["BrushMode"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["BrushShape"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K0 ["State"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K16 ["IgnoreWater"]
  GETTABLE R10 R3 R11
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["TemporarySmooth"]
  GETTABLE R11 R3 R12
  JUMPIFNOT R11 [+36]
  GETTABLEKS R12 R2 K18 ["Smooth"]
  JUMPIF R12 [+15]
  GETUPVAL R12 3
  LOADK R13 K18 ["Smooth"]
  GETUPVAL R14 4
  CALL R12 2 1
  DUPTABLE R15 K19 [{"Payload"}]
  GETTABLEKS R16 R0 K9 ["Payload"]
  SETTABLEKS R16 R15 K9 ["Payload"]
  NAMECALL R13 R12 K20 ["start"]
  CALL R13 2 0
  SETTABLEKS R12 R2 K18 ["Smooth"]
  JUMP [+7]
  GETTABLEKS R12 R2 K18 ["Smooth"]
  GETTABLEKS R14 R0 K9 ["Payload"]
  NAMECALL R12 R12 K21 ["updatePayload"]
  CALL R12 2 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["ProfileTools"]
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETIMPORT R12 K23 [debug.profileend]
  CALL R12 0 0
  LOADB R12 1
  LOADN R13 0
  RETURN R12 2
  GETTABLEKS R12 R2 K18 ["Smooth"]
  JUMPIFNOT R12 [+12]
  GETTABLEKS R12 R2 K18 ["Smooth"]
  NAMECALL R12 R12 K24 ["cancel"]
  CALL R12 1 0
  LOADNIL R12
  SETTABLEKS R12 R2 K18 ["Smooth"]
  GETTABLEKS R12 R9 K25 ["Position"]
  SETTABLEKS R12 R2 K25 ["Position"]
  GETTABLEKS R13 R0 K9 ["Payload"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K26 ["MaterialSettings"]
  GETTABLE R12 R13 R14
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K27 ["AutoMaterial"]
  GETTABLE R13 R12 R14
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K28 ["SourceMaterial"]
  GETTABLE R14 R12 R15
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K29 ["Sphere"]
  JUMPIFNOTEQ R8 R17 [+3]
  MOVE R16 R6
  JUMP [+1]
  MOVE R16 R5
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K30 ["VoxelResolution"]
  MUL R15 R16 R17
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K30 ["VoxelResolution"]
  MUL R16 R6 R17
  MULK R17 R16 K31 [0.5]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K32 ["Add"]
  JUMPIFNOTEQ R7 R18 [+6]
  SUBK R6 R6 K33 [1]
  SUBK R15 R15 K34 [2]
  SUBK R16 R16 K34 [2]
  SUBK R17 R17 K33 [1]
  JUMP [+2]
  GETIMPORT R14 K38 [Enum.Material.Air]
  GETUPVAL R18 9
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K39 ["PivotPosition"]
  GETTABLE R19 R3 R20
  GETTABLEKS R20 R9 K25 ["Position"]
  MOVE R21 R15
  CALL R18 3 1
  GETUPVAL R19 10
  GETTABLEKS R20 R2 K25 ["Position"]
  MOVE R21 R18
  MOVE R22 R17
  CALL R19 3 1
  LENGTH R21 R19
  GETTABLE R20 R19 R21
  SETTABLEKS R20 R2 K25 ["Position"]
  MOVE R20 R19
  LOADNIL R21
  LOADNIL R22
  FORGPREP R20
  GETTABLEKS R25 R2 K40 ["LastPosition"]
  JUMPIFNOTEQ R24 R25 [+16]
  JUMPIF R13 [+14]
  NAMECALL R25 R1 K41 ["skipBudget"]
  CALL R25 1 0
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K4 ["ProfileTools"]
  CALL R25 0 1
  JUMPIFNOT R25 [+3]
  GETIMPORT R25 K23 [debug.profileend]
  CALL R25 0 0
  LOADB R25 1
  LOADN R26 0
  RETURN R25 2
  SETTABLEKS R24 R2 K40 ["LastPosition"]
  GETUPVAL R25 11
  MOVE R26 R24
  MOVE R27 R17
  MOVE R28 R15
  CALL R25 3 2
  GETIMPORT R27 K44 [os.clock]
  CALL R27 0 1
  GETUPVAL R30 8
  GETTABLEKS R29 R30 K32 ["Add"]
  JUMPIFEQ R7 R29 [+9]
  LOADB R28 0
  GETUPVAL R30 8
  GETTABLEKS R29 R30 K45 ["Subtract"]
  JUMPIFNOTEQ R7 R29 [+4]
  NOT R28 R10
  JUMPIFNOT R28 [+1]
  NOT R28 R13
  JUMPIFNOT R28 [+91]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K29 ["Sphere"]
  JUMPIFNOTEQ R8 R29 [+11]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K46 ["Terrain"]
  MOVE R31 R24
  MOVE R32 R17
  MOVE R33 R14
  NAMECALL R29 R29 K47 ["FillBall"]
  CALL R29 4 0
  JUMP [+63]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K48 ["Cube"]
  JUMPIFNOTEQ R8 R29 [+21]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K46 ["Terrain"]
  GETIMPORT R31 K51 [CFrame.new]
  MOVE R32 R24
  CALL R31 1 1
  FASTCALL3 VECTOR R16 R15 R16
  MOVE R33 R16
  MOVE R34 R15
  MOVE R35 R16
  GETIMPORT R32 K53 [Vector3.new]
  CALL R32 3 1
  MOVE R33 R14
  NAMECALL R29 R29 K54 ["FillBlock"]
  CALL R29 4 0
  JUMP [+38]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K55 ["Cylinder"]
  JUMPIFNOTEQ R8 R29 [+34]
  SUB R30 R26 R25
  GETTABLEKS R29 R30 K56 ["X"]
  LOADN R31 2
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K30 ["VoxelResolution"]
  MUL R30 R31 R32
  JUMPIFNOTLE R29 R30 [+11]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K46 ["Terrain"]
  MOVE R31 R24
  MOVE R32 R17
  MOVE R33 R14
  NAMECALL R29 R29 K47 ["FillBall"]
  CALL R29 4 0
  JUMP [+13]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K46 ["Terrain"]
  GETIMPORT R31 K51 [CFrame.new]
  MOVE R32 R24
  CALL R31 1 1
  MOVE R32 R15
  MOVE R33 R17
  MOVE R34 R14
  NAMECALL R29 R29 K57 ["FillCylinder"]
  CALL R29 5 0
  GETUPVAL R32 12
  GETTABLEKS R31 R32 K58 ["NormalizeBrushTimer"]
  MOVE R32 R27
  GETTABLEKS R33 R4 K13 ["Size"]
  GETTABLEKS R34 R4 K12 ["Height"]
  CALL R31 3 -1
  NAMECALL R29 R1 K59 ["addTimeStatistic"]
  CALL R29 -1 0
  JUMP [+281]
  GETIMPORT R29 K61 [Region3.new]
  MOVE R30 R25
  MOVE R31 R26
  CALL R29 2 1
  GETTABLEKS R32 R26 K56 ["X"]
  GETTABLEKS R33 R25 K56 ["X"]
  SUB R31 R32 R33
  MULK R30 R31 K31 [0.5]
  SUB R32 R26 R25
  GETUPVAL R34 7
  GETTABLEKS R33 R34 K30 ["VoxelResolution"]
  DIV R31 R32 R33
  GETUPVAL R33 4
  GETTABLEKS R32 R33 K46 ["Terrain"]
  MOVE R34 R29
  GETUPVAL R36 7
  GETTABLEKS R35 R36 K30 ["VoxelResolution"]
  NAMECALL R32 R32 K62 ["ReadVoxels"]
  CALL R32 3 2
  LOADNIL R34
  SETTABLEKS R34 R32 K13 ["Size"]
  LOADNIL R34
  SETTABLEKS R34 R33 K13 ["Size"]
  LENGTH R34 R32
  GETTABLEN R36 R32 1
  LENGTH R35 R36
  GETTABLEN R38 R32 1
  GETTABLEN R37 R38 1
  LENGTH R36 R37
  GETIMPORT R37 K65 [table.create]
  MOVE R38 R34
  CALL R37 1 1
  GETIMPORT R38 K65 [table.create]
  MOVE R39 R34
  CALL R38 1 1
  GETIMPORT R39 K65 [table.create]
  MOVE R40 R34
  CALL R39 1 1
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K30 ["VoxelResolution"]
  LOADB R41 0
  GETUPVAL R43 6
  GETTABLEKS R42 R43 K29 ["Sphere"]
  JUMPIFNOTEQ R8 R42 [+6]
  LOADN R42 2
  JUMPIFLT R42 R6 [+2]
  LOADB R41 0 +1
  LOADB R41 1
  GETUPVAL R44 6
  GETTABLEKS R43 R44 K55 ["Cylinder"]
  JUMPIFNOTEQ R8 R43 [+5]
  LOADB R42 1
  LOADN R43 2
  JUMPIFLT R43 R6 [+2]
  MOVE R42 R41
  GETTABLEKS R45 R25 K56 ["X"]
  MULK R46 R40 K31 [0.5]
  SUB R44 R45 R46
  GETTABLEKS R45 R24 K56 ["X"]
  SUB R43 R44 R45
  GETTABLEKS R46 R25 K66 ["Y"]
  MULK R47 R40 K31 [0.5]
  SUB R45 R46 R47
  GETTABLEKS R46 R24 K66 ["Y"]
  SUB R44 R45 R46
  GETTABLEKS R47 R25 K67 ["Z"]
  MULK R48 R40 K31 [0.5]
  SUB R46 R47 R48
  GETTABLEKS R47 R24 K67 ["Z"]
  SUB R45 R46 R47
  LOADNIL R46
  LOADNIL R47
  GETUPVAL R50 8
  GETTABLEKS R49 R50 K32 ["Add"]
  JUMPIFEQ R7 R49 [+2]
  LOADB R48 0 +1
  LOADB R48 1
  GETUPVAL R51 8
  GETTABLEKS R50 R51 K45 ["Subtract"]
  JUMPIFEQ R7 R50 [+2]
  LOADB R49 0 +1
  LOADB R49 1
  GETIMPORT R50 K44 [os.clock]
  CALL R50 0 1
  MOVE R51 R33
  LOADNIL R52
  LOADNIL R53
  FORGPREP R51
  JUMPIFNOT R42 [+4]
  MUL R57 R54 R40
  ADD R56 R57 R43
  POWK R46 R56 K34 [2]
  JUMP [+1]
  LOADNIL R46
  GETTABLE R56 R32 R54
  GETIMPORT R57 K65 [table.create]
  MOVE R58 R35
  CALL R57 1 1
  GETIMPORT R58 K65 [table.create]
  MOVE R59 R35
  CALL R58 1 1
  GETIMPORT R59 K65 [table.create]
  MOVE R60 R35
  CALL R59 1 1
  SETTABLE R57 R37 R54
  SETTABLE R58 R38 R54
  SETTABLE R59 R39 R54
  MOVE R60 R55
  LOADNIL R61
  LOADNIL R62
  FORGPREP R60
  JUMPIFNOT R41 [+5]
  MUL R67 R63 R40
  ADD R66 R67 R44
  POWK R65 R66 K34 [2]
  ADD R47 R46 R65
  JUMP [+1]
  LOADNIL R47
  GETTABLE R65 R56 R63
  GETIMPORT R66 K69 [table.clone]
  MOVE R67 R65
  CALL R66 1 1
  GETIMPORT R67 K69 [table.clone]
  MOVE R68 R65
  CALL R67 1 1
  GETIMPORT R68 K69 [table.clone]
  MOVE R69 R64
  CALL R68 1 1
  SETTABLE R66 R57 R63
  SETTABLE R67 R58 R63
  SETTABLE R68 R59 R63
  MOVE R69 R64
  LOADNIL R70
  LOADNIL R71
  FORGPREP R69
  GETTABLE R74 R65 R72
  LOADN R75 1
  JUMPIFNOT R42 [+20]
  MUL R78 R72 R40
  ADD R77 R78 R45
  POWK R76 R77 K34 [2]
  JUMPIFNOT R41 [+6]
  ADD R78 R47 R76
  FASTCALL1 MATH_SQRT R78 [+2]
  GETIMPORT R77 K72 [math.sqrt]
  CALL R77 1 1
  JUMP [+5]
  ADD R78 R46 R76
  FASTCALL1 MATH_SQRT R78 [+2]
  GETIMPORT R77 K72 [math.sqrt]
  CALL R77 1 1
  GETUPVAL R78 13
  MOVE R79 R77
  MOVE R80 R30
  CALL R78 2 1
  MOVE R75 R78
  JUMPIFNOT R48 [+16]
  JUMPIFNOTLT R73 R75 [+15]
  SETTABLE R75 R64 R72
  JUMPIF R13 [+2]
  SETTABLE R74 R66 R72
  JUMP [+33]
  GETUPVAL R77 14
  MOVE R78 R54
  MOVE R79 R63
  MOVE R80 R72
  MOVE R81 R32
  MOVE R82 R31
  CALL R77 5 1
  OR R76 R77 R74
  SETTABLE R76 R66 R72
  JUMP [+23]
  JUMPIFNOT R49 [+22]
  JUMPIFNOT R10 [+4]
  GETIMPORT R76 K74 [Enum.Material.Water]
  JUMPIFEQ R74 R76 [+18]
  GETUPVAL R77 7
  GETTABLEKS R76 R77 K75 ["MinimumOccupancy"]
  JUMPIFNOTLE R76 R75 [+13]
  LOADN R76 0
  SETTABLE R76 R64 R72
  GETIMPORT R76 K38 [Enum.Material.Air]
  SETTABLE R76 R66 R72
  JUMPIFNOTEQKN R75 K33 [1] [+6]
  GETIMPORT R76 K38 [Enum.Material.Air]
  SETTABLE R76 R67 R72
  LOADN R76 0
  SETTABLE R76 R68 R72
  FORGLOOP R69 2 [-64]
  FORGLOOP R60 2 [-93]
  FORGLOOP R51 2 [-121]
  GETUPVAL R54 12
  GETTABLEKS R53 R54 K58 ["NormalizeBrushTimer"]
  MOVE R54 R50
  GETTABLEKS R55 R4 K13 ["Size"]
  GETTABLEKS R56 R4 K12 ["Height"]
  CALL R53 3 -1
  NAMECALL R51 R1 K59 ["addTimeStatistic"]
  CALL R51 -1 0
  GETUPVAL R52 8
  GETTABLEKS R51 R52 K45 ["Subtract"]
  JUMPIFNOTEQ R7 R51 [+13]
  GETUPVAL R52 4
  GETTABLEKS R51 R52 K46 ["Terrain"]
  MOVE R53 R29
  GETUPVAL R55 7
  GETTABLEKS R54 R55 K30 ["VoxelResolution"]
  MOVE R55 R38
  MOVE R56 R39
  NAMECALL R51 R51 K76 ["WriteVoxels"]
  CALL R51 5 0
  GETUPVAL R52 4
  GETTABLEKS R51 R52 K46 ["Terrain"]
  MOVE R53 R29
  GETUPVAL R55 7
  GETTABLEKS R54 R55 K30 ["VoxelResolution"]
  MOVE R55 R37
  MOVE R56 R33
  NAMECALL R51 R51 K76 ["WriteVoxels"]
  CALL R51 5 0
  FORGLOOP R20 2 [-417]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["ProfileTools"]
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETIMPORT R20 K23 [debug.profileend]
  CALL R20 0 0
  LOADB R20 1
  LOADN R21 0
  RETURN R20 2

PROTO_2:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to finish without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["ChangeHistoryService"]
  LOADK R5 K5 ["Draw"]
  NAMECALL R3 R3 K6 ["SetWaypoint"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K7 ["Smooth"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R2 K7 ["Smooth"]
  NAMECALL R3 R3 K8 ["cancel"]
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
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
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U8
  CAPTURE UPVAL U4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 14
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "Name", "OnFinish", "OnStart", "OnStep"}]
  LOADK R7 K8 [0.005]
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
  GETTABLEKS R6 R2 K13 ["CalculateAutoMaterial"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["CalculateBrushOccupancy"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["ClampVoxelBoundaries"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K16 ["ConvertForPivot"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K17 ["getDraggedPositions"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K9 ["Util"]
  GETTABLEKS R12 R13 K11 ["Operations"]
  GETTABLEKS R11 R12 K18 ["SmoothOperation"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["BrushMode"]
  GETTABLEKS R13 R11 K21 ["BrushShape"]
  GETTABLEKS R14 R11 K22 ["BrushSettings"]
  GETTABLEKS R15 R11 K23 ["Category"]
  GETTABLEKS R16 R11 K24 ["MaterialSettings"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K9 ["Util"]
  GETTABLEKS R18 R19 K25 ["DebugFlags"]
  CALL R17 1 1
  DUPCLOSURE R18 K26 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R18 1
