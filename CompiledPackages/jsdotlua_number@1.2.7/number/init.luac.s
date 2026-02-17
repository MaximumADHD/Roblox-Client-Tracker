MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"isFinite", "isInteger", "isNaN", "isSafeInteger", "MAX_SAFE_INTEGER", "MIN_SAFE_INTEGER", "NaN", "toExponential"}]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K0 ["isFinite"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K0 ["isFinite"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K1 ["isInteger"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K1 ["isInteger"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K2 ["isNaN"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K2 ["isNaN"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K3 ["isSafeInteger"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K3 ["isSafeInteger"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K4 ["MAX_SAFE_INTEGER"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K4 ["MAX_SAFE_INTEGER"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K5 ["MIN_SAFE_INTEGER"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K5 ["MIN_SAFE_INTEGER"]
  LOADK R1 K14 [NaN]
  SETTABLEKS R1 R0 K6 ["NaN"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R2 K12 [script]
  LOADK R4 K7 ["toExponential"]
  NAMECALL R2 R2 K13 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K7 ["toExponential"]
  RETURN R0 1
