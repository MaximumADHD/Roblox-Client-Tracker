MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["combined"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  NEWTABLE R1 2 0
  GETTABLEKS R2 R0 K7 ["injectGlobalErrorHandlers"]
  SETTABLEKS R2 R1 K7 ["injectGlobalErrorHandlers"]
  GETTABLEKS R2 R0 K8 ["restoreGlobalErrorHandlers"]
  SETTABLEKS R2 R1 K8 ["restoreGlobalErrorHandlers"]
  RETURN R1 1
