PROTO_0:
  DUPTABLE R1 K1 [{"messageBus"}]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["messageBus"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  DUPTABLE R4 K3 [{"eventName", "timestamp", "metadata"}]
  SETTABLEKS R1 R4 K0 ["eventName"]
  SETTABLEKS R2 R4 K1 ["timestamp"]
  SETTABLEKS R3 R4 K2 ["metadata"]
  GETTABLEKS R5 R0 K4 ["messageBus"]
  GETTABLEKS R7 R0 K5 ["LOG_EVENT_WITH_TIMESTAMP"]
  MOVE R8 R4
  NAMECALL R5 R5 K6 ["Call"]
  CALL R5 3 0
  RETURN R0 0

PROTO_2:
  MOVE R5 R1
  LOADN R6 0
  MOVE R7 R2
  NAMECALL R3 R0 K0 ["logEventWithTimestamp"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["messageBus"]
  GETTABLEKS R3 R0 K1 ["GET_TIMESTAMP"]
  NEWTABLE R4 0 0
  NAMECALL R1 R1 K2 ["Call"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  DUPTABLE R5 K3 [{"eventType", "config", "data"}]
  LOADK R6 K4 ["RobloxTelemetry"]
  SETTABLEKS R6 R5 K0 ["eventType"]
  SETTABLEKS R1 R5 K1 ["config"]
  DUPTABLE R6 K8 [{"standardizedFields", "customFields", "eventContext"}]
  SETTABLEKS R2 R6 K5 ["standardizedFields"]
  SETTABLEKS R3 R6 K6 ["customFields"]
  SETTABLEKS R4 R6 K7 ["eventContext"]
  SETTABLEKS R6 R5 K2 ["data"]
  GETTABLEKS R6 R0 K9 ["messageBus"]
  GETTABLEKS R8 R0 K10 ["LOG_EVENT_FROM_LUA"]
  MOVE R9 R5
  NAMECALL R6 R6 K11 ["Call"]
  CALL R6 3 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R3 K3 [{"eventType", "config", "data"}]
  LOADK R4 K4 ["EphemeralCounter"]
  SETTABLEKS R4 R3 K0 ["eventType"]
  SETTABLEKS R1 R3 K1 ["config"]
  JUMPIFNOT R2 [+4]
  DUPTABLE R4 K6 [{"incrementValue"}]
  SETTABLEKS R2 R4 K5 ["incrementValue"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["data"]
  GETTABLEKS R4 R0 K7 ["messageBus"]
  GETTABLEKS R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["Call"]
  CALL R4 3 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R3 K3 [{"eventType", "config", "data"}]
  LOADK R4 K4 ["EphemeralStat"]
  SETTABLEKS R4 R3 K0 ["eventType"]
  SETTABLEKS R1 R3 K1 ["config"]
  DUPTABLE R4 K6 [{"statValue"}]
  SETTABLEKS R2 R4 K5 ["statValue"]
  SETTABLEKS R4 R3 K2 ["data"]
  GETTABLEKS R4 R0 K7 ["messageBus"]
  GETTABLEKS R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["Call"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MessageBusService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K7 [script]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["TelemetryProtocolTypes"]
  CALL R1 1 1
  DUPTABLE R2 K15 [{"UNSPECIFIED", "EventIngest", "Points", "EphemeralCounter", "EphemeralStat"}]
  LOADK R3 K10 ["UNSPECIFIED"]
  SETTABLEKS R3 R2 K10 ["UNSPECIFIED"]
  LOADK R3 K11 ["EventIngest"]
  SETTABLEKS R3 R2 K11 ["EventIngest"]
  LOADK R3 K12 ["Points"]
  SETTABLEKS R3 R2 K12 ["Points"]
  LOADK R3 K13 ["EphemeralCounter"]
  SETTABLEKS R3 R2 K13 ["EphemeralCounter"]
  LOADK R3 K14 ["EphemeralStat"]
  SETTABLEKS R3 R2 K14 ["EphemeralStat"]
  DUPTABLE R3 K20 [{"addPlaceId", "addUniverseId", "addPlaceInstanceId", "addSessionId"}]
  LOADK R4 K16 ["addPlaceId"]
  SETTABLEKS R4 R3 K16 ["addPlaceId"]
  LOADK R4 K17 ["addUniverseId"]
  SETTABLEKS R4 R3 K17 ["addUniverseId"]
  LOADK R4 K18 ["addPlaceInstanceId"]
  SETTABLEKS R4 R3 K18 ["addPlaceInstanceId"]
  LOADK R4 K19 ["addSessionId"]
  SETTABLEKS R4 R3 K19 ["addSessionId"]
  DUPTABLE R4 K27 [{"TelemetryBackends", "StandardizedFields", "LOG_EVENT_WITH_TIMESTAMP", "GET_TIMESTAMP", "LOG_EVENT_FROM_LUA", "ONE_HUNDRED_PERCENT"}]
  SETTABLEKS R2 R4 K21 ["TelemetryBackends"]
  SETTABLEKS R3 R4 K22 ["StandardizedFields"]
  LOADK R7 K28 ["Logging"]
  LOADK R8 K29 ["logEventWithTimestamp"]
  NAMECALL R5 R0 K30 ["GetMessageId"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K23 ["LOG_EVENT_WITH_TIMESTAMP"]
  LOADK R7 K28 ["Logging"]
  LOADK R8 K31 ["getTimestamp"]
  NAMECALL R5 R0 K30 ["GetMessageId"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K24 ["GET_TIMESTAMP"]
  LOADK R7 K28 ["Logging"]
  LOADK R8 K32 ["logEventFromLua"]
  NAMECALL R5 R0 K30 ["GetMessageId"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K25 ["LOG_EVENT_FROM_LUA"]
  LOADN R5 16
  SETTABLEKS R5 R4 K26 ["ONE_HUNDRED_PERCENT"]
  SETTABLEKS R4 R4 K33 ["__index"]
  DUPCLOSURE R5 K34 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K35 ["new"]
  DUPCLOSURE R5 K36 [PROTO_1]
  SETTABLEKS R5 R4 K29 ["logEventWithTimestamp"]
  DUPCLOSURE R5 K37 [PROTO_2]
  SETTABLEKS R5 R4 K38 ["logEvent"]
  DUPCLOSURE R5 K39 [PROTO_3]
  SETTABLEKS R5 R4 K31 ["getTimestamp"]
  DUPCLOSURE R5 K40 [PROTO_4]
  SETTABLEKS R5 R4 K41 ["logRobloxTelemetryEvent"]
  DUPCLOSURE R5 K42 [PROTO_5]
  SETTABLEKS R5 R4 K43 ["logEphemeralCounterEvent"]
  DUPCLOSURE R5 K44 [PROTO_6]
  SETTABLEKS R5 R4 K45 ["logEphemeralStatEvent"]
  GETTABLEKS R5 R4 K35 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K46 ["default"]
  RETURN R4 1
