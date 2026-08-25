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
       75 LOADK                            R8 K30 ["AssistantACPFixPendingToolCall"]
       76 CALL                             R7 1 1
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R5 K31 ["FFlagAssistantACPFixPendingToolCall"]
       80 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       82 LOADK                            R8 K32 ["AssistantAcpHistoryCompatibility"]
       83 CALL                             R7 1 1
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R5 K33 ["FFlagAssistantAcpHistoryCompatibility"]
       87 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       89 LOADK                            R8 K34 ["AssistantAnimationGenTool"]
       90 CALL                             R7 1 1
       91 CALL                             R7 0 1
       92 SETTABLEKS                       R7 R5 K35 ["FFlagAssistantAnimationGenTool"]
       94 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       96 LOADK                            R8 K36 ["AssistantAskInputTool"]
       97 CALL                             R7 1 1
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R5 K37 ["FFlagAssistantAskInputTool"]
      101 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      103 LOADK                            R8 K38 ["AssistantAskInputToolLLM"]
      104 CALL                             R7 1 1
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R5 K39 ["FFlagAssistantAskInputToolLLM"]
      108 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      110 LOADK                            R8 K40 ["AssistantAssetSearchCreatorStoreUtm"]
      111 CALL                             R7 1 1
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R5 K41 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      115 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      117 LOADK                            R8 K42 ["AssistantAssetSearchDirectInsert"]
      118 CALL                             R7 1 1
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R5 K43 ["FFlagAssistantAssetSearchDirectInsert"]
      122 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      124 LOADK                            R8 K44 ["AssistantAssetSearchInsertTool2"]
      125 CALL                             R7 1 1
      126 CALL                             R7 0 1
      127 SETTABLEKS                       R7 R5 K45 ["FFlagAssistantAssetSearchInsertTool"]
      129 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      131 LOADK                            R8 K46 ["AssistantAssetSearchInsertToolABTest"]
      132 CALL                             R7 1 1
      133 CALL                             R7 0 1
      134 SETTABLEKS                       R7 R5 K47 ["FFlagAssistantAssetSearchInsertToolABTest"]
      136 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      138 LOADK                            R8 K48 ["AssistantAssetTileNamePreview"]
      139 CALL                             R7 1 1
      140 CALL                             R7 0 1
      141 SETTABLEKS                       R7 R5 K49 ["FFlagAssistantAssetTileNamePreview"]
      143 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      145 LOADK                            R8 K50 ["AssistantAvatarAutoSetupTool2"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R5 K51 ["FFlagAssistantAvatarAutoSetupTool"]
      150 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      152 LOADK                            R8 K52 ["AssistantBackgroundDataModelToolCall2"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R5 K53 ["FFlagAssistantBackgroundDataModelToolCall"]
      157 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      159 LOADK                            R8 K54 ["AssistantBetaFeatureSkills"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R5 K55 ["FFlagAssistantBetaFeatureSkills"]
      164 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      166 LOADK                            R8 K56 ["AssistantChatFollowBottomThreshold"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R5 K57 ["FFlagAssistantChatFollowBottomThreshold"]
      171 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      173 LOADK                            R8 K58 ["AssistantCloseDropdownsOnWidgetHidden"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R5 K59 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      178 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      180 LOADK                            R8 K60 ["AssistantConsoleOutputTailFromEnd2"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R5 K61 ["FFlagAssistantConsoleOutputTailFromEnd"]
      185 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      187 LOADK                            R8 K62 ["AssistantCreditMetering2"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R5 K63 ["FFlagAssistantCreditMetering"]
      192 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      194 LOADK                            R8 K64 ["AssistantCreditMeteringInferBlockReason"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantCreditMeteringInferBlockReason"]
      199 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      201 LOADK                            R8 K66 ["AssistantCreditMeteringTelemetry"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantCreditMeteringTelemetry"]
      206 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      208 LOADK                            R8 K68 ["AssistantDedupeAcpSessionListThreads"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantDedupeAcpSessionListThreads"]
      213 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      215 LOADK                            R8 K70 ["AssistantDestroySessionMonitorsOnClose"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      220 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      222 LOADK                            R8 K72 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      227 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      229 LOADK                            R8 K74 ["AssistantDisableBranching"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantDisableBranching"]
      234 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      236 LOADK                            R8 K76 ["AssistantDisabledReason"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantDisabledReason"]
      241 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      243 LOADK                            R8 K78 ["AssistantEval"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantEval"]
      248 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      250 LOADK                            R8 K80 ["AssistantExecuteLuaBackground"]
      251 CALL                             R7 1 1
      252 CALL                             R7 0 1
      253 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantExecuteLuaBackground"]
      255 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      257 LOADK                            R8 K82 ["AssistantExternalMCPPluginSettingRedundancy"]
      258 CALL                             R7 1 1
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      262 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      264 LOADK                            R8 K84 ["AssistantFeedbackView"]
      265 CALL                             R7 1 1
      266 CALL                             R7 0 1
      267 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantFeedbackView"]
      269 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      271 LOADK                            R8 K86 ["AssistantFixPlanModeInAcp2"]
      272 CALL                             R7 1 1
      273 CALL                             R7 0 1
      274 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantFixPlanModeInAcp"]
      276 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      278 LOADK                            R8 K88 ["AssistantFixStartPlayHang"]
      279 CALL                             R7 1 1
      280 CALL                             R7 0 1
      281 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantFixStartPlayHang"]
      283 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      285 LOADK                            R8 K90 ["AssistantGen3DAssetPublishTracking"]
      286 CALL                             R7 1 1
      287 CALL                             R7 0 1
      288 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantGen3DAssetPublishTracking"]
      290 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      292 LOADK                            R8 K92 ["AssistantGen3dAutoSegmentation"]
      293 CALL                             R7 1 1
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantGen3dAutoSegmentation"]
      297 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      299 LOADK                            R8 K94 ["AssistantGen3DImagePreviewTelemetry"]
      300 CALL                             R7 1 1
      301 CALL                             R7 0 1
      302 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      304 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      306 LOADK                            R8 K96 ["AssistantGen3dInputRequestedOverride"]
      307 CALL                             R7 1 1
      308 CALL                             R7 0 1
      309 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantGen3dInputRequestedOverride"]
      311 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      313 LOADK                            R8 K98 ["AssistantGen3dRequirePromptToGenerate"]
      314 CALL                             R7 1 1
      315 CALL                             R7 0 1
      316 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      318 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      320 LOADK                            R8 K100 ["AssistantGen3DTelemetryV2"]
      321 CALL                             R7 1 1
      322 CALL                             R7 0 1
      323 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantGen3DTelemetryV2"]
      325 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      327 LOADK                            R8 K102 ["AssistantGetStudioState"]
      328 CALL                             R7 1 1
      329 CALL                             R7 0 1
      330 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantGetStudioState"]
      332 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      334 LOADK                            R8 K104 ["AssistantHarnessSplit4"]
      335 CALL                             R7 1 1
      336 CALL                             R7 0 1
      337 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantHarnessSplit"]
      339 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      341 LOADK                            R8 K106 ["AssistantHarnessSplitExp2"]
      342 CALL                             R7 1 1
      343 CALL                             R7 0 1
      344 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantHarnessSplitExp"]
      346 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      348 LOADK                            R8 K108 ["AssistantHideSystemReminderContents"]
      349 CALL                             R7 1 1
      350 CALL                             R7 0 1
      351 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantHideSystemReminderContents"]
      353 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      355 LOADK                            R8 K110 ["AssistantHintMultiEditOverExecLuau"]
      356 CALL                             R7 1 1
      357 CALL                             R7 0 1
      358 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantHintMultiEditOverExecLuau"]
      360 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      362 LOADK                            R8 K112 ["AssistantImageGenAbortPollOn4xx"]
      363 CALL                             R7 1 1
      364 CALL                             R7 0 1
      365 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantImageGenAbortPollOn4xx"]
      367 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      369 LOADK                            R8 K114 ["AssistantImageGenImprovements"]
      370 CALL                             R7 1 1
      371 CALL                             R7 0 1
      372 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantImageGenImprovements"]
      374 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      376 LOADK                            R8 K116 ["AssistantImageGenSeed"]
      377 CALL                             R7 1 1
      378 CALL                             R7 0 1
      379 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantImageGenSeed"]
      381 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      383 LOADK                            R8 K118 ["AssistantImageGenUseOpenApiClient"]
      384 CALL                             R7 1 1
      385 CALL                             R7 0 1
      386 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantImageGenUseOpenApiClient"]
      388 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      390 LOADK                            R8 K120 ["AssistantImageSelectionForGen3D"]
      391 CALL                             R7 1 1
      392 CALL                             R7 0 1
      393 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantImageSelectionForGen3D"]
      395 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      397 LOADK                            R8 K122 ["AssistantImageSelectionWizardModeMeshGen"]
      398 CALL                             R7 1 1
      399 CALL                             R7 0 1
      400 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      402 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      404 LOADK                            R8 K124 ["AssistantImageSelectionWizardModePrimitiveGen"]
      405 CALL                             R7 1 1
      406 CALL                             R7 0 1
      407 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      409 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      411 LOADK                            R8 K126 ["AssistantImageSelectionWizardModeTextureGen"]
      412 CALL                             R7 1 1
      413 CALL                             R7 0 1
      414 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      416 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      418 LOADK                            R8 K128 ["AssistantInputRequestedFixedFooter"]
      419 CALL                             R7 1 1
      420 CALL                             R7 0 1
      421 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantInputRequestedFixedFooter"]
      423 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      425 LOADK                            R8 K130 ["AssistantInsertAssetSandboxProceduralModels"]
      426 CALL                             R7 1 1
      427 CALL                             R7 0 1
      428 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      430 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      432 LOADK                            R8 K132 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      433 CALL                             R7 1 1
      434 CALL                             R7 0 1
      435 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      437 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      439 LOADK                            R8 K134 ["AssistantInsertAssetSandboxScripts"]
      440 CALL                             R7 1 1
      441 CALL                             R7 0 1
      442 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantInsertAssetSandboxScripts"]
      444 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      446 LOADK                            R8 K136 ["AssistantMcpImageGenShortcut"]
      447 CALL                             R7 1 1
      448 CALL                             R7 0 1
      449 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantMcpImageGenShortcut"]
      451 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      453 LOADK                            R8 K138 ["AssistantMeshGenAutoExpandCollapse"]
      454 CALL                             R7 1 1
      455 CALL                             R7 0 1
      456 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      458 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      460 LOADK                            R8 K140 ["AssistantMeshGenCarouselPreview"]
      461 CALL                             R7 1 1
      462 CALL                             R7 0 1
      463 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantMeshGenCarouselPreview"]
      465 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      467 LOADK                            R8 K142 ["AssistantMeshGenCombinedAddToPlace"]
      468 CALL                             R7 1 1
      469 CALL                             R7 0 1
      470 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      472 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      474 LOADK                            R8 K144 ["AssistantMeshGenHintImage"]
      475 CALL                             R7 1 1
      476 CALL                             R7 0 1
      477 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantMeshGenHintImage"]
      479 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      481 LOADK                            R8 K146 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      482 CALL                             R7 1 1
      483 CALL                             R7 0 1
      484 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      486 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      488 LOADK                            R8 K148 ["AssistantMeshGenRemoveAdminOptions"]
      489 CALL                             R7 1 1
      490 CALL                             R7 0 1
      491 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      493 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      495 LOADK                            R8 K150 ["AssistantMigratePrimitiveGenTool"]
      496 CALL                             R7 1 1
      497 CALL                             R7 0 1
      498 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantMigratePrimitiveGenTool"]
      500 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      502 LOADK                            R8 K152 ["AssistantMoveToolButtonsToTheRight"]
      503 CALL                             R7 1 1
      504 CALL                             R7 0 1
      505 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantMoveToolButtonsToTheRight"]
      507 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      509 LOADK                            R8 K154 ["AssistantMultiEditExternalClient"]
      510 CALL                             R7 1 1
      511 CALL                             R7 0 1
      512 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantMultiEditExternalClient"]
      514 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      516 LOADK                            R8 K156 ["AssistantOmitSlashToolCallDroppedFields"]
      517 CALL                             R7 1 1
      518 CALL                             R7 0 1
      519 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      521 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      523 LOADK                            R8 K158 ["AssistantPinForBuildUI"]
      524 CALL                             R7 1 1
      525 CALL                             R7 0 1
      526 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantPinForBuildUI"]
      528 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      530 LOADK                            R8 K160 ["AssistantPlanRevisionList"]
      531 CALL                             R7 1 1
      532 CALL                             R7 0 1
      533 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantPlanRevisionList"]
      535 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      537 LOADK                            R8 K162 ["AssistantPlaytestContext"]
      538 CALL                             R7 1 1
      539 CALL                             R7 0 1
      540 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantPlaytestContext"]
      542 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      544 LOADK                            R8 K164 ["AssistantPlaytestToolFix"]
      545 CALL                             R7 1 1
      546 CALL                             R7 0 1
      547 SETTABLEKS                       R7 R5 K165 ["FFlagAssistantPlaytestToolFix"]
      549 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      551 LOADK                            R8 K166 ["AssistantPrivilegedCodeExecution"]
      552 CALL                             R7 1 1
      553 CALL                             R7 0 1
      554 SETTABLEKS                       R7 R5 K167 ["FFlagAssistantPrivilegedCodeExecution"]
      556 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      558 LOADK                            R8 K168 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      559 CALL                             R7 1 1
      560 CALL                             R7 0 1
      561 SETTABLEKS                       R7 R5 K169 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      563 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      565 LOADK                            R8 K170 ["AssistantRestoreMostRecentThread"]
      566 CALL                             R7 1 1
      567 CALL                             R7 0 1
      568 SETTABLEKS                       R7 R5 K171 ["FFlagAssistantRestoreMostRecentThread"]
      570 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      572 LOADK                            R8 K172 ["AssistantScreenCaptureSubagent3"]
      573 CALL                             R7 1 1
      574 CALL                             R7 0 1
      575 SETTABLEKS                       R7 R5 K173 ["FFlagAssistantScreenCaptureSubagent"]
      577 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      579 LOADK                            R8 K174 ["AssistantSegmentationBridge"]
      580 CALL                             R7 1 1
      581 CALL                             R7 0 1
      582 SETTABLEKS                       R7 R5 K175 ["FFlagAssistantSegmentationBridge"]
      584 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      586 LOADK                            R8 K176 ["AssistantSegmentationPanelScroll"]
      587 CALL                             R7 1 1
      588 CALL                             R7 0 1
      589 SETTABLEKS                       R7 R5 K177 ["FFlagAssistantSegmentationPanelScroll"]
      591 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      593 LOADK                            R8 K178 ["AssistantSegmentationPromptModeSelector"]
      594 CALL                             R7 1 1
      595 CALL                             R7 0 1
      596 SETTABLEKS                       R7 R5 K179 ["FFlagAssistantSegmentationPromptModeSelector"]
      598 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      600 LOADK                            R8 K180 ["AssistantSegmentationUIFixes"]
      601 CALL                             R7 1 1
      602 CALL                             R7 0 1
      603 SETTABLEKS                       R7 R5 K181 ["FFlagAssistantSegmentationUIFixes"]
      605 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      607 LOADK                            R8 K182 ["AssistantSegmentMeshCleanupWorldWrapper"]
      608 CALL                             R7 1 1
      609 CALL                             R7 0 1
      610 SETTABLEKS                       R7 R5 K183 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      612 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      614 LOADK                            R8 K184 ["AssistantSegmentMeshTool"]
      615 CALL                             R7 1 1
      616 CALL                             R7 0 1
      617 SETTABLEKS                       R7 R5 K185 ["FFlagAssistantSegmentMeshTool"]
      619 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      621 LOADK                            R8 K186 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      622 CALL                             R7 1 1
      623 CALL                             R7 0 1
      624 SETTABLEKS                       R7 R5 K187 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      626 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      628 LOADK                            R8 K188 ["AssistantSkillsCloudSync"]
      629 CALL                             R7 1 1
      630 CALL                             R7 0 1
      631 SETTABLEKS                       R7 R5 K189 ["FFlagAssistantSkillsCloudSync"]
      633 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      635 LOADK                            R8 K190 ["AssistantSkillToolNameReplace"]
      636 CALL                             R7 1 1
      637 CALL                             R7 0 1
      638 SETTABLEKS                       R7 R5 K191 ["FFlagAssistantSkillToolNameReplace"]
      640 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      642 LOADK                            R8 K192 ["AssistantSlashCommandViaAcp"]
      643 CALL                             R7 1 1
      644 CALL                             R7 0 1
      645 SETTABLEKS                       R7 R5 K193 ["FFlagAssistantSlashCommandViaAcp"]
      647 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      649 LOADK                            R8 K194 ["AssistantStandaloneDataModel"]
      650 CALL                             R7 1 1
      651 CALL                             R7 0 1
      652 SETTABLEKS                       R7 R5 K195 ["FFlagAssistantStandaloneDataModel"]
      654 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      656 LOADK                            R8 K196 ["AssistantStartStopPlayBusyCheck"]
      657 CALL                             R7 1 1
      658 CALL                             R7 0 1
      659 SETTABLEKS                       R7 R5 K197 ["FFlagAssistantStartStopPlayBusyCheck"]
      661 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      663 LOADK                            R8 K198 ["AssistantStudioStateSystemReminder"]
      664 CALL                             R7 1 1
      665 CALL                             R7 0 1
      666 SETTABLEKS                       R7 R5 K199 ["FFlagAssistantStudioStateSystemReminder"]
      668 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      670 LOADK                            R8 K200 ["AssistantSupportSlashCommandCancellation"]
      671 CALL                             R7 1 1
      672 CALL                             R7 0 1
      673 SETTABLEKS                       R7 R5 K201 ["FFlagAssistantSupportSlashCommandCancellation"]
      675 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      677 LOADK                            R8 K202 ["AssistantTestLLMPreserveThinking"]
      678 LOADB                            R9 1
      679 CALL                             R7 2 1
      680 CALL                             R7 0 1
      681 SETTABLEKS                       R7 R5 K203 ["FFlagAssistantTestLLMPreserveThinking"]
      683 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      685 LOADK                            R8 K204 ["AssistantTestLLMThinkingEnabled"]
      686 LOADB                            R9 1
      687 CALL                             R7 2 1
      688 CALL                             R7 0 1
      689 SETTABLEKS                       R7 R5 K205 ["FFlagAssistantTestLLMThinkingEnabled"]
      691 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      693 LOADK                            R8 K206 ["AssistantTextureGenConfirmBeforeInsert"]
      694 CALL                             R7 1 1
      695 CALL                             R7 0 1
      696 SETTABLEKS                       R7 R5 K207 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      698 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      700 LOADK                            R8 K208 ["AssistantTextureGenTool"]
      701 CALL                             R7 1 1
      702 CALL                             R7 0 1
      703 SETTABLEKS                       R7 R5 K209 ["FFlagAssistantTextureGenTool"]
      705 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      707 LOADK                            R8 K210 ["AssistantTextureGenUseSourceMeshCFrame"]
      708 CALL                             R7 1 1
      709 CALL                             R7 0 1
      710 SETTABLEKS                       R7 R5 K211 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      712 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      714 LOADK                            R8 K212 ["AssistantUnitTestSubagent4"]
      715 CALL                             R7 1 1
      716 CALL                             R7 0 1
      717 SETTABLEKS                       R7 R5 K213 ["FFlagAssistantUnitTestSubagent"]
      719 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      721 LOADK                            R8 K214 ["AssistantUntitledChatPlaceholder"]
      722 CALL                             R7 1 1
      723 CALL                             R7 0 1
      724 SETTABLEKS                       R7 R5 K215 ["FFlagAssistantUntitledChatPlaceholder"]
      726 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      728 LOADK                            R8 K216 ["AssistantUseBuilderIcons"]
      729 CALL                             R7 1 1
      730 CALL                             R7 0 1
      731 SETTABLEKS                       R7 R5 K217 ["FFlagAssistantUseBuilderIcons"]
      733 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      735 LOADK                            R8 K218 ["AssistantUseNewTags"]
      736 CALL                             R7 1 1
      737 CALL                             R7 0 1
      738 SETTABLEKS                       R7 R5 K219 ["FFlagAssistantUseNewTags"]
      740 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      742 LOADK                            R8 K220 ["AssistantUseRemoteService"]
      743 CALL                             R7 1 1
      744 CALL                             R7 0 1
      745 SETTABLEKS                       R7 R5 K221 ["FFlagAssistantUseRemoteService"]
      747 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      749 LOADK                            R8 K222 ["AssistantUseVariantHttpTransport"]
      750 CALL                             R7 1 1
      751 CALL                             R7 0 1
      752 SETTABLEKS                       R7 R5 K223 ["FFlagAssistantUseVariantHttpTransport"]
      754 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      756 LOADK                            R8 K224 ["AssistantVersionMismatchWarning"]
      757 CALL                             R7 1 1
      758 CALL                             R7 0 1
      759 SETTABLEKS                       R7 R5 K225 ["FFlagAssistantVersionMismatchWarning"]
      761 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      763 LOADK                            R8 K226 ["AssistantVideoCaptureTool"]
      764 CALL                             R7 1 1
      765 CALL                             R7 0 1
      766 SETTABLEKS                       R7 R5 K227 ["FFlagAssistantVideoCaptureTool"]
      768 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      770 LOADK                            R9 K228 ["AssistantVirtualInputEnabled"]
      771 CALL                             R8 1 1
      772 CALL                             R8 0 1
      773 AND                              R7 R8 R6
      774 SETTABLEKS                       R7 R5 K229 ["FFlagAssistantVirtualInputEnabled"]
      776 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      778 LOADK                            R8 K230 ["DebugAssistantMultiPlayerAgentsLog"]
      779 CALL                             R7 1 1
      780 CALL                             R7 0 1
      781 SETTABLEKS                       R7 R5 K231 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      783 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      785 LOADK                            R8 K232 ["DebugEnableTestLLMAdapter"]
      786 CALL                             R7 1 1
      787 CALL                             R7 0 1
      788 SETTABLEKS                       R7 R5 K233 ["FFlagDebugEnableTestLLMAdapter"]
      790 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      792 LOADK                            R8 K234 ["DebugMockPrimitiveGenBackend"]
      793 CALL                             R7 1 1
      794 CALL                             R7 0 1
      795 SETTABLEKS                       R7 R5 K235 ["FFlagDebugMockPrimitiveGenBackend"]
      797 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      799 LOADK                            R8 K236 ["DebugPrimGenDMNoReachable"]
      800 CALL                             R7 1 1
      801 CALL                             R7 0 1
      802 SETTABLEKS                       R7 R5 K237 ["FFlagDebugPrimGenDMNoReachable"]
      804 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      806 LOADK                            R8 K238 ["DisableMCPConnectionIndicator"]
      807 CALL                             R7 1 1
      808 CALL                             R7 0 1
      809 SETTABLEKS                       R7 R5 K239 ["FFlagDisableMCPConnectionIndicator"]
      811 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      813 LOADK                            R8 K240 ["FFlagDisableNavigationConfirmation"]
      814 CALL                             R7 1 1
      815 CALL                             R7 0 1
      816 SETTABLEKS                       R7 R5 K240 ["FFlagDisableNavigationConfirmation"]
      818 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      820 LOADK                            R8 K241 ["DisableNewSmartSize"]
      821 CALL                             R7 1 1
      822 CALL                             R7 0 1
      823 SETTABLEKS                       R7 R5 K242 ["FFlagDisableNewSmartSize"]
      825 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      827 LOADK                            R8 K243 ["DisableOldSmartSize"]
      828 CALL                             R7 1 1
      829 CALL                             R7 0 1
      830 SETTABLEKS                       R7 R5 K244 ["FFlagDisableOldSmartSize"]
      832 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      834 LOADK                            R8 K245 ["FFlagDisableStartStopPlayConfirmation"]
      835 CALL                             R7 1 1
      836 CALL                             R7 0 1
      837 SETTABLEKS                       R7 R5 K245 ["FFlagDisableStartStopPlayConfirmation"]
      839 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      841 LOADK                            R8 K246 ["FFlagDisableUserInputConfirmation"]
      842 CALL                             R7 1 1
      843 CALL                             R7 0 1
      844 SETTABLEKS                       R7 R5 K246 ["FFlagDisableUserInputConfirmation"]
      846 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      848 LOADK                            R8 K247 ["EnableAssistantImageUpload"]
      849 CALL                             R7 1 1
      850 CALL                             R7 0 1
      851 SETTABLEKS                       R7 R5 K248 ["FFlagEnableAssistantImageUpload"]
      853 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      855 LOADK                            R8 K249 ["EnablePlaytestSubagent"]
      856 CALL                             R7 1 1
      857 CALL                             R7 0 1
      858 SETTABLEKS                       R7 R5 K250 ["FFlagEnablePlaytestSubagent"]
      860 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      862 LOADK                            R8 K251 ["ForceAssistantBackgroundDataModelToolCall"]
      863 CALL                             R7 1 1
      864 CALL                             R7 0 1
      865 SETTABLEKS                       R7 R5 K252 ["FFlagForceAssistantBackgroundDataModelToolCall"]
      867 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      869 LOADK                            R8 K253 ["ForceAssistantScreenCaptureSubagent"]
      870 CALL                             R7 1 1
      871 CALL                             R7 0 1
      872 SETTABLEKS                       R7 R5 K254 ["FFlagForceAssistantScreenCaptureSubagent"]
      874 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      876 LOADK                            R8 K255 ["ForceAssistantStudioStateSystemReminder"]
      877 CALL                             R7 1 1
      878 CALL                             R7 0 1
      879 SETTABLEKS                       R7 R5 K256 ["FFlagForceAssistantStudioStateSystemReminder"]
      881 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      883 LOADK                            R8 K257 ["ForceAssistantUnitTestSubagent"]
      884 CALL                             R7 1 1
      885 CALL                             R7 0 1
      886 SETTABLEKS                       R7 R5 K258 ["FFlagForceAssistantUnitTestSubagent"]
      888 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      890 LOADK                            R8 K259 ["Gen3dSegmentationSelector"]
      891 CALL                             R7 1 1
      892 CALL                             R7 0 1
      893 SETTABLEKS                       R7 R5 K260 ["FFlagGen3dSegmentationSelector"]
      895 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      897 LOADK                            R8 K261 ["MarkdownStudioThemeColors"]
      898 CALL                             R7 1 1
      899 CALL                             R7 0 1
      900 SETTABLEKS                       R7 R5 K262 ["FFlagMarkdownStudioThemeColors"]
      902 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      904 LOADK                            R8 K263 ["MCPAssistantAzureOpenAI"]
      905 CALL                             R7 1 1
      906 CALL                             R7 0 1
      907 SETTABLEKS                       R7 R5 K264 ["FFlagMCPAssistantAzureOpenAI"]
      909 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      911 LOADK                            R8 K265 ["MCPAssistantManagementMenu5"]
      912 CALL                             R7 1 1
      913 CALL                             R7 0 1
      914 SETTABLEKS                       R7 R5 K266 ["FFlagMCPAssistantManagementMenu"]
      916 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      918 LOADK                            R8 K267 ["MCPAssistantUseNewMarkdown"]
      919 CALL                             R7 1 1
      920 CALL                             R7 0 1
      921 SETTABLEKS                       R7 R5 K268 ["FFlagMCPAssistantUseNewMarkdown"]
      923 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      925 LOADK                            R8 K269 ["MCPConnectionIndicatorTooltip"]
      926 CALL                             R7 1 1
      927 CALL                             R7 0 1
      928 SETTABLEKS                       R7 R5 K270 ["FFlagMCPConnectionIndicatorTooltip"]
      930 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      932 LOADK                            R8 K271 ["MCPContentNormalization"]
      933 CALL                             R7 1 1
      934 CALL                             R7 0 1
      935 SETTABLEKS                       R7 R5 K272 ["FFlagMCPContentNormalization"]
      937 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      939 LOADK                            R8 K273 ["MCPEnableToolDisabling"]
      940 CALL                             R7 1 1
      941 CALL                             R7 0 1
      942 SETTABLEKS                       R7 R5 K274 ["FFlagMCPEnableToolDisabling"]
      944 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      946 LOADK                            R8 K275 ["PlaytestVision"]
      947 CALL                             R7 1 1
      948 CALL                             R7 0 1
      949 SETTABLEKS                       R7 R5 K276 ["FFlagPlaytestVision"]
      951 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      953 LOADK                            R8 K277 ["PrimGenAllowReInsert"]
      954 CALL                             R7 1 1
      955 CALL                             R7 0 1
      956 SETTABLEKS                       R7 R5 K278 ["FFlagPrimGenAllowReInsert"]
      958 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      960 LOADK                            R8 K279 ["PrimGenBetterErrorType"]
      961 CALL                             R7 1 1
      962 CALL                             R7 0 1
      963 SETTABLEKS                       R7 R5 K280 ["FFlagPrimGenBetterErrorType"]
      965 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      967 LOADK                            R8 K281 ["PrimGenCarouselPreview"]
      968 CALL                             R7 1 1
      969 CALL                             R7 0 1
      970 SETTABLEKS                       R7 R5 K282 ["FFlagPrimGenCarouselPreview"]
      972 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      974 LOADK                            R8 K283 ["PrimGenDetectMineTypeFromContent"]
      975 CALL                             R7 1 1
      976 CALL                             R7 0 1
      977 SETTABLEKS                       R7 R5 K284 ["FFlagPrimGenDetectMineTypeFromContent"]
      979 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      981 LOADK                            R8 K285 ["PrimGenImageGenPromptTemplateEnabled"]
      982 CALL                             R7 1 1
      983 CALL                             R7 0 1
      984 SETTABLEKS                       R7 R5 K286 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      986 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      988 LOADK                            R8 K287 ["PrimGenRetryInPlayTest"]
      989 CALL                             R7 1 1
      990 CALL                             R7 0 1
      991 SETTABLEKS                       R7 R5 K288 ["FFlagPrimGenRetryInPlayTest"]
      993 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      995 LOADK                            R8 K289 ["PrimGenSchemaSelector"]
      996 CALL                             R7 1 1
      997 CALL                             R7 0 1
      998 SETTABLEKS                       R7 R5 K290 ["FFlagPrimGenSchemaSelector"]
     1000 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1002 LOADK                            R8 K291 ["PrimGenVerboseDmIsUnReachableMsg"]
     1003 CALL                             R7 1 1
     1004 CALL                             R7 0 1
     1005 SETTABLEKS                       R7 R5 K292 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1007 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1009 LOADK                            R8 K293 ["PrimGenVersionMismatchError"]
     1010 CALL                             R7 1 1
     1011 CALL                             R7 0 1
     1012 SETTABLEKS                       R7 R5 K294 ["FFlagPrimGenVersionMismatchError"]
     1014 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1016 LOADK                            R8 K295 ["PrimitiveGenRestoreError"]
     1017 CALL                             R7 1 1
     1018 CALL                             R7 0 1
     1019 SETTABLEKS                       R7 R5 K296 ["FFlagPrimitiveGenRestoreError"]
     1021 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1023 LOADK                            R8 K297 ["PropertiesExposeContentView"]
     1024 CALL                             R7 1 1
     1025 CALL                             R7 0 1
     1026 SETTABLEKS                       R7 R5 K298 ["FFlagPropertiesExposeContentView"]
     1028 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1030 LOADK                            R8 K299 ["ScreenCaptureCamera"]
     1031 CALL                             R7 1 1
     1032 CALL                             R7 0 1
     1033 SETTABLEKS                       R7 R5 K300 ["FFlagScreenCaptureCamera"]
     1035 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1037 LOADK                            R8 K301 ["ScriptDebuggerServiceEnabled2"]
     1038 CALL                             R7 1 1
     1039 CALL                             R7 0 1
     1040 SETTABLEKS                       R7 R5 K302 ["FFlagScriptDebuggerServiceEnabled"]
     1042 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1044 LOADK                            R8 K303 ["SegmentationFastFollow"]
     1045 CALL                             R7 1 1
     1046 CALL                             R7 0 1
     1047 SETTABLEKS                       R7 R5 K304 ["FFlagSegmentationFastFollow"]
     1049 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1051 LOADK                            R8 K305 ["StudioOpenCloudMCP"]
     1052 CALL                             R7 1 1
     1053 CALL                             R7 0 1
     1054 SETTABLEKS                       R7 R5 K306 ["FFlagStudioOpenCloudMCP"]
     1056 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1058 LOADK                            R8 K307 ["SubagentScriptEditAutoConfirmation"]
     1059 CALL                             R7 1 1
     1060 CALL                             R7 0 1
     1061 SETTABLEKS                       R7 R5 K308 ["FFlagSubagentScriptEditAutoConfirmation"]
     1063 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1065 LOADK                            R8 K309 ["UseStudioSideListTool"]
     1066 CALL                             R7 1 1
     1067 CALL                             R7 0 1
     1068 SETTABLEKS                       R7 R5 K310 ["FFlagUseStudioSideListTool"]
     1070 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1072 LOADK                            R8 K312 ["AmrAssetDependencyGrantEventTimeout"]
     1073 LOADN                            R9 40
     1074 CALL                             R7 2 1
     1075 CALL                             R7 0 1
     1076 SETTABLEKS                       R7 R5 K313 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1078 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1080 LOADK                            R8 K314 ["AssistantAutoSaveInterval"]
     1081 LOADN                            R9 60
     1082 CALL                             R7 2 1
     1083 CALL                             R7 0 1
     1084 SETTABLEKS                       R7 R5 K315 ["FIntAssistantAutoSaveInterval"]
     1086 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1088 LOADK                            R8 K316 ["AssistantDebugToolMaxOutput"]
     1089 LOADN                            R9 20000
     1090 CALL                             R7 2 1
     1091 CALL                             R7 0 1
     1092 SETTABLEKS                       R7 R5 K317 ["FIntAssistantDebugToolMaxOutput"]
     1094 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1096 LOADK                            R8 K318 ["AssistantJobWaitDefaultTimeout"]
     1097 LOADN                            R9 600
     1098 CALL                             R7 2 1
     1099 CALL                             R7 0 1
     1100 SETTABLEKS                       R7 R5 K319 ["FIntAssistantJobWaitDefaultTimeout"]
     1102 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1104 LOADK                            R8 K320 ["AssistantMaxDisplayTextChars"]
     1105 LOADK                            R9 K321 [100000]
     1106 CALL                             R7 2 1
     1107 CALL                             R7 0 1
     1108 SETTABLEKS                       R7 R5 K322 ["FIntAssistantMaxDisplayTextChars"]
     1110 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1112 LOADK                            R8 K323 ["AssistantMeshGenMaxTrianglesDefault"]
     1113 LOADN                            R9 10000
     1114 CALL                             R7 2 1
     1115 CALL                             R7 0 1
     1116 SETTABLEKS                       R7 R5 K324 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1118 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1120 LOADK                            R8 K325 ["AssistantMinPopoverHeight"]
     1121 LOADN                            R9 150
     1122 CALL                             R7 2 1
     1123 CALL                             R7 0 1
     1124 SETTABLEKS                       R7 R5 K326 ["FIntAssistantMinPopoverHeight"]
     1126 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1128 LOADK                            R8 K327 ["AssistantPersistenceMessageLoadLimit"]
     1129 LOADN                            R9 5
     1130 CALL                             R7 2 1
     1131 CALL                             R7 0 1
     1132 SETTABLEKS                       R7 R5 K328 ["FIntAssistantPersistenceMessageLoadLimit"]
     1134 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1136 LOADK                            R8 K329 ["AssistantPersistenceThreadLoadLimit"]
     1137 LOADN                            R9 5
     1138 CALL                             R7 2 1
     1139 CALL                             R7 0 1
     1140 SETTABLEKS                       R7 R5 K330 ["FIntAssistantPersistenceThreadLoadLimit"]
     1142 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1144 LOADK                            R8 K331 ["AssistantPostTurnRefreshDelaySeconds"]
     1145 LOADN                            R9 2
     1146 CALL                             R7 2 1
     1147 CALL                             R7 0 1
     1148 SETTABLEKS                       R7 R5 K332 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1150 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1152 LOADK                            R8 K333 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1153 LOADN                            R9 999
     1154 CALL                             R7 2 1
     1155 CALL                             R7 0 1
     1156 SETTABLEKS                       R7 R5 K334 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1158 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1160 LOADK                            R8 K335 ["AssistantPrimitiveGenPollIntervalMs"]
     1161 LOADN                            R9 2000
     1162 CALL                             R7 2 1
     1163 CALL                             R7 0 1
     1164 SETTABLEKS                       R7 R5 K336 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1166 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1168 LOADK                            R8 K337 ["AssistantProcessEventTimeoutMS"]
     1169 LOADK                            R9 K338 [60000]
     1170 CALL                             R7 2 1
     1171 CALL                             R7 0 1
     1172 SETTABLEKS                       R7 R5 K339 ["FIntAssistantProcessEventTimeoutMS"]
     1174 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1176 LOADK                            R8 K340 ["AssistantSegmentMeshMaxUserParts"]
     1177 LOADN                            R9 16
     1178 CALL                             R7 2 1
     1179 CALL                             R7 0 1
     1180 SETTABLEKS                       R7 R5 K341 ["FIntAssistantSegmentMeshMaxUserParts"]
     1182 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1184 LOADK                            R8 K342 ["ConvAIMaxHistoryCount"]
     1185 LOADN                            R9 6
     1186 CALL                             R7 2 1
     1187 CALL                             R7 0 1
     1188 SETTABLEKS                       R7 R5 K343 ["FIntConvAIMaxHistoryCount"]
     1190 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1192 LOADK                            R8 K344 ["ConvAIMeshGenGenerationRetryLimit"]
     1193 LOADN                            R9 4
     1194 CALL                             R7 2 1
     1195 CALL                             R7 0 1
     1196 SETTABLEKS                       R7 R5 K345 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1198 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1200 LOADK                            R8 K346 ["ConvAIMeshGenPublishAttemptLimit"]
     1201 LOADN                            R9 5
     1202 CALL                             R7 2 1
     1203 CALL                             R7 0 1
     1204 SETTABLEKS                       R7 R5 K347 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1206 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1208 LOADK                            R8 K348 ["ExecuteLuauMaxJsonLength"]
     1209 LOADK                            R9 K321 [100000]
     1210 CALL                             R7 2 1
     1211 CALL                             R7 0 1
     1212 SETTABLEKS                       R7 R5 K349 ["FIntExecuteLuauMaxJsonLength"]
     1214 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1216 LOADK                            R8 K350 ["ExecuteLuauMaxStringLength"]
     1217 LOADK                            R9 K321 [100000]
     1218 CALL                             R7 2 1
     1219 CALL                             R7 0 1
     1220 SETTABLEKS                       R7 R5 K351 ["FIntExecuteLuauMaxStringLength"]
     1222 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1224 LOADK                            R8 K352 ["FactorDelayPreview"]
     1225 LOADN                            R9 1
     1226 CALL                             R7 2 1
     1227 CALL                             R7 0 1
     1228 SETTABLEKS                       R7 R5 K353 ["FIntFactorDelayPreview"]
     1230 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1232 LOADK                            R8 K354 ["FromHistoryMaxResultChars"]
     1233 LOADK                            R9 K355 [200000]
     1234 CALL                             R7 2 1
     1235 CALL                             R7 0 1
     1236 SETTABLEKS                       R7 R5 K356 ["FIntFromHistoryMaxResultChars"]
     1238 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1240 LOADK                            R8 K357 ["GameTreeDefaultHeadLimit"]
     1241 LOADN                            R9 200
     1242 CALL                             R7 2 1
     1243 CALL                             R7 0 1
     1244 SETTABLEKS                       R7 R5 K358 ["FIntGameTreeDefaultHeadLimit"]
     1246 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1248 LOADK                            R8 K359 ["GameTreeDefaultMaxDepth"]
     1249 LOADN                            R9 3
     1250 CALL                             R7 2 1
     1251 CALL                             R7 0 1
     1252 SETTABLEKS                       R7 R5 K360 ["FIntGameTreeDefaultMaxDepth"]
     1254 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1256 LOADK                            R8 K361 ["GameTreeMaxAbsoluteDepth"]
     1257 LOADN                            R9 10
     1258 CALL                             R7 2 1
     1259 CALL                             R7 0 1
     1260 SETTABLEKS                       R7 R5 K362 ["FIntGameTreeMaxAbsoluteDepth"]
     1262 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1264 LOADK                            R8 K363 ["InspectInstanceMaxJsonLength"]
     1265 LOADN                            R9 500
     1266 CALL                             R7 2 1
     1267 CALL                             R7 0 1
     1268 SETTABLEKS                       R7 R5 K364 ["FIntInspectInstanceMaxJsonLength"]
     1270 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1272 LOADK                            R8 K365 ["InspectInstanceMaxMatches"]
     1273 LOADN                            R9 20
     1274 CALL                             R7 2 1
     1275 CALL                             R7 0 1
     1276 SETTABLEKS                       R7 R5 K366 ["FIntInspectInstanceMaxMatches"]
     1278 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1280 LOADK                            R8 K367 ["InspectInstanceMaxStringLength"]
     1281 LOADN                            R9 1000
     1282 CALL                             R7 2 1
     1283 CALL                             R7 0 1
     1284 SETTABLEKS                       R7 R5 K368 ["FIntInspectInstanceMaxStringLength"]
     1286 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1288 LOADK                            R8 K369 ["MCPAssistantGenerationIndicatorWarningTime"]
     1289 LOADN                            R9 10
     1290 CALL                             R7 2 1
     1291 CALL                             R7 0 1
     1292 SETTABLEKS                       R7 R5 K370 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1294 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1296 LOADK                            R8 K371 ["MCPAssistantInputAreaCharLimit"]
     1297 LOADN                            R9 4000
     1298 CALL                             R7 2 1
     1299 CALL                             R7 0 1
     1300 SETTABLEKS                       R7 R5 K372 ["FIntMCPAssistantInputAreaCharLimit"]
     1302 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1304 LOADK                            R8 K373 ["MCPAssistantMaxPromptHistory"]
     1305 LOADN                            R9 20
     1306 CALL                             R7 2 1
     1307 CALL                             R7 0 1
     1308 SETTABLEKS                       R7 R5 K374 ["FIntMCPAssistantMaxPromptHistory"]
     1310 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1312 LOADK                            R8 K375 ["MCPAssistantMaxToolCalls"]
     1313 LOADN                            R9 20
     1314 CALL                             R7 2 1
     1315 CALL                             R7 0 1
     1316 SETTABLEKS                       R7 R5 K376 ["FIntMCPAssistantMaxToolCalls"]
     1318 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1320 LOADK                            R8 K377 ["MinimumAssistantFreeTrialRemaining"]
     1321 LOADN                            R9 1
     1322 CALL                             R7 2 1
     1323 CALL                             R7 0 1
     1324 SETTABLEKS                       R7 R5 K378 ["FIntMinimumAssistantFreeTrialRemaining"]
     1326 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1328 LOADK                            R8 K379 ["MinimumAssistantRobuxBalance"]
     1329 LOADN                            R9 100
     1330 CALL                             R7 2 1
     1331 CALL                             R7 0 1
     1332 SETTABLEKS                       R7 R5 K380 ["FIntMinimumAssistantRobuxBalance"]
     1334 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1336 LOADK                            R8 K381 ["PlaytestLookBudget"]
     1337 LOADN                            R9 7
     1338 CALL                             R7 2 1
     1339 CALL                             R7 0 1
     1340 SETTABLEKS                       R7 R5 K382 ["FIntPlaytestLookBudget"]
     1342 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1344 LOADK                            R8 K383 ["PlaytestLookTimeoutMs"]
     1345 LOADK                            R9 K338 [60000]
     1346 CALL                             R7 2 1
     1347 CALL                             R7 0 1
     1348 SETTABLEKS                       R7 R5 K384 ["FIntPlaytestLookTimeoutMs"]
     1350 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1352 LOADK                            R8 K385 ["PlaytestMaxToolCalls"]
     1353 LOADN                            R9 50
     1354 CALL                             R7 2 1
     1355 CALL                             R7 0 1
     1356 SETTABLEKS                       R7 R5 K386 ["FIntPlaytestMaxToolCalls"]
     1358 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1360 LOADK                            R8 K387 ["PrimGenLongRunThresholdSec"]
     1361 LOADN                            R9 120
     1362 CALL                             R7 2 1
     1363 CALL                             R7 0 1
     1364 SETTABLEKS                       R7 R5 K388 ["FIntPrimGenLongRunThresholdSec"]
     1366 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1368 LOADK                            R8 K389 ["PrimGenTextMaxLength"]
     1369 LOADN                            R9 80
     1370 CALL                             R7 2 1
     1371 CALL                             R7 0 1
     1372 SETTABLEKS                       R7 R5 K390 ["FIntPrimGenTextMaxLength"]
     1374 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1376 LOADK                            R8 K391 ["PrimGenVerticalGutter"]
     1377 LOADN                            R9 10
     1378 CALL                             R7 2 1
     1379 CALL                             R7 0 1
     1380 SETTABLEKS                       R7 R5 K392 ["FIntPrimGenVerticalGutter"]
     1382 GETTABLEKS                       R7 R4 K311 ["createGetFInt"]
     1384 LOADK                            R8 K393 ["UnitTestSubagentMaxToolCalls"]
     1385 LOADN                            R9 100
     1386 CALL                             R7 2 1
     1387 CALL                             R7 0 1
     1388 SETTABLEKS                       R7 R5 K394 ["FIntUnitTestSubagentMaxToolCalls"]
     1390 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1392 LOADK                            R8 K396 ["AssistantDebugCreditMeteringBlockReason"]
     1393 LOADK                            R9 K397 [""]
     1394 CALL                             R7 2 1
     1395 CALL                             R7 0 1
     1396 SETTABLEKS                       R7 R5 K398 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1398 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1400 LOADK                            R8 K399 ["AssistantDisabledSubagents"]
     1401 LOADK                            R9 K397 [""]
     1402 CALL                             R7 2 1
     1403 CALL                             R7 0 1
     1404 SETTABLEKS                       R7 R5 K400 ["FStringAssistantDisabledSubagents"]
     1406 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1408 LOADK                            R8 K401 ["AssistantGen3dDefaultModel"]
     1409 LOADK                            R9 K402 ["Assistant/glm51-h200"]
     1410 CALL                             R7 2 1
     1411 CALL                             R7 0 1
     1412 SETTABLEKS                       R7 R5 K403 ["FStringAssistantGen3dDefaultModel"]
     1414 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1416 LOADK                            R8 K404 ["AssistantImageGenHostOverride"]
     1417 LOADK                            R9 K397 [""]
     1418 CALL                             R7 2 1
     1419 CALL                             R7 0 1
     1420 SETTABLEKS                       R7 R5 K405 ["FStringAssistantImageGenHostOverride"]
     1422 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1424 LOADK                            R8 K406 ["AssistantJobRunTools"]
     1425 LOADK                            R9 K407 ["generate_procedural_model,generate_mesh"]
     1426 CALL                             R7 2 1
     1427 CALL                             R7 0 1
     1428 SETTABLEKS                       R7 R5 K408 ["FStringAssistantJobRunTools"]
     1430 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1432 LOADK                            R8 K409 ["AssistantMeshGenImageGenModelOverride"]
     1433 LOADK                            R9 K410 ["gemini"]
     1434 CALL                             R7 2 1
     1435 CALL                             R7 0 1
     1436 SETTABLEKS                       R7 R5 K411 ["FStringAssistantMeshGenImageGenModelOverride"]
     1438 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1440 LOADK                            R8 K412 ["AssistantMeshGenImageGenPromptTemplate"]
     1441 LOADK                            R9 K397 [""]
     1442 CALL                             R7 2 1
     1443 CALL                             R7 0 1
     1444 SETTABLEKS                       R7 R5 K413 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1446 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1448 LOADK                            R8 K414 ["AssistantMeshGenInferenceServiceOverride"]
     1449 LOADK                            R9 K415 ["stage-diff-mesh-gen"]
     1450 CALL                             R7 2 1
     1451 CALL                             R7 0 1
     1452 SETTABLEKS                       R7 R5 K416 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1454 GETIMPORT                        R7 K5 [require]
     1456 GETTABLEKS                       R8 R0 K417 ["FlagUtils"]
     1458 GETTABLEKS                       R8 R8 K418 ["createGetFStringAssistantMeshGenSchemaData"]
     1460 CALL                             R7 1 1
     1461 CALL                             R7 0 1
     1462 SETTABLEKS                       R7 R5 K419 ["FStringAssistantMeshGenSchemaData"]
     1464 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1466 LOADK                            R8 K420 ["AssistantSkillsAllowlist"]
     1467 LOADK                            R9 K421 ["docs-search, scene-analysis"]
     1468 CALL                             R7 2 1
     1469 CALL                             R7 0 1
     1470 SETTABLEKS                       R7 R5 K422 ["FStringAssistantSkillsAllowlist"]
     1472 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1474 LOADK                            R8 K423 ["AssistantTestLLMReasoningEffort"]
     1475 LOADK                            R9 K424 ["high"]
     1476 CALL                             R7 2 1
     1477 CALL                             R7 0 1
     1478 SETTABLEKS                       R7 R5 K425 ["FStringAssistantTestLLMReasoningEffort"]
     1480 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1482 LOADK                            R8 K426 ["AssistantToolsExcludedDirectories"]
     1483 LOADK                            R9 K427 ["CoreGui,PlayerGui,LoadedCode"]
     1484 CALL                             R7 2 1
     1485 CALL                             R7 0 1
     1486 SETTABLEKS                       R7 R5 K428 ["FStringAssistantToolsExcludedDirectories"]
     1488 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1490 LOADK                            R8 K429 ["AssistantToolWidgetMappings"]
     1491 LOADK                            R9 K397 [""]
     1492 CALL                             R7 2 1
     1493 CALL                             R7 0 1
     1494 SETTABLEKS                       R7 R5 K430 ["FStringAssistantToolWidgetMappings"]
     1496 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1498 LOADK                            R8 K431 ["AssistantUnitTestSubagentModel"]
     1499 LOADK                            R9 K432 ["Assistant/glm5"]
     1500 CALL                             R7 2 1
     1501 CALL                             R7 0 1
     1502 SETTABLEKS                       R7 R5 K433 ["FStringAssistantUnitTestSubagentModel"]
     1504 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1506 LOADK                            R8 K434 ["AssistantUntitledChatPlaceholderText"]
     1507 LOADK                            R9 K435 ["Untitled Chat"]
     1508 CALL                             R7 2 1
     1509 CALL                             R7 0 1
     1510 SETTABLEKS                       R7 R5 K436 ["FStringAssistantUntitledChatPlaceholder"]
     1512 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1514 LOADK                            R8 K437 ["ConvAIMeshGenModerationUrl"]
     1515 LOADK                            R9 K438 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1516 CALL                             R7 2 1
     1517 CALL                             R7 0 1
     1518 SETTABLEKS                       R7 R5 K439 ["FStringConvAIMeshGenModerationUrl"]
     1520 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1522 LOADK                            R8 K440 ["MCPAssistantAnthropicModels"]
     1523 LOADK                            R9 K441 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1524 CALL                             R7 2 1
     1525 CALL                             R7 0 1
     1526 SETTABLEKS                       R7 R5 K442 ["FStringMCPAssistantAnthropicModels"]
     1528 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1530 LOADK                            R8 K443 ["MCPAssistantClaudeAPIKey"]
     1531 LOADK                            R9 K397 [""]
     1532 CALL                             R7 2 1
     1533 CALL                             R7 0 1
     1534 SETTABLEKS                       R7 R5 K444 ["FStringMCPAssistantClaudeAPIKey"]
     1536 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1538 LOADK                            R8 K445 ["MCPAssistantCustomModelName"]
     1539 LOADK                            R9 K397 [""]
     1540 CALL                             R7 2 1
     1541 CALL                             R7 0 1
     1542 SETTABLEKS                       R7 R5 K446 ["FStringMCPAssistantCustomModelName"]
     1544 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1546 LOADK                            R8 K447 ["MCPAssistantGeminiAPIKey"]
     1547 LOADK                            R9 K397 [""]
     1548 CALL                             R7 2 1
     1549 CALL                             R7 0 1
     1550 SETTABLEKS                       R7 R5 K448 ["FStringMCPAssistantGeminiAPIKey"]
     1552 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1554 LOADK                            R8 K449 ["MCPAssistantGeminiModels"]
     1555 LOADK                            R9 K450 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1556 CALL                             R7 2 1
     1557 CALL                             R7 0 1
     1558 SETTABLEKS                       R7 R5 K451 ["FStringMCPAssistantGeminiModels"]
     1560 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1562 LOADK                            R8 K452 ["MCPAssistantOpenAIAPIKey"]
     1563 LOADK                            R9 K397 [""]
     1564 CALL                             R7 2 1
     1565 CALL                             R7 0 1
     1566 SETTABLEKS                       R7 R5 K453 ["FStringMCPAssistantOpenAIAPIKey"]
     1568 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1570 LOADK                            R8 K454 ["MCPAssistantOpenAIModels"]
     1571 LOADK                            R9 K455 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1572 CALL                             R7 2 1
     1573 CALL                             R7 0 1
     1574 SETTABLEKS                       R7 R5 K456 ["FStringMCPAssistantOpenAIModels"]
     1576 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1578 LOADK                            R8 K457 ["MCPAssistantPrimitiveGenServerURL"]
     1579 LOADK                            R9 K397 [""]
     1580 CALL                             R7 2 1
     1581 CALL                             R7 0 1
     1582 SETTABLEKS                       R7 R5 K458 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1584 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1586 LOADK                            R8 K459 ["MCPAssistantTestLLMAPIKey"]
     1587 LOADK                            R9 K397 [""]
     1588 CALL                             R7 2 1
     1589 CALL                             R7 0 1
     1590 SETTABLEKS                       R7 R5 K460 ["FStringMCPAssistantTestLLMAPIKey"]
     1592 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1594 LOADK                            R8 K461 ["MCPAssistantURLOverride"]
     1595 LOADK                            R9 K397 [""]
     1596 CALL                             R7 2 1
     1597 CALL                             R7 0 1
     1598 SETTABLEKS                       R7 R5 K462 ["FStringMCPAssistantURLOverride"]
     1600 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1602 LOADK                            R8 K463 ["MCPDocsUrl"]
     1603 LOADK                            R9 K464 ["https://create.roblox.com/docs/studio/mcp/"]
     1604 CALL                             R7 2 1
     1605 CALL                             R7 0 1
     1606 SETTABLEKS                       R7 R5 K465 ["FStringMCPDocsUrl"]
     1608 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1610 LOADK                            R8 K466 ["PlaytestConversationURL"]
     1611 LOADK                            R9 K467 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1612 CALL                             R7 2 1
     1613 CALL                             R7 0 1
     1614 SETTABLEKS                       R7 R5 K468 ["FStringPlaytestConversationURL"]
     1616 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1618 LOADK                            R8 K469 ["PlaytestModelName"]
     1619 LOADK                            R9 K470 ["Qwen/Qwen35-35B-A3B"]
     1620 CALL                             R7 2 1
     1621 CALL                             R7 0 1
     1622 SETTABLEKS                       R7 R5 K471 ["FStringPlaytestModelName"]
     1624 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1626 LOADK                            R8 K472 ["PrimGenImageGenPromptTemplate"]
     1627 LOADK                            R9 K397 [""]
     1628 CALL                             R7 2 1
     1629 CALL                             R7 0 1
     1630 SETTABLEKS                       R7 R5 K473 ["FStringPrimGenImageGenPromptTemplate"]
     1632 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1634 LOADK                            R8 K474 ["ProceduralScriptCapabilities"]
     1635 LOADK                            R9 K475 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1636 CALL                             R7 2 1
     1637 CALL                             R7 0 1
     1638 SETTABLEKS                       R7 R5 K476 ["FStringProceduralScriptCapabilities"]
     1640 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1642 LOADK                            R8 K477 ["ScreenCaptureFormat"]
     1643 LOADK                            R9 K397 [""]
     1644 CALL                             R7 2 1
     1645 CALL                             R7 0 1
     1646 SETTABLEKS                       R7 R5 K478 ["FStringScreenCaptureFormat"]
     1648 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1650 LOADK                            R8 K479 ["ScreenCaptureSize"]
     1651 LOADK                            R9 K397 [""]
     1652 CALL                             R7 2 1
     1653 CALL                             R7 0 1
     1654 SETTABLEKS                       R7 R5 K480 ["FStringScreenCaptureSize"]
     1656 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1658 LOADK                            R8 K481 ["ScreenCaptureSubagentModelName"]
     1659 LOADK                            R9 K397 [""]
     1660 CALL                             R7 2 1
     1661 CALL                             R7 0 1
     1662 SETTABLEKS                       R7 R5 K482 ["FStringScreenCaptureSubagentModelName"]
     1664 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1666 LOADK                            R8 K483 ["SegmentByPartsBetaFeatureUrl"]
     1667 LOADK                            R9 K397 [""]
     1668 CALL                             R7 2 1
     1669 CALL                             R7 0 1
     1670 SETTABLEKS                       R7 R5 K484 ["FStringSegmentByPartsBetaFeatureUrl"]
     1672 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1674 LOADK                            R8 K485 ["StudioScopeRiskLevelsDocsUrl"]
     1675 LOADK                            R9 K486 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1676 CALL                             R7 2 1
     1677 CALL                             R7 0 1
     1678 SETTABLEKS                       R7 R5 K487 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1680 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1682 LOADK                            R8 K488 ["SubagentExploreModelName"]
     1683 LOADK                            R9 K489 ["Assistant/glm5-b200-server-1"]
     1684 CALL                             R7 2 1
     1685 CALL                             R7 0 1
     1686 SETTABLEKS                       R7 R5 K490 ["FStringSubagentExploreModelName"]
     1688 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1690 LOADK                            R8 K491 ["SubagentURLOverride"]
     1691 LOADK                            R9 K397 [""]
     1692 CALL                             R7 2 1
     1693 CALL                             R7 0 1
     1694 SETTABLEKS                       R7 R5 K492 ["FStringSubagentURLOverride"]
     1696 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1698 LOADK                            R8 K493 ["TestLLMURLOverride"]
     1699 LOADK                            R9 K397 [""]
     1700 CALL                             R7 2 1
     1701 CALL                             R7 0 1
     1702 SETTABLEKS                       R7 R5 K494 ["FStringTestLLMURLOverride"]
     1704 GETTABLEKS                       R7 R4 K395 ["createGetFString"]
     1706 LOADK                            R8 K495 ["TestSubagentURLOverride"]
     1707 LOADK                            R9 K397 [""]
     1708 CALL                             R7 2 1
     1709 CALL                             R7 0 1
     1710 SETTABLEKS                       R7 R5 K496 ["FStringTestSubagentURLOverride"]
     1712 DUPTABLE                         R9 K498 [{"__index", "__newindex"}]
     1713 SETTABLEKS                       R3 R9 K497 ["__index"]
     1715 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1717 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1719 MOVE                             R8 R5
     1720 GETIMPORT                        R7 K16 [setmetatable]
     1722 CALL                             R7 2 1
     1723 RETURN                           R7 1
