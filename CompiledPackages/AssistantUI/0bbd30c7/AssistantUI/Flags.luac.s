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
       89 LOADK                            R8 K34 ["AssistantAssetSearchCreatorStoreUtm"]
       90 CALL                             R7 1 1
       91 CALL                             R7 0 1
       92 SETTABLEKS                       R7 R5 K35 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
       94 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       96 LOADK                            R8 K36 ["AssistantAssetSearchDirectInsert"]
       97 CALL                             R7 1 1
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R5 K37 ["FFlagAssistantAssetSearchDirectInsert"]
      101 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      103 LOADK                            R8 K38 ["AssistantAssetSearchInsertTool2"]
      104 CALL                             R7 1 1
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R5 K39 ["FFlagAssistantAssetSearchInsertTool"]
      108 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      110 LOADK                            R8 K40 ["AssistantAssetSearchInsertToolABTest"]
      111 CALL                             R7 1 1
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R5 K41 ["FFlagAssistantAssetSearchInsertToolABTest"]
      115 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      117 LOADK                            R8 K42 ["AssistantAssetTileNamePreview"]
      118 CALL                             R7 1 1
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R5 K43 ["FFlagAssistantAssetTileNamePreview"]
      122 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      124 LOADK                            R8 K44 ["AssistantBackgroundDataModelToolCall2"]
      125 CALL                             R7 1 1
      126 CALL                             R7 0 1
      127 SETTABLEKS                       R7 R5 K45 ["FFlagAssistantBackgroundDataModelToolCall"]
      129 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      131 LOADK                            R8 K46 ["AssistantBetaFeatureSkills"]
      132 CALL                             R7 1 1
      133 CALL                             R7 0 1
      134 SETTABLEKS                       R7 R5 K47 ["FFlagAssistantBetaFeatureSkills"]
      136 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      138 LOADK                            R8 K48 ["AssistantChatFollowBottomThreshold"]
      139 CALL                             R7 1 1
      140 CALL                             R7 0 1
      141 SETTABLEKS                       R7 R5 K49 ["FFlagAssistantChatFollowBottomThreshold"]
      143 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      145 LOADK                            R8 K50 ["AssistantConsoleOutputTailFromEnd2"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R5 K51 ["FFlagAssistantConsoleOutputTailFromEnd"]
      150 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      152 LOADK                            R8 K52 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R5 K53 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      157 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      159 LOADK                            R8 K54 ["AssistantDisabledReason"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R5 K55 ["FFlagAssistantDisabledReason"]
      164 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      166 LOADK                            R8 K56 ["AssistantEval"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R5 K57 ["FFlagAssistantEval"]
      171 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      173 LOADK                            R8 K58 ["AssistantExecuteLuaBackground"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R5 K59 ["FFlagAssistantExecuteLuaBackground"]
      178 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      180 LOADK                            R8 K60 ["AssistantFeedbackView"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R5 K61 ["FFlagAssistantFeedbackView"]
      185 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      187 LOADK                            R8 K62 ["AssistantFixPlanModeInAcp"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R5 K63 ["FFlagAssistantFixPlanModeInAcp"]
      192 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      194 LOADK                            R8 K64 ["AssistantFixStartPlayHang"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantFixStartPlayHang"]
      199 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      201 LOADK                            R8 K66 ["AssistantGen3dAutoSegmentation"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantGen3dAutoSegmentation"]
      206 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      208 LOADK                            R8 K68 ["AssistantGen3dInputRequestedOverride"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantGen3dInputRequestedOverride"]
      213 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      215 LOADK                            R8 K70 ["AssistantGen3dRequirePromptToGenerate"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      220 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      222 LOADK                            R8 K72 ["AssistantGen3DTelemetryV2"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantGen3DTelemetryV2"]
      227 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      229 LOADK                            R8 K74 ["AssistantGetStudioState"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantGetStudioState"]
      234 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      236 LOADK                            R8 K76 ["AssistantHarnessSplit"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantHarnessSplit"]
      241 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      243 LOADK                            R8 K78 ["AssistantHarnessSplitExp"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantHarnessSplitExp"]
      248 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      250 LOADK                            R8 K80 ["AssistantHintMultiEditOverExecLuau"]
      251 CALL                             R7 1 1
      252 CALL                             R7 0 1
      253 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantHintMultiEditOverExecLuau"]
      255 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      257 LOADK                            R8 K82 ["AssistantImageGenAbortPollOn4xx"]
      258 CALL                             R7 1 1
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantImageGenAbortPollOn4xx"]
      262 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      264 LOADK                            R8 K84 ["AssistantImageGenImprovements"]
      265 CALL                             R7 1 1
      266 CALL                             R7 0 1
      267 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantImageGenImprovements"]
      269 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      271 LOADK                            R8 K86 ["AssistantImageGenSeed"]
      272 CALL                             R7 1 1
      273 CALL                             R7 0 1
      274 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantImageGenSeed"]
      276 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      278 LOADK                            R8 K88 ["AssistantImageGenUseOpenApiClient"]
      279 CALL                             R7 1 1
      280 CALL                             R7 0 1
      281 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantImageGenUseOpenApiClient"]
      283 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      285 LOADK                            R8 K90 ["AssistantImageSelectionForGen3D"]
      286 CALL                             R7 1 1
      287 CALL                             R7 0 1
      288 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantImageSelectionForGen3D"]
      290 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      292 LOADK                            R8 K92 ["AssistantImageSelectionWizardModeMeshGen"]
      293 CALL                             R7 1 1
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      297 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      299 LOADK                            R8 K94 ["AssistantImageSelectionWizardModePrimitiveGen"]
      300 CALL                             R7 1 1
      301 CALL                             R7 0 1
      302 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      304 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      306 LOADK                            R8 K96 ["AssistantInsertAssetSandboxProceduralModels"]
      307 CALL                             R7 1 1
      308 CALL                             R7 0 1
      309 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      311 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      313 LOADK                            R8 K98 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      314 CALL                             R7 1 1
      315 CALL                             R7 0 1
      316 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      318 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      320 LOADK                            R8 K100 ["AssistantInsertAssetSandboxScripts"]
      321 CALL                             R7 1 1
      322 CALL                             R7 0 1
      323 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantInsertAssetSandboxScripts"]
      325 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      327 LOADK                            R8 K102 ["AssistantMarkdownColorFix"]
      328 CALL                             R7 1 1
      329 CALL                             R7 0 1
      330 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantMarkdownColorFix"]
      332 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      334 LOADK                            R8 K104 ["AssistantMcpImageGenShortcut"]
      335 CALL                             R7 1 1
      336 CALL                             R7 0 1
      337 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantMcpImageGenShortcut"]
      339 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      341 LOADK                            R8 K106 ["AssistantMeshGenCarouselPreview"]
      342 CALL                             R7 1 1
      343 CALL                             R7 0 1
      344 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantMeshGenCarouselPreview"]
      346 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      348 LOADK                            R8 K108 ["AssistantMeshGenCombinedAddToPlace"]
      349 CALL                             R7 1 1
      350 CALL                             R7 0 1
      351 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      353 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      355 LOADK                            R8 K110 ["AssistantMeshGenHintImage"]
      356 CALL                             R7 1 1
      357 CALL                             R7 0 1
      358 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantMeshGenHintImage"]
      360 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      362 LOADK                            R8 K112 ["AssistantMeshGenRemoveAdminOptions"]
      363 CALL                             R7 1 1
      364 CALL                             R7 0 1
      365 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      367 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      369 LOADK                            R8 K114 ["AssistantMultiEditExternalClient"]
      370 CALL                             R7 1 1
      371 CALL                             R7 0 1
      372 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantMultiEditExternalClient"]
      374 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      376 LOADK                            R8 K116 ["AssistantPlanRevisionList"]
      377 CALL                             R7 1 1
      378 CALL                             R7 0 1
      379 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantPlanRevisionList"]
      381 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      383 LOADK                            R8 K118 ["AssistantPlaytestToolFix"]
      384 CALL                             R7 1 1
      385 CALL                             R7 0 1
      386 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantPlaytestToolFix"]
      388 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      390 LOADK                            R8 K120 ["AssistantPrivilegedCodeExecution"]
      391 CALL                             R7 1 1
      392 CALL                             R7 0 1
      393 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantPrivilegedCodeExecution"]
      395 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      397 LOADK                            R8 K122 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      398 CALL                             R7 1 1
      399 CALL                             R7 0 1
      400 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      402 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      404 LOADK                            R8 K124 ["AssistantScreenCaptureSubagent3"]
      405 CALL                             R7 1 1
      406 CALL                             R7 0 1
      407 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantScreenCaptureSubagent"]
      409 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      411 LOADK                            R8 K126 ["AssistantSegmentationBridge"]
      412 CALL                             R7 1 1
      413 CALL                             R7 0 1
      414 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantSegmentationBridge"]
      416 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      418 LOADK                            R8 K128 ["AssistantSegmentationPanelScroll"]
      419 CALL                             R7 1 1
      420 CALL                             R7 0 1
      421 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantSegmentationPanelScroll"]
      423 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      425 LOADK                            R8 K130 ["AssistantSegmentationPromptModeSelector"]
      426 CALL                             R7 1 1
      427 CALL                             R7 0 1
      428 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantSegmentationPromptModeSelector"]
      430 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      432 LOADK                            R8 K132 ["AssistantSegmentationUIFixes"]
      433 CALL                             R7 1 1
      434 CALL                             R7 0 1
      435 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantSegmentationUIFixes"]
      437 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      439 LOADK                            R8 K134 ["AssistantSkillToolNameReplace"]
      440 CALL                             R7 1 1
      441 CALL                             R7 0 1
      442 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantSkillToolNameReplace"]
      444 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      446 LOADK                            R8 K136 ["AssistantStandaloneDataModel"]
      447 CALL                             R7 1 1
      448 CALL                             R7 0 1
      449 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantStandaloneDataModel"]
      451 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      453 LOADK                            R8 K138 ["AssistantSkillsCloudSync"]
      454 CALL                             R7 1 1
      455 CALL                             R7 0 1
      456 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantSkillsCloudSync"]
      458 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      460 LOADK                            R8 K140 ["AssistantStartStopPlayBusyCheck"]
      461 CALL                             R7 1 1
      462 CALL                             R7 0 1
      463 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantStartStopPlayBusyCheck"]
      465 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      467 LOADK                            R8 K142 ["AssistantStudioStateSystemReminder"]
      468 CALL                             R7 1 1
      469 CALL                             R7 0 1
      470 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantStudioStateSystemReminder"]
      472 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      474 LOADK                            R8 K144 ["AssistantSupportSlashCommandCancellation"]
      475 CALL                             R7 1 1
      476 CALL                             R7 0 1
      477 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantSupportSlashCommandCancellation"]
      479 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      481 LOADK                            R8 K146 ["AssistantTestLLMPreserveThinking"]
      482 LOADB                            R9 1
      483 CALL                             R7 2 1
      484 CALL                             R7 0 1
      485 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantTestLLMPreserveThinking"]
      487 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      489 LOADK                            R8 K148 ["AssistantTestLLMThinkingEnabled"]
      490 LOADB                            R9 1
      491 CALL                             R7 2 1
      492 CALL                             R7 0 1
      493 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantTestLLMThinkingEnabled"]
      495 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      497 LOADK                            R8 K150 ["AssistantUnitTestSubagent4"]
      498 CALL                             R7 1 1
      499 CALL                             R7 0 1
      500 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantUnitTestSubagent"]
      502 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      504 LOADK                            R8 K152 ["AssistantUseBuilderIcons"]
      505 CALL                             R7 1 1
      506 CALL                             R7 0 1
      507 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantUseBuilderIcons"]
      509 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      511 LOADK                            R8 K154 ["AssistantUseNewTags"]
      512 CALL                             R7 1 1
      513 CALL                             R7 0 1
      514 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantUseNewTags"]
      516 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      518 LOADK                            R8 K156 ["AssistantUseVariantHttpTransport"]
      519 CALL                             R7 1 1
      520 CALL                             R7 0 1
      521 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantUseVariantHttpTransport"]
      523 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      525 LOADK                            R8 K158 ["AssistantVersionMismatchWarning"]
      526 CALL                             R7 1 1
      527 CALL                             R7 0 1
      528 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantVersionMismatchWarning"]
      530 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      532 LOADK                            R8 K160 ["AssistantVideoCaptureTool"]
      533 CALL                             R7 1 1
      534 CALL                             R7 0 1
      535 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantVideoCaptureTool"]
      537 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      539 LOADK                            R9 K162 ["AssistantVirtualInputEnabled"]
      540 CALL                             R8 1 1
      541 CALL                             R8 0 1
      542 AND                              R7 R8 R6
      543 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantVirtualInputEnabled"]
      545 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      547 LOADK                            R8 K164 ["DebugAssistantMultiPlayerAgentsLog"]
      548 CALL                             R7 1 1
      549 CALL                             R7 0 1
      550 SETTABLEKS                       R7 R5 K165 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      552 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      554 LOADK                            R8 K166 ["DebugEnableTestLLMAdapter"]
      555 CALL                             R7 1 1
      556 CALL                             R7 0 1
      557 SETTABLEKS                       R7 R5 K167 ["FFlagDebugEnableTestLLMAdapter"]
      559 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      561 LOADK                            R8 K168 ["DebugMockPrimitiveGenBackend"]
      562 CALL                             R7 1 1
      563 CALL                             R7 0 1
      564 SETTABLEKS                       R7 R5 K169 ["FFlagDebugMockPrimitiveGenBackend"]
      566 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      568 LOADK                            R8 K170 ["DebugPrimGenDMNoReachable"]
      569 CALL                             R7 1 1
      570 CALL                             R7 0 1
      571 SETTABLEKS                       R7 R5 K171 ["FFlagDebugPrimGenDMNoReachable"]
      573 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      575 LOADK                            R8 K172 ["DisableMCPConnectionIndicator"]
      576 CALL                             R7 1 1
      577 CALL                             R7 0 1
      578 SETTABLEKS                       R7 R5 K173 ["FFlagDisableMCPConnectionIndicator"]
      580 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      582 LOADK                            R8 K174 ["FFlagDisableNavigationConfirmation"]
      583 CALL                             R7 1 1
      584 CALL                             R7 0 1
      585 SETTABLEKS                       R7 R5 K174 ["FFlagDisableNavigationConfirmation"]
      587 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      589 LOADK                            R8 K175 ["DisableNewSmartSize"]
      590 CALL                             R7 1 1
      591 CALL                             R7 0 1
      592 SETTABLEKS                       R7 R5 K176 ["FFlagDisableNewSmartSize"]
      594 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      596 LOADK                            R8 K177 ["DisableOldSmartSize"]
      597 CALL                             R7 1 1
      598 CALL                             R7 0 1
      599 SETTABLEKS                       R7 R5 K178 ["FFlagDisableOldSmartSize"]
      601 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      603 LOADK                            R8 K179 ["FFlagDisableStartStopPlayConfirmation"]
      604 CALL                             R7 1 1
      605 CALL                             R7 0 1
      606 SETTABLEKS                       R7 R5 K179 ["FFlagDisableStartStopPlayConfirmation"]
      608 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      610 LOADK                            R8 K180 ["FFlagDisableUserInputConfirmation"]
      611 CALL                             R7 1 1
      612 CALL                             R7 0 1
      613 SETTABLEKS                       R7 R5 K180 ["FFlagDisableUserInputConfirmation"]
      615 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      617 LOADK                            R8 K181 ["EnableAssistantImageUpload"]
      618 CALL                             R7 1 1
      619 CALL                             R7 0 1
      620 SETTABLEKS                       R7 R5 K182 ["FFlagEnableAssistantImageUpload"]
      622 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      624 LOADK                            R8 K183 ["EnablePlaytestSubagent"]
      625 CALL                             R7 1 1
      626 CALL                             R7 0 1
      627 SETTABLEKS                       R7 R5 K184 ["FFlagEnablePlaytestSubagent"]
      629 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      631 LOADK                            R8 K185 ["ForceAssistantBackgroundDataModelToolCall"]
      632 CALL                             R7 1 1
      633 CALL                             R7 0 1
      634 SETTABLEKS                       R7 R5 K186 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      636 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      638 LOADK                            R8 K187 ["ForceAssistantScreenCaptureSubagent"]
      639 CALL                             R7 1 1
      640 CALL                             R7 0 1
      641 SETTABLEKS                       R7 R5 K188 ["FFlagForceAssistantScreenCaptureSubagent"]
      643 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      645 LOADK                            R8 K189 ["ForceAssistantStudioStateSystemReminder"]
      646 CALL                             R7 1 1
      647 CALL                             R7 0 1
      648 SETTABLEKS                       R7 R5 K190 ["FFlagForceAssistantStudioStateSystemReminder"]
      650 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      652 LOADK                            R8 K191 ["ForceAssistantUnitTestSubagent"]
      653 CALL                             R7 1 1
      654 CALL                             R7 0 1
      655 SETTABLEKS                       R7 R5 K192 ["FFlagForceAssistantUnitTestSubagent"]
      657 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      659 LOADK                            R8 K193 ["Gen3dSegmentationSelector"]
      660 CALL                             R7 1 1
      661 CALL                             R7 0 1
      662 SETTABLEKS                       R7 R5 K194 ["FFlagGen3dSegmentationSelector"]
      664 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      666 LOADK                            R8 K195 ["MarkdownStudioThemeColors"]
      667 CALL                             R7 1 1
      668 CALL                             R7 0 1
      669 SETTABLEKS                       R7 R5 K196 ["FFlagMarkdownStudioThemeColors"]
      671 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      673 LOADK                            R8 K197 ["MCPAssistantAzureOpenAI"]
      674 CALL                             R7 1 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K198 ["FFlagMCPAssistantAzureOpenAI"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K199 ["MCPAssistantManagementMenu5"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K200 ["FFlagMCPAssistantManagementMenu"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K201 ["MCPAssistantUseNewMarkdown"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K202 ["FFlagMCPAssistantUseNewMarkdown"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K203 ["MCPContentNormalization"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K204 ["FFlagMCPContentNormalization"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K205 ["MCPEnableToolDisabling"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K206 ["FFlagMCPEnableToolDisabling"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K207 ["PrimGenAllowReInsert"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K208 ["FFlagPrimGenAllowReInsert"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K209 ["PrimGenAnnotateRightMimeType"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K210 ["FFlagPrimGenAnnotateRightMimeType"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K211 ["PrimGenBetterErrorType"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K212 ["FFlagPrimGenBetterErrorType"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K213 ["PrimGenCarouselPreview"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K214 ["FFlagPrimGenCarouselPreview"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K215 ["PrimGenDetectMineTypeFromContent"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K216 ["FFlagPrimGenDetectMineTypeFromContent"]
      741 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      743 LOADK                            R8 K217 ["PrimGenRetryInPlayTest"]
      744 CALL                             R7 1 1
      745 CALL                             R7 0 1
      746 SETTABLEKS                       R7 R5 K218 ["FFlagPrimGenRetryInPlayTest"]
      748 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      750 LOADK                            R8 K219 ["PrimGenSchemaSelector"]
      751 CALL                             R7 1 1
      752 CALL                             R7 0 1
      753 SETTABLEKS                       R7 R5 K220 ["FFlagPrimGenSchemaSelector"]
      755 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      757 LOADK                            R8 K221 ["PrimGenVerboseDmIsUnReachableMsg"]
      758 CALL                             R7 1 1
      759 CALL                             R7 0 1
      760 SETTABLEKS                       R7 R5 K222 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      762 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      764 LOADK                            R8 K223 ["PrimGenVersionMismatchError"]
      765 CALL                             R7 1 1
      766 CALL                             R7 0 1
      767 SETTABLEKS                       R7 R5 K224 ["FFlagPrimGenVersionMismatchError"]
      769 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      771 LOADK                            R8 K225 ["PrimitiveGenRestoreError"]
      772 CALL                             R7 1 1
      773 CALL                             R7 0 1
      774 SETTABLEKS                       R7 R5 K226 ["FFlagPrimitiveGenRestoreError"]
      776 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      778 LOADK                            R8 K227 ["ScreenCaptureCamera"]
      779 CALL                             R7 1 1
      780 CALL                             R7 0 1
      781 SETTABLEKS                       R7 R5 K228 ["FFlagScreenCaptureCamera"]
      783 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      785 LOADK                            R8 K229 ["ScriptDebuggerServiceEnabled2"]
      786 CALL                             R7 1 1
      787 CALL                             R7 0 1
      788 SETTABLEKS                       R7 R5 K230 ["FFlagScriptDebuggerServiceEnabled"]
      790 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      792 LOADK                            R8 K231 ["SegmentationFastFollow"]
      793 CALL                             R7 1 1
      794 CALL                             R7 0 1
      795 SETTABLEKS                       R7 R5 K232 ["FFlagSegmentationFastFollow"]
      797 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      799 LOADK                            R8 K233 ["StudioOpenCloudMCP"]
      800 CALL                             R7 1 1
      801 CALL                             R7 0 1
      802 SETTABLEKS                       R7 R5 K234 ["FFlagStudioOpenCloudMCP"]
      804 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      806 LOADK                            R8 K235 ["SubagentScriptEditAutoConfirmation"]
      807 CALL                             R7 1 1
      808 CALL                             R7 0 1
      809 SETTABLEKS                       R7 R5 K236 ["FFlagSubagentScriptEditAutoConfirmation"]
      811 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      813 LOADK                            R8 K238 ["AmrAssetDependencyGrantEventTimeout"]
      814 LOADN                            R9 40
      815 CALL                             R7 2 1
      816 CALL                             R7 0 1
      817 SETTABLEKS                       R7 R5 K239 ["FIntAmrAssetDependencyGrantEventTimeout"]
      819 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      821 LOADK                            R8 K240 ["AssistantAutoSaveInterval"]
      822 LOADN                            R9 60
      823 CALL                             R7 2 1
      824 CALL                             R7 0 1
      825 SETTABLEKS                       R7 R5 K241 ["FIntAssistantAutoSaveInterval"]
      827 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      829 LOADK                            R8 K242 ["AssistantDebugToolMaxOutput"]
      830 LOADN                            R9 20000
      831 CALL                             R7 2 1
      832 CALL                             R7 0 1
      833 SETTABLEKS                       R7 R5 K243 ["FIntAssistantDebugToolMaxOutput"]
      835 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      837 LOADK                            R8 K244 ["AssistantMeshGenMaxTrianglesDefault"]
      838 LOADN                            R9 10000
      839 CALL                             R7 2 1
      840 CALL                             R7 0 1
      841 SETTABLEKS                       R7 R5 K245 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      843 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      845 LOADK                            R8 K246 ["AssistantMinPopoverHeight"]
      846 LOADN                            R9 150
      847 CALL                             R7 2 1
      848 CALL                             R7 0 1
      849 SETTABLEKS                       R7 R5 K247 ["FIntAssistantMinPopoverHeight"]
      851 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      853 LOADK                            R8 K248 ["AssistantPersistenceMessageLoadLimit"]
      854 LOADN                            R9 5
      855 CALL                             R7 2 1
      856 CALL                             R7 0 1
      857 SETTABLEKS                       R7 R5 K249 ["FIntAssistantPersistenceMessageLoadLimit"]
      859 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      861 LOADK                            R8 K250 ["AssistantPersistenceThreadLoadLimit"]
      862 LOADN                            R9 5
      863 CALL                             R7 2 1
      864 CALL                             R7 0 1
      865 SETTABLEKS                       R7 R5 K251 ["FIntAssistantPersistenceThreadLoadLimit"]
      867 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      869 LOADK                            R8 K252 ["AssistantPrimitiveGenMaxConcurrentJobs"]
      870 LOADN                            R9 999
      871 CALL                             R7 2 1
      872 CALL                             R7 0 1
      873 SETTABLEKS                       R7 R5 K253 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      875 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      877 LOADK                            R8 K254 ["AssistantPrimitiveGenPollIntervalMs"]
      878 LOADN                            R9 2000
      879 CALL                             R7 2 1
      880 CALL                             R7 0 1
      881 SETTABLEKS                       R7 R5 K255 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      883 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      885 LOADK                            R8 K256 ["AssistantProcessEventTimeoutMS"]
      886 LOADK                            R9 K257 [60000]
      887 CALL                             R7 2 1
      888 CALL                             R7 0 1
      889 SETTABLEKS                       R7 R5 K258 ["FIntAssistantProcessEventTimeoutMS"]
      891 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      893 LOADK                            R8 K259 ["ConvAIMaxHistoryCount"]
      894 LOADN                            R9 6
      895 CALL                             R7 2 1
      896 CALL                             R7 0 1
      897 SETTABLEKS                       R7 R5 K260 ["FIntConvAIMaxHistoryCount"]
      899 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      901 LOADK                            R8 K261 ["ConvAIMeshGenGenerationRetryLimit"]
      902 LOADN                            R9 4
      903 CALL                             R7 2 1
      904 CALL                             R7 0 1
      905 SETTABLEKS                       R7 R5 K262 ["FIntConvAIMeshGenGenerationRetryLimit"]
      907 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      909 LOADK                            R8 K263 ["ConvAIMeshGenPublishAttemptLimit"]
      910 LOADN                            R9 5
      911 CALL                             R7 2 1
      912 CALL                             R7 0 1
      913 SETTABLEKS                       R7 R5 K264 ["FIntConvAIMeshGenPublishAttemptLimit"]
      915 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      917 LOADK                            R8 K265 ["ExecuteLuauMaxJsonLength"]
      918 LOADK                            R9 K266 [100000]
      919 CALL                             R7 2 1
      920 CALL                             R7 0 1
      921 SETTABLEKS                       R7 R5 K267 ["FIntExecuteLuauMaxJsonLength"]
      923 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      925 LOADK                            R8 K268 ["ExecuteLuauMaxStringLength"]
      926 LOADK                            R9 K266 [100000]
      927 CALL                             R7 2 1
      928 CALL                             R7 0 1
      929 SETTABLEKS                       R7 R5 K269 ["FIntExecuteLuauMaxStringLength"]
      931 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      933 LOADK                            R8 K270 ["FactorDelayPreview"]
      934 LOADN                            R9 1
      935 CALL                             R7 2 1
      936 CALL                             R7 0 1
      937 SETTABLEKS                       R7 R5 K271 ["FIntFactorDelayPreview"]
      939 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      941 LOADK                            R8 K272 ["FromHistoryMaxResultChars"]
      942 LOADK                            R9 K273 [200000]
      943 CALL                             R7 2 1
      944 CALL                             R7 0 1
      945 SETTABLEKS                       R7 R5 K274 ["FIntFromHistoryMaxResultChars"]
      947 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      949 LOADK                            R8 K275 ["GameTreeDefaultHeadLimit"]
      950 LOADN                            R9 200
      951 CALL                             R7 2 1
      952 CALL                             R7 0 1
      953 SETTABLEKS                       R7 R5 K276 ["FIntGameTreeDefaultHeadLimit"]
      955 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      957 LOADK                            R8 K277 ["GameTreeDefaultMaxDepth"]
      958 LOADN                            R9 3
      959 CALL                             R7 2 1
      960 CALL                             R7 0 1
      961 SETTABLEKS                       R7 R5 K278 ["FIntGameTreeDefaultMaxDepth"]
      963 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      965 LOADK                            R8 K279 ["GameTreeMaxAbsoluteDepth"]
      966 LOADN                            R9 10
      967 CALL                             R7 2 1
      968 CALL                             R7 0 1
      969 SETTABLEKS                       R7 R5 K280 ["FIntGameTreeMaxAbsoluteDepth"]
      971 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      973 LOADK                            R8 K281 ["InspectInstanceMaxJsonLength"]
      974 LOADN                            R9 500
      975 CALL                             R7 2 1
      976 CALL                             R7 0 1
      977 SETTABLEKS                       R7 R5 K282 ["FIntInspectInstanceMaxJsonLength"]
      979 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      981 LOADK                            R8 K283 ["InspectInstanceMaxMatches"]
      982 LOADN                            R9 20
      983 CALL                             R7 2 1
      984 CALL                             R7 0 1
      985 SETTABLEKS                       R7 R5 K284 ["FIntInspectInstanceMaxMatches"]
      987 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      989 LOADK                            R8 K285 ["InspectInstanceMaxStringLength"]
      990 LOADN                            R9 1000
      991 CALL                             R7 2 1
      992 CALL                             R7 0 1
      993 SETTABLEKS                       R7 R5 K286 ["FIntInspectInstanceMaxStringLength"]
      995 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
      997 LOADK                            R8 K287 ["MCPAssistantGenerationIndicatorWarningTime"]
      998 LOADN                            R9 10
      999 CALL                             R7 2 1
     1000 CALL                             R7 0 1
     1001 SETTABLEKS                       R7 R5 K288 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1003 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1005 LOADK                            R8 K289 ["MCPAssistantInputAreaCharLimit"]
     1006 LOADN                            R9 4000
     1007 CALL                             R7 2 1
     1008 CALL                             R7 0 1
     1009 SETTABLEKS                       R7 R5 K290 ["FIntMCPAssistantInputAreaCharLimit"]
     1011 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1013 LOADK                            R8 K291 ["MCPAssistantMaxPromptHistory"]
     1014 LOADN                            R9 20
     1015 CALL                             R7 2 1
     1016 CALL                             R7 0 1
     1017 SETTABLEKS                       R7 R5 K292 ["FIntMCPAssistantMaxPromptHistory"]
     1019 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1021 LOADK                            R8 K293 ["MCPAssistantMaxToolCalls"]
     1022 LOADN                            R9 20
     1023 CALL                             R7 2 1
     1024 CALL                             R7 0 1
     1025 SETTABLEKS                       R7 R5 K294 ["FIntMCPAssistantMaxToolCalls"]
     1027 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1029 LOADK                            R8 K295 ["PlaytestMaxToolCalls"]
     1030 LOADN                            R9 50
     1031 CALL                             R7 2 1
     1032 CALL                             R7 0 1
     1033 SETTABLEKS                       R7 R5 K296 ["FIntPlaytestMaxToolCalls"]
     1035 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1037 LOADK                            R8 K297 ["PrimGenLongRunThresholdSec"]
     1038 LOADN                            R9 120
     1039 CALL                             R7 2 1
     1040 CALL                             R7 0 1
     1041 SETTABLEKS                       R7 R5 K298 ["FIntPrimGenLongRunThresholdSec"]
     1043 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1045 LOADK                            R8 K299 ["PrimGenTextMaxLength"]
     1046 LOADN                            R9 80
     1047 CALL                             R7 2 1
     1048 CALL                             R7 0 1
     1049 SETTABLEKS                       R7 R5 K300 ["FIntPrimGenTextMaxLength"]
     1051 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1053 LOADK                            R8 K301 ["PrimGenVerticalGutter"]
     1054 LOADN                            R9 10
     1055 CALL                             R7 2 1
     1056 CALL                             R7 0 1
     1057 SETTABLEKS                       R7 R5 K302 ["FIntPrimGenVerticalGutter"]
     1059 GETTABLEKS                       R7 R4 K237 ["createGetFInt"]
     1061 LOADK                            R8 K303 ["UnitTestSubagentMaxToolCalls"]
     1062 LOADN                            R9 100
     1063 CALL                             R7 2 1
     1064 CALL                             R7 0 1
     1065 SETTABLEKS                       R7 R5 K304 ["FIntUnitTestSubagentMaxToolCalls"]
     1067 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1069 LOADK                            R8 K306 ["AssistantDisabledSubagents"]
     1070 LOADK                            R9 K307 [""]
     1071 CALL                             R7 2 1
     1072 CALL                             R7 0 1
     1073 SETTABLEKS                       R7 R5 K308 ["FStringAssistantDisabledSubagents"]
     1075 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1077 LOADK                            R8 K309 ["AssistantGen3dDefaultModel"]
     1078 LOADK                            R9 K310 ["Assistant/glm51-h200"]
     1079 CALL                             R7 2 1
     1080 CALL                             R7 0 1
     1081 SETTABLEKS                       R7 R5 K311 ["FStringAssistantGen3dDefaultModel"]
     1083 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1085 LOADK                            R8 K312 ["AssistantImageGenHostOverride"]
     1086 LOADK                            R9 K307 [""]
     1087 CALL                             R7 2 1
     1088 CALL                             R7 0 1
     1089 SETTABLEKS                       R7 R5 K313 ["FStringAssistantImageGenHostOverride"]
     1091 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1093 LOADK                            R8 K314 ["AssistantMeshGenImageGenModelOverride"]
     1094 LOADK                            R9 K315 ["gemini"]
     1095 CALL                             R7 2 1
     1096 CALL                             R7 0 1
     1097 SETTABLEKS                       R7 R5 K316 ["FStringAssistantMeshGenImageGenModelOverride"]
     1099 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1101 LOADK                            R8 K317 ["AssistantMeshGenInferenceServiceOverride"]
     1102 LOADK                            R9 K318 ["stage-diff-mesh-gen"]
     1103 CALL                             R7 2 1
     1104 CALL                             R7 0 1
     1105 SETTABLEKS                       R7 R5 K319 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1107 GETIMPORT                        R7 K5 [require]
     1109 GETTABLEKS                       R8 R0 K320 ["FlagUtils"]
     1111 GETTABLEKS                       R8 R8 K321 ["createGetFStringAssistantMeshGenSchemaData"]
     1113 CALL                             R7 1 1
     1114 CALL                             R7 0 1
     1115 SETTABLEKS                       R7 R5 K322 ["FStringAssistantMeshGenSchemaData"]
     1117 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1119 LOADK                            R8 K323 ["AssistantSkillsAllowlist"]
     1120 LOADK                            R9 K324 ["docs-search, scene-analysis"]
     1121 CALL                             R7 2 1
     1122 CALL                             R7 0 1
     1123 SETTABLEKS                       R7 R5 K325 ["FStringAssistantSkillsAllowlist"]
     1125 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1127 LOADK                            R8 K326 ["AssistantToolsExcludedDirectories"]
     1128 LOADK                            R9 K327 ["CoreGui,PlayerGui,LoadedCode"]
     1129 CALL                             R7 2 1
     1130 CALL                             R7 0 1
     1131 SETTABLEKS                       R7 R5 K328 ["FStringAssistantToolsExcludedDirectories"]
     1133 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1135 LOADK                            R8 K329 ["AssistantToolWidgetMappings"]
     1136 LOADK                            R9 K307 [""]
     1137 CALL                             R7 2 1
     1138 CALL                             R7 0 1
     1139 SETTABLEKS                       R7 R5 K330 ["FStringAssistantToolWidgetMappings"]
     1141 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1143 LOADK                            R8 K331 ["AssistantUnitTestSubagentModel"]
     1144 LOADK                            R9 K332 ["Assistant/glm5"]
     1145 CALL                             R7 2 1
     1146 CALL                             R7 0 1
     1147 SETTABLEKS                       R7 R5 K333 ["FStringAssistantUnitTestSubagentModel"]
     1149 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1151 LOADK                            R8 K334 ["ConvAIMeshGenModerationUrl"]
     1152 LOADK                            R9 K335 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1153 CALL                             R7 2 1
     1154 CALL                             R7 0 1
     1155 SETTABLEKS                       R7 R5 K336 ["FStringConvAIMeshGenModerationUrl"]
     1157 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1159 LOADK                            R8 K337 ["MCPAssistantAnthropicModels"]
     1160 LOADK                            R9 K338 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1161 CALL                             R7 2 1
     1162 CALL                             R7 0 1
     1163 SETTABLEKS                       R7 R5 K339 ["FStringMCPAssistantAnthropicModels"]
     1165 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1167 LOADK                            R8 K340 ["MCPAssistantClaudeAPIKey"]
     1168 LOADK                            R9 K307 [""]
     1169 CALL                             R7 2 1
     1170 CALL                             R7 0 1
     1171 SETTABLEKS                       R7 R5 K341 ["FStringMCPAssistantClaudeAPIKey"]
     1173 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1175 LOADK                            R8 K342 ["MCPAssistantCustomModelName"]
     1176 LOADK                            R9 K307 [""]
     1177 CALL                             R7 2 1
     1178 CALL                             R7 0 1
     1179 SETTABLEKS                       R7 R5 K343 ["FStringMCPAssistantCustomModelName"]
     1181 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1183 LOADK                            R8 K344 ["MCPAssistantGeminiAPIKey"]
     1184 LOADK                            R9 K307 [""]
     1185 CALL                             R7 2 1
     1186 CALL                             R7 0 1
     1187 SETTABLEKS                       R7 R5 K345 ["FStringMCPAssistantGeminiAPIKey"]
     1189 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1191 LOADK                            R8 K346 ["MCPAssistantGeminiModels"]
     1192 LOADK                            R9 K347 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1193 CALL                             R7 2 1
     1194 CALL                             R7 0 1
     1195 SETTABLEKS                       R7 R5 K348 ["FStringMCPAssistantGeminiModels"]
     1197 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1199 LOADK                            R8 K349 ["MCPAssistantOpenAIAPIKey"]
     1200 LOADK                            R9 K307 [""]
     1201 CALL                             R7 2 1
     1202 CALL                             R7 0 1
     1203 SETTABLEKS                       R7 R5 K350 ["FStringMCPAssistantOpenAIAPIKey"]
     1205 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1207 LOADK                            R8 K351 ["MCPAssistantOpenAIModels"]
     1208 LOADK                            R9 K352 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1209 CALL                             R7 2 1
     1210 CALL                             R7 0 1
     1211 SETTABLEKS                       R7 R5 K353 ["FStringMCPAssistantOpenAIModels"]
     1213 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1215 LOADK                            R8 K354 ["MCPAssistantPrimitiveGenServerURL"]
     1216 LOADK                            R9 K307 [""]
     1217 CALL                             R7 2 1
     1218 CALL                             R7 0 1
     1219 SETTABLEKS                       R7 R5 K355 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1221 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1223 LOADK                            R8 K356 ["MCPAssistantTestLLMAPIKey"]
     1224 LOADK                            R9 K307 [""]
     1225 CALL                             R7 2 1
     1226 CALL                             R7 0 1
     1227 SETTABLEKS                       R7 R5 K357 ["FStringMCPAssistantTestLLMAPIKey"]
     1229 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1231 LOADK                            R8 K358 ["MCPAssistantURLOverride"]
     1232 LOADK                            R9 K307 [""]
     1233 CALL                             R7 2 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R5 K359 ["FStringMCPAssistantURLOverride"]
     1237 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1239 LOADK                            R8 K360 ["MCPDocsUrl"]
     1240 LOADK                            R9 K361 ["https://create.roblox.com/docs/studio/mcp/"]
     1241 CALL                             R7 2 1
     1242 CALL                             R7 0 1
     1243 SETTABLEKS                       R7 R5 K362 ["FStringMCPDocsUrl"]
     1245 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1247 LOADK                            R8 K363 ["PlaytestConversationURL"]
     1248 LOADK                            R9 K364 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1249 CALL                             R7 2 1
     1250 CALL                             R7 0 1
     1251 SETTABLEKS                       R7 R5 K365 ["FStringPlaytestConversationURL"]
     1253 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1255 LOADK                            R8 K366 ["PlaytestModelName"]
     1256 LOADK                            R9 K367 ["Qwen/Qwen35-35B-A3B"]
     1257 CALL                             R7 2 1
     1258 CALL                             R7 0 1
     1259 SETTABLEKS                       R7 R5 K368 ["FStringPlaytestModelName"]
     1261 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1263 LOADK                            R8 K369 ["ProceduralScriptCapabilities"]
     1264 LOADK                            R9 K370 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1265 CALL                             R7 2 1
     1266 CALL                             R7 0 1
     1267 SETTABLEKS                       R7 R5 K371 ["FStringProceduralScriptCapabilities"]
     1269 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1271 LOADK                            R8 K372 ["ScreenCaptureFormat"]
     1272 LOADK                            R9 K307 [""]
     1273 CALL                             R7 2 1
     1274 CALL                             R7 0 1
     1275 SETTABLEKS                       R7 R5 K373 ["FStringScreenCaptureFormat"]
     1277 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1279 LOADK                            R8 K374 ["ScreenCaptureSize"]
     1280 LOADK                            R9 K307 [""]
     1281 CALL                             R7 2 1
     1282 CALL                             R7 0 1
     1283 SETTABLEKS                       R7 R5 K375 ["FStringScreenCaptureSize"]
     1285 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1287 LOADK                            R8 K376 ["ScreenCaptureSubagentModelName"]
     1288 LOADK                            R9 K307 [""]
     1289 CALL                             R7 2 1
     1290 CALL                             R7 0 1
     1291 SETTABLEKS                       R7 R5 K377 ["FStringScreenCaptureSubagentModelName"]
     1293 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1295 LOADK                            R8 K378 ["SegmentByPartsBetaFeatureUrl"]
     1296 LOADK                            R9 K307 [""]
     1297 CALL                             R7 2 1
     1298 CALL                             R7 0 1
     1299 SETTABLEKS                       R7 R5 K379 ["FStringSegmentByPartsBetaFeatureUrl"]
     1301 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1303 LOADK                            R8 K380 ["StudioScopeRiskLevelsDocsUrl"]
     1304 LOADK                            R9 K381 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1305 CALL                             R7 2 1
     1306 CALL                             R7 0 1
     1307 SETTABLEKS                       R7 R5 K382 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1309 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1311 LOADK                            R8 K383 ["SubagentExploreModelName"]
     1312 LOADK                            R9 K384 ["Assistant/glm5-b200-server-1"]
     1313 CALL                             R7 2 1
     1314 CALL                             R7 0 1
     1315 SETTABLEKS                       R7 R5 K385 ["FStringSubagentExploreModelName"]
     1317 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1319 LOADK                            R8 K386 ["SubagentURLOverride"]
     1320 LOADK                            R9 K307 [""]
     1321 CALL                             R7 2 1
     1322 CALL                             R7 0 1
     1323 SETTABLEKS                       R7 R5 K387 ["FStringSubagentURLOverride"]
     1325 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1327 LOADK                            R8 K388 ["TestLLMURLOverride"]
     1328 LOADK                            R9 K307 [""]
     1329 CALL                             R7 2 1
     1330 CALL                             R7 0 1
     1331 SETTABLEKS                       R7 R5 K389 ["FStringTestLLMURLOverride"]
     1333 GETTABLEKS                       R7 R4 K305 ["createGetFString"]
     1335 LOADK                            R8 K390 ["TestSubagentURLOverride"]
     1336 LOADK                            R9 K307 [""]
     1337 CALL                             R7 2 1
     1338 CALL                             R7 0 1
     1339 SETTABLEKS                       R7 R5 K391 ["FStringTestSubagentURLOverride"]
     1341 DUPTABLE                         R9 K393 [{"__index", "__newindex"}]
     1342 SETTABLEKS                       R3 R9 K392 ["__index"]
     1344 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1346 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1348 MOVE                             R8 R5
     1349 GETIMPORT                        R7 K16 [setmetatable]
     1351 CALL                             R7 2 1
     1352 RETURN                           R7 1
