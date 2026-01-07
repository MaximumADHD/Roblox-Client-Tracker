MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Icon"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["IconVariant"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Font"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Migration"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["getKeycodeBuilderIcon"]
  CALL R4 1 1
  DUPTABLE R5 K10 [{"Icon", "IconVariant", "Font", "Migration", "getBuilderIconForKeycode"}]
  SETTABLEKS R0 R5 K4 ["Icon"]
  SETTABLEKS R1 R5 K5 ["IconVariant"]
  SETTABLEKS R2 R5 K6 ["Font"]
  SETTABLEKS R3 R5 K7 ["Migration"]
  SETTABLEKS R4 R5 K9 ["getBuilderIconForKeycode"]
  RETURN R5 1
