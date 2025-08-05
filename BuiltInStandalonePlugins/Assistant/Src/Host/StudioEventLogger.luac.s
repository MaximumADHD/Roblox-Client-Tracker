PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["StandardizedFields"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R7 R0
  MOVE R8 R5
  GETIMPORT R6 K3 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-8]
  FASTCALL2K TABLE_INSERT R0 K4 [+5]
  MOVE R2 R0
  LOADK R3 K4 ["addSessionInfo"]
  GETIMPORT R1 K3 [table.insert]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  LOADK R2 K0 ["%*%*"]
  LOADK R4 K1 ["StudioAssistant"]
  MOVE R5 R0
  NAMECALL R2 R2 K2 ["format"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Message ID not found in map"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Message ID already exists in map"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADB R3 0
  NAMECALL R1 R1 K3 ["GenerateGUID"]
  CALL R1 2 1
  GETUPVAL R2 0
  SETTABLE R1 R2 R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["logEvent"]
  GETUPVAL R2 2
  DUPTABLE R3 K4 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K9 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R5 R0 K10 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  GETTABLEKS R5 R0 K6 ["conversationId"]
  SETTABLEKS R5 R4 K6 ["conversationId"]
  GETTABLEKS R5 R0 K7 ["message"]
  SETTABLEKS R5 R4 K7 ["message"]
  LOADK R5 K11 ["MCPUser"]
  SETTABLEKS R5 R4 K8 ["role"]
  SETTABLEKS R4 R3 K2 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 3
  GETTABLEKS R6 R9 K12 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K15 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K16 [+5]
  MOVE R7 R5
  LOADK R8 K16 ["addSessionInfo"]
  GETIMPORT R6 K15 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K3 ["standardizedFields"]
  CALL R1 2 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 4
  LOADK R3 K17 ["user_message_sent"]
  DUPTABLE R4 K18 [{"requestId"}]
  GETTABLEKS R5 R0 K10 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  NAMECALL R1 R1 K19 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K8 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R5 R0 K9 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["conversationId"]
  SETTABLEKS R5 R4 K5 ["conversationId"]
  GETTABLEKS R5 R0 K6 ["message"]
  SETTABLEKS R5 R4 K6 ["message"]
  LOADK R5 K10 ["MCPAssistant"]
  SETTABLEKS R5 R4 K7 ["role"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K11 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K14 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K15 [+5]
  MOVE R7 R5
  LOADK R8 K15 ["addSessionInfo"]
  GETIMPORT R6 K14 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
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

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["logEvent"]
  GETUPVAL R2 2
  DUPTABLE R3 K4 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K7 [{"requestId", "conversationId"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  GETTABLEKS R5 R0 K6 ["conversationId"]
  SETTABLEKS R5 R4 K6 ["conversationId"]
  SETTABLEKS R4 R3 K2 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 3
  GETTABLEKS R6 R9 K9 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K12 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K13 [+5]
  MOVE R7 R5
  LOADK R8 K13 ["addSessionInfo"]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K3 ["standardizedFields"]
  CALL R1 2 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 4
  LOADK R3 K14 ["thumbs_up"]
  DUPTABLE R4 K15 [{"requestId"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  NAMECALL R1 R1 K16 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["logEvent"]
  GETUPVAL R2 2
  DUPTABLE R3 K4 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K7 [{"requestId", "conversationId"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  GETTABLEKS R5 R0 K6 ["conversationId"]
  SETTABLEKS R5 R4 K6 ["conversationId"]
  SETTABLEKS R4 R3 K2 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 3
  GETTABLEKS R6 R9 K9 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K12 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K13 [+5]
  MOVE R7 R5
  LOADK R8 K13 ["addSessionInfo"]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K3 ["standardizedFields"]
  CALL R1 2 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 4
  LOADK R3 K14 ["thumbs_down"]
  DUPTABLE R4 K15 [{"requestId"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  NAMECALL R1 R1 K16 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"customFields"}]
  DUPTABLE R4 K4 [{"markdown"}]
  SETTABLEKS R0 R4 K3 ["markdown"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  LOADK R3 K0 ["retry"]
  DUPTABLE R4 K2 [{"requestId"}]
  SETTABLEKS R0 R4 K1 ["requestId"]
  NAMECALL R1 R1 K3 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_12:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  DUPCLOSURE R2 K0 [PROTO_5]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  DUPCLOSURE R3 K1 [PROTO_6]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  DUPCLOSURE R6 K2 [PROTO_9]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  DUPCLOSURE R7 K3 [PROTO_10]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  NEWCLOSURE R8 P7
  CAPTURE VAL R0
  DUPTABLE R9 K14 [{"logUserMessageSent", "logAssistantMessageSent", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "getMessageGuid", "createMessageGuid"}]
  SETTABLEKS R1 R9 K4 ["logUserMessageSent"]
  SETTABLEKS R2 R9 K5 ["logAssistantMessageSent"]
  SETTABLEKS R3 R9 K6 ["logErrorEvent"]
  SETTABLEKS R4 R9 K7 ["logThumbsUp"]
  SETTABLEKS R5 R9 K8 ["logThumbsDown"]
  SETTABLEKS R6 R9 K9 ["logInitialResponseLatency"]
  SETTABLEKS R7 R9 K10 ["logMarkdownError"]
  SETTABLEKS R8 R9 K11 ["logRetry"]
  GETUPVAL R10 11
  SETTABLEKS R10 R9 K12 ["getMessageGuid"]
  GETUPVAL R10 12
  SETTABLEKS R10 R9 K13 ["createMessageGuid"]
  RETURN R9 1

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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["TelemetryProtocol"]
  CALL R3 1 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["HttpService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K16 ["Flags"]
  GETTABLEKS R7 R8 K17 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K18 ["Get"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Flags"]
  GETTABLEKS R8 R9 K19 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["Get"]
  NEWTABLE R7 0 0
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R9 K21 [PROTO_1]
  GETIMPORT R10 K24 [table.freeze]
  DUPTABLE R11 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R13 K30 ["%*%*"]
  LOADK R15 K31 ["StudioAssistant"]
  LOADK R16 K32 ["UserMessageSent"]
  NAMECALL R13 R13 K33 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K25 ["eventName"]
  NEWTABLE R12 0 1
  GETTABLEKS R14 R2 K34 ["Backends"]
  GETTABLEKS R13 R14 K35 ["RobloxTelemetryCounter"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K26 ["backends"]
  LOADK R12 K36 ["Incrementing count of user messages sent."]
  SETTABLEKS R12 R11 K27 ["description"]
  NEWTABLE R12 0 3
  LOADN R13 25
  LOADN R14 7
  LOADN R15 21
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K28 ["lastUpdated"]
  CALL R10 1 1
  GETIMPORT R11 K24 [table.freeze]
  DUPTABLE R12 K38 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R13 K39 ["CAPMessageSent"]
  SETTABLEKS R13 R12 K25 ["eventName"]
  NEWTABLE R13 0 1
  GETTABLEKS R15 R2 K34 ["Backends"]
  GETTABLEKS R14 R15 K40 ["EventIngest"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K26 ["backends"]
  LOADK R13 K41 ["User message sent event with request ID."]
  SETTABLEKS R13 R12 K27 ["description"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K37 ["throttlingPercentage"]
  NEWTABLE R13 0 3
  LOADN R14 25
  LOADN R15 7
  LOADN R16 25
  SETLIST R13 R14 3 [1]
  SETTABLEKS R13 R12 K28 ["lastUpdated"]
  CALL R11 1 1
  GETIMPORT R12 K24 [table.freeze]
  DUPTABLE R13 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R14 K42 ["CAPUserFeedbackThumbsUp"]
  SETTABLEKS R14 R13 K25 ["eventName"]
  NEWTABLE R14 0 1
  GETTABLEKS R16 R2 K34 ["Backends"]
  GETTABLEKS R15 R16 K40 ["EventIngest"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K26 ["backends"]
  LOADK R14 K43 ["User feedback thumbs up event with message context."]
  SETTABLEKS R14 R13 K27 ["description"]
  NEWTABLE R14 0 3
  LOADN R15 25
  LOADN R16 7
  LOADN R17 25
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K28 ["lastUpdated"]
  CALL R12 1 1
  GETIMPORT R13 K24 [table.freeze]
  DUPTABLE R14 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R15 K44 ["CAPUserFeedbackThumbsDown"]
  SETTABLEKS R15 R14 K25 ["eventName"]
  NEWTABLE R15 0 1
  GETTABLEKS R17 R2 K34 ["Backends"]
  GETTABLEKS R16 R17 K40 ["EventIngest"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K26 ["backends"]
  LOADK R15 K45 ["User feedback thumbs down event with message context."]
  SETTABLEKS R15 R14 K27 ["description"]
  NEWTABLE R15 0 3
  LOADN R16 25
  LOADN R17 7
  LOADN R18 25
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K28 ["lastUpdated"]
  CALL R13 1 1
  GETIMPORT R14 K24 [table.freeze]
  DUPTABLE R15 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R17 K30 ["%*%*"]
  LOADK R19 K31 ["StudioAssistant"]
  LOADK R20 K46 ["ThumbsUp"]
  NAMECALL R17 R17 K33 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K25 ["eventName"]
  NEWTABLE R16 0 1
  GETTABLEKS R18 R2 K34 ["Backends"]
  GETTABLEKS R17 R18 K35 ["RobloxTelemetryCounter"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K26 ["backends"]
  LOADK R16 K47 ["Incrementing count of thumbs up events."]
  SETTABLEKS R16 R15 K27 ["description"]
  NEWTABLE R16 0 3
  LOADN R17 25
  LOADN R18 7
  LOADN R19 21
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K28 ["lastUpdated"]
  CALL R14 1 1
  GETIMPORT R15 K24 [table.freeze]
  DUPTABLE R16 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R18 K30 ["%*%*"]
  LOADK R20 K31 ["StudioAssistant"]
  LOADK R21 K48 ["ThumbsDown"]
  NAMECALL R18 R18 K33 ["format"]
  CALL R18 3 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K25 ["eventName"]
  NEWTABLE R17 0 1
  GETTABLEKS R19 R2 K34 ["Backends"]
  GETTABLEKS R18 R19 K35 ["RobloxTelemetryCounter"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K26 ["backends"]
  LOADK R17 K49 ["Incrementing count of thumbs down events."]
  SETTABLEKS R17 R16 K27 ["description"]
  NEWTABLE R17 0 3
  LOADN R18 25
  LOADN R19 7
  LOADN R20 21
  SETLIST R17 R18 3 [1]
  SETTABLEKS R17 R16 K28 ["lastUpdated"]
  CALL R15 1 1
  GETIMPORT R16 K24 [table.freeze]
  DUPTABLE R17 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R19 K30 ["%*%*"]
  LOADK R21 K31 ["StudioAssistant"]
  LOADK R22 K50 ["InitialResponseLatency"]
  NAMECALL R19 R19 K33 ["format"]
  CALL R19 3 1
  MOVE R18 R19
  SETTABLEKS R18 R17 K25 ["eventName"]
  NEWTABLE R18 0 1
  GETTABLEKS R20 R2 K34 ["Backends"]
  GETTABLEKS R19 R20 K51 ["RobloxTelemetryStat"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K26 ["backends"]
  LOADK R18 K52 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
  SETTABLEKS R18 R17 K27 ["description"]
  NEWTABLE R18 0 3
  LOADN R19 25
  LOADN R20 7
  LOADN R21 21
  SETLIST R18 R19 3 [1]
  SETTABLEKS R18 R17 K28 ["lastUpdated"]
  CALL R16 1 1
  GETIMPORT R17 K24 [table.freeze]
  DUPTABLE R18 K29 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R20 K30 ["%*%*"]
  LOADK R22 K31 ["StudioAssistant"]
  LOADK R23 K53 ["ErrorEvent"]
  NAMECALL R20 R20 K33 ["format"]
  CALL R20 3 1
  MOVE R19 R20
  SETTABLEKS R19 R18 K25 ["eventName"]
  NEWTABLE R19 0 1
  GETTABLEKS R21 R2 K34 ["Backends"]
  GETTABLEKS R20 R21 K35 ["RobloxTelemetryCounter"]
  SETLIST R19 R20 1 [1]
  SETTABLEKS R19 R18 K26 ["backends"]
  LOADK R19 K54 ["Incrementing count of error events with error type attached."]
  SETTABLEKS R19 R18 K27 ["description"]
  NEWTABLE R19 0 3
  LOADN R20 25
  LOADN R21 7
  LOADN R22 21
  SETLIST R19 R20 3 [1]
  SETTABLEKS R19 R18 K28 ["lastUpdated"]
  CALL R17 1 1
  GETIMPORT R18 K24 [table.freeze]
  DUPTABLE R19 K38 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R21 K30 ["%*%*"]
  LOADK R23 K31 ["StudioAssistant"]
  LOADK R24 K55 ["MarkdownError"]
  NAMECALL R21 R21 K33 ["format"]
  CALL R21 3 1
  MOVE R20 R21
  SETTABLEKS R20 R19 K25 ["eventName"]
  NEWTABLE R20 0 1
  GETTABLEKS R22 R2 K34 ["Backends"]
  GETTABLEKS R21 R22 K56 ["Points"]
  SETLIST R20 R21 1 [1]
  SETTABLEKS R20 R19 K26 ["backends"]
  LOADK R20 K57 ["Collection of markdown error events, with markdown attached."]
  SETTABLEKS R20 R19 K27 ["description"]
  MOVE R20 R6
  CALL R20 0 1
  SETTABLEKS R20 R19 K37 ["throttlingPercentage"]
  NEWTABLE R20 0 3
  LOADN R21 25
  LOADN R22 7
  LOADN R23 21
  SETLIST R20 R21 3 [1]
  SETTABLEKS R20 R19 K28 ["lastUpdated"]
  CALL R18 1 1
  DUPCLOSURE R19 K58 [PROTO_2]
  CAPTURE VAL R7
  DUPCLOSURE R20 K59 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R21 K60 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  RETURN R21 1
