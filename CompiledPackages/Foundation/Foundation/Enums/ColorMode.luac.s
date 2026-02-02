MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Color", "Inverse", "LightMode", "DarkMode"}]
  LOADK R1 K0 ["Color"]
  SETTABLEKS R1 R0 K0 ["Color"]
  LOADK R1 K1 ["Inverse"]
  SETTABLEKS R1 R0 K1 ["Inverse"]
  LOADK R1 K2 ["LightMode"]
  SETTABLEKS R1 R0 K2 ["LightMode"]
  LOADK R1 K3 ["DarkMode"]
  SETTABLEKS R1 R0 K3 ["DarkMode"]
  RETURN R0 1
