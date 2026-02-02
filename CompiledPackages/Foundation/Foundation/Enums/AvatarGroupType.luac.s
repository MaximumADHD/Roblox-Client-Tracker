MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Stacked", "Spread"}]
  LOADK R1 K0 ["Stacked"]
  SETTABLEKS R1 R0 K0 ["Stacked"]
  LOADK R1 K1 ["Spread"]
  SETTABLEKS R1 R0 K1 ["Spread"]
  RETURN R0 1
