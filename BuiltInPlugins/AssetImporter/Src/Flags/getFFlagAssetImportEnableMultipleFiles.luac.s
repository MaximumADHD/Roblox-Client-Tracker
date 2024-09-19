PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportEnableMultipleFiles_DEV"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 1
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagAssetImportUseQueueItem"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagAssetImportRefactorUploadWidgets"]
  CALL R2 1 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["AssetImportEnableMultipleFiles_DEV"]
  LOADB R6 0
  NAMECALL R3 R3 K13 ["DefineFastFlag"]
  CALL R3 3 0
  DUPCLOSURE R3 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
