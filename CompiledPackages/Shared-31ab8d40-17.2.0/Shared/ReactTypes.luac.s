MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K6 ["flowtypes.roblox"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["DiscreteEvent"]
  LOADN R4 1
  SETTABLEKS R4 R3 K8 ["UserBlockingEvent"]
  LOADN R4 2
  SETTABLEKS R4 R3 K9 ["ContinuousEvent"]
  RETURN R3 1
