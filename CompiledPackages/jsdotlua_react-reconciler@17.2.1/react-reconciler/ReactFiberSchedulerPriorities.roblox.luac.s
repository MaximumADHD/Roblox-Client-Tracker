MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority"}]
  LOADN R1 99
  SETTABLEKS R1 R0 K0 ["ImmediatePriority"]
  LOADN R1 98
  SETTABLEKS R1 R0 K1 ["UserBlockingPriority"]
  LOADN R1 97
  SETTABLEKS R1 R0 K2 ["NormalPriority"]
  LOADN R1 96
  SETTABLEKS R1 R0 K3 ["LowPriority"]
  LOADN R1 95
  SETTABLEKS R1 R0 K4 ["IdlePriority"]
  LOADN R1 90
  SETTABLEKS R1 R0 K5 ["NoPriority"]
  RETURN R0 1
