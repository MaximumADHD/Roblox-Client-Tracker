PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugAssistantUseNewMarkdown"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["FastSetting"]
  CALL R0 1 1
  GETIMPORT R1 K7 [pcall]
  DUPCLOSURE R2 K8 [PROTO_0]
  CALL R1 1 0
  GETTABLEKS R1 R0 K9 ["createFFlag"]
  LOADK R2 K10 ["DebugAssistantUseNewMarkdown"]
  LOADB R3 0
  CALL R1 2 -1
  RETURN R1 -1
