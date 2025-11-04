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
  LOADK R6 K37 ["#1F2024"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["PageBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K38 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["PillBackground"]
  GETIMPORT R5 K40 [Color3.fromRGB]
  LOADN R6 25
  LOADN R7 26
  LOADN R8 31
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["TileBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K41 ["#25262C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["ContextMenuBackground"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K42 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["Selected"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K43 ["#E1E1E1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["TextColor"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K38 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["Contrast"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K44 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["Standard"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K38 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K21 ["StandardDark"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K44 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K22 ["Border"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K45 ["#BBBCBE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K23 ["SemanticColorContentMuted"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K46 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K24 ["ShimmerBackground"]
  LOADK R5 K47 [0.8]
  SETTABLEKS R5 R4 K25 ["ShimmerBackgroundTransparency"]
  GETIMPORT R5 K36 [Color3.fromHex]
  LOADK R6 K48 ["#EEEEEE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K26 ["ShimmerForeground"]
  GETIMPORT R5 K51 [NumberSequence.new]
  NEWTABLE R6 0 5
  GETIMPORT R7 K53 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K53 [NumberSequenceKeypoint.new]
  LOADK R9 K54 [0.05]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K53 [NumberSequenceKeypoint.new]
  LOADK R10 K55 [0.5]
  LOADK R11 K56 [0.85]
  CALL R9 2 1
  GETIMPORT R10 K53 [NumberSequenceKeypoint.new]
  LOADK R11 K57 [0.95]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K53 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K27 ["ShimmerGradientTransparency"]
  JUMPIFNOT R3 [+2]
  LOADK R5 K58 ["rbxasset://textures/StartPage/videoGameExp_dark.png"]
  JUMP [+1]
  LOADK R5 K59 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R5 R4 K28 ["NoExperiences"]
  LOADK R5 K60 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R5 R4 K29 ["RightChevron"]
  LOADK R5 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R5 R4 K30 ["Cancel"]
  LOADK R5 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R5 R4 K31 ["CancelWhite"]
  LOADK R5 K62 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R5 R4 K32 ["Kebab"]
  MOVE R5 R2
  LOADK R6 K63 ["StartPageDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
