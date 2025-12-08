MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Start", "Center", "End"}]
  LOADK R1 K0 ["Start"]
  SETTABLEKS R1 R0 K0 ["Start"]
  LOADK R1 K1 ["Center"]
  SETTABLEKS R1 R0 K1 ["Center"]
  LOADK R1 K2 ["End"]
  SETTABLEKS R1 R0 K2 ["End"]
  RETURN R0 1
