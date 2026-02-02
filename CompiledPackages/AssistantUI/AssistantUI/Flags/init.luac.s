MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["FastSetting"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["FFlagAssistantJsonEncoder"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["FFlagAssistantLogRequestStop"]
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
  GETTABLEKS R6 R7 K9 ["FFlagAssistantUseVariantHttpTransport"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["FFlagConvAIMeshGen"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["FFlagDebugLogAssistantUI"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K12 ["FFlagEnableAssistantImageUpload"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["FFlagEnableAssistantScreenCapture"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K14 ["FFlagEnableGameTreeTool"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K15 ["FFlagEnableGrepTool"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K16 ["FFlagEnableInspectInstanceTool"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K17 ["FFlagMCPAssistantExternalAPIKey"]
  CALL R13 1 1
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K18 ["FFlagMCPAssistantLongRunningToolCalls"]
  CALL R14 1 1
  GETIMPORT R15 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K19 ["FFlagMCPAssistantManagementMenu"]
  CALL R15 1 1
  GETIMPORT R16 K1 [require]
  GETIMPORT R18 K3 [script]
  GETTABLEKS R17 R18 K20 ["FFlagMCPAssistantUseNewMarkdown"]
  CALL R16 1 1
  GETIMPORT R17 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K21 ["FFlagMarkdownStudioThemeColors"]
  CALL R17 1 1
  GETIMPORT R18 K1 [require]
  GETIMPORT R20 K3 [script]
  GETTABLEKS R19 R20 K22 ["FStringMCPAssistantCustomModelName"]
  CALL R18 1 1
  GETIMPORT R19 K1 [require]
  GETIMPORT R21 K3 [script]
  GETTABLEKS R20 R21 K23 ["FStringMCPAssistantURLOverride"]
  CALL R19 1 1
  DUPTABLE R20 K25 [{"FastSetting", "Shared"}]
  SETTABLEKS R0 R20 K4 ["FastSetting"]
  DUPTABLE R21 K26 [{"FFlagAssistantJsonEncoder", "FFlagAssistantLogRequestStop", "FFlagAssistantMultipleExternalMCPServers", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGameTreeTool", "FFlagEnableGrepTool", "FFlagEnableInspectInstanceTool", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantExternalAPIKey", "FFlagMCPAssistantLongRunningToolCalls", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FFlagAssistantUseVariantHttpTransport", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride", "FFlagAssistantMultipleChatSupport"}]
  SETTABLEKS R1 R21 K5 ["FFlagAssistantJsonEncoder"]
  SETTABLEKS R2 R21 K6 ["FFlagAssistantLogRequestStop"]
  SETTABLEKS R4 R21 K8 ["FFlagAssistantMultipleExternalMCPServers"]
  SETTABLEKS R6 R21 K10 ["FFlagConvAIMeshGen"]
  SETTABLEKS R7 R21 K11 ["FFlagDebugLogAssistantUI"]
  SETTABLEKS R8 R21 K12 ["FFlagEnableAssistantImageUpload"]
  SETTABLEKS R9 R21 K13 ["FFlagEnableAssistantScreenCapture"]
  SETTABLEKS R10 R21 K14 ["FFlagEnableGameTreeTool"]
  SETTABLEKS R11 R21 K15 ["FFlagEnableGrepTool"]
  SETTABLEKS R12 R21 K16 ["FFlagEnableInspectInstanceTool"]
  SETTABLEKS R17 R21 K21 ["FFlagMarkdownStudioThemeColors"]
  SETTABLEKS R13 R21 K17 ["FFlagMCPAssistantExternalAPIKey"]
  SETTABLEKS R14 R21 K18 ["FFlagMCPAssistantLongRunningToolCalls"]
  SETTABLEKS R15 R21 K19 ["FFlagMCPAssistantManagementMenu"]
  SETTABLEKS R16 R21 K20 ["FFlagMCPAssistantUseNewMarkdown"]
  SETTABLEKS R5 R21 K9 ["FFlagAssistantUseVariantHttpTransport"]
  SETTABLEKS R18 R21 K22 ["FStringMCPAssistantCustomModelName"]
  SETTABLEKS R19 R21 K23 ["FStringMCPAssistantURLOverride"]
  SETTABLEKS R3 R21 K7 ["FFlagAssistantMultipleChatSupport"]
  SETTABLEKS R21 R20 K24 ["Shared"]
  RETURN R20 1
