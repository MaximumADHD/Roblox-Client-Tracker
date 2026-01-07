MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Dual", "Single", "SingleWithTime"}]
  LOADK R1 K0 ["Dual"]
  SETTABLEKS R1 R0 K0 ["Dual"]
  LOADK R1 K1 ["Single"]
  SETTABLEKS R1 R0 K1 ["Single"]
  LOADK R1 K2 ["SingleWithTime"]
  SETTABLEKS R1 R0 K2 ["SingleWithTime"]
  RETURN R0 1
