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
  GETUPVAL R5 0
  MOVE R6 R1
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETUPVAL R9 3
  CALL R5 4 2
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETTABLE R7 R8 R9
  GETUPVAL R11 5
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLE R8 R9 R10
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+6]
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+3]
  LOADB R4 1
  JUMP [0]
  JUMPIF R4 [+3]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+134]
  GETUPVAL R9 6
  JUMPIFNOTLT R9 R3 [+55]
  LOADN R9 1
  JUMPIFNOTLT R8 R9 [+52]
  ADD R9 R8 R2
  GETUPVAL R11 7
  GETUPVAL R12 4
  MOVE R13 R0
  GETUPVAL R14 8
  GETUPVAL R15 9
  CALL R11 4 1
  OR R10 R11 R7
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R14 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R10 R14 [+3]
  LOADN R13 0
  JUMP [+6]
  LOADN R14 1
  JUMPIFNOTLE R9 R14 [+3]
  MOVE R13 R9
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 11
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  OR R13 R10 R7
  SETTABLE R13 R11 R12
  SUBK R2 R9 K7 [1]
  LOADN R11 0
  JUMPIFNOTLT R11 R2 [+4]
  MOVE R11 R2
  MOVE R12 R4
  RETURN R11 2
  LOADN R11 0
  MOVE R12 R4
  RETURN R11 2
  GETUPVAL R9 6
  JUMPIFNOTLE R3 R9 [+74]
  GETUPVAL R10 6
  MINUS R9 R10
  JUMPIFNOTLT R9 R3 [+70]
  GETUPVAL R11 6
  ADD R10 R3 R11
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K8 ["VoxelResolution"]
  DIV R9 R10 R11
  ADD R10 R8 R2
  GETIMPORT R12 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R7 R12 [+9]
  GETUPVAL R12 7
  GETUPVAL R13 4
  MOVE R14 R0
  GETUPVAL R15 8
  GETUPVAL R16 9
  CALL R12 4 1
  OR R11 R12 R7
  JUMP [+1]
  MOVE R11 R7
  GETUPVAL R14 10
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  GETIMPORT R15 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R11 R15 [+3]
  LOADN R14 0
  JUMP [+5]
  JUMPIFNOTLE R10 R9 [+3]
  MOVE R14 R10
  JUMP [+1]
  MOVE R14 R9
  SETTABLE R14 R12 R13
  GETUPVAL R14 11
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  OR R14 R11 R7
  SETTABLE R14 R12 R13
  LOADN R12 0
  MOVE R13 R4
  GETUPVAL R18 10
  GETTABLEKS R19 R0 K0 ["X"]
  GETTABLE R17 R18 R19
  GETTABLEKS R18 R0 K1 ["Y"]
  GETTABLE R16 R17 R18
  GETTABLEKS R17 R0 K2 ["Z"]
  GETTABLE R15 R16 R17
  JUMPIFLT R8 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  RETURN R12 3
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2

