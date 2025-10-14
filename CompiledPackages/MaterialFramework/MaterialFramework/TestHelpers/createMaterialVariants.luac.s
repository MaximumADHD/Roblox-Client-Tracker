PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["Flagstone"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETIMPORT R1 K4 [Instance.new]
  LOADK R2 K5 ["MaterialVariant"]
  CALL R1 1 1
  LOADK R2 K0 ["Flagstone"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETIMPORT R2 K10 [Enum.Material.Pavement]
  SETTABLEKS R2 R1 K11 ["BaseMaterial"]
  LOADN R2 8
  SETTABLEKS R2 R1 K12 ["StudsPerTile"]
  LOADK R2 K13 ["rbxassetid://9809148719"]
  SETTABLEKS R2 R1 K14 ["ColorMap"]
  LOADK R2 K15 ["rbxassetid://8602642017"]
  SETTABLEKS R2 R1 K16 ["MetalnessMap"]
  LOADK R2 K17 ["rbxassetid://9809147846"]
  SETTABLEKS R2 R1 K18 ["NormalMap"]
  LOADK R2 K19 ["rbxassetid://9809147255"]
  SETTABLEKS R2 R1 K20 ["RoughnessMap"]
  LOADB R2 0
  SETTABLEKS R2 R1 K21 ["Archivable"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K22 ["Parent"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["Wallpaper"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETIMPORT R1 K4 [Instance.new]
  LOADK R2 K5 ["MaterialVariant"]
  CALL R1 1 1
  LOADK R2 K0 ["Wallpaper"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETIMPORT R2 K10 [Enum.Material.Wood]
  SETTABLEKS R2 R1 K11 ["BaseMaterial"]
  LOADN R2 4
  SETTABLEKS R2 R1 K12 ["StudsPerTile"]
  LOADK R2 K13 ["rbxassetid://8602640896"]
  SETTABLEKS R2 R1 K14 ["ColorMap"]
  LOADK R2 K15 ["rbxassetid://8474851245"]
  SETTABLEKS R2 R1 K16 ["MetalnessMap"]
  LOADK R2 K17 ["rbxassetid://8602641773"]
  SETTABLEKS R2 R1 K18 ["NormalMap"]
  LOADK R2 K19 ["rbxassetid://8602641137"]
  SETTABLEKS R2 R1 K20 ["RoughnessMap"]
  LOADB R2 0
  SETTABLEKS R2 R1 K21 ["Archivable"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K22 ["Parent"]
  RETURN R1 1

PROTO_2:
  NEWTABLE R0 0 2
  GETUPVAL R2 0
  LOADK R4 K0 ["Flagstone"]
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  MOVE R1 R2
  JUMP [+33]
  GETIMPORT R3 K4 [Instance.new]
  LOADK R4 K5 ["MaterialVariant"]
  CALL R3 1 1
  LOADK R4 K0 ["Flagstone"]
  SETTABLEKS R4 R3 K6 ["Name"]
  GETIMPORT R4 K10 [Enum.Material.Pavement]
  SETTABLEKS R4 R3 K11 ["BaseMaterial"]
  LOADN R4 8
  SETTABLEKS R4 R3 K12 ["StudsPerTile"]
  LOADK R4 K13 ["rbxassetid://9809148719"]
  SETTABLEKS R4 R3 K14 ["ColorMap"]
  LOADK R4 K15 ["rbxassetid://8602642017"]
  SETTABLEKS R4 R3 K16 ["MetalnessMap"]
  LOADK R4 K17 ["rbxassetid://9809147846"]
  SETTABLEKS R4 R3 K18 ["NormalMap"]
  LOADK R4 K19 ["rbxassetid://9809147255"]
  SETTABLEKS R4 R3 K20 ["RoughnessMap"]
  LOADB R4 0
  SETTABLEKS R4 R3 K21 ["Archivable"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K22 ["Parent"]
  MOVE R1 R3
  GETUPVAL R3 0
  LOADK R5 K23 ["Wallpaper"]
  NAMECALL R3 R3 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R3
  JUMP [+33]
  GETIMPORT R4 K4 [Instance.new]
  LOADK R5 K5 ["MaterialVariant"]
  CALL R4 1 1
  LOADK R5 K23 ["Wallpaper"]
  SETTABLEKS R5 R4 K6 ["Name"]
  GETIMPORT R5 K25 [Enum.Material.Wood]
  SETTABLEKS R5 R4 K11 ["BaseMaterial"]
  LOADN R5 4
  SETTABLEKS R5 R4 K12 ["StudsPerTile"]
  LOADK R5 K26 ["rbxassetid://8602640896"]
  SETTABLEKS R5 R4 K14 ["ColorMap"]
  LOADK R5 K27 ["rbxassetid://8474851245"]
  SETTABLEKS R5 R4 K16 ["MetalnessMap"]
  LOADK R5 K28 ["rbxassetid://8602641773"]
  SETTABLEKS R5 R4 K18 ["NormalMap"]
  LOADK R5 K29 ["rbxassetid://8602641137"]
  SETTABLEKS R5 R4 K20 ["RoughnessMap"]
  LOADB R5 0
  SETTABLEKS R5 R4 K21 ["Archivable"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K22 ["Parent"]
  MOVE R2 R4
  SETLIST R0 R1 2 [1]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MaterialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R2 K5 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R3 K6 [PROTO_2]
  CAPTURE VAL R0
  RETURN R3 1
