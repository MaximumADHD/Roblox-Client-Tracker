MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utility"]
  GETTABLEKS R2 R3 K8 ["isFTF"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["ChooseAnimationForRestPose"]
  LOADB R5 1
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K13 ["HideAnimationSettingForGltf"]
  LOADB R5 1
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K14 ["ImporterOpensAvatarPreviewerBetaCheck"]
  LOADB R5 1
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K15 ["AssetImportUseUploadId"]
  LOADB R5 1
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K16 ["KeepZeroInfluenceBones"]
  LOADB R5 1
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  LOADNIL R2
  RETURN R2 1
