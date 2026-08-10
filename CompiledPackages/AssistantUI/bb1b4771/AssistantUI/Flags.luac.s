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
       68 LOADK                            R8 K28 ["AssistantAcpHistoryCompatibility"]
       69 CALL                             R7 1 1
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R5 K29 ["FFlagAssistantAcpHistoryCompatibility"]
       73 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       75 LOADK                            R8 K30 ["AssistantAnimationGenTool"]
       76 CALL                             R7 1 1
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R5 K31 ["FFlagAssistantAnimationGenTool"]
       80 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       82 LOADK                            R8 K32 ["AssistantAssetSearchCreatorStoreUtm"]
       83 CALL                             R7 1 1
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R5 K33 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
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
      110 LOADK                            R8 K40 ["AssistantAssetTileNamePreview"]
      111 CALL                             R7 1 1
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R5 K41 ["FFlagAssistantAssetTileNamePreview"]
      115 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      117 LOADK                            R8 K42 ["AssistantAvatarAutoSetupTool"]
      118 CALL                             R7 1 1
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R5 K43 ["FFlagAssistantAvatarAutoSetupTool"]
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
      159 LOADK                            R8 K54 ["AssistantDisableBranching"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R5 K55 ["FFlagAssistantDisableBranching"]
      164 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      166 LOADK                            R8 K56 ["AssistantDisabledReason"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R5 K57 ["FFlagAssistantDisabledReason"]
      171 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      173 LOADK                            R8 K58 ["AssistantEval"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R5 K59 ["FFlagAssistantEval"]
      178 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      180 LOADK                            R8 K60 ["AssistantExecuteLuaBackground"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R5 K61 ["FFlagAssistantExecuteLuaBackground"]
      185 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      187 LOADK                            R8 K62 ["AssistantFeedbackView"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R5 K63 ["FFlagAssistantFeedbackView"]
      192 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      194 LOADK                            R8 K64 ["AssistantFixPlanModeInAcp2"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantFixPlanModeInAcp"]
      199 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      201 LOADK                            R8 K66 ["AssistantFixStartPlayHang"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantFixStartPlayHang"]
      206 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      208 LOADK                            R8 K68 ["AssistantGen3dAutoSegmentation"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantGen3dAutoSegmentation"]
      213 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      215 LOADK                            R8 K70 ["AssistantGen3dInputRequestedOverride"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantGen3dInputRequestedOverride"]
      220 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      222 LOADK                            R8 K72 ["AssistantGen3dRequirePromptToGenerate"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      227 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      229 LOADK                            R8 K74 ["AssistantGen3DImagePreviewTelemetry"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      234 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      236 LOADK                            R8 K76 ["AssistantGen3DTelemetryV2"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantGen3DTelemetryV2"]
      241 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      243 LOADK                            R8 K78 ["AssistantGen3DAssetPublishTracking"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantGen3DAssetPublishTracking"]
      248 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      250 LOADK                            R8 K80 ["AssistantGetStudioState"]
      251 CALL                             R7 1 1
      252 CALL                             R7 0 1
      253 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantGetStudioState"]
      255 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      257 LOADK                            R8 K82 ["AssistantHarnessSplit3"]
      258 CALL                             R7 1 1
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantHarnessSplit"]
      262 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      264 LOADK                            R8 K84 ["AssistantHarnessSplitExp"]
      265 CALL                             R7 1 1
      266 CALL                             R7 0 1
      267 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantHarnessSplitExp"]
      269 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      271 LOADK                            R8 K86 ["AssistantHideSystemReminderContents"]
      272 CALL                             R7 1 1
      273 CALL                             R7 0 1
      274 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantHideSystemReminderContents"]
      276 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      278 LOADK                            R8 K88 ["AssistantHintMultiEditOverExecLuau"]
      279 CALL                             R7 1 1
      280 CALL                             R7 0 1
      281 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantHintMultiEditOverExecLuau"]
      283 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      285 LOADK                            R8 K90 ["AssistantImageGenAbortPollOn4xx"]
      286 CALL                             R7 1 1
      287 CALL                             R7 0 1
      288 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantImageGenAbortPollOn4xx"]
      290 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      292 LOADK                            R8 K92 ["AssistantImageGenImprovements"]
      293 CALL                             R7 1 1
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantImageGenImprovements"]
      297 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      299 LOADK                            R8 K94 ["AssistantImageGenSeed"]
      300 CALL                             R7 1 1
      301 CALL                             R7 0 1
      302 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantImageGenSeed"]
      304 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      306 LOADK                            R8 K96 ["AssistantImageGenUseOpenApiClient"]
      307 CALL                             R7 1 1
      308 CALL                             R7 0 1
      309 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantImageGenUseOpenApiClient"]
      311 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      313 LOADK                            R8 K98 ["AssistantImageSelectionForGen3D"]
      314 CALL                             R7 1 1
      315 CALL                             R7 0 1
      316 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantImageSelectionForGen3D"]
      318 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      320 LOADK                            R8 K100 ["AssistantImageSelectionWizardModeMeshGen"]
      321 CALL                             R7 1 1
      322 CALL                             R7 0 1
      323 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      325 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      327 LOADK                            R8 K102 ["AssistantImageSelectionWizardModePrimitiveGen"]
      328 CALL                             R7 1 1
      329 CALL                             R7 0 1
      330 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      332 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      334 LOADK                            R8 K104 ["AssistantInsertAssetSandboxProceduralModels"]
      335 CALL                             R7 1 1
      336 CALL                             R7 0 1
      337 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      339 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      341 LOADK                            R8 K106 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      342 CALL                             R7 1 1
      343 CALL                             R7 0 1
      344 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      346 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      348 LOADK                            R8 K108 ["AssistantInsertAssetSandboxScripts"]
      349 CALL                             R7 1 1
      350 CALL                             R7 0 1
      351 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantInsertAssetSandboxScripts"]
      353 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      355 LOADK                            R8 K110 ["AssistantMarkdownColorFix"]
      356 CALL                             R7 1 1
      357 CALL                             R7 0 1
      358 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantMarkdownColorFix"]
      360 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      362 LOADK                            R8 K112 ["AssistantMcpImageGenShortcut"]
      363 CALL                             R7 1 1
      364 CALL                             R7 0 1
      365 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantMcpImageGenShortcut"]
      367 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      369 LOADK                            R8 K114 ["AssistantMeshGenCarouselPreview"]
      370 CALL                             R7 1 1
      371 CALL                             R7 0 1
      372 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantMeshGenCarouselPreview"]
      374 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      376 LOADK                            R8 K116 ["AssistantMeshGenCombinedAddToPlace"]
      377 CALL                             R7 1 1
      378 CALL                             R7 0 1
      379 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      381 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      383 LOADK                            R8 K118 ["AssistantMeshGenHintImage"]
      384 CALL                             R7 1 1
      385 CALL                             R7 0 1
      386 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantMeshGenHintImage"]
      388 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      390 LOADK                            R8 K120 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      391 CALL                             R7 1 1
      392 CALL                             R7 0 1
      393 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      395 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      397 LOADK                            R8 K122 ["AssistantMeshGenRemoveAdminOptions"]
      398 CALL                             R7 1 1
      399 CALL                             R7 0 1
      400 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      402 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      404 LOADK                            R8 K124 ["AssistantMigratePrimitiveGenTool"]
      405 CALL                             R7 1 1
      406 CALL                             R7 0 1
      407 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantMigratePrimitiveGenTool"]
      409 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      411 LOADK                            R8 K126 ["AssistantMultiEditExternalClient"]
      412 CALL                             R7 1 1
      413 CALL                             R7 0 1
      414 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantMultiEditExternalClient"]
      416 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      418 LOADK                            R8 K128 ["AssistantPlanRevisionList"]
      419 CALL                             R7 1 1
      420 CALL                             R7 0 1
      421 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantPlanRevisionList"]
      423 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      425 LOADK                            R8 K130 ["AssistantPlaytestToolFix"]
      426 CALL                             R7 1 1
      427 CALL                             R7 0 1
      428 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantPlaytestToolFix"]
      430 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      432 LOADK                            R8 K132 ["AssistantPrivilegedCodeExecution"]
      433 CALL                             R7 1 1
      434 CALL                             R7 0 1
      435 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantPrivilegedCodeExecution"]
      437 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      439 LOADK                            R8 K134 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      440 CALL                             R7 1 1
      441 CALL                             R7 0 1
      442 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      444 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      446 LOADK                            R8 K136 ["AssistantScreenCaptureSubagent3"]
      447 CALL                             R7 1 1
      448 CALL                             R7 0 1
      449 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantScreenCaptureSubagent"]
      451 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      453 LOADK                            R8 K138 ["AssistantSegmentationBridge"]
      454 CALL                             R7 1 1
      455 CALL                             R7 0 1
      456 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantSegmentationBridge"]
      458 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      460 LOADK                            R8 K140 ["AssistantSegmentationPanelScroll"]
      461 CALL                             R7 1 1
      462 CALL                             R7 0 1
      463 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantSegmentationPanelScroll"]
      465 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      467 LOADK                            R8 K142 ["AssistantSegmentationPromptModeSelector"]
      468 CALL                             R7 1 1
      469 CALL                             R7 0 1
      470 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantSegmentationPromptModeSelector"]
      472 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      474 LOADK                            R8 K144 ["AssistantSegmentationUIFixes"]
      475 CALL                             R7 1 1
      476 CALL                             R7 0 1
      477 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantSegmentationUIFixes"]
      479 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      481 LOADK                            R8 K146 ["AssistantSkillsCloudSync"]
      482 CALL                             R7 1 1
      483 CALL                             R7 0 1
      484 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantSkillsCloudSync"]
      486 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      488 LOADK                            R8 K148 ["AssistantSkillToolNameReplace"]
      489 CALL                             R7 1 1
      490 CALL                             R7 0 1
      491 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantSkillToolNameReplace"]
      493 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      495 LOADK                            R8 K150 ["AssistantSlashCommandViaAcp"]
      496 CALL                             R7 1 1
      497 CALL                             R7 0 1
      498 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantSlashCommandViaAcp"]
      500 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      502 LOADK                            R8 K152 ["AssistantStandaloneDataModel"]
      503 CALL                             R7 1 1
      504 CALL                             R7 0 1
      505 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantStandaloneDataModel"]
      507 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      509 LOADK                            R8 K154 ["AssistantStartStopPlayBusyCheck"]
      510 CALL                             R7 1 1
      511 CALL                             R7 0 1
      512 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantStartStopPlayBusyCheck"]
      514 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      516 LOADK                            R8 K156 ["AssistantStudioStateSystemReminder"]
      517 CALL                             R7 1 1
      518 CALL                             R7 0 1
      519 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantStudioStateSystemReminder"]
      521 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      523 LOADK                            R8 K158 ["AssistantSupportSlashCommandCancellation"]
      524 CALL                             R7 1 1
      525 CALL                             R7 0 1
      526 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantSupportSlashCommandCancellation"]
      528 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      530 LOADK                            R8 K160 ["AssistantTestLLMPreserveThinking"]
      531 LOADB                            R9 1
      532 CALL                             R7 2 1
      533 CALL                             R7 0 1
      534 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantTestLLMPreserveThinking"]
      536 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      538 LOADK                            R8 K162 ["AssistantTestLLMThinkingEnabled"]
      539 LOADB                            R9 1
      540 CALL                             R7 2 1
      541 CALL                             R7 0 1
      542 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantTestLLMThinkingEnabled"]
      544 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      546 LOADK                            R8 K164 ["AssistantUnitTestSubagent4"]
      547 CALL                             R7 1 1
      548 CALL                             R7 0 1
      549 SETTABLEKS                       R7 R5 K165 ["FFlagAssistantUnitTestSubagent"]
      551 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      553 LOADK                            R8 K166 ["AssistantUseBuilderIcons"]
      554 CALL                             R7 1 1
      555 CALL                             R7 0 1
      556 SETTABLEKS                       R7 R5 K167 ["FFlagAssistantUseBuilderIcons"]
      558 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      560 LOADK                            R8 K168 ["AssistantUseNewTags"]
      561 CALL                             R7 1 1
      562 CALL                             R7 0 1
      563 SETTABLEKS                       R7 R5 K169 ["FFlagAssistantUseNewTags"]
      565 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      567 LOADK                            R8 K170 ["AssistantUseRemoteService"]
      568 CALL                             R7 1 1
      569 CALL                             R7 0 1
      570 SETTABLEKS                       R7 R5 K171 ["FFlagAssistantUseRemoteService"]
      572 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      574 LOADK                            R8 K172 ["AssistantUseVariantHttpTransport"]
      575 CALL                             R7 1 1
      576 CALL                             R7 0 1
      577 SETTABLEKS                       R7 R5 K173 ["FFlagAssistantUseVariantHttpTransport"]
      579 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      581 LOADK                            R8 K174 ["AssistantVersionMismatchWarning"]
      582 CALL                             R7 1 1
      583 CALL                             R7 0 1
      584 SETTABLEKS                       R7 R5 K175 ["FFlagAssistantVersionMismatchWarning"]
      586 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      588 LOADK                            R8 K176 ["AssistantVideoCaptureTool"]
      589 CALL                             R7 1 1
      590 CALL                             R7 0 1
      591 SETTABLEKS                       R7 R5 K177 ["FFlagAssistantVideoCaptureTool"]
      593 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      595 LOADK                            R9 K178 ["AssistantVirtualInputEnabled"]
      596 CALL                             R8 1 1
      597 CALL                             R8 0 1
      598 AND                              R7 R8 R6
      599 SETTABLEKS                       R7 R5 K179 ["FFlagAssistantVirtualInputEnabled"]
      601 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      603 LOADK                            R8 K180 ["DebugAssistantMultiPlayerAgentsLog"]
      604 CALL                             R7 1 1
      605 CALL                             R7 0 1
      606 SETTABLEKS                       R7 R5 K181 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      608 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      610 LOADK                            R8 K182 ["DebugEnableTestLLMAdapter"]
      611 CALL                             R7 1 1
      612 CALL                             R7 0 1
      613 SETTABLEKS                       R7 R5 K183 ["FFlagDebugEnableTestLLMAdapter"]
      615 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      617 LOADK                            R8 K184 ["DebugMockPrimitiveGenBackend"]
      618 CALL                             R7 1 1
      619 CALL                             R7 0 1
      620 SETTABLEKS                       R7 R5 K185 ["FFlagDebugMockPrimitiveGenBackend"]
      622 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      624 LOADK                            R8 K186 ["DebugPrimGenDMNoReachable"]
      625 CALL                             R7 1 1
      626 CALL                             R7 0 1
      627 SETTABLEKS                       R7 R5 K187 ["FFlagDebugPrimGenDMNoReachable"]
      629 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      631 LOADK                            R8 K188 ["DisableMCPConnectionIndicator"]
      632 CALL                             R7 1 1
      633 CALL                             R7 0 1
      634 SETTABLEKS                       R7 R5 K189 ["FFlagDisableMCPConnectionIndicator"]
      636 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      638 LOADK                            R8 K190 ["FFlagDisableNavigationConfirmation"]
      639 CALL                             R7 1 1
      640 CALL                             R7 0 1
      641 SETTABLEKS                       R7 R5 K190 ["FFlagDisableNavigationConfirmation"]
      643 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      645 LOADK                            R8 K191 ["DisableNewSmartSize"]
      646 CALL                             R7 1 1
      647 CALL                             R7 0 1
      648 SETTABLEKS                       R7 R5 K192 ["FFlagDisableNewSmartSize"]
      650 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      652 LOADK                            R8 K193 ["DisableOldSmartSize"]
      653 CALL                             R7 1 1
      654 CALL                             R7 0 1
      655 SETTABLEKS                       R7 R5 K194 ["FFlagDisableOldSmartSize"]
      657 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      659 LOADK                            R8 K195 ["FFlagDisableStartStopPlayConfirmation"]
      660 CALL                             R7 1 1
      661 CALL                             R7 0 1
      662 SETTABLEKS                       R7 R5 K195 ["FFlagDisableStartStopPlayConfirmation"]
      664 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      666 LOADK                            R8 K196 ["FFlagDisableUserInputConfirmation"]
      667 CALL                             R7 1 1
      668 CALL                             R7 0 1
      669 SETTABLEKS                       R7 R5 K196 ["FFlagDisableUserInputConfirmation"]
      671 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      673 LOADK                            R8 K197 ["EnableAssistantImageUpload"]
      674 CALL                             R7 1 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K198 ["FFlagEnableAssistantImageUpload"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K199 ["EnablePlaytestSubagent"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K200 ["FFlagEnablePlaytestSubagent"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K201 ["ForceAssistantBackgroundDataModelToolCall"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K202 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K203 ["ForceAssistantScreenCaptureSubagent"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K204 ["FFlagForceAssistantScreenCaptureSubagent"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K205 ["ForceAssistantStudioStateSystemReminder"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K206 ["FFlagForceAssistantStudioStateSystemReminder"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K207 ["ForceAssistantUnitTestSubagent"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K208 ["FFlagForceAssistantUnitTestSubagent"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K209 ["Gen3dSegmentationSelector"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K210 ["FFlagGen3dSegmentationSelector"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K211 ["MarkdownStudioThemeColors"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K212 ["FFlagMarkdownStudioThemeColors"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K213 ["MCPAssistantAzureOpenAI"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K214 ["FFlagMCPAssistantAzureOpenAI"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K215 ["MCPAssistantManagementMenu5"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K216 ["FFlagMCPAssistantManagementMenu"]
      741 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      743 LOADK                            R8 K217 ["MCPAssistantUseNewMarkdown"]
      744 CALL                             R7 1 1
      745 CALL                             R7 0 1
      746 SETTABLEKS                       R7 R5 K218 ["FFlagMCPAssistantUseNewMarkdown"]
      748 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      750 LOADK                            R8 K219 ["MCPContentNormalization"]
      751 CALL                             R7 1 1
      752 CALL                             R7 0 1
      753 SETTABLEKS                       R7 R5 K220 ["FFlagMCPContentNormalization"]
      755 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      757 LOADK                            R8 K221 ["MCPEnableToolDisabling"]
      758 CALL                             R7 1 1
      759 CALL                             R7 0 1
      760 SETTABLEKS                       R7 R5 K222 ["FFlagMCPEnableToolDisabling"]
      762 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      764 LOADK                            R8 K223 ["PrimGenAllowReInsert"]
      765 CALL                             R7 1 1
      766 CALL                             R7 0 1
      767 SETTABLEKS                       R7 R5 K224 ["FFlagPrimGenAllowReInsert"]
      769 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      771 LOADK                            R8 K225 ["PrimGenBetterErrorType"]
      772 CALL                             R7 1 1
      773 CALL                             R7 0 1
      774 SETTABLEKS                       R7 R5 K226 ["FFlagPrimGenBetterErrorType"]
      776 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      778 LOADK                            R8 K227 ["PrimGenCarouselPreview"]
      779 CALL                             R7 1 1
      780 CALL                             R7 0 1
      781 SETTABLEKS                       R7 R5 K228 ["FFlagPrimGenCarouselPreview"]
      783 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      785 LOADK                            R8 K229 ["PrimGenDetectMineTypeFromContent"]
      786 CALL                             R7 1 1
      787 CALL                             R7 0 1
      788 SETTABLEKS                       R7 R5 K230 ["FFlagPrimGenDetectMineTypeFromContent"]
      790 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      792 LOADK                            R8 K231 ["PrimGenImageGenPromptTemplateEnabled"]
      793 CALL                             R7 1 1
      794 CALL                             R7 0 1
      795 SETTABLEKS                       R7 R5 K232 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      797 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      799 LOADK                            R8 K233 ["PrimGenRetryInPlayTest"]
      800 CALL                             R7 1 1
      801 CALL                             R7 0 1
      802 SETTABLEKS                       R7 R5 K234 ["FFlagPrimGenRetryInPlayTest"]
      804 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      806 LOADK                            R8 K235 ["PrimGenSchemaSelector"]
      807 CALL                             R7 1 1
      808 CALL                             R7 0 1
      809 SETTABLEKS                       R7 R5 K236 ["FFlagPrimGenSchemaSelector"]
      811 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      813 LOADK                            R8 K237 ["PrimGenVerboseDmIsUnReachableMsg"]
      814 CALL                             R7 1 1
      815 CALL                             R7 0 1
      816 SETTABLEKS                       R7 R5 K238 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      818 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      820 LOADK                            R8 K239 ["PrimGenVersionMismatchError"]
      821 CALL                             R7 1 1
      822 CALL                             R7 0 1
      823 SETTABLEKS                       R7 R5 K240 ["FFlagPrimGenVersionMismatchError"]
      825 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      827 LOADK                            R8 K241 ["PrimitiveGenRestoreError"]
      828 CALL                             R7 1 1
      829 CALL                             R7 0 1
      830 SETTABLEKS                       R7 R5 K242 ["FFlagPrimitiveGenRestoreError"]
      832 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      834 LOADK                            R8 K243 ["ScreenCaptureCamera"]
      835 CALL                             R7 1 1
      836 CALL                             R7 0 1
      837 SETTABLEKS                       R7 R5 K244 ["FFlagScreenCaptureCamera"]
      839 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      841 LOADK                            R8 K245 ["ScriptDebuggerServiceEnabled2"]
      842 CALL                             R7 1 1
      843 CALL                             R7 0 1
      844 SETTABLEKS                       R7 R5 K246 ["FFlagScriptDebuggerServiceEnabled"]
      846 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      848 LOADK                            R8 K247 ["SegmentationFastFollow"]
      849 CALL                             R7 1 1
      850 CALL                             R7 0 1
      851 SETTABLEKS                       R7 R5 K248 ["FFlagSegmentationFastFollow"]
      853 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      855 LOADK                            R8 K249 ["StudioOpenCloudMCP"]
      856 CALL                             R7 1 1
      857 CALL                             R7 0 1
      858 SETTABLEKS                       R7 R5 K250 ["FFlagStudioOpenCloudMCP"]
      860 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      862 LOADK                            R8 K251 ["SubagentScriptEditAutoConfirmation"]
      863 CALL                             R7 1 1
      864 CALL                             R7 0 1
      865 SETTABLEKS                       R7 R5 K252 ["FFlagSubagentScriptEditAutoConfirmation"]
      867 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      869 LOADK                            R8 K254 ["AmrAssetDependencyGrantEventTimeout"]
      870 LOADN                            R9 40
      871 CALL                             R7 2 1
      872 CALL                             R7 0 1
      873 SETTABLEKS                       R7 R5 K255 ["FIntAmrAssetDependencyGrantEventTimeout"]
      875 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      877 LOADK                            R8 K256 ["AssistantAutoSaveInterval"]
      878 LOADN                            R9 60
      879 CALL                             R7 2 1
      880 CALL                             R7 0 1
      881 SETTABLEKS                       R7 R5 K257 ["FIntAssistantAutoSaveInterval"]
      883 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      885 LOADK                            R8 K258 ["AssistantDebugToolMaxOutput"]
      886 LOADN                            R9 20000
      887 CALL                             R7 2 1
      888 CALL                             R7 0 1
      889 SETTABLEKS                       R7 R5 K259 ["FIntAssistantDebugToolMaxOutput"]
      891 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      893 LOADK                            R8 K260 ["AssistantJobWaitDefaultTimeout"]
      894 LOADN                            R9 600
      895 CALL                             R7 2 1
      896 CALL                             R7 0 1
      897 SETTABLEKS                       R7 R5 K261 ["FIntAssistantJobWaitDefaultTimeout"]
      899 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      901 LOADK                            R8 K262 ["AssistantMeshGenMaxTrianglesDefault"]
      902 LOADN                            R9 10000
      903 CALL                             R7 2 1
      904 CALL                             R7 0 1
      905 SETTABLEKS                       R7 R5 K263 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      907 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      909 LOADK                            R8 K264 ["AssistantMinPopoverHeight"]
      910 LOADN                            R9 150
      911 CALL                             R7 2 1
      912 CALL                             R7 0 1
      913 SETTABLEKS                       R7 R5 K265 ["FIntAssistantMinPopoverHeight"]
      915 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      917 LOADK                            R8 K266 ["AssistantPersistenceMessageLoadLimit"]
      918 LOADN                            R9 5
      919 CALL                             R7 2 1
      920 CALL                             R7 0 1
      921 SETTABLEKS                       R7 R5 K267 ["FIntAssistantPersistenceMessageLoadLimit"]
      923 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      925 LOADK                            R8 K268 ["AssistantPersistenceThreadLoadLimit"]
      926 LOADN                            R9 5
      927 CALL                             R7 2 1
      928 CALL                             R7 0 1
      929 SETTABLEKS                       R7 R5 K269 ["FIntAssistantPersistenceThreadLoadLimit"]
      931 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      933 LOADK                            R8 K270 ["AssistantPrimitiveGenMaxConcurrentJobs"]
      934 LOADN                            R9 999
      935 CALL                             R7 2 1
      936 CALL                             R7 0 1
      937 SETTABLEKS                       R7 R5 K271 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      939 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      941 LOADK                            R8 K272 ["AssistantPrimitiveGenPollIntervalMs"]
      942 LOADN                            R9 2000
      943 CALL                             R7 2 1
      944 CALL                             R7 0 1
      945 SETTABLEKS                       R7 R5 K273 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      947 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      949 LOADK                            R8 K274 ["AssistantProcessEventTimeoutMS"]
      950 LOADK                            R9 K275 [60000]
      951 CALL                             R7 2 1
      952 CALL                             R7 0 1
      953 SETTABLEKS                       R7 R5 K276 ["FIntAssistantProcessEventTimeoutMS"]
      955 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      957 LOADK                            R8 K277 ["ConvAIMaxHistoryCount"]
      958 LOADN                            R9 6
      959 CALL                             R7 2 1
      960 CALL                             R7 0 1
      961 SETTABLEKS                       R7 R5 K278 ["FIntConvAIMaxHistoryCount"]
      963 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      965 LOADK                            R8 K279 ["ConvAIMeshGenGenerationRetryLimit"]
      966 LOADN                            R9 4
      967 CALL                             R7 2 1
      968 CALL                             R7 0 1
      969 SETTABLEKS                       R7 R5 K280 ["FIntConvAIMeshGenGenerationRetryLimit"]
      971 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      973 LOADK                            R8 K281 ["ConvAIMeshGenPublishAttemptLimit"]
      974 LOADN                            R9 5
      975 CALL                             R7 2 1
      976 CALL                             R7 0 1
      977 SETTABLEKS                       R7 R5 K282 ["FIntConvAIMeshGenPublishAttemptLimit"]
      979 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      981 LOADK                            R8 K283 ["ExecuteLuauMaxJsonLength"]
      982 LOADK                            R9 K284 [100000]
      983 CALL                             R7 2 1
      984 CALL                             R7 0 1
      985 SETTABLEKS                       R7 R5 K285 ["FIntExecuteLuauMaxJsonLength"]
      987 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      989 LOADK                            R8 K286 ["ExecuteLuauMaxStringLength"]
      990 LOADK                            R9 K284 [100000]
      991 CALL                             R7 2 1
      992 CALL                             R7 0 1
      993 SETTABLEKS                       R7 R5 K287 ["FIntExecuteLuauMaxStringLength"]
      995 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
      997 LOADK                            R8 K288 ["FactorDelayPreview"]
      998 LOADN                            R9 1
      999 CALL                             R7 2 1
     1000 CALL                             R7 0 1
     1001 SETTABLEKS                       R7 R5 K289 ["FIntFactorDelayPreview"]
     1003 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1005 LOADK                            R8 K290 ["FromHistoryMaxResultChars"]
     1006 LOADK                            R9 K291 [200000]
     1007 CALL                             R7 2 1
     1008 CALL                             R7 0 1
     1009 SETTABLEKS                       R7 R5 K292 ["FIntFromHistoryMaxResultChars"]
     1011 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1013 LOADK                            R8 K293 ["GameTreeDefaultHeadLimit"]
     1014 LOADN                            R9 200
     1015 CALL                             R7 2 1
     1016 CALL                             R7 0 1
     1017 SETTABLEKS                       R7 R5 K294 ["FIntGameTreeDefaultHeadLimit"]
     1019 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1021 LOADK                            R8 K295 ["GameTreeDefaultMaxDepth"]
     1022 LOADN                            R9 3
     1023 CALL                             R7 2 1
     1024 CALL                             R7 0 1
     1025 SETTABLEKS                       R7 R5 K296 ["FIntGameTreeDefaultMaxDepth"]
     1027 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1029 LOADK                            R8 K297 ["GameTreeMaxAbsoluteDepth"]
     1030 LOADN                            R9 10
     1031 CALL                             R7 2 1
     1032 CALL                             R7 0 1
     1033 SETTABLEKS                       R7 R5 K298 ["FIntGameTreeMaxAbsoluteDepth"]
     1035 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1037 LOADK                            R8 K299 ["InspectInstanceMaxJsonLength"]
     1038 LOADN                            R9 500
     1039 CALL                             R7 2 1
     1040 CALL                             R7 0 1
     1041 SETTABLEKS                       R7 R5 K300 ["FIntInspectInstanceMaxJsonLength"]
     1043 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1045 LOADK                            R8 K301 ["InspectInstanceMaxMatches"]
     1046 LOADN                            R9 20
     1047 CALL                             R7 2 1
     1048 CALL                             R7 0 1
     1049 SETTABLEKS                       R7 R5 K302 ["FIntInspectInstanceMaxMatches"]
     1051 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1053 LOADK                            R8 K303 ["InspectInstanceMaxStringLength"]
     1054 LOADN                            R9 1000
     1055 CALL                             R7 2 1
     1056 CALL                             R7 0 1
     1057 SETTABLEKS                       R7 R5 K304 ["FIntInspectInstanceMaxStringLength"]
     1059 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1061 LOADK                            R8 K305 ["MCPAssistantGenerationIndicatorWarningTime"]
     1062 LOADN                            R9 10
     1063 CALL                             R7 2 1
     1064 CALL                             R7 0 1
     1065 SETTABLEKS                       R7 R5 K306 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1067 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1069 LOADK                            R8 K307 ["MCPAssistantInputAreaCharLimit"]
     1070 LOADN                            R9 4000
     1071 CALL                             R7 2 1
     1072 CALL                             R7 0 1
     1073 SETTABLEKS                       R7 R5 K308 ["FIntMCPAssistantInputAreaCharLimit"]
     1075 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1077 LOADK                            R8 K309 ["MCPAssistantMaxPromptHistory"]
     1078 LOADN                            R9 20
     1079 CALL                             R7 2 1
     1080 CALL                             R7 0 1
     1081 SETTABLEKS                       R7 R5 K310 ["FIntMCPAssistantMaxPromptHistory"]
     1083 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1085 LOADK                            R8 K311 ["MCPAssistantMaxToolCalls"]
     1086 LOADN                            R9 20
     1087 CALL                             R7 2 1
     1088 CALL                             R7 0 1
     1089 SETTABLEKS                       R7 R5 K312 ["FIntMCPAssistantMaxToolCalls"]
     1091 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1093 LOADK                            R8 K313 ["PlaytestMaxToolCalls"]
     1094 LOADN                            R9 50
     1095 CALL                             R7 2 1
     1096 CALL                             R7 0 1
     1097 SETTABLEKS                       R7 R5 K314 ["FIntPlaytestMaxToolCalls"]
     1099 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1101 LOADK                            R8 K315 ["PrimGenLongRunThresholdSec"]
     1102 LOADN                            R9 120
     1103 CALL                             R7 2 1
     1104 CALL                             R7 0 1
     1105 SETTABLEKS                       R7 R5 K316 ["FIntPrimGenLongRunThresholdSec"]
     1107 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1109 LOADK                            R8 K317 ["PrimGenTextMaxLength"]
     1110 LOADN                            R9 80
     1111 CALL                             R7 2 1
     1112 CALL                             R7 0 1
     1113 SETTABLEKS                       R7 R5 K318 ["FIntPrimGenTextMaxLength"]
     1115 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1117 LOADK                            R8 K319 ["PrimGenVerticalGutter"]
     1118 LOADN                            R9 10
     1119 CALL                             R7 2 1
     1120 CALL                             R7 0 1
     1121 SETTABLEKS                       R7 R5 K320 ["FIntPrimGenVerticalGutter"]
     1123 GETTABLEKS                       R7 R4 K253 ["createGetFInt"]
     1125 LOADK                            R8 K321 ["UnitTestSubagentMaxToolCalls"]
     1126 LOADN                            R9 100
     1127 CALL                             R7 2 1
     1128 CALL                             R7 0 1
     1129 SETTABLEKS                       R7 R5 K322 ["FIntUnitTestSubagentMaxToolCalls"]
     1131 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1133 LOADK                            R8 K324 ["AssistantDisabledSubagents"]
     1134 LOADK                            R9 K325 [""]
     1135 CALL                             R7 2 1
     1136 CALL                             R7 0 1
     1137 SETTABLEKS                       R7 R5 K326 ["FStringAssistantDisabledSubagents"]
     1139 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1141 LOADK                            R8 K327 ["AssistantGen3dDefaultModel"]
     1142 LOADK                            R9 K328 ["Assistant/glm51-h200"]
     1143 CALL                             R7 2 1
     1144 CALL                             R7 0 1
     1145 SETTABLEKS                       R7 R5 K329 ["FStringAssistantGen3dDefaultModel"]
     1147 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1149 LOADK                            R8 K330 ["AssistantImageGenHostOverride"]
     1150 LOADK                            R9 K325 [""]
     1151 CALL                             R7 2 1
     1152 CALL                             R7 0 1
     1153 SETTABLEKS                       R7 R5 K331 ["FStringAssistantImageGenHostOverride"]
     1155 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1157 LOADK                            R8 K332 ["AssistantJobRunTools"]
     1158 LOADK                            R9 K333 ["generate_procedural_model,generate_mesh"]
     1159 CALL                             R7 2 1
     1160 CALL                             R7 0 1
     1161 SETTABLEKS                       R7 R5 K334 ["FStringAssistantJobRunTools"]
     1163 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1165 LOADK                            R8 K335 ["AssistantMeshGenImageGenModelOverride"]
     1166 LOADK                            R9 K336 ["gemini"]
     1167 CALL                             R7 2 1
     1168 CALL                             R7 0 1
     1169 SETTABLEKS                       R7 R5 K337 ["FStringAssistantMeshGenImageGenModelOverride"]
     1171 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1173 LOADK                            R8 K338 ["AssistantMeshGenImageGenPromptTemplate"]
     1174 LOADK                            R9 K325 [""]
     1175 CALL                             R7 2 1
     1176 CALL                             R7 0 1
     1177 SETTABLEKS                       R7 R5 K339 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1179 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1181 LOADK                            R8 K340 ["AssistantMeshGenInferenceServiceOverride"]
     1182 LOADK                            R9 K341 ["stage-diff-mesh-gen"]
     1183 CALL                             R7 2 1
     1184 CALL                             R7 0 1
     1185 SETTABLEKS                       R7 R5 K342 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1187 GETIMPORT                        R7 K5 [require]
     1189 GETTABLEKS                       R8 R0 K343 ["FlagUtils"]
     1191 GETTABLEKS                       R8 R8 K344 ["createGetFStringAssistantMeshGenSchemaData"]
     1193 CALL                             R7 1 1
     1194 CALL                             R7 0 1
     1195 SETTABLEKS                       R7 R5 K345 ["FStringAssistantMeshGenSchemaData"]
     1197 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1199 LOADK                            R8 K346 ["AssistantSkillsAllowlist"]
     1200 LOADK                            R9 K347 ["docs-search, scene-analysis"]
     1201 CALL                             R7 2 1
     1202 CALL                             R7 0 1
     1203 SETTABLEKS                       R7 R5 K348 ["FStringAssistantSkillsAllowlist"]
     1205 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1207 LOADK                            R8 K349 ["AssistantTestLLMReasoningEffort"]
     1208 LOADK                            R9 K350 ["high"]
     1209 CALL                             R7 2 1
     1210 CALL                             R7 0 1
     1211 SETTABLEKS                       R7 R5 K351 ["FStringAssistantTestLLMReasoningEffort"]
     1213 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1215 LOADK                            R8 K352 ["AssistantToolsExcludedDirectories"]
     1216 LOADK                            R9 K353 ["CoreGui,PlayerGui,LoadedCode"]
     1217 CALL                             R7 2 1
     1218 CALL                             R7 0 1
     1219 SETTABLEKS                       R7 R5 K354 ["FStringAssistantToolsExcludedDirectories"]
     1221 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1223 LOADK                            R8 K355 ["AssistantToolWidgetMappings"]
     1224 LOADK                            R9 K325 [""]
     1225 CALL                             R7 2 1
     1226 CALL                             R7 0 1
     1227 SETTABLEKS                       R7 R5 K356 ["FStringAssistantToolWidgetMappings"]
     1229 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1231 LOADK                            R8 K357 ["AssistantUnitTestSubagentModel"]
     1232 LOADK                            R9 K358 ["Assistant/glm5"]
     1233 CALL                             R7 2 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R5 K359 ["FStringAssistantUnitTestSubagentModel"]
     1237 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1239 LOADK                            R8 K360 ["ConvAIMeshGenModerationUrl"]
     1240 LOADK                            R9 K361 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1241 CALL                             R7 2 1
     1242 CALL                             R7 0 1
     1243 SETTABLEKS                       R7 R5 K362 ["FStringConvAIMeshGenModerationUrl"]
     1245 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1247 LOADK                            R8 K363 ["MCPAssistantAnthropicModels"]
     1248 LOADK                            R9 K364 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1249 CALL                             R7 2 1
     1250 CALL                             R7 0 1
     1251 SETTABLEKS                       R7 R5 K365 ["FStringMCPAssistantAnthropicModels"]
     1253 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1255 LOADK                            R8 K366 ["MCPAssistantClaudeAPIKey"]
     1256 LOADK                            R9 K325 [""]
     1257 CALL                             R7 2 1
     1258 CALL                             R7 0 1
     1259 SETTABLEKS                       R7 R5 K367 ["FStringMCPAssistantClaudeAPIKey"]
     1261 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1263 LOADK                            R8 K368 ["MCPAssistantCustomModelName"]
     1264 LOADK                            R9 K325 [""]
     1265 CALL                             R7 2 1
     1266 CALL                             R7 0 1
     1267 SETTABLEKS                       R7 R5 K369 ["FStringMCPAssistantCustomModelName"]
     1269 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1271 LOADK                            R8 K370 ["MCPAssistantGeminiAPIKey"]
     1272 LOADK                            R9 K325 [""]
     1273 CALL                             R7 2 1
     1274 CALL                             R7 0 1
     1275 SETTABLEKS                       R7 R5 K371 ["FStringMCPAssistantGeminiAPIKey"]
     1277 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1279 LOADK                            R8 K372 ["MCPAssistantGeminiModels"]
     1280 LOADK                            R9 K373 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1281 CALL                             R7 2 1
     1282 CALL                             R7 0 1
     1283 SETTABLEKS                       R7 R5 K374 ["FStringMCPAssistantGeminiModels"]
     1285 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1287 LOADK                            R8 K375 ["MCPAssistantOpenAIAPIKey"]
     1288 LOADK                            R9 K325 [""]
     1289 CALL                             R7 2 1
     1290 CALL                             R7 0 1
     1291 SETTABLEKS                       R7 R5 K376 ["FStringMCPAssistantOpenAIAPIKey"]
     1293 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1295 LOADK                            R8 K377 ["MCPAssistantOpenAIModels"]
     1296 LOADK                            R9 K378 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1297 CALL                             R7 2 1
     1298 CALL                             R7 0 1
     1299 SETTABLEKS                       R7 R5 K379 ["FStringMCPAssistantOpenAIModels"]
     1301 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1303 LOADK                            R8 K380 ["MCPAssistantPrimitiveGenServerURL"]
     1304 LOADK                            R9 K325 [""]
     1305 CALL                             R7 2 1
     1306 CALL                             R7 0 1
     1307 SETTABLEKS                       R7 R5 K381 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1309 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1311 LOADK                            R8 K382 ["MCPAssistantTestLLMAPIKey"]
     1312 LOADK                            R9 K325 [""]
     1313 CALL                             R7 2 1
     1314 CALL                             R7 0 1
     1315 SETTABLEKS                       R7 R5 K383 ["FStringMCPAssistantTestLLMAPIKey"]
     1317 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1319 LOADK                            R8 K384 ["MCPAssistantURLOverride"]
     1320 LOADK                            R9 K325 [""]
     1321 CALL                             R7 2 1
     1322 CALL                             R7 0 1
     1323 SETTABLEKS                       R7 R5 K385 ["FStringMCPAssistantURLOverride"]
     1325 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1327 LOADK                            R8 K386 ["MCPDocsUrl"]
     1328 LOADK                            R9 K387 ["https://create.roblox.com/docs/studio/mcp/"]
     1329 CALL                             R7 2 1
     1330 CALL                             R7 0 1
     1331 SETTABLEKS                       R7 R5 K388 ["FStringMCPDocsUrl"]
     1333 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1335 LOADK                            R8 K389 ["PlaytestConversationURL"]
     1336 LOADK                            R9 K390 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1337 CALL                             R7 2 1
     1338 CALL                             R7 0 1
     1339 SETTABLEKS                       R7 R5 K391 ["FStringPlaytestConversationURL"]
     1341 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1343 LOADK                            R8 K392 ["PlaytestModelName"]
     1344 LOADK                            R9 K393 ["Qwen/Qwen35-35B-A3B"]
     1345 CALL                             R7 2 1
     1346 CALL                             R7 0 1
     1347 SETTABLEKS                       R7 R5 K394 ["FStringPlaytestModelName"]
     1349 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1351 LOADK                            R8 K395 ["PrimGenImageGenPromptTemplate"]
     1352 LOADK                            R9 K325 [""]
     1353 CALL                             R7 2 1
     1354 CALL                             R7 0 1
     1355 SETTABLEKS                       R7 R5 K396 ["FStringPrimGenImageGenPromptTemplate"]
     1357 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1359 LOADK                            R8 K397 ["ProceduralScriptCapabilities"]
     1360 LOADK                            R9 K398 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1361 CALL                             R7 2 1
     1362 CALL                             R7 0 1
     1363 SETTABLEKS                       R7 R5 K399 ["FStringProceduralScriptCapabilities"]
     1365 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1367 LOADK                            R8 K400 ["ScreenCaptureFormat"]
     1368 LOADK                            R9 K325 [""]
     1369 CALL                             R7 2 1
     1370 CALL                             R7 0 1
     1371 SETTABLEKS                       R7 R5 K401 ["FStringScreenCaptureFormat"]
     1373 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1375 LOADK                            R8 K402 ["ScreenCaptureSize"]
     1376 LOADK                            R9 K325 [""]
     1377 CALL                             R7 2 1
     1378 CALL                             R7 0 1
     1379 SETTABLEKS                       R7 R5 K403 ["FStringScreenCaptureSize"]
     1381 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1383 LOADK                            R8 K404 ["ScreenCaptureSubagentModelName"]
     1384 LOADK                            R9 K325 [""]
     1385 CALL                             R7 2 1
     1386 CALL                             R7 0 1
     1387 SETTABLEKS                       R7 R5 K405 ["FStringScreenCaptureSubagentModelName"]
     1389 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1391 LOADK                            R8 K406 ["SegmentByPartsBetaFeatureUrl"]
     1392 LOADK                            R9 K325 [""]
     1393 CALL                             R7 2 1
     1394 CALL                             R7 0 1
     1395 SETTABLEKS                       R7 R5 K407 ["FStringSegmentByPartsBetaFeatureUrl"]
     1397 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1399 LOADK                            R8 K408 ["StudioScopeRiskLevelsDocsUrl"]
     1400 LOADK                            R9 K409 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1401 CALL                             R7 2 1
     1402 CALL                             R7 0 1
     1403 SETTABLEKS                       R7 R5 K410 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1405 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1407 LOADK                            R8 K411 ["SubagentExploreModelName"]
     1408 LOADK                            R9 K412 ["Assistant/glm5-b200-server-1"]
     1409 CALL                             R7 2 1
     1410 CALL                             R7 0 1
     1411 SETTABLEKS                       R7 R5 K413 ["FStringSubagentExploreModelName"]
     1413 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1415 LOADK                            R8 K414 ["SubagentURLOverride"]
     1416 LOADK                            R9 K325 [""]
     1417 CALL                             R7 2 1
     1418 CALL                             R7 0 1
     1419 SETTABLEKS                       R7 R5 K415 ["FStringSubagentURLOverride"]
     1421 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1423 LOADK                            R8 K416 ["TestLLMURLOverride"]
     1424 LOADK                            R9 K325 [""]
     1425 CALL                             R7 2 1
     1426 CALL                             R7 0 1
     1427 SETTABLEKS                       R7 R5 K417 ["FStringTestLLMURLOverride"]
     1429 GETTABLEKS                       R7 R4 K323 ["createGetFString"]
     1431 LOADK                            R8 K418 ["TestSubagentURLOverride"]
     1432 LOADK                            R9 K325 [""]
     1433 CALL                             R7 2 1
     1434 CALL                             R7 0 1
     1435 SETTABLEKS                       R7 R5 K419 ["FStringTestSubagentURLOverride"]
     1437 DUPTABLE                         R9 K421 [{"__index", "__newindex"}]
     1438 SETTABLEKS                       R3 R9 K420 ["__index"]
     1440 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1442 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1444 MOVE                             R8 R5
     1445 GETIMPORT                        R7 K16 [setmetatable]
     1447 CALL                             R7 2 1
     1448 RETURN                           R7 1
