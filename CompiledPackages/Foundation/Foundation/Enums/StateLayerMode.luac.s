MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Default", "Inverse", "Light", "Dark"}]
  LOADK R1 K0 ["Default"]
  SETTABLEKS R1 R0 K0 ["Default"]
  LOADK R1 K1 ["Inverse"]
  SETTABLEKS R1 R0 K1 ["Inverse"]
  LOADK R1 K2 ["Light"]
  SETTABLEKS R1 R0 K2 ["Light"]
  LOADK R1 K3 ["Dark"]
  SETTABLEKS R1 R0 K3 ["Dark"]
  RETURN R0 1
