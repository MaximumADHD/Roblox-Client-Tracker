MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"showDelay", "hideDelay", "showCount", "hideCount", "disableAllTooltips"}]
  LOADK R1 K6 [0.3]
  SETTABLEKS R1 R0 K0 ["showDelay"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["hideDelay"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["showCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["hideCount"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["disableAllTooltips"]
  RETURN R0 1
