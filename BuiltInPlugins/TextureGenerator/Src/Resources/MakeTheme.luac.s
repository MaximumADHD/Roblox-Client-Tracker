PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Style"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["Theme"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K13 ["StyleKey"]
  GETTABLEKS R7 R3 K14 ["Themes"]
  GETTABLEKS R6 R7 K15 ["DarkTheme"]
  GETTABLEKS R8 R3 K14 ["Themes"]
  GETTABLEKS R7 R8 K16 ["LightTheme"]
  GETTABLEKS R9 R3 K14 ["Themes"]
  GETTABLEKS R8 R9 K17 ["StudioTheme"]
  GETTABLEKS R10 R1 K18 ["Dictionary"]
  GETTABLEKS R9 R10 K19 ["join"]
  MOVE R10 R6
  NEWTABLE R11 8 0
  GETTABLEKS R12 R5 K20 ["PreviewAreaNext"]
  LOADK R13 K21 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Dark/Standard/next.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K22 ["PreviewAreaPrevious"]
  LOADK R13 K23 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Dark/Standard/previous.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K24 ["ThumbsUp"]
  LOADK R13 K25 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K26 ["ThumbsDown"]
  LOADK R13 K27 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K28 ["ThumbsUpOutline"]
  LOADK R13 K29 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K30 ["ThumbsDownOutline"]
  LOADK R13 K31 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  GETTABLEKS R11 R1 K18 ["Dictionary"]
  GETTABLEKS R10 R11 K19 ["join"]
  MOVE R11 R7
  NEWTABLE R12 8 0
  GETTABLEKS R13 R5 K20 ["PreviewAreaNext"]
  LOADK R14 K32 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Light/Standard/next.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K22 ["PreviewAreaPrevious"]
  LOADK R14 K33 ["rbxasset://studio_svg_textures/Lua/TextureGenerator/Light/Standard/previous.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K24 ["ThumbsUp"]
  LOADK R14 K34 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K26 ["ThumbsDown"]
  LOADK R14 K35 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K28 ["ThumbsUpOutline"]
  LOADK R14 K36 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K30 ["ThumbsDownOutline"]
  LOADK R14 K37 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  DUPCLOSURE R11 K38 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R4
  RETURN R11 1
