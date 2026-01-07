MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["flowtypes.roblox"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  NEWTABLE R2 4 0
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["DiscreteEvent"]
  LOADN R3 1
  SETTABLEKS R3 R2 K9 ["UserBlockingEvent"]
  LOADN R3 2
  SETTABLEKS R3 R2 K10 ["ContinuousEvent"]
  RETURN R2 1
