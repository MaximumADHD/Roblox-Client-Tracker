PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NEWTABLE R9 2 0
  LOADK R10 K0 ["function"]
  SETTABLEKS R10 R9 K1 ["type"]
  DUPTABLE R10 K5 [{"name", "description", "parameters"}]
  GETTABLEKS R11 R6 K2 ["name"]
  SETTABLEKS R11 R10 K2 ["name"]
  GETTABLEKS R11 R6 K3 ["description"]
  SETTABLEKS R11 R10 K3 ["description"]
  DUPTABLE R11 K8 [{"type", "properties", "required"}]
  LOADK R12 K9 ["object"]
  SETTABLEKS R12 R11 K1 ["type"]
  GETTABLEKS R13 R6 K10 ["inputSchema"]
  GETTABLEKS R12 R13 K6 ["properties"]
  SETTABLEKS R12 R11 K6 ["properties"]
  GETTABLEKS R13 R6 K10 ["inputSchema"]
  GETTABLEKS R12 R13 K7 ["required"]
  SETTABLEKS R12 R11 K7 ["required"]
  SETTABLEKS R11 R10 K4 ["parameters"]
  SETTABLEKS R10 R9 K0 ["function"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K13 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-41]
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
