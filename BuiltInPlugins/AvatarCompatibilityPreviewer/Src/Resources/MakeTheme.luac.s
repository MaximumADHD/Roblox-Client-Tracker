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
  NEWTABLE R11 32 0
  GETTABLEKS R12 R5 K20 ["AttachmentTool"]
  LOADK R13 K21 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/attachments_tool@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K22 ["CageTool"]
  LOADK R13 K23 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/cage_tool@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K24 ["Dots"]
  LOADK R13 K25 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K26 ["DotsVertical"]
  LOADK R13 K27 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/dots_vertical.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K28 ["Falloff"]
  LOADK R13 K29 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/falloff@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K30 ["Hide"]
  LOADK R13 K31 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hide.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K32 ["HideHover"]
  LOADK R13 K33 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hide_hover.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K34 ["HoverMenu"]
  LOADK R13 K35 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hover_menu.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K36 ["HoverMenuDisabled"]
  LOADK R13 K37 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hover_menu_disabled.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K38 ["MirrorToLeft"]
  LOADK R13 K39 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/mirror_to_left@3x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K40 ["MirrorToRight"]
  LOADK R13 K41 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/mirror_to_right@3x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K42 ["Projection"]
  LOADK R13 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/projection@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K44 ["PlayImage"]
  LOADK R13 K45 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K46 ["PreviewerBackgroundImage"]
  LOADK R13 K47 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_dark.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K48 ["Radius"]
  LOADK R13 K49 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K50 ["ResetCameraImage"]
  LOADK R13 K51 ["rbxasset://textures/AssetImport/btn_dark_resetcam_28x28.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K52 ["ResetChanges"]
  LOADK R13 K53 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/reset_changes@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K54 ["SendFeedback"]
  LOADK R13 K55 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rate_feedback@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K56 ["ShowClothing"]
  LOADK R13 K57 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/show_clothing@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K58 ["Star"]
  LOADK R13 K59 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K60 ["StarUnfilled"]
  LOADK R13 K61 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star_unfilled.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K62 ["Symmetry"]
  LOADK R13 K63 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/symmetry@2x.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K64 ["UGCValidationSuccessImage"]
  LOADK R13 K65 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/ugc_validation_success.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K66 ["Unhide"]
  LOADK R13 K67 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unhide.png"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K68 ["UnhideHover"]
  LOADK R13 K69 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unhide_hover.png"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  GETTABLEKS R11 R1 K18 ["Dictionary"]
  GETTABLEKS R10 R11 K19 ["join"]
  MOVE R11 R7
  NEWTABLE R12 32 0
  GETTABLEKS R13 R5 K20 ["AttachmentTool"]
  LOADK R14 K21 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/attachments_tool@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K22 ["CageTool"]
  LOADK R14 K23 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/cage_tool@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K24 ["Dots"]
  LOADK R14 K70 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K26 ["DotsVertical"]
  LOADK R14 K27 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/dots_vertical.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K28 ["Falloff"]
  LOADK R14 K29 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/falloff@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K30 ["Hide"]
  LOADK R14 K71 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hide.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K32 ["HideHover"]
  LOADK R14 K72 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hide_hover.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K34 ["HoverMenu"]
  LOADK R14 K73 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hover_menu.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K36 ["HoverMenuDisabled"]
  LOADK R14 K74 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hover_menu_disabled.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K38 ["MirrorToLeft"]
  LOADK R14 K75 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/mirror_to_left@3x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K40 ["MirrorToRight"]
  LOADK R14 K76 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/mirror_to_right@3x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K42 ["Projection"]
  LOADK R14 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/projection@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K44 ["PlayImage"]
  LOADK R14 K77 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K46 ["PreviewerBackgroundImage"]
  LOADK R14 K78 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_light.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K48 ["Radius"]
  LOADK R14 K49 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K50 ["ResetCameraImage"]
  LOADK R14 K79 ["rbxasset://textures/AssetImport/btn_light_resetcam_28x28.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K52 ["ResetChanges"]
  LOADK R14 K53 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/reset_changes@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K54 ["SendFeedback"]
  LOADK R14 K80 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/rate_feedback@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K56 ["ShowClothing"]
  LOADK R14 K57 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/show_clothing@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K58 ["Star"]
  LOADK R14 K81 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K60 ["StarUnfilled"]
  LOADK R14 K82 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star_unfilled.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K62 ["Symmetry"]
  LOADK R14 K63 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/symmetry@2x.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K64 ["UGCValidationSuccessImage"]
  LOADK R14 K83 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/ugc_validation_success.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K66 ["Unhide"]
  LOADK R14 K84 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/unhide.png"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K68 ["UnhideHover"]
  LOADK R14 K85 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/unhide_hover.png"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  DUPCLOSURE R11 K86 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R3
  RETURN R11 1