PROTO_2:
  GETUPVAL R5 0
  MOVE R6 R1
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETUPVAL R9 3
  CALL R5 4 2
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETTABLE R7 R8 R9
  GETUPVAL R11 5
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLE R8 R9 R10
  GETUPVAL R9 6
  JUMPIFNOT R9 [+7]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFNOTEQ R8 R9 [+4]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R10 0
  JUMPIFNOTLT R10 R5 [+12]
  LOADB R9 1
  LOADN R10 1
  JUMPIFLT R7 R10 [+9]
  GETUPVAL R10 7
  JUMPIFNOT R10 [+5]
  LOADB R9 1
  GETIMPORT R10 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R10 [+2]
  MOVE R9 R4
  MOVE R4 R9
  JUMPIF R4 [+3]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+339]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+41]
  GETTABLEKS R9 R0 K1 ["Y"]
  GETUPVAL R10 8
  JUMPIFNOTLE R9 R10 [+37]
  JUMPIFNOTEQKN R7 K7 [0] [+35]
  GETUPVAL R9 9
  JUMPIFNOTLT R9 R3 [+32]
  GETUPVAL R11 10
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLEKS R12 R0 K1 ["Y"]
  GETUPVAL R13 8
  JUMPIFNOTEQ R12 R13 [+3]
  GETUPVAL R11 11
  JUMP [+1]
  LOADN R11 1
  SETTABLE R11 R9 R10
  GETUPVAL R11 12
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETIMPORT R11 K6 [Enum.Material.Water]
  SETTABLE R11 R9 R10
  JUMP [+295]
  GETUPVAL R9 9
  JUMPIFNOTLT R9 R3 [+125]
  LOADN R9 0
  JUMPIFNOTLT R9 R7 [+122]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+4]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R9 [+116]
  SUB R9 R7 R2
  GETUPVAL R10 7
  JUMPIFNOT R10 [+69]
  GETTABLEKS R10 R0 K1 ["Y"]
  GETUPVAL R11 8
  JUMPIFNOTLE R10 R11 [+65]
  GETUPVAL R12 13
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R13 R9 [+3]
  MOVE R12 R9
  JUMP [+1]
  LOADN R12 0
  SETTABLE R12 R10 R11
  GETUPVAL R12 14
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R9 R13 [+4]
  GETIMPORT R12 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R12 R8
  SETTABLE R12 R10 R11
  GETUPVAL R12 10
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  GETTABLEKS R13 R0 K1 ["Y"]
  GETUPVAL R14 8
  JUMPIFNOTEQ R13 R14 [+3]
  GETUPVAL R12 11
  JUMP [+1]
  LOADN R12 1
  SETTABLE R12 R10 R11
  GETUPVAL R12 12
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  GETIMPORT R12 K6 [Enum.Material.Water]
  SETTABLE R12 R10 R11
  JUMP [+33]
  GETUPVAL R12 10
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R13 R9 [+3]
  MOVE R12 R9
  JUMP [+1]
  LOADN R12 0
  SETTABLE R12 R10 R11
  GETUPVAL R12 12
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R9 R13 [+4]
  GETIMPORT R12 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R12 R8
  SETTABLE R12 R10 R11
  SUB R2 R2 R7
  LOADN R10 0
  JUMPIFNOTLT R10 R2 [+4]
  MOVE R10 R2
  MOVE R11 R4
  RETURN R10 2
  LOADN R10 0
  MOVE R11 R4
  RETURN R10 2
  GETUPVAL R9 9
  JUMPIFNOTLE R3 R9 [+166]
  GETUPVAL R10 9
  MINUS R9 R10
  JUMPIFNOTLT R9 R3 [+162]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+4]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R9 [+156]
  LOADN R10 1
  GETUPVAL R13 9
  ADD R12 R3 R13
  GETUPVAL R14 15
  GETTABLEKS R13 R14 K10 ["VoxelResolution"]
  DIV R11 R12 R13
  SUB R9 R10 R11
  SUB R10 R7 R2
  GETUPVAL R11 7
  JUMPIFNOT R11 [+109]
  GETTABLEKS R11 R0 K1 ["Y"]
  GETUPVAL R12 8
  JUMPIFNOTLE R11 R12 [+105]
  JUMPIFNOTLE R9 R10 [+52]
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLEKS R14 R0 K1 ["Y"]
  GETUPVAL R15 8
  JUMPIFNOTEQ R14 R15 [+3]
  GETUPVAL R13 11
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 12
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R13 K6 [Enum.Material.Water]
  SETTABLE R13 R11 R12
  GETUPVAL R13 13
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R10 R11 R12
  GETUPVAL R13 14
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R8 R11 R12
  JUMP [+83]
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLEKS R14 R0 K1 ["Y"]
  GETUPVAL R15 8
  JUMPIFNOTEQ R14 R15 [+3]
  GETUPVAL R13 11
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 12
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R13 K6 [Enum.Material.Water]
  SETTABLE R13 R11 R12
  GETUPVAL R13 13
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R9 R11 R12
  GETUPVAL R13 14
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R8 R11 R12
  JUMP [+32]
  JUMPIFNOTLE R9 R10 [+3]
  MOVE R11 R10
  JUMP [+1]
  MOVE R11 R9
  GETUPVAL R14 10
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  SETTABLE R11 R12 R13
  GETUPVAL R14 12
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  LOADN R15 0
  JUMPIFNOTLE R11 R15 [+4]
  GETIMPORT R14 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R14 R8
  SETTABLE R14 R12 R13
  LOADN R11 0
  MOVE R12 R4
  RETURN R11 2
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2

