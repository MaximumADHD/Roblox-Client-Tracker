PROTO_0:
  LOADK R2 K0 ["Tool_%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  DUPTABLE R0 K1 [{"ToolIcons"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["ToolIcons"]
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K0 ["ToolIcons"]
  GETUPVAL R8 1
  LOADK R10 K2 ["Tool_%*"]
  MOVE R12 R4
  NAMECALL R10 R10 K3 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  GETTABLE R7 R8 R9
  SETTABLE R7 R6 R4
  FORGLOOP R1 1 [-12]
  NEWTABLE R1 8 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["LoadingBar"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["Dictionary"]
  GETTABLEKS R3 R4 K6 ["join"]
  GETUPVAL R5 4
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["LoadingBar"]
  GETTABLE R4 R5 R6
  DUPTABLE R5 K8 [{"ForegroundStyle"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["Dictionary"]
  GETTABLEKS R6 R7 K6 ["join"]
  GETUPVAL R9 4
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["LoadingBar"]
  GETTABLE R8 R9 R10
  GETTABLEKS R7 R8 K7 ["ForegroundStyle"]
  DUPTABLE R8 K11 [{"Color", "BorderTransparency"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["DialogMainButton"]
  SETTABLEKS R9 R8 K9 ["Color"]
  LOADN R9 1
  SETTABLEKS R9 R8 K10 ["BorderTransparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["ForegroundStyle"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["Tooltip"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["Dictionary"]
  GETTABLEKS R3 R4 K6 ["join"]
  GETUPVAL R5 4
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K13 ["Tooltip"]
  GETTABLE R4 R5 R6
  DUPTABLE R5 K15 [{"MaxWidth"}]
  LOADN R6 232
  SETTABLEKS R6 R5 K14 ["MaxWidth"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  DUPTABLE R2 K20 [{"TimeBetweenBlocks", "Colors", "BlockWidth", "InnerRadius"}]
  LOADK R3 K21 [0.05]
  SETTABLEKS R3 R2 K16 ["TimeBetweenBlocks"]
  NEWTABLE R3 0 8
  GETIMPORT R4 K24 [Color3.fromRGB]
  LOADN R5 172
  LOADN R6 172
  LOADN R7 172
  CALL R4 3 1
  GETIMPORT R5 K24 [Color3.fromRGB]
  LOADN R6 172
  LOADN R7 172
  LOADN R8 172
  CALL R5 3 1
  GETIMPORT R6 K24 [Color3.fromRGB]
  LOADN R7 159
  LOADN R8 159
  LOADN R9 159
  CALL R6 3 1
  GETIMPORT R7 K24 [Color3.fromRGB]
  LOADN R8 140
  LOADN R9 140
  LOADN R10 140
  CALL R7 3 1
  GETIMPORT R8 K24 [Color3.fromRGB]
  LOADN R9 122
  LOADN R10 122
  LOADN R11 122
  CALL R8 3 1
  GETIMPORT R9 K24 [Color3.fromRGB]
  LOADN R10 103
  LOADN R11 103
  LOADN R12 103
  CALL R9 3 1
  GETIMPORT R10 K24 [Color3.fromRGB]
  LOADN R11 84
  LOADN R12 84
  LOADN R13 84
  CALL R10 3 1
  GETIMPORT R11 K24 [Color3.fromRGB]
  LOADN R12 65
  LOADN R13 65
  LOADN R14 65
  CALL R11 3 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K17 ["Colors"]
  LOADN R3 2
  SETTABLEKS R3 R2 K18 ["BlockWidth"]
  LOADN R3 7
  SETTABLEKS R3 R2 K19 ["InnerRadius"]
  SETTABLEKS R2 R1 K25 ["Spinner"]
  DUPTABLE R2 K30 [{"SelectColor", "TransformColor", "LineThickness", "Transparency"}]
  GETIMPORT R3 K32 [Color3.new]
  LOADN R4 1
  LOADN R5 1
  LOADN R6 1
  CALL R3 3 1
  SETTABLEKS R3 R2 K26 ["SelectColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K33 ["DialogMainButtonHover"]
  SETTABLEKS R3 R2 K27 ["TransformColor"]
  LOADK R3 K34 [0.3]
  SETTABLEKS R3 R2 K28 ["LineThickness"]
  LOADK R3 K35 [0.9]
  SETTABLEKS R3 R2 K29 ["Transparency"]
  SETTABLEKS R2 R1 K36 ["VolumeDragger"]
  DUPTABLE R2 K42 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K43 ["MainBackground"]
  SETTABLEKS R3 R2 K37 ["Background"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K44 ["DimmedText"]
  SETTABLEKS R3 R2 K38 ["KeyBackground"]
  LOADN R3 2
  SETTABLEKS R3 R2 K39 ["EdgePadding"]
  LOADN R3 3
  SETTABLEKS R3 R2 K40 ["FramePadding"]
  LOADN R3 2
  SETTABLEKS R3 R2 K41 ["TextMargin"]
  SETTABLEKS R2 R1 K45 ["ApplyTransformNote"]
  SETTABLEKS R0 R1 K46 ["ToolButton"]
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 1
  LOADK R10 K0 ["Tool_%*"]
  MOVE R12 R5
  NAMECALL R10 R10 K1 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  GETTABLE R7 R8 R9
  MOVE R10 R0
  NAMECALL R8 R6 K1 ["format"]
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-14]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Dictionary"]
  GETTABLEKS R0 R1 K1 ["join"]
  GETUPVAL R1 1
  NEWTABLE R2 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["TerrainTools_DisabledColor"]
  GETIMPORT R4 K5 [Color3.fromRGB]
  LOADN R5 60
  LOADN R6 60
  LOADN R7 60
  CALL R4 3 1
  SETTABLE R4 R2 R3
  GETUPVAL R3 3
  LOADK R4 K6 ["Dark"]
  CALL R3 1 1
  CALL R0 3 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 4
  NEWTABLE R3 1 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["TerrainTools_DisabledColor"]
  GETIMPORT R5 K5 [Color3.fromRGB]
  LOADN R6 153
  LOADN R7 218
  LOADN R8 255
  CALL R5 3 1
  SETTABLE R5 R3 R4
  GETUPVAL R4 3
  LOADK R5 K7 ["Light"]
  CALL R4 1 1
  CALL R1 3 1
  RETURN R0 2

PROTO_4:
  ORK R0 R0 K0 [False]
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["mock"]
  GETUPVAL R2 1
  CALL R2 0 -1
  CALL R1 -1 1
  JUMPIF R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["new"]
  GETUPVAL R2 1
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R4 2
  CALL R4 0 1
  NAMECALL R2 R1 K3 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["TerrainEnums"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K11 ["Style"]
  GETTABLEKS R5 R6 K12 ["Themes"]
  GETTABLEKS R4 R5 K13 ["StudioTheme"]
  GETTABLEKS R5 R1 K11 ["Style"]
  GETTABLEKS R7 R5 K12 ["Themes"]
  GETTABLEKS R6 R7 K14 ["BaseTheme"]
  GETTABLEKS R8 R5 K12 ["Themes"]
  GETTABLEKS R7 R8 K15 ["DarkTheme"]
  GETTABLEKS R9 R5 K12 ["Themes"]
  GETTABLEKS R8 R9 K16 ["LightTheme"]
  GETTABLEKS R9 R5 K17 ["StyleKey"]
  GETTABLEKS R10 R5 K18 ["ComponentSymbols"]
  GETTABLEKS R11 R1 K9 ["Util"]
  GETTABLEKS R12 R11 K19 ["StyleModifier"]
  GETTABLEKS R13 R3 K20 ["ToolId"]
  NEWTABLE R14 32 0
  GETTABLEKS R15 R13 K21 ["Generate"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K23 ["Terrain_Generate.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K24 ["ImportLocal"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K25 ["Terrain_Import.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K26 ["SeaLevel"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K27 ["Terrain_SeaLevel.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K28 ["Replace"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K29 ["Terrain_Replace.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K30 ["Clear"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K31 ["Terrain_Clear.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K32 ["Select"]
  LOADK R17 K33 ["rbxasset://studio_svg_textures/Shared/DraggerTools/%s/Large/"]
  LOADK R18 K34 ["Select.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K35 ["Material"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K36 ["Terrain_Fill.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K37 ["Transform"]
  LOADK R17 K33 ["rbxasset://studio_svg_textures/Shared/DraggerTools/%s/Large/"]
  LOADK R18 K38 ["Move.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K39 ["Move"]
  LOADK R17 K33 ["rbxasset://studio_svg_textures/Shared/DraggerTools/%s/Large/"]
  LOADK R18 K38 ["Move.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K40 ["Resize"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K41 ["Terrain_Resize.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K42 ["Rotate"]
  LOADK R17 K33 ["rbxasset://studio_svg_textures/Shared/DraggerTools/%s/Large/"]
  LOADK R18 K43 ["Rotate.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K44 ["Copy"]
  LOADK R17 K45 ["rbxasset://studio_svg_textures/Shared/Clipboard/%s/Large/"]
  LOADK R18 K46 ["Copy.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K47 ["Paste"]
  LOADK R17 K45 ["rbxasset://studio_svg_textures/Shared/Clipboard/%s/Large/"]
  LOADK R18 K48 ["Paste.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K49 ["Delete"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K50 ["Terrain_Delete.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K51 ["Fill"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K36 ["Terrain_Fill.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K52 ["Add"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K53 ["Terrain_Add.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K54 ["Draw"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K53 ["Terrain_Add.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K55 ["Subtract"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K56 ["Terrain_Subtract.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K57 ["Grow"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K58 ["Terrain_Grow.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K59 ["Sculpt"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K58 ["Terrain_Grow.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K60 ["Erode"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K61 ["Terrain_Erode.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K62 ["Smooth"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K63 ["Terrain_Smooth.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K64 ["Flatten"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K65 ["Terrain_Flatten.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R13 K66 ["Paint"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K67 ["Terrain_Paint.png"]
  CONCAT R16 R17 R18
  SETTABLE R16 R14 R15
  DUPCLOSURE R15 K68 [PROTO_0]
  DUPCLOSURE R16 K69 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPCLOSURE R17 K70 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R9
  DUPCLOSURE R18 K71 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R8
  DUPCLOSURE R19 K72 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R16
  RETURN R19 1
