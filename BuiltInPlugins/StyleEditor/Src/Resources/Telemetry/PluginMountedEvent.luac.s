PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K5 [{"eventType", "config", "data"}]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["RobloxTelemetry"]
  SETTABLEKS R2 R1 K2 ["eventType"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K3 ["config"]
  DUPTABLE R2 K9 [{"customFields", "standardizedFields"}]
  SETTABLEKS R0 R2 K7 ["customFields"]
  NEWTABLE R3 0 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["addPlaceId"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["addSessionId"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K8 ["standardizedFields"]
  SETTABLEKS R2 R1 K4 ["data"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Typecheck"]
  GETTABLEKS R2 R3 K9 ["t"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["Telemetry"]
  GETTABLEKS R4 R5 K13 ["TelemetryProtocol"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["EventTypes"]
  GETTABLEKS R5 R3 K15 ["Backends"]
  GETTABLEKS R6 R3 K16 ["StandardizedFields"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Contexts"]
  GETTABLEKS R9 R10 K12 ["Telemetry"]
  GETTABLEKS R8 R9 K17 ["Types"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K18 ["Flags"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R8 K19 ["getFFlagStyleEditorEnableTelemetry"]
  CALL R9 1 1
  CALL R9 0 1
  GETTABLEKS R10 R2 K20 ["interface"]
  DUPTABLE R11 K22 [{"loadTimeMillis"}]
  GETTABLEKS R12 R2 K23 ["number"]
  SETTABLEKS R12 R11 K21 ["loadTimeMillis"]
  CALL R10 1 1
  DUPTABLE R11 K30 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R12 K31 ["StyleEditor_PluginMounted"]
  SETTABLEKS R12 R11 K24 ["eventName"]
  NEWTABLE R12 0 1
  GETTABLEKS R13 R5 K32 ["Points"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K25 ["backends"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R12 R3 K33 ["ONE_HUNDRED_PERCENT"]
  JUMP [+1]
  LOADN R12 0
  SETTABLEKS R12 R11 K26 ["throttlingPercentage"]
  NEWTABLE R12 0 3
  LOADN R13 24
  LOADN R14 3
  LOADN R15 11
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K27 ["lastUpdated"]
  LOADK R12 K34 ["Root Roact component mounted."]
  SETTABLEKS R12 R11 K28 ["description"]
  LOADK R12 K35 [""]
  SETTABLEKS R12 R11 K29 ["links"]
  DUPCLOSURE R12 K36 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R6
  RETURN R12 1
