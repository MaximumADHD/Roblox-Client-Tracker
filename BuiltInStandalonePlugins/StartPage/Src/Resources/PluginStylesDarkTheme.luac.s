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
  DUPTABLE R3 K41 [{"Background", "PageBackground", "MenuBackground", "PillBackground", "TileBackground", "HoverBorder", "Selected", "TextColor", "ContrastTextColor", "Contrast", "Standard", "StandardDark", "Border", "SemanticColorContentMuted", "Disabled", "ShimmerBackground", "ShimmerBackgroundTransparency", "ShimmerForeground", "ShimmerGradientTransparency", "NoExperiences", "RightChevron", "Home", "Experiences", "Archive", "Templates", "Grid", "List", "Plus", "Cancel", "Kebab", "Search"}]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K45 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["Background"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K45 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["PageBackground"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K45 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["MenuBackground"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K46 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["PillBackground"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K47 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["TileBackground"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["HoverBorder"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K49 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["Selected"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K50 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["TextColor"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K49 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["ContrastTextColor"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K46 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["Contrast"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["Standard"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K46 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["StandardDark"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K48 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["Border"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K51 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["SemanticColorContentMuted"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K51 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["Disabled"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K47 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["ShimmerBackground"]
  LOADK R4 K52 [0.8]
  SETTABLEKS R4 R3 K26 ["ShimmerBackgroundTransparency"]
  GETIMPORT R4 K44 [Color3.fromHex]
  LOADK R5 K53 ["#EEEEEE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["ShimmerForeground"]
  GETIMPORT R4 K56 [NumberSequence.new]
  NEWTABLE R5 0 5
  GETIMPORT R6 K58 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K58 [NumberSequenceKeypoint.new]
  LOADK R8 K59 [0.05]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K58 [NumberSequenceKeypoint.new]
  LOADK R9 K60 [0.5]
  LOADK R10 K61 [0.85]
  CALL R8 2 1
  GETIMPORT R9 K58 [NumberSequenceKeypoint.new]
  LOADK R10 K62 [0.95]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K58 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["ShimmerGradientTransparency"]
  LOADK R4 K63 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R4 R3 K29 ["NoExperiences"]
  LOADK R4 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R4 R3 K30 ["RightChevron"]
  LOADK R4 K65 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Home.png"]
  SETTABLEKS R4 R3 K31 ["Home"]
  LOADK R4 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Experiences.png"]
  SETTABLEKS R4 R3 K32 ["Experiences"]
  LOADK R4 K67 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Archive.png"]
  SETTABLEKS R4 R3 K33 ["Archive"]
  LOADK R4 K68 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Template.png"]
  SETTABLEKS R4 R3 K34 ["Templates"]
  LOADK R4 K69 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Grid.png"]
  SETTABLEKS R4 R3 K35 ["Grid"]
  LOADK R4 K70 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/List.png"]
  SETTABLEKS R4 R3 K36 ["List"]
  LOADK R4 K71 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
  SETTABLEKS R4 R3 K37 ["Plus"]
  LOADK R4 K72 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R4 R3 K38 ["Cancel"]
  LOADK R4 K73 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R4 R3 K39 ["Kebab"]
  LOADK R4 K74 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Search.png"]
  SETTABLEKS R4 R3 K40 ["Search"]
  MOVE R4 R2
  LOADK R5 K75 ["StartPageDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
