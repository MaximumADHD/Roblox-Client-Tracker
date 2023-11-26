MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TelemetryProtocol"]
  CALL R0 1 1
  DUPTABLE R1 K12 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R2 K13 ["windsockOrigin"]
  SETTABLEKS R2 R1 K6 ["eventName"]
  NEWTABLE R2 0 1
  GETTABLEKS R4 R0 K14 ["TelemetryBackends"]
  GETTABLEKS R3 R4 K15 ["EventIngest"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K7 ["backends"]
  GETTABLEKS R2 R0 K16 ["ONE_HUNDRED_PERCENT"]
  SETTABLEKS R2 R1 K8 ["throttlingPercentage"]
  NEWTABLE R2 0 3
  LOADN R3 23
  LOADN R4 8
  LOADN R5 7
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K9 ["lastUpdated"]
  LOADK R2 K17 ["Open the Windsock widget in Studio. Does not fire when dismissing the widdget"]
  SETTABLEKS R2 R1 K10 ["description"]
  LOADK R2 K18 ["https://roblox.atlassian.net/l/cp/ysYjQfcq"]
  SETTABLEKS R2 R1 K11 ["links"]
  RETURN R1 1
