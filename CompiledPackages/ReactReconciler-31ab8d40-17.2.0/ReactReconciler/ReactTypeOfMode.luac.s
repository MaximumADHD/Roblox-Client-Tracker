MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"NoMode", "StrictMode", "BlockingMode", "ConcurrentMode", "ProfileMode", "DebugTracingMode"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["NoMode"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["StrictMode"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["BlockingMode"]
  LOADN R1 4
  SETTABLEKS R1 R0 K3 ["ConcurrentMode"]
  LOADN R1 8
  SETTABLEKS R1 R0 K4 ["ProfileMode"]
  LOADN R1 16
  SETTABLEKS R1 R0 K5 ["DebugTracingMode"]
  RETURN R0 1
