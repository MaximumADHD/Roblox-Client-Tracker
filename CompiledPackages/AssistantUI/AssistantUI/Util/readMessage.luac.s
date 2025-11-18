PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["readMessageWithTimestamp is only supported when FFlagAssistantLogRequestStop is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K3 ["contents"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K4 ["type"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Type"]
  JUMPIFNOTEQ R7 R8 [+42]
  GETTABLEKS R7 R6 K6 ["text"]
  JUMPIFEQKS R7 K7 [""] [+159]
  DUPTABLE R8 K8 [{"type", "text"}]
  LOADK R9 K6 ["text"]
  SETTABLEKS R9 R8 K4 ["type"]
  GETTABLEKS R9 R6 K6 ["text"]
  SETTABLEKS R9 R8 K6 ["text"]
  DUPTABLE R11 K15 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R8 R11 K9 ["content"]
  GETTABLEKS R12 R6 K16 ["LayoutOrder"]
  SETTABLEKS R12 R11 K10 ["layoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["priority"]
  GETTABLEKS R12 R6 K12 ["startEditTimestamp"]
  SETTABLEKS R12 R11 K12 ["startEditTimestamp"]
  GETTABLEKS R12 R6 K13 ["lastEditTimestamp"]
  SETTABLEKS R12 R11 K13 ["lastEditTimestamp"]
  GETTABLEKS R12 R6 K14 ["lastServerStreamId"]
  SETTABLEKS R12 R11 K14 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K19 [table.insert]
  CALL R9 2 0
  JUMP [+55]
  GETTABLEKS R7 R6 K4 ["type"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["Type"]
  JUMPIFNOTEQ R7 R8 [+49]
  GETTABLEKS R7 R6 K20 ["thinking"]
  JUMPIFNOTEQKS R7 K7 [""] [+5]
  GETTABLEKS R7 R6 K21 ["signature"]
  JUMPIFEQKS R7 K7 [""] [+107]
  DUPTABLE R7 K22 [{"type", "thinking", "signature"}]
  LOADK R8 K20 ["thinking"]
  SETTABLEKS R8 R7 K4 ["type"]
  GETTABLEKS R8 R6 K20 ["thinking"]
  SETTABLEKS R8 R7 K20 ["thinking"]
  GETTABLEKS R8 R6 K21 ["signature"]
  SETTABLEKS R8 R7 K21 ["signature"]
  DUPTABLE R10 K15 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R7 R10 K9 ["content"]
  GETTABLEKS R11 R6 K16 ["LayoutOrder"]
  SETTABLEKS R11 R10 K10 ["layoutOrder"]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["priority"]
  GETTABLEKS R11 R6 K12 ["startEditTimestamp"]
  SETTABLEKS R11 R10 K12 ["startEditTimestamp"]
  GETTABLEKS R11 R6 K13 ["lastEditTimestamp"]
  SETTABLEKS R11 R10 K13 ["lastEditTimestamp"]
  GETTABLEKS R11 R6 K14 ["lastServerStreamId"]
  SETTABLEKS R11 R10 K14 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K19 [table.insert]
  CALL R8 2 0
  GETTABLEKS R7 R6 K23 ["toolUse"]
  JUMPIFNOT R7 [+30]
  DUPTABLE R9 K15 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R10 R6 K23 ["toolUse"]
  SETTABLEKS R10 R9 K9 ["content"]
  GETTABLEKS R10 R6 K16 ["LayoutOrder"]
  SETTABLEKS R10 R9 K10 ["layoutOrder"]
  LOADN R10 2
  SETTABLEKS R10 R9 K11 ["priority"]
  GETTABLEKS R10 R6 K12 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K12 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K13 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K13 ["lastEditTimestamp"]
  GETTABLEKS R10 R6 K14 ["lastServerStreamId"]
  SETTABLEKS R10 R9 K14 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  GETTABLEKS R7 R6 K24 ["toolResult"]
  JUMPIFNOT R7 [+30]
  DUPTABLE R9 K15 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R10 R6 K24 ["toolResult"]
  SETTABLEKS R10 R9 K9 ["content"]
  GETTABLEKS R10 R6 K16 ["LayoutOrder"]
  SETTABLEKS R10 R9 K10 ["layoutOrder"]
  LOADN R10 3
  SETTABLEKS R10 R9 K11 ["priority"]
  GETTABLEKS R10 R6 K12 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K12 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K13 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K13 ["lastEditTimestamp"]
  GETTABLEKS R10 R6 K14 ["lastServerStreamId"]
  SETTABLEKS R10 R9 K14 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-170]
  GETIMPORT R2 K26 [table.sort]
  MOVE R3 R1
  GETUPVAL R4 3
  CALL R2 2 0
  NEWTABLE R2 0 0
  DUPTABLE R3 K28 [{"message", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  DUPTABLE R4 K30 [{"content", "role"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["content"]
  GETTABLEKS R5 R0 K29 ["role"]
  SETTABLEKS R5 R4 K29 ["role"]
  SETTABLEKS R4 R3 K27 ["message"]
  LOADN R4 0
  SETTABLEKS R4 R3 K12 ["startEditTimestamp"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["lastEditTimestamp"]
  LOADK R4 K7 [""]
  SETTABLEKS R4 R3 K14 ["lastServerStreamId"]
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
  GETTABLEKS R11 R10 K9 ["content"]
  GETTABLEKS R12 R11 K4 ["type"]
  JUMPIFEQKS R12 K6 ["text"] [+5]
  GETTABLEKS R12 R11 K4 ["type"]
  JUMPIFNOTEQKS R12 K31 ["image"] [+7]
  MOVE R12 R5
  GETTABLEKS R13 R0 K29 ["role"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+33]
  GETTABLEKS R12 R11 K4 ["type"]
  JUMPIFNOTEQKS R12 K20 ["thinking"] [+6]
  MOVE R12 R5
  LOADK R13 K32 ["assistant"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+24]
  GETTABLEKS R12 R11 K4 ["type"]
  JUMPIFNOTEQKS R12 K33 ["tool_use"] [+6]
  MOVE R12 R5
  LOADK R13 K32 ["assistant"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+15]
  GETTABLEKS R12 R11 K4 ["type"]
  JUMPIFNOTEQKS R12 K34 ["tool_result"] [+6]
  MOVE R12 R5
  LOADK R13 K35 ["user"]
  MOVE R14 R10
  CALL R12 2 0
  JUMP [+6]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K36 ["assertNever"]
  GETTABLEKS R13 R11 K4 ["type"]
  CALL R12 1 0
  FORGLOOP R6 2 [-50]
  GETTABLEKS R8 R3 K27 ["message"]
  GETTABLEKS R7 R8 K9 ["content"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+8]
  FASTCALL2 TABLE_INSERT R2 R3 [+5]
  MOVE R7 R2
  MOVE R8 R3
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  CLOSEUPVALS R3
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["content"]
  LENGTH R0 R1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+8]
  GETUPVAL R1 1
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R1 R2 [+3]
  GETIMPORT R0 K3 [table.insert]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["role"]
  JUMPIFEQ R2 R0 [+27]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["content"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+8]
  GETUPVAL R3 1
  GETUPVAL R4 0
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K4 [table.insert]
  CALL R2 2 0
  DUPTABLE R2 K5 [{"content", "role"}]
  NEWTABLE R3 0 1
  MOVE R4 R1
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K1 ["content"]
  SETTABLEKS R0 R2 K0 ["role"]
  SETUPVAL R2 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["content"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K4 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+20]
  GETUPVAL R1 1
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
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K4 ["contents"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K5 ["type"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Type"]
  JUMPIFNOTEQ R7 R8 [+41]
  GETTABLEKS R7 R6 K7 ["text"]
  JUMPIFEQKS R7 K8 [""] [+155]
  DUPTABLE R8 K9 [{"type", "text"}]
  LOADK R9 K7 ["text"]
  SETTABLEKS R9 R8 K5 ["type"]
  GETTABLEKS R9 R6 K7 ["text"]
  SETTABLEKS R9 R8 K7 ["text"]
  DUPTABLE R11 K16 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R8 R11 K10 ["content"]
  GETTABLEKS R12 R6 K17 ["LayoutOrder"]
  SETTABLEKS R12 R11 K11 ["layoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["priority"]
  GETTABLEKS R12 R6 K13 ["startEditTimestamp"]
  SETTABLEKS R12 R11 K13 ["startEditTimestamp"]
  GETTABLEKS R12 R6 K14 ["lastEditTimestamp"]
  SETTABLEKS R12 R11 K14 ["lastEditTimestamp"]
  LOADK R12 K8 [""]
  SETTABLEKS R12 R11 K15 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K3 [table.insert]
  CALL R9 2 0
  JUMP [+54]
  GETTABLEKS R7 R6 K5 ["type"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["Type"]
  JUMPIFNOTEQ R7 R8 [+48]
  GETTABLEKS R7 R6 K18 ["thinking"]
  JUMPIFNOTEQKS R7 K8 [""] [+5]
  GETTABLEKS R7 R6 K19 ["signature"]
  JUMPIFEQKS R7 K8 [""] [+104]
  DUPTABLE R7 K20 [{"type", "thinking", "signature"}]
  LOADK R8 K18 ["thinking"]
  SETTABLEKS R8 R7 K5 ["type"]
  GETTABLEKS R8 R6 K18 ["thinking"]
  SETTABLEKS R8 R7 K18 ["thinking"]
  GETTABLEKS R8 R6 K19 ["signature"]
  SETTABLEKS R8 R7 K19 ["signature"]
  DUPTABLE R10 K16 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  SETTABLEKS R7 R10 K10 ["content"]
  GETTABLEKS R11 R6 K17 ["LayoutOrder"]
  SETTABLEKS R11 R10 K11 ["layoutOrder"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["priority"]
  GETTABLEKS R11 R6 K13 ["startEditTimestamp"]
  SETTABLEKS R11 R10 K13 ["startEditTimestamp"]
  GETTABLEKS R11 R6 K14 ["lastEditTimestamp"]
  SETTABLEKS R11 R10 K14 ["lastEditTimestamp"]
  LOADK R11 K8 [""]
  SETTABLEKS R11 R10 K15 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K3 [table.insert]
  CALL R8 2 0
  GETTABLEKS R7 R6 K21 ["toolUse"]
  JUMPIFNOT R7 [+29]
  DUPTABLE R9 K16 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R10 R6 K21 ["toolUse"]
  SETTABLEKS R10 R9 K10 ["content"]
  GETTABLEKS R10 R6 K17 ["LayoutOrder"]
  SETTABLEKS R10 R9 K11 ["layoutOrder"]
  LOADN R10 2
  SETTABLEKS R10 R9 K12 ["priority"]
  GETTABLEKS R10 R6 K13 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K13 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K14 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K14 ["lastEditTimestamp"]
  LOADK R10 K8 [""]
  SETTABLEKS R10 R9 K15 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K3 [table.insert]
  CALL R7 2 0
  GETTABLEKS R7 R6 K22 ["toolResult"]
  JUMPIFNOT R7 [+29]
  DUPTABLE R9 K16 [{"content", "layoutOrder", "priority", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
  GETTABLEKS R10 R6 K22 ["toolResult"]
  SETTABLEKS R10 R9 K10 ["content"]
  GETTABLEKS R10 R6 K17 ["LayoutOrder"]
  SETTABLEKS R10 R9 K11 ["layoutOrder"]
  LOADN R10 3
  SETTABLEKS R10 R9 K12 ["priority"]
  GETTABLEKS R10 R6 K13 ["startEditTimestamp"]
  SETTABLEKS R10 R9 K13 ["startEditTimestamp"]
  GETTABLEKS R10 R6 K14 ["lastEditTimestamp"]
  SETTABLEKS R10 R9 K14 ["lastEditTimestamp"]
  LOADK R10 K8 [""]
  SETTABLEKS R10 R9 K15 ["lastServerStreamId"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K3 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-166]
  GETIMPORT R2 K24 [table.sort]
  MOVE R3 R1
  GETUPVAL R4 4
  CALL R2 2 0
  NEWTABLE R2 0 0
  DUPTABLE R3 K26 [{"content", "role"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K10 ["content"]
  GETTABLEKS R4 R0 K25 ["role"]
  SETTABLEKS R4 R3 K25 ["role"]
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
  GETTABLEKS R11 R10 K10 ["content"]
  GETTABLEKS R12 R11 K5 ["type"]
  JUMPIFEQKS R12 K7 ["text"] [+5]
  GETTABLEKS R12 R11 K5 ["type"]
  JUMPIFNOTEQKS R12 K27 ["image"] [+7]
  MOVE R12 R5
  GETTABLEKS R13 R0 K25 ["role"]
  MOVE R14 R11
  CALL R12 2 0
  JUMP [+33]
  GETTABLEKS R12 R11 K5 ["type"]
  JUMPIFNOTEQKS R12 K18 ["thinking"] [+6]
  MOVE R12 R5
  LOADK R13 K28 ["assistant"]
  MOVE R14 R11
  CALL R12 2 0
  JUMP [+24]
  GETTABLEKS R12 R11 K5 ["type"]
  JUMPIFNOTEQKS R12 K29 ["tool_use"] [+6]
  MOVE R12 R5
  LOADK R13 K28 ["assistant"]
  MOVE R14 R11
  CALL R12 2 0
  JUMP [+15]
  GETTABLEKS R12 R11 K5 ["type"]
  JUMPIFNOTEQKS R12 K30 ["tool_result"] [+6]
  MOVE R12 R5
  LOADK R13 K31 ["user"]
  MOVE R14 R11
  CALL R12 2 0
  JUMP [+6]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K32 ["assertNever"]
  GETTABLEKS R13 R11 K5 ["type"]
  CALL R12 1 0
  FORGLOOP R6 2 [-50]
  GETTABLEKS R7 R3 K10 ["content"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+8]
  FASTCALL2 TABLE_INSERT R2 R3 [+5]
  MOVE R7 R2
  MOVE R8 R3
  GETIMPORT R6 K3 [table.insert]
  CALL R6 2 0
  CLOSEUPVALS R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["ContentWidgets"]
  GETTABLEKS R2 R3 K8 ["TextContentWidget"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["ContentWidgets"]
  GETTABLEKS R3 R4 K9 ["ThinkingContentWidget"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["FFlagAssistantLogRequestStop"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  DUPCLOSURE R6 K14 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPCLOSURE R7 K15 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPTABLE R8 K18 [{"readMessage", "readMessageWithTimestamp"}]
  SETTABLEKS R7 R8 K16 ["readMessage"]
  SETTABLEKS R6 R8 K17 ["readMessageWithTimestamp"]
  RETURN R8 1
