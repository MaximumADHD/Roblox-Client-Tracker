MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"toJSBoolean"}]
  GETIMPORT R1 K3 [require]
  GETIMPORT R2 K5 [script]
  LOADK R4 K0 ["toJSBoolean"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K0 ["toJSBoolean"]
  RETURN R0 1
