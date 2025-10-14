MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Default", "Quick", "Slow"}]
  LOADK R1 K4 ["default"]
  SETTABLEKS R1 R0 K0 ["Default"]
  LOADK R1 K5 ["quick"]
  SETTABLEKS R1 R0 K1 ["Quick"]
  LOADK R1 K6 ["slow"]
  SETTABLEKS R1 R0 K2 ["Slow"]
  RETURN R0 1
