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
       61 GETTABLEKS                       R9 R10 K12 ["FFlagAssistantTestAutomation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagAssistantUseNewMeshGenTool"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagAssistantUseVariantHttpTransport"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagConvAIMeshGen"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagDebugLogAssistantUI"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagEnableAssistantImageUpload"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagEnableAssistantScreenCapture"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagEnableGrepTool"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagEnablePrimitiveGenTool"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagEnableSubagents"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagExternalMCPUI"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FFlagMCPAssistantManagementMenu"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FFlagMCPAssistantUseNewMarkdown"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K1 [require]
      150 GETIMPORT                        R23 K3 [script]
      152 GETTABLEKS                       R22 R23 K25 ["FFlagMarkdownStudioThemeColors"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K1 [require]
      157 GETIMPORT                        R24 K3 [script]
      159 GETTABLEKS                       R23 R24 K26 ["FStringMCPAssistantCustomModelName"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K1 [require]
      164 GETIMPORT                        R25 K3 [script]
      166 GETTABLEKS                       R24 R25 K27 ["FStringMCPAssistantURLOverride"]
      168 CALL                             R23 1 1
      169 DUPTABLE                         R24 K29 [{"FastSetting", "Shared"}]
      170 SETTABLEKS                       R0 R24 K4 ["FastSetting"]
      172 DUPTABLE                         R25 K30 [{"FFlagAssistantDebugMode", "FFlagAssistantMultiEditConfirmation", "FFlagAssistantMultiEditExternalClient", "FFlagAssistantJsonEncoder", "FFlagAssistantMultipleChatSupport", "FFlagAssistantMultipleExternalMCPServers", "FFlagAssistantPersistConversations", "FFlagAssistantTestAutomation", "FFlagAssistantUseNewMeshGenTool", "FFlagAssistantUseVariantHttpTransport", "FFlagExternalMCPUI", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagEnableSubagents", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride"}]
      173 SETTABLEKS                       R1 R25 K5 ["FFlagAssistantDebugMode"]
      175 SETTABLEKS                       R3 R25 K7 ["FFlagAssistantMultiEditConfirmation"]
      177 SETTABLEKS                       R4 R25 K8 ["FFlagAssistantMultiEditExternalClient"]
      179 SETTABLEKS                       R2 R25 K6 ["FFlagAssistantJsonEncoder"]
      181 SETTABLEKS                       R5 R25 K9 ["FFlagAssistantMultipleChatSupport"]
      183 SETTABLEKS                       R6 R25 K10 ["FFlagAssistantMultipleExternalMCPServers"]
      185 SETTABLEKS                       R7 R25 K11 ["FFlagAssistantPersistConversations"]
      187 SETTABLEKS                       R8 R25 K12 ["FFlagAssistantTestAutomation"]
      189 SETTABLEKS                       R9 R25 K13 ["FFlagAssistantUseNewMeshGenTool"]
      191 SETTABLEKS                       R10 R25 K14 ["FFlagAssistantUseVariantHttpTransport"]
      193 SETTABLEKS                       R18 R25 K22 ["FFlagExternalMCPUI"]
      195 SETTABLEKS                       R11 R25 K15 ["FFlagConvAIMeshGen"]
      197 SETTABLEKS                       R12 R25 K16 ["FFlagDebugLogAssistantUI"]
      199 SETTABLEKS                       R13 R25 K17 ["FFlagEnableAssistantImageUpload"]
      201 SETTABLEKS                       R14 R25 K18 ["FFlagEnableAssistantScreenCapture"]
      203 SETTABLEKS                       R15 R25 K19 ["FFlagEnableGrepTool"]
      205 SETTABLEKS                       R16 R25 K20 ["FFlagEnablePrimitiveGenTool"]
      207 SETTABLEKS                       R17 R25 K21 ["FFlagEnableSubagents"]
      209 SETTABLEKS                       R21 R25 K25 ["FFlagMarkdownStudioThemeColors"]
      211 SETTABLEKS                       R19 R25 K23 ["FFlagMCPAssistantManagementMenu"]
      213 SETTABLEKS                       R20 R25 K24 ["FFlagMCPAssistantUseNewMarkdown"]
      215 SETTABLEKS                       R22 R25 K26 ["FStringMCPAssistantCustomModelName"]
      217 SETTABLEKS                       R23 R25 K27 ["FStringMCPAssistantURLOverride"]
      219 SETTABLEKS                       R25 R24 K28 ["Shared"]
      221 RETURN                           R24 1
