MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"TextSize", "BackgroundColor", "BackgroundTransparency"}]
  LOADN R1 25
  SETTABLEKS R1 R0 K0 ["TextSize"]
  GETIMPORT R1 K6 [Color3.fromRGB]
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["BackgroundColor"]
  LOADK R1 K7 [0.2]
  SETTABLEKS R1 R0 K2 ["BackgroundTransparency"]
  RETURN R0 1
