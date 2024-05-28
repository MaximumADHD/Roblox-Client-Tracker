PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportEnableMultipleFiles_DEV"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 2
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["getFFlagAssetImportRefactorFileOpen"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["getFFlagAssetImportRefactorPresetDropdown"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["getFFlagAssetImportRefactorReducer"]
  CALL R3 1 1
  GETIMPORT R4 K9 [game]
  LOADK R6 K10 ["AssetImportEnableMultipleFiles_DEV"]
  LOADB R7 0
  NAMECALL R4 R4 K11 ["DefineFastFlag"]
  CALL R4 3 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
