MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Entering", "Present", "Exiting"}]
  LOADK R1 K0 ["Entering"]
  SETTABLEKS R1 R0 K0 ["Entering"]
  LOADK R1 K1 ["Present"]
  SETTABLEKS R1 R0 K1 ["Present"]
  LOADK R1 K2 ["Exiting"]
  SETTABLEKS R1 R0 K2 ["Exiting"]
  RETURN R0 1
