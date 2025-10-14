PROTO_0:
  GETTABLEKS R3 R0 K0 ["totalUsage"]
  GETTABLEKS R2 R3 K1 ["model"]
  JUMPIFNOTEQKNIL R2 [+5]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  SETTABLEKS R1 R2 K1 ["model"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  GETIMPORT R3 K3 [os.time]
  CALL R3 0 1
  SETTABLEKS R3 R2 K4 ["timestamp"]
  GETTABLEKS R2 R1 K5 ["input_tokens"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  GETTABLEKS R5 R0 K0 ["totalUsage"]
  GETTABLEKS R4 R5 K5 ["input_tokens"]
  GETTABLEKS R5 R1 K5 ["input_tokens"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K5 ["input_tokens"]
  GETTABLEKS R2 R1 K6 ["cache_read_input_tokens"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  GETTABLEKS R5 R0 K0 ["totalUsage"]
  GETTABLEKS R4 R5 K6 ["cache_read_input_tokens"]
  GETTABLEKS R5 R1 K6 ["cache_read_input_tokens"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K6 ["cache_read_input_tokens"]
  GETTABLEKS R2 R1 K7 ["cache_creation_input_tokens"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  GETTABLEKS R5 R0 K0 ["totalUsage"]
  GETTABLEKS R4 R5 K7 ["cache_creation_input_tokens"]
  GETTABLEKS R5 R1 K7 ["cache_creation_input_tokens"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K7 ["cache_creation_input_tokens"]
  GETTABLEKS R2 R1 K8 ["output_tokens"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  GETTABLEKS R5 R0 K0 ["totalUsage"]
  GETTABLEKS R4 R5 K8 ["output_tokens"]
  GETTABLEKS R5 R1 K8 ["output_tokens"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K8 ["output_tokens"]
  RETURN R0 0

PROTO_2:
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

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
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
  JUMPIFNOTEQKS R4 K7 ["message_start"] [+35]
  GETTABLEKS R5 R2 K8 ["message"]
  JUMPIFNOT R5 [+19]
  GETTABLEKS R6 R2 K8 ["message"]
  GETTABLEKS R5 R6 K9 ["usage"]
  JUMPIFNOT R5 [+14]
  GETTABLEKS R7 R2 K8 ["message"]
  GETTABLEKS R6 R7 K11 ["model"]
  ORK R5 R6 K10 []
  JUMPIFNOT R5 [+8]
  GETIMPORT R7 K13 [_G]
  GETTABLEKS R6 R7 K14 ["TokenUsageTracker"]
  MOVE R8 R5
  NAMECALL R6 R6 K15 ["logModel"]
  CALL R6 2 0
  DUPTABLE R5 K16 [{"type"}]
  LOADK R6 K7 ["message_start"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K20 ["content_block_start"] [+17]
  DUPTABLE R5 K22 [{"type", "contentBlock"}]
  LOADK R6 K23 ["content_start"]
  SETTABLEKS R6 R5 K2 ["type"]
  GETTABLEKS R6 R2 K24 ["content_block"]
  SETTABLEKS R6 R5 K21 ["contentBlock"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K25 ["content_block_delta"] [+45]
  LOADNIL R5
  GETTABLEKS R7 R2 K26 ["delta"]
  GETTABLEKS R6 R7 K2 ["type"]
  JUMPIFNOTEQKS R6 K27 ["input_json_delta"] [+13]
  DUPTABLE R6 K29 [{"type", "jsonDelta"}]
  LOADK R7 K30 ["json_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  GETTABLEKS R8 R2 K26 ["delta"]
  GETTABLEKS R7 R8 K31 ["partial_json"]
  SETTABLEKS R7 R6 K28 ["jsonDelta"]
  MOVE R5 R6
  JUMP [+11]
  DUPTABLE R6 K33 [{"type", "text"}]
  LOADK R7 K34 ["text_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  GETTABLEKS R8 R2 K26 ["delta"]
  GETTABLEKS R7 R8 K32 ["text"]
  SETTABLEKS R7 R6 K32 ["text"]
  MOVE R5 R6
  DUPTABLE R6 K35 [{"type", "delta"}]
  LOADK R7 K36 ["content_delta"]
  SETTABLEKS R7 R6 K2 ["type"]
  SETTABLEKS R5 R6 K26 ["delta"]
  FASTCALL2 TABLE_INSERT R3 R6 [+5]
  MOVE R8 R3
  MOVE R9 R6
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K37 ["content_block_stop"] [+13]
  DUPTABLE R5 K16 [{"type"}]
  LOADK R6 K38 ["content_end"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K39 ["message_stop"] [+13]
  DUPTABLE R5 K16 [{"type"}]
  LOADK R6 K39 ["message_stop"]
  SETTABLEKS R6 R5 K2 ["type"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  JUMPIFNOTEQKS R4 K40 ["message_delta"] [+64]
  GETTABLEKS R5 R2 K9 ["usage"]
  JUMPIFNOT R5 [+9]
  GETIMPORT R6 K13 [_G]
  GETTABLEKS R5 R6 K14 ["TokenUsageTracker"]
  GETTABLEKS R7 R2 K9 ["usage"]
  NAMECALL R5 R5 K41 ["addUsage"]
  CALL R5 2 0
  DUPTABLE R5 K35 [{"type", "delta"}]
  LOADK R6 K40 ["message_delta"]
  SETTABLEKS R6 R5 K2 ["type"]
  DUPTABLE R6 K43 [{"stopReason"}]
  GETTABLEKS R9 R2 K26 ["delta"]
  GETTABLEKS R8 R9 K44 ["stop_reason"]
  JUMPIFEQKS R8 K45 ["end_turn"] [+5]
  JUMPIFEQKS R8 K46 ["pause_turn"] [+3]
  JUMPIFNOTEQKNIL R8 [+3]
  LOADK R7 K47 ["message_end"]
  JUMP [+22]
  JUMPIFNOTEQKS R8 K48 ["max_tokens"] [+3]
  LOADK R7 K49 ["token_limit"]
  JUMP [+18]
  JUMPIFNOTEQKS R8 K50 ["stop_sequence"] [+3]
  LOADK R7 K50 ["stop_sequence"]
  JUMP [+14]
  JUMPIFNOTEQKS R8 K51 ["tool_use"] [+3]
  LOADK R7 K51 ["tool_use"]
  JUMP [+10]
  JUMPIFNOTEQKS R8 K52 ["refusal"] [+3]
  LOADK R7 K53 ["safety_filter"]
  JUMP [+6]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K54 ["assertNever"]
  MOVE R10 R8
  CALL R9 1 1
  MOVE R7 R9
  SETTABLEKS R7 R6 K42 ["stopReason"]
  SETTABLEKS R6 R5 K26 ["delta"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K19 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K54 ["assertNever"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R3 1

PROTO_5:
  DUPCLOSURE R0 K0 [PROTO_4]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_6:
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
  JUMPIFNOTEQKS R13 K4 ["tool_result"] [+28]
  DUPTABLE R13 K6 [{"type", "tool_use_id", "content"}]
  LOADK R14 K4 ["tool_result"]
  SETTABLEKS R14 R13 K3 ["type"]
  GETTABLEKS R14 R12 K7 ["id"]
  SETTABLEKS R14 R13 K5 ["tool_use_id"]
  GETTABLEKS R14 R12 K1 ["content"]
  SETTABLEKS R14 R13 K1 ["content"]
  GETTABLEKS R14 R12 K8 ["isError"]
  JUMPIFNOT R14 [+3]
  LOADB R14 1
  SETTABLEKS R14 R13 K9 ["is_error"]
  GETTABLEKS R15 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R15 R13 [+4]
  MOVE R16 R13
  GETIMPORT R14 K12 [table.insert]
  CALL R14 2 0
  JUMP [+8]
  GETTABLEKS R14 R7 K1 ["content"]
  FASTCALL2 TABLE_INSERT R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K12 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-40]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K12 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-63]
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
  GETTABLEKS R3 R0 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K12 [_G]
  DUPTABLE R4 K14 [{"totalUsage"}]
  DUPTABLE R5 K22 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K15 ["input_tokens"]
  LOADN R6 0
  SETTABLEKS R6 R5 K16 ["output_tokens"]
  LOADN R6 0
  SETTABLEKS R6 R5 K17 ["cache_read_input_tokens"]
  LOADN R6 0
  SETTABLEKS R6 R5 K18 ["cache_creation_input_tokens"]
  LOADN R6 0
  SETTABLEKS R6 R5 K19 ["reasoning_tokens"]
  LOADN R6 0
  SETTABLEKS R6 R5 K20 ["timestamp"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["model"]
  SETTABLEKS R5 R4 K13 ["totalUsage"]
  SETTABLEKS R4 R3 K23 ["TokenUsageTracker"]
  DUPCLOSURE R3 K24 [PROTO_0]
  GETIMPORT R5 K12 [_G]
  GETTABLEKS R4 R5 K23 ["TokenUsageTracker"]
  SETTABLEKS R3 R4 K25 ["logModel"]
  DUPCLOSURE R3 K26 [PROTO_1]
  GETIMPORT R5 K12 [_G]
  GETTABLEKS R4 R5 K23 ["TokenUsageTracker"]
  SETTABLEKS R3 R4 K27 ["addUsage"]
  DUPCLOSURE R3 K28 [PROTO_2]
  CAPTURE VAL R2
  DUPCLOSURE R4 K29 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R5 K30 [PROTO_6]
  DUPTABLE R6 K33 [{"createAdapter", "convertLLMtoClaudeMessage"}]
  SETTABLEKS R4 R6 K31 ["createAdapter"]
  SETTABLEKS R5 R6 K32 ["convertLLMtoClaudeMessage"]
  RETURN R6 1
