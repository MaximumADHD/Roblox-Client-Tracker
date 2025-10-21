MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Neutral", "Alert", "Success", "Warning", "Emphasis", "Standard"}]
  LOADK R1 K0 ["Neutral"]
  SETTABLEKS R1 R0 K0 ["Neutral"]
  LOADK R1 K1 ["Alert"]
  SETTABLEKS R1 R0 K1 ["Alert"]
  LOADK R1 K2 ["Success"]
  SETTABLEKS R1 R0 K2 ["Success"]
  LOADK R1 K3 ["Warning"]
  SETTABLEKS R1 R0 K3 ["Warning"]
  LOADK R1 K4 ["Emphasis"]
  SETTABLEKS R1 R0 K4 ["Emphasis"]
  LOADK R1 K5 ["Standard"]
  SETTABLEKS R1 R0 K5 ["Standard"]
  RETURN R0 1
