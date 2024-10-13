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
  NEWTABLE R18 16 0
  GETTABLEKS R19 R9 K26 ["StudioTheme"]
  LOADK R20 K27 ["Dark"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K13 ["BrushShape"]
  LOADK R22 K28 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/"]
  LOADK R23 K29 ["Large/"]
  CONCAT R21 R22 R23
  NEWTABLE R20 4 0
  GETTABLEKS R22 R6 K30 ["Sphere"]
  LOADK R24 K31 ["%*TerrainBrushTypeSphere.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K33 ["Cube"]
  LOADK R24 K34 ["%*TerrainBrushTypeCube.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R6 K35 ["Cylinder"]
  LOADK R24 K36 ["%*TerrainBrushTypeCylinder.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K14 ["FlattenMode"]
  LOADK R22 K28 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/"]
  LOADK R23 K29 ["Large/"]
  CONCAT R21 R22 R23
  NEWTABLE R20 4 0
  GETTABLEKS R22 R7 K37 ["Both"]
  LOADK R24 K38 ["%*FlattenModeRemoveAboveFillBelow.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R7 K39 ["Erode"]
  LOADK R24 K40 ["%*FlattenModeRemoveAbove.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  GETTABLEKS R22 R7 K41 ["Grow"]
  LOADK R24 K42 ["%*FlattenModeFillBelow.png"]
  MOVE R26 R21
  NAMECALL R24 R24 K32 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLE R23 R20 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K43 ["Add"]
  LOADK R21 K44 ["%*Standard/Add.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K46 ["Locked"]
  LOADK R21 K47 ["%*Standard/Locked.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K48 ["Randomize"]
  LOADK R21 K49 ["%*Standard/Randomize.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K50 ["Remove"]
  LOADK R21 K51 ["%*Standard/Remove.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K52 ["Reset"]
  LOADK R21 K53 ["%*Standard/Reset.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K54 ["Unlocked"]
  LOADK R21 K55 ["%*Standard/Unlocked.png"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/"]
  NAMECALL R21 R21 K32 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLE R20 R18 R19
  CALL R16 2 1
  GETTABLEKS R17 R1 K25 ["join"]
  MOVE R18 R11
  NEWTABLE R19 16 0
  GETTABLEKS R20 R9 K26 ["StudioTheme"]
  LOADK R21 K56 ["Light"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R5 K13 ["BrushShape"]
  LOADK R23 K57 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/"]
  LOADK R24 K29 ["Large/"]
  CONCAT R22 R23 R24
  NEWTABLE R21 4 0
  GETTABLEKS R23 R6 K30 ["Sphere"]
  LOADK R25 K31 ["%*TerrainBrushTypeSphere.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  GETTABLEKS R23 R6 K33 ["Cube"]
  LOADK R25 K34 ["%*TerrainBrushTypeCube.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  GETTABLEKS R23 R6 K35 ["Cylinder"]
  LOADK R25 K36 ["%*TerrainBrushTypeCylinder.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R5 K14 ["FlattenMode"]
  LOADK R23 K57 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/"]
  LOADK R24 K29 ["Large/"]
  CONCAT R22 R23 R24
  NEWTABLE R21 4 0
  GETTABLEKS R23 R7 K37 ["Both"]
  LOADK R25 K38 ["%*FlattenModeRemoveAboveFillBelow.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  GETTABLEKS R23 R7 K39 ["Erode"]
  LOADK R25 K40 ["%*FlattenModeRemoveAbove.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  GETTABLEKS R23 R7 K41 ["Grow"]
  LOADK R25 K42 ["%*FlattenModeFillBelow.png"]
  MOVE R27 R22
  NAMECALL R25 R25 K32 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLE R24 R21 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K43 ["Add"]
  LOADK R22 K44 ["%*Standard/Add.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K46 ["Locked"]
  LOADK R22 K47 ["%*Standard/Locked.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K48 ["Randomize"]
  LOADK R22 K49 ["%*Standard/Randomize.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K50 ["Remove"]
  LOADK R22 K51 ["%*Standard/Remove.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K52 ["Reset"]
  LOADK R22 K53 ["%*Standard/Reset.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K54 ["Unlocked"]
  LOADK R22 K55 ["%*Standard/Unlocked.png"]
  LOADK R24 K58 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/"]
  NAMECALL R22 R22 K32 ["format"]
  CALL R22 2 1
  MOVE R21 R22
  SETTABLE R21 R19 R20
  CALL R17 2 1
  DUPCLOSURE R18 K59 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R13
  RETURN R18 1
