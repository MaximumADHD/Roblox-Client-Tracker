MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"NotStarted", "InProgress", "Completed"}]
  LOADK R1 K0 ["NotStarted"]
  SETTABLEKS R1 R0 K0 ["NotStarted"]
  LOADK R1 K1 ["InProgress"]
  SETTABLEKS R1 R0 K1 ["InProgress"]
  LOADK R1 K2 ["Completed"]
  SETTABLEKS R1 R0 K2 ["Completed"]
  RETURN R0 1
