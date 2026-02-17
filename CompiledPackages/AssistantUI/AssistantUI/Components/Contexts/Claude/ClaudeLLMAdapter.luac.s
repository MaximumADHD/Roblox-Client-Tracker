PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["logTime"]
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
  GETTABLEKS R4 R0 K1 ["input_tokens"]
  SETTABLEKS R4 R3 K1 ["input_tokens"]
  GETTABLEKS R4 R0 K2 ["output_tokens"]
  SETTABLEKS R4 R3 K2 ["output_tokens"]
  GETTABLEKS R4 R0 K3 ["cache_read_input_tokens"]
  SETTABLEKS R4 R3 K3 ["cache_read_input_tokens"]
  GETTABLEKS R4 R0 K4 ["cache_creation_input_tokens"]
  SETTABLEKS R4 R3 K4 ["cache_creation_input_tokens"]
  NAMECALL R1 R1 K6 ["addUsage"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["resetTotalUsage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  JUMPIFEQKS R0 K0 ["end_turn"] [+5]
  JUMPIFEQKS R0 K1 ["pause_turn"] [+3]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADK R1 K2 ["message_end"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K3 ["max_tokens"] [+3]
  LOADK R1 K4 ["token_limit"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K5 ["stop_sequence"] [+3]
  LOADK R1 K5 ["stop_sequence"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K6 ["tool_use"] [+3]
  LOADK R1 K6 ["tool_use"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K7 ["refusal"] [+3]
  LOADK R1 K8 ["safety_filter"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["assertNever"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Json"]
  GETTABLEKS R0 R1 K1 ["decode"]
  GETUPVAL R1 2
  CALL R0 1 -1
  RETURN R0 -1
  GETUPVAL R0 3
  GETUPVAL R2 2
  NAMECALL R0 R0 K2 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 2
  JUMPIF R1 [+13]
  DUPTABLE R3 K4 [{"type", "error"}]
  LOADK R4 K3 ["error"]
  SETTABLEKS R4 R3 K2 ["type"]
  LOADK R4 K5 ["client_error"]
  SETTABLEKS R4 R3 K3 ["error"]
  NEWTABLE R4 0 1
  MOVE R5 R3
  SETLIST R4 R5 1 [1]
  RETURN R4 1
  NEWTABLE R3 0 0
  GETTABLEKS R4 R2 K2 ["type"]
  JUMPIFNOTEQKS R4 K6 ["ping"] [+2]
  RETURN R3 1
  GETTABLEKS R4 R2 K2 ["type"]
  JUMPIFNOTEQKS R4 K7 ["message_start"] [+32]
  GETTABLEKS R5 R2 K8 ["message"]
  JUMPIFNOT R5 [+16]
  GETTABLEKS R6 R2 K8 ["message"]
  GETTABLEKS R5 R6 K9 ["usage"]
  JUMPIFNOT R5 [+11]
  GETTABLEKS R7 R2 K8 ["message"]
  GETTABLEKS R6 R7 K11 ["model"]
  ORK R5 R6 K10 []
  JUMPIFNOT R5 [+5]
  GETUPVAL R6 3
  MOVE R8 R5
  NAMECALL R6 R6 K12 ["logModel"]
  CALL R6 2 0
  DUPTABLE R5 K13 [{"type"}]
  LOADK R6 K7 ["message_start"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K17 ["content_block_start"] [+17]
  DUPTABLE R5 K19 [{"type", "contentBlock"}]
  LOADK R6 K20 ["content_start"]
  SETTABLEKS R6 R5 K2 ["type"]
  GETTABLEKS R6 R2 K21 ["content_block"]
  SETTABLEKS R6 R5 K18 ["contentBlock"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K22 ["content_block_delta"] [+45]
  LOADNIL R5
  GETTABLEKS R7 R2 K23 ["delta"]
  GETTABLEKS R6 R7 K2 ["type"]
  JUMPIFNOTEQKS R6 K24 ["input_json_delta"] [+13]
  DUPTABLE R6 K26 [{"type", "jsonDelta"}]
  LOADK R7 K27 ["json_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  GETTABLEKS R8 R2 K23 ["delta"]
  GETTABLEKS R7 R8 K28 ["partial_json"]
  SETTABLEKS R7 R6 K25 ["jsonDelta"]
  MOVE R5 R6
  JUMP [+11]
  DUPTABLE R6 K30 [{"type", "text"}]
  LOADK R7 K31 ["text_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  GETTABLEKS R8 R2 K23 ["delta"]
  GETTABLEKS R7 R8 K29 ["text"]
  SETTABLEKS R7 R6 K29 ["text"]
  MOVE R5 R6
  DUPTABLE R6 K32 [{"type", "delta"}]
  LOADK R7 K33 ["content_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  SETTABLEKS R5 R6 K23 ["delta"]
  FASTCALL2 TABLE_INSERT R3 R6 [+5]
  MOVE R8 R3
  MOVE R9 R6
  GETIMPORT R7 K16 [table.insert]
  CALL R7 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K34 ["content_block_stop"] [+13]
  DUPTABLE R5 K13 [{"type"}]
  LOADK R6 K35 ["content_end"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K36 ["message_stop"] [+13]
  DUPTABLE R5 K13 [{"type"}]
  LOADK R6 K36 ["message_stop"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K37 ["message_delta"] [+82]
  GETTABLEKS R5 R2 K9 ["usage"]
  JUMPIFNOT R5 [+27]
  GETTABLEKS R5 R2 K9 ["usage"]
  GETUPVAL R6 3
  NAMECALL R6 R6 K38 ["logTime"]
  CALL R6 1 0
  GETUPVAL R6 3
  DUPTABLE R8 K43 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
  GETTABLEKS R9 R5 K39 ["input_tokens"]
  SETTABLEKS R9 R8 K39 ["input_tokens"]
  GETTABLEKS R9 R5 K40 ["output_tokens"]
  SETTABLEKS R9 R8 K40 ["output_tokens"]
  GETTABLEKS R9 R5 K41 ["cache_read_input_tokens"]
  SETTABLEKS R9 R8 K41 ["cache_read_input_tokens"]
  GETTABLEKS R9 R5 K42 ["cache_creation_input_tokens"]
  SETTABLEKS R9 R8 K42 ["cache_creation_input_tokens"]
  NAMECALL R6 R6 K44 ["addUsage"]
  CALL R6 2 0
  DUPTABLE R5 K32 [{"type", "delta"}]
  LOADK R6 K37 ["message_delta"]
  SETTABLEKS R6 R5 K2 ["type"]
  DUPTABLE R6 K46 [{"stopReason"}]
  GETTABLEKS R9 R2 K23 ["delta"]
  GETTABLEKS R8 R9 K47 ["stop_reason"]
  JUMPIFEQKS R8 K48 ["end_turn"] [+5]
  JUMPIFEQKS R8 K49 ["pause_turn"] [+3]
  JUMPIFNOTEQKNIL R8 [+3]
  LOADK R7 K50 ["message_end"]
  JUMP [+22]
  JUMPIFNOTEQKS R8 K51 ["max_tokens"] [+3]
  LOADK R7 K52 ["token_limit"]
  JUMP [+18]
  JUMPIFNOTEQKS R8 K53 ["stop_sequence"] [+3]
  LOADK R7 K53 ["stop_sequence"]
  JUMP [+14]
  JUMPIFNOTEQKS R8 K54 ["tool_use"] [+3]
  LOADK R7 K54 ["tool_use"]
  JUMP [+10]
  JUMPIFNOTEQKS R8 K55 ["refusal"] [+3]
  LOADK R7 K56 ["safety_filter"]
  JUMP [+6]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K57 ["assertNever"]
  MOVE R10 R8
  CALL R9 1 1
  MOVE R7 R9
  SETTABLEKS R7 R6 K45 ["stopReason"]
  SETTABLEKS R6 R5 K23 ["delta"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K16 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K57 ["assertNever"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R3 1

PROTO_6:
  DUPCLOSURE R0 K0 [PROTO_5]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R0 1

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K2 [{"role", "content"}]
  GETTABLEKS R8 R6 K0 ["role"]
  SETTABLEKS R8 R7 K0 ["role"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K1 ["content"]
  GETTABLEKS R8 R6 K1 ["content"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K4 ["tool_result"] [+72]
  NEWTABLE R13 0 0
  GETTABLEKS R14 R12 K1 ["content"]
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  GETTABLEKS R19 R18 K3 ["type"]
  JUMPIFNOTEQKS R19 K5 ["image"] [+27]
  DUPTABLE R19 K7 [{"type", "source"}]
  LOADK R20 K5 ["image"]
  SETTABLEKS R20 R19 K3 ["type"]
  DUPTABLE R20 K10 [{"type", "media_type", "data"}]
  LOADK R21 K11 ["base64"]
  SETTABLEKS R21 R20 K3 ["type"]
  GETTABLEKS R21 R18 K12 ["mimeType"]
  SETTABLEKS R21 R20 K8 ["media_type"]
  GETTABLEKS R21 R18 K9 ["data"]
  SETTABLEKS R21 R20 K9 ["data"]
  SETTABLEKS R20 R19 K6 ["source"]
  FASTCALL2 TABLE_INSERT R13 R19 [+5]
  MOVE R21 R13
  MOVE R22 R19
  GETIMPORT R20 K15 [table.insert]
  CALL R20 2 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R13 R18 [+5]
  MOVE R20 R13
  MOVE R21 R18
  GETIMPORT R19 K15 [table.insert]
  CALL R19 2 0
  FORGLOOP R14 2 [-38]
  DUPTABLE R14 K17 [{"type", "tool_use_id", "content"}]
  LOADK R15 K4 ["tool_result"]
  SETTABLEKS R15 R14 K3 ["type"]
  GETTABLEKS R15 R12 K18 ["id"]
  SETTABLEKS R15 R14 K16 ["tool_use_id"]
  SETTABLEKS R13 R14 K1 ["content"]
  GETTABLEKS R15 R12 K19 ["isError"]
  JUMPIFNOT R15 [+3]
  LOADB R15 1
  SETTABLEKS R15 R14 K20 ["is_error"]
  GETTABLEKS R16 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R16 R14 [+4]
  MOVE R17 R14
  GETIMPORT R15 K15 [table.insert]
  CALL R15 2 0
  JUMP [+84]
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K5 ["image"] [+28]
  DUPTABLE R13 K7 [{"type", "source"}]
  LOADK R14 K5 ["image"]
  SETTABLEKS R14 R13 K3 ["type"]
  DUPTABLE R14 K10 [{"type", "media_type", "data"}]
  LOADK R15 K11 ["base64"]
  SETTABLEKS R15 R14 K3 ["type"]
  GETTABLEKS R15 R12 K12 ["mimeType"]
  SETTABLEKS R15 R14 K8 ["media_type"]
  GETTABLEKS R15 R12 K9 ["data"]
  SETTABLEKS R15 R14 K9 ["data"]
  SETTABLEKS R14 R13 K6 ["source"]
  GETTABLEKS R15 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R15 R13 [+4]
  MOVE R16 R13
  GETIMPORT R14 K15 [table.insert]
  CALL R14 2 0
  JUMP [+53]
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K21 ["text"] [+10]
  GETTABLEKS R14 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K15 [table.insert]
  CALL R13 2 0
  JUMP [+40]
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K22 ["tool_use"] [+37]
  GETUPVAL R13 0
  CALL R13 0 1
  JUMPIFNOT R13 [+25]
  DUPTABLE R13 K25 [{"type", "id", "name", "input"}]
  LOADK R14 K22 ["tool_use"]
  SETTABLEKS R14 R13 K3 ["type"]
  GETTABLEKS R14 R12 K18 ["id"]
  SETTABLEKS R14 R13 K18 ["id"]
  GETTABLEKS R14 R12 K23 ["name"]
  SETTABLEKS R14 R13 K23 ["name"]
  GETTABLEKS R14 R12 K24 ["input"]
  SETTABLEKS R14 R13 K24 ["input"]
  GETTABLEKS R15 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R15 R13 [+4]
  MOVE R16 R13
  GETIMPORT R14 K15 [table.insert]
  CALL R14 2 0
  JUMP [+8]
  GETTABLEKS R14 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K15 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-160]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K15 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-183]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["TokenUsageManager"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R0 K14 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K15 ["Flags"]
  GETTABLEKS R6 R7 K16 ["FFlagAssistantJsonEncoder"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["FFlagStripGeminiFieldsForClaude"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K18 ["createTracker"]
  LOADK R8 K19 ["Claude"]
  CALL R7 1 1
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R9 K21 [PROTO_1]
  CAPTURE VAL R7
  DUPCLOSURE R10 K22 [PROTO_2]
  CAPTURE VAL R7
  DUPCLOSURE R11 K23 [PROTO_3]
  CAPTURE VAL R4
  DUPCLOSURE R12 K24 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R13 K25 [PROTO_7]
  CAPTURE VAL R6
  DUPTABLE R14 K30 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoClaudeMessage"}]
  SETTABLEKS R9 R14 K26 ["getTokenUsageTracker"]
  SETTABLEKS R10 R14 K27 ["resetTokenUsageTracker"]
  SETTABLEKS R12 R14 K28 ["createAdapter"]
  SETTABLEKS R13 R14 K29 ["convertLLMtoClaudeMessage"]
  RETURN R14 1
