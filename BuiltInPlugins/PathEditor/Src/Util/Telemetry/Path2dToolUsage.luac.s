MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TelemetryProtocol"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["PathEditorToolUsageEventsThrottleHundredthsPercent"]
  LOADN R4 0
  NAMECALL R1 R1 K9 ["DefineFastInt"]
  CALL R1 3 1
  DUPTABLE R2 K16 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R3 K17 ["Path2DToolUsage"]
  SETTABLEKS R3 R2 K10 ["eventName"]
  NEWTABLE R3 0 1
  GETTABLEKS R5 R0 K18 ["TelemetryBackends"]
  GETTABLEKS R4 R5 K19 ["EventIngest"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K11 ["backends"]
  SETTABLEKS R1 R2 K12 ["throttlingPercentage"]
  NEWTABLE R3 0 3
  LOADN R4 24
  LOADN R5 3
  LOADN R6 15
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K13 ["lastUpdated"]
  LOADK R3 K20 ["Reports aggregate counts of our main interactions with the PathEditor tool"]
  SETTABLEKS R3 R2 K14 ["description"]
  LOADK R3 K21 ["https://roblox.atlassian.net/wiki/x/jwG0gw"]
  SETTABLEKS R3 R2 K15 ["links"]
  RETURN R2 1
