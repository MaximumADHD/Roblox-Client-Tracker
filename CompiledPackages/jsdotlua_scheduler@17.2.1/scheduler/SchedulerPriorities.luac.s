MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"NoPriority", "ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["NoPriority"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["ImmediatePriority"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["UserBlockingPriority"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["NormalPriority"]
  LOADN R1 4
  SETTABLEKS R1 R0 K4 ["LowPriority"]
  LOADN R1 5
  SETTABLEKS R1 R0 K5 ["IdlePriority"]
  RETURN R0 1
