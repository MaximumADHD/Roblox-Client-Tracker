PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["data"]
  NAMECALL R0 R0 K1 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["--- ClaudeLLMRequest event: %* %* %*"]
  GETTABLEKS R5 R0 K3 ["id"]
  GETTABLEKS R6 R0 K4 ["event"]
  GETTABLEKS R7 R0 K5 ["data"]
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  CALL R1 1 0
  GETIMPORT R1 K8 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+17]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R3 R2 K9 ["type"]
  JUMPIFNOT R3 [+13]
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K5 ["data"]
  CALL R3 1 1
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R9 3
  MOVE R10 R8
  CALL R9 1 0
  FORGLOOP R4 2 [-4]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+12]
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["--- ClaudeLLMRequest error: %* (%*)"]
  GETTABLEKS R5 R0 K3 ["message"]
  GETTABLEKS R6 R0 K4 ["type"]
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["--- ClaudeLLMRequest comment: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["--- ClaudeLLMRequest WebStreamClient closed"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["Connected"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  LOADK R4 K0 ["HttpService"]
  NAMECALL R2 R2 K1 ["GetService"]
  CALL R2 2 1
  DUPTABLE R3 K9 [{"model", "max_tokens", "messages", "tools", "system", "stream", "tool_choice"}]
  LOADK R4 K10 ["claude-4-sonnet-20250514"]
  SETTABLEKS R4 R3 K2 ["model"]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["max_tokens"]
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K4 ["messages"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["messages"]
  GETTABLEKS R4 R0 K5 ["tools"]
  SETTABLEKS R4 R3 K5 ["tools"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"type", "text", "cache_control"}]
  LOADK R6 K12 ["text"]
  SETTABLEKS R6 R5 K11 ["type"]
  GETTABLEKS R6 R0 K6 ["system"]
  SETTABLEKS R6 R5 K12 ["text"]
  DUPTABLE R6 K15 [{"type"}]
  LOADK R7 K16 ["ephemeral"]
  SETTABLEKS R7 R6 K11 ["type"]
  SETTABLEKS R6 R5 K13 ["cache_control"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K6 ["system"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["stream"]
  DUPTABLE R4 K18 [{"type", "disable_parallel_tool_use"}]
  LOADK R5 K19 ["auto"]
  SETTABLEKS R5 R4 K11 ["type"]
  LOADB R5 1
  SETTABLEKS R5 R4 K17 ["disable_parallel_tool_use"]
  SETTABLEKS R4 R3 K8 ["tool_choice"]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETIMPORT R4 K21 [print]
  LOADK R6 K22 ["--- ClaudeLLMRequest requestBody: %*"]
  MOVE R10 R3
  NAMECALL R8 R2 K23 ["JSONEncode"]
  CALL R8 2 1
  NAMECALL R6 R6 K24 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  GETIMPORT R6 K28 [Enum.WebStreamClientType.SSE]
  DUPTABLE R7 K34 [{"Method", "Url", "Headers", "Body", "Compress"}]
  LOADK R8 K35 ["POST"]
  SETTABLEKS R8 R7 K29 ["Method"]
  LOADK R8 K36 ["https://api.anthropic.com/v1/messages"]
  SETTABLEKS R8 R7 K30 ["Url"]
  NEWTABLE R8 4 0
  LOADK R9 K37 ["application/json"]
  SETTABLEKS R9 R8 K38 ["content-type"]
  GETUPVAL R9 3
  CALL R9 0 1
  SETTABLEKS R9 R8 K39 ["x-api-key"]
  LOADK R9 K40 ["2023-06-01"]
  SETTABLEKS R9 R8 K41 ["anthropic-version"]
  SETTABLEKS R8 R7 K31 ["Headers"]
  MOVE R10 R3
  NAMECALL R8 R2 K23 ["JSONEncode"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K32 ["Body"]
  GETIMPORT R8 K44 [Enum.HttpCompression.None]
  SETTABLEKS R8 R7 K33 ["Compress"]
  NAMECALL R4 R2 K45 ["CreateWebStreamClient"]
  CALL R4 3 1
  FASTCALL2K ASSERT R4 K46 [+5]
  MOVE R6 R4
  LOADK R7 K46 ["WebStreamClient should not be nil"]
  GETIMPORT R5 K48 [assert]
  CALL R5 2 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K49 ["createParser"]
  DUPTABLE R6 K53 [{"onEvent", "onError", "onComment"}]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K50 ["onEvent"]
  DUPCLOSURE R7 K54 [PROTO_2]
  CAPTURE UPVAL U2
  SETTABLEKS R7 R6 K51 ["onError"]
  DUPCLOSURE R7 K55 [PROTO_3]
  CAPTURE UPVAL U2
  SETTABLEKS R7 R6 K52 ["onComment"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K56 ["MessageReceived"]
  GETTABLEKS R8 R5 K57 ["parseNextChunk"]
  NAMECALL R6 R6 K58 ["Connect"]
  CALL R6 2 1
  GETTABLEKS R7 R4 K59 ["Closed"]
  NEWCLOSURE R9 P3
  CAPTURE UPVAL U2
  CAPTURE REF R6
  CAPTURE REF R4
  NAMECALL R7 R7 K60 ["Once"]
  CALL R7 2 0
  CLOSEUPVALS R4
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["SpyableGame"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Contexts"]
  GETTABLEKS R4 R5 K10 ["Claude"]
  GETTABLEKS R3 R4 K11 ["ClaudeLLMAdapter"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K12 ["Flags"]
  GETTABLEKS R4 R5 K13 ["FFlagDebugLogAssistantUI"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Flags"]
  GETTABLEKS R5 R6 K14 ["FStringMCPAssistantClaudeAPIKey"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Components"]
  GETTABLEKS R8 R9 K9 ["Contexts"]
  GETTABLEKS R7 R8 K15 ["DefaultLLMProvider"]
  GETTABLEKS R6 R7 K16 ["LLMRequest"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K17 ["Parent"]
  GETTABLEKS R7 R8 K18 ["ModelContextProtocol"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K19 ["Get"]
  GETTABLEKS R8 R4 K19 ["Get"]
  GETTABLEKS R9 R2 K20 ["createAdapter"]
  CALL R9 0 1
  GETTABLEKS R10 R2 K21 ["convertLLMtoClaudeMessage"]
  GETTABLEKS R11 R6 K22 ["EventStreamParser"]
  DUPCLOSURE R12 K23 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R9
  DUPTABLE R13 K26 [{"requestHandler", "createRequestHandler"}]
  SETTABLEKS R12 R13 K24 ["requestHandler"]
  LOADNIL R14
  SETTABLEKS R14 R13 K25 ["createRequestHandler"]
  RETURN R13 1
