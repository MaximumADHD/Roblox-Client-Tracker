PROTO_0:
  DUPTABLE R1 K1 [{"customFields"}]
  DUPTABLE R2 K6 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
  GETTABLEKS R3 R0 K2 ["configId"]
  SETTABLEKS R3 R2 K2 ["configId"]
  GETTABLEKS R3 R0 K3 ["usedStudioDefaultPreset"]
  SETTABLEKS R3 R2 K3 ["usedStudioDefaultPreset"]
  GETTABLEKS R3 R0 K4 ["wasReimportRelativeToThis"]
  SETTABLEKS R3 R2 K4 ["wasReimportRelativeToThis"]
  GETTABLEKS R3 R0 K5 ["targetType"]
  SETTABLEKS R3 R2 K5 ["targetType"]
  SETTABLEKS R2 R1 K0 ["customFields"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  NAMECALL R2 R2 K7 ["LogEvent"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TelemetryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPTABLE R1 K6 [{"EventIngest", "Points"}]
  LOADK R2 K4 ["EventIngest"]
  SETTABLEKS R2 R1 K4 ["EventIngest"]
  LOADK R2 K5 ["Points"]
  SETTABLEKS R2 R1 K5 ["Points"]
  DUPTABLE R2 K8 [{"Backends"}]
  SETTABLEKS R1 R2 K7 ["Backends"]
  DUPTABLE R3 K15 [{"eventName", "eventContext", "backends", "lastUpdated", "description", "throttlingPercentage"}]
  LOADK R4 K16 ["Reimport"]
  SETTABLEKS R4 R3 K9 ["eventName"]
  LOADK R4 K16 ["Reimport"]
  SETTABLEKS R4 R3 K10 ["eventContext"]
  NEWTABLE R4 0 2
  GETTABLEKS R6 R2 K7 ["Backends"]
  GETTABLEKS R5 R6 K4 ["EventIngest"]
  GETTABLEKS R7 R2 K7 ["Backends"]
  GETTABLEKS R6 R7 K5 ["Points"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K11 ["backends"]
  NEWTABLE R4 0 3
  LOADN R5 233
  LOADN R6 11
  LOADN R7 4
  SETLIST R4 R5 3 [1]
  SETTABLEKS R4 R3 K12 ["lastUpdated"]
  LOADK R4 K17 ["Logs data related to the asset reimport process."]
  SETTABLEKS R4 R3 K13 ["description"]
  LOADN R4 16
  SETTABLEKS R4 R3 K14 ["throttlingPercentage"]
  DUPCLOSURE R4 K18 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R4 R2 K19 ["logReimportEvent"]
  RETURN R2 1