PROTO_3:
  GETUPVAL R4 0
  MUL R3 R0 R4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["VoxelResolution"]
  MUL R5 R1 R6
  MUL R4 R0 R5
  ADD R2 R3 R4
  RETURN R2 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Direction"]
  GETTABLEKS R5 R0 K2 ["Increment"]
  ORK R4 R5 K1 [1]
  GETTABLEKS R5 R0 K3 ["Size"]
  GETTABLEKS R6 R1 K0 ["Direction"]
  GETTABLEKS R7 R1 K3 ["Size"]
  GETTABLEKS R8 R2 K0 ["Direction"]
  GETTABLEKS R9 R2 K3 ["Size"]
  LOADN R11 0
  JUMPIFNOTLT R4 R11 [+3]
  MOVE R10 R5
  JUMP [+1]
  LOADN R10 1
  LOADN R12 0
  JUMPIFNOTLT R4 R12 [+3]
  LOADN R11 1
  JUMP [+1]
  MOVE R11 R5
  GETUPVAL R14 0
  MUL R13 R3 R14
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K4 ["VoxelResolution"]
  MUL R15 R10 R16
  MUL R14 R3 R15
  ADD R12 R13 R14
  GETUPVAL R15 0
  MUL R14 R3 R15
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K4 ["VoxelResolution"]
  MUL R16 R11 R17
  MUL R15 R3 R16
  ADD R13 R14 R15
  GETUPVAL R15 2
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K7 [Vector3.new]
  CALL R16 3 1
  MUL R14 R15 R16
  MUL R15 R3 R4
  LOADN R18 255
  LOADN R19 255
  LOADN R20 255
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K7 [Vector3.new]
  CALL R17 3 1
  MUL R16 R15 R17
  LOADN R19 1
  MOVE R17 R7
  LOADN R18 1
  FORNPREP R17
  GETUPVAL R22 0
  MUL R21 R6 R22
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K4 ["VoxelResolution"]
  MUL R23 R19 R24
  MUL R22 R6 R23
  ADD R20 R21 R22
  MUL R21 R19 R6
  LOADN R24 1
  MOVE R22 R9
  LOADN R23 1
  FORNPREP R22
  GETUPVAL R28 0
  MUL R27 R8 R28
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K4 ["VoxelResolution"]
  MUL R29 R24 R30
  MUL R28 R8 R29
  ADD R26 R27 R28
  ADD R25 R26 R20
  MUL R26 R24 R8
  GETUPVAL R27 3
  GETUPVAL R28 3
  GETUPVAL R30 4
  NOT R29 R30
  GETUPVAL R31 4
  NOT R30 R31
  GETUPVAL R31 5
  ADD R32 R12 R25
  MOVE R33 R15
  GETUPVAL R34 6
  MOVE R35 R14
  CALL R31 4 2
  GETUPVAL R33 5
  ADD R34 R13 R25
  MOVE R35 R16
  GETUPVAL R36 6
  GETUPVAL R37 2
  CALL R33 4 2
  MULK R36 R32 K8 [256]
  FASTCALL1 MATH_ROUND R36 [+2]
  GETIMPORT R35 K11 [math.round]
  CALL R35 1 1
  DIVK R32 R35 K8 [256]
  MULK R36 R34 K8 [256]
  FASTCALL1 MATH_ROUND R36 [+2]
  GETIMPORT R35 K11 [math.round]
  CALL R35 1 1
  DIVK R34 R35 K8 [256]
  LOADB R35 0
  MOVE R38 R10
  MOVE R36 R11
  MOVE R37 R4
  FORNPREP R36
  GETUPVAL R39 7
  JUMPIFNOT R39 [+36]
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  MINUS R40 R41
  DIVK R39 R40 K12 [2]
  JUMPIFNOTLT R39 R32 [+30]
  JUMPIFEQKN R27 K13 [0] [+28]
  GETUPVAL R42 0
  MUL R41 R3 R42
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K4 ["VoxelResolution"]
  MUL R43 R38 R44
  MUL R42 R3 R43
  ADD R40 R41 R42
  ADD R39 R40 R25
  MUL R42 R3 R38
  ADD R41 R42 R21
  ADD R40 R41 R26
  GETUPVAL R41 8
  MOVE R42 R40
  GETUPVAL R44 9
  SUB R43 R39 R44
  MOVE R44 R27
  MOVE R45 R32
  MOVE R46 R29
  CALL R41 5 3
  MOVE R27 R41
  MOVE R29 R42
  MOVE R35 R43
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  SUB R32 R32 R41
  FORNLOOP R36
  JUMPIF R35 [+42]
  MOVE R38 R11
  MOVE R36 R10
  MINUS R37 R4
  FORNPREP R36
  GETUPVAL R39 10
  JUMPIFNOT R39 [+35]
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  MINUS R40 R41
  DIVK R39 R40 K12 [2]
  JUMPIFNOTLT R39 R34 [+29]
  JUMPIFEQKN R28 K13 [0] [+27]
  GETUPVAL R42 0
  MUL R41 R3 R42
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K4 ["VoxelResolution"]
  MUL R43 R38 R44
  MUL R42 R3 R43
  ADD R40 R41 R42
  ADD R39 R40 R25
  MUL R42 R3 R38
  ADD R41 R42 R21
  ADD R40 R41 R26
  GETUPVAL R41 11
  MOVE R42 R40
  GETUPVAL R44 9
  SUB R43 R39 R44
  MOVE R44 R28
  MOVE R45 R34
  MOVE R46 R30
  CALL R41 5 2
  MOVE R28 R41
  MOVE R30 R42
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  SUB R34 R34 R41
  FORNLOOP R36
  FORNLOOP R22
  FORNLOOP R17
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K4 ["Payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K7 ["Height"]
  GETTABLEKS R6 R4 K8 ["Size"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["FlattenMode"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["PullTerrain"]
  GETTABLE R10 R3 R11
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K13 ["Strength"]
  GETTABLE R11 R3 R12
  GETUPVAL R13 2
  JUMPIFNOT R13 [+5]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K14 ["WaterAutofill"]
  GETTABLE R12 R3 R13
  JUMP [+1]
  LOADNIL R12
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K0 ["State"]
  GETTABLE R13 R3 R14
  LOADB R14 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K15 ["Grow"]
  JUMPIFEQ R8 R15 [+8]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K16 ["Both"]
  JUMPIFEQ R8 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADB R15 1
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["Erode"]
  JUMPIFEQ R8 R16 [+8]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K16 ["Both"]
  JUMPIFEQ R8 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K18 ["Sphere"]
  JUMPIFNOTEQ R7 R18 [+3]
  MOVE R17 R6
  JUMP [+1]
  MOVE R17 R5
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K19 ["VoxelResolution"]
  MUL R16 R17 R18
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K19 ["VoxelResolution"]
  MUL R17 R6 R18
  MULK R18 R17 K20 [0.5]
  GETTABLEKS R19 R2 K21 ["Plane"]
  GETTABLEKS R20 R2 K22 ["PlanePosition"]
  GETTABLEKS R22 R19 K23 ["X"]
  FASTCALL1 MATH_ABS R22 [+2]
  GETIMPORT R21 K26 [math.abs]
  CALL R21 1 1
  GETTABLEKS R23 R19 K27 ["Y"]
  FASTCALL1 MATH_ABS R23 [+2]
  GETIMPORT R22 K26 [math.abs]
  CALL R22 1 1
  GETTABLEKS R24 R19 K28 ["Z"]
  FASTCALL1 MATH_ABS R24 [+2]
  GETIMPORT R23 K26 [math.abs]
  CALL R23 1 1
  JUMPIFNOTLE R23 R22 [+18]
  JUMPIFNOTLE R21 R22 [+16]
  LOADN R25 0
  GETTABLEKS R27 R19 K27 ["Y"]
  LOADN R28 0
  JUMPIFNOTLT R28 R27 [+3]
  LOADN R26 1
  JUMP [+1]
  LOADN R26 255
  LOADN R27 0
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K31 [Vector3.new]
  CALL R24 3 1
  JUMP [+33]
  JUMPIFNOTLE R22 R23 [+18]
  JUMPIFNOTLE R21 R23 [+16]
  LOADN R25 0
  LOADN R26 0
  GETTABLEKS R28 R19 K28 ["Z"]
  LOADN R29 0
  JUMPIFNOTLT R29 R28 [+3]
  LOADN R27 1
  JUMP [+1]
  LOADN R27 255
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K31 [Vector3.new]
  CALL R24 3 1
  JUMP [+14]
  GETTABLEKS R26 R19 K23 ["X"]
  LOADN R27 0
  JUMPIFNOTLT R27 R26 [+3]
  LOADN R25 1
  JUMP [+1]
  LOADN R25 255
  LOADN R26 0
  LOADN R27 0
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K31 [Vector3.new]
  CALL R24 3 1
  GETUPVAL R25 6
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K32 ["PivotPosition"]
  GETTABLE R26 R3 R27
  GETTABLEKS R27 R13 K33 ["Position"]
  MOVE R28 R16
  CALL R25 3 1
  GETUPVAL R26 7
  GETTABLEKS R27 R2 K33 ["Position"]
  MOVE R28 R25
  MOVE R29 R18
  CALL R26 3 1
  LENGTH R28 R26
  GETTABLE R27 R26 R28
  SETTABLEKS R27 R2 K33 ["Position"]
  GETUPVAL R27 8
  MOVE R28 R25
  MOVE R29 R18
  MOVE R30 R16
  CALL R27 3 2
  MOVE R29 R26
  LOADNIL R30
  LOADNIL R31
  FORGPREP R29
  LOADNIL R34
  GETUPVAL R35 9
  CALL R35 0 1
  JUMPIFNOT R35 [+4]
  GETIMPORT R35 K36 [os.clock]
  CALL R35 0 1
  MOVE R34 R35
  GETIMPORT R35 K38 [Region3.new]
  MOVE R36 R27
  MOVE R37 R28
  CALL R35 2 1
  GETTABLEKS R38 R28 K23 ["X"]
  GETTABLEKS R39 R27 K23 ["X"]
  SUB R37 R38 R39
  MULK R36 R37 K20 [0.5]
  GETUPVAL R38 10
  GETTABLEKS R37 R38 K39 ["Terrain"]
  MOVE R39 R35
  GETUPVAL R41 5
  GETTABLEKS R40 R41 K19 ["VoxelResolution"]
  NAMECALL R37 R37 K40 ["ReadVoxels"]
  CALL R37 3 2
  LOADNIL R39
  SETTABLEKS R39 R38 K8 ["Size"]
  LOADNIL R39
  SETTABLEKS R39 R37 K8 ["Size"]
  GETUPVAL R40 10
  GETTABLEKS R39 R40 K39 ["Terrain"]
  MOVE R41 R35
  GETUPVAL R43 5
  GETTABLEKS R42 R43 K19 ["VoxelResolution"]
  NAMECALL R39 R39 K40 ["ReadVoxels"]
  CALL R39 3 2
  LENGTH R41 R37
  GETTABLEN R43 R37 1
  LENGTH R42 R43
  GETTABLEN R45 R37 1
  GETTABLEN R44 R45 1
  LENGTH R43 R44
  MOVE R45 R41
  MOVE R46 R42
  MOVE R47 R43
  FASTCALL VECTOR [+2]
  GETIMPORT R44 K31 [Vector3.new]
  CALL R44 3 1
  LOADNIL R45
  LOADNIL R46
  NEWTABLE R47 0 0
  NEWTABLE R48 0 0
  JUMPIFNOT R12 [+18]
  GETUPVAL R49 11
  MOVE R50 R37
  MOVE R51 R38
  CALL R49 2 2
  MOVE R45 R49
  MOVE R46 R50
  GETUPVAL R50 10
  GETTABLEKS R49 R50 K39 ["Terrain"]
  MOVE R51 R35
  GETUPVAL R53 5
  GETTABLEKS R52 R53 K19 ["VoxelResolution"]
  NAMECALL R49 R49 K40 ["ReadVoxels"]
  CALL R49 3 2
  MOVE R47 R49
  MOVE R48 R50
  NEWCLOSURE R49 P0
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE VAL R44
  CAPTURE VAL R12
  CAPTURE VAL R40
  CAPTURE VAL R39
  CAPTURE UPVAL U5
  NEWCLOSURE R50 P1
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R36
  CAPTURE VAL R38
  CAPTURE VAL R37
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE REF R45
  CAPTURE UPVAL U13
  CAPTURE VAL R40
  CAPTURE REF R46
  CAPTURE VAL R39
  CAPTURE REF R48
  CAPTURE REF R47
  CAPTURE UPVAL U5
  NEWCLOSURE R51 P2
  CAPTURE VAL R27
  CAPTURE UPVAL U5
  NEWCLOSURE R52 P3
  CAPTURE VAL R27
  CAPTURE UPVAL U5
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE UPVAL U15
  CAPTURE VAL R20
  CAPTURE VAL R14
  CAPTURE VAL R49
  CAPTURE VAL R33
  CAPTURE VAL R15
  CAPTURE VAL R50
  GETTABLEKS R53 R24 K23 ["X"]
  JUMPIFEQKN R53 K41 [0] [+32]
  DUPTABLE R53 K44 [{"Direction", "Increment", "Size"}]
  GETIMPORT R54 K46 [Vector3.xAxis]
  SETTABLEKS R54 R53 K42 ["Direction"]
  GETTABLEKS R54 R24 K23 ["X"]
  SETTABLEKS R54 R53 K43 ["Increment"]
  SETTABLEKS R41 R53 K8 ["Size"]
  DUPTABLE R54 K47 [{"Direction", "Size"}]
  GETIMPORT R55 K49 [Vector3.yAxis]
  SETTABLEKS R55 R54 K42 ["Direction"]
  SETTABLEKS R42 R54 K8 ["Size"]
  DUPTABLE R55 K47 [{"Direction", "Size"}]
  GETIMPORT R56 K51 [Vector3.zAxis]
  SETTABLEKS R56 R55 K42 ["Direction"]
  SETTABLEKS R43 R55 K8 ["Size"]
  MOVE R56 R52
  MOVE R57 R53
  MOVE R58 R54
  MOVE R59 R55
  CALL R56 3 0
  JUMP [+69]
  GETTABLEKS R53 R24 K27 ["Y"]
  JUMPIFEQKN R53 K41 [0] [+32]
  DUPTABLE R53 K44 [{"Direction", "Increment", "Size"}]
  GETIMPORT R54 K49 [Vector3.yAxis]
  SETTABLEKS R54 R53 K42 ["Direction"]
  GETTABLEKS R54 R24 K27 ["Y"]
  SETTABLEKS R54 R53 K43 ["Increment"]
  SETTABLEKS R42 R53 K8 ["Size"]
  DUPTABLE R54 K47 [{"Direction", "Size"}]
  GETIMPORT R55 K46 [Vector3.xAxis]
  SETTABLEKS R55 R54 K42 ["Direction"]
  SETTABLEKS R41 R54 K8 ["Size"]
  DUPTABLE R55 K47 [{"Direction", "Size"}]
  GETIMPORT R56 K51 [Vector3.zAxis]
  SETTABLEKS R56 R55 K42 ["Direction"]
  SETTABLEKS R43 R55 K8 ["Size"]
  MOVE R56 R52
  MOVE R57 R53
  MOVE R58 R54
  MOVE R59 R55
  CALL R56 3 0
  JUMP [+34]
  GETTABLEKS R53 R24 K28 ["Z"]
  JUMPIFEQKN R53 K41 [0] [+31]
  DUPTABLE R53 K44 [{"Direction", "Increment", "Size"}]
  GETIMPORT R54 K51 [Vector3.zAxis]
  SETTABLEKS R54 R53 K42 ["Direction"]
  GETTABLEKS R54 R24 K28 ["Z"]
  SETTABLEKS R54 R53 K43 ["Increment"]
  SETTABLEKS R43 R53 K8 ["Size"]
  DUPTABLE R54 K47 [{"Direction", "Size"}]
  GETIMPORT R55 K46 [Vector3.xAxis]
  SETTABLEKS R55 R54 K42 ["Direction"]
  SETTABLEKS R41 R54 K8 ["Size"]
  DUPTABLE R55 K47 [{"Direction", "Size"}]
  GETIMPORT R56 K49 [Vector3.yAxis]
  SETTABLEKS R56 R55 K42 ["Direction"]
  SETTABLEKS R42 R55 K8 ["Size"]
  MOVE R56 R52
  MOVE R57 R53
  MOVE R58 R54
  MOVE R59 R55
  CALL R56 3 0
  JUMPIFNOT R12 [+12]
  GETUPVAL R54 10
  GETTABLEKS R53 R54 K39 ["Terrain"]
  MOVE R55 R35
  GETUPVAL R57 5
  GETTABLEKS R56 R57 K19 ["VoxelResolution"]
  MOVE R57 R47
  MOVE R58 R48
  NAMECALL R53 R53 K52 ["WriteVoxels"]
  CALL R53 5 0
  GETUPVAL R54 10
  GETTABLEKS R53 R54 K39 ["Terrain"]
  MOVE R55 R35
  GETUPVAL R57 5
  GETTABLEKS R56 R57 K19 ["VoxelResolution"]
  MOVE R57 R39
  MOVE R58 R40
  NAMECALL R53 R53 K52 ["WriteVoxels"]
  CALL R53 5 0
  GETUPVAL R53 9
  CALL R53 0 1
  JUMPIFNOT R53 [+10]
  GETUPVAL R56 16
  GETTABLEKS R55 R56 K53 ["NormalizeBrushTimer"]
  MOVE R56 R34
  MOVE R57 R6
  MOVE R58 R5
  CALL R55 3 -1
  NAMECALL R53 R1 K54 ["addTimeStatistic"]
  CALL R53 -1 0
  CLOSEUPVALS R45
  FORGLOOP R29 2 [-274]
  LOADB R29 1
  LOADN R30 0
  RETURN R29 2

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChangeHistoryService"]
  LOADK R2 K1 ["Flatten"]
  NAMECALL R0 R0 K2 ["SetWaypoint"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R1
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 17
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
  GETTABLEKS R7 R2 K14 ["CalculateBrushPower"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["CalculateWaterLevel"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K16 ["ClampVoxelBoundaries"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K17 ["ConvertForPivot"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R2 K18 ["getDraggedPositions"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R2 K19 ["getPlaneIntersection"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K20 ["Types"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K21 ["BrushShape"]
  GETTABLEKS R14 R12 K22 ["BrushSettings"]
  GETTABLEKS R15 R12 K23 ["Category"]
  GETTABLEKS R16 R12 K24 ["FlattenMode"]
  GETTABLEKS R17 R12 K25 ["FlattenPlane"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K26 ["Flags"]
  GETTABLEKS R19 R20 K27 ["getFFlagTerrainEditorWaterAutofill"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K26 ["Flags"]
  GETTABLEKS R20 R21 K28 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R19 1 1
  GETTABLEKS R21 R1 K30 ["VoxelResolution"]
  MULK R20 R21 K29 [0.5]
  DUPCLOSURE R21 K31 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R21 1
