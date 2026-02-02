MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Top", "Bottom", "Left", "Right"}]
  LOADK R1 K0 ["Top"]
  SETTABLEKS R1 R0 K0 ["Top"]
  LOADK R1 K1 ["Bottom"]
  SETTABLEKS R1 R0 K1 ["Bottom"]
  LOADK R1 K2 ["Left"]
  SETTABLEKS R1 R0 K2 ["Left"]
  LOADK R1 K3 ["Right"]
  SETTABLEKS R1 R0 K3 ["Right"]
  RETURN R0 1
