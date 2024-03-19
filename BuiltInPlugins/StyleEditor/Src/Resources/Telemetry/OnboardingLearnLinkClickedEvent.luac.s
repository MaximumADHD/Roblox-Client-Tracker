PROTO_0:
  DUPTABLE R0 K3 [{"eventType", "config", "data"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["RobloxTelemetry"]
  SETTABLEKS R1 R0 K0 ["eventType"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["config"]
  DUPTABLE R1 K6 [{"standardizedFields"}]
  NEWTABLE R2 0 2
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["addPlaceId"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["addSessionId"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K5 ["standardizedFields"]
  SETTABLEKS R1 R0 K2 ["data"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Contexts"]
  GETTABLEKS R3 R4 K7 ["Telemetry"]
  GETTABLEKS R2 R3 K8 ["TelemetryProtocol"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["EventTypes"]
  GETTABLEKS R3 R1 K10 ["Backends"]
  GETTABLEKS R4 R1 K11 ["StandardizedFields"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K6 ["Contexts"]
  GETTABLEKS R7 R8 K7 ["Telemetry"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K14 ["getFFlagStyleEditorEnableTelemetry"]
  CALL R7 1 1
  CALL R7 0 1
  DUPTABLE R8 K21 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R9 K22 ["StyleEditor_OnboardingLearnLinkClicked"]
  SETTABLEKS R9 R8 K15 ["eventName"]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R3 K23 ["Points"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K16 ["backends"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R9 R1 K24 ["ONE_HUNDRED_PERCENT"]
  JUMP [+1]
  LOADN R9 0
  SETTABLEKS R9 R8 K17 ["throttlingPercentage"]
  NEWTABLE R9 0 3
  LOADN R10 24
  LOADN R11 2
  LOADN R12 22
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K18 ["lastUpdated"]
  LOADK R9 K25 ["Onboarding \"learn more\" link clicked"]
  SETTABLEKS R9 R8 K19 ["description"]
  LOADK R9 K26 [""]
  SETTABLEKS R9 R8 K20 ["links"]
  DUPCLOSURE R9 K27 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  RETURN R9 1
