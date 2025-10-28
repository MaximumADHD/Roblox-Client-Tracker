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
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Services"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["StudioService"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["StudioUserService"]
  NEWTABLE R7 64 0
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K21 ["#1F2024"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K22 ["Background"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K21 ["#1F2024"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K23 ["PageBackground"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K21 ["#1F2024"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["MenuBackground"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K25 ["#111216"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K26 ["PillBackground"]
  GETIMPORT R8 K28 [Color3.fromRGB]
  LOADN R9 25
  LOADN R10 26
  LOADN R11 31
  CALL R8 3 1
  SETTABLEKS R8 R7 K29 ["TileBackground"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K30 ["#25262C"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K31 ["ContextMenuBackground"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K32 ["#FFFFFF"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K33 ["HoverBorder"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K34 ["#000000"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K35 ["Selected"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K36 ["#E1E1E1"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K37 ["TextColor"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K34 ["#000000"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K38 ["ContrastTextColor"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K25 ["#111216"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K39 ["Contrast"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K32 ["#FFFFFF"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K40 ["Standard"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K25 ["#111216"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K41 ["StandardDark"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K32 ["#FFFFFF"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K42 ["Border"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K43 ["#5582FC"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K44 ["SemanticColorContentAction"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K45 ["#BBBCBE"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K46 ["SemanticColorContentMuted"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K45 ["#BBBCBE"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K47 ["Disabled"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K48 ["#2B2D33"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K49 ["ShimmerBackground"]
  LOADK R8 K50 [0.8]
  SETTABLEKS R8 R7 K51 ["ShimmerBackgroundTransparency"]
  GETIMPORT R8 K20 [Color3.fromHex]
  LOADK R9 K52 ["#EEEEEE"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K53 ["ShimmerForeground"]
  GETIMPORT R8 K56 [NumberSequence.new]
  NEWTABLE R9 0 5
  GETIMPORT R10 K58 [NumberSequenceKeypoint.new]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K58 [NumberSequenceKeypoint.new]
  LOADK R12 K59 [0.05]
  LOADN R13 1
  CALL R11 2 1
  GETIMPORT R12 K58 [NumberSequenceKeypoint.new]
  LOADK R13 K60 [0.5]
  LOADK R14 K61 [0.85]
  CALL R12 2 1
  GETIMPORT R13 K58 [NumberSequenceKeypoint.new]
  LOADK R14 K62 [0.95]
  LOADN R15 1
  CALL R13 2 1
  GETIMPORT R14 K58 [NumberSequenceKeypoint.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R8 1 1
  SETTABLEKS R8 R7 K63 ["ShimmerGradientTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R8 K64 ["rbxasset://textures/StartPage/videoGameExp_dark.png"]
  JUMP [+1]
  LOADK R8 K65 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/SI-Standard/NoExperiences.png"]
  SETTABLEKS R8 R7 K66 ["NoExperiences"]
  LOADK R8 K67 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/RightChevron.png"]
  SETTABLEKS R8 R7 K68 ["RightChevron"]
  LOADK R8 K69 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Home.png"]
  SETTABLEKS R8 R7 K70 ["Home"]
  LOADK R8 K71 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Experiences.png"]
  SETTABLEKS R8 R7 K72 ["Experiences"]
  LOADK R8 K73 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Archive.png"]
  SETTABLEKS R8 R7 K74 ["Archive"]
  LOADK R8 K75 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Template.png"]
  SETTABLEKS R8 R7 K76 ["Templates"]
  LOADK R8 K77 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Recents.png"]
  SETTABLEKS R8 R7 K78 ["Recents"]
  LOADK R8 K79 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Grid.png"]
  SETTABLEKS R8 R7 K80 ["Grid"]
  LOADK R8 K81 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/List.png"]
  SETTABLEKS R8 R7 K82 ["List"]
  LOADK R8 K83 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
  SETTABLEKS R8 R7 K84 ["Plus"]
  LOADK R8 K85 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R8 R7 K86 ["Cancel"]
  LOADK R8 K85 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/CancelStandard.png"]
  SETTABLEKS R8 R7 K87 ["CancelWhite"]
  LOADK R8 K88 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Kebab.png"]
  SETTABLEKS R8 R7 K89 ["Kebab"]
  LOADK R8 K90 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/Search.png"]
  SETTABLEKS R8 R7 K91 ["Search"]
  LOADK R8 K92 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Alert.png"]
  SETTABLEKS R8 R7 K93 ["Alert"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R8 R6 K94 ["IsLoggedIn"]
  JUMPIFNOT R8 [+7]
  NAMECALL R8 R5 K95 ["HasInternalPermission"]
  CALL R8 1 1
  JUMPIFNOT R8 [+3]
  LOADK R8 K96 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png"]
  SETTABLEKS R8 R7 K97 ["CodeSnippet"]
  MOVE R8 R2
  LOADK R9 K98 ["StartPageDarkTheme"]
  NEWTABLE R10 0 0
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1
