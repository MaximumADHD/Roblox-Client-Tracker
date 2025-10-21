MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Desktop", "Tablet", "Phone", "Console", "VR", "Unknown"}]
  LOADK R1 K0 ["Desktop"]
  SETTABLEKS R1 R0 K0 ["Desktop"]
  LOADK R1 K1 ["Tablet"]
  SETTABLEKS R1 R0 K1 ["Tablet"]
  LOADK R1 K2 ["Phone"]
  SETTABLEKS R1 R0 K2 ["Phone"]
  LOADK R1 K3 ["Console"]
  SETTABLEKS R1 R0 K3 ["Console"]
  LOADK R1 K4 ["VR"]
  SETTABLEKS R1 R0 K4 ["VR"]
  LOADK R1 K5 ["Unknown"]
  SETTABLEKS R1 R0 K5 ["Unknown"]
  RETURN R0 1
