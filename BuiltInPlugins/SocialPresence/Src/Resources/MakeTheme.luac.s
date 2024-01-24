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
  DUPTABLE R5 K13 [{"userThumbnail", "activityRing"}]
  DUPTABLE R6 K19 [{"background", "avatarBackground", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R7 R4 K20 ["MainBackground"]
  SETTABLEKS R7 R6 K14 ["background"]
  GETTABLEKS R7 R4 K21 ["SecondaryContrast"]
  SETTABLEKS R7 R6 K15 ["avatarBackground"]
  LOADK R7 K22 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R7 R6 K16 ["maskImage"]
  LOADK R7 K23 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R7 R6 K17 ["loadingImage"]
  LOADK R7 K24 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R7 R6 K18 ["loadFailureImage"]
  SETTABLEKS R6 R5 K11 ["userThumbnail"]
  LOADK R6 K25 ["rbxasset://textures/SocialPresence/ActivityRing.png"]
  SETTABLEKS R6 R5 K12 ["activityRing"]
  DUPCLOSURE R6 K26 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
