MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"ButtonWidth", "ButtonHeight", "ButtonSpacing", "ScreenSpacing"}]
  LOADN R1 64
  SETTABLEKS R1 R0 K0 ["ButtonWidth"]
  LOADN R1 24
  SETTABLEKS R1 R0 K1 ["ButtonHeight"]
  LOADN R1 20
  SETTABLEKS R1 R0 K2 ["ButtonSpacing"]
  LOADN R1 10
  SETTABLEKS R1 R0 K3 ["ScreenSpacing"]
  RETURN R0 1
