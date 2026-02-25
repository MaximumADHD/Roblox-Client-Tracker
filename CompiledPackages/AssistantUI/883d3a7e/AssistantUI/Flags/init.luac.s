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
       40 GETTABLEKS                       R6 R7 K9 ["FFlagAssistantTestAutomation"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["FFlagAssistantUseVariantHttpTransport"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["FFlagCAP2592"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["FFlagConvAIMeshGen"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagDebugLogAssistantUI"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagEnableAssistantImageUpload"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagEnableAssistantScreenCapture"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagEnableGrepTool"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagEnablePrimitiveGenTool"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagMCPAssistantExternalAPIKey"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagMCPAssistantLongRunningToolCalls"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagMCPAssistantManagementMenu"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagMCPAssistantUseNewMarkdown"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagMarkdownStudioThemeColors"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FStringMCPAssistantCustomModelName"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FStringMCPAssistantURLOverride"]
      147 CALL                             R20 1 1
      148 DUPTABLE                         R21 K26 [{"FastSetting", "Shared"}]
      149 SETTABLEKS                       R0 R21 K4 ["FastSetting"]
      151 DUPTABLE                         R22 K27 [{"FFlagAssistantJsonEncoder", "FFlagAssistantMultipleExternalMCPServers", "FFlagConvAIMeshGen", "FFlagDebugLogAssistantUI", "FFlagEnableAssistantImageUpload", "FFlagEnableAssistantScreenCapture", "FFlagEnableGrepTool", "FFlagEnablePrimitiveGenTool", "FFlagMarkdownStudioThemeColors", "FFlagMCPAssistantExternalAPIKey", "FFlagMCPAssistantLongRunningToolCalls", "FFlagMCPAssistantManagementMenu", "FFlagMCPAssistantUseNewMarkdown", "FFlagAssistantUseVariantHttpTransport", "FFlagCAP2592", "FStringMCPAssistantCustomModelName", "FStringMCPAssistantURLOverride", "FFlagAssistantDebugMode", "FFlagAssistantMultipleChatSupport", "FFlagAssistantTestAutomation"}]
      152 SETTABLEKS                       R2 R22 K6 ["FFlagAssistantJsonEncoder"]
      154 SETTABLEKS                       R4 R22 K8 ["FFlagAssistantMultipleExternalMCPServers"]
      156 SETTABLEKS                       R8 R22 K12 ["FFlagConvAIMeshGen"]
      158 SETTABLEKS                       R9 R22 K13 ["FFlagDebugLogAssistantUI"]
      160 SETTABLEKS                       R10 R22 K14 ["FFlagEnableAssistantImageUpload"]
      162 SETTABLEKS                       R11 R22 K15 ["FFlagEnableAssistantScreenCapture"]
      164 SETTABLEKS                       R12 R22 K16 ["FFlagEnableGrepTool"]
      166 SETTABLEKS                       R13 R22 K17 ["FFlagEnablePrimitiveGenTool"]
      168 SETTABLEKS                       R18 R22 K22 ["FFlagMarkdownStudioThemeColors"]
      170 SETTABLEKS                       R14 R22 K18 ["FFlagMCPAssistantExternalAPIKey"]
      172 SETTABLEKS                       R15 R22 K19 ["FFlagMCPAssistantLongRunningToolCalls"]
      174 SETTABLEKS                       R16 R22 K20 ["FFlagMCPAssistantManagementMenu"]
      176 SETTABLEKS                       R17 R22 K21 ["FFlagMCPAssistantUseNewMarkdown"]
      178 SETTABLEKS                       R6 R22 K10 ["FFlagAssistantUseVariantHttpTransport"]
      180 SETTABLEKS                       R7 R22 K11 ["FFlagCAP2592"]
      182 SETTABLEKS                       R19 R22 K23 ["FStringMCPAssistantCustomModelName"]
      184 SETTABLEKS                       R20 R22 K24 ["FStringMCPAssistantURLOverride"]
      186 SETTABLEKS                       R1 R22 K5 ["FFlagAssistantDebugMode"]
      188 SETTABLEKS                       R3 R22 K7 ["FFlagAssistantMultipleChatSupport"]
      190 SETTABLEKS                       R5 R22 K9 ["FFlagAssistantTestAutomation"]
      192 SETTABLEKS                       R22 R21 K25 ["Shared"]
      194 RETURN                           R21 1
