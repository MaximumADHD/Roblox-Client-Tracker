PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportEnableMultipleFiles_DEV"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["getFFlagAssetImporterCustomPresets"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["AssetImportEnableMultipleFiles_DEV"]
  LOADB R4 0
  NAMECALL R1 R1 K9 ["DefineFastFlag"]
  CALL R1 3 0
  DUPCLOSURE R1 K10 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
