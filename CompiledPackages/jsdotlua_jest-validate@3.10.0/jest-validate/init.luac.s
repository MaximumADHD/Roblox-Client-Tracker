MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K4 ["utils"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K6 ["ValidationError"]
  SETTABLEKS R2 R0 K6 ["ValidationError"]
  RETURN R0 1
