MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Success", "Neutral", "Warning", "Emphasis", "Alert", "Standard"}]
  LOADK R1 K0 ["Success"]
  SETTABLEKS R1 R0 K0 ["Success"]
  LOADK R1 K1 ["Neutral"]
  SETTABLEKS R1 R0 K1 ["Neutral"]
  LOADK R1 K2 ["Warning"]
  SETTABLEKS R1 R0 K2 ["Warning"]
  LOADK R1 K3 ["Emphasis"]
  SETTABLEKS R1 R0 K3 ["Emphasis"]
  LOADK R1 K4 ["Alert"]
  SETTABLEKS R1 R0 K4 ["Alert"]
  LOADK R1 K5 ["Standard"]
  SETTABLEKS R1 R0 K5 ["Standard"]
  RETURN R0 1
