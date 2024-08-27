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
  NEWTABLE R3 64 0
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["Background"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["PageBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["MenuBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["PillBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K19 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["TileBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K21 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["ContextMenuBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["HoverBorder"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K25 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["Selected"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K27 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["TextColor"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K25 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K29 ["ContrastTextColor"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["Contrast"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K31 ["Standard"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K32 ["StandardDark"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["Border"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K34 ["#5582FC"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["SemanticColorContentAction"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K36 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["SemanticColorContentMuted"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K36 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["Disabled"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K19 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K39 ["ShimmerBackground"]
  LOADK R4 K40 [0.8]
  SETTABLEKS R4 R3 K41 ["ShimmerBackgroundTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K42 ["#EEEEEE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K43 ["ShimmerForeground"]
  GETIMPORT R4 K46 [NumberSequence.new]
  NEWTABLE R5 0 5
  GETIMPORT R6 K48 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K48 [NumberSequenceKeypoint.new]
  LOADK R8 K49 [0.05]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K48 [NumberSequenceKeypoint.new]
  LOADK R9 K50 [0.5]
  LOADK R10 K51 [0.85]
  CALL R8 2 1
  GETIMPORT R9 K48 [NumberSequenceKeypoint.new]
  LOADK R10 K52 [0.95]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K48 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K53 ["ShimmerGradientTransparency"]
  LOADK R4 K54 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R4 R3 K55 ["NoExperiences"]
  LOADK R4 K56 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R4 R3 K57 ["RightChevron"]
  LOADK R4 K58 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Home.png"]
  SETTABLEKS R4 R3 K59 ["Home"]
  LOADK R4 K60 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Experiences.png"]
  SETTABLEKS R4 R3 K61 ["Experiences"]
  LOADK R4 K62 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Archive.png"]
  SETTABLEKS R4 R3 K63 ["Archive"]
  LOADK R4 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Template.png"]
  SETTABLEKS R4 R3 K65 ["Templates"]
  LOADK R4 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Grid.png"]
  SETTABLEKS R4 R3 K67 ["Grid"]
  LOADK R4 K68 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/List.png"]
  SETTABLEKS R4 R3 K69 ["List"]
  LOADK R4 K70 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
  SETTABLEKS R4 R3 K71 ["Plus"]
  LOADK R4 K72 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R4 R3 K73 ["Cancel"]
  LOADK R4 K74 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R4 R3 K75 ["Kebab"]
  LOADK R4 K76 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Search.png"]
  SETTABLEKS R4 R3 K77 ["Search"]
  MOVE R4 R2
  LOADK R5 K78 ["StartPageDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
