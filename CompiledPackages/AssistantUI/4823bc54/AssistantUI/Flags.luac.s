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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SafeFlags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Engine"]
       23 GETTABLEKS                       R3 R3 K10 ["EngineFlags"]
       25 GETTABLEKS                       R4 R1 K11 ["TestableFlags"]
       27 NEWTABLE                         R6 256 0
       29 DUPTABLE                         R7 K13 [{"__newindex"}]
       30 DUPCLOSURE                       R8 K14 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R8 R7 K12 ["__newindex"]
       34 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       36 GETIMPORT                        R5 K16 [setmetatable]
       38 CALL                             R5 2 1
       39 GETTABLEKS                       R6 R2 K17 ["createGetFFlag"]
       41 LOADK                            R7 K18 ["VirtualInputEnabled"]
       42 CALL                             R6 1 1
       43 CALL                             R6 0 1
       44 GETTABLEKS                       R7 R4 K19 ["createGetDFString"]
       46 LOADK                            R8 K20 ["GenerationServiceSchemaDefinitionPartsKey"]
       47 LOADK                            R9 K21 ["Groups"]
       48 CALL                             R7 2 1
       49 CALL                             R7 0 1
       50 SETTABLEKS                       R7 R5 K22 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       52 GETTABLEKS                       R7 R4 K23 ["createGetEngineFeature"]
       54 LOADK                            R8 K24 ["AssistantGen3dImagePreview"]
       55 CALL                             R7 1 1
       56 CALL                             R7 0 1
       57 SETTABLEKS                       R7 R5 K25 ["EngineFeatureAssistantGen3dImagePreview"]
       59 GETTABLEKS                       R7 R4 K23 ["createGetEngineFeature"]
       61 LOADK                            R8 K26 ["ProceduralModel"]
       62 CALL                             R7 1 1
       63 CALL                             R7 0 1
       64 SETTABLEKS                       R7 R5 K27 ["EngineFeatureProceduralModel"]
       66 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       68 LOADK                            R8 K28 ["AllowThreadSuspendOverride"]
       69 CALL                             R7 1 1
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R5 K29 ["FFlagAllowThreadSuspendOverride"]
       73 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       75 LOADK                            R8 K30 ["AssistantAnimationGenTool"]
       76 CALL                             R7 1 1
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R5 K31 ["FFlagAssistantAnimationGenTool"]
       80 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       82 LOADK                            R8 K32 ["AssistantAcpHistoryCompatibility"]
       83 CALL                             R7 1 1
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R5 K33 ["FFlagAssistantAcpHistoryCompatibility"]
       87 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       89 LOADK                            R8 K34 ["AssistantAssetSearchDirectInsert"]
       90 CALL                             R7 1 1
       91 CALL                             R7 0 1
       92 SETTABLEKS                       R7 R5 K35 ["FFlagAssistantAssetSearchDirectInsert"]
       94 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       96 LOADK                            R8 K36 ["AssistantAssetSearchInsertTool2"]
       97 CALL                             R7 1 1
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R5 K37 ["FFlagAssistantAssetSearchInsertTool"]
      101 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      103 LOADK                            R8 K38 ["AssistantAssetSearchInsertToolABTest"]
      104 CALL                             R7 1 1
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R5 K39 ["FFlagAssistantAssetSearchInsertToolABTest"]
      108 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      110 LOADK                            R8 K40 ["AssistantBackgroundDataModelToolCall2"]
      111 CALL                             R7 1 1
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R5 K41 ["FFlagAssistantBackgroundDataModelToolCall"]
      115 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      117 LOADK                            R8 K42 ["AssistantBetaFeatureSkills"]
      118 CALL                             R7 1 1
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R5 K43 ["FFlagAssistantBetaFeatureSkills"]
      122 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      124 LOADK                            R8 K44 ["AssistantChatFollowBottomThreshold"]
      125 CALL                             R7 1 1
      126 CALL                             R7 0 1
      127 SETTABLEKS                       R7 R5 K45 ["FFlagAssistantChatFollowBottomThreshold"]
      129 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      131 LOADK                            R8 K46 ["AssistantConsoleOutputTailFromEnd2"]
      132 CALL                             R7 1 1
      133 CALL                             R7 0 1
      134 SETTABLEKS                       R7 R5 K47 ["FFlagAssistantConsoleOutputTailFromEnd"]
      136 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      138 LOADK                            R8 K48 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      139 CALL                             R7 1 1
      140 CALL                             R7 0 1
      141 SETTABLEKS                       R7 R5 K49 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      143 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      145 LOADK                            R8 K50 ["AssistantDisabledReason"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R5 K51 ["FFlagAssistantDisabledReason"]
      150 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      152 LOADK                            R8 K52 ["AssistantEval"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R5 K53 ["FFlagAssistantEval"]
      157 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      159 LOADK                            R8 K54 ["AssistantExecuteLuaBackground"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R5 K55 ["FFlagAssistantExecuteLuaBackground"]
      164 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      166 LOADK                            R8 K56 ["AssistantFeedbackView"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R5 K57 ["FFlagAssistantFeedbackView"]
      171 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      173 LOADK                            R8 K58 ["AssistantFixStartPlayHang"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R5 K59 ["FFlagAssistantFixStartPlayHang"]
      178 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      180 LOADK                            R8 K60 ["AssistantGen3dAutoSegmentation"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R5 K61 ["FFlagAssistantGen3dAutoSegmentation"]
      185 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      187 LOADK                            R8 K62 ["AssistantGen3dInputRequestedOverride"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R5 K63 ["FFlagAssistantGen3dInputRequestedOverride"]
      192 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      194 LOADK                            R8 K64 ["AssistantGen3dRequirePromptToGenerate"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      199 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      201 LOADK                            R8 K66 ["AssistantGen3DTelemetryV2"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantGen3DTelemetryV2"]
      206 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      208 LOADK                            R8 K68 ["AssistantGetStudioState"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantGetStudioState"]
      213 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      215 LOADK                            R8 K70 ["AssistantHarnessSplit"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantHarnessSplit"]
      220 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      222 LOADK                            R8 K72 ["AssistantHintMultiEditOverExecLuau"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantHintMultiEditOverExecLuau"]
      227 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      229 LOADK                            R8 K74 ["AssistantImageGenAbortPollOn4xx"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantImageGenAbortPollOn4xx"]
      234 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      236 LOADK                            R8 K76 ["AssistantImageGenImprovements"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantImageGenImprovements"]
      241 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      243 LOADK                            R8 K78 ["AssistantImageGenSeed"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantImageGenSeed"]
      248 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      250 LOADK                            R8 K80 ["AssistantImageGenUseOpenApiClient"]
      251 CALL                             R7 1 1
      252 CALL                             R7 0 1
      253 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantImageGenUseOpenApiClient"]
      255 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      257 LOADK                            R8 K82 ["AssistantImageSelectionForGen3D"]
      258 CALL                             R7 1 1
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantImageSelectionForGen3D"]
      262 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      264 LOADK                            R8 K84 ["AssistantImageSelectionWizardModeMeshGen"]
      265 CALL                             R7 1 1
      266 CALL                             R7 0 1
      267 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      269 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      271 LOADK                            R8 K86 ["AssistantImageSelectionWizardModePrimitiveGen"]
      272 CALL                             R7 1 1
      273 CALL                             R7 0 1
      274 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      276 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      278 LOADK                            R8 K88 ["AssistantInsertAssetSandboxProceduralModels"]
      279 CALL                             R7 1 1
      280 CALL                             R7 0 1
      281 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      283 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      285 LOADK                            R8 K90 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      286 CALL                             R7 1 1
      287 CALL                             R7 0 1
      288 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      290 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      292 LOADK                            R8 K92 ["AssistantInsertAssetSandboxScripts"]
      293 CALL                             R7 1 1
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantInsertAssetSandboxScripts"]
      297 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      299 LOADK                            R8 K94 ["AssistantMarkdownColorFix"]
      300 CALL                             R7 1 1
      301 CALL                             R7 0 1
      302 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantMarkdownColorFix"]
      304 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      306 LOADK                            R8 K96 ["AssistantMcpImageGenShortcut"]
      307 CALL                             R7 1 1
      308 CALL                             R7 0 1
      309 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantMcpImageGenShortcut"]
      311 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      313 LOADK                            R8 K98 ["AssistantMeshGenCarouselPreview"]
      314 CALL                             R7 1 1
      315 CALL                             R7 0 1
      316 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantMeshGenCarouselPreview"]
      318 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      320 LOADK                            R8 K100 ["AssistantMeshGenCombinedAddToPlace"]
      321 CALL                             R7 1 1
      322 CALL                             R7 0 1
      323 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      325 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      327 LOADK                            R8 K102 ["AssistantMeshGenHintImage"]
      328 CALL                             R7 1 1
      329 CALL                             R7 0 1
      330 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantMeshGenHintImage"]
      332 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      334 LOADK                            R8 K104 ["AssistantMeshGenRemoveAdminOptions"]
      335 CALL                             R7 1 1
      336 CALL                             R7 0 1
      337 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      339 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      341 LOADK                            R8 K106 ["AssistantMultiEditExternalClient"]
      342 CALL                             R7 1 1
      343 CALL                             R7 0 1
      344 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantMultiEditExternalClient"]
      346 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      348 LOADK                            R8 K108 ["AssistantPlanRevisionList"]
      349 CALL                             R7 1 1
      350 CALL                             R7 0 1
      351 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantPlanRevisionList"]
      353 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      355 LOADK                            R8 K110 ["AssistantPrivilegedCodeExecution"]
      356 CALL                             R7 1 1
      357 CALL                             R7 0 1
      358 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantPrivilegedCodeExecution"]
      360 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      362 LOADK                            R8 K112 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      363 CALL                             R7 1 1
      364 CALL                             R7 0 1
      365 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      367 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      369 LOADK                            R8 K114 ["AssistantScreenCaptureSubagent3"]
      370 CALL                             R7 1 1
      371 CALL                             R7 0 1
      372 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantScreenCaptureSubagent"]
      374 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      376 LOADK                            R8 K116 ["AssistantSegmentationBridge"]
      377 CALL                             R7 1 1
      378 CALL                             R7 0 1
      379 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantSegmentationBridge"]
      381 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      383 LOADK                            R8 K118 ["AssistantSegmentationPanelScroll"]
      384 CALL                             R7 1 1
      385 CALL                             R7 0 1
      386 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantSegmentationPanelScroll"]
      388 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      390 LOADK                            R8 K120 ["AssistantSegmentationPromptModeSelector"]
      391 CALL                             R7 1 1
      392 CALL                             R7 0 1
      393 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantSegmentationPromptModeSelector"]
      395 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      397 LOADK                            R8 K122 ["AssistantSegmentationUIFixes"]
      398 CALL                             R7 1 1
      399 CALL                             R7 0 1
      400 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantSegmentationUIFixes"]
      402 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      404 LOADK                            R8 K124 ["AssistantSkillToolNameReplace"]
      405 CALL                             R7 1 1
      406 CALL                             R7 0 1
      407 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantSkillToolNameReplace"]
      409 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      411 LOADK                            R8 K126 ["AssistantStartStopPlayBusyCheck"]
      412 CALL                             R7 1 1
      413 CALL                             R7 0 1
      414 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantStartStopPlayBusyCheck"]
      416 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      418 LOADK                            R8 K128 ["AssistantStudioStateSystemReminder"]
      419 CALL                             R7 1 1
      420 CALL                             R7 0 1
      421 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantStudioStateSystemReminder"]
      423 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      425 LOADK                            R8 K130 ["AssistantSupportSlashCommandCancellation"]
      426 CALL                             R7 1 1
      427 CALL                             R7 0 1
      428 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantSupportSlashCommandCancellation"]
      430 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      432 LOADK                            R8 K132 ["AssistantTestLLMPreserveThinking"]
      433 LOADB                            R9 1
      434 CALL                             R7 2 1
      435 CALL                             R7 0 1
      436 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantTestLLMPreserveThinking"]
      438 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      440 LOADK                            R8 K134 ["AssistantTestLLMThinkingEnabled"]
      441 LOADB                            R9 1
      442 CALL                             R7 2 1
      443 CALL                             R7 0 1
      444 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantTestLLMThinkingEnabled"]
      446 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      448 LOADK                            R8 K136 ["AssistantUnitTestSubagent4"]
      449 CALL                             R7 1 1
      450 CALL                             R7 0 1
      451 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantUnitTestSubagent"]
      453 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      455 LOADK                            R8 K138 ["AssistantUseBuilderIcons"]
      456 CALL                             R7 1 1
      457 CALL                             R7 0 1
      458 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantUseBuilderIcons"]
      460 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      462 LOADK                            R8 K140 ["AssistantUseNewTags"]
      463 CALL                             R7 1 1
      464 CALL                             R7 0 1
      465 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantUseNewTags"]
      467 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      469 LOADK                            R8 K142 ["AssistantUseVariantHttpTransport"]
      470 CALL                             R7 1 1
      471 CALL                             R7 0 1
      472 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantUseVariantHttpTransport"]
      474 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      476 LOADK                            R8 K144 ["AssistantVersionMismatchWarning"]
      477 CALL                             R7 1 1
      478 CALL                             R7 0 1
      479 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantVersionMismatchWarning"]
      481 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      483 LOADK                            R8 K146 ["AssistantVideoCaptureTool"]
      484 CALL                             R7 1 1
      485 CALL                             R7 0 1
      486 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantVideoCaptureTool"]
      488 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      490 LOADK                            R9 K148 ["AssistantVirtualInputEnabled"]
      491 CALL                             R8 1 1
      492 CALL                             R8 0 1
      493 AND                              R7 R8 R6
      494 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantVirtualInputEnabled"]
      496 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      498 LOADK                            R8 K150 ["DebugAssistantMultiPlayerAgentsLog"]
      499 CALL                             R7 1 1
      500 CALL                             R7 0 1
      501 SETTABLEKS                       R7 R5 K151 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      503 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      505 LOADK                            R8 K152 ["DebugEnableTestLLMAdapter"]
      506 CALL                             R7 1 1
      507 CALL                             R7 0 1
      508 SETTABLEKS                       R7 R5 K153 ["FFlagDebugEnableTestLLMAdapter"]
      510 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      512 LOADK                            R8 K154 ["DebugMockPrimitiveGenBackend"]
      513 CALL                             R7 1 1
      514 CALL                             R7 0 1
      515 SETTABLEKS                       R7 R5 K155 ["FFlagDebugMockPrimitiveGenBackend"]
      517 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      519 LOADK                            R8 K156 ["DebugPrimGenDMNoReachable"]
      520 CALL                             R7 1 1
      521 CALL                             R7 0 1
      522 SETTABLEKS                       R7 R5 K157 ["FFlagDebugPrimGenDMNoReachable"]
      524 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      526 LOADK                            R8 K158 ["DisableMCPConnectionIndicator"]
      527 CALL                             R7 1 1
      528 CALL                             R7 0 1
      529 SETTABLEKS                       R7 R5 K159 ["FFlagDisableMCPConnectionIndicator"]
      531 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      533 LOADK                            R8 K160 ["FFlagDisableNavigationConfirmation"]
      534 CALL                             R7 1 1
      535 CALL                             R7 0 1
      536 SETTABLEKS                       R7 R5 K160 ["FFlagDisableNavigationConfirmation"]
      538 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      540 LOADK                            R8 K161 ["DisableNewSmartSize"]
      541 CALL                             R7 1 1
      542 CALL                             R7 0 1
      543 SETTABLEKS                       R7 R5 K162 ["FFlagDisableNewSmartSize"]
      545 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      547 LOADK                            R8 K163 ["DisableOldSmartSize"]
      548 CALL                             R7 1 1
      549 CALL                             R7 0 1
      550 SETTABLEKS                       R7 R5 K164 ["FFlagDisableOldSmartSize"]
      552 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      554 LOADK                            R8 K165 ["FFlagDisableStartStopPlayConfirmation"]
      555 CALL                             R7 1 1
      556 CALL                             R7 0 1
      557 SETTABLEKS                       R7 R5 K165 ["FFlagDisableStartStopPlayConfirmation"]
      559 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      561 LOADK                            R8 K166 ["FFlagDisableUserInputConfirmation"]
      562 CALL                             R7 1 1
      563 CALL                             R7 0 1
      564 SETTABLEKS                       R7 R5 K166 ["FFlagDisableUserInputConfirmation"]
      566 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      568 LOADK                            R8 K167 ["EnableAssistantImageUpload"]
      569 CALL                             R7 1 1
      570 CALL                             R7 0 1
      571 SETTABLEKS                       R7 R5 K168 ["FFlagEnableAssistantImageUpload"]
      573 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      575 LOADK                            R8 K169 ["EnablePlaytestSubagent"]
      576 CALL                             R7 1 1
      577 CALL                             R7 0 1
      578 SETTABLEKS                       R7 R5 K170 ["FFlagEnablePlaytestSubagent"]
      580 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      582 LOADK                            R8 K171 ["ForceAssistantBackgroundDataModelToolCall"]
      583 CALL                             R7 1 1
      584 CALL                             R7 0 1
      585 SETTABLEKS                       R7 R5 K172 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      587 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      589 LOADK                            R8 K173 ["ForceAssistantScreenCaptureSubagent"]
      590 CALL                             R7 1 1
      591 CALL                             R7 0 1
      592 SETTABLEKS                       R7 R5 K174 ["FFlagForceAssistantScreenCaptureSubagent"]
      594 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      596 LOADK                            R8 K175 ["ForceAssistantStudioStateSystemReminder"]
      597 CALL                             R7 1 1
      598 CALL                             R7 0 1
      599 SETTABLEKS                       R7 R5 K176 ["FFlagForceAssistantStudioStateSystemReminder"]
      601 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      603 LOADK                            R8 K177 ["ForceAssistantUnitTestSubagent"]
      604 CALL                             R7 1 1
      605 CALL                             R7 0 1
      606 SETTABLEKS                       R7 R5 K178 ["FFlagForceAssistantUnitTestSubagent"]
      608 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      610 LOADK                            R8 K179 ["Gen3dSegmentationSelector"]
      611 CALL                             R7 1 1
      612 CALL                             R7 0 1
      613 SETTABLEKS                       R7 R5 K180 ["FFlagGen3dSegmentationSelector"]
      615 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      617 LOADK                            R8 K181 ["MarkdownStudioThemeColors"]
      618 CALL                             R7 1 1
      619 CALL                             R7 0 1
      620 SETTABLEKS                       R7 R5 K182 ["FFlagMarkdownStudioThemeColors"]
      622 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      624 LOADK                            R8 K183 ["MCPAssistantAzureOpenAI"]
      625 CALL                             R7 1 1
      626 CALL                             R7 0 1
      627 SETTABLEKS                       R7 R5 K184 ["FFlagMCPAssistantAzureOpenAI"]
      629 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      631 LOADK                            R8 K185 ["MCPAssistantManagementMenu5"]
      632 CALL                             R7 1 1
      633 CALL                             R7 0 1
      634 SETTABLEKS                       R7 R5 K186 ["FFlagMCPAssistantManagementMenu"]
      636 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      638 LOADK                            R8 K187 ["MCPAssistantUseNewMarkdown"]
      639 CALL                             R7 1 1
      640 CALL                             R7 0 1
      641 SETTABLEKS                       R7 R5 K188 ["FFlagMCPAssistantUseNewMarkdown"]
      643 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      645 LOADK                            R8 K189 ["MCPContentNormalization"]
      646 CALL                             R7 1 1
      647 CALL                             R7 0 1
      648 SETTABLEKS                       R7 R5 K190 ["FFlagMCPContentNormalization"]
      650 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      652 LOADK                            R8 K191 ["MCPEnableToolDisabling"]
      653 CALL                             R7 1 1
      654 CALL                             R7 0 1
      655 SETTABLEKS                       R7 R5 K192 ["FFlagMCPEnableToolDisabling"]
      657 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      659 LOADK                            R8 K193 ["PrimGenAllowReInsert"]
      660 CALL                             R7 1 1
      661 CALL                             R7 0 1
      662 SETTABLEKS                       R7 R5 K194 ["FFlagPrimGenAllowReInsert"]
      664 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      666 LOADK                            R8 K195 ["PrimGenAnnotateRightMimeType"]
      667 CALL                             R7 1 1
      668 CALL                             R7 0 1
      669 SETTABLEKS                       R7 R5 K196 ["FFlagPrimGenAnnotateRightMimeType"]
      671 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      673 LOADK                            R8 K197 ["PrimGenBetterErrorType"]
      674 CALL                             R7 1 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K198 ["FFlagPrimGenBetterErrorType"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K199 ["PrimGenCarouselPreview"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K200 ["FFlagPrimGenCarouselPreview"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K201 ["PrimGenDetectMineTypeFromContent"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K202 ["FFlagPrimGenDetectMineTypeFromContent"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K203 ["PrimGenRetryInPlayTest"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K204 ["FFlagPrimGenRetryInPlayTest"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K205 ["PrimGenSchemaSelector"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K206 ["FFlagPrimGenSchemaSelector"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K207 ["PrimGenVerboseDmIsUnReachableMsg"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K208 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K209 ["PrimGenVersionMismatchError"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K210 ["FFlagPrimGenVersionMismatchError"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K211 ["PrimitiveGenRestoreError"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K212 ["FFlagPrimitiveGenRestoreError"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K213 ["ScreenCaptureCamera"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K214 ["FFlagScreenCaptureCamera"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K215 ["ScriptDebuggerServiceEnabled2"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K216 ["FFlagScriptDebuggerServiceEnabled"]
      741 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      743 LOADK                            R8 K217 ["SegmentationFastFollow"]
      744 CALL                             R7 1 1
      745 CALL                             R7 0 1
      746 SETTABLEKS                       R7 R5 K218 ["FFlagSegmentationFastFollow"]
      748 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      750 LOADK                            R8 K219 ["StudioOpenCloudMCP"]
      751 CALL                             R7 1 1
      752 CALL                             R7 0 1
      753 SETTABLEKS                       R7 R5 K220 ["FFlagStudioOpenCloudMCP"]
      755 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      757 LOADK                            R8 K221 ["SubagentScriptEditAutoConfirmation"]
      758 CALL                             R7 1 1
      759 CALL                             R7 0 1
      760 SETTABLEKS                       R7 R5 K222 ["FFlagSubagentScriptEditAutoConfirmation"]
      762 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      764 LOADK                            R8 K224 ["AmrAssetDependencyGrantEventTimeout"]
      765 LOADN                            R9 40
      766 CALL                             R7 2 1
      767 CALL                             R7 0 1
      768 SETTABLEKS                       R7 R5 K225 ["FIntAmrAssetDependencyGrantEventTimeout"]
      770 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      772 LOADK                            R8 K226 ["AssistantAutoSaveInterval"]
      773 LOADN                            R9 60
      774 CALL                             R7 2 1
      775 CALL                             R7 0 1
      776 SETTABLEKS                       R7 R5 K227 ["FIntAssistantAutoSaveInterval"]
      778 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      780 LOADK                            R8 K228 ["AssistantDebugToolMaxOutput"]
      781 LOADN                            R9 20000
      782 CALL                             R7 2 1
      783 CALL                             R7 0 1
      784 SETTABLEKS                       R7 R5 K229 ["FIntAssistantDebugToolMaxOutput"]
      786 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      788 LOADK                            R8 K230 ["AssistantMeshGenMaxTrianglesDefault"]
      789 LOADN                            R9 10000
      790 CALL                             R7 2 1
      791 CALL                             R7 0 1
      792 SETTABLEKS                       R7 R5 K231 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      794 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      796 LOADK                            R8 K232 ["AssistantMinPopoverHeight"]
      797 LOADN                            R9 150
      798 CALL                             R7 2 1
      799 CALL                             R7 0 1
      800 SETTABLEKS                       R7 R5 K233 ["FIntAssistantMinPopoverHeight"]
      802 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      804 LOADK                            R8 K234 ["AssistantPersistenceMessageLoadLimit"]
      805 LOADN                            R9 5
      806 CALL                             R7 2 1
      807 CALL                             R7 0 1
      808 SETTABLEKS                       R7 R5 K235 ["FIntAssistantPersistenceMessageLoadLimit"]
      810 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      812 LOADK                            R8 K236 ["AssistantPersistenceThreadLoadLimit"]
      813 LOADN                            R9 5
      814 CALL                             R7 2 1
      815 CALL                             R7 0 1
      816 SETTABLEKS                       R7 R5 K237 ["FIntAssistantPersistenceThreadLoadLimit"]
      818 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      820 LOADK                            R8 K238 ["AssistantPrimitiveGenMaxConcurrentJobs"]
      821 LOADN                            R9 999
      822 CALL                             R7 2 1
      823 CALL                             R7 0 1
      824 SETTABLEKS                       R7 R5 K239 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      826 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      828 LOADK                            R8 K240 ["AssistantPrimitiveGenPollIntervalMs"]
      829 LOADN                            R9 2000
      830 CALL                             R7 2 1
      831 CALL                             R7 0 1
      832 SETTABLEKS                       R7 R5 K241 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      834 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      836 LOADK                            R8 K242 ["AssistantProcessEventTimeoutMS"]
      837 LOADK                            R9 K243 [60000]
      838 CALL                             R7 2 1
      839 CALL                             R7 0 1
      840 SETTABLEKS                       R7 R5 K244 ["FIntAssistantProcessEventTimeoutMS"]
      842 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      844 LOADK                            R8 K245 ["ConvAIMaxHistoryCount"]
      845 LOADN                            R9 6
      846 CALL                             R7 2 1
      847 CALL                             R7 0 1
      848 SETTABLEKS                       R7 R5 K246 ["FIntConvAIMaxHistoryCount"]
      850 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      852 LOADK                            R8 K247 ["ConvAIMeshGenGenerationRetryLimit"]
      853 LOADN                            R9 4
      854 CALL                             R7 2 1
      855 CALL                             R7 0 1
      856 SETTABLEKS                       R7 R5 K248 ["FIntConvAIMeshGenGenerationRetryLimit"]
      858 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      860 LOADK                            R8 K249 ["ConvAIMeshGenPublishAttemptLimit"]
      861 LOADN                            R9 5
      862 CALL                             R7 2 1
      863 CALL                             R7 0 1
      864 SETTABLEKS                       R7 R5 K250 ["FIntConvAIMeshGenPublishAttemptLimit"]
      866 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      868 LOADK                            R8 K251 ["ExecuteLuauMaxJsonLength"]
      869 LOADK                            R9 K252 [100000]
      870 CALL                             R7 2 1
      871 CALL                             R7 0 1
      872 SETTABLEKS                       R7 R5 K253 ["FIntExecuteLuauMaxJsonLength"]
      874 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      876 LOADK                            R8 K254 ["ExecuteLuauMaxStringLength"]
      877 LOADK                            R9 K252 [100000]
      878 CALL                             R7 2 1
      879 CALL                             R7 0 1
      880 SETTABLEKS                       R7 R5 K255 ["FIntExecuteLuauMaxStringLength"]
      882 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      884 LOADK                            R8 K256 ["FactorDelayPreview"]
      885 LOADN                            R9 1
      886 CALL                             R7 2 1
      887 CALL                             R7 0 1
      888 SETTABLEKS                       R7 R5 K257 ["FIntFactorDelayPreview"]
      890 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      892 LOADK                            R8 K258 ["FromHistoryMaxResultChars"]
      893 LOADK                            R9 K259 [200000]
      894 CALL                             R7 2 1
      895 CALL                             R7 0 1
      896 SETTABLEKS                       R7 R5 K260 ["FIntFromHistoryMaxResultChars"]
      898 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      900 LOADK                            R8 K261 ["GameTreeDefaultHeadLimit"]
      901 LOADN                            R9 200
      902 CALL                             R7 2 1
      903 CALL                             R7 0 1
      904 SETTABLEKS                       R7 R5 K262 ["FIntGameTreeDefaultHeadLimit"]
      906 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      908 LOADK                            R8 K263 ["GameTreeDefaultMaxDepth"]
      909 LOADN                            R9 3
      910 CALL                             R7 2 1
      911 CALL                             R7 0 1
      912 SETTABLEKS                       R7 R5 K264 ["FIntGameTreeDefaultMaxDepth"]
      914 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      916 LOADK                            R8 K265 ["GameTreeMaxAbsoluteDepth"]
      917 LOADN                            R9 10
      918 CALL                             R7 2 1
      919 CALL                             R7 0 1
      920 SETTABLEKS                       R7 R5 K266 ["FIntGameTreeMaxAbsoluteDepth"]
      922 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      924 LOADK                            R8 K267 ["InspectInstanceMaxJsonLength"]
      925 LOADN                            R9 500
      926 CALL                             R7 2 1
      927 CALL                             R7 0 1
      928 SETTABLEKS                       R7 R5 K268 ["FIntInspectInstanceMaxJsonLength"]
      930 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      932 LOADK                            R8 K269 ["InspectInstanceMaxMatches"]
      933 LOADN                            R9 20
      934 CALL                             R7 2 1
      935 CALL                             R7 0 1
      936 SETTABLEKS                       R7 R5 K270 ["FIntInspectInstanceMaxMatches"]
      938 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      940 LOADK                            R8 K271 ["InspectInstanceMaxStringLength"]
      941 LOADN                            R9 1000
      942 CALL                             R7 2 1
      943 CALL                             R7 0 1
      944 SETTABLEKS                       R7 R5 K272 ["FIntInspectInstanceMaxStringLength"]
      946 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      948 LOADK                            R8 K273 ["MCPAssistantGenerationIndicatorWarningTime"]
      949 LOADN                            R9 10
      950 CALL                             R7 2 1
      951 CALL                             R7 0 1
      952 SETTABLEKS                       R7 R5 K274 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
      954 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      956 LOADK                            R8 K275 ["MCPAssistantInputAreaCharLimit"]
      957 LOADN                            R9 4000
      958 CALL                             R7 2 1
      959 CALL                             R7 0 1
      960 SETTABLEKS                       R7 R5 K276 ["FIntMCPAssistantInputAreaCharLimit"]
      962 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      964 LOADK                            R8 K277 ["MCPAssistantMaxPromptHistory"]
      965 LOADN                            R9 20
      966 CALL                             R7 2 1
      967 CALL                             R7 0 1
      968 SETTABLEKS                       R7 R5 K278 ["FIntMCPAssistantMaxPromptHistory"]
      970 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      972 LOADK                            R8 K279 ["MCPAssistantMaxToolCalls"]
      973 LOADN                            R9 20
      974 CALL                             R7 2 1
      975 CALL                             R7 0 1
      976 SETTABLEKS                       R7 R5 K280 ["FIntMCPAssistantMaxToolCalls"]
      978 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      980 LOADK                            R8 K281 ["PlaytestMaxToolCalls"]
      981 LOADN                            R9 50
      982 CALL                             R7 2 1
      983 CALL                             R7 0 1
      984 SETTABLEKS                       R7 R5 K282 ["FIntPlaytestMaxToolCalls"]
      986 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      988 LOADK                            R8 K283 ["PrimGenLongRunThresholdSec"]
      989 LOADN                            R9 120
      990 CALL                             R7 2 1
      991 CALL                             R7 0 1
      992 SETTABLEKS                       R7 R5 K284 ["FIntPrimGenLongRunThresholdSec"]
      994 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
      996 LOADK                            R8 K285 ["PrimGenTextMaxLength"]
      997 LOADN                            R9 80
      998 CALL                             R7 2 1
      999 CALL                             R7 0 1
     1000 SETTABLEKS                       R7 R5 K286 ["FIntPrimGenTextMaxLength"]
     1002 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
     1004 LOADK                            R8 K287 ["PrimGenVerticalGutter"]
     1005 LOADN                            R9 10
     1006 CALL                             R7 2 1
     1007 CALL                             R7 0 1
     1008 SETTABLEKS                       R7 R5 K288 ["FIntPrimGenVerticalGutter"]
     1010 GETTABLEKS                       R7 R4 K223 ["createGetFInt"]
     1012 LOADK                            R8 K289 ["UnitTestSubagentMaxToolCalls"]
     1013 LOADN                            R9 100
     1014 CALL                             R7 2 1
     1015 CALL                             R7 0 1
     1016 SETTABLEKS                       R7 R5 K290 ["FIntUnitTestSubagentMaxToolCalls"]
     1018 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1020 LOADK                            R8 K292 ["AssistantDisabledSubagents"]
     1021 LOADK                            R9 K293 [""]
     1022 CALL                             R7 2 1
     1023 CALL                             R7 0 1
     1024 SETTABLEKS                       R7 R5 K294 ["FStringAssistantDisabledSubagents"]
     1026 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1028 LOADK                            R8 K295 ["AssistantGen3dDefaultModel"]
     1029 LOADK                            R9 K296 ["Assistant/glm51-h200"]
     1030 CALL                             R7 2 1
     1031 CALL                             R7 0 1
     1032 SETTABLEKS                       R7 R5 K297 ["FStringAssistantGen3dDefaultModel"]
     1034 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1036 LOADK                            R8 K298 ["AssistantImageGenHostOverride"]
     1037 LOADK                            R9 K293 [""]
     1038 CALL                             R7 2 1
     1039 CALL                             R7 0 1
     1040 SETTABLEKS                       R7 R5 K299 ["FStringAssistantImageGenHostOverride"]
     1042 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1044 LOADK                            R8 K300 ["AssistantMeshGenImageGenModelOverride"]
     1045 LOADK                            R9 K301 ["gemini"]
     1046 CALL                             R7 2 1
     1047 CALL                             R7 0 1
     1048 SETTABLEKS                       R7 R5 K302 ["FStringAssistantMeshGenImageGenModelOverride"]
     1050 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1052 LOADK                            R8 K303 ["AssistantMeshGenInferenceServiceOverride"]
     1053 LOADK                            R9 K304 ["stage-diff-mesh-gen"]
     1054 CALL                             R7 2 1
     1055 CALL                             R7 0 1
     1056 SETTABLEKS                       R7 R5 K305 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1058 GETIMPORT                        R7 K5 [require]
     1060 GETTABLEKS                       R8 R0 K306 ["FlagUtils"]
     1062 GETTABLEKS                       R8 R8 K307 ["createGetFStringAssistantMeshGenSchemaData"]
     1064 CALL                             R7 1 1
     1065 CALL                             R7 0 1
     1066 SETTABLEKS                       R7 R5 K308 ["FStringAssistantMeshGenSchemaData"]
     1068 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1070 LOADK                            R8 K309 ["AssistantSkillsAllowlist"]
     1071 LOADK                            R9 K310 ["docs-search, scene-analysis"]
     1072 CALL                             R7 2 1
     1073 CALL                             R7 0 1
     1074 SETTABLEKS                       R7 R5 K311 ["FStringAssistantSkillsAllowlist"]
     1076 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1078 LOADK                            R8 K312 ["AssistantToolsExcludedDirectories"]
     1079 LOADK                            R9 K313 ["CoreGui,PlayerGui,LoadedCode"]
     1080 CALL                             R7 2 1
     1081 CALL                             R7 0 1
     1082 SETTABLEKS                       R7 R5 K314 ["FStringAssistantToolsExcludedDirectories"]
     1084 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1086 LOADK                            R8 K315 ["AssistantToolWidgetMappings"]
     1087 LOADK                            R9 K293 [""]
     1088 CALL                             R7 2 1
     1089 CALL                             R7 0 1
     1090 SETTABLEKS                       R7 R5 K316 ["FStringAssistantToolWidgetMappings"]
     1092 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1094 LOADK                            R8 K317 ["AssistantUnitTestSubagentModel"]
     1095 LOADK                            R9 K318 ["Assistant/glm5"]
     1096 CALL                             R7 2 1
     1097 CALL                             R7 0 1
     1098 SETTABLEKS                       R7 R5 K319 ["FStringAssistantUnitTestSubagentModel"]
     1100 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1102 LOADK                            R8 K320 ["ConvAIMeshGenModerationUrl"]
     1103 LOADK                            R9 K321 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1104 CALL                             R7 2 1
     1105 CALL                             R7 0 1
     1106 SETTABLEKS                       R7 R5 K322 ["FStringConvAIMeshGenModerationUrl"]
     1108 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1110 LOADK                            R8 K323 ["MCPAssistantAnthropicModels"]
     1111 LOADK                            R9 K324 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1112 CALL                             R7 2 1
     1113 CALL                             R7 0 1
     1114 SETTABLEKS                       R7 R5 K325 ["FStringMCPAssistantAnthropicModels"]
     1116 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1118 LOADK                            R8 K326 ["MCPAssistantClaudeAPIKey"]
     1119 LOADK                            R9 K293 [""]
     1120 CALL                             R7 2 1
     1121 CALL                             R7 0 1
     1122 SETTABLEKS                       R7 R5 K327 ["FStringMCPAssistantClaudeAPIKey"]
     1124 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1126 LOADK                            R8 K328 ["MCPAssistantCustomModelName"]
     1127 LOADK                            R9 K293 [""]
     1128 CALL                             R7 2 1
     1129 CALL                             R7 0 1
     1130 SETTABLEKS                       R7 R5 K329 ["FStringMCPAssistantCustomModelName"]
     1132 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1134 LOADK                            R8 K330 ["MCPAssistantGeminiAPIKey"]
     1135 LOADK                            R9 K293 [""]
     1136 CALL                             R7 2 1
     1137 CALL                             R7 0 1
     1138 SETTABLEKS                       R7 R5 K331 ["FStringMCPAssistantGeminiAPIKey"]
     1140 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1142 LOADK                            R8 K332 ["MCPAssistantGeminiModels"]
     1143 LOADK                            R9 K333 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1144 CALL                             R7 2 1
     1145 CALL                             R7 0 1
     1146 SETTABLEKS                       R7 R5 K334 ["FStringMCPAssistantGeminiModels"]
     1148 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1150 LOADK                            R8 K335 ["MCPAssistantOpenAIAPIKey"]
     1151 LOADK                            R9 K293 [""]
     1152 CALL                             R7 2 1
     1153 CALL                             R7 0 1
     1154 SETTABLEKS                       R7 R5 K336 ["FStringMCPAssistantOpenAIAPIKey"]
     1156 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1158 LOADK                            R8 K337 ["MCPAssistantOpenAIModels"]
     1159 LOADK                            R9 K338 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1160 CALL                             R7 2 1
     1161 CALL                             R7 0 1
     1162 SETTABLEKS                       R7 R5 K339 ["FStringMCPAssistantOpenAIModels"]
     1164 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1166 LOADK                            R8 K340 ["MCPAssistantPrimitiveGenServerURL"]
     1167 LOADK                            R9 K293 [""]
     1168 CALL                             R7 2 1
     1169 CALL                             R7 0 1
     1170 SETTABLEKS                       R7 R5 K341 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1172 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1174 LOADK                            R8 K342 ["MCPAssistantTestLLMAPIKey"]
     1175 LOADK                            R9 K293 [""]
     1176 CALL                             R7 2 1
     1177 CALL                             R7 0 1
     1178 SETTABLEKS                       R7 R5 K343 ["FStringMCPAssistantTestLLMAPIKey"]
     1180 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1182 LOADK                            R8 K344 ["MCPAssistantURLOverride"]
     1183 LOADK                            R9 K293 [""]
     1184 CALL                             R7 2 1
     1185 CALL                             R7 0 1
     1186 SETTABLEKS                       R7 R5 K345 ["FStringMCPAssistantURLOverride"]
     1188 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1190 LOADK                            R8 K346 ["MCPDocsUrl"]
     1191 LOADK                            R9 K347 ["https://create.roblox.com/docs/studio/mcp/"]
     1192 CALL                             R7 2 1
     1193 CALL                             R7 0 1
     1194 SETTABLEKS                       R7 R5 K348 ["FStringMCPDocsUrl"]
     1196 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1198 LOADK                            R8 K349 ["PlaytestConversationURL"]
     1199 LOADK                            R9 K350 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1200 CALL                             R7 2 1
     1201 CALL                             R7 0 1
     1202 SETTABLEKS                       R7 R5 K351 ["FStringPlaytestConversationURL"]
     1204 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1206 LOADK                            R8 K352 ["PlaytestModelName"]
     1207 LOADK                            R9 K353 ["Qwen/Qwen35-35B-A3B"]
     1208 CALL                             R7 2 1
     1209 CALL                             R7 0 1
     1210 SETTABLEKS                       R7 R5 K354 ["FStringPlaytestModelName"]
     1212 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1214 LOADK                            R8 K355 ["PrimGenMCPToolName"]
     1215 LOADK                            R9 K356 ["generate_procedural_model"]
     1216 CALL                             R7 2 1
     1217 CALL                             R7 0 1
     1218 SETTABLEKS                       R7 R5 K357 ["FStringPrimGenMCPToolName"]
     1220 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1222 LOADK                            R8 K358 ["ProceduralScriptCapabilities"]
     1223 LOADK                            R9 K359 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1224 CALL                             R7 2 1
     1225 CALL                             R7 0 1
     1226 SETTABLEKS                       R7 R5 K360 ["FStringProceduralScriptCapabilities"]
     1228 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1230 LOADK                            R8 K361 ["ScreenCaptureFormat"]
     1231 LOADK                            R9 K293 [""]
     1232 CALL                             R7 2 1
     1233 CALL                             R7 0 1
     1234 SETTABLEKS                       R7 R5 K362 ["FStringScreenCaptureFormat"]
     1236 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1238 LOADK                            R8 K363 ["ScreenCaptureSize"]
     1239 LOADK                            R9 K293 [""]
     1240 CALL                             R7 2 1
     1241 CALL                             R7 0 1
     1242 SETTABLEKS                       R7 R5 K364 ["FStringScreenCaptureSize"]
     1244 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1246 LOADK                            R8 K365 ["ScreenCaptureSubagentModelName"]
     1247 LOADK                            R9 K293 [""]
     1248 CALL                             R7 2 1
     1249 CALL                             R7 0 1
     1250 SETTABLEKS                       R7 R5 K366 ["FStringScreenCaptureSubagentModelName"]
     1252 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1254 LOADK                            R8 K367 ["SegmentByPartsBetaFeatureUrl"]
     1255 LOADK                            R9 K293 [""]
     1256 CALL                             R7 2 1
     1257 CALL                             R7 0 1
     1258 SETTABLEKS                       R7 R5 K368 ["FStringSegmentByPartsBetaFeatureUrl"]
     1260 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1262 LOADK                            R8 K369 ["StudioScopeRiskLevelsDocsUrl"]
     1263 LOADK                            R9 K370 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1264 CALL                             R7 2 1
     1265 CALL                             R7 0 1
     1266 SETTABLEKS                       R7 R5 K371 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1268 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1270 LOADK                            R8 K372 ["SubagentExploreModelName"]
     1271 LOADK                            R9 K373 ["Assistant/glm5-b200-server-1"]
     1272 CALL                             R7 2 1
     1273 CALL                             R7 0 1
     1274 SETTABLEKS                       R7 R5 K374 ["FStringSubagentExploreModelName"]
     1276 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1278 LOADK                            R8 K375 ["SubagentURLOverride"]
     1279 LOADK                            R9 K293 [""]
     1280 CALL                             R7 2 1
     1281 CALL                             R7 0 1
     1282 SETTABLEKS                       R7 R5 K376 ["FStringSubagentURLOverride"]
     1284 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1286 LOADK                            R8 K377 ["TestLLMURLOverride"]
     1287 LOADK                            R9 K293 [""]
     1288 CALL                             R7 2 1
     1289 CALL                             R7 0 1
     1290 SETTABLEKS                       R7 R5 K378 ["FStringTestLLMURLOverride"]
     1292 GETTABLEKS                       R7 R4 K291 ["createGetFString"]
     1294 LOADK                            R8 K379 ["TestSubagentURLOverride"]
     1295 LOADK                            R9 K293 [""]
     1296 CALL                             R7 2 1
     1297 CALL                             R7 0 1
     1298 SETTABLEKS                       R7 R5 K380 ["FStringTestSubagentURLOverride"]
     1300 DUPTABLE                         R9 K382 [{"__index", "__newindex"}]
     1301 SETTABLEKS                       R3 R9 K381 ["__index"]
     1303 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1305 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1307 MOVE                             R8 R5
     1308 GETIMPORT                        R7 K16 [setmetatable]
     1310 CALL                             R7 2 1
     1311 RETURN                           R7 1
