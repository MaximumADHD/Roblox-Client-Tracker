MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  LOADK R1 K0 [" › "]
  SETTABLEKS R1 R0 K1 ["ARROW"]
  DUPTABLE R1 K6 [{"failed", "pending", "success", "todo"}]
  LOADK R2 K7 ["✕"]
  SETTABLEKS R2 R1 K2 ["failed"]
  LOADK R2 K8 ["○"]
  SETTABLEKS R2 R1 K3 ["pending"]
  LOADK R2 K9 ["✓"]
  SETTABLEKS R2 R1 K4 ["success"]
  LOADK R2 K10 ["✎"]
  SETTABLEKS R2 R1 K5 ["todo"]
  SETTABLEKS R1 R0 K11 ["ICONS"]
  LOADK R2 K12 ["[2J[3J[H"]
  SETTABLEKS R2 R0 K13 ["CLEAR"]
  RETURN R0 1
