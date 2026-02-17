MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["FastSetting"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["FFlagAssistantDebugMode"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["FFlagAssistantJsonEncoder"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["FFlagAssistantMultipleChatSupport"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["FFlagAssistantMultipleExternalMCPServers"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["FFlagAssistantTestAutomation"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["FFlagAssistantUseVariantHttpTransport"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["FFlagCAP2592"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K12 ["FFlagConvAIMeshGen"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["FFlagDebugLogAssistantUI"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K14 ["FFlagEnableAssistantImageUpload"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K15 ["FFlagEnableAssistantScreenCapture"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K16 ["FFlagEnableGrepTool"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K17 ["FFlagEnablePrimitiveGenTool"]
  CALL R13 1 1
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K18 ["FFlagMCPAssistantExternalAPIKey"]
  CALL R14 1 1
  GETIMPORT R15 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K19 ["FFlagMCPAssistantLongRunningToolCalls"]
  CALL R15 1 1
  GETIMPORT R16 K1 [require]
  GETIMPORT R18 K3 [script]
  GETTABLEKS R17 R18 K20 ["FFlagMCPAssistantManagementMenu"]
  CALL R16 1 1
  GETIMPORT R17 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K21 ["FFlagMCPAssistantUseNewMarkdown"]
  CALL R17 1 1
  GETIMPORT R18 K1 [require]
  GETIMPORT R20 K3 [script]
  GETTABLEKS R19 R20 K22 ["FFlagMarkdownStudioThemeColors"]
  CALL R18 1 1
  GETIMPORT R19 K1 [require]
  GETIMPORT R21 K3 [script]
  GETTABLEKS R20 R21 K23 ["FStringMCPAssistantCustomModelName"]
  CALL R19 1 1
  GETIMPORT R20 K1 [require]
  GETIMPORT R22 K3 [script]
  GETTABLEKS R21 R22 K24 ["FStringMCPAssistantURLOverride"]
  CALL R20 1 1
  DUPTABLE R21 K26 [{"FastSetting", "Shared"}]
  SETTABLEKS R0 R21 K4 ["FastSetting"]
  DUPTABLE R22 K27 [{"FFlagAssistantJsonEncoder", "FFlagAssistantMultipleExternalMCPServers", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantExternalAPIKey", "FFlagMCPAssistantLongRunningToolCalls", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FFlagAssistantUseVariantHttpTransport", "FFlagCAP2592", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride", "FFlagAssistantDebugMode", "FFlagAssistantMultipleChatSupport", "FFlagAssistantTestAutomation"}]
  SETTABLEKS R2 R22 K6 ["FFlagAssistantJsonEncoder"]
  SETTABLEKS R4 R22 K8 ["FFlagAssistantMultipleExternalMCPServers"]
  SETTABLEKS R8 R22 K12 ["FFlagConvAIMeshGen"]
  SETTABLEKS R9 R22 K13 ["FFlagDebugLogAssistantUI"]
  SETTABLEKS R10 R22 K14 ["FFlagEnableAssistantImageUpload"]
  SETTABLEKS R11 R22 K15 ["FFlagEnableAssistantScreenCapture"]
  SETTABLEKS R12 R22 K16 ["FFlagEnableGrepTool"]
  SETTABLEKS R13 R22 K17 ["FFlagEnablePrimitiveGenTool"]
  SETTABLEKS R18 R22 K22 ["FFlagMarkdownStudioThemeColors"]
  SETTABLEKS R14 R22 K18 ["FFlagMCPAssistantExternalAPIKey"]
  SETTABLEKS R15 R22 K19 ["FFlagMCPAssistantLongRunningToolCalls"]
  SETTABLEKS R16 R22 K20 ["FFlagMCPAssistantManagementMenu"]
  SETTABLEKS R17 R22 K21 ["FFlagMCPAssistantUseNewMarkdown"]
  SETTABLEKS R6 R22 K10 ["FFlagAssistantUseVariantHttpTransport"]
  SETTABLEKS R7 R22 K11 ["FFlagCAP2592"]
  SETTABLEKS R19 R22 K23 ["FStringMCPAssistantCustomModelName"]
  SETTABLEKS R20 R22 K24 ["FStringMCPAssistantURLOverride"]
  SETTABLEKS R1 R22 K5 ["FFlagAssistantDebugMode"]
  SETTABLEKS R3 R22 K7 ["FFlagAssistantMultipleChatSupport"]
  SETTABLEKS R5 R22 K9 ["FFlagAssistantTestAutomation"]
  SETTABLEKS R22 R21 K25 ["Shared"]
  RETURN R21 1
