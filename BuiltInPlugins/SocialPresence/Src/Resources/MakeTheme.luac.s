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
  DUPTABLE R5 K14 [{"activityRing", "collaboratorItem", "userThumbnail"}]
  LOADK R6 K15 ["rbxasset://textures/SocialPresence/ActivityRing.png"]
  SETTABLEKS R6 R5 K11 ["activityRing"]
  DUPTABLE R6 K21 [{"size", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
  GETIMPORT R7 K24 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 58
  CALL R7 4 1
  SETTABLEKS R7 R6 K16 ["size"]
  GETIMPORT R7 K26 [UDim2.fromOffset]
  LOADN R8 42
  LOADN R9 42
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["thumbnailSize"]
  GETTABLEKS R7 R4 K27 ["SubBackground"]
  SETTABLEKS R7 R6 K18 ["hoveredBackground"]
  GETIMPORT R7 K26 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["usernamePosition"]
  GETIMPORT R7 K26 [UDim2.fromOffset]
  LOADN R8 48
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K20 ["subtitlePosition"]
  SETTABLEKS R6 R5 K12 ["collaboratorItem"]
  DUPTABLE R6 K33 [{"background", "avatarBackground", "avatarSizeRatio", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R7 R4 K34 ["MainBackground"]
  SETTABLEKS R7 R6 K28 ["background"]
  GETTABLEKS R7 R4 K35 ["SecondaryContrast"]
  SETTABLEKS R7 R6 K29 ["avatarBackground"]
  LOADK R7 K36 [0.7]
  SETTABLEKS R7 R6 K30 ["avatarSizeRatio"]
  LOADK R7 K37 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R7 R6 K31 ["loadingImage"]
  LOADK R7 K38 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R7 R6 K32 ["loadFailureImage"]
  SETTABLEKS R6 R5 K13 ["userThumbnail"]
  DUPCLOSURE R6 K39 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
