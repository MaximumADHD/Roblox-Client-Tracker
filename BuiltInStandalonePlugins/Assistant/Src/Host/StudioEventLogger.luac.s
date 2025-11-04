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
  GETIMPORT R1 K2 [DateTime.now]
  CALL R1 0 1
  GETTABLEKS R0 R1 K3 ["UnixTimestampMillis"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assign"]
  MOVE R2 R0
  DUPTABLE R3 K2 [{"timestampMilliseconds"}]
  GETIMPORT R5 K5 [DateTime.now]
  CALL R5 0 1
  GETTABLEKS R4 R5 K6 ["UnixTimestampMillis"]
  SETTABLEKS R4 R3 K1 ["timestampMilliseconds"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  LOADNIL R1
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+31]
  DUPTABLE R2 K5 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R3 R0 K6 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  GETTABLEKS R3 R0 K3 ["message"]
  SETTABLEKS R3 R2 K3 ["message"]
  LOADK R3 K7 ["MCPUser"]
  SETTABLEKS R3 R2 K4 ["role"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K8 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K10 [{"timestampMilliseconds"}]
  GETIMPORT R7 K13 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K14 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K9 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+17]
  DUPTABLE R2 K5 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R3 R0 K6 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  GETTABLEKS R3 R0 K3 ["message"]
  SETTABLEKS R3 R2 K3 ["message"]
  LOADK R3 K7 ["MCPUser"]
  SETTABLEKS R3 R2 K4 ["role"]
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["logEvent"]
  GETUPVAL R3 4
  DUPTABLE R4 K18 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K16 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 5
  GETTABLEKS R7 R10 K19 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K22 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K23 [+5]
  MOVE R8 R6
  LOADK R9 K23 ["addSessionInfo"]
  GETIMPORT R7 K22 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K17 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 6
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 6
  LOADK R4 K24 ["user_message_sent"]
  DUPTABLE R5 K25 [{"requestId"}]
  GETTABLEKS R6 R0 K6 ["messageGuid"]
  SETTABLEKS R6 R5 K1 ["requestId"]
  NAMECALL R2 R2 K26 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+31]
  DUPTABLE R2 K4 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R3 R0 K5 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETTABLEKS R3 R0 K2 ["message"]
  SETTABLEKS R3 R2 K2 ["message"]
  LOADK R3 K6 ["MCPAssistant"]
  SETTABLEKS R3 R2 K3 ["role"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K9 [{"timestampMilliseconds"}]
  GETIMPORT R7 K12 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K13 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K8 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+17]
  DUPTABLE R2 K4 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R3 R0 K5 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETTABLEKS R3 R0 K2 ["message"]
  SETTABLEKS R3 R2 K2 ["message"]
  LOADK R3 K6 ["MCPAssistant"]
  SETTABLEKS R3 R2 K3 ["role"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K14 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K17 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K15 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K18 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K21 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K22 [+5]
  MOVE R8 R6
  LOADK R9 K22 ["addSessionInfo"]
  GETIMPORT R7 K21 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K16 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  LOADNIL R1
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K3 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K7 [{"timestampMilliseconds"}]
  GETIMPORT R7 K10 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K11 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K6 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K3 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["logEvent"]
  GETUPVAL R3 4
  DUPTABLE R4 K15 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K13 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 5
  GETTABLEKS R7 R10 K16 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K19 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K20 [+5]
  MOVE R8 R6
  LOADK R9 K20 ["addSessionInfo"]
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K14 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 6
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 6
  LOADK R4 K21 ["thumbs_up"]
  DUPTABLE R5 K22 [{"requestId"}]
  GETTABLEKS R6 R0 K4 ["messageGuid"]
  SETTABLEKS R6 R5 K1 ["requestId"]
  NAMECALL R2 R2 K23 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 1
  LOADN R3 1
  CALL R1 2 0
  LOADNIL R1
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K3 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K7 [{"timestampMilliseconds"}]
  GETIMPORT R7 K10 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K11 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K6 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K3 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K1 ["requestId"]
  GETTABLEKS R3 R0 K2 ["conversationId"]
  SETTABLEKS R3 R2 K2 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["logEvent"]
  GETUPVAL R3 4
  DUPTABLE R4 K15 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K13 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 5
  GETTABLEKS R7 R10 K16 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K19 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K20 [+5]
  MOVE R8 R6
  LOADK R9 K20 ["addSessionInfo"]
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K14 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 6
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 6
  LOADK R4 K21 ["thumbs_down"]
  DUPTABLE R5 K22 [{"requestId"}]
  GETTABLEKS R6 R0 K4 ["messageGuid"]
  SETTABLEKS R6 R5 K1 ["requestId"]
  NAMECALL R2 R2 K23 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"customFields"}]
  DUPTABLE R4 K4 [{"markdown"}]
  SETTABLEKS R0 R4 K3 ["markdown"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K2 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"timestampMilliseconds"}]
  GETIMPORT R7 K9 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K10 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K5 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K2 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K14 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K12 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K15 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K18 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K19 [+5]
  MOVE R8 R6
  LOADK R9 K19 ["addSessionInfo"]
  GETIMPORT R7 K18 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K13 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 5
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 5
  LOADK R4 K20 ["retry"]
  DUPTABLE R5 K21 [{"requestId"}]
  GETTABLEKS R6 R0 K3 ["messageGuid"]
  SETTABLEKS R6 R5 K0 ["requestId"]
  NAMECALL R2 R2 K22 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_15:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K2 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"timestampMilliseconds"}]
  GETIMPORT R7 K9 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K10 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K5 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K2 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K14 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K12 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K15 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K18 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K19 [+5]
  MOVE R8 R6
  LOADK R9 K19 ["addSessionInfo"]
  GETIMPORT R7 K18 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K13 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+32]
  DUPTABLE R2 K4 [{"requestId", "conversationId", "toolName", "toolType"}]
  GETTABLEKS R3 R0 K5 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K2 ["toolName"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K3 ["toolType"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K8 [{"timestampMilliseconds"}]
  GETIMPORT R7 K11 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K12 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K7 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+18]
  DUPTABLE R2 K4 [{"requestId", "conversationId", "toolName", "toolType"}]
  GETTABLEKS R3 R0 K5 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["conversationId"]
  SETTABLEKS R3 R2 K1 ["conversationId"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K2 ["toolName"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K3 ["toolType"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K16 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K14 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K17 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K20 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K21 [+5]
  MOVE R8 R6
  LOADK R9 K21 ["addSessionInfo"]
  GETIMPORT R7 K20 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K15 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+28]
  DUPTABLE R2 K3 [{"requestId", "toolName", "warningMessage"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["toolName"]
  SETTABLEKS R3 R2 K1 ["toolName"]
  GETTABLEKS R3 R0 K2 ["warningMessage"]
  SETTABLEKS R3 R2 K2 ["warningMessage"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K7 [{"timestampMilliseconds"}]
  GETIMPORT R7 K10 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K11 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K6 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+14]
  DUPTABLE R2 K3 [{"requestId", "toolName", "warningMessage"}]
  GETTABLEKS R3 R0 K4 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["toolName"]
  SETTABLEKS R3 R2 K1 ["toolName"]
  GETTABLEKS R3 R0 K2 ["warningMessage"]
  SETTABLEKS R3 R2 K2 ["warningMessage"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K12 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K15 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K13 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K16 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K19 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K20 [+5]
  MOVE R8 R6
  LOADK R9 K20 ["addSessionInfo"]
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K14 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K2 [{"requestId", "result"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["result"]
  SETTABLEKS R3 R2 K1 ["result"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"timestampMilliseconds"}]
  GETIMPORT R7 K9 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K10 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K5 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K2 [{"requestId", "result"}]
  GETTABLEKS R3 R0 K3 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["result"]
  SETTABLEKS R3 R2 K1 ["result"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K14 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K12 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K15 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K18 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K19 [+5]
  MOVE R8 R6
  LOADK R9 K19 ["addSessionInfo"]
  GETIMPORT R7 K18 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K13 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["requestJourneyDuration"]
  DUPTABLE R4 K3 [{"customFields"}]
  DUPTABLE R5 K5 [{"requestId"}]
  GETTABLEKS R6 R0 K6 ["requestEndReason"]
  SETTABLEKS R6 R5 K4 ["requestId"]
  SETTABLEKS R5 R4 K2 ["customFields"]
  CALL R1 3 0
  RETURN R0 0

PROTO_20:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  DUPCLOSURE R2 K0 [PROTO_8]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  DUPCLOSURE R3 K1 [PROTO_9]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U8
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U10
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  DUPCLOSURE R6 K2 [PROTO_12]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U11
  DUPCLOSURE R7 K3 [PROTO_13]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U12
  NEWCLOSURE R8 P7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  DUPCLOSURE R9 K4 [PROTO_15]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U5
  DUPCLOSURE R10 K5 [PROTO_16]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U15
  CAPTURE UPVAL U5
  DUPCLOSURE R11 K6 [PROTO_17]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U16
  CAPTURE UPVAL U5
  DUPCLOSURE R12 K7 [PROTO_18]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U17
  CAPTURE UPVAL U5
  DUPCLOSURE R13 K8 [PROTO_19]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U18
  DUPTABLE R14 K24 [{"logUserMessageSent", "logAssistantMessageSent", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "getMessageGuid", "createMessageGuid"}]
  SETTABLEKS R1 R14 K9 ["logUserMessageSent"]
  SETTABLEKS R2 R14 K10 ["logAssistantMessageSent"]
  SETTABLEKS R3 R14 K11 ["logErrorEvent"]
  SETTABLEKS R4 R14 K12 ["logThumbsUp"]
  SETTABLEKS R5 R14 K13 ["logThumbsDown"]
  SETTABLEKS R6 R14 K14 ["logInitialResponseLatency"]
  SETTABLEKS R7 R14 K15 ["logMarkdownError"]
  SETTABLEKS R8 R14 K16 ["logRetry"]
  SETTABLEKS R9 R14 K17 ["logStopGeneration"]
  SETTABLEKS R10 R14 K18 ["logToolStarted"]
  SETTABLEKS R11 R14 K19 ["logToolConfirmationShown"]
  SETTABLEKS R12 R14 K20 ["logToolConfirmationResult"]
  SETTABLEKS R13 R14 K21 ["logRequestJourney"]
  GETUPVAL R15 19
  SETTABLEKS R15 R14 K22 ["getMessageGuid"]
  GETUPVAL R15 20
  SETTABLEKS R15 R14 K23 ["createMessageGuid"]
  RETURN R14 1

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
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Flags"]
  GETTABLEKS R5 R6 K15 ["FFlagAssistantAttachCommonTelemetryFields"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Flags"]
  GETTABLEKS R6 R7 K16 ["FFlagLogEventTimestampAssistant"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K17 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K18 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETTABLEKS R9 R10 K20 ["Telemetry"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K10 ["Packages"]
  GETTABLEKS R10 R11 K21 ["TelemetryProtocol"]
  CALL R9 1 1
  GETTABLEKS R10 R6 K22 ["Get"]
  GETTABLEKS R11 R7 K22 ["Get"]
  GETTABLEKS R12 R4 K22 ["Get"]
  GETTABLEKS R13 R5 K22 ["Get"]
  NEWTABLE R14 0 0
  DUPCLOSURE R15 K23 [PROTO_0]
  CAPTURE VAL R9
  DUPCLOSURE R16 K24 [PROTO_1]
  DUPCLOSURE R17 K25 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R12
  GETIMPORT R18 K28 [table.freeze]
  NEWTABLE R20 0 0
  GETTABLEKS R24 R8 K29 ["Backends"]
  GETTABLEKS R23 R24 K30 ["EventIngest"]
  FASTCALL2 TABLE_INSERT R20 R23 [+4]
  MOVE R22 R20
  GETIMPORT R21 K32 [table.insert]
  CALL R21 2 0
  MOVE R21 R12
  CALL R21 0 1
  JUMPIFNOT R21 [+10]
  GETTABLEKS R24 R8 K29 ["Backends"]
  GETTABLEKS R23 R24 K33 ["Points"]
  FASTCALL2 TABLE_INSERT R20 R23 [+4]
  MOVE R22 R20
  GETIMPORT R21 K32 [table.insert]
  CALL R21 2 0
  MOVE R19 R20
  CALL R18 1 1
  GETIMPORT R19 K28 [table.freeze]
  DUPTABLE R20 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R22 K39 ["%*%*"]
  LOADK R24 K40 ["StudioAssistant"]
  LOADK R25 K41 ["UserMessageSent"]
  NAMECALL R22 R22 K42 ["format"]
  CALL R22 3 1
  MOVE R21 R22
  SETTABLEKS R21 R20 K34 ["eventName"]
  NEWTABLE R21 0 1
  GETTABLEKS R23 R8 K29 ["Backends"]
  GETTABLEKS R22 R23 K43 ["RobloxTelemetryCounter"]
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K35 ["backends"]
  LOADK R21 K44 ["Incrementing count of user messages sent."]
  SETTABLEKS R21 R20 K36 ["description"]
  NEWTABLE R21 0 3
  LOADN R22 25
  LOADN R23 7
  LOADN R24 21
  SETLIST R21 R22 3 [1]
  SETTABLEKS R21 R20 K37 ["lastUpdated"]
  CALL R19 1 1
  GETIMPORT R20 K28 [table.freeze]
  DUPTABLE R21 K46 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R22 K47 ["CAPMessageSent"]
  SETTABLEKS R22 R21 K34 ["eventName"]
  SETTABLEKS R18 R21 K35 ["backends"]
  LOADK R22 K48 ["User message sent event with request ID."]
  SETTABLEKS R22 R21 K36 ["description"]
  MOVE R22 R11
  CALL R22 0 1
  SETTABLEKS R22 R21 K45 ["throttlingPercentage"]
  NEWTABLE R22 0 3
  LOADN R23 25
  LOADN R24 7
  LOADN R25 25
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K37 ["lastUpdated"]
  CALL R20 1 1
  GETIMPORT R21 K28 [table.freeze]
  DUPTABLE R22 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R23 K49 ["CAPUserFeedbackThumbsUp"]
  SETTABLEKS R23 R22 K34 ["eventName"]
  SETTABLEKS R18 R22 K35 ["backends"]
  LOADK R23 K50 ["User feedback thumbs up event with message context."]
  SETTABLEKS R23 R22 K36 ["description"]
  NEWTABLE R23 0 3
  LOADN R24 25
  LOADN R25 7
  LOADN R26 25
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K37 ["lastUpdated"]
  CALL R21 1 1
  GETIMPORT R22 K28 [table.freeze]
  DUPTABLE R23 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R24 K51 ["CAPUserFeedbackThumbsDown"]
  SETTABLEKS R24 R23 K34 ["eventName"]
  SETTABLEKS R18 R23 K35 ["backends"]
  LOADK R24 K52 ["User feedback thumbs down event with message context."]
  SETTABLEKS R24 R23 K36 ["description"]
  NEWTABLE R24 0 3
  LOADN R25 25
  LOADN R26 7
  LOADN R27 25
  SETLIST R24 R25 3 [1]
  SETTABLEKS R24 R23 K37 ["lastUpdated"]
  CALL R22 1 1
  GETIMPORT R23 K28 [table.freeze]
  DUPTABLE R24 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R26 K39 ["%*%*"]
  LOADK R28 K40 ["StudioAssistant"]
  LOADK R29 K53 ["ThumbsUp"]
  NAMECALL R26 R26 K42 ["format"]
  CALL R26 3 1
  MOVE R25 R26
  SETTABLEKS R25 R24 K34 ["eventName"]
  NEWTABLE R25 0 1
  GETTABLEKS R27 R8 K29 ["Backends"]
  GETTABLEKS R26 R27 K43 ["RobloxTelemetryCounter"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K35 ["backends"]
  LOADK R25 K54 ["Incrementing count of thumbs up events."]
  SETTABLEKS R25 R24 K36 ["description"]
  NEWTABLE R25 0 3
  LOADN R26 25
  LOADN R27 7
  LOADN R28 21
  SETLIST R25 R26 3 [1]
  SETTABLEKS R25 R24 K37 ["lastUpdated"]
  CALL R23 1 1
  GETIMPORT R24 K28 [table.freeze]
  DUPTABLE R25 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R27 K39 ["%*%*"]
  LOADK R29 K40 ["StudioAssistant"]
  LOADK R30 K55 ["ThumbsDown"]
  NAMECALL R27 R27 K42 ["format"]
  CALL R27 3 1
  MOVE R26 R27
  SETTABLEKS R26 R25 K34 ["eventName"]
  NEWTABLE R26 0 1
  GETTABLEKS R28 R8 K29 ["Backends"]
  GETTABLEKS R27 R28 K43 ["RobloxTelemetryCounter"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K35 ["backends"]
  LOADK R26 K56 ["Incrementing count of thumbs down events."]
  SETTABLEKS R26 R25 K36 ["description"]
  NEWTABLE R26 0 3
  LOADN R27 25
  LOADN R28 7
  LOADN R29 21
  SETLIST R26 R27 3 [1]
  SETTABLEKS R26 R25 K37 ["lastUpdated"]
  CALL R24 1 1
  GETIMPORT R25 K28 [table.freeze]
  DUPTABLE R26 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R28 K39 ["%*%*"]
  LOADK R30 K40 ["StudioAssistant"]
  LOADK R31 K57 ["InitialResponseLatency"]
  NAMECALL R28 R28 K42 ["format"]
  CALL R28 3 1
  MOVE R27 R28
  SETTABLEKS R27 R26 K34 ["eventName"]
  NEWTABLE R27 0 1
  GETTABLEKS R29 R8 K29 ["Backends"]
  GETTABLEKS R28 R29 K58 ["RobloxTelemetryStat"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K35 ["backends"]
  LOADK R27 K59 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
  SETTABLEKS R27 R26 K36 ["description"]
  NEWTABLE R27 0 3
  LOADN R28 25
  LOADN R29 7
  LOADN R30 21
  SETLIST R27 R28 3 [1]
  SETTABLEKS R27 R26 K37 ["lastUpdated"]
  CALL R25 1 1
  GETIMPORT R26 K28 [table.freeze]
  DUPTABLE R27 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R29 K39 ["%*%*"]
  LOADK R31 K40 ["StudioAssistant"]
  LOADK R32 K60 ["RequestJourney"]
  NAMECALL R29 R29 K42 ["format"]
  CALL R29 3 1
  MOVE R28 R29
  SETTABLEKS R28 R27 K34 ["eventName"]
  NEWTABLE R28 0 1
  GETTABLEKS R30 R8 K29 ["Backends"]
  GETTABLEKS R29 R30 K58 ["RobloxTelemetryStat"]
  SETLIST R28 R29 1 [1]
  SETTABLEKS R28 R27 K35 ["backends"]
  LOADK R28 K61 ["User request journey duration in seconds. Time between sending first message to request ended."]
  SETTABLEKS R28 R27 K36 ["description"]
  NEWTABLE R28 0 3
  LOADN R29 25
  LOADN R30 10
  LOADN R31 22
  SETLIST R28 R29 3 [1]
  SETTABLEKS R28 R27 K37 ["lastUpdated"]
  CALL R26 1 1
  GETIMPORT R27 K28 [table.freeze]
  DUPTABLE R28 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R30 K39 ["%*%*"]
  LOADK R32 K40 ["StudioAssistant"]
  LOADK R33 K62 ["ErrorEvent"]
  NAMECALL R30 R30 K42 ["format"]
  CALL R30 3 1
  MOVE R29 R30
  SETTABLEKS R29 R28 K34 ["eventName"]
  NEWTABLE R29 0 1
  GETTABLEKS R31 R8 K29 ["Backends"]
  GETTABLEKS R30 R31 K43 ["RobloxTelemetryCounter"]
  SETLIST R29 R30 1 [1]
  SETTABLEKS R29 R28 K35 ["backends"]
  LOADK R29 K63 ["Incrementing count of error events with error type attached."]
  SETTABLEKS R29 R28 K36 ["description"]
  NEWTABLE R29 0 3
  LOADN R30 25
  LOADN R31 7
  LOADN R32 21
  SETLIST R29 R30 3 [1]
  SETTABLEKS R29 R28 K37 ["lastUpdated"]
  CALL R27 1 1
  GETIMPORT R28 K28 [table.freeze]
  DUPTABLE R29 K46 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R31 K39 ["%*%*"]
  LOADK R33 K40 ["StudioAssistant"]
  LOADK R34 K64 ["MarkdownError"]
  NAMECALL R31 R31 K42 ["format"]
  CALL R31 3 1
  MOVE R30 R31
  SETTABLEKS R30 R29 K34 ["eventName"]
  NEWTABLE R30 0 1
  GETTABLEKS R32 R8 K29 ["Backends"]
  GETTABLEKS R31 R32 K33 ["Points"]
  SETLIST R30 R31 1 [1]
  SETTABLEKS R30 R29 K35 ["backends"]
  LOADK R30 K65 ["Collection of markdown error events, with markdown attached."]
  SETTABLEKS R30 R29 K36 ["description"]
  MOVE R30 R10
  CALL R30 0 1
  SETTABLEKS R30 R29 K45 ["throttlingPercentage"]
  NEWTABLE R30 0 3
  LOADN R31 25
  LOADN R32 7
  LOADN R33 21
  SETLIST R30 R31 3 [1]
  SETTABLEKS R30 R29 K37 ["lastUpdated"]
  CALL R28 1 1
  GETIMPORT R29 K28 [table.freeze]
  DUPTABLE R30 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R31 K66 ["CAPMessageResubmitted"]
  SETTABLEKS R31 R30 K34 ["eventName"]
  SETTABLEKS R18 R30 K35 ["backends"]
  LOADK R31 K67 ["User message retry/resubmit event with request ID."]
  SETTABLEKS R31 R30 K36 ["description"]
  NEWTABLE R31 0 3
  LOADN R32 25
  LOADN R33 8
  LOADN R34 7
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K37 ["lastUpdated"]
  CALL R29 1 1
  GETIMPORT R30 K28 [table.freeze]
  DUPTABLE R31 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R32 K68 ["CAPStopGeneration"]
  SETTABLEKS R32 R31 K34 ["eventName"]
  SETTABLEKS R18 R31 K35 ["backends"]
  LOADK R32 K69 ["User stop generation event with request ID."]
  SETTABLEKS R32 R31 K36 ["description"]
  NEWTABLE R32 0 3
  LOADN R33 25
  LOADN R34 8
  LOADN R35 7
  SETLIST R32 R33 3 [1]
  SETTABLEKS R32 R31 K37 ["lastUpdated"]
  CALL R30 1 1
  GETIMPORT R31 K28 [table.freeze]
  DUPTABLE R32 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R33 K70 ["CAPToolStarted"]
  SETTABLEKS R33 R32 K34 ["eventName"]
  SETTABLEKS R18 R32 K35 ["backends"]
  LOADK R33 K71 ["Tool invocation started event with request ID and tool name."]
  SETTABLEKS R33 R32 K36 ["description"]
  NEWTABLE R33 0 3
  LOADN R34 25
  LOADN R35 8
  LOADN R36 7
  SETLIST R33 R34 3 [1]
  SETTABLEKS R33 R32 K37 ["lastUpdated"]
  CALL R31 1 1
  GETIMPORT R32 K28 [table.freeze]
  DUPTABLE R33 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R34 K72 ["CAPToolConfirmationShown"]
  SETTABLEKS R34 R33 K34 ["eventName"]
  SETTABLEKS R18 R33 K35 ["backends"]
  LOADK R34 K73 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
  SETTABLEKS R34 R33 K36 ["description"]
  NEWTABLE R34 0 3
  LOADN R35 25
  LOADN R36 9
  LOADN R37 19
  SETLIST R34 R35 3 [1]
  SETTABLEKS R34 R33 K37 ["lastUpdated"]
  CALL R32 1 1
  GETIMPORT R33 K28 [table.freeze]
  DUPTABLE R34 K38 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R35 K74 ["CAPToolConfirmationResult"]
  SETTABLEKS R35 R34 K34 ["eventName"]
  SETTABLEKS R18 R34 K35 ["backends"]
  LOADK R35 K75 ["Tool confirmation dialog result event with request ID and user choice."]
  SETTABLEKS R35 R34 K36 ["description"]
  NEWTABLE R35 0 3
  LOADN R36 25
  LOADN R37 9
  LOADN R38 19
  SETLIST R35 R36 3 [1]
  SETTABLEKS R35 R34 K37 ["lastUpdated"]
  CALL R33 1 1
  DUPCLOSURE R34 K76 [PROTO_3]
  CAPTURE VAL R14
  DUPCLOSURE R35 K77 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R1
  DUPCLOSURE R36 K78 [PROTO_5]
  DUPCLOSURE R37 K79 [PROTO_6]
  CAPTURE VAL R3
  DUPCLOSURE R38 K80 [PROTO_20]
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R27
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R26
  CAPTURE VAL R34
  CAPTURE VAL R35
  RETURN R38 1
