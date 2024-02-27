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
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["StyleKey"]
  NEWTABLE R5 4 0
  GETTABLEKS R6 R4 K11 ["ActivityRing"]
  LOADK R7 K12 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Light/Large/ActivityRing.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K13 ["CheckboxOnIcon"]
  LOADK R7 K14 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K15 ["CheckboxOffIcon"]
  LOADK R7 K16 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K17 ["MoreIcon"]
  LOADK R7 K18 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLE R7 R5 R6
  NEWTABLE R6 4 0
  GETTABLEKS R7 R4 K11 ["ActivityRing"]
  LOADK R8 K19 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Dark/Large/ActivityRing.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K13 ["CheckboxOnIcon"]
  LOADK R8 K20 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K15 ["CheckboxOffIcon"]
  LOADK R8 K21 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K17 ["MoreIcon"]
  LOADK R8 K22 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K29 [{"activityRing", "footer", "highlightToggle", "collaboratorItem", "jumpButton", "userThumbnail"}]
  GETTABLEKS R8 R4 K11 ["ActivityRing"]
  SETTABLEKS R8 R7 K23 ["activityRing"]
  DUPTABLE R8 K37 [{"height", "borderColor", "iconColor", "moreIcon", "uncheckedIcon", "checkedIcon", "disableTeamCreateColor"}]
  LOADN R9 24
  SETTABLEKS R9 R8 K30 ["height"]
  GETTABLEKS R9 R4 K38 ["Border"]
  SETTABLEKS R9 R8 K31 ["borderColor"]
  GETTABLEKS R9 R4 K39 ["ButtonText"]
  SETTABLEKS R9 R8 K32 ["iconColor"]
  GETTABLEKS R9 R4 K17 ["MoreIcon"]
  SETTABLEKS R9 R8 K33 ["moreIcon"]
  GETTABLEKS R9 R4 K15 ["CheckboxOffIcon"]
  SETTABLEKS R9 R8 K34 ["uncheckedIcon"]
  GETTABLEKS R9 R4 K13 ["CheckboxOnIcon"]
  SETTABLEKS R9 R8 K35 ["checkedIcon"]
  GETIMPORT R9 K42 [Color3.fromRGB]
  LOADN R10 244
  LOADN R11 100
  LOADN R12 93
  CALL R9 3 1
  SETTABLEKS R9 R8 K36 ["disableTeamCreateColor"]
  SETTABLEKS R8 R7 K24 ["footer"]
  DUPTABLE R8 K45 [{"height", "background", "border"}]
  LOADN R9 28
  SETTABLEKS R9 R8 K30 ["height"]
  GETTABLEKS R9 R4 K46 ["SubBackground"]
  SETTABLEKS R9 R8 K43 ["background"]
  GETTABLEKS R9 R4 K38 ["Border"]
  SETTABLEKS R9 R8 K44 ["border"]
  SETTABLEKS R8 R7 K25 ["highlightToggle"]
  DUPTABLE R8 K53 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R9 K56 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 58
  CALL R9 4 1
  SETTABLEKS R9 R8 K47 ["size"]
  GETIMPORT R9 K56 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 96
  CALL R9 4 1
  SETTABLEKS R9 R8 K48 ["expandedSize"]
  GETIMPORT R9 K58 [UDim2.fromOffset]
  LOADN R10 42
  LOADN R11 42
  CALL R9 2 1
  SETTABLEKS R9 R8 K49 ["thumbnailSize"]
  GETTABLEKS R9 R4 K46 ["SubBackground"]
  SETTABLEKS R9 R8 K50 ["hoveredBackground"]
  GETIMPORT R9 K58 [UDim2.fromOffset]
  LOADN R10 48
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K51 ["usernamePosition"]
  GETIMPORT R9 K58 [UDim2.fromOffset]
  LOADN R10 48
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K52 ["subtitlePosition"]
  SETTABLEKS R8 R7 K26 ["collaboratorItem"]
  DUPTABLE R8 K62 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
  GETTABLEKS R9 R4 K63 ["ImageButtonBackground"]
  SETTABLEKS R9 R8 K43 ["background"]
  GETTABLEKS R9 R4 K64 ["ButtonHover"]
  SETTABLEKS R9 R8 K50 ["hoveredBackground"]
  GETTABLEKS R9 R4 K65 ["ButtonPressed"]
  SETTABLEKS R9 R8 K59 ["pressedBackground"]
  GETTABLEKS R9 R4 K66 ["TextPrimary"]
  SETTABLEKS R9 R8 K60 ["textColor"]
  DUPTABLE R9 K70 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
  LOADK R10 K71 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R10 R9 K67 ["BackgroundImage"]
  GETIMPORT R10 K73 [Rect.new]
  LOADN R11 3
  LOADN R12 3
  LOADN R13 13
  LOADN R14 13
  CALL R10 4 1
  SETTABLEKS R10 R9 K68 ["SliceCenter"]
  LOADN R10 0
  SETTABLEKS R10 R9 K69 ["BorderSize"]
  SETTABLEKS R9 R8 K61 ["baseStyle"]
  SETTABLEKS R8 R7 K27 ["jumpButton"]
  DUPTABLE R8 K80 [{"background", "avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R9 R4 K81 ["MainBackground"]
  SETTABLEKS R9 R8 K43 ["background"]
  GETTABLEKS R9 R4 K82 ["SecondaryContrast"]
  SETTABLEKS R9 R8 K74 ["avatarBackground"]
  GETTABLEKS R9 R4 K83 ["ForegroundContrast"]
  SETTABLEKS R9 R8 K75 ["avatarIdleBackground"]
  LOADK R9 K84 [0.75]
  SETTABLEKS R9 R8 K76 ["avatarSizeRatio"]
  GETIMPORT R9 K42 [Color3.fromRGB]
  LOADN R10 140
  LOADN R11 140
  LOADN R12 140
  CALL R9 3 1
  SETTABLEKS R9 R8 K77 ["idleTint"]
  LOADK R9 K85 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R9 R8 K78 ["loadingImage"]
  LOADK R9 K86 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R9 R8 K79 ["loadFailureImage"]
  SETTABLEKS R8 R7 K28 ["userThumbnail"]
  DUPCLOSURE R8 K87 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R8 1
