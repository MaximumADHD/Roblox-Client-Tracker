MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Closed", "Open", "Working", "Error"}]
  LOADK R1 K0 ["Closed"]
  SETTABLEKS R1 R0 K0 ["Closed"]
  LOADK R1 K1 ["Open"]
  SETTABLEKS R1 R0 K1 ["Open"]
  LOADK R1 K2 ["Working"]
  SETTABLEKS R1 R0 K2 ["Working"]
  LOADK R1 K3 ["Error"]
  SETTABLEKS R1 R0 K3 ["Error"]
  RETURN R0 1
