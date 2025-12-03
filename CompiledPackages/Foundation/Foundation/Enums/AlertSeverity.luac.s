MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Info", "Warning", "Success", "Error"}]
  LOADK R1 K0 ["Info"]
  SETTABLEKS R1 R0 K0 ["Info"]
  LOADK R1 K1 ["Warning"]
  SETTABLEKS R1 R0 K1 ["Warning"]
  LOADK R1 K2 ["Success"]
  SETTABLEKS R1 R0 K2 ["Success"]
  LOADK R1 K3 ["Error"]
  SETTABLEKS R1 R0 K3 ["Error"]
  RETURN R0 1
