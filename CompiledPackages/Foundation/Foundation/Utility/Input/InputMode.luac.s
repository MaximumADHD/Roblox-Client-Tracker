MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Directional", "Pointer", "Touch"}]
  LOADK R1 K0 ["Directional"]
  SETTABLEKS R1 R0 K0 ["Directional"]
  LOADK R1 K1 ["Pointer"]
  SETTABLEKS R1 R0 K1 ["Pointer"]
  LOADK R1 K2 ["Touch"]
  SETTABLEKS R1 R0 K2 ["Touch"]
  RETURN R0 1
