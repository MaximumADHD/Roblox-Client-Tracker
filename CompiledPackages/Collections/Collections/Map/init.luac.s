MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ES7Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Map"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K7 ["coerceToMap"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["coerceToTable"]
  CALL R4 1 1
  DUPTABLE R5 K9 [{"Map", "coerceToMap", "coerceToTable"}]
  SETTABLEKS R2 R5 K6 ["Map"]
  SETTABLEKS R3 R5 K7 ["coerceToMap"]
  SETTABLEKS R4 R5 K8 ["coerceToTable"]
  RETURN R5 1
