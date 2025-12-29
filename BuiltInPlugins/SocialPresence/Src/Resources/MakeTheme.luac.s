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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Bin"]
  GETTABLEKS R3 R4 K8 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["Style"]
  GETTABLEKS R5 R3 K10 ["Themes"]
  GETTABLEKS R4 R5 K11 ["StudioTheme"]
  GETTABLEKS R5 R3 K12 ["StyleKey"]
  NEWTABLE R6 8 0
  GETTABLEKS R7 R5 K13 ["ActivityRing"]
  LOADK R8 K14 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Light/Large/ActivityRing.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K15 ["AddCollaboratorIcon"]
  GETTABLEKS R9 R2 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADK R8 K17 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/AddCollaborator.png"]
  JUMP [+1]
  LOADK R8 K18 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K19 ["CheckboxOnIcon"]
  LOADK R8 K20 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K21 ["CheckboxOffIcon"]
  LOADK R8 K22 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K23 ["MoreIcon"]
  LOADK R8 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R5 K25 ["RibbonBarHover"]
  GETIMPORT R8 K28 [Color3.fromRGB]
  LOADN R9 228
  LOADN R10 238
  LOADN R11 254
  CALL R8 3 1
  SETTABLE R8 R6 R7
  NEWTABLE R7 8 0
  GETTABLEKS R8 R5 K13 ["ActivityRing"]
  LOADK R9 K29 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Dark/Large/ActivityRing.png"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K15 ["AddCollaboratorIcon"]
  GETTABLEKS R10 R2 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADK R9 K30 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/AddCollaborator.png"]
  JUMP [+1]
  LOADK R9 K31 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K19 ["CheckboxOnIcon"]
  LOADK R9 K32 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K21 ["CheckboxOffIcon"]
  LOADK R9 K33 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K23 ["MoreIcon"]
  LOADK R9 K34 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R5 K25 ["RibbonBarHover"]
  GETIMPORT R9 K28 [Color3.fromRGB]
  LOADN R10 37
  LOADN R11 37
  LOADN R12 37
  CALL R9 3 1
  SETTABLE R9 R7 R8
  DUPTABLE R8 K42 [{"activityRing", "ribbonItem", "footer", "highlightToggle", "collaboratorItem", "jumpButton", "userThumbnail"}]
  GETTABLEKS R9 R5 K13 ["ActivityRing"]
  SETTABLEKS R9 R8 K35 ["activityRing"]
  DUPTABLE R9 K48 [{"size", "background", "overflowBackground", "addIcon", "buttonHover"}]
  GETIMPORT R10 K51 [UDim2.new]
  LOADN R11 0
  LOADN R12 24
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K43 ["size"]
  GETTABLEKS R10 R5 K52 ["Tab"]
  SETTABLEKS R10 R9 K44 ["background"]
  GETTABLEKS R10 R5 K53 ["ImageButtonBackground"]
  SETTABLEKS R10 R9 K45 ["overflowBackground"]
  GETTABLEKS R10 R5 K15 ["AddCollaboratorIcon"]
  SETTABLEKS R10 R9 K46 ["addIcon"]
  GETTABLEKS R10 R5 K25 ["RibbonBarHover"]
  SETTABLEKS R10 R9 K47 ["buttonHover"]
  SETTABLEKS R9 R8 K36 ["ribbonItem"]
  DUPTABLE R9 K61 [{"height", "borderColor", "iconColor", "moreIcon", "uncheckedIcon", "checkedIcon", "disableTeamCreateColor"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K54 ["height"]
  GETTABLEKS R10 R5 K62 ["Border"]
  SETTABLEKS R10 R9 K55 ["borderColor"]
  GETTABLEKS R10 R5 K63 ["ButtonText"]
  SETTABLEKS R10 R9 K56 ["iconColor"]
  GETTABLEKS R10 R5 K23 ["MoreIcon"]
  SETTABLEKS R10 R9 K57 ["moreIcon"]
  GETTABLEKS R10 R5 K21 ["CheckboxOffIcon"]
  SETTABLEKS R10 R9 K58 ["uncheckedIcon"]
  GETTABLEKS R10 R5 K19 ["CheckboxOnIcon"]
  SETTABLEKS R10 R9 K59 ["checkedIcon"]
  GETIMPORT R10 K28 [Color3.fromRGB]
  LOADN R11 244
  LOADN R12 100
  LOADN R13 93
  CALL R10 3 1
  SETTABLEKS R10 R9 K60 ["disableTeamCreateColor"]
  SETTABLEKS R9 R8 K37 ["footer"]
  DUPTABLE R9 K65 [{"height", "background", "border"}]
  LOADN R10 28
  SETTABLEKS R10 R9 K54 ["height"]
  GETTABLEKS R10 R5 K66 ["SubBackground"]
  SETTABLEKS R10 R9 K44 ["background"]
  GETTABLEKS R10 R5 K62 ["Border"]
  SETTABLEKS R10 R9 K64 ["border"]
  SETTABLEKS R9 R8 K38 ["highlightToggle"]
  DUPTABLE R9 K72 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R10 K51 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 58
  CALL R10 4 1
  SETTABLEKS R10 R9 K43 ["size"]
  GETIMPORT R10 K51 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 96
  CALL R10 4 1
  SETTABLEKS R10 R9 K67 ["expandedSize"]
  GETIMPORT R10 K74 [UDim2.fromOffset]
  LOADN R11 42
  LOADN R12 42
  CALL R10 2 1
  SETTABLEKS R10 R9 K68 ["thumbnailSize"]
  GETTABLEKS R10 R5 K66 ["SubBackground"]
  SETTABLEKS R10 R9 K69 ["hoveredBackground"]
  GETIMPORT R10 K74 [UDim2.fromOffset]
  LOADN R11 48
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K70 ["usernamePosition"]
  GETIMPORT R10 K74 [UDim2.fromOffset]
  LOADN R11 48
  LOADN R12 24
  CALL R10 2 1
  SETTABLEKS R10 R9 K71 ["subtitlePosition"]
  SETTABLEKS R9 R8 K39 ["collaboratorItem"]
  DUPTABLE R9 K78 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
  GETTABLEKS R10 R5 K53 ["ImageButtonBackground"]
  SETTABLEKS R10 R9 K44 ["background"]
  GETTABLEKS R10 R5 K79 ["ButtonHover"]
  SETTABLEKS R10 R9 K69 ["hoveredBackground"]
  GETTABLEKS R10 R5 K80 ["ButtonPressed"]
  SETTABLEKS R10 R9 K75 ["pressedBackground"]
  GETTABLEKS R10 R5 K81 ["TextPrimary"]
  SETTABLEKS R10 R9 K76 ["textColor"]
  DUPTABLE R10 K85 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
  LOADK R11 K86 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R11 R10 K82 ["BackgroundImage"]
  GETIMPORT R11 K88 [Rect.new]
  LOADN R12 3
  LOADN R13 3
  LOADN R14 13
  LOADN R15 13
  CALL R11 4 1
  SETTABLEKS R11 R10 K83 ["SliceCenter"]
  LOADN R11 0
  SETTABLEKS R11 R10 K84 ["BorderSize"]
  SETTABLEKS R10 R9 K77 ["baseStyle"]
  SETTABLEKS R9 R8 K40 ["jumpButton"]
  DUPTABLE R9 K95 [{"avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R10 R5 K96 ["SecondaryContrast"]
  SETTABLEKS R10 R9 K89 ["avatarBackground"]
  GETTABLEKS R10 R5 K97 ["ForegroundContrast"]
  SETTABLEKS R10 R9 K90 ["avatarIdleBackground"]
  LOADK R10 K98 [0.75]
  SETTABLEKS R10 R9 K91 ["avatarSizeRatio"]
  GETIMPORT R10 K28 [Color3.fromRGB]
  LOADN R11 140
  LOADN R12 140
  LOADN R13 140
  CALL R10 3 1
  SETTABLEKS R10 R9 K92 ["idleTint"]
  LOADK R10 K99 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R10 R9 K93 ["loadingImage"]
  LOADK R10 K100 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R10 R9 K94 ["loadFailureImage"]
  SETTABLEKS R9 R8 K41 ["userThumbnail"]
  DUPCLOSURE R9 K101 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  RETURN R9 1
