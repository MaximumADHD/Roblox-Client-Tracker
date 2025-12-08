MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["circus"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K6 ["runner"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K6 ["runner"]
  RETURN R0 1
