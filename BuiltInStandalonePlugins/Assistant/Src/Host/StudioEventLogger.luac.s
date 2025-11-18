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
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["get"]
  CALL R0 1 1
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLE R1 R0 R2
  JUMPIFNOTEQKNIL R1 [+3]
  GETTABLEKS R1 R0 K1 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R2
  RETURN R2 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K2 [{"experimentationGroup"}]
  GETUPVAL R5 1
  NAMECALL R5 R5 K3 ["get"]
  CALL R5 1 1
  JUMPIFNOTEQKNIL R5 [+3]
  LOADNIL R4
  JUMP [+16]
  GETUPVAL R7 2
  GETTABLE R6 R5 R7
  JUMPIFNOTEQKNIL R6 [+3]
  GETTABLEKS R6 R5 K4 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R6 [+3]
  LOADNIL R4
  JUMP [+6]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  MOVE R4 R7
  SETTABLEKS R4 R3 K1 ["experimentationGroup"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+45]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  NEWTABLE R6 0 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K5 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K6 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K9 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K4 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  JUMP [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  CALL R1 2 0
  DUPTABLE R1 K14 [{"requestId", "conversationId", "message", "role"}]
  GETTABLEKS R2 R0 K15 ["messageGuid"]
  SETTABLEKS R2 R1 K10 ["requestId"]
  GETTABLEKS R2 R0 K11 ["conversationId"]
  SETTABLEKS R2 R1 K11 ["conversationId"]
  GETTABLEKS R2 R0 K12 ["message"]
  SETTABLEKS R2 R1 K12 ["message"]
  LOADK R2 K16 ["MCPUser"]
  SETTABLEKS R2 R1 K13 ["role"]
  GETUPVAL R2 6
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K17 ["model"]
  SETTABLEKS R2 R1 K17 ["model"]
  LOADNIL R2
  GETUPVAL R3 7
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K18 ["assign"]
  MOVE R3 R1
  DUPTABLE R4 K20 [{"timestampMilliseconds"}]
  GETIMPORT R6 K23 [DateTime.now]
  CALL R6 0 1
  GETTABLEKS R5 R6 K24 ["UnixTimestampMillis"]
  SETTABLEKS R5 R4 K19 ["timestampMilliseconds"]
  CALL R2 2 1
  JUMP [+1]
  MOVE R2 R1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K25 ["logEvent"]
  GETUPVAL R4 8
  DUPTABLE R5 K27 [{"customFields", "standardizedFields"}]
  SETTABLEKS R2 R5 K1 ["customFields"]
  NEWTABLE R7 0 0
  GETUPVAL R11 9
  GETTABLEKS R8 R11 K28 ["StandardizedFields"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  FASTCALL2 TABLE_INSERT R7 R12 [+5]
  MOVE R14 R7
  MOVE R15 R12
  GETIMPORT R13 K31 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-8]
  FASTCALL2K TABLE_INSERT R7 K32 [+5]
  MOVE R9 R7
  LOADK R10 K32 ["addSessionInfo"]
  GETIMPORT R8 K31 [table.insert]
  CALL R8 2 0
  MOVE R6 R7
  SETTABLEKS R6 R5 K26 ["standardizedFields"]
  CALL R3 2 0
  GETUPVAL R3 10
  JUMPIFNOT R3 [+10]
  GETUPVAL R3 10
  LOADK R5 K33 ["user_message_sent"]
  DUPTABLE R6 K34 [{"requestId"}]
  GETTABLEKS R7 R0 K15 ["messageGuid"]
  SETTABLEKS R7 R6 K10 ["requestId"]
  NAMECALL R3 R3 K35 ["LogEventAsync"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
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

PROTO_11:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  DUPTABLE R2 K1 [{"provider"}]
  SETTABLEKS R0 R2 K0 ["provider"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K4 [{"timestampMilliseconds"}]
  GETIMPORT R7 K7 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K8 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K3 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+4]
  DUPTABLE R2 K1 [{"provider"}]
  SETTABLEKS R0 R2 K0 ["provider"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["logEvent"]
  GETUPVAL R3 3
  DUPTABLE R4 K12 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K10 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 4
  GETTABLEKS R7 R10 K13 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K16 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K17 [+5]
  MOVE R8 R6
  LOADK R9 K17 ["addSessionInfo"]
  GETIMPORT R7 K16 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K11 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+46]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  DUPTABLE R6 K4 [{"errorType"}]
  SETTABLEKS R0 R6 K3 ["errorType"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K7 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K8 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K11 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K6 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  DUPTABLE R5 K4 [{"errorType"}]
  SETTABLEKS R0 R5 K3 ["errorType"]
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+45]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  NEWTABLE R6 0 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K5 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K6 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K9 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K4 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  JUMP [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  CALL R1 2 0
  LOADNIL R1
  GETUPVAL R2 6
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K12 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K13 ["messageGuid"]
  SETTABLEKS R3 R2 K10 ["requestId"]
  GETTABLEKS R3 R0 K11 ["conversationId"]
  SETTABLEKS R3 R2 K11 ["conversationId"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K14 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K16 [{"timestampMilliseconds"}]
  GETIMPORT R7 K19 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K20 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K15 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K12 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K13 ["messageGuid"]
  SETTABLEKS R3 R2 K10 ["requestId"]
  GETTABLEKS R3 R0 K11 ["conversationId"]
  SETTABLEKS R3 R2 K11 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["logEvent"]
  GETUPVAL R3 7
  DUPTABLE R4 K23 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K1 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 8
  GETTABLEKS R7 R10 K24 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K27 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K28 [+5]
  MOVE R8 R6
  LOADK R9 K28 ["addSessionInfo"]
  GETIMPORT R7 K27 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K22 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 9
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 9
  LOADK R4 K29 ["thumbs_up"]
  DUPTABLE R5 K30 [{"requestId"}]
  GETTABLEKS R6 R0 K13 ["messageGuid"]
  SETTABLEKS R6 R5 K10 ["requestId"]
  NAMECALL R2 R2 K31 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+45]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  DUPTABLE R4 K2 [{"customFields"}]
  NEWTABLE R6 0 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K5 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K6 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K9 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K4 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  JUMP [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logCounter"]
  GETUPVAL R2 2
  LOADN R3 1
  CALL R1 2 0
  LOADNIL R1
  GETUPVAL R2 6
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R2 K12 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K13 ["messageGuid"]
  SETTABLEKS R3 R2 K10 ["requestId"]
  GETTABLEKS R3 R0 K11 ["conversationId"]
  SETTABLEKS R3 R2 K11 ["conversationId"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K14 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K16 [{"timestampMilliseconds"}]
  GETIMPORT R7 K19 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K20 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K15 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+10]
  DUPTABLE R2 K12 [{"requestId", "conversationId"}]
  GETTABLEKS R3 R0 K13 ["messageGuid"]
  SETTABLEKS R3 R2 K10 ["requestId"]
  GETTABLEKS R3 R0 K11 ["conversationId"]
  SETTABLEKS R3 R2 K11 ["conversationId"]
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["logEvent"]
  GETUPVAL R3 7
  DUPTABLE R4 K23 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K1 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 8
  GETTABLEKS R7 R10 K24 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K27 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K28 [+5]
  MOVE R8 R6
  LOADK R9 K28 ["addSessionInfo"]
  GETIMPORT R7 K27 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K22 ["standardizedFields"]
  CALL R2 2 0
  GETUPVAL R2 9
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 9
  LOADK R4 K29 ["thumbs_down"]
  DUPTABLE R5 K30 [{"requestId"}]
  GETTABLEKS R6 R0 K13 ["messageGuid"]
  SETTABLEKS R6 R5 K10 ["requestId"]
  NAMECALL R2 R2 K31 ["LogEventAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+45]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 2
  MOVE R3 R0
  DUPTABLE R4 K2 [{"customFields"}]
  NEWTABLE R6 0 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K5 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K6 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K9 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K4 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K1 ["customFields"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["logEvent"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"customFields"}]
  DUPTABLE R4 K4 [{"markdown"}]
  SETTABLEKS R0 R4 K3 ["markdown"]
  SETTABLEKS R4 R3 K1 ["customFields"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
  DUPTABLE R2 K8 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime"}]
  GETTABLEKS R3 R0 K9 ["messageGuid"]
  SETTABLEKS R3 R2 K0 ["requestId"]
  GETTABLEKS R3 R0 K1 ["toolId"]
  SETTABLEKS R3 R2 K1 ["toolId"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K2 ["toolName"]
  GETTABLEKS R3 R0 K2 ["toolName"]
  SETTABLEKS R3 R2 K3 ["toolType"]
  GETTABLEKS R3 R0 K4 ["isError"]
  SETTABLEKS R3 R2 K4 ["isError"]
  GETTABLEKS R3 R0 K5 ["startTime"]
  SETTABLEKS R3 R2 K5 ["startTime"]
  GETTABLEKS R3 R0 K6 ["startTimeAfterConfirmation"]
  SETTABLEKS R3 R2 K6 ["startTimeAfterConfirmation"]
  GETTABLEKS R3 R0 K7 ["endTime"]
  SETTABLEKS R3 R2 K7 ["endTime"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K12 [{"timestampMilliseconds"}]
  GETIMPORT R7 K15 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K16 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K11 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K17 ["logEvent"]
  GETUPVAL R3 2
  DUPTABLE R4 K20 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K18 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 3
  GETTABLEKS R7 R10 K21 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K24 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K25 [+5]
  MOVE R8 R6
  LOADK R9 K25 ["addSessionInfo"]
  GETIMPORT R7 K24 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K19 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+49]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K1 ["requestJourneyDuration"]
  DUPTABLE R4 K3 [{"customFields"}]
  DUPTABLE R6 K5 [{"requestId"}]
  GETTABLEKS R7 R0 K6 ["requestEndReason"]
  SETTABLEKS R7 R6 K4 ["requestId"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["join"]
  MOVE R8 R6
  DUPTABLE R9 K9 [{"experimentationGroup"}]
  GETUPVAL R11 4
  NAMECALL R11 R11 K10 ["get"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+3]
  LOADNIL R10
  JUMP [+16]
  GETUPVAL R13 5
  GETTABLE R12 R11 R13
  JUMPIFNOTEQKNIL R12 [+3]
  GETTABLEKS R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R12 [+3]
  LOADNIL R10
  JUMP [+6]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K13 [tostring]
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R10 R9 K8 ["experimentationGroup"]
  CALL R7 2 1
  MOVE R5 R7
  SETTABLEKS R5 R4 K2 ["customFields"]
  CALL R1 3 0
  JUMP [+15]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["logStat"]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K1 ["requestJourneyDuration"]
  DUPTABLE R4 K3 [{"customFields"}]
  DUPTABLE R5 K5 [{"requestId"}]
  GETTABLEKS R6 R0 K6 ["requestEndReason"]
  SETTABLEKS R6 R5 K4 ["requestId"]
  SETTABLEKS R5 R4 K2 ["customFields"]
  CALL R1 3 0
  DUPTABLE R2 K16 [{"requestId", "conversationId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
  GETTABLEKS R3 R0 K17 ["messageGuid"]
  SETTABLEKS R3 R2 K4 ["requestId"]
  GETTABLEKS R3 R0 K14 ["conversationId"]
  SETTABLEKS R3 R2 K14 ["conversationId"]
  GETTABLEKS R3 R0 K6 ["requestEndReason"]
  SETTABLEKS R3 R2 K6 ["requestEndReason"]
  GETTABLEKS R3 R0 K1 ["requestJourneyDuration"]
  SETTABLEKS R3 R2 K1 ["requestJourneyDuration"]
  GETTABLEKS R3 R0 K15 ["message"]
  SETTABLEKS R3 R2 K15 ["message"]
  GETUPVAL R4 4
  NAMECALL R4 R4 K10 ["get"]
  CALL R4 1 1
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R3
  JUMP [+16]
  GETUPVAL R6 5
  GETTABLE R5 R4 R6
  JUMPIFNOTEQKNIL R5 [+3]
  GETTABLEKS R5 R4 K11 ["generatedExperimentVariantDistributionVariable"]
  JUMPIFNOTEQKNIL R5 [+3]
  LOADNIL R3
  JUMP [+6]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K13 [tostring]
  CALL R6 1 1
  MOVE R3 R6
  SETTABLEKS R3 R2 K8 ["experimentationGroup"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K18 ["assign"]
  MOVE R4 R2
  DUPTABLE R5 K20 [{"timestampMilliseconds"}]
  GETIMPORT R7 K23 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K24 ["UnixTimestampMillis"]
  SETTABLEKS R6 R5 K19 ["timestampMilliseconds"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K25 ["logEvent"]
  GETUPVAL R3 6
  DUPTABLE R4 K27 [{"customFields", "standardizedFields"}]
  SETTABLEKS R1 R4 K2 ["customFields"]
  NEWTABLE R6 0 0
  GETUPVAL R10 7
  GETTABLEKS R7 R10 K28 ["StandardizedFields"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K31 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  FASTCALL2K TABLE_INSERT R6 K32 [+5]
  MOVE R8 R6
  LOADK R9 K32 ["addSessionInfo"]
  GETIMPORT R7 K31 [table.insert]
  CALL R7 2 0
  MOVE R5 R6
  SETTABLEKS R5 R4 K26 ["standardizedFields"]
  CALL R2 2 0
  RETURN R0 0

PROTO_24:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  DUPCLOSURE R2 K0 [PROTO_10]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  DUPCLOSURE R3 K1 [PROTO_11]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U9
  DUPCLOSURE R4 K2 [PROTO_12]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U11
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U12
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U13
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  NEWCLOSURE R6 P5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U14
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U15
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  DUPCLOSURE R7 K3 [PROTO_15]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U16
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  DUPCLOSURE R8 K4 [PROTO_16]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U17
  NEWCLOSURE R9 P8
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U18
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  DUPCLOSURE R10 K5 [PROTO_18]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U19
  CAPTURE UPVAL U9
  DUPCLOSURE R11 K6 [PROTO_19]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U20
  CAPTURE UPVAL U9
  DUPCLOSURE R12 K7 [PROTO_20]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U21
  CAPTURE UPVAL U9
  DUPCLOSURE R13 K8 [PROTO_21]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U22
  CAPTURE UPVAL U9
  DUPCLOSURE R14 K9 [PROTO_22]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U23
  CAPTURE UPVAL U9
  DUPCLOSURE R15 K10 [PROTO_23]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U24
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U25
  CAPTURE UPVAL U9
  DUPTABLE R16 K28 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "getMessageGuid", "createMessageGuid"}]
  SETTABLEKS R1 R16 K11 ["logUserMessageSent"]
  SETTABLEKS R2 R16 K12 ["logAssistantMessageSent"]
  SETTABLEKS R3 R16 K13 ["logApiKeyAdded"]
  SETTABLEKS R4 R16 K14 ["logErrorEvent"]
  SETTABLEKS R5 R16 K15 ["logThumbsUp"]
  SETTABLEKS R6 R16 K16 ["logThumbsDown"]
  SETTABLEKS R7 R16 K17 ["logInitialResponseLatency"]
  SETTABLEKS R8 R16 K18 ["logMarkdownError"]
  SETTABLEKS R9 R16 K19 ["logRetry"]
  SETTABLEKS R10 R16 K20 ["logStopGeneration"]
  SETTABLEKS R11 R16 K21 ["logToolStarted"]
  SETTABLEKS R12 R16 K22 ["logToolEnded"]
  SETTABLEKS R13 R16 K23 ["logToolConfirmationShown"]
  SETTABLEKS R14 R16 K24 ["logToolConfirmationResult"]
  SETTABLEKS R15 R16 K25 ["logRequestJourney"]
  GETUPVAL R17 26
  SETTABLEKS R17 R16 K26 ["getMessageGuid"]
  GETUPVAL R17 27
  SETTABLEKS R17 R16 K27 ["createMessageGuid"]
  RETURN R16 1

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
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["IXPService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["AssistantUI"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["Telemetry"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K17 ["TelemetryProtocol"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K18 ["Flags"]
  GETTABLEKS R8 R9 K19 ["FFlagAssistantSendExperimentationInfoGrafana"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  GETTABLEKS R9 R10 K20 ["FFlagLogEventTimestampAssistant"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K21 ["FFlagMCPAssistantExternalAPIKey"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K22 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K18 ["Flags"]
  GETTABLEKS R12 R13 K23 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K18 ["Flags"]
  GETTABLEKS R13 R14 K24 ["FStringAssistantGroupNameKey"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K18 ["Flags"]
  GETTABLEKS R14 R15 K25 ["FStringNewAssistantExperimentLayer"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K15 ["Util"]
  GETTABLEKS R15 R16 K26 ["ExperimentCache"]
  CALL R14 1 1
  NEWTABLE R15 0 0
  DUPCLOSURE R16 K27 [PROTO_0]
  CAPTURE VAL R6
  DUPCLOSURE R17 K28 [PROTO_1]
  DUPCLOSURE R18 K29 [PROTO_2]
  CAPTURE VAL R5
  GETIMPORT R19 K32 [table.freeze]
  NEWTABLE R21 0 0
  GETTABLEKS R25 R5 K33 ["Backends"]
  GETTABLEKS R24 R25 K34 ["EventIngest"]
  FASTCALL2 TABLE_INSERT R21 R24 [+4]
  MOVE R23 R21
  GETIMPORT R22 K36 [table.insert]
  CALL R22 2 0
  GETTABLEKS R25 R5 K33 ["Backends"]
  GETTABLEKS R24 R25 K37 ["Points"]
  FASTCALL2 TABLE_INSERT R21 R24 [+4]
  MOVE R23 R21
  GETIMPORT R22 K36 [table.insert]
  CALL R22 2 0
  MOVE R20 R21
  CALL R19 1 1
  GETIMPORT R20 K32 [table.freeze]
  DUPTABLE R21 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R23 K43 ["%*%*"]
  LOADK R25 K44 ["StudioAssistant"]
  LOADK R26 K45 ["UserMessageSent"]
  NAMECALL R23 R23 K46 ["format"]
  CALL R23 3 1
  MOVE R22 R23
  SETTABLEKS R22 R21 K38 ["eventName"]
  NEWTABLE R22 0 1
  GETTABLEKS R24 R5 K33 ["Backends"]
  GETTABLEKS R23 R24 K47 ["RobloxTelemetryCounter"]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K39 ["backends"]
  LOADK R22 K48 ["Incrementing count of user messages sent."]
  SETTABLEKS R22 R21 K40 ["description"]
  NEWTABLE R22 0 3
  LOADN R23 25
  LOADN R24 7
  LOADN R25 21
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K41 ["lastUpdated"]
  CALL R20 1 1
  GETIMPORT R21 K32 [table.freeze]
  DUPTABLE R22 K50 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R23 K51 ["CAPMessageSent"]
  SETTABLEKS R23 R22 K38 ["eventName"]
  SETTABLEKS R19 R22 K39 ["backends"]
  LOADK R23 K52 ["User message sent event with request ID."]
  SETTABLEKS R23 R22 K40 ["description"]
  MOVE R23 R11
  CALL R23 0 1
  SETTABLEKS R23 R22 K49 ["throttlingPercentage"]
  NEWTABLE R23 0 3
  LOADN R24 25
  LOADN R25 7
  LOADN R26 25
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K41 ["lastUpdated"]
  CALL R21 1 1
  GETIMPORT R22 K32 [table.freeze]
  DUPTABLE R23 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R24 K53 ["CAPAPIKeyAdded"]
  SETTABLEKS R24 R23 K38 ["eventName"]
  SETTABLEKS R19 R23 K39 ["backends"]
  LOADK R24 K54 ["User added an API key for an LLM provider."]
  SETTABLEKS R24 R23 K40 ["description"]
  NEWTABLE R24 0 3
  LOADN R25 25
  LOADN R26 11
  LOADN R27 4
  SETLIST R24 R25 3 [1]
  SETTABLEKS R24 R23 K41 ["lastUpdated"]
  CALL R22 1 1
  GETIMPORT R23 K32 [table.freeze]
  DUPTABLE R24 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R25 K55 ["CAPUserFeedbackThumbsUp"]
  SETTABLEKS R25 R24 K38 ["eventName"]
  SETTABLEKS R19 R24 K39 ["backends"]
  LOADK R25 K56 ["User feedback thumbs up event with message context."]
  SETTABLEKS R25 R24 K40 ["description"]
  NEWTABLE R25 0 3
  LOADN R26 25
  LOADN R27 7
  LOADN R28 25
  SETLIST R25 R26 3 [1]
  SETTABLEKS R25 R24 K41 ["lastUpdated"]
  CALL R23 1 1
  GETIMPORT R24 K32 [table.freeze]
  DUPTABLE R25 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R26 K57 ["CAPUserFeedbackThumbsDown"]
  SETTABLEKS R26 R25 K38 ["eventName"]
  SETTABLEKS R19 R25 K39 ["backends"]
  LOADK R26 K58 ["User feedback thumbs down event with message context."]
  SETTABLEKS R26 R25 K40 ["description"]
  NEWTABLE R26 0 3
  LOADN R27 25
  LOADN R28 7
  LOADN R29 25
  SETLIST R26 R27 3 [1]
  SETTABLEKS R26 R25 K41 ["lastUpdated"]
  CALL R24 1 1
  GETIMPORT R25 K32 [table.freeze]
  DUPTABLE R26 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R28 K43 ["%*%*"]
  LOADK R30 K44 ["StudioAssistant"]
  LOADK R31 K59 ["ThumbsUp"]
  NAMECALL R28 R28 K46 ["format"]
  CALL R28 3 1
  MOVE R27 R28
  SETTABLEKS R27 R26 K38 ["eventName"]
  NEWTABLE R27 0 1
  GETTABLEKS R29 R5 K33 ["Backends"]
  GETTABLEKS R28 R29 K47 ["RobloxTelemetryCounter"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K39 ["backends"]
  LOADK R27 K60 ["Incrementing count of thumbs up events."]
  SETTABLEKS R27 R26 K40 ["description"]
  NEWTABLE R27 0 3
  LOADN R28 25
  LOADN R29 7
  LOADN R30 21
  SETLIST R27 R28 3 [1]
  SETTABLEKS R27 R26 K41 ["lastUpdated"]
  CALL R25 1 1
  GETIMPORT R26 K32 [table.freeze]
  DUPTABLE R27 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R29 K43 ["%*%*"]
  LOADK R31 K44 ["StudioAssistant"]
  LOADK R32 K61 ["ThumbsDown"]
  NAMECALL R29 R29 K46 ["format"]
  CALL R29 3 1
  MOVE R28 R29
  SETTABLEKS R28 R27 K38 ["eventName"]
  NEWTABLE R28 0 1
  GETTABLEKS R30 R5 K33 ["Backends"]
  GETTABLEKS R29 R30 K47 ["RobloxTelemetryCounter"]
  SETLIST R28 R29 1 [1]
  SETTABLEKS R28 R27 K39 ["backends"]
  LOADK R28 K62 ["Incrementing count of thumbs down events."]
  SETTABLEKS R28 R27 K40 ["description"]
  NEWTABLE R28 0 3
  LOADN R29 25
  LOADN R30 7
  LOADN R31 21
  SETLIST R28 R29 3 [1]
  SETTABLEKS R28 R27 K41 ["lastUpdated"]
  CALL R26 1 1
  GETIMPORT R27 K32 [table.freeze]
  DUPTABLE R28 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R30 K43 ["%*%*"]
  LOADK R32 K44 ["StudioAssistant"]
  LOADK R33 K63 ["InitialResponseLatency"]
  NAMECALL R30 R30 K46 ["format"]
  CALL R30 3 1
  MOVE R29 R30
  SETTABLEKS R29 R28 K38 ["eventName"]
  NEWTABLE R29 0 1
  GETTABLEKS R31 R5 K33 ["Backends"]
  GETTABLEKS R30 R31 K64 ["RobloxTelemetryStat"]
  SETLIST R29 R30 1 [1]
  SETTABLEKS R29 R28 K39 ["backends"]
  LOADK R29 K65 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
  SETTABLEKS R29 R28 K40 ["description"]
  NEWTABLE R29 0 3
  LOADN R30 25
  LOADN R31 7
  LOADN R32 21
  SETLIST R29 R30 3 [1]
  SETTABLEKS R29 R28 K41 ["lastUpdated"]
  CALL R27 1 1
  GETIMPORT R28 K32 [table.freeze]
  DUPTABLE R29 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R31 K43 ["%*%*"]
  LOADK R33 K44 ["StudioAssistant"]
  LOADK R34 K66 ["RequestJourney"]
  NAMECALL R31 R31 K46 ["format"]
  CALL R31 3 1
  MOVE R30 R31
  SETTABLEKS R30 R29 K38 ["eventName"]
  NEWTABLE R30 0 1
  GETTABLEKS R32 R5 K33 ["Backends"]
  GETTABLEKS R31 R32 K64 ["RobloxTelemetryStat"]
  SETLIST R30 R31 1 [1]
  SETTABLEKS R30 R29 K39 ["backends"]
  LOADK R30 K67 ["User request journey duration in seconds. Time between sending first message to request ended."]
  SETTABLEKS R30 R29 K40 ["description"]
  NEWTABLE R30 0 3
  LOADN R31 25
  LOADN R32 10
  LOADN R33 22
  SETLIST R30 R31 3 [1]
  SETTABLEKS R30 R29 K41 ["lastUpdated"]
  CALL R28 1 1
  GETIMPORT R29 K32 [table.freeze]
  DUPTABLE R30 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R31 K68 ["CAPRequestJourney"]
  SETTABLEKS R31 R30 K38 ["eventName"]
  SETTABLEKS R19 R30 K39 ["backends"]
  LOADK R31 K69 ["User request journey detail."]
  SETTABLEKS R31 R30 K40 ["description"]
  NEWTABLE R31 0 3
  LOADN R32 25
  LOADN R33 11
  LOADN R34 1
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K41 ["lastUpdated"]
  CALL R29 1 1
  GETIMPORT R30 K32 [table.freeze]
  DUPTABLE R31 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R33 K43 ["%*%*"]
  LOADK R35 K44 ["StudioAssistant"]
  LOADK R36 K70 ["ErrorEvent"]
  NAMECALL R33 R33 K46 ["format"]
  CALL R33 3 1
  MOVE R32 R33
  SETTABLEKS R32 R31 K38 ["eventName"]
  NEWTABLE R32 0 1
  GETTABLEKS R34 R5 K33 ["Backends"]
  GETTABLEKS R33 R34 K47 ["RobloxTelemetryCounter"]
  SETLIST R32 R33 1 [1]
  SETTABLEKS R32 R31 K39 ["backends"]
  LOADK R32 K71 ["Incrementing count of error events with error type attached."]
  SETTABLEKS R32 R31 K40 ["description"]
  NEWTABLE R32 0 3
  LOADN R33 25
  LOADN R34 7
  LOADN R35 21
  SETLIST R32 R33 3 [1]
  SETTABLEKS R32 R31 K41 ["lastUpdated"]
  CALL R30 1 1
  GETIMPORT R31 K32 [table.freeze]
  DUPTABLE R32 K50 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
  LOADK R34 K43 ["%*%*"]
  LOADK R36 K44 ["StudioAssistant"]
  LOADK R37 K72 ["MarkdownError"]
  NAMECALL R34 R34 K46 ["format"]
  CALL R34 3 1
  MOVE R33 R34
  SETTABLEKS R33 R32 K38 ["eventName"]
  NEWTABLE R33 0 1
  GETTABLEKS R35 R5 K33 ["Backends"]
  GETTABLEKS R34 R35 K37 ["Points"]
  SETLIST R33 R34 1 [1]
  SETTABLEKS R33 R32 K39 ["backends"]
  LOADK R33 K73 ["Collection of markdown error events, with markdown attached."]
  SETTABLEKS R33 R32 K40 ["description"]
  MOVE R33 R10
  CALL R33 0 1
  SETTABLEKS R33 R32 K49 ["throttlingPercentage"]
  NEWTABLE R33 0 3
  LOADN R34 25
  LOADN R35 7
  LOADN R36 21
  SETLIST R33 R34 3 [1]
  SETTABLEKS R33 R32 K41 ["lastUpdated"]
  CALL R31 1 1
  GETIMPORT R32 K32 [table.freeze]
  DUPTABLE R33 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R34 K74 ["CAPMessageResubmitted"]
  SETTABLEKS R34 R33 K38 ["eventName"]
  SETTABLEKS R19 R33 K39 ["backends"]
  LOADK R34 K75 ["User message retry/resubmit event with request ID."]
  SETTABLEKS R34 R33 K40 ["description"]
  NEWTABLE R34 0 3
  LOADN R35 25
  LOADN R36 8
  LOADN R37 7
  SETLIST R34 R35 3 [1]
  SETTABLEKS R34 R33 K41 ["lastUpdated"]
  CALL R32 1 1
  GETIMPORT R33 K32 [table.freeze]
  DUPTABLE R34 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R35 K76 ["CAPStopGeneration"]
  SETTABLEKS R35 R34 K38 ["eventName"]
  SETTABLEKS R19 R34 K39 ["backends"]
  LOADK R35 K77 ["User stop generation event with request ID."]
  SETTABLEKS R35 R34 K40 ["description"]
  NEWTABLE R35 0 3
  LOADN R36 25
  LOADN R37 8
  LOADN R38 7
  SETLIST R35 R36 3 [1]
  SETTABLEKS R35 R34 K41 ["lastUpdated"]
  CALL R33 1 1
  GETIMPORT R34 K32 [table.freeze]
  DUPTABLE R35 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R36 K78 ["CAPToolEnded"]
  SETTABLEKS R36 R35 K38 ["eventName"]
  SETTABLEKS R19 R35 K39 ["backends"]
  LOADK R36 K79 ["Tool invocation ended event with request ID and tool name"]
  SETTABLEKS R36 R35 K40 ["description"]
  NEWTABLE R36 0 3
  LOADN R37 25
  LOADN R38 7
  LOADN R39 21
  SETLIST R36 R37 3 [1]
  SETTABLEKS R36 R35 K41 ["lastUpdated"]
  CALL R34 1 1
  GETIMPORT R35 K32 [table.freeze]
  DUPTABLE R36 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R37 K80 ["CAPToolStarted"]
  SETTABLEKS R37 R36 K38 ["eventName"]
  SETTABLEKS R19 R36 K39 ["backends"]
  LOADK R37 K81 ["Tool invocation started event with request ID and tool name."]
  SETTABLEKS R37 R36 K40 ["description"]
  NEWTABLE R37 0 3
  LOADN R38 25
  LOADN R39 8
  LOADN R40 7
  SETLIST R37 R38 3 [1]
  SETTABLEKS R37 R36 K41 ["lastUpdated"]
  CALL R35 1 1
  GETIMPORT R36 K32 [table.freeze]
  DUPTABLE R37 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R38 K82 ["CAPToolConfirmationShown"]
  SETTABLEKS R38 R37 K38 ["eventName"]
  SETTABLEKS R19 R37 K39 ["backends"]
  LOADK R38 K83 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
  SETTABLEKS R38 R37 K40 ["description"]
  NEWTABLE R38 0 3
  LOADN R39 25
  LOADN R40 9
  LOADN R41 19
  SETLIST R38 R39 3 [1]
  SETTABLEKS R38 R37 K41 ["lastUpdated"]
  CALL R36 1 1
  GETIMPORT R37 K32 [table.freeze]
  DUPTABLE R38 K42 [{"eventName", "backends", "description", "lastUpdated"}]
  LOADK R39 K84 ["CAPToolConfirmationResult"]
  SETTABLEKS R39 R38 K38 ["eventName"]
  SETTABLEKS R19 R38 K39 ["backends"]
  LOADK R39 K85 ["Tool confirmation dialog result event with request ID and user choice."]
  SETTABLEKS R39 R38 K40 ["description"]
  NEWTABLE R39 0 3
  LOADN R40 25
  LOADN R41 9
  LOADN R42 19
  SETLIST R39 R40 3 [1]
  SETTABLEKS R39 R38 K41 ["lastUpdated"]
  CALL R37 1 1
  DUPCLOSURE R38 K86 [PROTO_3]
  CAPTURE VAL R15
  DUPCLOSURE R39 K87 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R1
  DUPCLOSURE R40 K88 [PROTO_5]
  DUPCLOSURE R41 K89 [PROTO_6]
  CAPTURE VAL R4
  MOVE R42 R12
  CALL R42 0 1
  GETTABLEKS R43 R14 K90 ["new"]
  MOVE R44 R2
  MOVE R45 R13
  CALL R45 0 -1
  CALL R43 -1 1
  DUPCLOSURE R44 K91 [PROTO_7]
  CAPTURE VAL R43
  CAPTURE VAL R42
  DUPCLOSURE R45 K92 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R43
  CAPTURE VAL R42
  DUPCLOSURE R46 K93 [PROTO_24]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R43
  CAPTURE VAL R42
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R30
  CAPTURE VAL R25
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R24
  CAPTURE VAL R27
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R35
  CAPTURE VAL R34
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R38
  CAPTURE VAL R39
  RETURN R46 1
