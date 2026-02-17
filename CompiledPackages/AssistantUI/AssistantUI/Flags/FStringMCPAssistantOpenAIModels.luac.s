PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MCPAssistantOpenAIModels"]
  LOADK R3 K3 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
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
  GETTABLEKS R1 R0 K9 ["createFString"]
  LOADK R2 K10 ["MCPAssistantOpenAIModels"]
  LOADK R3 K11 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
  CALL R1 2 -1
  RETURN R1 -1
