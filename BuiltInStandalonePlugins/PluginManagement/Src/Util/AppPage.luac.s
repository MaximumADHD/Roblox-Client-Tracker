MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Main", "Detail"}]
  LOADK R1 K0 ["Main"]
  SETTABLEKS R1 R0 K0 ["Main"]
  LOADK R1 K1 ["Detail"]
  SETTABLEKS R1 R0 K1 ["Detail"]
  RETURN R0 1
