MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["FastSetting"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["FFlagAssistantDMNetworkIdentity"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["FFlagAssistantDebugMode"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["FFlagAssistantJsonEncoder"]
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
       54 GETTABLEKS                       R8 R9 K11 ["FFlagAssistantNewOpenAIAdapter"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["FFlagAssistantPersistConversations"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagAssistantSupportSlashCommandCancellation"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagAssistantTestAutomation"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagAssistantTestModeDropdown"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagAssistantTestModeSystemReminder"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagAssistantTestModeToolArgPatch"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagAssistantToolExistenceRefactor"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagAssistantUseNewMeshGenTool"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagAssistantUseVariantHttpTransport"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagConvAIMeshGen"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagDebugLogAssistantUI"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FFlagDisableScreenCaptureForDefaultModel"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FFlagEnableAssistantImageUpload"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K1 [require]
      150 GETIMPORT                        R23 K3 [script]
      152 GETTABLEKS                       R22 R23 K25 ["FFlagEnableAssistantScreenCapture"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K1 [require]
      157 GETIMPORT                        R24 K3 [script]
      159 GETTABLEKS                       R23 R24 K26 ["FFlagEnableGrepTool"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K1 [require]
      164 GETIMPORT                        R25 K3 [script]
      166 GETTABLEKS                       R24 R25 K27 ["FFlagEnablePrimitiveGenTool"]
      168 CALL                             R23 1 1
      169 GETIMPORT                        R24 K1 [require]
      171 GETIMPORT                        R26 K3 [script]
      173 GETTABLEKS                       R25 R26 K28 ["FFlagEnableSkills"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K1 [require]
      178 GETIMPORT                        R27 K3 [script]
      180 GETTABLEKS                       R26 R27 K29 ["FFlagEnableSubagents"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K1 [require]
      185 GETIMPORT                        R28 K3 [script]
      187 GETTABLEKS                       R27 R28 K30 ["FFlagExternalMCPUI"]
      189 CALL                             R26 1 1
      190 GETIMPORT                        R27 K1 [require]
      192 GETIMPORT                        R29 K3 [script]
      194 GETTABLEKS                       R28 R29 K31 ["FFlagMCPAssistantManagementMenu"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K1 [require]
      199 GETIMPORT                        R30 K3 [script]
      201 GETTABLEKS                       R29 R30 K32 ["FFlagMCPAssistantUseNewMarkdown"]
      203 CALL                             R28 1 1
      204 GETIMPORT                        R29 K1 [require]
      206 GETIMPORT                        R31 K3 [script]
      208 GETTABLEKS                       R30 R31 K33 ["FFlagMarkdownStudioThemeColors"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K1 [require]
      213 GETIMPORT                        R32 K3 [script]
      215 GETTABLEKS                       R31 R32 K34 ["FStringMCPAssistantCustomModelName"]
      217 CALL                             R30 1 1
      218 GETIMPORT                        R31 K1 [require]
      220 GETIMPORT                        R33 K3 [script]
      222 GETTABLEKS                       R32 R33 K35 ["FStringMCPAssistantURLOverride"]
      224 CALL                             R31 1 1
      225 GETIMPORT                        R32 K1 [require]
      227 GETIMPORT                        R34 K3 [script]
      229 GETTABLEKS                       R33 R34 K36 ["FStringSubagentURLOverride"]
      231 CALL                             R32 1 1
      232 DUPTABLE                         R33 K38 [{"FastSetting", "Shared"}]
      233 SETTABLEKS                       R0 R33 K4 ["FastSetting"]
      235 DUPTABLE                         R34 K39 [{"FFlagAssistantDebugMode", "FFlagAssistantMultiEditExternalClient", "FFlagAssistantJsonEncoder", "FFlagAssistantMultipleChatSupport", "FFlagAssistantMultipleExternalMCPServers", "FFlagAssistantPersistConversations", "FFlagAssistantSupportSlashCommandCancellation", "FFlagAssistantTestAutomation", "FFlagAssistantToolExistenceRefactor", "FFlagAssistantUseNewMeshGenTool", "FFlagAssistantUseVariantHttpTransport", "FFlagExternalMCPUI", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagEnableSkills", "FFlagEnableSubagents", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride", "FStringSubagentURLOverride", "FFlagDisableScreenCaptureForDefaultModel", "FFlagAssistantDMNetworkIdentity", "FFlagAssistantNewOpenAIAdapter", "FFlagAssistantTestModeDropdown", "FFlagAssistantTestModeToolArgPatch", "FFlagAssistantTestModeSystemReminder"}]
      236 SETTABLEKS                       R2 R34 K6 ["FFlagAssistantDebugMode"]
      238 SETTABLEKS                       R4 R34 K8 ["FFlagAssistantMultiEditExternalClient"]
      240 SETTABLEKS                       R3 R34 K7 ["FFlagAssistantJsonEncoder"]
      242 SETTABLEKS                       R5 R34 K9 ["FFlagAssistantMultipleChatSupport"]
      244 SETTABLEKS                       R6 R34 K10 ["FFlagAssistantMultipleExternalMCPServers"]
      246 SETTABLEKS                       R8 R34 K12 ["FFlagAssistantPersistConversations"]
      248 SETTABLEKS                       R9 R34 K13 ["FFlagAssistantSupportSlashCommandCancellation"]
      250 SETTABLEKS                       R10 R34 K14 ["FFlagAssistantTestAutomation"]
      252 SETTABLEKS                       R14 R34 K18 ["FFlagAssistantToolExistenceRefactor"]
      254 SETTABLEKS                       R15 R34 K19 ["FFlagAssistantUseNewMeshGenTool"]
      256 SETTABLEKS                       R16 R34 K20 ["FFlagAssistantUseVariantHttpTransport"]
      258 SETTABLEKS                       R26 R34 K30 ["FFlagExternalMCPUI"]
      260 SETTABLEKS                       R17 R34 K21 ["FFlagConvAIMeshGen"]
      262 SETTABLEKS                       R18 R34 K22 ["FFlagDebugLogAssistantUI"]
      264 SETTABLEKS                       R20 R34 K24 ["FFlagEnableAssistantImageUpload"]
      266 SETTABLEKS                       R21 R34 K25 ["FFlagEnableAssistantScreenCapture"]
      268 SETTABLEKS                       R22 R34 K26 ["FFlagEnableGrepTool"]
      270 SETTABLEKS                       R23 R34 K27 ["FFlagEnablePrimitiveGenTool"]
      272 SETTABLEKS                       R24 R34 K28 ["FFlagEnableSkills"]
      274 SETTABLEKS                       R25 R34 K29 ["FFlagEnableSubagents"]
      276 SETTABLEKS                       R29 R34 K33 ["FFlagMarkdownStudioThemeColors"]
      278 SETTABLEKS                       R27 R34 K31 ["FFlagMCPAssistantManagementMenu"]
      280 SETTABLEKS                       R28 R34 K32 ["FFlagMCPAssistantUseNewMarkdown"]
      282 SETTABLEKS                       R30 R34 K34 ["FStringMCPAssistantCustomModelName"]
      284 SETTABLEKS                       R31 R34 K35 ["FStringMCPAssistantURLOverride"]
      286 SETTABLEKS                       R32 R34 K36 ["FStringSubagentURLOverride"]
      288 SETTABLEKS                       R19 R34 K23 ["FFlagDisableScreenCaptureForDefaultModel"]
      290 SETTABLEKS                       R1 R34 K5 ["FFlagAssistantDMNetworkIdentity"]
      292 SETTABLEKS                       R7 R34 K11 ["FFlagAssistantNewOpenAIAdapter"]
      294 SETTABLEKS                       R11 R34 K15 ["FFlagAssistantTestModeDropdown"]
      296 SETTABLEKS                       R13 R34 K17 ["FFlagAssistantTestModeToolArgPatch"]
      298 SETTABLEKS                       R12 R34 K16 ["FFlagAssistantTestModeSystemReminder"]
      300 SETTABLEKS                       R34 R33 K37 ["Shared"]
      302 RETURN                           R33 1
