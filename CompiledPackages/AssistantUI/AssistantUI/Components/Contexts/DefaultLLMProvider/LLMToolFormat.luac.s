PROTO_0:
  RETURN R0 1

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
  GETTABLEKS R2 R3 K9 ["LLMFormattedToolTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ModelContextProtocol"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  DUPTABLE R4 K14 [{"formatTools"}]
  SETTABLEKS R3 R4 K13 ["formatTools"]
  RETURN R4 1
