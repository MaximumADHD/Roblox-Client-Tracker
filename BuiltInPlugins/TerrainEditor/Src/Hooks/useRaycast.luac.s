PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsMouseDown"]
  CALL R0 1 1
  JUMPIF R0 [+15]
  GETIMPORT R0 K3 [CFrame.lookAt]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Position"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Position"]
  GETUPVAL R4 2
  CALL R4 0 1
  ADD R2 R3 R4
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["BrushSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["BrushSize"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["Size"]
  DIVK R3 R4 K0 [2]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["VoxelResolution"]
  MUL R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["TerrainCacheMultiplier"]
  MUL R1 R2 R3
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["TerrainCacheMaxRadius"]
  FASTCALL2 MATH_MIN R1 R2 [+3]
  GETIMPORT R0 K9 [math.min]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Draw"]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["TemporarySmooth"]
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+19]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["Paint"]
  JUMPIFNOTEQ R0 R1 [+31]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["MaterialSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K5 ["TargetMaterial"]
  GETTABLE R0 R1 R2
  GETIMPORT R1 K9 [Enum.Material.Air]
  JUMPIFNOTEQ R0 R1 [+18]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K10 ["PlaneLock"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K11 ["Off"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  NEWTABLE R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["BrushSettings"]
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["State"]
  SETTABLE R0 R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"CacheID", "CachePoint"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K1 ["CacheID"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["CachePoint"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Origin"]
  GETTABLEKS R0 R1 K1 ["Position"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["UnitRay"]
  GETTABLEKS R1 R2 K3 ["Direction"]
  GETIMPORT R2 K6 [RaycastParams.new]
  CALL R2 0 1
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["IgnoreParts"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+25]
  NEWTABLE R3 0 1
  GETUPVAL R4 4
  SETLIST R3 R4 1 [1]
  GETUPVAL R4 5
  LOADK R6 K9 ["Baseplate"]
  NAMECALL R4 R4 K10 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  FASTCALL2 TABLE_INSERT R3 R4 [+5]
  MOVE R6 R3
  MOVE R7 R4
  GETIMPORT R5 K13 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K17 [Enum.RaycastFilterType.Whitelist]
  SETTABLEKS R5 R2 K18 ["FilterType"]
  SETTABLEKS R3 R2 K19 ["FilterDescendantsInstances"]
  JUMP [+29]
  NEWTABLE R3 0 0
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K20 ["LocalPlayer"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K20 ["LocalPlayer"]
  GETTABLEKS R4 R5 K21 ["Chracter"]
  JUMPIFNOT R4 [+11]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K20 ["LocalPlayer"]
  GETTABLEKS R6 R7 K22 ["Character"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K13 [table.insert]
  CALL R4 2 0
  GETIMPORT R4 K24 [Enum.RaycastFilterType.Blacklist]
  SETTABLEKS R4 R2 K18 ["FilterType"]
  SETTABLEKS R3 R2 K19 ["FilterDescendantsInstances"]
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K25 ["IgnoreWater"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K25 ["IgnoreWater"]
  LOADB R3 1
  SETTABLEKS R3 R2 K26 ["BruteForceAllSlow"]
  GETUPVAL R3 5
  MOVE R5 R0
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K27 ["RayLength"]
  MUL R6 R1 R7
  MOVE R7 R2
  NAMECALL R3 R3 K28 ["Raycast"]
  CALL R3 4 1
  GETUPVAL R4 8
  NAMECALL R4 R4 K29 ["IsMouseDown"]
  CALL R4 1 1
  JUMPIFNOT R4 [+59]
  GETUPVAL R4 9
  CALL R4 0 1
  JUMPIFNOT R4 [+56]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K1 ["Position"]
  JUMP [+3]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K1 ["Position"]
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K30 ["CachePoint"]
  SUB R5 R4 R6
  GETTABLEKS R6 R5 K31 ["magnitude"]
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K32 ["CacheID"]
  GETUPVAL R9 12
  CALL R9 0 1
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K33 ["TerrainCacheUpdateThreshold"]
  MUL R8 R9 R10
  JUMPIFLT R8 R6 [+2]
  JUMPIF R7 [+18]
  GETUPVAL R8 5
  GETUPVAL R12 11
  GETTABLEKS R11 R12 K32 ["CacheID"]
  ORK R10 R11 K34 [""]
  MOVE R11 R4
  GETUPVAL R12 12
  CALL R12 0 -1
  NAMECALL R8 R8 K35 ["CacheCurrentTerrain"]
  CALL R8 -1 1
  MOVE R7 R8
  GETUPVAL R8 13
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U14
  CAPTURE REF R7
  CAPTURE VAL R4
  CALL R8 1 0
  GETUPVAL R8 5
  MOVE R10 R7
  MOVE R11 R0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K27 ["RayLength"]
  MUL R12 R1 R13
  LOADB R13 1
  NAMECALL R8 R8 K36 ["RaycastCachedTerrain"]
  CALL R8 5 1
  MOVE R3 R8
  CLOSEUPVALS R7
  JUMPIFNOT R3 [+26]
  DUPTABLE R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
  GETTABLEKS R7 R3 K1 ["Position"]
  SUB R6 R7 R0
  GETTABLEKS R5 R6 K42 ["Magnitude"]
  SETTABLEKS R5 R4 K37 ["Distance"]
  GETTABLEKS R5 R3 K38 ["Instance"]
  SETTABLEKS R5 R4 K38 ["Instance"]
  GETTABLEKS R5 R3 K39 ["Material"]
  SETTABLEKS R5 R4 K39 ["Material"]
  GETTABLEKS R5 R3 K40 ["Normal"]
  SETTABLEKS R5 R4 K40 ["Normal"]
  GETTABLEKS R5 R3 K1 ["Position"]
  SETTABLEKS R5 R4 K1 ["Position"]
  MOVE R3 R4
  JUMP [+43]
  GETUPVAL R4 15
  CALL R4 0 1
  GETUPVAL R5 16
  MOVE R6 R0
  MOVE R7 R1
  GETIMPORT R8 K45 [Vector3.zero]
  GETIMPORT R9 K47 [Vector3.yAxis]
  CALL R5 4 2
  JUMPIFNOT R5 [+16]
  JUMPIFNOT R6 [+15]
  LOADN R7 0
  JUMPIFNOTLE R7 R6 [+13]
  DUPTABLE R7 K48 [{"Distance", "Normal", "Position"}]
  SUB R9 R5 R0
  GETTABLEKS R8 R9 K42 ["Magnitude"]
  SETTABLEKS R8 R7 K37 ["Distance"]
  SETTABLEKS R4 R7 K40 ["Normal"]
  SETTABLEKS R5 R7 K1 ["Position"]
  MOVE R3 R7
  JUMP [+16]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K27 ["RayLength"]
  MUL R8 R1 R9
  ADD R7 R0 R8
  DUPTABLE R8 K48 [{"Distance", "Normal", "Position"}]
  SUB R10 R7 R0
  GETTABLEKS R9 R10 K42 ["Magnitude"]
  SETTABLEKS R9 R8 K37 ["Distance"]
  SETTABLEKS R4 R8 K40 ["Normal"]
  SETTABLEKS R7 R8 K1 ["Position"]
  MOVE R3 R8
  GETUPVAL R4 17
  GETUPVAL R5 1
  GETUPVAL R7 8
  NAMECALL R7 R7 K29 ["IsMouseDown"]
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  GETUPVAL R6 18
  JUMP [+10]
  GETIMPORT R6 K51 [CFrame.lookAt]
  GETTABLEKS R7 R3 K1 ["Position"]
  GETTABLEKS R9 R3 K1 ["Position"]
  GETUPVAL R10 15
  CALL R10 0 1
  ADD R8 R9 R10
  CALL R6 2 1
  GETUPVAL R7 0
  CALL R4 3 1
  JUMPIFNOT R4 [+1]
  MOVE R3 R4
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["BrushSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K52 ["Snapping"]
  GETTABLE R5 R6 R7
  GETUPVAL R6 19
  GETIMPORT R7 K54 [table.clone]
  MOVE R8 R3
  CALL R7 1 -1
  CALL R6 -1 0
  GETUPVAL R7 20
  GETTABLEKS R6 R7 K55 ["Off"]
  JUMPIFEQ R5 R6 [+40]
  GETUPVAL R6 21
  GETTABLEKS R7 R3 K1 ["Position"]
  CALL R6 1 1
  GETUPVAL R9 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["BrushSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K56 ["FixedPlane"]
  GETTABLE R7 R8 R9
  JUMPIFNOT R7 [+18]
  GETTABLEKS R8 R6 K57 ["X"]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["BrushSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K58 ["FixedPlanePosition"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R6 K59 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K60 [Vector3.new]
  CALL R7 3 1
  MOVE R6 R7
  SUB R8 R6 R0
  GETTABLEKS R7 R8 K42 ["Magnitude"]
  SETTABLEKS R7 R3 K37 ["Distance"]
  SETTABLEKS R6 R3 K1 ["Position"]
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["CacheID"]
  JUMPIFNOT R1 [+1]
  RETURN R0 1
  DUPTABLE R1 K2 [{"CacheID", "CachePoint"}]
  GETUPVAL R2 0
  LOADK R4 K3 [""]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Position"]
  GETUPVAL R6 2
  CALL R6 0 -1
  NAMECALL R2 R2 K5 ["CacheCurrentTerrain"]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K0 ["CacheID"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Position"]
  SETTABLEKS R2 R1 K1 ["CachePoint"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CacheID"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CacheID"]
  NAMECALL R0 R0 K1 ["ClearCachedTerrain"]
  CALL R0 2 0
  GETUPVAL R0 2
  DUPTABLE R1 K3 [{"CachePoint"}]
  GETIMPORT R2 K6 [Vector3.zero]
  SETTABLEKS R2 R1 K2 ["CachePoint"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isMouseMoveReserved"]
  CALL R0 1 1
  JUMPIF R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R1 2
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["IsMouseDown"]
  CALL R2 1 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 3
  JUMPIF R0 [+3]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K2 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R4 R3 K1 ["getMouse"]
  CALL R4 1 1
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"Distance", "Normal", "Position"}]
  GETTABLEKS R9 R4 K6 ["Origin"]
  GETTABLEKS R8 R9 K4 ["Position"]
  GETTABLEKS R7 R8 K7 ["Magnitude"]
  SETTABLEKS R7 R6 K2 ["Distance"]
  GETIMPORT R7 K10 [Vector3.yAxis]
  SETTABLEKS R7 R6 K3 ["Normal"]
  GETIMPORT R7 K12 [Vector3.zero]
  SETTABLEKS R7 R6 K4 ["Position"]
  CALL R5 1 2
  GETUPVAL R7 1
  DUPTABLE R8 K5 [{"Distance", "Normal", "Position"}]
  GETTABLEKS R11 R4 K6 ["Origin"]
  GETTABLEKS R10 R11 K4 ["Position"]
  GETTABLEKS R9 R10 K7 ["Magnitude"]
  SETTABLEKS R9 R8 K2 ["Distance"]
  GETIMPORT R9 K10 [Vector3.yAxis]
  SETTABLEKS R9 R8 K3 ["Normal"]
  GETIMPORT R9 K12 [Vector3.zero]
  SETTABLEKS R9 R8 K4 ["Position"]
  CALL R7 1 2
  GETUPVAL R9 1
  GETIMPORT R10 K15 [CFrame.lookAt]
  GETTABLEKS R11 R5 K4 ["Position"]
  GETTABLEKS R13 R5 K4 ["Position"]
  GETIMPORT R14 K10 [Vector3.yAxis]
  ADD R12 R13 R14
  CALL R10 2 -1
  CALL R9 -1 2
  GETUPVAL R11 2
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  NEWTABLE R13 0 2
  MOVE R14 R0
  MOVE R15 R5
  SETLIST R13 R14 2 [1]
  CALL R11 2 0
  GETUPVAL R11 1
  DUPTABLE R12 K18 [{"CacheID", "CachePoint"}]
  LOADNIL R13
  SETTABLEKS R13 R12 K16 ["CacheID"]
  GETIMPORT R13 K12 [Vector3.zero]
  SETTABLEKS R13 R12 K17 ["CachePoint"]
  CALL R11 1 2
  GETUPVAL R13 1
  NAMECALL R14 R3 K19 ["isMouseMoveReserved"]
  CALL R14 1 -1
  CALL R13 -1 2
  GETUPVAL R15 4
  CALL R15 0 1
  GETUPVAL R16 5
  NEWCLOSURE R17 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NEWTABLE R18 0 1
  MOVE R19 R1
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R17 5
  NEWCLOSURE R18 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWTABLE R19 0 2
  MOVE R20 R1
  MOVE R21 R0
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R18 5
  NEWCLOSURE R19 P3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R6
  NEWTABLE R20 0 4
  MOVE R21 R9
  MOVE R22 R2
  MOVE R23 R0
  MOVE R24 R1
  SETLIST R20 R21 4 [1]
  CALL R18 2 1
  GETUPVAL R19 5
  NEWCLOSURE R20 P4
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R15
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE UPVAL U14
  CAPTURE UPVAL U3
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  NEWTABLE R21 0 6
  MOVE R22 R9
  MOVE R23 R11
  MOVE R24 R16
  MOVE R25 R17
  MOVE R26 R5
  MOVE R27 R1
  SETLIST R21 R22 6 [1]
  CALL R19 2 1
  GETUPVAL R20 19
  GETTABLEKS R21 R4 K20 ["Button1Down"]
  NEWCLOSURE R22 P5
  CAPTURE VAL R12
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE VAL R16
  NEWTABLE R23 0 1
  MOVE R24 R5
  SETLIST R23 R24 1 [1]
  CALL R20 3 0
  GETUPVAL R20 19
  GETTABLEKS R21 R4 K21 ["Button1Up"]
  NEWCLOSURE R22 P6
  CAPTURE VAL R11
  CAPTURE UPVAL U12
  CAPTURE VAL R12
  NEWTABLE R23 0 1
  MOVE R24 R11
  SETLIST R23 R24 1 [1]
  CALL R20 3 0
  GETUPVAL R20 19
  GETTABLEKS R21 R3 K22 ["MouseMoveAction"]
  NEWCLOSURE R22 P7
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWTABLE R23 0 1
  MOVE R24 R13
  SETLIST R23 R24 1 [1]
  CALL R20 3 0
  GETUPVAL R20 2
  NEWCLOSURE R21 P8
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWTABLE R22 0 4
  MOVE R23 R0
  MOVE R24 R19
  MOVE R25 R18
  MOVE R26 R13
  SETLIST R22 R23 4 [1]
  CALL R20 2 0
  MOVE R20 R5
  MOVE R21 R7
  RETURN R20 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Controllers"]
  GETTABLEKS R7 R8 K14 ["ShortcutController"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useEventConnection"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["useTerrain"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K18 ["Resources"]
  GETTABLEKS R10 R11 K19 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETTABLEKS R11 R12 K21 ["ApplyPlaneLock"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K20 ["Util"]
  GETTABLEKS R12 R13 K22 ["getCameraLookPlane"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K20 ["Util"]
  GETTABLEKS R13 R14 K23 ["getPlaneIntersection"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K20 ["Util"]
  GETTABLEKS R14 R15 K24 ["getSnappedToVoxel"]
  CALL R13 1 1
  GETIMPORT R14 K26 [game]
  LOADK R16 K27 ["Players"]
  NAMECALL R14 R14 K28 ["GetService"]
  CALL R14 2 1
  GETIMPORT R15 K26 [game]
  LOADK R17 K29 ["Workspace"]
  NAMECALL R15 R15 K28 ["GetService"]
  CALL R15 2 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K30 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K31 ["BrushSettings"]
  GETTABLEKS R18 R16 K32 ["Categories"]
  GETTABLEKS R19 R16 K33 ["MaterialSettings"]
  GETTABLEKS R20 R16 K34 ["PlaneLock"]
  GETTABLEKS R21 R16 K35 ["Snapping"]
  GETTABLEKS R22 R16 K36 ["Tools"]
  DUPCLOSURE R23 K37 [PROTO_12]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R7
  RETURN R23 1
