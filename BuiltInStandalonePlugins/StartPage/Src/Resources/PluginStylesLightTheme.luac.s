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
  LOADK R5 K13 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["Background"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["PageBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["MenuBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["PillBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K19 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["TileBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K21 ["#F3F3F4"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["ContextMenuBackground"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["HoverBorder"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K25 ["#D3D4D8"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["Selected"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K27 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["TextColor"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K29 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["ContrastTextColor"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K19 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K31 ["Contrast"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K19 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K32 ["Standard"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K29 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["StandardDark"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K29 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K34 ["Border"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K35 ["#5582FC"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["SemanticColorContentAction"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K17 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["SemanticColorContentMuted"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K38 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K39 ["Disabled"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K29 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["ShimmerBackground"]
  LOADK R4 K41 [0.95]
  SETTABLEKS R4 R3 K42 ["ShimmerBackgroundTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K43 ["#2B2B2B"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K44 ["ShimmerForeground"]
  GETIMPORT R4 K47 [NumberSequence.new]
  NEWTABLE R5 0 5
  GETIMPORT R6 K49 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K49 [NumberSequenceKeypoint.new]
  LOADK R8 K50 [0.05]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K49 [NumberSequenceKeypoint.new]
  LOADK R9 K51 [0.5]
  LOADK R10 K52 [0.7]
  CALL R8 2 1
  GETIMPORT R9 K49 [NumberSequenceKeypoint.new]
  LOADK R10 K41 [0.95]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K49 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K53 ["ShimmerGradientTransparency"]
  LOADK R4 K54 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/NoExperiences.png"]
  SETTABLEKS R4 R3 K55 ["NoExperiences"]
  LOADK R4 K56 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/RightChevron.png"]
  SETTABLEKS R4 R3 K57 ["RightChevron"]
  LOADK R4 K58 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Home.png"]
  SETTABLEKS R4 R3 K59 ["Home"]
  LOADK R4 K60 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Experiences.png"]
  SETTABLEKS R4 R3 K61 ["Experiences"]
  LOADK R4 K62 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Grid.png"]
  SETTABLEKS R4 R3 K63 ["Grid"]
  LOADK R4 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/List.png"]
  SETTABLEKS R4 R3 K65 ["List"]
  LOADK R4 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/Plus.png"]
  SETTABLEKS R4 R3 K67 ["Plus"]
  LOADK R4 K68 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Archive.png"]
  SETTABLEKS R4 R3 K69 ["Archive"]
  LOADK R4 K70 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Template.png"]
  SETTABLEKS R4 R3 K71 ["Templates"]
  LOADK R4 K72 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Standard/CancelStandard.png"]
  SETTABLEKS R4 R3 K73 ["Cancel"]
  LOADK R4 K74 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Recents.png"]
  SETTABLEKS R4 R3 K75 ["Recents"]
  LOADK R4 K76 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Large/Kebab.png"]
  SETTABLEKS R4 R3 K77 ["Kebab"]
  LOADK R4 K78 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/Medium/Search.png"]
  SETTABLEKS R4 R3 K79 ["Search"]
  MOVE R4 R2
  LOADK R5 K80 ["StartPageLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
