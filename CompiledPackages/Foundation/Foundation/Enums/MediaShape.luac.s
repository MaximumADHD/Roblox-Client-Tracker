MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Circle", "Square", "Portrait", "Landscape"}]
  LOADK R1 K0 ["Circle"]
  SETTABLEKS R1 R0 K0 ["Circle"]
  LOADK R1 K1 ["Square"]
  SETTABLEKS R1 R0 K1 ["Square"]
  LOADK R1 K2 ["Portrait"]
  SETTABLEKS R1 R0 K2 ["Portrait"]
  LOADK R1 K3 ["Landscape"]
  SETTABLEKS R1 R0 K3 ["Landscape"]
  RETURN R0 1
