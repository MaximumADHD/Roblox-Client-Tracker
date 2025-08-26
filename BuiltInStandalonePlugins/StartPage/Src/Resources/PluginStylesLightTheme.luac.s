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
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageNotFoundImageUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K14 ["getFFlagLuaStartPageFoundation"]
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
  LOADK R10 K22 ["#F2F2F3"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K23 ["Background"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K22 ["#F2F2F3"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K24 ["PageBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K22 ["#F2F2F3"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K25 ["MenuBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K26 ["#696A6D"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["PillBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K28 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["TileBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K30 ["#F3F3F4"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K31 ["ContextMenuBackground"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K32 ["#25262C"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K33 ["HoverBorder"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K34 ["#D3D4D8"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K35 ["Selected"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K36 ["#111216"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K37 ["TextColor"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K38 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["ContrastTextColor"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K28 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K40 ["Contrast"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K28 ["#FFFFFF"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K41 ["Standard"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K38 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K42 ["StandardDark"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K38 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K43 ["Border"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K44 ["#5582FC"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K45 ["SemanticColorContentAction"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K26 ["#696A6D"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K46 ["SemanticColorContentMuted"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K47 ["#989898"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K48 ["Disabled"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K38 ["#000000"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K49 ["ShimmerBackground"]
  LOADK R9 K50 [0.95]
  SETTABLEKS R9 R8 K51 ["ShimmerBackgroundTransparency"]
  GETIMPORT R9 K21 [Color3.fromHex]
  LOADK R10 K52 ["#2B2B2B"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K53 ["ShimmerForeground"]
  GETIMPORT R9 K56 [NumberSequence.new]
  NEWTABLE R10 0 5
  GETIMPORT R11 K58 [NumberSequenceKeypoint.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  GETIMPORT R12 K58 [NumberSequenceKeypoint.new]
  LOADK R13 K59 [0.05]
  LOADN R14 1
  CALL R12 2 1
  GETIMPORT R13 K58 [NumberSequenceKeypoint.new]
  LOADK R14 K60 [0.5]
  LOADK R15 K61 [0.7]
  CALL R13 2 1
  GETIMPORT R14 K58 [NumberSequenceKeypoint.new]
  LOADK R15 K50 [0.95]
  LOADN R16 1
  CALL R14 2 1
  GETIMPORT R15 K58 [NumberSequenceKeypoint.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K62 ["ShimmerGradientTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R9 K63 ["rbxasset://textures/StartPage/videoGameExp_leight.png"]
  JUMP [+1]
  LOADK R9 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/NoExperiences.png"]
  SETTABLEKS R9 R8 K65 ["NoExperiences"]
  LOADK R9 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/RightChevron.png"]
  SETTABLEKS R9 R8 K67 ["RightChevron"]
  LOADK R9 K68 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Home.png"]
  SETTABLEKS R9 R8 K69 ["Home"]
  LOADK R9 K70 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Experiences.png"]
  SETTABLEKS R9 R8 K71 ["Experiences"]
  LOADK R9 K72 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Grid.png"]
  SETTABLEKS R9 R8 K73 ["Grid"]
  LOADK R9 K74 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/List.png"]
  SETTABLEKS R9 R8 K75 ["List"]
  LOADK R9 K76 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/Plus.png"]
  SETTABLEKS R9 R8 K77 ["Plus"]
  LOADK R9 K78 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Archive.png"]
  SETTABLEKS R9 R8 K79 ["Archive"]
  LOADK R9 K80 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Template.png"]
  SETTABLEKS R9 R8 K81 ["Templates"]
  LOADK R9 K82 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/CancelStandard.png"]
  SETTABLEKS R9 R8 K83 ["Cancel"]
  LOADK R9 K84 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R9 R8 K85 ["CancelWhite"]
  LOADK R9 K86 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Recents.png"]
  SETTABLEKS R9 R8 K87 ["Recents"]
  LOADK R9 K88 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Large/Kebab.png"]
  SETTABLEKS R9 R8 K89 ["Kebab"]
  LOADK R9 K90 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Search.png"]
  SETTABLEKS R9 R8 K91 ["Search"]
  LOADK R9 K92 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Alert.png"]
  SETTABLEKS R9 R8 K93 ["Alert"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R9 R7 K94 ["IsLoggedIn"]
  JUMPIFNOT R9 [+7]
  NAMECALL R9 R6 K95 ["HasInternalPermission"]
  CALL R9 1 1
  JUMPIFNOT R9 [+3]
  LOADK R9 K96 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonCodeSnippet.png"]
  SETTABLEKS R9 R8 K97 ["CodeSnippet"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R9 K99 [Color3.fromRGB]
  LOADN R10 247
  LOADN R11 247
  LOADN R12 248
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["TileBackground"]
  MOVE R9 R2
  LOADK R10 K100 ["StartPageLightTheme"]
  NEWTABLE R11 0 0
  MOVE R12 R8
  CALL R9 3 -1
  RETURN R9 -1
