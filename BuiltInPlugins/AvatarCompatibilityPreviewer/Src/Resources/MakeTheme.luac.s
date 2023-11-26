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
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["Style"]
  GETTABLEKS R5 R4 K13 ["StyleKey"]
  GETTABLEKS R7 R4 K14 ["Themes"]
  GETTABLEKS R6 R7 K15 ["DarkTheme"]
  GETTABLEKS R8 R4 K14 ["Themes"]
  GETTABLEKS R7 R8 K16 ["LightTheme"]
  GETTABLEKS R9 R4 K14 ["Themes"]
  GETTABLEKS R8 R9 K17 ["StudioTheme"]
  GETTABLEKS R10 R1 K18 ["Dictionary"]
  GETTABLEKS R9 R10 K19 ["join"]
  MOVE R10 R6
  NEWTABLE R11 8 0
  GETTABLEKS R12 R5 K20 ["PlayImage"]
  LOADK R13 K21 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K22 ["PreviewerBackgroundImage"]
  LOADK R13 K23 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_dark.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K24 ["ResetCameraImage"]
  LOADK R13 K25 ["rbxasset://textures/AssetImport/btn_dark_resetcam_28x28.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K26 ["SendFeedback"]
  LOADK R13 K27 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rate_feedback@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K28 ["Star"]
  LOADK R13 K29 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K30 ["StarUnfilled"]
  LOADK R13 K31 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star_unfilled.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K32 ["UGCValidationSuccessImage"]
  LOADK R13 K33 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/ugc_validation_success.png"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  GETTABLEKS R11 R1 K18 ["Dictionary"]
  GETTABLEKS R10 R11 K19 ["join"]
  MOVE R11 R7
  NEWTABLE R12 8 0
  GETTABLEKS R13 R5 K20 ["PlayImage"]
  LOADK R14 K34 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K22 ["PreviewerBackgroundImage"]
  LOADK R14 K35 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_light.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K24 ["ResetCameraImage"]
  LOADK R14 K36 ["rbxasset://textures/AssetImport/btn_light_resetcam_28x28.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K26 ["SendFeedback"]
  LOADK R14 K37 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/rate_feedback@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K28 ["Star"]
  LOADK R14 K38 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K30 ["StarUnfilled"]
  LOADK R14 K39 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star_unfilled.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K32 ["UGCValidationSuccessImage"]
  LOADK R14 K40 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/ugc_validation_success.png"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  DUPCLOSURE R11 K41 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R3
  RETURN R11 1
