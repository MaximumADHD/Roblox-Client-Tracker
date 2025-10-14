PROTO_0:
  DUPTABLE R0 K10 [{"setup", "createMockConversationContext", "createMockConversationIdContext", "createMockInputStateContext", "createMockLLMPackageContext", "createMockMcpClientContext", "createMockThreadIdContext", "ConversationBuilder", "TagSearch", "ToolSpy"}]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K0 ["setup"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["setup"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K1 ["createMockConversationContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["createMockConversationContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K2 ["createMockConversationIdContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["createMockConversationIdContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K3 ["createMockInputStateContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["createMockInputStateContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K4 ["createMockLLMPackageContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["createMockLLMPackageContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K5 ["createMockMcpClientContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["createMockMcpClientContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K0 ["setup"]
  GETTABLEKS R2 R3 K6 ["createMockThreadIdContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["createMockThreadIdContext"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K7 ["ConversationBuilder"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["ConversationBuilder"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K8 ["TagSearch"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["TagSearch"]
  GETIMPORT R1 K12 [require]
  GETIMPORT R3 K14 [script]
  GETTABLEKS R2 R3 K9 ["ToolSpy"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["ToolSpy"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
