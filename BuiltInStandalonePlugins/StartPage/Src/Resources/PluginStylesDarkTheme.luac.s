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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageFoundation"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K14 ["getFFlagLuaStartPageNotFoundImageUpdate"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["StudioService"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["Services"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["StudioUserService"]
  NEWTABLE R8 64 0
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K22 ["#1F2024"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K23 ["Background"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K22 ["#1F2024"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K24 ["PageBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K22 ["#1F2024"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K25 ["MenuBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K26 ["#111216"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["PillBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K28 ["#2B2D33"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["TileBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K30 ["#25262C"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K31 ["ContextMenuBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K32 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K33 ["HoverBorder"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K34 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K35 ["Selected"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K36 ["#E1E1E1"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K37 ["TextColor"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K34 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K38 ["ContrastTextColor"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K26 ["#111216"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["Contrast"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K32 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K40 ["Standard"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K26 ["#111216"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K41 ["StandardDark"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K32 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K42 ["Border"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K43 ["#5582FC"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K44 ["SemanticColorContentAction"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K45 ["#BBBCBE"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K46 ["SemanticColorContentMuted"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K45 ["#BBBCBE"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K47 ["Disabled"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K28 ["#2B2D33"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K48 ["ShimmerBackground"]
  LOADK R9 K49 [0.8]
  SETTABLEKS R9 R8 K50 ["ShimmerBackgroundTransparency"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K51 ["#EEEEEE"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K52 ["ShimmerForeground"]
  GETIMPORT R9 K55 [NumberSequence.new]
  NEWTABLE R10 0 5
  GETIMPORT R11 K57 [NumberSequenceKeypoint.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  GETIMPORT R12 K57 [NumberSequenceKeypoint.new]
  LOADK R13 K58 [0.05]
  LOADN R14 1
  CALL R12 2 1
  GETIMPORT R13 K57 [NumberSequenceKeypoint.new]
  LOADK R14 K59 [0.5]
  LOADK R15 K60 [0.85]
  CALL R13 2 1
  GETIMPORT R14 K57 [NumberSequenceKeypoint.new]
  LOADK R15 K61 [0.95]
  LOADN R16 1
  CALL R14 2 1
  GETIMPORT R15 K57 [NumberSequenceKeypoint.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K62 ["ShimmerGradientTransparency"]
  JUMPIFNOT R5 [+2]
  LOADK R9 K63 ["rbxasset://textures/StartPage/videoGameExp_dark.png"]
  JUMP [+1]
  LOADK R9 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R9 R8 K65 ["NoExperiences"]
  LOADK R9 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R9 R8 K67 ["RightChevron"]
  LOADK R9 K68 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Home.png"]
  SETTABLEKS R9 R8 K69 ["Home"]
  LOADK R9 K70 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Experiences.png"]
  SETTABLEKS R9 R8 K71 ["Experiences"]
  LOADK R9 K72 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Archive.png"]
  SETTABLEKS R9 R8 K73 ["Archive"]
  LOADK R9 K74 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Template.png"]
  SETTABLEKS R9 R8 K75 ["Templates"]
  LOADK R9 K76 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Recents.png"]
  SETTABLEKS R9 R8 K77 ["Recents"]
  LOADK R9 K78 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Grid.png"]
  SETTABLEKS R9 R8 K79 ["Grid"]
  LOADK R9 K80 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/List.png"]
  SETTABLEKS R9 R8 K81 ["List"]
  LOADK R9 K82 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
  SETTABLEKS R9 R8 K83 ["Plus"]
  LOADK R9 K84 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R9 R8 K85 ["Cancel"]
  LOADK R9 K84 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R9 R8 K86 ["CancelWhite"]
  LOADK R9 K87 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R9 R8 K88 ["Kebab"]
  LOADK R9 K89 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Search.png"]
  SETTABLEKS R9 R8 K90 ["Search"]
  LOADK R9 K91 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Alert.png"]
  SETTABLEKS R9 R8 K92 ["Alert"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R9 R7 K93 ["IsLoggedIn"]
  JUMPIFNOT R9 [+7]
  NAMECALL R9 R6 K94 ["HasInternalPermission"]
  CALL R9 1 1
  JUMPIFNOT R9 [+3]
  LOADK R9 K95 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png"]
  SETTABLEKS R9 R8 K96 ["CodeSnippet"]
  JUMPIFNOT R4 [+8]
  GETIMPORT R9 K98 [Color3.fromRGB]
  LOADN R10 25
  LOADN R11 26
  LOADN R12 31
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["TileBackground"]
  MOVE R9 R2
  LOADK R10 K99 ["StartPageDarkTheme"]
  NEWTABLE R11 0 0
  MOVE R12 R8
  CALL R9 3 -1
  RETURN R9 -1
