PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOTEQKS R0 K0 ["Studio"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  DUPTABLE R2 K3 [{"enabled", "reasonDisabled"}]
  SETTABLEKS R1 R2 K1 ["enabled"]
  JUMPIF R1 [+2]
  LOADK R3 K4 ["byok_disabled"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["reasonDisabled"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Hooks"]
  GETTABLEKS R2 R3 K7 ["useLLMProvider"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
