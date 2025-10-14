MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Word", "Symbol"}]
  LOADK R1 K0 ["Word"]
  SETTABLEKS R1 R0 K0 ["Word"]
  LOADK R1 K1 ["Symbol"]
  SETTABLEKS R1 R0 K1 ["Symbol"]
  RETURN R0 1
