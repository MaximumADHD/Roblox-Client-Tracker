PROTO_0:
  GETTABLEKS R3 R0 K0 ["Y"]
  GETTABLEKS R4 R1 K1 ["X"]
  GETTABLEKS R5 R1 K0 ["Y"]
  GETTABLEKS R6 R1 K2 ["Z"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Biomes"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["DefaultBiomeFill"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["DefaultBiomeSurface"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["DefaultBiomeValue"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["HasCaves"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["MapHeight"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["SurfaceThickness"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["WaterLevel"]
  FASTCALL3 VECTOR R4 R3 R6
  MOVE R16 R4
  MOVE R17 R3
  MOVE R18 R6
  GETIMPORT R15 K13 [Vector3.new]
  CALL R15 3 1
  SUBK R18 R3 K14 [1]
  SUBK R19 R5 K14 [1]
  DIV R17 R18 R19
  SUBRK R16 R14 K17 ["Enum"]
  MULK R18 R16 K15 [0.9]
  LOADK R20 K16 [0.1]
  GETUPVAL R21 1
  GETUPVAL R22 2
  MOVE R23 R15
  LOADN R24 107
  LOADN R25 15
  CALL R22 3 -1
  CALL R21 -1 1
  MUL R19 R20 R21
  ADD R17 R18 R19
  LOADN R18 0
  GETIMPORT R19 K20 [Enum.Material.CrackedLava]
  GETIMPORT R20 K22 [Enum.Material.Rock]
  LOADK R21 K23 [0.65]
  JUMPIFLT R21 R16 [+4]
  LOADK R21 K16 [0.1]
  JUMPIFNOTLT R16 R21 [+3]
  LOADK R18 K24 [0.5]
  JUMP [+75]
  LENGTH R21 R7
  JUMPIFNOTEQKN R21 K14 [1] [+17]
  GETUPVAL R22 3
  GETTABLEN R23 R7 1
  GETTABLE R21 R22 R23
  JUMPIFNOT R21 [+8]
  MOVE R22 R21
  MOVE R23 R15
  MOVE R24 R17
  CALL R22 2 3
  MOVE R18 R22
  MOVE R19 R23
  MOVE R20 R24
  JUMP [+60]
  MOVE R18 R10
  MOVE R19 R9
  MOVE R20 R8
  JUMP [+56]
  LOADN R21 0
  GETTABLEKS R22 R2 K25 ["WeightPoints"]
  LOADNIL R23
  LOADNIL R24
  FORGPREP R22
  GETUPVAL R28 3
  GETTABLE R27 R28 R25
  JUMPIFNOT R27 [+11]
  MOVE R28 R27
  MOVE R29 R15
  MOVE R30 R17
  CALL R28 2 3
  SETTABLEKS R28 R26 K26 ["BiomeValue"]
  SETTABLEKS R29 R26 K27 ["BiomeSurface"]
  SETTABLEKS R30 R26 K28 ["BiomeFill"]
  JUMP [+6]
  SETTABLEKS R10 R26 K26 ["BiomeValue"]
  SETTABLEKS R9 R26 K27 ["BiomeSurface"]
  SETTABLEKS R8 R26 K28 ["BiomeFill"]
  GETTABLEKS R29 R26 K26 ["BiomeValue"]
  GETTABLEKS R30 R26 K29 ["Weight"]
  MUL R28 R29 R30
  ADD R21 R21 R28
  FORGLOOP R22 2 [-27]
  GETTABLEKS R22 R2 K25 ["WeightPoints"]
  LOADNIL R23
  LOADNIL R24
  FORGPREP R22
  GETUPVAL R27 4
  MOVE R28 R25
  GETTABLEKS R29 R26 K29 ["Weight"]
  GETTABLEKS R30 R26 K26 ["BiomeValue"]
  MOVE R31 R21
  CALL R27 4 1
  JUMPIFNOTLT R18 R27 [+6]
  MOVE R18 R27
  GETTABLEKS R19 R26 K27 ["BiomeSurface"]
  GETTABLEKS R20 R26 K28 ["BiomeFill"]
  FORGLOOP R22 2 [-16]
  MULK R22 R16 K24 [0.5]
  MULK R23 R18 K24 [0.5]
  ADD R21 R22 R23
  LOADB R22 0
  SUBRK R23 R24 K13 [Vector3.new]
  JUMPIFNOTLT R23 R21 [+7]
  LOADK R24 K24 [0.5]
  ADD R23 R24 R13
  JUMPIFLT R21 R23 [+2]
  LOADB R22 0 +1
  LOADB R22 1
  LOADN R23 0
  GETTABLEKS R24 R2 K7 ["HasCaves"]
  JUMPIF R24 [+5]
  LOADK R25 K23 [0.65]
  JUMPIFLT R25 R16 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  MOVE R26 R22
  JUMPIFNOT R26 [+6]
  SUBRK R27 R14 K16 [0.1]
  ADDK R28 R14 K30 [0.005]
  JUMPIFLT R27 R28 [+2]
  LOADB R26 0 +1
  LOADB R26 1
  NOT R25 R26
  MOVE R27 R22
  JUMPIFNOT R27 [+6]
  SUBRK R28 R14 K16 [0.1]
  ADDK R29 R14 K31 [0.58]
  JUMPIFLT R29 R28 [+2]
  LOADB R27 0 +1
  LOADB R27 1
  NOT R26 R27
  JUMPIFNOT R11 [+86]
  JUMPIFNOT R24 [+85]
  JUMPIFNOT R25 [+84]
  JUMPIFNOT R26 [+83]
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K32 ["Ridge"]
  GETUPVAL R28 1
  GETUPVAL R29 2
  MOVE R30 R15
  LOADN R31 4
  LOADN R32 30
  CALL R29 3 -1
  CALL R28 -1 -1
  CALL R27 -1 1
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K33 ["Threshold"]
  MOVE R29 R27
  LOADK R30 K34 [0.84]
  LOADK R31 K35 [0.01]
  CALL R28 3 1
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K32 ["Ridge"]
  GETUPVAL R30 1
  GETUPVAL R31 2
  MOVE R32 R15
  LOADN R33 5
  LOADN R34 30
  CALL R31 3 -1
  CALL R30 -1 -1
  CALL R29 -1 1
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K33 ["Threshold"]
  MOVE R31 R29
  LOADK R32 K34 [0.84]
  LOADK R33 K35 [0.01]
  CALL R30 3 1
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K32 ["Ridge"]
  GETUPVAL R32 1
  GETUPVAL R33 2
  MOVE R34 R15
  LOADN R35 6
  LOADN R36 30
  CALL R33 3 -1
  CALL R32 -1 -1
  CALL R31 -1 1
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K33 ["Threshold"]
  MOVE R33 R31
  LOADK R34 K34 [0.84]
  LOADK R35 K35 [0.01]
  CALL R32 3 1
  JUMPIF R22 [+2]
  LOADN R33 0
  JUMP [+14]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K33 ["Threshold"]
  GETUPVAL R34 1
  GETUPVAL R35 2
  LOADK R37 K36 [{1, 0, 1}]
  MUL R36 R15 R37
  LOADN R37 143
  LOADN R38 62
  CALL R35 3 -1
  CALL R34 -1 1
  LOADK R35 K37 [0.35]
  LOADN R36 0
  CALL R33 3 1
  MUL R35 R28 R30
  MUL R34 R35 R32
  SUB R23 R34 R33
  LOADN R36 0
  LOADN R37 1
  FASTCALL3 MATH_CLAMP R23 R36 R37
  MOVE R35 R23
  GETIMPORT R34 K40 [math.clamp]
  CALL R34 3 1
  MOVE R23 R34
  SUB R27 R21 R23
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K33 ["Threshold"]
  MOVE R29 R27
  LOADK R30 K24 [0.5]
  MOVE R31 R12
  CALL R28 3 1
  SUBRK R30 R14 K16 [0.1]
  JUMPIFLT R30 R14 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  LOADK R31 K24 [0.5]
  JUMPIFLE R21 R31 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  LOADN R32 0
  JUMPIFLE R28 R32 [+2]
  LOADB R31 0 +1
  LOADB R31 1
  JUMPIFNOT R29 [+8]
  JUMPIFNOT R30 [+7]
  JUMPIFNOT R31 [+6]
  LOADN R28 1
  GETIMPORT R19 K42 [Enum.Material.Water]
  GETIMPORT R20 K42 [Enum.Material.Water]
  LOADB R22 1
  JUMPIFNOTEQKN R3 K14 [1] [+3]
  LOADN R32 1
  JUMP [+1]
  MOVE R32 R28
  JUMPIFNOTEQKN R3 K14 [1] [+4]
  GETIMPORT R33 K20 [Enum.Material.CrackedLava]
  JUMP [+10]
  LOADN R34 0
  JUMPIFNOTLE R28 R34 [+4]
  GETIMPORT R33 K44 [Enum.Material.Air]
  JUMP [+4]
  JUMPIFNOT R22 [+2]
  MOVE R33 R19
  JUMP [+1]
  MOVE R33 R20
  MOVE R34 R22
  JUMPIFNOT R34 [+10]
  LOADB R34 1
  LOADN R35 0
  JUMPIFLE R32 R35 [+7]
  GETIMPORT R35 K44 [Enum.Material.Air]
  JUMPIFEQ R33 R35 [+2]
  LOADB R34 0 +1
  LOADB R34 1
  MOVE R35 R33
  MOVE R36 R32
  MOVE R37 R34
  RETURN R35 3

PROTO_1:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["BiomeGenerators"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K9 ["Generation"]
  GETTABLEKS R3 R4 K10 ["FindBiomeTransitionValue"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Generation"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["Filter"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K12 ["NoisySeed"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K13 ["Perlin"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K14 ["ProcessPerlin"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K15 ["Types"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R9 1
