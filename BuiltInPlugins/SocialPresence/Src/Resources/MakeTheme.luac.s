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
  DUPTABLE R5 K15 [{"activityRing", "collaboratorItem", "jumpButton", "userThumbnail"}]
  LOADK R6 K16 ["rbxasset://textures/SocialPresence/ActivityRing.png"]
  SETTABLEKS R6 R5 K11 ["activityRing"]
  DUPTABLE R6 K23 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R7 K26 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 58
  CALL R7 4 1
  SETTABLEKS R7 R6 K17 ["size"]
  GETIMPORT R7 K26 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 96
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["expandedSize"]
  GETIMPORT R7 K28 [UDim2.fromOffset]
  LOADN R8 42
  LOADN R9 42
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["thumbnailSize"]
  GETTABLEKS R7 R4 K29 ["SubBackground"]
  SETTABLEKS R7 R6 K20 ["hoveredBackground"]
  GETIMPORT R7 K28 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K21 ["usernamePosition"]
  GETIMPORT R7 K28 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["subtitlePosition"]
  SETTABLEKS R6 R5 K12 ["collaboratorItem"]
  DUPTABLE R6 K34 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
  GETTABLEKS R7 R4 K35 ["ImageButtonBackground"]
  SETTABLEKS R7 R6 K30 ["background"]
  GETTABLEKS R7 R4 K36 ["ButtonHover"]
  SETTABLEKS R7 R6 K20 ["hoveredBackground"]
  GETTABLEKS R7 R4 K37 ["ButtonPressed"]
  SETTABLEKS R7 R6 K31 ["pressedBackground"]
  GETTABLEKS R7 R4 K38 ["TextPrimary"]
  SETTABLEKS R7 R6 K32 ["textColor"]
  DUPTABLE R7 K42 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
  LOADK R8 K43 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R8 R7 K39 ["BackgroundImage"]
  GETIMPORT R8 K45 [Rect.new]
  LOADN R9 3
  LOADN R10 3
  LOADN R11 13
  LOADN R12 13
  CALL R8 4 1
  SETTABLEKS R8 R7 K40 ["SliceCenter"]
  LOADN R8 0
  SETTABLEKS R8 R7 K41 ["BorderSize"]
  SETTABLEKS R7 R6 K33 ["baseStyle"]
  SETTABLEKS R6 R5 K13 ["jumpButton"]
  DUPTABLE R6 K52 [{"background", "avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R7 R4 K53 ["MainBackground"]
  SETTABLEKS R7 R6 K30 ["background"]
  GETTABLEKS R7 R4 K54 ["SecondaryContrast"]
  SETTABLEKS R7 R6 K46 ["avatarBackground"]
  GETTABLEKS R7 R4 K55 ["ForegroundContrast"]
  SETTABLEKS R7 R6 K47 ["avatarIdleBackground"]
  LOADK R7 K56 [0.7]
  SETTABLEKS R7 R6 K48 ["avatarSizeRatio"]
  GETIMPORT R7 K59 [Color3.fromRGB]
  LOADN R8 140
  LOADN R9 140
  LOADN R10 140
  CALL R7 3 1
  SETTABLEKS R7 R6 K49 ["idleTint"]
  LOADK R7 K60 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R7 R6 K50 ["loadingImage"]
  LOADK R7 K61 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R7 R6 K51 ["loadFailureImage"]
  SETTABLEKS R6 R5 K14 ["userThumbnail"]
  DUPCLOSURE R6 K62 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
