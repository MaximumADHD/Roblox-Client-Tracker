PROTO_0:
  LOADK R2 K0 ["%*%*"]
  LOADK R4 K1 ["StudioAssistant"]
  MOVE R5 R0
  NAMECALL R2 R2 K2 ["format"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["logCounter"]
  GETUPVAL R1 1
  LOADN R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  DUPTABLE R5 K4 [{"errorType"}]
  SETTABLEKS R0 R5 K3 ["errorType"]
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["logCounter"]
  GETUPVAL R1 1
  LOADN R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["logCounter"]
  GETUPVAL R1 1
  LOADN R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"customFields"}]
  DUPTABLE R4 K4 [{"markdown"}]
  SETTABLEKS R0 R4 K3 ["markdown"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Telemetry"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K13 ["Get"]
  DUPCLOSURE R4 K14 [PROTO_0]
  GETIMPORT R5 K17 [table.freeze]
  DUPTABLE R6 K22 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R8 K23 ["%*%*"]
  LOADK R10 K24 ["StudioAssistant"]
  LOADK R11 K25 ["UserMessageSent"]
  NAMECALL R8 R8 K26 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  SETTABLEKS R7 R6 K18 ["eventName"]
  NEWTABLE R7 0 1
  GETTABLEKS R9 R2 K27 ["Backends"]
  GETTABLEKS R8 R9 K28 ["RobloxTelemetryCounter"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K19 ["backends"]
  LOADK R7 K29 ["Incrementing count of user messages sent."]
  SETTABLEKS R7 R6 K20 ["description"]
  NEWTABLE R7 0 3
  LOADN R8 25
  LOADN R9 7
  LOADN R10 21
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K21 ["lastUpdated"]
  CALL R5 1 1
  GETIMPORT R6 K17 [table.freeze]
  DUPTABLE R7 K22 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R9 K23 ["%*%*"]
  LOADK R11 K24 ["StudioAssistant"]
  LOADK R12 K30 ["ThumbsUp"]
  NAMECALL R9 R9 K26 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K18 ["eventName"]
  NEWTABLE R8 0 1
  GETTABLEKS R10 R2 K27 ["Backends"]
  GETTABLEKS R9 R10 K28 ["RobloxTelemetryCounter"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K19 ["backends"]
  LOADK R8 K31 ["Incrementing count of thumbs up events."]
  SETTABLEKS R8 R7 K20 ["description"]
  NEWTABLE R8 0 3
  LOADN R9 25
  LOADN R10 7
  LOADN R11 21
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K21 ["lastUpdated"]
  CALL R6 1 1
  GETIMPORT R7 K17 [table.freeze]
  DUPTABLE R8 K22 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R10 K23 ["%*%*"]
  LOADK R12 K24 ["StudioAssistant"]
  LOADK R13 K32 ["ThumbsDown"]
  NAMECALL R10 R10 K26 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  SETTABLEKS R9 R8 K18 ["eventName"]
  NEWTABLE R9 0 1
  GETTABLEKS R11 R2 K27 ["Backends"]
  GETTABLEKS R10 R11 K28 ["RobloxTelemetryCounter"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K19 ["backends"]
  LOADK R9 K33 ["Incrementing count of thumbs down events."]
  SETTABLEKS R9 R8 K20 ["description"]
  NEWTABLE R9 0 3
  LOADN R10 25
  LOADN R11 7
  LOADN R12 21
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K21 ["lastUpdated"]
  CALL R7 1 1
  GETIMPORT R8 K17 [table.freeze]
  DUPTABLE R9 K22 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R11 K23 ["%*%*"]
  LOADK R13 K24 ["StudioAssistant"]
  LOADK R14 K34 ["InitialResponseLatency"]
  NAMECALL R11 R11 K26 ["format"]
  CALL R11 3 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K18 ["eventName"]
  NEWTABLE R10 0 1
  GETTABLEKS R12 R2 K27 ["Backends"]
  GETTABLEKS R11 R12 K35 ["RobloxTelemetryStat"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K19 ["backends"]
  LOADK R10 K36 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
  SETTABLEKS R10 R9 K20 ["description"]
  NEWTABLE R10 0 3
  LOADN R11 25
  LOADN R12 7
  LOADN R13 21
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K21 ["lastUpdated"]
  CALL R8 1 1
  GETIMPORT R9 K17 [table.freeze]
  DUPTABLE R10 K22 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R12 K23 ["%*%*"]
  LOADK R14 K24 ["StudioAssistant"]
  LOADK R15 K37 ["ErrorEvent"]
  NAMECALL R12 R12 K26 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K18 ["eventName"]
  NEWTABLE R11 0 1
  GETTABLEKS R13 R2 K27 ["Backends"]
  GETTABLEKS R12 R13 K28 ["RobloxTelemetryCounter"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K19 ["backends"]
  LOADK R11 K38 ["Incrementing count of error events with error type attached."]
  SETTABLEKS R11 R10 K20 ["description"]
  NEWTABLE R11 0 3
  LOADN R12 25
  LOADN R13 7
  LOADN R14 21
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K21 ["lastUpdated"]
  CALL R9 1 1
  GETIMPORT R10 K17 [table.freeze]
  DUPTABLE R11 K40 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R13 K23 ["%*%*"]
  LOADK R15 K24 ["StudioAssistant"]
  LOADK R16 K41 ["MarkdownError"]
  NAMECALL R13 R13 K26 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K18 ["eventName"]
  NEWTABLE R12 0 1
  GETTABLEKS R14 R2 K27 ["Backends"]
  GETTABLEKS R13 R14 K42 ["Points"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K19 ["backends"]
  LOADK R12 K43 ["Collection of markdown error events, with markdown attached."]
  SETTABLEKS R12 R11 K20 ["description"]
  MOVE R12 R3
  CALL R12 0 1
  SETTABLEKS R12 R11 K39 ["throttlingPercentage"]
  NEWTABLE R12 0 3
  LOADN R13 25
  LOADN R14 7
  LOADN R15 21
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K21 ["lastUpdated"]
  CALL R10 1 1
  DUPCLOSURE R11 K44 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPCLOSURE R12 K45 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R13 K46 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPCLOSURE R14 K47 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R7
  DUPCLOSURE R15 K48 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R8
  DUPCLOSURE R16 K49 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R10
  DUPTABLE R17 K56 [{"logUserMessageSent", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError"}]
  SETTABLEKS R11 R17 K50 ["logUserMessageSent"]
  SETTABLEKS R12 R17 K51 ["logErrorEvent"]
  SETTABLEKS R13 R17 K52 ["logThumbsUp"]
  SETTABLEKS R14 R17 K53 ["logThumbsDown"]
  SETTABLEKS R15 R17 K54 ["logInitialResponseLatency"]
  SETTABLEKS R16 R17 K55 ["logMarkdownError"]
  RETURN R17 1
