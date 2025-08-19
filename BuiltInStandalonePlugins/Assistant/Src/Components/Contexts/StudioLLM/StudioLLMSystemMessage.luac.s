PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Components"]
  GETTABLEKS R2 R3 K1 ["Claude"]
  GETTABLEKS R1 R2 K2 ["ClaudeLLMSystemMessage"]
  GETTABLEKS R0 R1 K3 ["getSystemMessage"]
  CALL R0 0 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R3 K10 [{"getSystemMessage"}]
  SETTABLEKS R2 R3 K9 ["getSystemMessage"]
  RETURN R3 1
