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
       26 GETTABLEKS                       R4 R5 K7 ["FFlagAssistantMultiEditConfirmation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["FFlagAssistantMultiEditExternalClient"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["FFlagAssistantMultipleChatSupport"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["FFlagAssistantMultipleExternalMCPServers"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["FFlagAssistantPersistConversations"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["FFlagAssistantSupportSlashCommandCancellation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagAssistantTestAutomation"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagAssistantUseNewMeshGenTool"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagAssistantUseVariantHttpTransport"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagConvAIMeshGen"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagDebugLogAssistantUI"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagDisableScreenCaptureForDefaultModel"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagEnableAssistantImageUpload"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagEnableAssistantScreenCapture"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagEnableGrepTool"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagEnablePrimitiveGenTool"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FFlagEnableSubagents"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FFlagExternalMCPUI"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K1 [require]
      150 GETIMPORT                        R23 K3 [script]
      152 GETTABLEKS                       R22 R23 K25 ["FFlagMCPAssistantManagementMenu"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K1 [require]
      157 GETIMPORT                        R24 K3 [script]
      159 GETTABLEKS                       R23 R24 K26 ["FFlagMCPAssistantUseNewMarkdown"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K1 [require]
      164 GETIMPORT                        R25 K3 [script]
      166 GETTABLEKS                       R24 R25 K27 ["FFlagMarkdownStudioThemeColors"]
      168 CALL                             R23 1 1
      169 GETIMPORT                        R24 K1 [require]
      171 GETIMPORT                        R26 K3 [script]
      173 GETTABLEKS                       R25 R26 K28 ["FStringMCPAssistantCustomModelName"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K1 [require]
      178 GETIMPORT                        R27 K3 [script]
      180 GETTABLEKS                       R26 R27 K29 ["FStringMCPAssistantURLOverride"]
      182 CALL                             R25 1 1
      183 DUPTABLE                         R26 K31 [{"FastSetting", "Shared"}]
      184 SETTABLEKS                       R0 R26 K4 ["FastSetting"]
      186 DUPTABLE                         R27 K32 [{"FFlagAssistantDebugMode", "FFlagAssistantMultiEditConfirmation", "FFlagAssistantMultiEditExternalClient", "FFlagAssistantJsonEncoder", "FFlagAssistantMultipleChatSupport", "FFlagAssistantMultipleExternalMCPServers", "FFlagAssistantPersistConversations", "FFlagAssistantSupportSlashCommandCancellation", "FFlagAssistantTestAutomation", "FFlagAssistantUseNewMeshGenTool", "FFlagAssistantUseVariantHttpTransport", "FFlagExternalMCPUI", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagEnableSubagents", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride", "FFlagDisableScreenCaptureForDefaultModel"}]
      187 SETTABLEKS                       R1 R27 K5 ["FFlagAssistantDebugMode"]
      189 SETTABLEKS                       R3 R27 K7 ["FFlagAssistantMultiEditConfirmation"]
      191 SETTABLEKS                       R4 R27 K8 ["FFlagAssistantMultiEditExternalClient"]
      193 SETTABLEKS                       R2 R27 K6 ["FFlagAssistantJsonEncoder"]
      195 SETTABLEKS                       R5 R27 K9 ["FFlagAssistantMultipleChatSupport"]
      197 SETTABLEKS                       R6 R27 K10 ["FFlagAssistantMultipleExternalMCPServers"]
      199 SETTABLEKS                       R7 R27 K11 ["FFlagAssistantPersistConversations"]
      201 SETTABLEKS                       R8 R27 K12 ["FFlagAssistantSupportSlashCommandCancellation"]
      203 SETTABLEKS                       R9 R27 K13 ["FFlagAssistantTestAutomation"]
      205 SETTABLEKS                       R10 R27 K14 ["FFlagAssistantUseNewMeshGenTool"]
      207 SETTABLEKS                       R11 R27 K15 ["FFlagAssistantUseVariantHttpTransport"]
      209 SETTABLEKS                       R20 R27 K24 ["FFlagExternalMCPUI"]
      211 SETTABLEKS                       R12 R27 K16 ["FFlagConvAIMeshGen"]
      213 SETTABLEKS                       R13 R27 K17 ["FFlagDebugLogAssistantUI"]
      215 SETTABLEKS                       R15 R27 K19 ["FFlagEnableAssistantImageUpload"]
      217 SETTABLEKS                       R16 R27 K20 ["FFlagEnableAssistantScreenCapture"]
      219 SETTABLEKS                       R17 R27 K21 ["FFlagEnableGrepTool"]
      221 SETTABLEKS                       R18 R27 K22 ["FFlagEnablePrimitiveGenTool"]
      223 SETTABLEKS                       R19 R27 K23 ["FFlagEnableSubagents"]
      225 SETTABLEKS                       R23 R27 K27 ["FFlagMarkdownStudioThemeColors"]
      227 SETTABLEKS                       R21 R27 K25 ["FFlagMCPAssistantManagementMenu"]
      229 SETTABLEKS                       R22 R27 K26 ["FFlagMCPAssistantUseNewMarkdown"]
      231 SETTABLEKS                       R24 R27 K28 ["FStringMCPAssistantCustomModelName"]
      233 SETTABLEKS                       R25 R27 K29 ["FStringMCPAssistantURLOverride"]
      235 SETTABLEKS                       R14 R27 K18 ["FFlagDisableScreenCaptureForDefaultModel"]
      237 SETTABLEKS                       R27 R26 K30 ["Shared"]
      239 RETURN                           R26 1
