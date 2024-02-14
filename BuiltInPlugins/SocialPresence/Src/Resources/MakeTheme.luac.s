PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
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
  DUPTABLE R5 K16 [{"activityRing", "footer", "collaboratorItem", "jumpButton", "userThumbnail"}]
  LOADK R6 K17 ["rbxasset://textures/SocialPresence/ActivityRing.png"]
  SETTABLEKS R6 R5 K11 ["activityRing"]
  DUPTABLE R6 K24 [{"borderColor", "iconColor", "moreIcon", "uncheckedIcon", "checkedIcon", "disableTeamCreateColor"}]
  GETTABLEKS R7 R4 K25 ["Border"]
  SETTABLEKS R7 R6 K18 ["borderColor"]
  GETTABLEKS R7 R4 K26 ["ButtonText"]
  SETTABLEKS R7 R6 K19 ["iconColor"]
  LOADK R7 K27 ["rbxasset://textures/SocialPresence/MoreIcon.png"]
  SETTABLEKS R7 R6 K20 ["moreIcon"]
  GETTABLEKS R7 R4 K28 ["CheckboxUncheckedImage"]
  SETTABLEKS R7 R6 K21 ["uncheckedIcon"]
  GETTABLEKS R7 R4 K29 ["CheckboxCheckedImage"]
  SETTABLEKS R7 R6 K22 ["checkedIcon"]
  GETIMPORT R7 K32 [Color3.fromRGB]
  LOADN R8 244
  LOADN R9 100
  LOADN R10 93
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["disableTeamCreateColor"]
  SETTABLEKS R6 R5 K12 ["footer"]
  DUPTABLE R6 K39 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R7 K42 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 58
  CALL R7 4 1
  SETTABLEKS R7 R6 K33 ["size"]
  GETIMPORT R7 K42 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 96
  CALL R7 4 1
  SETTABLEKS R7 R6 K34 ["expandedSize"]
  GETIMPORT R7 K44 [UDim2.fromOffset]
  LOADN R8 42
  LOADN R9 42
  CALL R7 2 1
  SETTABLEKS R7 R6 K35 ["thumbnailSize"]
  GETTABLEKS R7 R4 K45 ["SubBackground"]
  SETTABLEKS R7 R6 K36 ["hoveredBackground"]
  GETIMPORT R7 K44 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K37 ["usernamePosition"]
  GETIMPORT R7 K44 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K38 ["subtitlePosition"]
  SETTABLEKS R6 R5 K13 ["collaboratorItem"]
  DUPTABLE R6 K50 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
  GETTABLEKS R7 R4 K51 ["ImageButtonBackground"]
  SETTABLEKS R7 R6 K46 ["background"]
  GETTABLEKS R7 R4 K52 ["ButtonHover"]
  SETTABLEKS R7 R6 K36 ["hoveredBackground"]
  GETTABLEKS R7 R4 K53 ["ButtonPressed"]
  SETTABLEKS R7 R6 K47 ["pressedBackground"]
  GETTABLEKS R7 R4 K54 ["TextPrimary"]
  SETTABLEKS R7 R6 K48 ["textColor"]
  DUPTABLE R7 K58 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
  LOADK R8 K59 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R8 R7 K55 ["BackgroundImage"]
  GETIMPORT R8 K61 [Rect.new]
  LOADN R9 3
  LOADN R10 3
  LOADN R11 13
  LOADN R12 13
  CALL R8 4 1
  SETTABLEKS R8 R7 K56 ["SliceCenter"]
  LOADN R8 0
  SETTABLEKS R8 R7 K57 ["BorderSize"]
  SETTABLEKS R7 R6 K49 ["baseStyle"]
  SETTABLEKS R6 R5 K14 ["jumpButton"]
  DUPTABLE R6 K68 [{"background", "avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R7 R4 K69 ["MainBackground"]
  SETTABLEKS R7 R6 K46 ["background"]
  GETTABLEKS R7 R4 K70 ["SecondaryContrast"]
  SETTABLEKS R7 R6 K62 ["avatarBackground"]
  GETTABLEKS R7 R4 K71 ["ForegroundContrast"]
  SETTABLEKS R7 R6 K63 ["avatarIdleBackground"]
  LOADK R7 K72 [0.7]
  SETTABLEKS R7 R6 K64 ["avatarSizeRatio"]
  GETIMPORT R7 K32 [Color3.fromRGB]
  LOADN R8 140
  LOADN R9 140
  LOADN R10 140
  CALL R7 3 1
  SETTABLEKS R7 R6 K65 ["idleTint"]
  LOADK R7 K73 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R7 R6 K66 ["loadingImage"]
  LOADK R7 K74 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R7 R6 K67 ["loadFailureImage"]
  SETTABLEKS R6 R5 K15 ["userThumbnail"]
  DUPCLOSURE R6 K75 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
