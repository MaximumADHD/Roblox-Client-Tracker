MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["combined"]
  CALL R0 1 1
  NEWTABLE R1 2 0
  GETTABLEKS R2 R0 K6 ["injectGlobalErrorHandlers"]
  SETTABLEKS R2 R1 K6 ["injectGlobalErrorHandlers"]
  GETTABLEKS R2 R0 K7 ["restoreGlobalErrorHandlers"]
  SETTABLEKS R2 R1 K7 ["restoreGlobalErrorHandlers"]
  RETURN R1 1
