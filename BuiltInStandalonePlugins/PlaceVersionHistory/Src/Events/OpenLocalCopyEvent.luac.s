MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlaceVersionHistoryOpenLocalCopyEventThrottling"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R1 K11 ["PlaceVersionHistoryOpenLocalCopy"]
  SETTABLEKS R1 R0 K4 ["eventName"]
  NEWTABLE R1 0 2
  LOADK R2 K12 ["EventIngest"]
  LOADK R3 K13 ["Points"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K5 ["backends"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["PlaceVersionHistoryOpenLocalCopyEventThrottling"]
  NAMECALL R1 R1 K14 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["throttlingPercentage"]
  NEWTABLE R1 0 3
  LOADN R2 26
  LOADN R3 1
  LOADN R4 12
  SETLIST R1 R2 3 [1]
  SETTABLEKS R1 R0 K7 ["lastUpdated"]
  LOADK R1 K15 ["Fired when the user opens a local copy of a place version"]
  SETTABLEKS R1 R0 K8 ["description"]
  LOADK R1 K16 ["https://roblox.atlassian.net/wiki/x/yIHT-/"]
  SETTABLEKS R1 R0 K9 ["links"]
  RETURN R0 1
