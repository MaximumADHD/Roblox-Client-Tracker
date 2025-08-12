PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EFAinSettingsBulkShouldImportEnabled"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIF R0 [+2]
  GETUPVAL R0 0
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
  GETTABLEKS R2 R3 K8 ["getFFlagDebugTestingEFBulkShouldImport"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
