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
       59 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       61 LOADK                            R8 K26 ["AllowThreadSuspendOverride"]
       62 CALL                             R7 1 1
       63 CALL                             R7 0 1
       64 SETTABLEKS                       R7 R5 K27 ["FFlagAllowThreadSuspendOverride"]
       66 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       68 LOADK                            R8 K28 ["AnimationGenOpenACE"]
       69 CALL                             R7 1 1
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R5 K29 ["FFlagAnimationGenOpenACE"]
       73 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       75 LOADK                            R8 K30 ["AssistantAcpHistoryCompatibility"]
       76 CALL                             R7 1 1
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R5 K31 ["FFlagAssistantAcpHistoryCompatibility"]
       80 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       82 LOADK                            R8 K32 ["AssistantAnimationGenTool"]
       83 CALL                             R7 1 1
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R5 K33 ["FFlagAssistantAnimationGenTool"]
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
      124 LOADK                            R8 K44 ["AssistantAvatarAutoSetupTool"]
      125 CALL                             R7 1 1
      126 CALL                             R7 0 1
      127 SETTABLEKS                       R7 R5 K45 ["FFlagAssistantAvatarAutoSetupTool"]
      129 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      131 LOADK                            R8 K46 ["AssistantBackgroundDataModelToolCall2"]
      132 CALL                             R7 1 1
      133 CALL                             R7 0 1
      134 SETTABLEKS                       R7 R5 K47 ["FFlagAssistantBackgroundDataModelToolCall"]
      136 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      138 LOADK                            R8 K48 ["AssistantBetaFeatureSkills"]
      139 CALL                             R7 1 1
      140 CALL                             R7 0 1
      141 SETTABLEKS                       R7 R5 K49 ["FFlagAssistantBetaFeatureSkills"]
      143 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      145 LOADK                            R8 K50 ["AssistantChatFollowBottomThreshold"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R5 K51 ["FFlagAssistantChatFollowBottomThreshold"]
      150 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      152 LOADK                            R8 K52 ["AssistantConsoleOutputTailFromEnd2"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R5 K53 ["FFlagAssistantConsoleOutputTailFromEnd"]
      157 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      159 LOADK                            R8 K54 ["AssistantDedupeAcpSessionListThreads"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R5 K55 ["FFlagAssistantDedupeAcpSessionListThreads"]
      164 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      166 LOADK                            R8 K56 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R5 K57 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      171 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      173 LOADK                            R8 K58 ["AssistantDisableBranching"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R5 K59 ["FFlagAssistantDisableBranching"]
      178 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      180 LOADK                            R8 K60 ["AssistantDisabledReason"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R5 K61 ["FFlagAssistantDisabledReason"]
      185 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      187 LOADK                            R8 K62 ["AssistantEval"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R5 K63 ["FFlagAssistantEval"]
      192 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      194 LOADK                            R8 K64 ["AssistantExecuteLuaBackground"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantExecuteLuaBackground"]
      199 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      201 LOADK                            R8 K66 ["AssistantFeedbackView"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantFeedbackView"]
      206 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      208 LOADK                            R8 K68 ["AssistantFixPlanModeInAcp2"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantFixPlanModeInAcp"]
      213 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      215 LOADK                            R8 K70 ["AssistantFixStartPlayHang"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantFixStartPlayHang"]
      220 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      222 LOADK                            R8 K72 ["AssistantGen3dAutoSegmentation"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantGen3dAutoSegmentation"]
      227 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      229 LOADK                            R8 K74 ["AssistantGen3dInputRequestedOverride"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantGen3dInputRequestedOverride"]
      234 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      236 LOADK                            R8 K76 ["AssistantGen3dRequirePromptToGenerate"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      241 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      243 LOADK                            R8 K78 ["AssistantGen3DImagePreviewTelemetry"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      248 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      250 LOADK                            R8 K80 ["AssistantGen3DTelemetryV2"]
      251 CALL                             R7 1 1
      252 CALL                             R7 0 1
      253 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantGen3DTelemetryV2"]
      255 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      257 LOADK                            R8 K82 ["AssistantGen3DAssetPublishTracking"]
      258 CALL                             R7 1 1
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantGen3DAssetPublishTracking"]
      262 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      264 LOADK                            R8 K84 ["AssistantGetStudioState"]
      265 CALL                             R7 1 1
      266 CALL                             R7 0 1
      267 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantGetStudioState"]
      269 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      271 LOADK                            R8 K86 ["AssistantHarnessSplit4"]
      272 CALL                             R7 1 1
      273 CALL                             R7 0 1
      274 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantHarnessSplit"]
      276 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      278 LOADK                            R8 K88 ["AssistantHarnessSplitExp2"]
      279 CALL                             R7 1 1
      280 CALL                             R7 0 1
      281 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantHarnessSplitExp"]
      283 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      285 LOADK                            R8 K90 ["AssistantHideSystemReminderContents"]
      286 CALL                             R7 1 1
      287 CALL                             R7 0 1
      288 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantHideSystemReminderContents"]
      290 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      292 LOADK                            R8 K92 ["AssistantHintMultiEditOverExecLuau"]
      293 CALL                             R7 1 1
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantHintMultiEditOverExecLuau"]
      297 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      299 LOADK                            R8 K94 ["AssistantImageGenAbortPollOn4xx"]
      300 CALL                             R7 1 1
      301 CALL                             R7 0 1
      302 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantImageGenAbortPollOn4xx"]
      304 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      306 LOADK                            R8 K96 ["AssistantImageGenImprovements"]
      307 CALL                             R7 1 1
      308 CALL                             R7 0 1
      309 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantImageGenImprovements"]
      311 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      313 LOADK                            R8 K98 ["AssistantImageGenSeed"]
      314 CALL                             R7 1 1
      315 CALL                             R7 0 1
      316 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantImageGenSeed"]
      318 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      320 LOADK                            R8 K100 ["AssistantImageGenUseOpenApiClient"]
      321 CALL                             R7 1 1
      322 CALL                             R7 0 1
      323 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantImageGenUseOpenApiClient"]
      325 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      327 LOADK                            R8 K102 ["AssistantImageSelectionForGen3D"]
      328 CALL                             R7 1 1
      329 CALL                             R7 0 1
      330 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantImageSelectionForGen3D"]
      332 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      334 LOADK                            R8 K104 ["AssistantImageSelectionWizardModeMeshGen"]
      335 CALL                             R7 1 1
      336 CALL                             R7 0 1
      337 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      339 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      341 LOADK                            R8 K106 ["AssistantImageSelectionWizardModePrimitiveGen"]
      342 CALL                             R7 1 1
      343 CALL                             R7 0 1
      344 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      346 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      348 LOADK                            R8 K108 ["AssistantInsertAssetSandboxProceduralModels"]
      349 CALL                             R7 1 1
      350 CALL                             R7 0 1
      351 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      353 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      355 LOADK                            R8 K110 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      356 CALL                             R7 1 1
      357 CALL                             R7 0 1
      358 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      360 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      362 LOADK                            R8 K112 ["AssistantInsertAssetSandboxScripts"]
      363 CALL                             R7 1 1
      364 CALL                             R7 0 1
      365 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantInsertAssetSandboxScripts"]
      367 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      369 LOADK                            R8 K114 ["AssistantMcpImageGenShortcut"]
      370 CALL                             R7 1 1
      371 CALL                             R7 0 1
      372 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantMcpImageGenShortcut"]
      374 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      376 LOADK                            R8 K116 ["AssistantMeshGenCarouselPreview"]
      377 CALL                             R7 1 1
      378 CALL                             R7 0 1
      379 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantMeshGenCarouselPreview"]
      381 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      383 LOADK                            R8 K118 ["AssistantMeshGenCombinedAddToPlace"]
      384 CALL                             R7 1 1
      385 CALL                             R7 0 1
      386 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      388 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      390 LOADK                            R8 K120 ["AssistantMeshGenHintImage"]
      391 CALL                             R7 1 1
      392 CALL                             R7 0 1
      393 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantMeshGenHintImage"]
      395 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      397 LOADK                            R8 K122 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      398 CALL                             R7 1 1
      399 CALL                             R7 0 1
      400 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      402 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      404 LOADK                            R8 K124 ["AssistantMeshGenRemoveAdminOptions"]
      405 CALL                             R7 1 1
      406 CALL                             R7 0 1
      407 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      409 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      411 LOADK                            R8 K126 ["AssistantMigratePrimitiveGenTool"]
      412 CALL                             R7 1 1
      413 CALL                             R7 0 1
      414 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantMigratePrimitiveGenTool"]
      416 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      418 LOADK                            R8 K128 ["AssistantMultiEditExternalClient"]
      419 CALL                             R7 1 1
      420 CALL                             R7 0 1
      421 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantMultiEditExternalClient"]
      423 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      425 LOADK                            R8 K130 ["UseStudioSideListTool"]
      426 CALL                             R7 1 1
      427 CALL                             R7 0 1
      428 SETTABLEKS                       R7 R5 K131 ["FFlagUseStudioSideListTool"]
      430 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      432 LOADK                            R8 K132 ["AssistantPlanRevisionList"]
      433 CALL                             R7 1 1
      434 CALL                             R7 0 1
      435 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantPlanRevisionList"]
      437 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      439 LOADK                            R8 K134 ["AssistantPlaytestContext"]
      440 CALL                             R7 1 1
      441 CALL                             R7 0 1
      442 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantPlaytestContext"]
      444 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      446 LOADK                            R8 K136 ["AssistantPlaytestToolFix"]
      447 CALL                             R7 1 1
      448 CALL                             R7 0 1
      449 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantPlaytestToolFix"]
      451 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      453 LOADK                            R8 K138 ["AssistantPrivilegedCodeExecution"]
      454 CALL                             R7 1 1
      455 CALL                             R7 0 1
      456 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantPrivilegedCodeExecution"]
      458 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      460 LOADK                            R8 K140 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      461 CALL                             R7 1 1
      462 CALL                             R7 0 1
      463 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      465 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      467 LOADK                            R8 K142 ["AssistantScreenCaptureSubagent3"]
      468 CALL                             R7 1 1
      469 CALL                             R7 0 1
      470 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantScreenCaptureSubagent"]
      472 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      474 LOADK                            R8 K144 ["AssistantSegmentationBridge"]
      475 CALL                             R7 1 1
      476 CALL                             R7 0 1
      477 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantSegmentationBridge"]
      479 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      481 LOADK                            R8 K146 ["AssistantSegmentationPanelScroll"]
      482 CALL                             R7 1 1
      483 CALL                             R7 0 1
      484 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantSegmentationPanelScroll"]
      486 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      488 LOADK                            R8 K148 ["AssistantSegmentationPromptModeSelector"]
      489 CALL                             R7 1 1
      490 CALL                             R7 0 1
      491 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantSegmentationPromptModeSelector"]
      493 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      495 LOADK                            R8 K150 ["AssistantSegmentationUIFixes"]
      496 CALL                             R7 1 1
      497 CALL                             R7 0 1
      498 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantSegmentationUIFixes"]
      500 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      502 LOADK                            R8 K152 ["AssistantSkillsCloudSync"]
      503 CALL                             R7 1 1
      504 CALL                             R7 0 1
      505 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantSkillsCloudSync"]
      507 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      509 LOADK                            R8 K154 ["AssistantSkillToolNameReplace"]
      510 CALL                             R7 1 1
      511 CALL                             R7 0 1
      512 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantSkillToolNameReplace"]
      514 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      516 LOADK                            R8 K156 ["AssistantSlashCommandViaAcp"]
      517 CALL                             R7 1 1
      518 CALL                             R7 0 1
      519 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantSlashCommandViaAcp"]
      521 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      523 LOADK                            R8 K158 ["AssistantStandaloneDataModel"]
      524 CALL                             R7 1 1
      525 CALL                             R7 0 1
      526 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantStandaloneDataModel"]
      528 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      530 LOADK                            R8 K160 ["AssistantStartStopPlayBusyCheck"]
      531 CALL                             R7 1 1
      532 CALL                             R7 0 1
      533 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantStartStopPlayBusyCheck"]
      535 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      537 LOADK                            R8 K162 ["AssistantStudioStateSystemReminder"]
      538 CALL                             R7 1 1
      539 CALL                             R7 0 1
      540 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantStudioStateSystemReminder"]
      542 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      544 LOADK                            R8 K164 ["AssistantSupportSlashCommandCancellation"]
      545 CALL                             R7 1 1
      546 CALL                             R7 0 1
      547 SETTABLEKS                       R7 R5 K165 ["FFlagAssistantSupportSlashCommandCancellation"]
      549 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      551 LOADK                            R8 K166 ["AssistantTestLLMPreserveThinking"]
      552 LOADB                            R9 1
      553 CALL                             R7 2 1
      554 CALL                             R7 0 1
      555 SETTABLEKS                       R7 R5 K167 ["FFlagAssistantTestLLMPreserveThinking"]
      557 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      559 LOADK                            R8 K168 ["AssistantTestLLMThinkingEnabled"]
      560 LOADB                            R9 1
      561 CALL                             R7 2 1
      562 CALL                             R7 0 1
      563 SETTABLEKS                       R7 R5 K169 ["FFlagAssistantTestLLMThinkingEnabled"]
      565 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      567 LOADK                            R8 K170 ["AssistantUnitTestSubagent4"]
      568 CALL                             R7 1 1
      569 CALL                             R7 0 1
      570 SETTABLEKS                       R7 R5 K171 ["FFlagAssistantUnitTestSubagent"]
      572 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      574 LOADK                            R8 K172 ["AssistantUseBuilderIcons"]
      575 CALL                             R7 1 1
      576 CALL                             R7 0 1
      577 SETTABLEKS                       R7 R5 K173 ["FFlagAssistantUseBuilderIcons"]
      579 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      581 LOADK                            R8 K174 ["AssistantUseNewTags"]
      582 CALL                             R7 1 1
      583 CALL                             R7 0 1
      584 SETTABLEKS                       R7 R5 K175 ["FFlagAssistantUseNewTags"]
      586 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      588 LOADK                            R8 K176 ["AssistantUseRemoteService"]
      589 CALL                             R7 1 1
      590 CALL                             R7 0 1
      591 SETTABLEKS                       R7 R5 K177 ["FFlagAssistantUseRemoteService"]
      593 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      595 LOADK                            R8 K178 ["AssistantACPFixPendingToolCall"]
      596 CALL                             R7 1 1
      597 CALL                             R7 0 1
      598 SETTABLEKS                       R7 R5 K179 ["FFlagAssistantACPFixPendingToolCall"]
      600 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      602 LOADK                            R8 K180 ["AssistantUseVariantHttpTransport"]
      603 CALL                             R7 1 1
      604 CALL                             R7 0 1
      605 SETTABLEKS                       R7 R5 K181 ["FFlagAssistantUseVariantHttpTransport"]
      607 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      609 LOADK                            R8 K182 ["AssistantVersionMismatchWarning"]
      610 CALL                             R7 1 1
      611 CALL                             R7 0 1
      612 SETTABLEKS                       R7 R5 K183 ["FFlagAssistantVersionMismatchWarning"]
      614 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      616 LOADK                            R8 K184 ["AssistantVideoCaptureTool"]
      617 CALL                             R7 1 1
      618 CALL                             R7 0 1
      619 SETTABLEKS                       R7 R5 K185 ["FFlagAssistantVideoCaptureTool"]
      621 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      623 LOADK                            R9 K186 ["AssistantVirtualInputEnabled"]
      624 CALL                             R8 1 1
      625 CALL                             R8 0 1
      626 AND                              R7 R8 R6
      627 SETTABLEKS                       R7 R5 K187 ["FFlagAssistantVirtualInputEnabled"]
      629 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      631 LOADK                            R8 K188 ["DebugAssistantMultiPlayerAgentsLog"]
      632 CALL                             R7 1 1
      633 CALL                             R7 0 1
      634 SETTABLEKS                       R7 R5 K189 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      636 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      638 LOADK                            R8 K190 ["DebugEnableTestLLMAdapter"]
      639 CALL                             R7 1 1
      640 CALL                             R7 0 1
      641 SETTABLEKS                       R7 R5 K191 ["FFlagDebugEnableTestLLMAdapter"]
      643 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      645 LOADK                            R8 K192 ["DebugMockPrimitiveGenBackend"]
      646 CALL                             R7 1 1
      647 CALL                             R7 0 1
      648 SETTABLEKS                       R7 R5 K193 ["FFlagDebugMockPrimitiveGenBackend"]
      650 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      652 LOADK                            R8 K194 ["DebugPrimGenDMNoReachable"]
      653 CALL                             R7 1 1
      654 CALL                             R7 0 1
      655 SETTABLEKS                       R7 R5 K195 ["FFlagDebugPrimGenDMNoReachable"]
      657 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      659 LOADK                            R8 K196 ["DisableMCPConnectionIndicator"]
      660 CALL                             R7 1 1
      661 CALL                             R7 0 1
      662 SETTABLEKS                       R7 R5 K197 ["FFlagDisableMCPConnectionIndicator"]
      664 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      666 LOADK                            R8 K198 ["FFlagDisableNavigationConfirmation"]
      667 CALL                             R7 1 1
      668 CALL                             R7 0 1
      669 SETTABLEKS                       R7 R5 K198 ["FFlagDisableNavigationConfirmation"]
      671 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      673 LOADK                            R8 K199 ["DisableNewSmartSize"]
      674 CALL                             R7 1 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K200 ["FFlagDisableNewSmartSize"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K201 ["DisableOldSmartSize"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K202 ["FFlagDisableOldSmartSize"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K203 ["FFlagDisableStartStopPlayConfirmation"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K203 ["FFlagDisableStartStopPlayConfirmation"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K204 ["FFlagDisableUserInputConfirmation"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K204 ["FFlagDisableUserInputConfirmation"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K205 ["EnableAssistantImageUpload"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K206 ["FFlagEnableAssistantImageUpload"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K207 ["EnablePlaytestSubagent"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K208 ["FFlagEnablePlaytestSubagent"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K209 ["ForceAssistantBackgroundDataModelToolCall"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K210 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K211 ["ForceAssistantScreenCaptureSubagent"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K212 ["FFlagForceAssistantScreenCaptureSubagent"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K213 ["ForceAssistantStudioStateSystemReminder"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K214 ["FFlagForceAssistantStudioStateSystemReminder"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K215 ["ForceAssistantUnitTestSubagent"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K216 ["FFlagForceAssistantUnitTestSubagent"]
      741 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      743 LOADK                            R8 K217 ["Gen3dSegmentationSelector"]
      744 CALL                             R7 1 1
      745 CALL                             R7 0 1
      746 SETTABLEKS                       R7 R5 K218 ["FFlagGen3dSegmentationSelector"]
      748 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      750 LOADK                            R8 K219 ["MarkdownStudioThemeColors"]
      751 CALL                             R7 1 1
      752 CALL                             R7 0 1
      753 SETTABLEKS                       R7 R5 K220 ["FFlagMarkdownStudioThemeColors"]
      755 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      757 LOADK                            R8 K221 ["MCPAssistantAzureOpenAI"]
      758 CALL                             R7 1 1
      759 CALL                             R7 0 1
      760 SETTABLEKS                       R7 R5 K222 ["FFlagMCPAssistantAzureOpenAI"]
      762 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      764 LOADK                            R8 K223 ["MCPAssistantManagementMenu5"]
      765 CALL                             R7 1 1
      766 CALL                             R7 0 1
      767 SETTABLEKS                       R7 R5 K224 ["FFlagMCPAssistantManagementMenu"]
      769 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      771 LOADK                            R8 K225 ["MCPAssistantUseNewMarkdown"]
      772 CALL                             R7 1 1
      773 CALL                             R7 0 1
      774 SETTABLEKS                       R7 R5 K226 ["FFlagMCPAssistantUseNewMarkdown"]
      776 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      778 LOADK                            R8 K227 ["MCPConnectionIndicatorTooltip"]
      779 CALL                             R7 1 1
      780 CALL                             R7 0 1
      781 SETTABLEKS                       R7 R5 K228 ["FFlagMCPConnectionIndicatorTooltip"]
      783 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      785 LOADK                            R8 K229 ["MCPContentNormalization"]
      786 CALL                             R7 1 1
      787 CALL                             R7 0 1
      788 SETTABLEKS                       R7 R5 K230 ["FFlagMCPContentNormalization"]
      790 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      792 LOADK                            R8 K231 ["MCPEnableToolDisabling"]
      793 CALL                             R7 1 1
      794 CALL                             R7 0 1
      795 SETTABLEKS                       R7 R5 K232 ["FFlagMCPEnableToolDisabling"]
      797 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      799 LOADK                            R8 K233 ["PlaytestVision"]
      800 CALL                             R7 1 1
      801 CALL                             R7 0 1
      802 SETTABLEKS                       R7 R5 K234 ["FFlagPlaytestVision"]
      804 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      806 LOADK                            R8 K235 ["PrimGenAllowReInsert"]
      807 CALL                             R7 1 1
      808 CALL                             R7 0 1
      809 SETTABLEKS                       R7 R5 K236 ["FFlagPrimGenAllowReInsert"]
      811 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      813 LOADK                            R8 K237 ["PrimGenBetterErrorType"]
      814 CALL                             R7 1 1
      815 CALL                             R7 0 1
      816 SETTABLEKS                       R7 R5 K238 ["FFlagPrimGenBetterErrorType"]
      818 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      820 LOADK                            R8 K239 ["PrimGenCarouselPreview"]
      821 CALL                             R7 1 1
      822 CALL                             R7 0 1
      823 SETTABLEKS                       R7 R5 K240 ["FFlagPrimGenCarouselPreview"]
      825 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      827 LOADK                            R8 K241 ["PrimGenDetectMineTypeFromContent"]
      828 CALL                             R7 1 1
      829 CALL                             R7 0 1
      830 SETTABLEKS                       R7 R5 K242 ["FFlagPrimGenDetectMineTypeFromContent"]
      832 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      834 LOADK                            R8 K243 ["PrimGenImageGenPromptTemplateEnabled"]
      835 CALL                             R7 1 1
      836 CALL                             R7 0 1
      837 SETTABLEKS                       R7 R5 K244 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      839 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      841 LOADK                            R8 K245 ["PrimGenRetryInPlayTest"]
      842 CALL                             R7 1 1
      843 CALL                             R7 0 1
      844 SETTABLEKS                       R7 R5 K246 ["FFlagPrimGenRetryInPlayTest"]
      846 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      848 LOADK                            R8 K247 ["PrimGenSchemaSelector"]
      849 CALL                             R7 1 1
      850 CALL                             R7 0 1
      851 SETTABLEKS                       R7 R5 K248 ["FFlagPrimGenSchemaSelector"]
      853 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      855 LOADK                            R8 K249 ["PrimGenVerboseDmIsUnReachableMsg"]
      856 CALL                             R7 1 1
      857 CALL                             R7 0 1
      858 SETTABLEKS                       R7 R5 K250 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      860 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      862 LOADK                            R8 K251 ["PrimGenVersionMismatchError"]
      863 CALL                             R7 1 1
      864 CALL                             R7 0 1
      865 SETTABLEKS                       R7 R5 K252 ["FFlagPrimGenVersionMismatchError"]
      867 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      869 LOADK                            R8 K253 ["PrimitiveGenRestoreError"]
      870 CALL                             R7 1 1
      871 CALL                             R7 0 1
      872 SETTABLEKS                       R7 R5 K254 ["FFlagPrimitiveGenRestoreError"]
      874 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      876 LOADK                            R8 K255 ["ScreenCaptureCamera"]
      877 CALL                             R7 1 1
      878 CALL                             R7 0 1
      879 SETTABLEKS                       R7 R5 K256 ["FFlagScreenCaptureCamera"]
      881 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      883 LOADK                            R8 K257 ["ScriptDebuggerServiceEnabled2"]
      884 CALL                             R7 1 1
      885 CALL                             R7 0 1
      886 SETTABLEKS                       R7 R5 K258 ["FFlagScriptDebuggerServiceEnabled"]
      888 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      890 LOADK                            R8 K259 ["SegmentationFastFollow"]
      891 CALL                             R7 1 1
      892 CALL                             R7 0 1
      893 SETTABLEKS                       R7 R5 K260 ["FFlagSegmentationFastFollow"]
      895 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      897 LOADK                            R8 K261 ["StudioOpenCloudMCP"]
      898 CALL                             R7 1 1
      899 CALL                             R7 0 1
      900 SETTABLEKS                       R7 R5 K262 ["FFlagStudioOpenCloudMCP"]
      902 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      904 LOADK                            R8 K263 ["SubagentScriptEditAutoConfirmation"]
      905 CALL                             R7 1 1
      906 CALL                             R7 0 1
      907 SETTABLEKS                       R7 R5 K264 ["FFlagSubagentScriptEditAutoConfirmation"]
      909 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      911 LOADK                            R8 K266 ["AmrAssetDependencyGrantEventTimeout"]
      912 LOADN                            R9 40
      913 CALL                             R7 2 1
      914 CALL                             R7 0 1
      915 SETTABLEKS                       R7 R5 K267 ["FIntAmrAssetDependencyGrantEventTimeout"]
      917 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      919 LOADK                            R8 K268 ["AssistantAutoSaveInterval"]
      920 LOADN                            R9 60
      921 CALL                             R7 2 1
      922 CALL                             R7 0 1
      923 SETTABLEKS                       R7 R5 K269 ["FIntAssistantAutoSaveInterval"]
      925 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      927 LOADK                            R8 K270 ["AssistantDebugToolMaxOutput"]
      928 LOADN                            R9 20000
      929 CALL                             R7 2 1
      930 CALL                             R7 0 1
      931 SETTABLEKS                       R7 R5 K271 ["FIntAssistantDebugToolMaxOutput"]
      933 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      935 LOADK                            R8 K272 ["AssistantJobWaitDefaultTimeout"]
      936 LOADN                            R9 600
      937 CALL                             R7 2 1
      938 CALL                             R7 0 1
      939 SETTABLEKS                       R7 R5 K273 ["FIntAssistantJobWaitDefaultTimeout"]
      941 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      943 LOADK                            R8 K274 ["AssistantMaxDisplayTextChars"]
      944 LOADK                            R9 K275 [100000]
      945 CALL                             R7 2 1
      946 CALL                             R7 0 1
      947 SETTABLEKS                       R7 R5 K276 ["FIntAssistantMaxDisplayTextChars"]
      949 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      951 LOADK                            R8 K277 ["AssistantMeshGenMaxTrianglesDefault"]
      952 LOADN                            R9 10000
      953 CALL                             R7 2 1
      954 CALL                             R7 0 1
      955 SETTABLEKS                       R7 R5 K278 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      957 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      959 LOADK                            R8 K279 ["AssistantMinPopoverHeight"]
      960 LOADN                            R9 150
      961 CALL                             R7 2 1
      962 CALL                             R7 0 1
      963 SETTABLEKS                       R7 R5 K280 ["FIntAssistantMinPopoverHeight"]
      965 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      967 LOADK                            R8 K281 ["AssistantPersistenceMessageLoadLimit"]
      968 LOADN                            R9 5
      969 CALL                             R7 2 1
      970 CALL                             R7 0 1
      971 SETTABLEKS                       R7 R5 K282 ["FIntAssistantPersistenceMessageLoadLimit"]
      973 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      975 LOADK                            R8 K283 ["AssistantPersistenceThreadLoadLimit"]
      976 LOADN                            R9 5
      977 CALL                             R7 2 1
      978 CALL                             R7 0 1
      979 SETTABLEKS                       R7 R5 K284 ["FIntAssistantPersistenceThreadLoadLimit"]
      981 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      983 LOADK                            R8 K285 ["AssistantPrimitiveGenMaxConcurrentJobs"]
      984 LOADN                            R9 999
      985 CALL                             R7 2 1
      986 CALL                             R7 0 1
      987 SETTABLEKS                       R7 R5 K286 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      989 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      991 LOADK                            R8 K287 ["AssistantPrimitiveGenPollIntervalMs"]
      992 LOADN                            R9 2000
      993 CALL                             R7 2 1
      994 CALL                             R7 0 1
      995 SETTABLEKS                       R7 R5 K288 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      997 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
      999 LOADK                            R8 K289 ["AssistantProcessEventTimeoutMS"]
     1000 LOADK                            R9 K290 [60000]
     1001 CALL                             R7 2 1
     1002 CALL                             R7 0 1
     1003 SETTABLEKS                       R7 R5 K291 ["FIntAssistantProcessEventTimeoutMS"]
     1005 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1007 LOADK                            R8 K292 ["ConvAIMaxHistoryCount"]
     1008 LOADN                            R9 6
     1009 CALL                             R7 2 1
     1010 CALL                             R7 0 1
     1011 SETTABLEKS                       R7 R5 K293 ["FIntConvAIMaxHistoryCount"]
     1013 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1015 LOADK                            R8 K294 ["ConvAIMeshGenGenerationRetryLimit"]
     1016 LOADN                            R9 4
     1017 CALL                             R7 2 1
     1018 CALL                             R7 0 1
     1019 SETTABLEKS                       R7 R5 K295 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1021 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1023 LOADK                            R8 K296 ["ConvAIMeshGenPublishAttemptLimit"]
     1024 LOADN                            R9 5
     1025 CALL                             R7 2 1
     1026 CALL                             R7 0 1
     1027 SETTABLEKS                       R7 R5 K297 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1029 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1031 LOADK                            R8 K298 ["ExecuteLuauMaxJsonLength"]
     1032 LOADK                            R9 K275 [100000]
     1033 CALL                             R7 2 1
     1034 CALL                             R7 0 1
     1035 SETTABLEKS                       R7 R5 K299 ["FIntExecuteLuauMaxJsonLength"]
     1037 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1039 LOADK                            R8 K300 ["ExecuteLuauMaxStringLength"]
     1040 LOADK                            R9 K275 [100000]
     1041 CALL                             R7 2 1
     1042 CALL                             R7 0 1
     1043 SETTABLEKS                       R7 R5 K301 ["FIntExecuteLuauMaxStringLength"]
     1045 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1047 LOADK                            R8 K302 ["FactorDelayPreview"]
     1048 LOADN                            R9 1
     1049 CALL                             R7 2 1
     1050 CALL                             R7 0 1
     1051 SETTABLEKS                       R7 R5 K303 ["FIntFactorDelayPreview"]
     1053 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1055 LOADK                            R8 K304 ["FromHistoryMaxResultChars"]
     1056 LOADK                            R9 K305 [200000]
     1057 CALL                             R7 2 1
     1058 CALL                             R7 0 1
     1059 SETTABLEKS                       R7 R5 K306 ["FIntFromHistoryMaxResultChars"]
     1061 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1063 LOADK                            R8 K307 ["GameTreeDefaultHeadLimit"]
     1064 LOADN                            R9 200
     1065 CALL                             R7 2 1
     1066 CALL                             R7 0 1
     1067 SETTABLEKS                       R7 R5 K308 ["FIntGameTreeDefaultHeadLimit"]
     1069 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1071 LOADK                            R8 K309 ["GameTreeDefaultMaxDepth"]
     1072 LOADN                            R9 3
     1073 CALL                             R7 2 1
     1074 CALL                             R7 0 1
     1075 SETTABLEKS                       R7 R5 K310 ["FIntGameTreeDefaultMaxDepth"]
     1077 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1079 LOADK                            R8 K311 ["GameTreeMaxAbsoluteDepth"]
     1080 LOADN                            R9 10
     1081 CALL                             R7 2 1
     1082 CALL                             R7 0 1
     1083 SETTABLEKS                       R7 R5 K312 ["FIntGameTreeMaxAbsoluteDepth"]
     1085 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1087 LOADK                            R8 K313 ["InspectInstanceMaxJsonLength"]
     1088 LOADN                            R9 500
     1089 CALL                             R7 2 1
     1090 CALL                             R7 0 1
     1091 SETTABLEKS                       R7 R5 K314 ["FIntInspectInstanceMaxJsonLength"]
     1093 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1095 LOADK                            R8 K315 ["InspectInstanceMaxMatches"]
     1096 LOADN                            R9 20
     1097 CALL                             R7 2 1
     1098 CALL                             R7 0 1
     1099 SETTABLEKS                       R7 R5 K316 ["FIntInspectInstanceMaxMatches"]
     1101 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1103 LOADK                            R8 K317 ["InspectInstanceMaxStringLength"]
     1104 LOADN                            R9 1000
     1105 CALL                             R7 2 1
     1106 CALL                             R7 0 1
     1107 SETTABLEKS                       R7 R5 K318 ["FIntInspectInstanceMaxStringLength"]
     1109 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1111 LOADK                            R8 K319 ["MCPAssistantGenerationIndicatorWarningTime"]
     1112 LOADN                            R9 10
     1113 CALL                             R7 2 1
     1114 CALL                             R7 0 1
     1115 SETTABLEKS                       R7 R5 K320 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1117 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1119 LOADK                            R8 K321 ["MCPAssistantInputAreaCharLimit"]
     1120 LOADN                            R9 4000
     1121 CALL                             R7 2 1
     1122 CALL                             R7 0 1
     1123 SETTABLEKS                       R7 R5 K322 ["FIntMCPAssistantInputAreaCharLimit"]
     1125 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1127 LOADK                            R8 K323 ["MCPAssistantMaxPromptHistory"]
     1128 LOADN                            R9 20
     1129 CALL                             R7 2 1
     1130 CALL                             R7 0 1
     1131 SETTABLEKS                       R7 R5 K324 ["FIntMCPAssistantMaxPromptHistory"]
     1133 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1135 LOADK                            R8 K325 ["MCPAssistantMaxToolCalls"]
     1136 LOADN                            R9 20
     1137 CALL                             R7 2 1
     1138 CALL                             R7 0 1
     1139 SETTABLEKS                       R7 R5 K326 ["FIntMCPAssistantMaxToolCalls"]
     1141 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1143 LOADK                            R8 K327 ["PlaytestLookBudget"]
     1144 LOADN                            R9 7
     1145 CALL                             R7 2 1
     1146 CALL                             R7 0 1
     1147 SETTABLEKS                       R7 R5 K328 ["FIntPlaytestLookBudget"]
     1149 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1151 LOADK                            R8 K329 ["PlaytestLookTimeoutMs"]
     1152 LOADK                            R9 K290 [60000]
     1153 CALL                             R7 2 1
     1154 CALL                             R7 0 1
     1155 SETTABLEKS                       R7 R5 K330 ["FIntPlaytestLookTimeoutMs"]
     1157 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1159 LOADK                            R8 K331 ["PlaytestMaxToolCalls"]
     1160 LOADN                            R9 50
     1161 CALL                             R7 2 1
     1162 CALL                             R7 0 1
     1163 SETTABLEKS                       R7 R5 K332 ["FIntPlaytestMaxToolCalls"]
     1165 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1167 LOADK                            R8 K333 ["PrimGenLongRunThresholdSec"]
     1168 LOADN                            R9 120
     1169 CALL                             R7 2 1
     1170 CALL                             R7 0 1
     1171 SETTABLEKS                       R7 R5 K334 ["FIntPrimGenLongRunThresholdSec"]
     1173 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1175 LOADK                            R8 K335 ["PrimGenTextMaxLength"]
     1176 LOADN                            R9 80
     1177 CALL                             R7 2 1
     1178 CALL                             R7 0 1
     1179 SETTABLEKS                       R7 R5 K336 ["FIntPrimGenTextMaxLength"]
     1181 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1183 LOADK                            R8 K337 ["PrimGenVerticalGutter"]
     1184 LOADN                            R9 10
     1185 CALL                             R7 2 1
     1186 CALL                             R7 0 1
     1187 SETTABLEKS                       R7 R5 K338 ["FIntPrimGenVerticalGutter"]
     1189 GETTABLEKS                       R7 R4 K265 ["createGetFInt"]
     1191 LOADK                            R8 K339 ["UnitTestSubagentMaxToolCalls"]
     1192 LOADN                            R9 100
     1193 CALL                             R7 2 1
     1194 CALL                             R7 0 1
     1195 SETTABLEKS                       R7 R5 K340 ["FIntUnitTestSubagentMaxToolCalls"]
     1197 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1199 LOADK                            R8 K342 ["AssistantDisabledSubagents"]
     1200 LOADK                            R9 K343 [""]
     1201 CALL                             R7 2 1
     1202 CALL                             R7 0 1
     1203 SETTABLEKS                       R7 R5 K344 ["FStringAssistantDisabledSubagents"]
     1205 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1207 LOADK                            R8 K345 ["AssistantGen3dDefaultModel"]
     1208 LOADK                            R9 K346 ["Assistant/glm51-h200"]
     1209 CALL                             R7 2 1
     1210 CALL                             R7 0 1
     1211 SETTABLEKS                       R7 R5 K347 ["FStringAssistantGen3dDefaultModel"]
     1213 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1215 LOADK                            R8 K348 ["AssistantImageGenHostOverride"]
     1216 LOADK                            R9 K343 [""]
     1217 CALL                             R7 2 1
     1218 CALL                             R7 0 1
     1219 SETTABLEKS                       R7 R5 K349 ["FStringAssistantImageGenHostOverride"]
     1221 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1223 LOADK                            R8 K350 ["AssistantJobRunTools"]
     1224 LOADK                            R9 K351 ["generate_procedural_model,generate_mesh"]
     1225 CALL                             R7 2 1
     1226 CALL                             R7 0 1
     1227 SETTABLEKS                       R7 R5 K352 ["FStringAssistantJobRunTools"]
     1229 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1231 LOADK                            R8 K353 ["AssistantMeshGenImageGenModelOverride"]
     1232 LOADK                            R9 K354 ["gemini"]
     1233 CALL                             R7 2 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R5 K355 ["FStringAssistantMeshGenImageGenModelOverride"]
     1237 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1239 LOADK                            R8 K356 ["AssistantMeshGenImageGenPromptTemplate"]
     1240 LOADK                            R9 K343 [""]
     1241 CALL                             R7 2 1
     1242 CALL                             R7 0 1
     1243 SETTABLEKS                       R7 R5 K357 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1245 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1247 LOADK                            R8 K358 ["AssistantMeshGenInferenceServiceOverride"]
     1248 LOADK                            R9 K359 ["stage-diff-mesh-gen"]
     1249 CALL                             R7 2 1
     1250 CALL                             R7 0 1
     1251 SETTABLEKS                       R7 R5 K360 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1253 GETIMPORT                        R7 K5 [require]
     1255 GETTABLEKS                       R8 R0 K361 ["FlagUtils"]
     1257 GETTABLEKS                       R8 R8 K362 ["createGetFStringAssistantMeshGenSchemaData"]
     1259 CALL                             R7 1 1
     1260 CALL                             R7 0 1
     1261 SETTABLEKS                       R7 R5 K363 ["FStringAssistantMeshGenSchemaData"]
     1263 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1265 LOADK                            R8 K364 ["AssistantSkillsAllowlist"]
     1266 LOADK                            R9 K365 ["docs-search, scene-analysis"]
     1267 CALL                             R7 2 1
     1268 CALL                             R7 0 1
     1269 SETTABLEKS                       R7 R5 K366 ["FStringAssistantSkillsAllowlist"]
     1271 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1273 LOADK                            R8 K367 ["AssistantTestLLMReasoningEffort"]
     1274 LOADK                            R9 K368 ["high"]
     1275 CALL                             R7 2 1
     1276 CALL                             R7 0 1
     1277 SETTABLEKS                       R7 R5 K369 ["FStringAssistantTestLLMReasoningEffort"]
     1279 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1281 LOADK                            R8 K370 ["AssistantToolsExcludedDirectories"]
     1282 LOADK                            R9 K371 ["CoreGui,PlayerGui,LoadedCode"]
     1283 CALL                             R7 2 1
     1284 CALL                             R7 0 1
     1285 SETTABLEKS                       R7 R5 K372 ["FStringAssistantToolsExcludedDirectories"]
     1287 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1289 LOADK                            R8 K373 ["AssistantToolWidgetMappings"]
     1290 LOADK                            R9 K343 [""]
     1291 CALL                             R7 2 1
     1292 CALL                             R7 0 1
     1293 SETTABLEKS                       R7 R5 K374 ["FStringAssistantToolWidgetMappings"]
     1295 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1297 LOADK                            R8 K375 ["AssistantUnitTestSubagentModel"]
     1298 LOADK                            R9 K376 ["Assistant/glm5"]
     1299 CALL                             R7 2 1
     1300 CALL                             R7 0 1
     1301 SETTABLEKS                       R7 R5 K377 ["FStringAssistantUnitTestSubagentModel"]
     1303 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1305 LOADK                            R8 K378 ["ConvAIMeshGenModerationUrl"]
     1306 LOADK                            R9 K379 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1307 CALL                             R7 2 1
     1308 CALL                             R7 0 1
     1309 SETTABLEKS                       R7 R5 K380 ["FStringConvAIMeshGenModerationUrl"]
     1311 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1313 LOADK                            R8 K381 ["MCPAssistantAnthropicModels"]
     1314 LOADK                            R9 K382 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1315 CALL                             R7 2 1
     1316 CALL                             R7 0 1
     1317 SETTABLEKS                       R7 R5 K383 ["FStringMCPAssistantAnthropicModels"]
     1319 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1321 LOADK                            R8 K384 ["MCPAssistantClaudeAPIKey"]
     1322 LOADK                            R9 K343 [""]
     1323 CALL                             R7 2 1
     1324 CALL                             R7 0 1
     1325 SETTABLEKS                       R7 R5 K385 ["FStringMCPAssistantClaudeAPIKey"]
     1327 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1329 LOADK                            R8 K386 ["MCPAssistantCustomModelName"]
     1330 LOADK                            R9 K343 [""]
     1331 CALL                             R7 2 1
     1332 CALL                             R7 0 1
     1333 SETTABLEKS                       R7 R5 K387 ["FStringMCPAssistantCustomModelName"]
     1335 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1337 LOADK                            R8 K388 ["MCPAssistantGeminiAPIKey"]
     1338 LOADK                            R9 K343 [""]
     1339 CALL                             R7 2 1
     1340 CALL                             R7 0 1
     1341 SETTABLEKS                       R7 R5 K389 ["FStringMCPAssistantGeminiAPIKey"]
     1343 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1345 LOADK                            R8 K390 ["MCPAssistantGeminiModels"]
     1346 LOADK                            R9 K391 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1347 CALL                             R7 2 1
     1348 CALL                             R7 0 1
     1349 SETTABLEKS                       R7 R5 K392 ["FStringMCPAssistantGeminiModels"]
     1351 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1353 LOADK                            R8 K393 ["MCPAssistantOpenAIAPIKey"]
     1354 LOADK                            R9 K343 [""]
     1355 CALL                             R7 2 1
     1356 CALL                             R7 0 1
     1357 SETTABLEKS                       R7 R5 K394 ["FStringMCPAssistantOpenAIAPIKey"]
     1359 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1361 LOADK                            R8 K395 ["MCPAssistantOpenAIModels"]
     1362 LOADK                            R9 K396 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1363 CALL                             R7 2 1
     1364 CALL                             R7 0 1
     1365 SETTABLEKS                       R7 R5 K397 ["FStringMCPAssistantOpenAIModels"]
     1367 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1369 LOADK                            R8 K398 ["MCPAssistantPrimitiveGenServerURL"]
     1370 LOADK                            R9 K343 [""]
     1371 CALL                             R7 2 1
     1372 CALL                             R7 0 1
     1373 SETTABLEKS                       R7 R5 K399 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1375 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1377 LOADK                            R8 K400 ["MCPAssistantTestLLMAPIKey"]
     1378 LOADK                            R9 K343 [""]
     1379 CALL                             R7 2 1
     1380 CALL                             R7 0 1
     1381 SETTABLEKS                       R7 R5 K401 ["FStringMCPAssistantTestLLMAPIKey"]
     1383 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1385 LOADK                            R8 K402 ["MCPAssistantURLOverride"]
     1386 LOADK                            R9 K343 [""]
     1387 CALL                             R7 2 1
     1388 CALL                             R7 0 1
     1389 SETTABLEKS                       R7 R5 K403 ["FStringMCPAssistantURLOverride"]
     1391 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1393 LOADK                            R8 K404 ["MCPDocsUrl"]
     1394 LOADK                            R9 K405 ["https://create.roblox.com/docs/studio/mcp/"]
     1395 CALL                             R7 2 1
     1396 CALL                             R7 0 1
     1397 SETTABLEKS                       R7 R5 K406 ["FStringMCPDocsUrl"]
     1399 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1401 LOADK                            R8 K407 ["PlaytestConversationURL"]
     1402 LOADK                            R9 K408 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1403 CALL                             R7 2 1
     1404 CALL                             R7 0 1
     1405 SETTABLEKS                       R7 R5 K409 ["FStringPlaytestConversationURL"]
     1407 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1409 LOADK                            R8 K410 ["PlaytestModelName"]
     1410 LOADK                            R9 K411 ["Qwen/Qwen35-35B-A3B"]
     1411 CALL                             R7 2 1
     1412 CALL                             R7 0 1
     1413 SETTABLEKS                       R7 R5 K412 ["FStringPlaytestModelName"]
     1415 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1417 LOADK                            R8 K413 ["PrimGenImageGenPromptTemplate"]
     1418 LOADK                            R9 K343 [""]
     1419 CALL                             R7 2 1
     1420 CALL                             R7 0 1
     1421 SETTABLEKS                       R7 R5 K414 ["FStringPrimGenImageGenPromptTemplate"]
     1423 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1425 LOADK                            R8 K415 ["ProceduralScriptCapabilities"]
     1426 LOADK                            R9 K416 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1427 CALL                             R7 2 1
     1428 CALL                             R7 0 1
     1429 SETTABLEKS                       R7 R5 K417 ["FStringProceduralScriptCapabilities"]
     1431 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1433 LOADK                            R8 K418 ["ScreenCaptureFormat"]
     1434 LOADK                            R9 K343 [""]
     1435 CALL                             R7 2 1
     1436 CALL                             R7 0 1
     1437 SETTABLEKS                       R7 R5 K419 ["FStringScreenCaptureFormat"]
     1439 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1441 LOADK                            R8 K420 ["ScreenCaptureSize"]
     1442 LOADK                            R9 K343 [""]
     1443 CALL                             R7 2 1
     1444 CALL                             R7 0 1
     1445 SETTABLEKS                       R7 R5 K421 ["FStringScreenCaptureSize"]
     1447 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1449 LOADK                            R8 K422 ["ScreenCaptureSubagentModelName"]
     1450 LOADK                            R9 K343 [""]
     1451 CALL                             R7 2 1
     1452 CALL                             R7 0 1
     1453 SETTABLEKS                       R7 R5 K423 ["FStringScreenCaptureSubagentModelName"]
     1455 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1457 LOADK                            R8 K424 ["SegmentByPartsBetaFeatureUrl"]
     1458 LOADK                            R9 K343 [""]
     1459 CALL                             R7 2 1
     1460 CALL                             R7 0 1
     1461 SETTABLEKS                       R7 R5 K425 ["FStringSegmentByPartsBetaFeatureUrl"]
     1463 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1465 LOADK                            R8 K426 ["StudioScopeRiskLevelsDocsUrl"]
     1466 LOADK                            R9 K427 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1467 CALL                             R7 2 1
     1468 CALL                             R7 0 1
     1469 SETTABLEKS                       R7 R5 K428 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1471 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1473 LOADK                            R8 K429 ["SubagentExploreModelName"]
     1474 LOADK                            R9 K430 ["Assistant/glm5-b200-server-1"]
     1475 CALL                             R7 2 1
     1476 CALL                             R7 0 1
     1477 SETTABLEKS                       R7 R5 K431 ["FStringSubagentExploreModelName"]
     1479 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1481 LOADK                            R8 K432 ["SubagentURLOverride"]
     1482 LOADK                            R9 K343 [""]
     1483 CALL                             R7 2 1
     1484 CALL                             R7 0 1
     1485 SETTABLEKS                       R7 R5 K433 ["FStringSubagentURLOverride"]
     1487 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1489 LOADK                            R8 K434 ["TestLLMURLOverride"]
     1490 LOADK                            R9 K343 [""]
     1491 CALL                             R7 2 1
     1492 CALL                             R7 0 1
     1493 SETTABLEKS                       R7 R5 K435 ["FStringTestLLMURLOverride"]
     1495 GETTABLEKS                       R7 R4 K341 ["createGetFString"]
     1497 LOADK                            R8 K436 ["TestSubagentURLOverride"]
     1498 LOADK                            R9 K343 [""]
     1499 CALL                             R7 2 1
     1500 CALL                             R7 0 1
     1501 SETTABLEKS                       R7 R5 K437 ["FStringTestSubagentURLOverride"]
     1503 DUPTABLE                         R9 K439 [{"__index", "__newindex"}]
     1504 SETTABLEKS                       R3 R9 K438 ["__index"]
     1506 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1508 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1510 MOVE                             R8 R5
     1511 GETIMPORT                        R7 K16 [setmetatable]
     1513 CALL                             R7 2 1
     1514 RETURN                           R7 1
