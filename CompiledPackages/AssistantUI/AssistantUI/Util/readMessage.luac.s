PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K2 [{"content"}]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K1 ["content"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["content"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 1

PROTO_1:
  GETTABLEKS R3 R0 K1 ["layoutOrder"]
  ORK R2 R3 K0 [0]
  GETTABLEKS R4 R1 K1 ["layoutOrder"]
  ORK R3 R4 K0 [0]
  JUMPIFEQ R2 R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+9]
  GETTABLEKS R6 R0 K2 ["priority"]
  GETTABLEKS R7 R1 K2 ["priority"]
  JUMPIFLT R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1
  JUMPIFLT R2 R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["message"]
  GETTABLEKS R1 R2 K1 ["content"]
  LENGTH R0 R1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+8]
  GETUPVAL R1 1
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R1 R2 [+3]
  GETIMPORT R0 K4 [table.insert]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["message"]
  GETTABLEKS R2 R3 K1 ["role"]
  JUMPIFEQ R2 R0 [+45]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["message"]
  GETTABLEKS R3 R4 K2 ["content"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+8]
  GETUPVAL R3 1
  GETUPVAL R4 0
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  DUPTABLE R2 K9 [{"message", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  DUPTABLE R3 K10 [{"content", "role"}]
  NEWTABLE R4 0 1
  GETTABLEKS R5 R1 K2 ["content"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K2 ["content"]
  SETTABLEKS R0 R3 K1 ["role"]
  SETTABLEKS R3 R2 K0 ["message"]
  GETTABLEKS R3 R1 K6 ["startEditTimestamp"]
  SETTABLEKS R3 R2 K6 ["startEditTimestamp"]
  GETTABLEKS R3 R1 K7 ["lastEditTimestamp"]
  SETTABLEKS R3 R2 K7 ["lastEditTimestamp"]
  GETTABLEKS R3 R1 K8 ["lastServerStreamId"]
  SETTABLEKS R3 R2 K8 ["lastServerStreamId"]
  SETUPVAL R2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["startEditTimestamp"]
  JUMPIFNOTEQKN R2 K11 [0] [+6]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K6 ["startEditTimestamp"]
  SETTABLEKS R3 R2 K6 ["startEditTimestamp"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K7 ["lastEditTimestamp"]
  SETTABLEKS R3 R2 K7 ["lastEditTimestamp"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K8 ["lastServerStreamId"]
  SETTABLEKS R3 R2 K8 ["lastServerStreamId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["message"]
  GETTABLEKS R3 R4 K2 ["content"]
  GETTABLEKS R4 R1 K2 ["content"]
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["contents"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["type"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Type"]
  JUMPIFNOTEQ R7 R8 [+42]
  GETTABLEKS R7 R6 K3 ["text"]
  JUMPIFEQKS R7 K4 [""] [+228]
  DUPTABLE R8 K5 [{"type", "text"}]
  LOADK R9 K3 ["text"]
  SETTABLEKS R9 R8 K1 ["type"]
  GETTABLEKS R9 R6 K3 ["text"]
  SETTABLEKS R9 R8 K3 ["text"]
  DUPTABLE R11 K12 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R8 R11 K6 ["content"]
  GETTABLEKS R12 R6 K13 ["LayoutOrder"]
  SETTABLEKS R12 R11 K7 ["layoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K8 ["priority"]
  GETTABLEKS R12 R6 K9 ["startEditTimestamp"]
  SETTABLEKS R12 R11 K9 ["startEditTimestamp"]
  GETTABLEKS R12 R6 K10 ["lastEditTimestamp"]
  SETTABLEKS R12 R11 K10 ["lastEditTimestamp"]
  GETTABLEKS R12 R6 K11 ["lastServerStreamId"]
  SETTABLEKS R12 R11 K11 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K16 [table.insert]
  CALL R9 2 0
  JUMP [+106]
  GETTABLEKS R7 R6 K1 ["type"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["Type"]
  JUMPIFNOTEQ R7 R8 [+50]
  GETTABLEKS R7 R6 K17 ["thinking"]
  JUMPIFNOTEQKS R7 K4 [""] [+5]
  GETTABLEKS R7 R6 K18 ["signature"]
  JUMPIFEQKS R7 K4 [""] [+176]
  DUPTABLE R7 K19 [{"type", "thinking", "signature"}]
  LOADK R8 K17 ["thinking"]
  SETTABLEKS R8 R7 K1 ["type"]
  GETTABLEKS R8 R6 K17 ["thinking"]
  SETTABLEKS R8 R7 K17 ["thinking"]
  GETTABLEKS R8 R6 K18 ["signature"]
  SETTABLEKS R8 R7 K18 ["signature"]
  DUPTABLE R10 K12 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R7 R10 K6 ["content"]
  GETTABLEKS R11 R6 K13 ["LayoutOrder"]
  SETTABLEKS R11 R10 K7 ["layoutOrder"]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["priority"]
  GETTABLEKS R11 R6 K9 ["startEditTimestamp"]
  SETTABLEKS R11 R10 K9 ["startEditTimestamp"]
  GETTABLEKS R11 R6 K10 ["lastEditTimestamp"]
  SETTABLEKS R11 R10 K10 ["lastEditTimestamp"]
  GETTABLEKS R11 R6 K11 ["lastServerStreamId"]
  SETTABLEKS R11 R10 K11 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K16 [table.insert]
  CALL R8 2 0
  JUMP [+50]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+47]
  GETTABLEKS R7 R6 K1 ["type"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["Type"]
  JUMPIFNOTEQ R7 R8 [+41]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K20 ["storeImage"]
  GETTABLEKS R8 R6 K21 ["imageContent"]
  CALL R7 1 1
  DUPTABLE R8 K5 [{"type", "text"}]
  LOADK R9 K3 ["text"]
  SETTABLEKS R9 R8 K1 ["type"]
  SETTABLEKS R7 R8 K3 ["text"]
  DUPTABLE R11 K12 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R8 R11 K6 ["content"]
  GETTABLEKS R12 R6 K13 ["LayoutOrder"]
  SETTABLEKS R12 R11 K7 ["layoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K8 ["priority"]
  GETTABLEKS R12 R6 K9 ["startEditTimestamp"]
  SETTABLEKS R12 R11 K9 ["startEditTimestamp"]
  GETTABLEKS R12 R6 K10 ["lastEditTimestamp"]
  SETTABLEKS R12 R11 K10 ["lastEditTimestamp"]
  GETTABLEKS R12 R6 K11 ["lastServerStreamId"]
  SETTABLEKS R12 R11 K11 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K16 [table.insert]
  CALL R9 2 0
  GETTABLEKS R7 R6 K22 ["toolUse"]
  JUMPIFNOT R7 [+30]
  DUPTABLE R9 K12 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R10 R6 K22 ["toolUse"]
  SETTABLEKS R10 R9 K6 ["content"]
  GETTABLEKS R10 R6 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K7 ["layoutOrder"]
  LOADN R10 2
  SETTABLEKS R10 R9 K8 ["priority"]
  GETTABLEKS R10 R6 K9 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K9 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K10 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K10 ["lastEditTimestamp"]
  GETTABLEKS R10 R6 K11 ["lastServerStreamId"]
  SETTABLEKS R10 R9 K11 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K16 [table.insert]
  CALL R7 2 0
  GETTABLEKS R7 R6 K23 ["toolResult"]
  JUMPIFNOT R7 [+48]
  DUPTABLE R9 K12 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R11 R6 K23 ["toolResult"]
  GETUPVAL R12 5
  CALL R12 0 1
  JUMPIFNOT R12 [+14]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K24 ["join"]
  MOVE R13 R11
  DUPTABLE R14 K25 [{"content"}]
  GETUPVAL R15 7
  GETTABLEKS R16 R11 K6 ["content"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K6 ["content"]
  CALL R12 2 1
  MOVE R10 R12
  JUMP [+1]
  MOVE R10 R11
  SETTABLEKS R10 R9 K6 ["content"]
  GETTABLEKS R10 R6 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K7 ["layoutOrder"]
  LOADN R10 3
  SETTABLEKS R10 R9 K8 ["priority"]
  GETTABLEKS R10 R6 K9 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K9 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K10 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K10 ["lastEditTimestamp"]
  GETTABLEKS R10 R6 K11 ["lastServerStreamId"]
  SETTABLEKS R10 R9 K11 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K16 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-239]
  GETIMPORT R2 K27 [table.sort]
  MOVE R3 R1
  GETUPVAL R4 8
  CALL R2 2 0
  NEWTABLE R2 0 0
  DUPTABLE R3 K29 [{"message", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  DUPTABLE R4 K31 [{"content", "role"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["content"]
  GETTABLEKS R5 R0 K30 ["role"]
  SETTABLEKS R5 R4 K30 ["role"]
  SETTABLEKS R4 R3 K28 ["message"]
  LOADN R4 0
  SETTABLEKS R4 R3 K9 ["startEditTimestamp"]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["lastEditTimestamp"]
  LOADK R4 K4 [""]
  SETTABLEKS R4 R3 K11 ["lastServerStreamId"]
  NEWCLOSURE R4 P0
  CAPTURE REF R3
  CAPTURE VAL R2
  NEWCLOSURE R5 P1
  CAPTURE REF R3
  CAPTURE VAL R2
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K6 ["content"]
  GETTABLEKS R12 R11 K1 ["type"]
  JUMPIFEQKS R12 K3 ["text"] [+5]
  GETTABLEKS R12 R11 K1 ["type"]
  JUMPIFNOTEQKS R12 K32 ["image"] [+7]
  MOVE R12 R5
  GETTABLEKS R13 R0 K30 ["role"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+33]
  GETTABLEKS R12 R11 K1 ["type"]
  JUMPIFNOTEQKS R12 K17 ["thinking"] [+6]
  MOVE R12 R5
  LOADK R13 K33 ["assistant"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+24]
  GETTABLEKS R12 R11 K1 ["type"]
  JUMPIFNOTEQKS R12 K34 ["tool_use"] [+6]
  MOVE R12 R5
  LOADK R13 K33 ["assistant"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+15]
  GETTABLEKS R12 R11 K1 ["type"]
  JUMPIFNOTEQKS R12 K35 ["tool_result"] [+6]
  MOVE R12 R5
  LOADK R13 K36 ["user"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+6]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K37 ["assertNever"]
  GETTABLEKS R13 R11 K1 ["type"]
  CALL R12 1 0
  FORGLOOP R6 2 [-50]
  GETTABLEKS R8 R3 K28 ["message"]
  GETTABLEKS R7 R8 K6 ["content"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+8]
  FASTCALL2 TABLE_INSERT R2 R3 [+5]
  MOVE R7 R2
  MOVE R8 R3
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  CLOSEUPVALS R3
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R10 R7 K0 ["message"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K3 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-9]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["ImageContentStore"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["ContentWidgets"]
  GETTABLEKS R4 R5 K12 ["ImageContentWidget"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Util"]
  GETTABLEKS R5 R6 K13 ["McpContentNormalizer"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Components"]
  GETTABLEKS R7 R8 K11 ["ContentWidgets"]
  GETTABLEKS R6 R7 K14 ["TextContentWidget"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Components"]
  GETTABLEKS R8 R9 K11 ["ContentWidgets"]
  GETTABLEKS R7 R8 K15 ["ThinkingContentWidget"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R0 K16 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K17 ["Flags"]
  GETTABLEKS R9 R10 K18 ["FFlagEnableAssistantInputImageAttachment"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K17 ["Flags"]
  GETTABLEKS R10 R11 K19 ["FFlagMCPContentNormalization"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K20 ["normalizeContentArray"]
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPCLOSURE R12 K22 [PROTO_1]
  DUPCLOSURE R13 K23 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R7
  DUPCLOSURE R14 K24 [PROTO_5]
  CAPTURE VAL R13
  DUPTABLE R15 K27 [{"readMessage", "readMessageWithTimestamp"}]
  SETTABLEKS R14 R15 K25 ["readMessage"]
  SETTABLEKS R13 R15 K26 ["readMessageWithTimestamp"]
  RETURN R15 1
