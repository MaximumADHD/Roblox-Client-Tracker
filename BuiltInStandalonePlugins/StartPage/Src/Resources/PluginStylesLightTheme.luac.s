MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagLuaStartPageNotFoundImageUpdate"]
  CALL R3 1 1
  CALL R3 0 1
  DUPTABLE R4 K33 [{"PageBackground", "PillBackground", "TileBackground", "ContextMenuBackground", "Selected", "TextColor", "Contrast", "Standard", "StandardDark", "Border", "SemanticColorContentMuted", "ShimmerBackground", "ShimmerBackgroundTransparency", "ShimmerForeground", "ShimmerGradientTransparency", "NoExperiences", "RightChevron", "Cancel", "CancelWhite", "Kebab"}]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K37 ["#F2F2F3"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["PageBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K38 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["PillBackground"]
  GETIMPORT R5 K40 [Color3.fromRGB]
  LOADN R6 247
  LOADN R7 247
  LOADN R8 248
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["TileBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K41 ["#F3F3F4"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["ContextMenuBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K42 ["#D3D4D8"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["Selected"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K43 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["TextColor"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K44 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["Contrast"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K44 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["Standard"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K45 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K21 ["StandardDark"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K45 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K22 ["Border"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K38 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K23 ["SemanticColorContentMuted"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K45 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K24 ["ShimmerBackground"]
  LOADK R5 K46 [0.95]
  SETTABLEKS R5 R4 K25 ["ShimmerBackgroundTransparency"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K47 ["#2B2B2B"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K26 ["ShimmerForeground"]
  GETIMPORT R5 K50 [NumberSequence.new]
  NEWTABLE R6 0 5
  GETIMPORT R7 K52 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K52 [NumberSequenceKeypoint.new]
  LOADK R9 K53 [0.05]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K52 [NumberSequenceKeypoint.new]
  LOADK R10 K54 [0.5]
  LOADK R11 K55 [0.7]
  CALL R9 2 1
  GETIMPORT R10 K52 [NumberSequenceKeypoint.new]
  LOADK R11 K46 [0.95]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K52 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K27 ["ShimmerGradientTransparency"]
  JUMPIFNOT R3 [+2]
  LOADK R5 K56 ["rbxasset://textures/StartPage/videoGameExp_leight.png"]
  JUMP [+1]
  LOADK R5 K57 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/NoExperiences.png"]
  SETTABLEKS R5 R4 K28 ["NoExperiences"]
  LOADK R5 K58 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/RightChevron.png"]
  SETTABLEKS R5 R4 K29 ["RightChevron"]
  LOADK R5 K59 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/CancelStandard.png"]
  SETTABLEKS R5 R4 K30 ["Cancel"]
  LOADK R5 K60 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R5 R4 K31 ["CancelWhite"]
  LOADK R5 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Large/Kebab.png"]
  SETTABLEKS R5 R4 K32 ["Kebab"]
  MOVE R5 R2
  LOADK R6 K62 ["StartPageLightTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
