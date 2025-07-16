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
  GETTABLEKS R4 R5 K12 ["getFFlagLuaStartPageStudioTestTemplates"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Services"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K15 ["StudioService"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Services"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["StudioUserService"]
  NEWTABLE R6 64 0
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K20 ["#1F2024"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K21 ["Background"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K20 ["#1F2024"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K22 ["PageBackground"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K20 ["#1F2024"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K23 ["MenuBackground"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K24 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K25 ["PillBackground"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K26 ["#2B2D33"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K27 ["TileBackground"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K28 ["#25262C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K29 ["ContextMenuBackground"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K30 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K31 ["HoverBorder"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K32 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K33 ["Selected"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K34 ["#E1E1E1"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K35 ["TextColor"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K32 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K36 ["ContrastTextColor"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K24 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K37 ["Contrast"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K30 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K38 ["Standard"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K24 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K39 ["StandardDark"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K30 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K40 ["Border"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K41 ["#5582FC"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K42 ["SemanticColorContentAction"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K43 ["#BBBCBE"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K44 ["SemanticColorContentMuted"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K43 ["#BBBCBE"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K45 ["Disabled"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K26 ["#2B2D33"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K46 ["ShimmerBackground"]
  LOADK R7 K47 [0.8]
  SETTABLEKS R7 R6 K48 ["ShimmerBackgroundTransparency"]
  GETIMPORT R7 K19 [Color3.fromHex]
  LOADK R8 K49 ["#EEEEEE"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K50 ["ShimmerForeground"]
  GETIMPORT R7 K53 [NumberSequence.new]
  NEWTABLE R8 0 5
  GETIMPORT R9 K55 [NumberSequenceKeypoint.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K55 [NumberSequenceKeypoint.new]
  LOADK R11 K56 [0.05]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K55 [NumberSequenceKeypoint.new]
  LOADK R12 K57 [0.5]
  LOADK R13 K58 [0.85]
  CALL R11 2 1
  GETIMPORT R12 K55 [NumberSequenceKeypoint.new]
  LOADK R13 K59 [0.95]
  LOADN R14 1
  CALL R12 2 1
  GETIMPORT R13 K55 [NumberSequenceKeypoint.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K60 ["ShimmerGradientTransparency"]
  LOADK R7 K61 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R7 R6 K62 ["NoExperiences"]
  LOADK R7 K63 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R7 R6 K64 ["RightChevron"]
  LOADK R7 K65 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Home.png"]
  SETTABLEKS R7 R6 K66 ["Home"]
  LOADK R7 K67 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Experiences.png"]
  SETTABLEKS R7 R6 K68 ["Experiences"]
  LOADK R7 K69 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Archive.png"]
  SETTABLEKS R7 R6 K70 ["Archive"]
  LOADK R7 K71 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Template.png"]
  SETTABLEKS R7 R6 K72 ["Templates"]
  LOADK R7 K73 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Recents.png"]
  SETTABLEKS R7 R6 K74 ["Recents"]
  LOADK R7 K75 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Grid.png"]
  SETTABLEKS R7 R6 K76 ["Grid"]
  LOADK R7 K77 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/List.png"]
  SETTABLEKS R7 R6 K78 ["List"]
  LOADK R7 K79 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
  SETTABLEKS R7 R6 K80 ["Plus"]
  LOADK R7 K81 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R7 R6 K82 ["Cancel"]
  LOADK R7 K81 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R7 R6 K83 ["CancelWhite"]
  LOADK R7 K84 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R7 R6 K85 ["Kebab"]
  LOADK R7 K86 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Search.png"]
  SETTABLEKS R7 R6 K87 ["Search"]
  LOADK R7 K88 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Alert.png"]
  SETTABLEKS R7 R6 K89 ["Alert"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R7 R5 K90 ["IsLoggedIn"]
  JUMPIFNOT R7 [+7]
  NAMECALL R7 R4 K91 ["HasInternalPermission"]
  CALL R7 1 1
  JUMPIFNOT R7 [+3]
  LOADK R7 K92 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png"]
  SETTABLEKS R7 R6 K93 ["CodeSnippet"]
  MOVE R7 R2
  LOADK R8 K94 ["StartPageDarkTheme"]
  NEWTABLE R9 0 0
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
