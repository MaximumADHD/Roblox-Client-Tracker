MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TelemetryProtocol"]
  CALL R0 1 1
  DUPTABLE R1 K12 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R2 K13 ["removeUserCollaboratorEvent"]
  SETTABLEKS R2 R1 K6 ["eventName"]
  NEWTABLE R2 0 2
  GETTABLEKS R4 R0 K14 ["TelemetryBackends"]
  GETTABLEKS R3 R4 K15 ["EventIngest"]
  GETTABLEKS R5 R0 K14 ["TelemetryBackends"]
  GETTABLEKS R4 R5 K16 ["Points"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K7 ["backends"]
  GETIMPORT R2 K18 [game]
  LOADK R4 K19 ["RemoveUserCollaboratorEventThrottleHundrethsPercent"]
  NAMECALL R2 R2 K20 ["GetFastInt"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K8 ["throttlingPercentage"]
  NEWTABLE R2 0 3
  LOADN R3 25
  LOADN R4 6
  LOADN R5 23
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K9 ["lastUpdated"]
  LOADK R2 K21 ["Reports when a user collaborator is removed from a place."]
  SETTABLEKS R2 R1 K10 ["description"]
  LOADK R2 K22 ["https://roblox.atlassian.net/wiki/spaces/CD/pages/edit-v2/3697475853"]
  SETTABLEKS R2 R1 K11 ["links"]
  RETURN R1 1
