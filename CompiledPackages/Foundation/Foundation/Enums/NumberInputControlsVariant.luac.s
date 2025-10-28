MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Stacked", "Split", "None"}]
  LOADK R1 K0 ["Stacked"]
  SETTABLEKS R1 R0 K0 ["Stacked"]
  LOADK R1 K1 ["Split"]
  SETTABLEKS R1 R0 K1 ["Split"]
  LOADK R1 K2 ["None"]
  SETTABLEKS R1 R0 K2 ["None"]
  RETURN R0 1
