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
  NEWTABLE R5 8 0
  GETTABLEKS R6 R4 K11 ["ActivityRing"]
  LOADK R7 K12 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Light/Large/ActivityRing.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K13 ["AddCollaboratorIcon"]
  LOADK R7 K14 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K15 ["CheckboxOnIcon"]
  LOADK R7 K16 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K17 ["CheckboxOffIcon"]
  LOADK R7 K18 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K19 ["MoreIcon"]
  LOADK R7 K20 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K21 ["RibbonBarHover"]
  GETIMPORT R7 K24 [Color3.fromRGB]
  LOADN R8 228
  LOADN R9 238
  LOADN R10 254
  CALL R7 3 1
  SETTABLE R7 R5 R6
  NEWTABLE R6 8 0
  GETTABLEKS R7 R4 K11 ["ActivityRing"]
  LOADK R8 K25 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Dark/Large/ActivityRing.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K13 ["AddCollaboratorIcon"]
  LOADK R8 K26 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K15 ["CheckboxOnIcon"]
  LOADK R8 K27 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K17 ["CheckboxOffIcon"]
  LOADK R8 K28 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K19 ["MoreIcon"]
  LOADK R8 K29 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R4 K21 ["RibbonBarHover"]
  GETIMPORT R8 K24 [Color3.fromRGB]
  LOADN R9 37
  LOADN R10 37
  LOADN R11 37
  CALL R8 3 1
  SETTABLE R8 R6 R7
  DUPTABLE R7 K37 [{"activityRing", "ribbonItem", "footer", "highlightToggle", "collaboratorItem", "jumpButton", "userThumbnail"}]
  GETTABLEKS R8 R4 K11 ["ActivityRing"]
  SETTABLEKS R8 R7 K30 ["activityRing"]
  DUPTABLE R8 K43 [{"size", "background", "overflowBackground", "addIcon", "buttonHover"}]
  GETIMPORT R9 K46 [UDim2.new]
  LOADN R10 0
  LOADN R11 24
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K38 ["size"]
  GETTABLEKS R9 R4 K47 ["Tab"]
  SETTABLEKS R9 R8 K39 ["background"]
  GETTABLEKS R9 R4 K48 ["ImageButtonBackground"]
  SETTABLEKS R9 R8 K40 ["overflowBackground"]
  GETTABLEKS R9 R4 K13 ["AddCollaboratorIcon"]
  SETTABLEKS R9 R8 K41 ["addIcon"]
  GETTABLEKS R9 R4 K21 ["RibbonBarHover"]
  SETTABLEKS R9 R8 K42 ["buttonHover"]
  SETTABLEKS R8 R7 K31 ["ribbonItem"]
  DUPTABLE R8 K56 [{"height", "borderColor", "iconColor", "moreIcon", "uncheckedIcon", "checkedIcon", "disableTeamCreateColor"}]
  LOADN R9 24
  SETTABLEKS R9 R8 K49 ["height"]
  GETTABLEKS R9 R4 K57 ["Border"]
  SETTABLEKS R9 R8 K50 ["borderColor"]
  GETTABLEKS R9 R4 K58 ["ButtonText"]
  SETTABLEKS R9 R8 K51 ["iconColor"]
  GETTABLEKS R9 R4 K19 ["MoreIcon"]
  SETTABLEKS R9 R8 K52 ["moreIcon"]
  GETTABLEKS R9 R4 K17 ["CheckboxOffIcon"]
  SETTABLEKS R9 R8 K53 ["uncheckedIcon"]
  GETTABLEKS R9 R4 K15 ["CheckboxOnIcon"]
  SETTABLEKS R9 R8 K54 ["checkedIcon"]
  GETIMPORT R9 K24 [Color3.fromRGB]
  LOADN R10 244
  LOADN R11 100
  LOADN R12 93
  CALL R9 3 1
  SETTABLEKS R9 R8 K55 ["disableTeamCreateColor"]
  SETTABLEKS R8 R7 K32 ["footer"]
  DUPTABLE R8 K60 [{"height", "background", "border"}]
  LOADN R9 28
  SETTABLEKS R9 R8 K49 ["height"]
  GETTABLEKS R9 R4 K61 ["SubBackground"]
  SETTABLEKS R9 R8 K39 ["background"]
  GETTABLEKS R9 R4 K57 ["Border"]
  SETTABLEKS R9 R8 K59 ["border"]
  SETTABLEKS R8 R7 K33 ["highlightToggle"]
  DUPTABLE R8 K67 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R9 K46 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 58
  CALL R9 4 1
  SETTABLEKS R9 R8 K38 ["size"]
  GETIMPORT R9 K46 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 96
  CALL R9 4 1
  SETTABLEKS R9 R8 K62 ["expandedSize"]
  GETIMPORT R9 K69 [UDim2.fromOffset]
  LOADN R10 42
  LOADN R11 42
  CALL R9 2 1
  SETTABLEKS R9 R8 K63 ["thumbnailSize"]
  GETTABLEKS R9 R4 K61 ["SubBackground"]
  SETTABLEKS R9 R8 K64 ["hoveredBackground"]
  GETIMPORT R9 K69 [UDim2.fromOffset]
  LOADN R10 48
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K65 ["usernamePosition"]
  GETIMPORT R9 K69 [UDim2.fromOffset]
  LOADN R10 48
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K66 ["subtitlePosition"]
  SETTABLEKS R8 R7 K34 ["collaboratorItem"]
  DUPTABLE R8 K73 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
  GETTABLEKS R9 R4 K48 ["ImageButtonBackground"]
  SETTABLEKS R9 R8 K39 ["background"]
  GETTABLEKS R9 R4 K74 ["ButtonHover"]
  SETTABLEKS R9 R8 K64 ["hoveredBackground"]
  GETTABLEKS R9 R4 K75 ["ButtonPressed"]
  SETTABLEKS R9 R8 K70 ["pressedBackground"]
  GETTABLEKS R9 R4 K76 ["TextPrimary"]
  SETTABLEKS R9 R8 K71 ["textColor"]
  DUPTABLE R9 K80 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
  LOADK R10 K81 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R10 R9 K77 ["BackgroundImage"]
  GETIMPORT R10 K83 [Rect.new]
  LOADN R11 3
  LOADN R12 3
  LOADN R13 13
  LOADN R14 13
  CALL R10 4 1
  SETTABLEKS R10 R9 K78 ["SliceCenter"]
  LOADN R10 0
  SETTABLEKS R10 R9 K79 ["BorderSize"]
  SETTABLEKS R9 R8 K72 ["baseStyle"]
  SETTABLEKS R8 R7 K35 ["jumpButton"]
  DUPTABLE R8 K90 [{"avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R9 R4 K91 ["SecondaryContrast"]
  SETTABLEKS R9 R8 K84 ["avatarBackground"]
  GETTABLEKS R9 R4 K92 ["ForegroundContrast"]
  SETTABLEKS R9 R8 K85 ["avatarIdleBackground"]
  LOADK R9 K93 [0.75]
  SETTABLEKS R9 R8 K86 ["avatarSizeRatio"]
  GETIMPORT R9 K24 [Color3.fromRGB]
  LOADN R10 140
  LOADN R11 140
  LOADN R12 140
  CALL R9 3 1
  SETTABLEKS R9 R8 K87 ["idleTint"]
  LOADK R9 K94 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R9 R8 K88 ["loadingImage"]
  LOADK R9 K95 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R9 R8 K89 ["loadFailureImage"]
  SETTABLEKS R8 R7 K36 ["userThumbnail"]
  DUPCLOSURE R8 K96 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R8 1
