PROTO_0:
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  DUPTABLE R3 K10 [{"formatTools"}]
  SETTABLEKS R2 R3 K9 ["formatTools"]
  RETURN R3 1
