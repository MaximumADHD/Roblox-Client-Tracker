PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K14 [{"FailedUrl", "FailedToImportMap", "FailedToUploadFromFileMap", "FailedToUploadTooLarge", "FailedToInsertAssetManager", "MissingMaterial", "None"}]
  LOADK R3 K7 ["FailedUrl"]
  SETTABLEKS R3 R2 K7 ["FailedUrl"]
  LOADK R3 K8 ["FailedToImportMap"]
  SETTABLEKS R3 R2 K8 ["FailedToImportMap"]
  LOADK R3 K9 ["FailedToUploadFromFileMap"]
  SETTABLEKS R3 R2 K9 ["FailedToUploadFromFileMap"]
  LOADK R3 K10 ["FailedToUploadTooLarge"]
  SETTABLEKS R3 R2 K10 ["FailedToUploadTooLarge"]
  LOADK R3 K11 ["FailedToInsertAssetManager"]
  SETTABLEKS R3 R2 K11 ["FailedToInsertAssetManager"]
  LOADK R3 K12 ["MissingMaterial"]
  SETTABLEKS R3 R2 K12 ["MissingMaterial"]
  LOADK R3 K13 ["None"]
  SETTABLEKS R3 R2 K13 ["None"]
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
