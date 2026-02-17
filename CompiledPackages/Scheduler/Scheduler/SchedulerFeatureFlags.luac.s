MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"enableSchedulerDebugging", "enableIsInputPending", "enableProfiling"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["enableSchedulerDebugging"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["enableIsInputPending"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["enableProfiling"]
  RETURN R0 1
