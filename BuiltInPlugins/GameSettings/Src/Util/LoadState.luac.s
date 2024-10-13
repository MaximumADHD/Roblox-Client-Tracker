MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Unloaded", "Loading", "LoadFailed", "Loaded"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["Unloaded"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["Loading"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["LoadFailed"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["Loaded"]
  RETURN R0 1
