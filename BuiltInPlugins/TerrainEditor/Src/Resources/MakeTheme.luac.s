PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Sphere"]
  LOADK R4 K1 ["%*TerrainBrushTypeSphere.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Cube"]
  LOADK R4 K4 ["%*TerrainBrushTypeCube.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["Cylinder"]
  LOADK R4 K6 ["%*TerrainBrushTypeCylinder.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Both"]
  LOADK R4 K1 ["%*FlattenModeRemoveAboveFillBelow.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Erode"]
  LOADK R4 K4 ["%*FlattenModeRemoveAbove.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["Grow"]
  LOADK R4 K6 ["%*FlattenModeFillBelow.png"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_2:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["BrushSettings"]
  GETTABLEKS R6 R4 K13 ["BrushShape"]
  GETTABLEKS R7 R4 K14 ["FlattenMode"]
  GETTABLEKS R8 R2 K15 ["Style"]
  GETTABLEKS R9 R8 K16 ["StyleKey"]
  GETTABLEKS R11 R8 K17 ["Themes"]
  GETTABLEKS R10 R11 K18 ["DarkTheme"]
  GETTABLEKS R12 R8 K17 ["Themes"]
  GETTABLEKS R11 R12 K19 ["LightTheme"]
  GETTABLEKS R13 R3 K20 ["Resources"]
  GETTABLEKS R12 R13 K21 ["Theme"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K22 ["Parent"]
  GETTABLEKS R14 R15 K21 ["Theme"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_0]
  CAPTURE VAL R6
  DUPCLOSURE R15 K24 [PROTO_1]
  CAPTURE VAL R7
  GETTABLEKS R16 R1 K25 ["join"]
  MOVE R17 R10
  NEWTABLE R18 4 0
  GETTABLEKS R19 R9 K26 ["StudioTheme"]
  LOADK R20 K27 ["Dark"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K13 ["BrushShape"]
  NEWTABLE R20 4 0
  GETTABLEKS R21 R6 K28 ["Sphere"]
  LOADK R23 K29 ["%*TerrainBrushTypeSphere.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R6 K32 ["Cube"]
  LOADK R23 K33 ["%*TerrainBrushTypeCube.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R6 K34 ["Cylinder"]
  LOADK R23 K35 ["%*TerrainBrushTypeCylinder.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K14 ["FlattenMode"]
  NEWTABLE R20 4 0
  GETTABLEKS R21 R7 K36 ["Both"]
  LOADK R23 K37 ["%*FlattenModeRemoveAboveFillBelow.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R7 K38 ["Erode"]
  LOADK R23 K39 ["%*FlattenModeRemoveAbove.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R7 K40 ["Grow"]
  LOADK R23 K41 ["%*FlattenModeFillBelow.png"]
  LOADK R25 K30 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/"]
  NAMECALL R23 R23 K31 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  SETTABLE R20 R18 R19
  CALL R16 2 1
  GETTABLEKS R17 R1 K25 ["join"]
  MOVE R18 R11
  NEWTABLE R19 4 0
  GETTABLEKS R20 R9 K26 ["StudioTheme"]
  LOADK R21 K42 ["Light"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R5 K13 ["BrushShape"]
  NEWTABLE R21 4 0
  GETTABLEKS R22 R6 K28 ["Sphere"]
  LOADK R24 K29 ["%*TerrainBrushTypeSphere.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K32 ["Cube"]
  LOADK R24 K33 ["%*TerrainBrushTypeCube.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K34 ["Cylinder"]
  LOADK R24 K35 ["%*TerrainBrushTypeCylinder.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R5 K14 ["FlattenMode"]
  NEWTABLE R21 4 0
  GETTABLEKS R22 R7 K36 ["Both"]
  LOADK R24 K37 ["%*FlattenModeRemoveAboveFillBelow.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K38 ["Erode"]
  LOADK R24 K39 ["%*FlattenModeRemoveAbove.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K40 ["Grow"]
  LOADK R24 K41 ["%*FlattenModeFillBelow.png"]
  LOADK R26 K43 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/"]
  NAMECALL R24 R24 K31 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R21 R22
  SETTABLE R21 R19 R20
  CALL R17 2 1
  DUPCLOSURE R18 K44 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R13
  RETURN R18 1
