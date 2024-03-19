PROTO_0:
  DUPTABLE R1 K1 [{"_messageBus"}]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["_messageBus"]
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
  GETTABLEKS R5 R0 K4 ["_messageBus"]
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
  GETTABLEKS R1 R0 K0 ["_messageBus"]
  GETTABLEKS R3 R0 K1 ["GET_TIMESTAMP"]
  NEWTABLE R4 0 0
  NAMECALL R1 R1 K2 ["Call"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["LogTelemetry"]
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETIMPORT R2 K4 [print]
  LOADK R4 K5 ["StyleEditor logged telemetry event '%*':"]
  GETTABLEKS R7 R1 K6 ["config"]
  GETTABLEKS R6 R7 K7 ["eventName"]
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K9 ["_messageBus"]
  GETTABLEKS R4 R0 K10 ["LOG_EVENT_FROM_LUA"]
  MOVE R5 R1
  NAMECALL R2 R2 K11 ["Call"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MessageBusService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Typecheck"]
  GETTABLEKS R3 R4 K13 ["t"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K14 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K15 ["DebugFlags"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETIMPORT R8 K5 [script]
  GETTABLEKS R7 R8 K6 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  DUPTABLE R6 K20 [{"RobloxTelemetry", "EphemeralCounter", "EphemeralStat"}]
  LOADK R7 K17 ["RobloxTelemetry"]
  SETTABLEKS R7 R6 K17 ["RobloxTelemetry"]
  LOADK R7 K18 ["EphemeralCounter"]
  SETTABLEKS R7 R6 K18 ["EphemeralCounter"]
  LOADK R7 K19 ["EphemeralStat"]
  SETTABLEKS R7 R6 K19 ["EphemeralStat"]
  DUPTABLE R7 K24 [{"UNSPECIFIED", "EventIngest", "Points", "EphemeralCounter", "EphemeralStat"}]
  LOADK R8 K21 ["UNSPECIFIED"]
  SETTABLEKS R8 R7 K21 ["UNSPECIFIED"]
  LOADK R8 K22 ["EventIngest"]
  SETTABLEKS R8 R7 K22 ["EventIngest"]
  LOADK R8 K23 ["Points"]
  SETTABLEKS R8 R7 K23 ["Points"]
  LOADK R8 K18 ["EphemeralCounter"]
  SETTABLEKS R8 R7 K18 ["EphemeralCounter"]
  LOADK R8 K19 ["EphemeralStat"]
  SETTABLEKS R8 R7 K19 ["EphemeralStat"]
  DUPTABLE R8 K29 [{"addPlaceId", "addUniverseId", "addPlaceInstanceId", "addSessionId"}]
  LOADK R9 K25 ["addPlaceId"]
  SETTABLEKS R9 R8 K25 ["addPlaceId"]
  LOADK R9 K26 ["addUniverseId"]
  SETTABLEKS R9 R8 K26 ["addUniverseId"]
  LOADK R9 K27 ["addPlaceInstanceId"]
  SETTABLEKS R9 R8 K27 ["addPlaceInstanceId"]
  LOADK R9 K28 ["addSessionId"]
  SETTABLEKS R9 R8 K28 ["addSessionId"]
  GETTABLEKS R9 R3 K30 ["interface"]
  DUPTABLE R10 K33 [{"eventName", "backends"}]
  GETTABLEKS R11 R3 K34 ["string"]
  SETTABLEKS R11 R10 K31 ["eventName"]
  GETTABLEKS R11 R3 K35 ["array"]
  GETTABLEKS R12 R3 K36 ["valueOf"]
  MOVE R13 R7
  CALL R12 1 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K32 ["backends"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K30 ["interface"]
  DUPTABLE R11 K40 [{"eventType", "config", "data"}]
  GETTABLEKS R12 R3 K36 ["valueOf"]
  MOVE R13 R6
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["eventType"]
  SETTABLEKS R9 R11 K38 ["config"]
  GETTABLEKS R12 R3 K41 ["union"]
  GETTABLEKS R13 R3 K42 ["none"]
  GETTABLEKS R14 R3 K30 ["interface"]
  DUPTABLE R15 K44 [{"customFields"}]
  GETTABLEKS R16 R3 K45 ["optional"]
  GETTABLEKS R17 R3 K46 ["keys"]
  GETTABLEKS R18 R3 K34 ["string"]
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K43 ["customFields"]
  CALL R14 1 1
  GETTABLEKS R15 R3 K30 ["interface"]
  DUPTABLE R16 K48 [{"incrementValue"}]
  GETTABLEKS R17 R3 K49 ["number"]
  SETTABLEKS R17 R16 K47 ["incrementValue"]
  CALL R15 1 1
  GETTABLEKS R16 R3 K30 ["interface"]
  DUPTABLE R17 K51 [{"statValue"}]
  GETTABLEKS R18 R3 K49 ["number"]
  SETTABLEKS R18 R17 K50 ["statValue"]
  CALL R16 1 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K39 ["data"]
  CALL R10 1 1
  DUPTABLE R11 K59 [{"EventTypes", "Backends", "StandardizedFields", "LOG_EVENT_WITH_TIMESTAMP", "GET_TIMESTAMP", "LOG_EVENT_FROM_LUA", "ONE_HUNDRED_PERCENT"}]
  SETTABLEKS R6 R11 K52 ["EventTypes"]
  SETTABLEKS R7 R11 K53 ["Backends"]
  SETTABLEKS R8 R11 K54 ["StandardizedFields"]
  LOADK R14 K60 ["Logging"]
  LOADK R15 K61 ["logEventWithTimestamp"]
  NAMECALL R12 R0 K62 ["GetMessageId"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K55 ["LOG_EVENT_WITH_TIMESTAMP"]
  LOADK R14 K60 ["Logging"]
  LOADK R15 K63 ["getTimestamp"]
  NAMECALL R12 R0 K62 ["GetMessageId"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K56 ["GET_TIMESTAMP"]
  LOADK R14 K60 ["Logging"]
  LOADK R15 K64 ["logEventFromLua"]
  NAMECALL R12 R0 K62 ["GetMessageId"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K57 ["LOG_EVENT_FROM_LUA"]
  LOADN R12 16
  SETTABLEKS R12 R11 K58 ["ONE_HUNDRED_PERCENT"]
  SETTABLEKS R11 R11 K65 ["__index"]
  DUPCLOSURE R12 K66 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K67 ["new"]
  DUPCLOSURE R12 K68 [PROTO_1]
  SETTABLEKS R12 R11 K61 ["logEventWithTimestamp"]
  DUPCLOSURE R12 K69 [PROTO_2]
  SETTABLEKS R12 R11 K70 ["logEvent"]
  DUPCLOSURE R12 K71 [PROTO_3]
  SETTABLEKS R12 R11 K63 ["getTimestamp"]
  DUPCLOSURE R12 K72 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K73 ["logTelemetryEvent"]
  RETURN R11 1
