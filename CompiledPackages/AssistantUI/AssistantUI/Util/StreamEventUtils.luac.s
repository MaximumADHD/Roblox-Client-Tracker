PROTO_0:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["type"]
  JUMPIFEQKS R2 K1 ["message_stop"] [+7]
  GETTABLEKS R2 R0 K0 ["type"]
  JUMPIFEQKS R2 K2 ["error"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  DUPTABLE R3 K9 [{"isTerminalEventType"}]
  SETTABLEKS R2 R3 K8 ["isTerminalEventType"]
  RETURN R3 1
