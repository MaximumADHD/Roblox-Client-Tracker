MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"NO_INSTANCE", "EQUALIZER", "FILTER"}]
  LOADK R1 K4 ["None"]
  SETTABLEKS R1 R0 K0 ["NO_INSTANCE"]
  LOADK R1 K5 ["AudioEqualizer"]
  SETTABLEKS R1 R0 K1 ["EQUALIZER"]
  LOADK R1 K6 ["AudioFilter"]
  SETTABLEKS R1 R0 K2 ["FILTER"]
  RETURN R0 1
