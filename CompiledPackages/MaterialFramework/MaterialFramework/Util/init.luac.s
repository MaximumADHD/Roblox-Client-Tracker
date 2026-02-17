MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"Constants", "applyToBasePart", "applyToInstances", "getMaterialColor", "getMaterialName", "getSerializedMaterialIdentifier", "levenshteinDistance", "parseMaterial"}]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K0 ["Constants"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Constants"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K1 ["applyToBasePart"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["applyToBasePart"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K2 ["applyToInstances"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["applyToInstances"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K3 ["getMaterialColor"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["getMaterialColor"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K4 ["getMaterialName"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["getMaterialName"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K5 ["getSerializedMaterialIdentifier"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["getSerializedMaterialIdentifier"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K6 ["levenshteinDistance"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["levenshteinDistance"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K7 ["parseMaterial"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["parseMaterial"]
  RETURN R0 1
