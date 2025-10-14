MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Stacked", "Split"}]
  LOADK R1 K0 ["Stacked"]
  SETTABLEKS R1 R0 K0 ["Stacked"]
  LOADK R1 K1 ["Split"]
  SETTABLEKS R1 R0 K1 ["Split"]
  RETURN R0 1
