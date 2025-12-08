MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["instanceof"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  RETURN R0 1
