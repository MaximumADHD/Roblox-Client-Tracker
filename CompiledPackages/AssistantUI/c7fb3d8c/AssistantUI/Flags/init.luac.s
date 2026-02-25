MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["FastSetting"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["FFlagAssistantDebugMode"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["FFlagAssistantJsonEncoder"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["FFlagAssistantMultipleChatSupport"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["FFlagAssistantMultipleExternalMCPServers"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["FFlagAssistantPersistConversations"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["FFlagAssistantTestAutomation"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["FFlagAssistantUseVariantHttpTransport"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["FFlagCAP2592"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagConvAIMeshGen"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagDebugLogAssistantUI"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagEnableAssistantImageUpload"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagEnableAssistantScreenCapture"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagEnableGrepTool"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagEnablePrimitiveGenTool"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagMCPAssistantExternalAPIKey"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagMCPAssistantLongRunningToolCalls"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagMCPAssistantManagementMenu"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagMCPAssistantUseNewMarkdown"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FFlagMarkdownStudioThemeColors"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FStringMCPAssistantCustomModelName"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K1 [require]
      150 GETIMPORT                        R23 K3 [script]
      152 GETTABLEKS                       R22 R23 K25 ["FStringMCPAssistantURLOverride"]
      154 CALL                             R21 1 1
      155 DUPTABLE                         R22 K27 [{"FastSetting", "Shared"}]
      156 SETTABLEKS                       R0 R22 K4 ["FastSetting"]
      158 DUPTABLE                         R23 K28 [{"FFlagAssistantDebugMode", "FFlagAssistantJsonEncoder", "FFlagAssistantMultipleChatSupport", "FFlagAssistantMultipleExternalMCPServers", "FFlagAssistantPersistConversations", "FFlagAssistantTestAutomation", "FFlagAssistantUseVariantHttpTransport", "FFlagCAP2592", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantExternalAPIKey", "FFlagMCPAssistantLongRunningToolCalls", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride"}]
      159 SETTABLEKS                       R1 R23 K5 ["FFlagAssistantDebugMode"]
      161 SETTABLEKS                       R2 R23 K6 ["FFlagAssistantJsonEncoder"]
      163 SETTABLEKS                       R3 R23 K7 ["FFlagAssistantMultipleChatSupport"]
      165 SETTABLEKS                       R4 R23 K8 ["FFlagAssistantMultipleExternalMCPServers"]
      167 SETTABLEKS                       R5 R23 K9 ["FFlagAssistantPersistConversations"]
      169 SETTABLEKS                       R6 R23 K10 ["FFlagAssistantTestAutomation"]
      171 SETTABLEKS                       R7 R23 K11 ["FFlagAssistantUseVariantHttpTransport"]
      173 SETTABLEKS                       R8 R23 K12 ["FFlagCAP2592"]
      175 SETTABLEKS                       R9 R23 K13 ["FFlagConvAIMeshGen"]
      177 SETTABLEKS                       R10 R23 K14 ["FFlagDebugLogAssistantUI"]
      179 SETTABLEKS                       R11 R23 K15 ["FFlagEnableAssistantImageUpload"]
      181 SETTABLEKS                       R12 R23 K16 ["FFlagEnableAssistantScreenCapture"]
      183 SETTABLEKS                       R13 R23 K17 ["FFlagEnableGrepTool"]
      185 SETTABLEKS                       R14 R23 K18 ["FFlagEnablePrimitiveGenTool"]
      187 SETTABLEKS                       R19 R23 K23 ["FFlagMarkdownStudioThemeColors"]
      189 SETTABLEKS                       R15 R23 K19 ["FFlagMCPAssistantExternalAPIKey"]
      191 SETTABLEKS                       R16 R23 K20 ["FFlagMCPAssistantLongRunningToolCalls"]
      193 SETTABLEKS                       R17 R23 K21 ["FFlagMCPAssistantManagementMenu"]
      195 SETTABLEKS                       R18 R23 K22 ["FFlagMCPAssistantUseNewMarkdown"]
      197 SETTABLEKS                       R20 R23 K24 ["FStringMCPAssistantCustomModelName"]
      199 SETTABLEKS                       R21 R23 K25 ["FStringMCPAssistantURLOverride"]
      201 SETTABLEKS                       R23 R22 K26 ["Shared"]
      203 RETURN                           R22 1
