PROTO_0:
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  LOADK R3 K4 ["Packages"]
  NAMECALL R1 R0 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K5 ["Dev"]
  NAMECALL R3 R1 K6 ["FindFirstChild"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["TestUtils can only be required in test environments"]
  GETIMPORT R2 K9 [assert]
  CALL R2 2 0
  DUPTABLE R2 K21 [{"setup", "createMockConversationContext", "createMockConversationIdContext", "createMockInputStateContext", "createMockLLMPackageContext", "createMockMcpClientContext", "createMockThreadIdContext", "ConversationBuilder", "TagSearch", "ToolSpy", "ScopedFastSetting"}]
  GETIMPORT R3 K23 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["setup"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["setup"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K11 ["createMockConversationContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["createMockConversationContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K12 ["createMockConversationIdContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K12 ["createMockConversationIdContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K13 ["createMockInputStateContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K13 ["createMockInputStateContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K14 ["createMockLLMPackageContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["createMockLLMPackageContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K15 ["createMockMcpClientContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K15 ["createMockMcpClientContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["setup"]
  GETTABLEKS R4 R5 K16 ["createMockThreadIdContext"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K16 ["createMockThreadIdContext"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K17 ["ConversationBuilder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["ConversationBuilder"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K18 ["TagSearch"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["TagSearch"]
  GETIMPORT R3 K23 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K19 ["ToolSpy"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K19 ["ToolSpy"]
  GETIMPORT R3 K23 [require]
  GETTABLEKS R5 R0 K24 ["Flags"]
  GETTABLEKS R4 R5 K20 ["ScopedFastSetting"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["ScopedFastSetting"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
