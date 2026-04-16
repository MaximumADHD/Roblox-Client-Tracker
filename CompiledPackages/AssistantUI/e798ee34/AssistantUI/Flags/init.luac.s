MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["FastSetting"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["FFlagAssistantAgentModeSystemReminder"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["FFlagAssistantAgentModeToolArgPatch"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["FFlagAssistantDMNetworkIdentity"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["FFlagAssistantDebugMode"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["FFlagAssistantDynamicToolDescription"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["FFlagAssistantFeedbackView"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["FFlagAssistantMultiEditExternalClient"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["FFlagAssistantMultipleChatPersistence"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["FFlagAssistantMultipleExternalMCPServers"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["FFlagAssistantNewOpenAIAdapter"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["FFlagAssistantPlanMode"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["FFlagAssistantQuestionAnswerTool"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["FFlagAssistantSupportSlashCommandCancellation"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["FFlagAssistantSystemReminderRefactor"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["FFlagAssistantTestAutomation"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K1 [require]
      115 GETIMPORT                        R18 K3 [script]
      117 GETTABLEKS                       R17 R18 K20 ["FFlagAssistantTestModeDropdown"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K1 [require]
      122 GETIMPORT                        R19 K3 [script]
      124 GETTABLEKS                       R18 R19 K21 ["FFlagAssistantTestModeSystemReminder"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K1 [require]
      129 GETIMPORT                        R20 K3 [script]
      131 GETTABLEKS                       R19 R20 K22 ["FFlagAssistantTestModeToolArgPatch"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K1 [require]
      136 GETIMPORT                        R21 K3 [script]
      138 GETTABLEKS                       R20 R21 K23 ["FFlagAssistantToolExistenceRefactor"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K1 [require]
      143 GETIMPORT                        R22 K3 [script]
      145 GETTABLEKS                       R21 R22 K24 ["FFlagAssistantUseNewCreatorStoreTools"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K1 [require]
      150 GETIMPORT                        R23 K3 [script]
      152 GETTABLEKS                       R22 R23 K25 ["FFlagAssistantUseNewMeshGenTool"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K1 [require]
      157 GETIMPORT                        R24 K3 [script]
      159 GETTABLEKS                       R23 R24 K26 ["FFlagAssistantUseVariantHttpTransport"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K1 [require]
      164 GETIMPORT                        R25 K3 [script]
      166 GETTABLEKS                       R24 R25 K27 ["FFlagConvAIMeshGen"]
      168 CALL                             R23 1 1
      169 GETIMPORT                        R24 K1 [require]
      171 GETIMPORT                        R26 K3 [script]
      173 GETTABLEKS                       R25 R26 K28 ["FFlagDebugLogAssistantUI"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K1 [require]
      178 GETIMPORT                        R27 K3 [script]
      180 GETTABLEKS                       R26 R27 K29 ["FFlagDisableExploreSubagent"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K1 [require]
      185 GETIMPORT                        R28 K3 [script]
      187 GETTABLEKS                       R27 R28 K30 ["FFlagDisableScreenCaptureForDefaultModel"]
      189 CALL                             R26 1 1
      190 GETIMPORT                        R27 K1 [require]
      192 GETIMPORT                        R29 K3 [script]
      194 GETTABLEKS                       R28 R29 K31 ["FFlagEnableAssistantImageUpload"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K1 [require]
      199 GETIMPORT                        R30 K3 [script]
      201 GETTABLEKS                       R29 R30 K32 ["FFlagEnableGrepTool"]
      203 CALL                             R28 1 1
      204 GETIMPORT                        R29 K1 [require]
      206 GETIMPORT                        R31 K3 [script]
      208 GETTABLEKS                       R30 R31 K33 ["FFlagEnableHttpGetTool"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K1 [require]
      213 GETIMPORT                        R32 K3 [script]
      215 GETTABLEKS                       R31 R32 K34 ["FFlagEnablePlaytestSubagent"]
      217 CALL                             R30 1 1
      218 GETIMPORT                        R31 K1 [require]
      220 GETIMPORT                        R33 K3 [script]
      222 GETTABLEKS                       R32 R33 K35 ["FFlagEnablePrimitiveGenTool"]
      224 CALL                             R31 1 1
      225 GETIMPORT                        R32 K1 [require]
      227 GETIMPORT                        R34 K3 [script]
      229 GETTABLEKS                       R33 R34 K36 ["FFlagEnableSkills"]
      231 CALL                             R32 1 1
      232 GETIMPORT                        R33 K1 [require]
      234 GETIMPORT                        R35 K3 [script]
      236 GETTABLEKS                       R34 R35 K37 ["FFlagEnableSubagents"]
      238 CALL                             R33 1 1
      239 GETIMPORT                        R34 K1 [require]
      241 GETIMPORT                        R36 K3 [script]
      243 GETTABLEKS                       R35 R36 K38 ["FFlagEnableWaitJobFinishedTool"]
      245 CALL                             R34 1 1
      246 GETIMPORT                        R35 K1 [require]
      248 GETIMPORT                        R37 K3 [script]
      250 GETTABLEKS                       R36 R37 K39 ["FFlagExternalMCPUI"]
      252 CALL                             R35 1 1
      253 GETIMPORT                        R36 K1 [require]
      255 GETIMPORT                        R38 K3 [script]
      257 GETTABLEKS                       R37 R38 K40 ["FFlagMCPAssistantManagementMenu"]
      259 CALL                             R36 1 1
      260 GETIMPORT                        R37 K1 [require]
      262 GETIMPORT                        R39 K3 [script]
      264 GETTABLEKS                       R38 R39 K41 ["FFlagMCPAssistantUseNewMarkdown"]
      266 CALL                             R37 1 1
      267 GETIMPORT                        R38 K1 [require]
      269 GETIMPORT                        R40 K3 [script]
      271 GETTABLEKS                       R39 R40 K42 ["FFlagMarkdownStudioThemeColors"]
      273 CALL                             R38 1 1
      274 GETIMPORT                        R39 K1 [require]
      276 GETIMPORT                        R41 K3 [script]
      278 GETTABLEKS                       R40 R41 K43 ["FFlagMigrateSubagentExperimentsToFlagRegister"]
      280 CALL                             R39 1 1
      281 GETIMPORT                        R40 K1 [require]
      283 GETIMPORT                        R42 K3 [script]
      285 GETTABLEKS                       R41 R42 K44 ["FFlagProceduralModel"]
      287 CALL                             R40 1 1
      288 GETIMPORT                        R41 K1 [require]
      290 GETIMPORT                        R43 K3 [script]
      292 GETTABLEKS                       R42 R43 K45 ["FFlagRenameGenerateCommands"]
      294 CALL                             R41 1 1
      295 GETIMPORT                        R42 K1 [require]
      297 GETIMPORT                        R44 K3 [script]
      299 GETTABLEKS                       R43 R44 K46 ["FFlagSandboxProceduralScript"]
      301 CALL                             R42 1 1
      302 GETIMPORT                        R43 K1 [require]
      304 GETIMPORT                        R45 K3 [script]
      306 GETTABLEKS                       R44 R45 K47 ["FStringMCPAssistantCustomModelName"]
      308 CALL                             R43 1 1
      309 GETIMPORT                        R44 K1 [require]
      311 GETIMPORT                        R46 K3 [script]
      313 GETTABLEKS                       R45 R46 K48 ["FStringMCPAssistantURLOverride"]
      315 CALL                             R44 1 1
      316 GETIMPORT                        R45 K1 [require]
      318 GETIMPORT                        R47 K3 [script]
      320 GETTABLEKS                       R46 R47 K49 ["FStringSubagentURLOverride"]
      322 CALL                             R45 1 1
      323 GETIMPORT                        R46 K1 [require]
      325 GETIMPORT                        R48 K3 [script]
      327 GETTABLEKS                       R47 R48 K50 ["getAssistantModeEnabled"]
      329 CALL                             R46 1 1
      330 GETIMPORT                        R47 K1 [require]
      332 GETIMPORT                        R49 K3 [script]
      334 GETTABLEKS                       R48 R49 K51 ["getIsTestModeSystemRemindersEnabled"]
      336 CALL                             R47 1 1
      337 DUPTABLE                         R48 K53 [{"FastSetting", "Shared"}]
      338 SETTABLEKS                       R0 R48 K4 ["FastSetting"]
      340 NEWTABLE                         R49 64 0
      342 SETTABLEKS                       R4 R49 K8 ["FFlagAssistantDebugMode"]
      344 SETTABLEKS                       R6 R49 K10 ["FFlagAssistantFeedbackView"]
      346 SETTABLEKS                       R7 R49 K11 ["FFlagAssistantMultiEditExternalClient"]
      348 SETTABLEKS                       R8 R49 K12 ["FFlagAssistantMultipleChatPersistence"]
      350 SETTABLEKS                       R9 R49 K13 ["FFlagAssistantMultipleExternalMCPServers"]
      352 SETTABLEKS                       R12 R49 K16 ["FFlagAssistantQuestionAnswerTool"]
      354 SETTABLEKS                       R13 R49 K17 ["FFlagAssistantSupportSlashCommandCancellation"]
      356 SETTABLEKS                       R15 R49 K19 ["FFlagAssistantTestAutomation"]
      358 SETTABLEKS                       R19 R49 K23 ["FFlagAssistantToolExistenceRefactor"]
      360 SETTABLEKS                       R20 R49 K24 ["FFlagAssistantUseNewCreatorStoreTools"]
      362 SETTABLEKS                       R21 R49 K25 ["FFlagAssistantUseNewMeshGenTool"]
      364 SETTABLEKS                       R22 R49 K26 ["FFlagAssistantUseVariantHttpTransport"]
      366 SETTABLEKS                       R35 R49 K39 ["FFlagExternalMCPUI"]
      368 SETTABLEKS                       R23 R49 K27 ["FFlagConvAIMeshGen"]
      370 SETTABLEKS                       R24 R49 K28 ["FFlagDebugLogAssistantUI"]
      372 SETTABLEKS                       R27 R49 K31 ["FFlagEnableAssistantImageUpload"]
      374 SETTABLEKS                       R28 R49 K32 ["FFlagEnableGrepTool"]
      376 SETTABLEKS                       R29 R49 K33 ["FFlagEnableHttpGetTool"]
      378 SETTABLEKS                       R30 R49 K34 ["FFlagEnablePlaytestSubagent"]
      380 SETTABLEKS                       R31 R49 K35 ["FFlagEnablePrimitiveGenTool"]
      382 SETTABLEKS                       R40 R49 K44 ["FFlagProceduralModel"]
      384 SETTABLEKS                       R41 R49 K45 ["FFlagRenameGenerateCommands"]
      386 SETTABLEKS                       R42 R49 K46 ["FFlagSandboxProceduralScript"]
      388 SETTABLEKS                       R34 R49 K38 ["FFlagEnableWaitJobFinishedTool"]
      390 SETTABLEKS                       R32 R49 K36 ["FFlagEnableSkills"]
      392 SETTABLEKS                       R33 R49 K37 ["FFlagEnableSubagents"]
      394 SETTABLEKS                       R38 R49 K42 ["FFlagMarkdownStudioThemeColors"]
      396 SETTABLEKS                       R36 R49 K40 ["FFlagMCPAssistantManagementMenu"]
      398 SETTABLEKS                       R39 R49 K43 ["FFlagMigrateSubagentExperimentsToFlagRegister"]
      400 SETTABLEKS                       R37 R49 K41 ["FFlagMCPAssistantUseNewMarkdown"]
      402 SETTABLEKS                       R43 R49 K47 ["FStringMCPAssistantCustomModelName"]
      404 SETTABLEKS                       R44 R49 K48 ["FStringMCPAssistantURLOverride"]
      406 SETTABLEKS                       R45 R49 K49 ["FStringSubagentURLOverride"]
      408 SETTABLEKS                       R25 R49 K29 ["FFlagDisableExploreSubagent"]
      410 SETTABLEKS                       R26 R49 K30 ["FFlagDisableScreenCaptureForDefaultModel"]
      412 SETTABLEKS                       R3 R49 K7 ["FFlagAssistantDMNetworkIdentity"]
      414 SETTABLEKS                       R10 R49 K14 ["FFlagAssistantNewOpenAIAdapter"]
      416 SETTABLEKS                       R16 R49 K20 ["FFlagAssistantTestModeDropdown"]
      418 SETTABLEKS                       R18 R49 K22 ["FFlagAssistantTestModeToolArgPatch"]
      420 SETTABLEKS                       R17 R49 K21 ["FFlagAssistantTestModeSystemReminder"]
      422 SETTABLEKS                       R1 R49 K5 ["FFlagAssistantAgentModeSystemReminder"]
      424 SETTABLEKS                       R2 R49 K6 ["FFlagAssistantAgentModeToolArgPatch"]
      426 SETTABLEKS                       R5 R49 K9 ["FFlagAssistantDynamicToolDescription"]
      428 SETTABLEKS                       R46 R49 K50 ["getAssistantModeEnabled"]
      430 SETTABLEKS                       R47 R49 K51 ["getIsTestModeSystemRemindersEnabled"]
      432 SETTABLEKS                       R14 R49 K18 ["FFlagAssistantSystemReminderRefactor"]
      434 SETTABLEKS                       R11 R49 K15 ["FFlagAssistantPlanMode"]
      436 SETTABLEKS                       R49 R48 K52 ["Shared"]
      438 RETURN                           R48 1
