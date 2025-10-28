MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["AssertionError.global"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K6 ["AssertionError"]
  RETURN R1 1
