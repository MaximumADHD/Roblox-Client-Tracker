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
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K17 ["Types"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K18 ["Flags"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K19 ["getFFlagStyleEditorThrottleHundrethsPercent"]
  CALL R10 1 1
  CALL R10 0 1
  GETTABLEKS R11 R2 K20 ["interface"]
  DUPTABLE R12 K24 [{"sessionLengthSeconds", "focusTimeSeconds", "unmatchedFocusEndCount"}]
  GETTABLEKS R13 R2 K25 ["number"]
  SETTABLEKS R13 R12 K21 ["sessionLengthSeconds"]
  GETTABLEKS R13 R2 K25 ["number"]
  SETTABLEKS R13 R12 K22 ["focusTimeSeconds"]
  GETTABLEKS R13 R2 K25 ["number"]
  SETTABLEKS R13 R12 K23 ["unmatchedFocusEndCount"]
  CALL R11 1 1
  DUPTABLE R12 K32 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R13 K33 ["StyleEditor_PluginUnmounted"]
  SETTABLEKS R13 R12 K26 ["eventName"]
  NEWTABLE R13 0 2
  GETTABLEKS R14 R5 K34 ["Points"]
  GETTABLEKS R15 R5 K35 ["EventIngest"]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K27 ["backends"]
  SETTABLEKS R10 R12 K28 ["throttlingPercentage"]
  NEWTABLE R13 0 3
  LOADN R14 24
  LOADN R15 3
  LOADN R16 20
  SETLIST R13 R14 3 [1]
  SETTABLEKS R13 R12 K29 ["lastUpdated"]
  LOADK R13 K36 ["Root Roact component unmounted."]
  SETTABLEKS R13 R12 K30 ["description"]
  LOADK R13 K37 [""]
  SETTABLEKS R13 R12 K31 ["links"]
  DUPCLOSURE R13 K38 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R6
  RETURN R13 1
