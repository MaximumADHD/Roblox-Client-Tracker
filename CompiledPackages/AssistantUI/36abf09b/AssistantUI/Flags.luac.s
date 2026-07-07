PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["trackFlag"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 FASTCALL3                        RAWSET R0 R1 R2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 GETIMPORT                        R3 K2 [rawset]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Attempt to get flag \"%*\" (not a valid member)"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K3 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 LOADN                            R4 2
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Attempt to set flag \"%*\" (not a valid member)"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K3 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 LOADN                            R4 2
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["FlagUtils"]
       18 GETTABLEKS                       R3 R3 K9 ["TestableFlags"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R4 256 0
       23 DUPTABLE                         R5 K11 [{"__newindex"}]
       24 DUPCLOSURE                       R6 K12 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R6 R5 K10 ["__newindex"]
       28 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       30 GETIMPORT                        R3 K14 [setmetatable]
       32 CALL                             R3 2 1
       33 GETTABLEKS                       R4 R1 K15 ["createGetFFlag"]
       35 LOADK                            R5 K16 ["VirtualInputEnabled"]
       36 CALL                             R4 1 1
       37 CALL                             R4 0 1
       38 GETTABLEKS                       R5 R2 K17 ["createGetDFString"]
       40 LOADK                            R6 K18 ["GenerationServiceSchemaDefinitionPartsKey"]
       41 LOADK                            R7 K19 ["Groups"]
       42 CALL                             R5 2 1
       43 CALL                             R5 0 1
       44 SETTABLEKS                       R5 R3 K20 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       46 GETTABLEKS                       R5 R2 K21 ["createGetEngineFeature"]
       48 LOADK                            R6 K22 ["ProceduralModel"]
       49 CALL                             R5 1 1
       50 CALL                             R5 0 1
       51 SETTABLEKS                       R5 R3 K23 ["EngineFeatureProceduralModel"]
       53 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       55 LOADK                            R6 K24 ["AllowThreadSuspendOverride"]
       56 CALL                             R5 1 1
       57 CALL                             R5 0 1
       58 SETTABLEKS                       R5 R3 K25 ["FFlagAllowThreadSuspendOverride"]
       60 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       62 LOADK                            R6 K26 ["AssistantAnimationGenTool"]
       63 CALL                             R5 1 1
       64 CALL                             R5 0 1
       65 SETTABLEKS                       R5 R3 K27 ["FFlagAssistantAnimationGenTool"]
       67 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       69 LOADK                            R6 K28 ["AssistantAssetSearchDirectInsert"]
       70 CALL                             R5 1 1
       71 CALL                             R5 0 1
       72 SETTABLEKS                       R5 R3 K29 ["FFlagAssistantAssetSearchDirectInsert"]
       74 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       76 LOADK                            R6 K30 ["AssistantAssetSearchInsertTool2"]
       77 CALL                             R5 1 1
       78 CALL                             R5 0 1
       79 SETTABLEKS                       R5 R3 K31 ["FFlagAssistantAssetSearchInsertTool"]
       81 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       83 LOADK                            R6 K32 ["AssistantAssetSearchInsertToolABTest"]
       84 CALL                             R5 1 1
       85 CALL                             R5 0 1
       86 SETTABLEKS                       R5 R3 K33 ["FFlagAssistantAssetSearchInsertToolABTest"]
       88 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       90 LOADK                            R6 K34 ["AssistantBackgroundDataModelToolCall2"]
       91 CALL                             R5 1 1
       92 CALL                             R5 0 1
       93 SETTABLEKS                       R5 R3 K35 ["FFlagAssistantBackgroundDataModelToolCall"]
       95 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
       97 LOADK                            R6 K36 ["AssistantBetaFeatureSkills"]
       98 CALL                             R5 1 1
       99 CALL                             R5 0 1
      100 SETTABLEKS                       R5 R3 K37 ["FFlagAssistantBetaFeatureSkills"]
      102 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      104 LOADK                            R6 K38 ["AssistantCapToolResult"]
      105 CALL                             R5 1 1
      106 CALL                             R5 0 1
      107 SETTABLEKS                       R5 R3 K39 ["FFlagAssistantCapToolResult"]
      109 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      111 LOADK                            R6 K40 ["AssistantCompactOnInputTokenLimit"]
      112 CALL                             R5 1 1
      113 CALL                             R5 0 1
      114 SETTABLEKS                       R5 R3 K41 ["FFlagAssistantCompactOnInputTokenLimit"]
      116 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      118 LOADK                            R6 K42 ["AssistantConsoleOutputTailFromEnd2"]
      119 CALL                             R5 1 1
      120 CALL                             R5 0 1
      121 SETTABLEKS                       R5 R3 K43 ["FFlagAssistantConsoleOutputTailFromEnd"]
      123 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      125 LOADK                            R6 K44 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      126 CALL                             R5 1 1
      127 CALL                             R5 0 1
      128 SETTABLEKS                       R5 R3 K45 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      130 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      132 LOADK                            R6 K46 ["AssistantEval"]
      133 CALL                             R5 1 1
      134 CALL                             R5 0 1
      135 SETTABLEKS                       R5 R3 K47 ["FFlagAssistantEval"]
      137 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      139 LOADK                            R6 K48 ["AssistantExecuteLuaBackground"]
      140 CALL                             R5 1 1
      141 CALL                             R5 0 1
      142 SETTABLEKS                       R5 R3 K49 ["FFlagAssistantExecuteLuaBackground"]
      144 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      146 LOADK                            R6 K50 ["AssistantFeedbackView"]
      147 CALL                             R5 1 1
      148 CALL                             R5 0 1
      149 SETTABLEKS                       R5 R3 K51 ["FFlagAssistantFeedbackView"]
      151 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      153 LOADK                            R6 K52 ["AssistantFixStartPlayHang"]
      154 CALL                             R5 1 1
      155 CALL                             R5 0 1
      156 SETTABLEKS                       R5 R3 K53 ["FFlagAssistantFixStartPlayHang"]
      158 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      160 LOADK                            R6 K54 ["AssistantGen3dAutoSegmentation"]
      161 CALL                             R5 1 1
      162 CALL                             R5 0 1
      163 SETTABLEKS                       R5 R3 K55 ["FFlagAssistantGen3dAutoSegmentation"]
      165 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      167 LOADK                            R6 K56 ["AssistantGen3dInputRequestedOverride"]
      168 CALL                             R5 1 1
      169 CALL                             R5 0 1
      170 SETTABLEKS                       R5 R3 K57 ["FFlagAssistantGen3dInputRequestedOverride"]
      172 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      174 LOADK                            R6 K58 ["AssistantGen3dRequirePromptToGenerate"]
      175 CALL                             R5 1 1
      176 CALL                             R5 0 1
      177 SETTABLEKS                       R5 R3 K59 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      179 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      181 LOADK                            R6 K60 ["AssistantGen3DTelemetryV2"]
      182 CALL                             R5 1 1
      183 CALL                             R5 0 1
      184 SETTABLEKS                       R5 R3 K61 ["FFlagAssistantGen3DTelemetryV2"]
      186 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      188 LOADK                            R6 K62 ["AssistantGetStudioState"]
      189 CALL                             R5 1 1
      190 CALL                             R5 0 1
      191 SETTABLEKS                       R5 R3 K63 ["FFlagAssistantGetStudioState"]
      193 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      195 LOADK                            R6 K64 ["AssistantHarnessSplit"]
      196 CALL                             R5 1 1
      197 CALL                             R5 0 1
      198 SETTABLEKS                       R5 R3 K65 ["FFlagAssistantHarnessSplit"]
      200 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      202 LOADK                            R6 K66 ["AssistantHintMultiEditOverExecLuau"]
      203 CALL                             R5 1 1
      204 CALL                             R5 0 1
      205 SETTABLEKS                       R5 R3 K67 ["FFlagAssistantHintMultiEditOverExecLuau"]
      207 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      209 LOADK                            R6 K68 ["AssistantInsertAssetSandboxProceduralModels"]
      210 CALL                             R5 1 1
      211 CALL                             R5 0 1
      212 SETTABLEKS                       R5 R3 K69 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      214 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      216 LOADK                            R6 K70 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      217 CALL                             R5 1 1
      218 CALL                             R5 0 1
      219 SETTABLEKS                       R5 R3 K71 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      221 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      223 LOADK                            R6 K72 ["AssistantInsertAssetSandboxScripts"]
      224 CALL                             R5 1 1
      225 CALL                             R5 0 1
      226 SETTABLEKS                       R5 R3 K73 ["FFlagAssistantInsertAssetSandboxScripts"]
      228 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      230 LOADK                            R6 K74 ["AssistantInstancePickerSelectModel"]
      231 CALL                             R5 1 1
      232 CALL                             R5 0 1
      233 SETTABLEKS                       R5 R3 K75 ["FFlagAssistantInstancePickerSelectModel"]
      235 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      237 LOADK                            R6 K76 ["AssistantMarkdownColorFix"]
      238 CALL                             R5 1 1
      239 CALL                             R5 0 1
      240 SETTABLEKS                       R5 R3 K77 ["FFlagAssistantMarkdownColorFix"]
      242 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      244 LOADK                            R6 K78 ["AssistantMarkdownPlanMode3"]
      245 CALL                             R5 1 1
      246 CALL                             R5 0 1
      247 SETTABLEKS                       R5 R3 K79 ["FFlagAssistantMarkdownPlanMode"]
      249 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      251 LOADK                            R6 K80 ["AssistantMeshGenCarouselPreview"]
      252 CALL                             R5 1 1
      253 CALL                             R5 0 1
      254 SETTABLEKS                       R5 R3 K81 ["FFlagAssistantMeshGenCarouselPreview"]
      256 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      258 LOADK                            R6 K82 ["AssistantMeshGenCombinedAddToPlace"]
      259 CALL                             R5 1 1
      260 CALL                             R5 0 1
      261 SETTABLEKS                       R5 R3 K83 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      263 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      265 LOADK                            R6 K84 ["AssistantMeshGenHintImage"]
      266 CALL                             R5 1 1
      267 CALL                             R5 0 1
      268 SETTABLEKS                       R5 R3 K85 ["FFlagAssistantMeshGenHintImage"]
      270 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      272 LOADK                            R6 K86 ["AssistantMeshGenRemoveAdminOptions"]
      273 CALL                             R5 1 1
      274 CALL                             R5 0 1
      275 SETTABLEKS                       R5 R3 K87 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      277 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      279 LOADK                            R6 K88 ["AssistantMultiEditExternalClient"]
      280 CALL                             R5 1 1
      281 CALL                             R5 0 1
      282 SETTABLEKS                       R5 R3 K89 ["FFlagAssistantMultiEditExternalClient"]
      284 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      286 LOADK                            R6 K90 ["AssistantMultiPlayerAgents"]
      287 CALL                             R5 1 1
      288 CALL                             R5 0 1
      289 SETTABLEKS                       R5 R3 K91 ["FFlagAssistantMultiPlayerAgents"]
      291 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      293 LOADK                            R6 K92 ["AssistantPlanRevisionList"]
      294 CALL                             R5 1 1
      295 CALL                             R5 0 1
      296 SETTABLEKS                       R5 R3 K93 ["FFlagAssistantPlanRevisionList"]
      298 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      300 LOADK                            R6 K94 ["AssistantPrivilegedCodeExecution"]
      301 CALL                             R5 1 1
      302 CALL                             R5 0 1
      303 SETTABLEKS                       R5 R3 K95 ["FFlagAssistantPrivilegedCodeExecution"]
      305 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      307 LOADK                            R6 K96 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      308 CALL                             R5 1 1
      309 CALL                             R5 0 1
      310 SETTABLEKS                       R5 R3 K97 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      312 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      314 LOADK                            R6 K98 ["AssistantScreenCaptureSubagent3"]
      315 CALL                             R5 1 1
      316 CALL                             R5 0 1
      317 SETTABLEKS                       R5 R3 K99 ["FFlagAssistantScreenCaptureSubagent"]
      319 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      321 LOADK                            R6 K100 ["AssistantSegmentationBridge"]
      322 CALL                             R5 1 1
      323 CALL                             R5 0 1
      324 SETTABLEKS                       R5 R3 K101 ["FFlagAssistantSegmentationBridge"]
      326 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      328 LOADK                            R6 K102 ["AssistantSegmentationPanelScroll"]
      329 CALL                             R5 1 1
      330 CALL                             R5 0 1
      331 SETTABLEKS                       R5 R3 K103 ["FFlagAssistantSegmentationPanelScroll"]
      333 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      335 LOADK                            R6 K104 ["AssistantSegmentationPromptModeSelector"]
      336 CALL                             R5 1 1
      337 CALL                             R5 0 1
      338 SETTABLEKS                       R5 R3 K105 ["FFlagAssistantSegmentationPromptModeSelector"]
      340 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      342 LOADK                            R6 K106 ["AssistantSegmentationUIFixes"]
      343 CALL                             R5 1 1
      344 CALL                             R5 0 1
      345 SETTABLEKS                       R5 R3 K107 ["FFlagAssistantSegmentationUIFixes"]
      347 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      349 LOADK                            R6 K108 ["AssistantSkillToolNameReplace"]
      350 CALL                             R5 1 1
      351 CALL                             R5 0 1
      352 SETTABLEKS                       R5 R3 K109 ["FFlagAssistantSkillToolNameReplace"]
      354 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      356 LOADK                            R6 K110 ["AssistantSplitToolsAndWidgets2"]
      357 CALL                             R5 1 1
      358 CALL                             R5 0 1
      359 SETTABLEKS                       R5 R3 K111 ["FFlagAssistantSplitToolsAndWidgets"]
      361 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      363 LOADK                            R6 K112 ["AssistantStartStopPlayBusyCheck"]
      364 CALL                             R5 1 1
      365 CALL                             R5 0 1
      366 SETTABLEKS                       R5 R3 K113 ["FFlagAssistantStartStopPlayBusyCheck"]
      368 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      370 LOADK                            R6 K114 ["AssistantStudioStateSystemReminder"]
      371 CALL                             R5 1 1
      372 CALL                             R5 0 1
      373 SETTABLEKS                       R5 R3 K115 ["FFlagAssistantStudioStateSystemReminder"]
      375 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      377 LOADK                            R6 K116 ["AssistantSupportSlashCommandCancellation"]
      378 CALL                             R5 1 1
      379 CALL                             R5 0 1
      380 SETTABLEKS                       R5 R3 K117 ["FFlagAssistantSupportSlashCommandCancellation"]
      382 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      384 LOADK                            R6 K118 ["AssistantTestLLMPreserveThinking"]
      385 LOADB                            R7 1
      386 CALL                             R5 2 1
      387 CALL                             R5 0 1
      388 SETTABLEKS                       R5 R3 K119 ["FFlagAssistantTestLLMPreserveThinking"]
      390 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      392 LOADK                            R6 K120 ["AssistantTestLLMThinkingEnabled"]
      393 LOADB                            R7 1
      394 CALL                             R5 2 1
      395 CALL                             R5 0 1
      396 SETTABLEKS                       R5 R3 K121 ["FFlagAssistantTestLLMThinkingEnabled"]
      398 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      400 LOADK                            R6 K122 ["AssistantToolExistenceRefactor"]
      401 CALL                             R5 1 1
      402 CALL                             R5 0 1
      403 SETTABLEKS                       R5 R3 K123 ["FFlagAssistantToolExistenceRefactor"]
      405 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      407 LOADK                            R6 K124 ["AssistantUnitTestSubagent4"]
      408 CALL                             R5 1 1
      409 CALL                             R5 0 1
      410 SETTABLEKS                       R5 R3 K125 ["FFlagAssistantUnitTestSubagent"]
      412 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      414 LOADK                            R6 K126 ["AssistantUseBuilderIcons"]
      415 CALL                             R5 1 1
      416 CALL                             R5 0 1
      417 SETTABLEKS                       R5 R3 K127 ["FFlagAssistantUseBuilderIcons"]
      419 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      421 LOADK                            R6 K128 ["AssistantUseNewTags"]
      422 CALL                             R5 1 1
      423 CALL                             R5 0 1
      424 SETTABLEKS                       R5 R3 K129 ["FFlagAssistantUseNewTags"]
      426 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      428 LOADK                            R6 K130 ["AssistantUserSkills2"]
      429 CALL                             R5 1 1
      430 CALL                             R5 0 1
      431 SETTABLEKS                       R5 R3 K131 ["FFlagAssistantUserSkills"]
      433 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      435 LOADK                            R6 K132 ["AssistantUseVariantHttpTransport"]
      436 CALL                             R5 1 1
      437 CALL                             R5 0 1
      438 SETTABLEKS                       R5 R3 K133 ["FFlagAssistantUseVariantHttpTransport"]
      440 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      442 LOADK                            R6 K134 ["AssistantVersionMismatchWarning"]
      443 CALL                             R5 1 1
      444 CALL                             R5 0 1
      445 SETTABLEKS                       R5 R3 K135 ["FFlagAssistantVersionMismatchWarning"]
      447 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      449 LOADK                            R6 K136 ["AssistantVideoCaptureTool"]
      450 CALL                             R5 1 1
      451 CALL                             R5 0 1
      452 SETTABLEKS                       R5 R3 K137 ["FFlagAssistantVideoCaptureTool"]
      454 GETTABLEKS                       R6 R2 K15 ["createGetFFlag"]
      456 LOADK                            R7 K138 ["AssistantVirtualInputEnabled"]
      457 CALL                             R6 1 1
      458 CALL                             R6 0 1
      459 AND                              R5 R6 R4
      460 SETTABLEKS                       R5 R3 K139 ["FFlagAssistantVirtualInputEnabled"]
      462 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      464 LOADK                            R6 K140 ["DebugAssistantMultiPlayerAgentsLog"]
      465 CALL                             R5 1 1
      466 CALL                             R5 0 1
      467 SETTABLEKS                       R5 R3 K141 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      469 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      471 LOADK                            R6 K142 ["DebugEnableTestLLMAdapter"]
      472 CALL                             R5 1 1
      473 CALL                             R5 0 1
      474 SETTABLEKS                       R5 R3 K143 ["FFlagDebugEnableTestLLMAdapter"]
      476 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      478 LOADK                            R6 K144 ["DebugLogAssistantUI"]
      479 CALL                             R5 1 1
      480 CALL                             R5 0 1
      481 SETTABLEKS                       R5 R3 K145 ["FFlagDebugLogAssistantUI"]
      483 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      485 LOADK                            R6 K146 ["DebugMockPrimitiveGenBackend"]
      486 CALL                             R5 1 1
      487 CALL                             R5 0 1
      488 SETTABLEKS                       R5 R3 K147 ["FFlagDebugMockPrimitiveGenBackend"]
      490 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      492 LOADK                            R6 K148 ["DebugPrimGenDMNoReachable"]
      493 CALL                             R5 1 1
      494 CALL                             R5 0 1
      495 SETTABLEKS                       R5 R3 K149 ["FFlagDebugPrimGenDMNoReachable"]
      497 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      499 LOADK                            R6 K150 ["DisableMCPConnectionIndicator"]
      500 CALL                             R5 1 1
      501 CALL                             R5 0 1
      502 SETTABLEKS                       R5 R3 K151 ["FFlagDisableMCPConnectionIndicator"]
      504 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      506 LOADK                            R6 K152 ["FFlagDisableNavigationConfirmation"]
      507 CALL                             R5 1 1
      508 CALL                             R5 0 1
      509 SETTABLEKS                       R5 R3 K152 ["FFlagDisableNavigationConfirmation"]
      511 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      513 LOADK                            R6 K153 ["DisableNewSmartSize"]
      514 CALL                             R5 1 1
      515 CALL                             R5 0 1
      516 SETTABLEKS                       R5 R3 K154 ["FFlagDisableNewSmartSize"]
      518 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      520 LOADK                            R6 K155 ["DisableOldSmartSize"]
      521 CALL                             R5 1 1
      522 CALL                             R5 0 1
      523 SETTABLEKS                       R5 R3 K156 ["FFlagDisableOldSmartSize"]
      525 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      527 LOADK                            R6 K157 ["FFlagDisableStartStopPlayConfirmation"]
      528 CALL                             R5 1 1
      529 CALL                             R5 0 1
      530 SETTABLEKS                       R5 R3 K157 ["FFlagDisableStartStopPlayConfirmation"]
      532 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      534 LOADK                            R6 K158 ["FFlagDisableUserInputConfirmation"]
      535 CALL                             R5 1 1
      536 CALL                             R5 0 1
      537 SETTABLEKS                       R5 R3 K158 ["FFlagDisableUserInputConfirmation"]
      539 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      541 LOADK                            R6 K159 ["EnableAssistantImageUpload"]
      542 CALL                             R5 1 1
      543 CALL                             R5 0 1
      544 SETTABLEKS                       R5 R3 K160 ["FFlagEnableAssistantImageUpload"]
      546 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      548 LOADK                            R6 K161 ["EnablePlaytestSubagent"]
      549 CALL                             R5 1 1
      550 CALL                             R5 0 1
      551 SETTABLEKS                       R5 R3 K162 ["FFlagEnablePlaytestSubagent"]
      553 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      555 LOADK                            R6 K163 ["ExternalMCPUI"]
      556 CALL                             R5 1 1
      557 CALL                             R5 0 1
      558 SETTABLEKS                       R5 R3 K164 ["FFlagExternalMCPUI"]
      560 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      562 LOADK                            R6 K165 ["ForceAssistantBackgroundDataModelToolCall"]
      563 CALL                             R5 1 1
      564 CALL                             R5 0 1
      565 SETTABLEKS                       R5 R3 K166 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      567 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      569 LOADK                            R6 K167 ["ForceAssistantScreenCaptureSubagent"]
      570 CALL                             R5 1 1
      571 CALL                             R5 0 1
      572 SETTABLEKS                       R5 R3 K168 ["FFlagForceAssistantScreenCaptureSubagent"]
      574 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      576 LOADK                            R6 K169 ["ForceAssistantStudioStateSystemReminder"]
      577 CALL                             R5 1 1
      578 CALL                             R5 0 1
      579 SETTABLEKS                       R5 R3 K170 ["FFlagForceAssistantStudioStateSystemReminder"]
      581 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      583 LOADK                            R6 K171 ["ForceAssistantUnitTestSubagent"]
      584 CALL                             R5 1 1
      585 CALL                             R5 0 1
      586 SETTABLEKS                       R5 R3 K172 ["FFlagForceAssistantUnitTestSubagent"]
      588 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      590 LOADK                            R6 K173 ["Gen3dSegmentationSelector"]
      591 CALL                             R5 1 1
      592 CALL                             R5 0 1
      593 SETTABLEKS                       R5 R3 K174 ["FFlagGen3dSegmentationSelector"]
      595 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      597 LOADK                            R6 K175 ["MarkdownStudioThemeColors"]
      598 CALL                             R5 1 1
      599 CALL                             R5 0 1
      600 SETTABLEKS                       R5 R3 K176 ["FFlagMarkdownStudioThemeColors"]
      602 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      604 LOADK                            R6 K177 ["MCPAssistantAzureOpenAI"]
      605 CALL                             R5 1 1
      606 CALL                             R5 0 1
      607 SETTABLEKS                       R5 R3 K178 ["FFlagMCPAssistantAzureOpenAI"]
      609 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      611 LOADK                            R6 K179 ["MCPAssistantManagementMenu5"]
      612 CALL                             R5 1 1
      613 CALL                             R5 0 1
      614 SETTABLEKS                       R5 R3 K180 ["FFlagMCPAssistantManagementMenu"]
      616 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      618 LOADK                            R6 K181 ["MCPAssistantUseNewMarkdown"]
      619 CALL                             R5 1 1
      620 CALL                             R5 0 1
      621 SETTABLEKS                       R5 R3 K182 ["FFlagMCPAssistantUseNewMarkdown"]
      623 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      625 LOADK                            R6 K183 ["MCPContentNormalization"]
      626 CALL                             R5 1 1
      627 CALL                             R5 0 1
      628 SETTABLEKS                       R5 R3 K184 ["FFlagMCPContentNormalization"]
      630 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      632 LOADK                            R6 K185 ["MCPEnableToolDisabling"]
      633 CALL                             R5 1 1
      634 CALL                             R5 0 1
      635 SETTABLEKS                       R5 R3 K186 ["FFlagMCPEnableToolDisabling"]
      637 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      639 LOADK                            R6 K187 ["PrimGenAllowReInsert"]
      640 CALL                             R5 1 1
      641 CALL                             R5 0 1
      642 SETTABLEKS                       R5 R3 K188 ["FFlagPrimGenAllowReInsert"]
      644 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      646 LOADK                            R6 K189 ["PrimGenAnnotateRightMimeType"]
      647 CALL                             R5 1 1
      648 CALL                             R5 0 1
      649 SETTABLEKS                       R5 R3 K190 ["FFlagPrimGenAnnotateRightMimeType"]
      651 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      653 LOADK                            R6 K191 ["PrimGenBetterErrorType"]
      654 CALL                             R5 1 1
      655 CALL                             R5 0 1
      656 SETTABLEKS                       R5 R3 K192 ["FFlagPrimGenBetterErrorType"]
      658 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      660 LOADK                            R6 K193 ["PrimGenCarouselPreview"]
      661 CALL                             R5 1 1
      662 CALL                             R5 0 1
      663 SETTABLEKS                       R5 R3 K194 ["FFlagPrimGenCarouselPreview"]
      665 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      667 LOADK                            R6 K195 ["PrimGenDetectMineTypeFromContent"]
      668 CALL                             R5 1 1
      669 CALL                             R5 0 1
      670 SETTABLEKS                       R5 R3 K196 ["FFlagPrimGenDetectMineTypeFromContent"]
      672 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      674 LOADK                            R6 K197 ["PrimGenRetryInPlayTest"]
      675 CALL                             R5 1 1
      676 CALL                             R5 0 1
      677 SETTABLEKS                       R5 R3 K198 ["FFlagPrimGenRetryInPlayTest"]
      679 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      681 LOADK                            R6 K199 ["PrimGenSchemaSelector"]
      682 CALL                             R5 1 1
      683 CALL                             R5 0 1
      684 SETTABLEKS                       R5 R3 K200 ["FFlagPrimGenSchemaSelector"]
      686 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      688 LOADK                            R6 K201 ["PrimGenVerboseDmIsUnReachableMsg"]
      689 CALL                             R5 1 1
      690 CALL                             R5 0 1
      691 SETTABLEKS                       R5 R3 K202 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      693 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      695 LOADK                            R6 K203 ["PrimGenVersionMismatchError"]
      696 CALL                             R5 1 1
      697 CALL                             R5 0 1
      698 SETTABLEKS                       R5 R3 K204 ["FFlagPrimGenVersionMismatchError"]
      700 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      702 LOADK                            R6 K205 ["ScreenCaptureCamera"]
      703 CALL                             R5 1 1
      704 CALL                             R5 0 1
      705 SETTABLEKS                       R5 R3 K206 ["FFlagScreenCaptureCamera"]
      707 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      709 LOADK                            R6 K207 ["ScriptDebuggerServiceEnabled2"]
      710 CALL                             R5 1 1
      711 CALL                             R5 0 1
      712 SETTABLEKS                       R5 R3 K208 ["FFlagScriptDebuggerServiceEnabled"]
      714 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      716 LOADK                            R6 K209 ["SegmentationFastFollow"]
      717 CALL                             R5 1 1
      718 CALL                             R5 0 1
      719 SETTABLEKS                       R5 R3 K210 ["FFlagSegmentationFastFollow"]
      721 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      723 LOADK                            R6 K211 ["StudioOpenCloudMCP"]
      724 CALL                             R5 1 1
      725 CALL                             R5 0 1
      726 SETTABLEKS                       R5 R3 K212 ["FFlagStudioOpenCloudMCP"]
      728 GETTABLEKS                       R5 R2 K15 ["createGetFFlag"]
      730 LOADK                            R6 K213 ["SubagentScriptEditAutoConfirmation"]
      731 CALL                             R5 1 1
      732 CALL                             R5 0 1
      733 SETTABLEKS                       R5 R3 K214 ["FFlagSubagentScriptEditAutoConfirmation"]
      735 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      737 LOADK                            R6 K216 ["AssistantAutoSaveInterval"]
      738 LOADN                            R7 60
      739 CALL                             R5 2 1
      740 CALL                             R5 0 1
      741 SETTABLEKS                       R5 R3 K217 ["FIntAssistantAutoSaveInterval"]
      743 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      745 LOADK                            R6 K218 ["AssistantDebugToolMaxOutput"]
      746 LOADN                            R7 20000
      747 CALL                             R5 2 1
      748 CALL                             R5 0 1
      749 SETTABLEKS                       R5 R3 K219 ["FIntAssistantDebugToolMaxOutput"]
      751 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      753 LOADK                            R6 K220 ["AssistantMaxToolResultChars"]
      754 LOADK                            R7 K221 [100000]
      755 CALL                             R5 2 1
      756 CALL                             R5 0 1
      757 SETTABLEKS                       R5 R3 K222 ["FIntAssistantMaxToolResultChars"]
      759 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      761 LOADK                            R6 K223 ["AssistantMeshGenMaxTrianglesDefault"]
      762 LOADN                            R7 10000
      763 CALL                             R5 2 1
      764 CALL                             R5 0 1
      765 SETTABLEKS                       R5 R3 K224 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      767 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      769 LOADK                            R6 K225 ["AssistantMinPopoverHeight"]
      770 LOADN                            R7 150
      771 CALL                             R5 2 1
      772 CALL                             R5 0 1
      773 SETTABLEKS                       R5 R3 K226 ["FIntAssistantMinPopoverHeight"]
      775 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      777 LOADK                            R6 K227 ["AssistantPersistenceMessageLoadLimit"]
      778 LOADN                            R7 5
      779 CALL                             R5 2 1
      780 CALL                             R5 0 1
      781 SETTABLEKS                       R5 R3 K228 ["FIntAssistantPersistenceMessageLoadLimit"]
      783 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      785 LOADK                            R6 K229 ["AssistantPersistenceThreadLoadLimit"]
      786 LOADN                            R7 5
      787 CALL                             R5 2 1
      788 CALL                             R5 0 1
      789 SETTABLEKS                       R5 R3 K230 ["FIntAssistantPersistenceThreadLoadLimit"]
      791 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      793 LOADK                            R6 K231 ["AssistantPrimitiveGenMaxConcurrentJobs"]
      794 LOADN                            R7 999
      795 CALL                             R5 2 1
      796 CALL                             R5 0 1
      797 SETTABLEKS                       R5 R3 K232 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      799 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      801 LOADK                            R6 K233 ["AssistantPrimitiveGenPollIntervalMs"]
      802 LOADN                            R7 2000
      803 CALL                             R5 2 1
      804 CALL                             R5 0 1
      805 SETTABLEKS                       R5 R3 K234 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      807 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      809 LOADK                            R6 K235 ["AssistantProcessEventTimeoutMS"]
      810 LOADK                            R7 K236 [60000]
      811 CALL                             R5 2 1
      812 CALL                             R5 0 1
      813 SETTABLEKS                       R5 R3 K237 ["FIntAssistantProcessEventTimeoutMS"]
      815 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      817 LOADK                            R6 K238 ["ContextCompactionResponseHeadroom"]
      818 LOADK                            R7 K239 [40000]
      819 CALL                             R5 2 1
      820 CALL                             R5 0 1
      821 SETTABLEKS                       R5 R3 K240 ["FIntContextCompactionResponseHeadroom"]
      823 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      825 LOADK                            R6 K241 ["ContextCompactionSummarizerTimeoutMs"]
      826 LOADN                            R7 30000
      827 CALL                             R5 2 1
      828 CALL                             R5 0 1
      829 SETTABLEKS                       R5 R3 K242 ["FIntContextCompactionSummarizerTimeoutMs"]
      831 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      833 LOADK                            R6 K243 ["ContextCompactionSystemPromptEstimate"]
      834 LOADN                            R7 15000
      835 CALL                             R5 2 1
      836 CALL                             R5 0 1
      837 SETTABLEKS                       R5 R3 K244 ["FIntContextCompactionSystemPromptEstimate"]
      839 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      841 LOADK                            R6 K245 ["ContextCompactionThresholdTokens"]
      842 LOADK                            R7 K246 [128000]
      843 CALL                             R5 2 1
      844 CALL                             R5 0 1
      845 SETTABLEKS                       R5 R3 K247 ["FIntContextCompactionThresholdTokens"]
      847 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      849 LOADK                            R6 K248 ["ConvAIMaxHistoryCount"]
      850 LOADN                            R7 6
      851 CALL                             R5 2 1
      852 CALL                             R5 0 1
      853 SETTABLEKS                       R5 R3 K249 ["FIntConvAIMaxHistoryCount"]
      855 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      857 LOADK                            R6 K250 ["ConvAIMeshGenGenerationRetryLimit"]
      858 LOADN                            R7 4
      859 CALL                             R5 2 1
      860 CALL                             R5 0 1
      861 SETTABLEKS                       R5 R3 K251 ["FIntConvAIMeshGenGenerationRetryLimit"]
      863 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      865 LOADK                            R6 K252 ["ConvAIMeshGenPublishAttemptLimit"]
      866 LOADN                            R7 5
      867 CALL                             R5 2 1
      868 CALL                             R5 0 1
      869 SETTABLEKS                       R5 R3 K253 ["FIntConvAIMeshGenPublishAttemptLimit"]
      871 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      873 LOADK                            R6 K254 ["ExecuteLuauMaxJsonLength"]
      874 LOADK                            R7 K221 [100000]
      875 CALL                             R5 2 1
      876 CALL                             R5 0 1
      877 SETTABLEKS                       R5 R3 K255 ["FIntExecuteLuauMaxJsonLength"]
      879 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      881 LOADK                            R6 K256 ["ExecuteLuauMaxStringLength"]
      882 LOADK                            R7 K221 [100000]
      883 CALL                             R5 2 1
      884 CALL                             R5 0 1
      885 SETTABLEKS                       R5 R3 K257 ["FIntExecuteLuauMaxStringLength"]
      887 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      889 LOADK                            R6 K258 ["FactorDelayPreview"]
      890 LOADN                            R7 1
      891 CALL                             R5 2 1
      892 CALL                             R5 0 1
      893 SETTABLEKS                       R5 R3 K259 ["FIntFactorDelayPreview"]
      895 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      897 LOADK                            R6 K260 ["FromHistoryMaxResultChars"]
      898 LOADK                            R7 K261 [200000]
      899 CALL                             R5 2 1
      900 CALL                             R5 0 1
      901 SETTABLEKS                       R5 R3 K262 ["FIntFromHistoryMaxResultChars"]
      903 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      905 LOADK                            R6 K263 ["GameTreeDefaultHeadLimit"]
      906 LOADN                            R7 200
      907 CALL                             R5 2 1
      908 CALL                             R5 0 1
      909 SETTABLEKS                       R5 R3 K264 ["FIntGameTreeDefaultHeadLimit"]
      911 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      913 LOADK                            R6 K265 ["GameTreeDefaultMaxDepth"]
      914 LOADN                            R7 3
      915 CALL                             R5 2 1
      916 CALL                             R5 0 1
      917 SETTABLEKS                       R5 R3 K266 ["FIntGameTreeDefaultMaxDepth"]
      919 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      921 LOADK                            R6 K267 ["GameTreeMaxAbsoluteDepth"]
      922 LOADN                            R7 10
      923 CALL                             R5 2 1
      924 CALL                             R5 0 1
      925 SETTABLEKS                       R5 R3 K268 ["FIntGameTreeMaxAbsoluteDepth"]
      927 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      929 LOADK                            R6 K269 ["InspectInstanceMaxJsonLength"]
      930 LOADN                            R7 500
      931 CALL                             R5 2 1
      932 CALL                             R5 0 1
      933 SETTABLEKS                       R5 R3 K270 ["FIntInspectInstanceMaxJsonLength"]
      935 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      937 LOADK                            R6 K271 ["InspectInstanceMaxMatches"]
      938 LOADN                            R7 20
      939 CALL                             R5 2 1
      940 CALL                             R5 0 1
      941 SETTABLEKS                       R5 R3 K272 ["FIntInspectInstanceMaxMatches"]
      943 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      945 LOADK                            R6 K273 ["InspectInstanceMaxStringLength"]
      946 LOADN                            R7 1000
      947 CALL                             R5 2 1
      948 CALL                             R5 0 1
      949 SETTABLEKS                       R5 R3 K274 ["FIntInspectInstanceMaxStringLength"]
      951 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      953 LOADK                            R6 K275 ["MCPAssistantGenerationIndicatorWarningTime"]
      954 LOADN                            R7 10
      955 CALL                             R5 2 1
      956 CALL                             R5 0 1
      957 SETTABLEKS                       R5 R3 K276 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
      959 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      961 LOADK                            R6 K277 ["MCPAssistantInputAreaCharLimit"]
      962 LOADN                            R7 4000
      963 CALL                             R5 2 1
      964 CALL                             R5 0 1
      965 SETTABLEKS                       R5 R3 K278 ["FIntMCPAssistantInputAreaCharLimit"]
      967 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      969 LOADK                            R6 K279 ["MCPAssistantMaxPromptHistory"]
      970 LOADN                            R7 20
      971 CALL                             R5 2 1
      972 CALL                             R5 0 1
      973 SETTABLEKS                       R5 R3 K280 ["FIntMCPAssistantMaxPromptHistory"]
      975 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      977 LOADK                            R6 K281 ["MCPAssistantMaxToolCalls"]
      978 LOADN                            R7 20
      979 CALL                             R5 2 1
      980 CALL                             R5 0 1
      981 SETTABLEKS                       R5 R3 K282 ["FIntMCPAssistantMaxToolCalls"]
      983 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      985 LOADK                            R6 K283 ["PlaytestMaxToolCalls"]
      986 LOADN                            R7 50
      987 CALL                             R5 2 1
      988 CALL                             R5 0 1
      989 SETTABLEKS                       R5 R3 K284 ["FIntPlaytestMaxToolCalls"]
      991 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
      993 LOADK                            R6 K285 ["PrimGenLongRunThresholdSec"]
      994 LOADN                            R7 120
      995 CALL                             R5 2 1
      996 CALL                             R5 0 1
      997 SETTABLEKS                       R5 R3 K286 ["FIntPrimGenLongRunThresholdSec"]
      999 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
     1001 LOADK                            R6 K287 ["PrimGenTextMaxLength"]
     1002 LOADN                            R7 80
     1003 CALL                             R5 2 1
     1004 CALL                             R5 0 1
     1005 SETTABLEKS                       R5 R3 K288 ["FIntPrimGenTextMaxLength"]
     1007 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
     1009 LOADK                            R6 K289 ["PrimGenVerticalGutter"]
     1010 LOADN                            R7 10
     1011 CALL                             R5 2 1
     1012 CALL                             R5 0 1
     1013 SETTABLEKS                       R5 R3 K290 ["FIntPrimGenVerticalGutter"]
     1015 GETTABLEKS                       R5 R2 K215 ["createGetFInt"]
     1017 LOADK                            R6 K291 ["UnitTestSubagentMaxToolCalls"]
     1018 LOADN                            R7 100
     1019 CALL                             R5 2 1
     1020 CALL                             R5 0 1
     1021 SETTABLEKS                       R5 R3 K292 ["FIntUnitTestSubagentMaxToolCalls"]
     1023 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1025 LOADK                            R6 K294 ["AssistantDisabledSubagents"]
     1026 LOADK                            R7 K295 [""]
     1027 CALL                             R5 2 1
     1028 CALL                             R5 0 1
     1029 SETTABLEKS                       R5 R3 K296 ["FStringAssistantDisabledSubagents"]
     1031 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1033 LOADK                            R6 K297 ["AssistantGen3dDefaultModel"]
     1034 LOADK                            R7 K298 ["Assistant/glm51-h200"]
     1035 CALL                             R5 2 1
     1036 CALL                             R5 0 1
     1037 SETTABLEKS                       R5 R3 K299 ["FStringAssistantGen3dDefaultModel"]
     1039 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1041 LOADK                            R6 K300 ["AssistantMeshGenImageGenModelOverride"]
     1042 LOADK                            R7 K301 ["gemini"]
     1043 CALL                             R5 2 1
     1044 CALL                             R5 0 1
     1045 SETTABLEKS                       R5 R3 K302 ["FStringAssistantMeshGenImageGenModelOverride"]
     1047 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1049 LOADK                            R6 K303 ["AssistantMeshGenInferenceServiceOverride"]
     1050 LOADK                            R7 K304 ["stage-diff-mesh-gen"]
     1051 CALL                             R5 2 1
     1052 CALL                             R5 0 1
     1053 SETTABLEKS                       R5 R3 K305 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1055 GETIMPORT                        R5 K5 [require]
     1057 GETTABLEKS                       R6 R0 K8 ["FlagUtils"]
     1059 GETTABLEKS                       R6 R6 K306 ["createGetFStringAssistantMeshGenSchemaData"]
     1061 CALL                             R5 1 1
     1062 CALL                             R5 0 1
     1063 SETTABLEKS                       R5 R3 K307 ["FStringAssistantMeshGenSchemaData"]
     1065 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1067 LOADK                            R6 K308 ["AssistantSkillsAllowlist"]
     1068 LOADK                            R7 K309 ["docs-search, scene-analysis"]
     1069 CALL                             R5 2 1
     1070 CALL                             R5 0 1
     1071 SETTABLEKS                       R5 R3 K310 ["FStringAssistantSkillsAllowlist"]
     1073 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1075 LOADK                            R6 K311 ["AssistantToolsExcludedDirectories"]
     1076 LOADK                            R7 K312 ["CoreGui,PlayerGui,LoadedCode"]
     1077 CALL                             R5 2 1
     1078 CALL                             R5 0 1
     1079 SETTABLEKS                       R5 R3 K313 ["FStringAssistantToolsExcludedDirectories"]
     1081 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1083 LOADK                            R6 K314 ["AssistantToolWidgetMappings"]
     1084 LOADK                            R7 K295 [""]
     1085 CALL                             R5 2 1
     1086 CALL                             R5 0 1
     1087 SETTABLEKS                       R5 R3 K315 ["FStringAssistantToolWidgetMappings"]
     1089 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1091 LOADK                            R6 K316 ["AssistantUnitTestSubagentModel"]
     1092 LOADK                            R7 K317 ["Assistant/glm5"]
     1093 CALL                             R5 2 1
     1094 CALL                             R5 0 1
     1095 SETTABLEKS                       R5 R3 K318 ["FStringAssistantUnitTestSubagentModel"]
     1097 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1099 LOADK                            R6 K319 ["ContextCompactionModelName"]
     1100 LOADK                            R7 K320 ["Assistant/glm47-flash-search-rl"]
     1101 CALL                             R5 2 1
     1102 CALL                             R5 0 1
     1103 SETTABLEKS                       R5 R3 K321 ["FStringContextCompactionModelName"]
     1105 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1107 LOADK                            R6 K322 ["ConvAIMeshGenModerationUrl"]
     1108 LOADK                            R7 K323 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1109 CALL                             R5 2 1
     1110 CALL                             R5 0 1
     1111 SETTABLEKS                       R5 R3 K324 ["FStringConvAIMeshGenModerationUrl"]
     1113 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1115 LOADK                            R6 K325 ["MCPAssistantAnthropicModels"]
     1116 LOADK                            R7 K326 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1117 CALL                             R5 2 1
     1118 CALL                             R5 0 1
     1119 SETTABLEKS                       R5 R3 K327 ["FStringMCPAssistantAnthropicModels"]
     1121 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1123 LOADK                            R6 K328 ["MCPAssistantClaudeAPIKey"]
     1124 LOADK                            R7 K295 [""]
     1125 CALL                             R5 2 1
     1126 CALL                             R5 0 1
     1127 SETTABLEKS                       R5 R3 K329 ["FStringMCPAssistantClaudeAPIKey"]
     1129 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1131 LOADK                            R6 K330 ["MCPAssistantCustomModelName"]
     1132 LOADK                            R7 K295 [""]
     1133 CALL                             R5 2 1
     1134 CALL                             R5 0 1
     1135 SETTABLEKS                       R5 R3 K331 ["FStringMCPAssistantCustomModelName"]
     1137 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1139 LOADK                            R6 K332 ["MCPAssistantGeminiAPIKey"]
     1140 LOADK                            R7 K295 [""]
     1141 CALL                             R5 2 1
     1142 CALL                             R5 0 1
     1143 SETTABLEKS                       R5 R3 K333 ["FStringMCPAssistantGeminiAPIKey"]
     1145 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1147 LOADK                            R6 K334 ["MCPAssistantGeminiModels"]
     1148 LOADK                            R7 K335 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1149 CALL                             R5 2 1
     1150 CALL                             R5 0 1
     1151 SETTABLEKS                       R5 R3 K336 ["FStringMCPAssistantGeminiModels"]
     1153 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1155 LOADK                            R6 K337 ["MCPAssistantOpenAIAPIKey"]
     1156 LOADK                            R7 K295 [""]
     1157 CALL                             R5 2 1
     1158 CALL                             R5 0 1
     1159 SETTABLEKS                       R5 R3 K338 ["FStringMCPAssistantOpenAIAPIKey"]
     1161 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1163 LOADK                            R6 K339 ["MCPAssistantOpenAIModels"]
     1164 LOADK                            R7 K340 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1165 CALL                             R5 2 1
     1166 CALL                             R5 0 1
     1167 SETTABLEKS                       R5 R3 K341 ["FStringMCPAssistantOpenAIModels"]
     1169 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1171 LOADK                            R6 K342 ["MCPAssistantPrimitiveGenServerURL"]
     1172 LOADK                            R7 K295 [""]
     1173 CALL                             R5 2 1
     1174 CALL                             R5 0 1
     1175 SETTABLEKS                       R5 R3 K343 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1177 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1179 LOADK                            R6 K344 ["MCPAssistantTestLLMAPIKey"]
     1180 LOADK                            R7 K295 [""]
     1181 CALL                             R5 2 1
     1182 CALL                             R5 0 1
     1183 SETTABLEKS                       R5 R3 K345 ["FStringMCPAssistantTestLLMAPIKey"]
     1185 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1187 LOADK                            R6 K346 ["MCPAssistantURLOverride"]
     1188 LOADK                            R7 K295 [""]
     1189 CALL                             R5 2 1
     1190 CALL                             R5 0 1
     1191 SETTABLEKS                       R5 R3 K347 ["FStringMCPAssistantURLOverride"]
     1193 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1195 LOADK                            R6 K348 ["MCPDocsUrl"]
     1196 LOADK                            R7 K349 ["https://create.roblox.com/docs/studio/mcp/"]
     1197 CALL                             R5 2 1
     1198 CALL                             R5 0 1
     1199 SETTABLEKS                       R5 R3 K350 ["FStringMCPDocsUrl"]
     1201 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1203 LOADK                            R6 K351 ["PlaytestConversationURL"]
     1204 LOADK                            R7 K352 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1205 CALL                             R5 2 1
     1206 CALL                             R5 0 1
     1207 SETTABLEKS                       R5 R3 K353 ["FStringPlaytestConversationURL"]
     1209 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1211 LOADK                            R6 K354 ["PlaytestModelName"]
     1212 LOADK                            R7 K355 ["Qwen/Qwen35-35B-A3B"]
     1213 CALL                             R5 2 1
     1214 CALL                             R5 0 1
     1215 SETTABLEKS                       R5 R3 K356 ["FStringPlaytestModelName"]
     1217 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1219 LOADK                            R6 K357 ["PrimGenMCPToolName"]
     1220 LOADK                            R7 K358 ["generate_procedural_model"]
     1221 CALL                             R5 2 1
     1222 CALL                             R5 0 1
     1223 SETTABLEKS                       R5 R3 K359 ["FStringPrimGenMCPToolName"]
     1225 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1227 LOADK                            R6 K360 ["ProceduralScriptCapabilities"]
     1228 LOADK                            R7 K361 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1229 CALL                             R5 2 1
     1230 CALL                             R5 0 1
     1231 SETTABLEKS                       R5 R3 K362 ["FStringProceduralScriptCapabilities"]
     1233 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1235 LOADK                            R6 K363 ["ScreenCaptureFormat"]
     1236 LOADK                            R7 K295 [""]
     1237 CALL                             R5 2 1
     1238 CALL                             R5 0 1
     1239 SETTABLEKS                       R5 R3 K364 ["FStringScreenCaptureFormat"]
     1241 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1243 LOADK                            R6 K365 ["ScreenCaptureSize"]
     1244 LOADK                            R7 K295 [""]
     1245 CALL                             R5 2 1
     1246 CALL                             R5 0 1
     1247 SETTABLEKS                       R5 R3 K366 ["FStringScreenCaptureSize"]
     1249 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1251 LOADK                            R6 K367 ["ScreenCaptureSubagentModelName"]
     1252 LOADK                            R7 K295 [""]
     1253 CALL                             R5 2 1
     1254 CALL                             R5 0 1
     1255 SETTABLEKS                       R5 R3 K368 ["FStringScreenCaptureSubagentModelName"]
     1257 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1259 LOADK                            R6 K369 ["SegmentByPartsBetaFeatureUrl"]
     1260 LOADK                            R7 K295 [""]
     1261 CALL                             R5 2 1
     1262 CALL                             R5 0 1
     1263 SETTABLEKS                       R5 R3 K370 ["FStringSegmentByPartsBetaFeatureUrl"]
     1265 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1267 LOADK                            R6 K371 ["StudioScopeRiskLevelsDocsUrl"]
     1268 LOADK                            R7 K372 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1269 CALL                             R5 2 1
     1270 CALL                             R5 0 1
     1271 SETTABLEKS                       R5 R3 K373 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1273 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1275 LOADK                            R6 K374 ["SubagentExploreModelName"]
     1276 LOADK                            R7 K375 ["Assistant/glm5-b200-server-1"]
     1277 CALL                             R5 2 1
     1278 CALL                             R5 0 1
     1279 SETTABLEKS                       R5 R3 K376 ["FStringSubagentExploreModelName"]
     1281 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1283 LOADK                            R6 K377 ["SubagentURLOverride"]
     1284 LOADK                            R7 K295 [""]
     1285 CALL                             R5 2 1
     1286 CALL                             R5 0 1
     1287 SETTABLEKS                       R5 R3 K378 ["FStringSubagentURLOverride"]
     1289 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1291 LOADK                            R6 K379 ["TestLLMURLOverride"]
     1292 LOADK                            R7 K295 [""]
     1293 CALL                             R5 2 1
     1294 CALL                             R5 0 1
     1295 SETTABLEKS                       R5 R3 K380 ["FStringTestLLMURLOverride"]
     1297 GETTABLEKS                       R5 R2 K293 ["createGetFString"]
     1299 LOADK                            R6 K381 ["TestSubagentURLOverride"]
     1300 LOADK                            R7 K295 [""]
     1301 CALL                             R5 2 1
     1302 CALL                             R5 0 1
     1303 SETTABLEKS                       R5 R3 K382 ["FStringTestSubagentURLOverride"]
     1305 DUPTABLE                         R7 K384 [{"__index", "__newindex"}]
     1306 DUPCLOSURE                       R8 K385 [PROTO_1]
     1307 SETTABLEKS                       R8 R7 K383 ["__index"]
     1309 DUPCLOSURE                       R8 K386 [PROTO_2]
     1310 SETTABLEKS                       R8 R7 K10 ["__newindex"]
     1312 FASTCALL2                        SETMETATABLE R3 R7 ; [+4]
     1314 MOVE                             R6 R3
     1315 GETIMPORT                        R5 K14 [setmetatable]
     1317 CALL                             R5 2 0
     1318 RETURN                           R3 1
