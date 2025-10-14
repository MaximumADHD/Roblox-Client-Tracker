PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K3 [{"name", "description", "input_schema"}]
  GETTABLEKS R10 R6 K0 ["name"]
  SETTABLEKS R10 R9 K0 ["name"]
  GETTABLEKS R10 R6 K1 ["description"]
  SETTABLEKS R10 R9 K1 ["description"]
  DUPTABLE R10 K7 [{"type", "properties", "required"}]
  LOADK R11 K8 ["object"]
  SETTABLEKS R11 R10 K4 ["type"]
  GETTABLEKS R12 R6 K9 ["inputSchema"]
  GETTABLEKS R11 R12 K5 ["properties"]
  SETTABLEKS R11 R10 K5 ["properties"]
  GETTABLEKS R12 R6 K9 ["inputSchema"]
  GETTABLEKS R11 R12 K6 ["required"]
  SETTABLEKS R11 R10 K6 ["required"]
  SETTABLEKS R10 R9 K2 ["input_schema"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K12 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-34]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["Contexts"]
  GETTABLEKS R3 R4 K8 ["DefaultLLMProvider"]
  GETTABLEKS R2 R3 K9 ["LLMToolFormat"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ModelContextProtocol"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  DUPTABLE R4 K14 [{"formatTools"}]
  SETTABLEKS R3 R4 K13 ["formatTools"]
  RETURN R4 1
