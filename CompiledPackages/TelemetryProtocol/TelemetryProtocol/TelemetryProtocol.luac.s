PROTO_0:
  DUPTABLE R4 K2 [{"standardizedFields", "customFields"}]
  GETTABLEKS R5 R0 K3 ["StandardizedFields"]
  SETTABLEKS R5 R4 K0 ["standardizedFields"]
  SETTABLEKS R2 R4 K1 ["customFields"]
  DUPTABLE R5 K7 [{"eventType", "config", "data"}]
  LOADK R6 K8 ["RobloxTelemetry"]
  SETTABLEKS R6 R5 K4 ["eventType"]
  SETTABLEKS R1 R5 K5 ["config"]
  SETTABLEKS R4 R5 K6 ["data"]
  GETTABLEKS R6 R0 K9 ["messageBus"]
  GETTABLEKS R8 R0 K10 ["LOG_EVENT_FROM_LUA"]
  MOVE R9 R5
  NAMECALL R6 R6 K11 ["Call"]
  CALL R6 3 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R3 K3 [{"eventType", "config", "data"}]
  LOADK R4 K4 ["RobloxTelemetryCounter"]
  SETTABLEKS R4 R3 K0 ["eventType"]
  SETTABLEKS R1 R3 K1 ["config"]
  DUPTABLE R4 K6 [{"customFields"}]
  SETTABLEKS R2 R4 K5 ["customFields"]
  SETTABLEKS R4 R3 K2 ["data"]
  GETTABLEKS R4 R0 K7 ["messageBus"]
  GETTABLEKS R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["Call"]
  CALL R4 3 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K2 ["config"]
  GETTABLEKS R8 R6 K3 ["data"]
  JUMPIFNOTEQKS R5 K4 ["RobloxTelemetry"] [+17]
  GETUPVAL R9 0
  JUMPIFNOT R9 [+6]
  MOVE R11 R7
  MOVE R12 R8
  NAMECALL R9 R0 K5 ["logRobloxTelemetryEvent"]
  CALL R9 3 0
  JUMP [+25]
  MOVE R11 R7
  MOVE R12 R8
  GETTABLEKS R13 R6 K6 ["standardizedFields"]
  NAMECALL R9 R0 K5 ["logRobloxTelemetryEvent"]
  CALL R9 4 0
  JUMP [+17]
  JUMPIFNOTEQKS R5 K7 ["RobloxTelemetryCounter"] [+7]
  MOVE R11 R7
  MOVE R12 R8
  NAMECALL R9 R0 K8 ["logTelemetryCounterEvent"]
  CALL R9 3 0
  JUMP [+9]
  LOADB R10 0
  LOADK R12 K9 ["Unknown telemetry event type: "]
  MOVE R13 R5
  CONCAT R11 R12 R13
  FASTCALL2 ASSERT R10 R11 [+3]
  GETIMPORT R9 K11 [assert]
  CALL R9 2 0
  FORGLOOP R2 2 [-40]
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"messageBus", "LOG_EVENT_FROM_LUA"}]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["messageBus"]
  GETUPVAL R2 0
  LOADK R4 K3 ["Telemetry"]
  LOADK R5 K4 ["logEventFromLua"]
  NAMECALL R2 R2 K5 ["GetMessageId"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["LOG_EVENT_FROM_LUA"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K7 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MessageBusService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 8 0
  SETTABLEKS R1 R1 K4 ["__index"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CleanupTelemetryProtocol"]
  LOADB R5 0
  NAMECALL R2 R2 K6 ["DefineFastFlag"]
  CALL R2 3 1
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R1 K8 ["logRobloxTelemetryEvent"]
  DUPCLOSURE R3 K9 [PROTO_1]
  SETTABLEKS R3 R1 K10 ["logTelemetryCounterEvent"]
  DUPCLOSURE R3 K11 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K12 ["logEvent"]
  DUPCLOSURE R3 K13 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R1 K14 ["new"]
  NEWTABLE R3 0 4
  LOADK R4 K15 ["addPlaceId"]
  LOADK R5 K16 ["addUniverseId"]
  LOADK R6 K17 ["addPlaceInstanceId"]
  LOADK R7 K18 ["addSessionId"]
  SETLIST R3 R4 4 [1]
  SETTABLEKS R3 R1 K19 ["StandardizedFields"]
  GETTABLEKS R3 R1 K14 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R1 K20 ["default"]
  RETURN R1 1
