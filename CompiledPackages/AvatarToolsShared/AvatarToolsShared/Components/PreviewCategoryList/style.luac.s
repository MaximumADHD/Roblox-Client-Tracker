MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Expanded", "Collapsed", "Width", "IconSize"}]
  LOADK R1 K5 ["rbxasset://textures/MaterialManager/chevrons-left.png"]
  SETTABLEKS R1 R0 K0 ["Expanded"]
  LOADK R1 K6 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
  SETTABLEKS R1 R0 K1 ["Collapsed"]
  LOADN R1 110
  SETTABLEKS R1 R0 K2 ["Width"]
  LOADN R1 16
  SETTABLEKS R1 R0 K3 ["IconSize"]
  RETURN R0 1
