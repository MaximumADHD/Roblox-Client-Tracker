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
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["getFFlagAssetImportFixErrorOnCorruptedFilesPlugin"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["getFFlagAssetImporterCustomPresets"]
  CALL R1 1 1
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["AssetImportEnableMultipleFiles_DEV"]
  LOADB R5 0
  NAMECALL R2 R2 K10 ["DefineFastFlag"]
  CALL R2 3 0
  DUPCLOSURE R2 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1
