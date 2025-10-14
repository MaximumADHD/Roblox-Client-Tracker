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
  NEWTABLE R0 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Backends"]
  GETTABLEKS R3 R4 K1 ["EventIngest"]
  FASTCALL2 TABLE_INSERT R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 2 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Backends"]
  GETTABLEKS R3 R4 K5 ["Points"]
  FASTCALL2 TABLE_INSERT R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 2 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Message ID not found in map"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
  LOADK R3 K14 ["thumbs_up"]
  DUPTABLE R4 K15 [{"requestId"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K5 ["requestId"]
  NAMECALL R1 R1 K16 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"customFields"}]
  DUPTABLE R4 K4 [{"markdown"}]
  SETTABLEKS R0 R4 K3 ["markdown"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K6 [{"requestId", "conversationId"}]
  GETTABLEKS R5 R0 K7 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["conversationId"]
  SETTABLEKS R5 R4 K5 ["conversationId"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K8 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K11 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K12 [+5]
  MOVE R7 R5
  LOADK R8 K12 ["addSessionInfo"]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 3
  LOADK R3 K13 ["retry"]
  DUPTABLE R4 K14 [{"requestId"}]
  GETTABLEKS R5 R0 K7 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  NAMECALL R1 R1 K15 ["LogEventAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K6 [{"requestId", "conversationId"}]
  GETTABLEKS R5 R0 K7 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["conversationId"]
  SETTABLEKS R5 R4 K5 ["conversationId"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K8 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K11 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K12 [+5]
  MOVE R7 R5
  LOADK R8 K12 ["addSessionInfo"]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K8 [{"requestId", "conversationId", "toolName", "toolType"}]
  GETTABLEKS R5 R0 K9 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["conversationId"]
  SETTABLEKS R5 R4 K5 ["conversationId"]
  GETTABLEKS R5 R0 K6 ["toolName"]
  SETTABLEKS R5 R4 K6 ["toolName"]
  GETTABLEKS R5 R0 K6 ["toolName"]
  SETTABLEKS R5 R4 K7 ["toolType"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K10 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K13 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K14 [+5]
  MOVE R7 R5
  LOADK R8 K14 ["addSessionInfo"]
  GETIMPORT R6 K13 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K7 [{"requestId", "toolName", "warningMessage"}]
  GETTABLEKS R5 R0 K8 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["toolName"]
  SETTABLEKS R5 R4 K5 ["toolName"]
  GETTABLEKS R5 R0 K6 ["warningMessage"]
  SETTABLEKS R5 R4 K6 ["warningMessage"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
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
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"customFields", "standardizedFields"}]
  DUPTABLE R4 K6 [{"requestId", "result"}]
  GETTABLEKS R5 R0 K7 ["messageGuid"]
  SETTABLEKS R5 R4 K4 ["requestId"]
  GETTABLEKS R5 R0 K5 ["result"]
  SETTABLEKS R5 R4 K5 ["result"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  NEWTABLE R5 0 0
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K8 ["StandardizedFields"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K11 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  FASTCALL2K TABLE_INSERT R5 K12 [+5]
  MOVE R7 R5
  LOADK R8 K12 ["addSessionInfo"]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["standardizedFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  DUPCLOSURE R2 K0 [PROTO_6]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  DUPCLOSURE R3 K1 [PROTO_7]
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
  DUPCLOSURE R6 K2 [PROTO_10]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  DUPCLOSURE R7 K3 [PROTO_11]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  NEWCLOSURE R8 P7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  DUPCLOSURE R9 K4 [PROTO_13]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U12
  CAPTURE UPVAL U3
  DUPCLOSURE R10 K5 [PROTO_14]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U3
  DUPCLOSURE R11 K6 [PROTO_15]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U3
  DUPCLOSURE R12 K7 [PROTO_16]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U15
  CAPTURE UPVAL U3
  DUPTABLE R13 K22 [{"logUserMessageSent", "logAssistantMessageSent", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolConfirmationShown", "logToolConfirmationResult", "getMessageGuid", "createMessageGuid"}]
  SETTABLEKS R1 R13 K8 ["logUserMessageSent"]
  SETTABLEKS R2 R13 K9 ["logAssistantMessageSent"]
  SETTABLEKS R3 R13 K10 ["logErrorEvent"]
  SETTABLEKS R4 R13 K11 ["logThumbsUp"]
  SETTABLEKS R5 R13 K12 ["logThumbsDown"]
  SETTABLEKS R6 R13 K13 ["logInitialResponseLatency"]
  SETTABLEKS R7 R13 K14 ["logMarkdownError"]
  SETTABLEKS R8 R13 K15 ["logRetry"]
  SETTABLEKS R9 R13 K16 ["logStopGeneration"]
  SETTABLEKS R10 R13 K17 ["logToolStarted"]
  SETTABLEKS R11 R13 K18 ["logToolConfirmationShown"]
  SETTABLEKS R12 R13 K19 ["logToolConfirmationResult"]
  GETUPVAL R14 16
  SETTABLEKS R14 R13 K20 ["getMessageGuid"]
  GETUPVAL R14 17
  SETTABLEKS R14 R13 K21 ["createMessageGuid"]
  RETURN R13 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["AssistantUI"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Flags"]
  GETTABLEKS R4 R5 K14 ["FFlagAssistantAttachCommonTelemetryFields"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETTABLEKS R5 R6 K15 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K16 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["Telemetry"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K19 ["TelemetryProtocol"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K20 ["Get"]
  GETTABLEKS R9 R5 K20 ["Get"]
  GETTABLEKS R10 R3 K20 ["Get"]
  NEWTABLE R11 0 0
  DUPCLOSURE R12 K21 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R13 K22 [PROTO_1]
  DUPCLOSURE R14 K23 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R10
  GETIMPORT R15 K26 [table.freeze]
  NEWTABLE R17 0 0
  GETTABLEKS R21 R6 K27 ["Backends"]
  GETTABLEKS R20 R21 K28 ["EventIngest"]
  FASTCALL2 TABLE_INSERT R17 R20 [+4]
  MOVE R19 R17
  GETIMPORT R18 K30 [table.insert]
  CALL R18 2 0
  MOVE R18 R10
  CALL R18 0 1
  JUMPIFNOT R18 [+10]
  GETTABLEKS R21 R6 K27 ["Backends"]
  GETTABLEKS R20 R21 K31 ["Points"]
  FASTCALL2 TABLE_INSERT R17 R20 [+4]
  MOVE R19 R17
  GETIMPORT R18 K30 [table.insert]
  CALL R18 2 0
  MOVE R16 R17
  CALL R15 1 1
  GETIMPORT R16 K26 [table.freeze]
  DUPTABLE R17 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R19 K37 ["%*%*"]
  LOADK R21 K38 ["StudioAssistant"]
  LOADK R22 K39 ["UserMessageSent"]
  NAMECALL R19 R19 K40 ["format"]
  CALL R19 3 1
  MOVE R18 R19
  SETTABLEKS R18 R17 K32 ["eventName"]
  NEWTABLE R18 0 1
  GETTABLEKS R20 R6 K27 ["Backends"]
  GETTABLEKS R19 R20 K41 ["RobloxTelemetryCounter"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K33 ["backends"]
  LOADK R18 K42 ["Incrementing count of user messages sent."]
  SETTABLEKS R18 R17 K34 ["description"]
  NEWTABLE R18 0 3
  LOADN R19 25
  LOADN R20 7
  LOADN R21 21
  SETLIST R18 R19 3 [1]
  SETTABLEKS R18 R17 K35 ["lastUpdated"]
  CALL R16 1 1
  GETIMPORT R17 K26 [table.freeze]
  DUPTABLE R18 K44 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R19 K45 ["CAPMessageSent"]
  SETTABLEKS R19 R18 K32 ["eventName"]
  SETTABLEKS R15 R18 K33 ["backends"]
  LOADK R19 K46 ["User message sent event with request ID."]
  SETTABLEKS R19 R18 K34 ["description"]
  MOVE R19 R9
  CALL R19 0 1
  SETTABLEKS R19 R18 K43 ["throttlingPercentage"]
  NEWTABLE R19 0 3
  LOADN R20 25
  LOADN R21 7
  LOADN R22 25
  SETLIST R19 R20 3 [1]
  SETTABLEKS R19 R18 K35 ["lastUpdated"]
  CALL R17 1 1
  GETIMPORT R18 K26 [table.freeze]
  DUPTABLE R19 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R20 K47 ["CAPUserFeedbackThumbsUp"]
  SETTABLEKS R20 R19 K32 ["eventName"]
  SETTABLEKS R15 R19 K33 ["backends"]
  LOADK R20 K48 ["User feedback thumbs up event with message context."]
  SETTABLEKS R20 R19 K34 ["description"]
  NEWTABLE R20 0 3
  LOADN R21 25
  LOADN R22 7
  LOADN R23 25
  SETLIST R20 R21 3 [1]
  SETTABLEKS R20 R19 K35 ["lastUpdated"]
  CALL R18 1 1
  GETIMPORT R19 K26 [table.freeze]
  DUPTABLE R20 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R21 K49 ["CAPUserFeedbackThumbsDown"]
  SETTABLEKS R21 R20 K32 ["eventName"]
  SETTABLEKS R15 R20 K33 ["backends"]
  LOADK R21 K50 ["User feedback thumbs down event with message context."]
  SETTABLEKS R21 R20 K34 ["description"]
  NEWTABLE R21 0 3
  LOADN R22 25
  LOADN R23 7
  LOADN R24 25
  SETLIST R21 R22 3 [1]
  SETTABLEKS R21 R20 K35 ["lastUpdated"]
  CALL R19 1 1
  GETIMPORT R20 K26 [table.freeze]
  DUPTABLE R21 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R23 K37 ["%*%*"]
  LOADK R25 K38 ["StudioAssistant"]
  LOADK R26 K51 ["ThumbsUp"]
  NAMECALL R23 R23 K40 ["format"]
  CALL R23 3 1
  MOVE R22 R23
  SETTABLEKS R22 R21 K32 ["eventName"]
  NEWTABLE R22 0 1
  GETTABLEKS R24 R6 K27 ["Backends"]
  GETTABLEKS R23 R24 K41 ["RobloxTelemetryCounter"]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K33 ["backends"]
  LOADK R22 K52 ["Incrementing count of thumbs up events."]
  SETTABLEKS R22 R21 K34 ["description"]
  NEWTABLE R22 0 3
  LOADN R23 25
  LOADN R24 7
  LOADN R25 21
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K35 ["lastUpdated"]
  CALL R20 1 1
  GETIMPORT R21 K26 [table.freeze]
  DUPTABLE R22 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R24 K37 ["%*%*"]
  LOADK R26 K38 ["StudioAssistant"]
  LOADK R27 K53 ["ThumbsDown"]
  NAMECALL R24 R24 K40 ["format"]
  CALL R24 3 1
  MOVE R23 R24
  SETTABLEKS R23 R22 K32 ["eventName"]
  NEWTABLE R23 0 1
  GETTABLEKS R25 R6 K27 ["Backends"]
  GETTABLEKS R24 R25 K41 ["RobloxTelemetryCounter"]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K33 ["backends"]
  LOADK R23 K54 ["Incrementing count of thumbs down events."]
  SETTABLEKS R23 R22 K34 ["description"]
  NEWTABLE R23 0 3
  LOADN R24 25
  LOADN R25 7
  LOADN R26 21
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K35 ["lastUpdated"]
  CALL R21 1 1
  GETIMPORT R22 K26 [table.freeze]
  DUPTABLE R23 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R25 K37 ["%*%*"]
  LOADK R27 K38 ["StudioAssistant"]
  LOADK R28 K55 ["InitialResponseLatency"]
  NAMECALL R25 R25 K40 ["format"]
  CALL R25 3 1
  MOVE R24 R25
  SETTABLEKS R24 R23 K32 ["eventName"]
  NEWTABLE R24 0 1
  GETTABLEKS R26 R6 K27 ["Backends"]
  GETTABLEKS R25 R26 K56 ["RobloxTelemetryStat"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K33 ["backends"]
  LOADK R24 K57 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
  SETTABLEKS R24 R23 K34 ["description"]
  NEWTABLE R24 0 3
  LOADN R25 25
  LOADN R26 7
  LOADN R27 21
  SETLIST R24 R25 3 [1]
  SETTABLEKS R24 R23 K35 ["lastUpdated"]
  CALL R22 1 1
  GETIMPORT R23 K26 [table.freeze]
  DUPTABLE R24 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R26 K37 ["%*%*"]
  LOADK R28 K38 ["StudioAssistant"]
  LOADK R29 K58 ["ErrorEvent"]
  NAMECALL R26 R26 K40 ["format"]
  CALL R26 3 1
  MOVE R25 R26
  SETTABLEKS R25 R24 K32 ["eventName"]
  NEWTABLE R25 0 1
  GETTABLEKS R27 R6 K27 ["Backends"]
  GETTABLEKS R26 R27 K41 ["RobloxTelemetryCounter"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K33 ["backends"]
  LOADK R25 K59 ["Incrementing count of error events with error type attached."]
  SETTABLEKS R25 R24 K34 ["description"]
  NEWTABLE R25 0 3
  LOADN R26 25
  LOADN R27 7
  LOADN R28 21
  SETLIST R25 R26 3 [1]
  SETTABLEKS R25 R24 K35 ["lastUpdated"]
  CALL R23 1 1
  GETIMPORT R24 K26 [table.freeze]
  DUPTABLE R25 K44 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R27 K37 ["%*%*"]
  LOADK R29 K38 ["StudioAssistant"]
  LOADK R30 K60 ["MarkdownError"]
  NAMECALL R27 R27 K40 ["format"]
  CALL R27 3 1
  MOVE R26 R27
  SETTABLEKS R26 R25 K32 ["eventName"]
  NEWTABLE R26 0 1
  GETTABLEKS R28 R6 K27 ["Backends"]
  GETTABLEKS R27 R28 K31 ["Points"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K33 ["backends"]
  LOADK R26 K61 ["Collection of markdown error events, with markdown attached."]
  SETTABLEKS R26 R25 K34 ["description"]
  MOVE R26 R8
  CALL R26 0 1
  SETTABLEKS R26 R25 K43 ["throttlingPercentage"]
  NEWTABLE R26 0 3
  LOADN R27 25
  LOADN R28 7
  LOADN R29 21
  SETLIST R26 R27 3 [1]
  SETTABLEKS R26 R25 K35 ["lastUpdated"]
  CALL R24 1 1
  GETIMPORT R25 K26 [table.freeze]
  DUPTABLE R26 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R27 K62 ["CAPMessageResubmitted"]
  SETTABLEKS R27 R26 K32 ["eventName"]
  SETTABLEKS R15 R26 K33 ["backends"]
  LOADK R27 K63 ["User message retry/resubmit event with request ID."]
  SETTABLEKS R27 R26 K34 ["description"]
  NEWTABLE R27 0 3
  LOADN R28 25
  LOADN R29 8
  LOADN R30 7
  SETLIST R27 R28 3 [1]
  SETTABLEKS R27 R26 K35 ["lastUpdated"]
  CALL R25 1 1
  GETIMPORT R26 K26 [table.freeze]
  DUPTABLE R27 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R28 K64 ["CAPStopGeneration"]
  SETTABLEKS R28 R27 K32 ["eventName"]
  SETTABLEKS R15 R27 K33 ["backends"]
  LOADK R28 K65 ["User stop generation event with request ID."]
  SETTABLEKS R28 R27 K34 ["description"]
  NEWTABLE R28 0 3
  LOADN R29 25
  LOADN R30 8
  LOADN R31 7
  SETLIST R28 R29 3 [1]
  SETTABLEKS R28 R27 K35 ["lastUpdated"]
  CALL R26 1 1
  GETIMPORT R27 K26 [table.freeze]
  DUPTABLE R28 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R29 K66 ["CAPToolStarted"]
  SETTABLEKS R29 R28 K32 ["eventName"]
  SETTABLEKS R15 R28 K33 ["backends"]
  LOADK R29 K67 ["Tool invocation started event with request ID and tool name."]
  SETTABLEKS R29 R28 K34 ["description"]
  NEWTABLE R29 0 3
  LOADN R30 25
  LOADN R31 8
  LOADN R32 7
  SETLIST R29 R30 3 [1]
  SETTABLEKS R29 R28 K35 ["lastUpdated"]
  CALL R27 1 1
  GETIMPORT R28 K26 [table.freeze]
  DUPTABLE R29 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R30 K68 ["CAPToolConfirmationShown"]
  SETTABLEKS R30 R29 K32 ["eventName"]
  SETTABLEKS R15 R29 K33 ["backends"]
  LOADK R30 K69 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
  SETTABLEKS R30 R29 K34 ["description"]
  NEWTABLE R30 0 3
  LOADN R31 25
  LOADN R32 9
  LOADN R33 19
  SETLIST R30 R31 3 [1]
  SETTABLEKS R30 R29 K35 ["lastUpdated"]
  CALL R28 1 1
  GETIMPORT R29 K26 [table.freeze]
  DUPTABLE R30 K36 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R31 K70 ["CAPToolConfirmationResult"]
  SETTABLEKS R31 R30 K32 ["eventName"]
  SETTABLEKS R15 R30 K33 ["backends"]
  LOADK R31 K71 ["Tool confirmation dialog result event with request ID and user choice."]
  SETTABLEKS R31 R30 K34 ["description"]
  NEWTABLE R31 0 3
  LOADN R32 25
  LOADN R33 9
  LOADN R34 19
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K35 ["lastUpdated"]
  CALL R29 1 1
  DUPCLOSURE R30 K72 [PROTO_3]
  CAPTURE VAL R11
  DUPCLOSURE R31 K73 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R1
  DUPCLOSURE R32 K74 [PROTO_17]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  RETURN R32 1
