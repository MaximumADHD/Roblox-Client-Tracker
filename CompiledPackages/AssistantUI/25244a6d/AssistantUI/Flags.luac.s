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
       68 LOADK                            R8 K28 ["AnimationGenOpenACE2"]
       69 CALL                             R7 1 1
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R5 K29 ["FFlagAnimationGenOpenACE"]
       73 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
       75 LOADK                            R8 K30 ["AssistantACPFixPendingToolCall2"]
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
       96 LOADK                            R8 K36 ["AssistantAskInputTool2"]
       97 CALL                             R7 1 1
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R5 K37 ["FFlagAssistantAskInputTool"]
      101 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      103 LOADK                            R8 K38 ["AssistantAskInputToolLLM2"]
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
      145 LOADK                            R8 K50 ["AssistantAsyncSlashCommands"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R5 K51 ["FFlagAssistantAsyncSlashCommands"]
      150 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      152 LOADK                            R8 K52 ["AssistantAvatarAutoSetupTool3"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R5 K53 ["FFlagAssistantAvatarAutoSetupTool"]
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
      194 LOADK                            R8 K64 ["AssistantCreditMeteringAdditionalUsage"]
      195 LOADB                            R9 1
      196 CALL                             R7 2 1
      197 CALL                             R7 0 1
      198 SETTABLEKS                       R7 R5 K65 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      200 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      202 LOADK                            R8 K66 ["AssistantCreditMeteringInferBlockReason"]
      203 CALL                             R7 1 1
      204 CALL                             R7 0 1
      205 SETTABLEKS                       R7 R5 K67 ["FFlagAssistantCreditMeteringInferBlockReason"]
      207 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      209 LOADK                            R8 K68 ["AssistantCreditMeteringTelemetry"]
      210 CALL                             R7 1 1
      211 CALL                             R7 0 1
      212 SETTABLEKS                       R7 R5 K69 ["FFlagAssistantCreditMeteringTelemetry"]
      214 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      216 LOADK                            R8 K70 ["AssistantDedupeAcpSessionListThreads"]
      217 CALL                             R7 1 1
      218 CALL                             R7 0 1
      219 SETTABLEKS                       R7 R5 K71 ["FFlagAssistantDedupeAcpSessionListThreads"]
      221 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      223 LOADK                            R8 K72 ["AssistantDestroySessionMonitorsOnClose"]
      224 CALL                             R7 1 1
      225 CALL                             R7 0 1
      226 SETTABLEKS                       R7 R5 K73 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      228 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      230 LOADK                            R8 K74 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      231 CALL                             R7 1 1
      232 CALL                             R7 0 1
      233 SETTABLEKS                       R7 R5 K75 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      235 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      237 LOADK                            R8 K76 ["AssistantDisableBranching"]
      238 CALL                             R7 1 1
      239 CALL                             R7 0 1
      240 SETTABLEKS                       R7 R5 K77 ["FFlagAssistantDisableBranching"]
      242 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      244 LOADK                            R8 K78 ["AssistantEval"]
      245 CALL                             R7 1 1
      246 CALL                             R7 0 1
      247 SETTABLEKS                       R7 R5 K79 ["FFlagAssistantEval"]
      249 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      251 LOADK                            R8 K80 ["AssistantExternalMCPPluginSettingRedundancy"]
      252 CALL                             R7 1 1
      253 CALL                             R7 0 1
      254 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      256 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      258 LOADK                            R8 K82 ["AssistantFeedbackView"]
      259 CALL                             R7 1 1
      260 CALL                             R7 0 1
      261 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantFeedbackView"]
      263 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      265 LOADK                            R8 K84 ["AssistantFixStartPlayHang"]
      266 CALL                             R7 1 1
      267 CALL                             R7 0 1
      268 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantFixStartPlayHang"]
      270 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      272 LOADK                            R8 K86 ["AssistantGen3DAssetPublishTracking"]
      273 CALL                             R7 1 1
      274 CALL                             R7 0 1
      275 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantGen3DAssetPublishTracking"]
      277 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      279 LOADK                            R8 K88 ["AssistantGen3dAutoSegmentation"]
      280 CALL                             R7 1 1
      281 CALL                             R7 0 1
      282 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantGen3dAutoSegmentation"]
      284 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      286 LOADK                            R8 K90 ["AssistantGen3DImagePreviewTelemetry"]
      287 CALL                             R7 1 1
      288 CALL                             R7 0 1
      289 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      291 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      293 LOADK                            R8 K92 ["AssistantGen3dInputRequestedOverride"]
      294 CALL                             R7 1 1
      295 CALL                             R7 0 1
      296 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantGen3dInputRequestedOverride"]
      298 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      300 LOADK                            R8 K94 ["AssistantGen3dRequirePromptToGenerate"]
      301 CALL                             R7 1 1
      302 CALL                             R7 0 1
      303 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      305 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      307 LOADK                            R8 K96 ["AssistantGen3DTelemetryV2"]
      308 CALL                             R7 1 1
      309 CALL                             R7 0 1
      310 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantGen3DTelemetryV2"]
      312 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      314 LOADK                            R8 K98 ["AssistantHarnessSplit4"]
      315 CALL                             R7 1 1
      316 CALL                             R7 0 1
      317 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantHarnessSplit"]
      319 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      321 LOADK                            R8 K100 ["AssistantHarnessSplitExp2"]
      322 CALL                             R7 1 1
      323 CALL                             R7 0 1
      324 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantHarnessSplitExp"]
      326 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      328 LOADK                            R8 K102 ["AssistantHideSystemReminderContents"]
      329 CALL                             R7 1 1
      330 CALL                             R7 0 1
      331 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantHideSystemReminderContents"]
      333 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      335 LOADK                            R8 K104 ["AssistantHintImageAsUri2"]
      336 CALL                             R7 1 1
      337 CALL                             R7 0 1
      338 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantHintImageAsUri"]
      340 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      342 LOADK                            R8 K106 ["AssistantHintMultiEditOverExecLuau"]
      343 CALL                             R7 1 1
      344 CALL                             R7 0 1
      345 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantHintMultiEditOverExecLuau"]
      347 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      349 LOADK                            R8 K108 ["AssistantImageGenAbortPollOn4xx"]
      350 CALL                             R7 1 1
      351 CALL                             R7 0 1
      352 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantImageGenAbortPollOn4xx"]
      354 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      356 LOADK                            R8 K110 ["AssistantImageGenImprovements"]
      357 CALL                             R7 1 1
      358 CALL                             R7 0 1
      359 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantImageGenImprovements"]
      361 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      363 LOADK                            R8 K112 ["AssistantImageGenSeed"]
      364 CALL                             R7 1 1
      365 CALL                             R7 0 1
      366 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantImageGenSeed"]
      368 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      370 LOADK                            R8 K114 ["AssistantImageGenUseOpenApiClient"]
      371 CALL                             R7 1 1
      372 CALL                             R7 0 1
      373 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantImageGenUseOpenApiClient"]
      375 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      377 LOADK                            R8 K116 ["AssistantImageSelectionForGen3D"]
      378 CALL                             R7 1 1
      379 CALL                             R7 0 1
      380 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantImageSelectionForGen3D"]
      382 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      384 LOADK                            R8 K118 ["AssistantImageSelectionWizardModeMeshGen"]
      385 CALL                             R7 1 1
      386 CALL                             R7 0 1
      387 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      389 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      391 LOADK                            R8 K120 ["AssistantImageSelectionWizardModePrimitiveGen"]
      392 CALL                             R7 1 1
      393 CALL                             R7 0 1
      394 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      396 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      398 LOADK                            R8 K122 ["AssistantImageSelectionWizardModeTextureGen"]
      399 CALL                             R7 1 1
      400 CALL                             R7 0 1
      401 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      403 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      405 LOADK                            R8 K124 ["AssistantInputRequestedFixedFooter"]
      406 CALL                             R7 1 1
      407 CALL                             R7 0 1
      408 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantInputRequestedFixedFooter"]
      410 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      412 LOADK                            R8 K126 ["AssistantInsertAssetSandboxProceduralModels"]
      413 CALL                             R7 1 1
      414 CALL                             R7 0 1
      415 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      417 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      419 LOADK                            R8 K128 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      420 CALL                             R7 1 1
      421 CALL                             R7 0 1
      422 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      424 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      426 LOADK                            R8 K130 ["AssistantInsertAssetSandboxScripts"]
      427 CALL                             R7 1 1
      428 CALL                             R7 0 1
      429 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantInsertAssetSandboxScripts"]
      431 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      433 LOADK                            R8 K132 ["AssistantMcpImageGenShortcut"]
      434 CALL                             R7 1 1
      435 CALL                             R7 0 1
      436 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantMcpImageGenShortcut"]
      438 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      440 LOADK                            R8 K134 ["AssistantMeshGenAutoExpandCollapse"]
      441 CALL                             R7 1 1
      442 CALL                             R7 0 1
      443 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      445 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      447 LOADK                            R8 K136 ["AssistantMeshGenCarouselPreview"]
      448 CALL                             R7 1 1
      449 CALL                             R7 0 1
      450 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantMeshGenCarouselPreview"]
      452 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      454 LOADK                            R8 K138 ["AssistantMeshGenCombinedAddToPlace"]
      455 CALL                             R7 1 1
      456 CALL                             R7 0 1
      457 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      459 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      461 LOADK                            R8 K140 ["AssistantMeshGenHintImage"]
      462 CALL                             R7 1 1
      463 CALL                             R7 0 1
      464 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantMeshGenHintImage"]
      466 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      468 LOADK                            R8 K142 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      469 CALL                             R7 1 1
      470 CALL                             R7 0 1
      471 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      473 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      475 LOADK                            R8 K144 ["AssistantMeshGenRemoveAdminOptions"]
      476 CALL                             R7 1 1
      477 CALL                             R7 0 1
      478 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      480 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      482 LOADK                            R8 K146 ["AssistantMoveToolButtonsToTheRight"]
      483 CALL                             R7 1 1
      484 CALL                             R7 0 1
      485 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantMoveToolButtonsToTheRight"]
      487 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      489 LOADK                            R8 K148 ["AssistantMultiEditExternalClient"]
      490 CALL                             R7 1 1
      491 CALL                             R7 0 1
      492 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantMultiEditExternalClient"]
      494 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      496 LOADK                            R8 K150 ["AssistantOmitSlashToolCallDroppedFields"]
      497 CALL                             R7 1 1
      498 CALL                             R7 0 1
      499 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      501 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      503 LOADK                            R8 K152 ["AssistantPinForBuildUI"]
      504 CALL                             R7 1 1
      505 CALL                             R7 0 1
      506 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantPinForBuildUI"]
      508 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      510 LOADK                            R8 K154 ["AssistantPlanRevisionList"]
      511 CALL                             R7 1 1
      512 CALL                             R7 0 1
      513 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantPlanRevisionList"]
      515 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      517 LOADK                            R8 K156 ["AssistantPlaytestContext"]
      518 CALL                             R7 1 1
      519 CALL                             R7 0 1
      520 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantPlaytestContext"]
      522 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      524 LOADK                            R8 K158 ["AssistantPlaytestToolFix"]
      525 CALL                             R7 1 1
      526 CALL                             R7 0 1
      527 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantPlaytestToolFix"]
      529 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      531 LOADK                            R8 K160 ["AssistantPrivilegedCodeExecution"]
      532 CALL                             R7 1 1
      533 CALL                             R7 0 1
      534 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantPrivilegedCodeExecution"]
      536 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      538 LOADK                            R8 K162 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      539 CALL                             R7 1 1
      540 CALL                             R7 0 1
      541 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      543 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      545 LOADK                            R8 K164 ["AssistantRestoreMostRecentThread"]
      546 CALL                             R7 1 1
      547 CALL                             R7 0 1
      548 SETTABLEKS                       R7 R5 K165 ["FFlagAssistantRestoreMostRecentThread"]
      550 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      552 LOADK                            R8 K166 ["AssistantSegmentationBridge"]
      553 CALL                             R7 1 1
      554 CALL                             R7 0 1
      555 SETTABLEKS                       R7 R5 K167 ["FFlagAssistantSegmentationBridge"]
      557 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      559 LOADK                            R8 K168 ["AssistantSegmentationPanelScroll"]
      560 CALL                             R7 1 1
      561 CALL                             R7 0 1
      562 SETTABLEKS                       R7 R5 K169 ["FFlagAssistantSegmentationPanelScroll"]
      564 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      566 LOADK                            R8 K170 ["AssistantSegmentationPromptModeSelector"]
      567 CALL                             R7 1 1
      568 CALL                             R7 0 1
      569 SETTABLEKS                       R7 R5 K171 ["FFlagAssistantSegmentationPromptModeSelector"]
      571 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      573 LOADK                            R8 K172 ["AssistantSegmentationUIFixes"]
      574 CALL                             R7 1 1
      575 CALL                             R7 0 1
      576 SETTABLEKS                       R7 R5 K173 ["FFlagAssistantSegmentationUIFixes"]
      578 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      580 LOADK                            R8 K174 ["AssistantSegmentMeshCleanupWorldWrapper"]
      581 CALL                             R7 1 1
      582 CALL                             R7 0 1
      583 SETTABLEKS                       R7 R5 K175 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      585 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      587 LOADK                            R8 K176 ["AssistantSegmentMeshTool"]
      588 CALL                             R7 1 1
      589 CALL                             R7 0 1
      590 SETTABLEKS                       R7 R5 K177 ["FFlagAssistantSegmentMeshTool"]
      592 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      594 LOADK                            R8 K178 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      595 CALL                             R7 1 1
      596 CALL                             R7 0 1
      597 SETTABLEKS                       R7 R5 K179 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      599 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      601 LOADK                            R8 K180 ["AssistantSkillToolNameReplace"]
      602 CALL                             R7 1 1
      603 CALL                             R7 0 1
      604 SETTABLEKS                       R7 R5 K181 ["FFlagAssistantSkillToolNameReplace"]
      606 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      608 LOADK                            R8 K182 ["AssistantSlashCommandViaAcp"]
      609 CALL                             R7 1 1
      610 CALL                             R7 0 1
      611 SETTABLEKS                       R7 R5 K183 ["FFlagAssistantSlashCommandViaAcp"]
      613 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      615 LOADK                            R8 K184 ["AssistantSlashToolNameAndError"]
      616 CALL                             R7 1 1
      617 CALL                             R7 0 1
      618 SETTABLEKS                       R7 R5 K185 ["FFlagAssistantSlashToolNameAndError"]
      620 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      622 LOADK                            R8 K186 ["AssistantStandaloneDataModel"]
      623 CALL                             R7 1 1
      624 CALL                             R7 0 1
      625 SETTABLEKS                       R7 R5 K187 ["FFlagAssistantStandaloneDataModel"]
      627 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      629 LOADK                            R8 K188 ["AssistantStartStopPlayBusyCheck"]
      630 CALL                             R7 1 1
      631 CALL                             R7 0 1
      632 SETTABLEKS                       R7 R5 K189 ["FFlagAssistantStartStopPlayBusyCheck"]
      634 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      636 LOADK                            R8 K190 ["AssistantSupportSlashCommandCancellation"]
      637 CALL                             R7 1 1
      638 CALL                             R7 0 1
      639 SETTABLEKS                       R7 R5 K191 ["FFlagAssistantSupportSlashCommandCancellation"]
      641 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      643 LOADK                            R8 K192 ["AssistantSystemSkillsStateReminder"]
      644 CALL                             R7 1 1
      645 CALL                             R7 0 1
      646 SETTABLEKS                       R7 R5 K193 ["FFlagAssistantSystemSkillsStateReminder"]
      648 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      650 LOADK                            R8 K194 ["AssistantTestLLMPreserveThinking"]
      651 LOADB                            R9 1
      652 CALL                             R7 2 1
      653 CALL                             R7 0 1
      654 SETTABLEKS                       R7 R5 K195 ["FFlagAssistantTestLLMPreserveThinking"]
      656 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      658 LOADK                            R8 K196 ["AssistantTestLLMThinkingEnabled"]
      659 LOADB                            R9 1
      660 CALL                             R7 2 1
      661 CALL                             R7 0 1
      662 SETTABLEKS                       R7 R5 K197 ["FFlagAssistantTestLLMThinkingEnabled"]
      664 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      666 LOADK                            R8 K198 ["AssistantTextureGenConfirmBeforeInsert"]
      667 CALL                             R7 1 1
      668 CALL                             R7 0 1
      669 SETTABLEKS                       R7 R5 K199 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      671 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      673 LOADK                            R8 K200 ["AssistantTextureGenModelSelection"]
      674 CALL                             R7 1 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K201 ["FFlagAssistantTextureGenModelSelection"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K202 ["AssistantTextureGenTool"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K203 ["FFlagAssistantTextureGenTool"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K204 ["AssistantTextureGenUseSourceMeshCFrame"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K205 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K206 ["AssistantUntitledChatPlaceholder"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K207 ["FFlagAssistantUntitledChatPlaceholder"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K208 ["AssistantUseBuilderIcons"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K209 ["FFlagAssistantUseBuilderIcons"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K210 ["AssistantUseNewTags"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K211 ["FFlagAssistantUseNewTags"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K212 ["AssistantUseRemoteService2"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K213 ["FFlagAssistantUseRemoteService"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K214 ["AssistantUseVariantHttpTransport"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K215 ["FFlagAssistantUseVariantHttpTransport"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K216 ["AssistantVersionMismatchWarning"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K217 ["FFlagAssistantVersionMismatchWarning"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K218 ["AssistantVideoCaptureTool"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K219 ["FFlagAssistantVideoCaptureTool"]
      741 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      743 LOADK                            R9 K220 ["AssistantVirtualInputEnabled"]
      744 CALL                             R8 1 1
      745 CALL                             R8 0 1
      746 AND                              R7 R8 R6
      747 SETTABLEKS                       R7 R5 K221 ["FFlagAssistantVirtualInputEnabled"]
      749 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      751 LOADK                            R8 K222 ["AsssistantFixMarkdownRendererErrorForBracket"]
      752 CALL                             R7 1 1
      753 CALL                             R7 0 1
      754 SETTABLEKS                       R7 R5 K223 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      756 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      758 LOADK                            R8 K224 ["DebugAssistantMultiPlayerAgentsLog"]
      759 CALL                             R7 1 1
      760 CALL                             R7 0 1
      761 SETTABLEKS                       R7 R5 K225 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      763 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      765 LOADK                            R8 K226 ["DebugEnableTestLLMAdapter"]
      766 CALL                             R7 1 1
      767 CALL                             R7 0 1
      768 SETTABLEKS                       R7 R5 K227 ["FFlagDebugEnableTestLLMAdapter"]
      770 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      772 LOADK                            R8 K228 ["DebugMockPrimitiveGenBackend"]
      773 CALL                             R7 1 1
      774 CALL                             R7 0 1
      775 SETTABLEKS                       R7 R5 K229 ["FFlagDebugMockPrimitiveGenBackend"]
      777 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      779 LOADK                            R8 K230 ["DebugPrimGenDMNoReachable"]
      780 CALL                             R7 1 1
      781 CALL                             R7 0 1
      782 SETTABLEKS                       R7 R5 K231 ["FFlagDebugPrimGenDMNoReachable"]
      784 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      786 LOADK                            R8 K232 ["DisableMCPConnectionIndicator"]
      787 CALL                             R7 1 1
      788 CALL                             R7 0 1
      789 SETTABLEKS                       R7 R5 K233 ["FFlagDisableMCPConnectionIndicator"]
      791 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      793 LOADK                            R8 K234 ["FFlagDisableNavigationConfirmation"]
      794 CALL                             R7 1 1
      795 CALL                             R7 0 1
      796 SETTABLEKS                       R7 R5 K234 ["FFlagDisableNavigationConfirmation"]
      798 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      800 LOADK                            R8 K235 ["DisableNewSmartSize"]
      801 CALL                             R7 1 1
      802 CALL                             R7 0 1
      803 SETTABLEKS                       R7 R5 K236 ["FFlagDisableNewSmartSize"]
      805 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      807 LOADK                            R8 K237 ["DisableOldSmartSize"]
      808 CALL                             R7 1 1
      809 CALL                             R7 0 1
      810 SETTABLEKS                       R7 R5 K238 ["FFlagDisableOldSmartSize"]
      812 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      814 LOADK                            R8 K239 ["FFlagDisableStartStopPlayConfirmation"]
      815 CALL                             R7 1 1
      816 CALL                             R7 0 1
      817 SETTABLEKS                       R7 R5 K239 ["FFlagDisableStartStopPlayConfirmation"]
      819 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      821 LOADK                            R8 K240 ["FFlagDisableUserInputConfirmation"]
      822 CALL                             R7 1 1
      823 CALL                             R7 0 1
      824 SETTABLEKS                       R7 R5 K240 ["FFlagDisableUserInputConfirmation"]
      826 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      828 LOADK                            R8 K241 ["EnableAssistantImageUpload"]
      829 CALL                             R7 1 1
      830 CALL                             R7 0 1
      831 SETTABLEKS                       R7 R5 K242 ["FFlagEnableAssistantImageUpload"]
      833 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      835 LOADK                            R8 K243 ["EnablePlaytestSubagent"]
      836 CALL                             R7 1 1
      837 CALL                             R7 0 1
      838 SETTABLEKS                       R7 R5 K244 ["FFlagEnablePlaytestSubagent"]
      840 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      842 LOADK                            R8 K245 ["Gen3dSegmentationSelector"]
      843 CALL                             R7 1 1
      844 CALL                             R7 0 1
      845 SETTABLEKS                       R7 R5 K246 ["FFlagGen3dSegmentationSelector"]
      847 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      849 LOADK                            R8 K247 ["MarkdownStudioThemeColors"]
      850 CALL                             R7 1 1
      851 CALL                             R7 0 1
      852 SETTABLEKS                       R7 R5 K248 ["FFlagMarkdownStudioThemeColors"]
      854 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      856 LOADK                            R8 K249 ["MCPAssistantAzureOpenAI"]
      857 CALL                             R7 1 1
      858 CALL                             R7 0 1
      859 SETTABLEKS                       R7 R5 K250 ["FFlagMCPAssistantAzureOpenAI"]
      861 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      863 LOADK                            R8 K251 ["MCPAssistantManagementMenu5"]
      864 CALL                             R7 1 1
      865 CALL                             R7 0 1
      866 SETTABLEKS                       R7 R5 K252 ["FFlagMCPAssistantManagementMenu"]
      868 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      870 LOADK                            R8 K253 ["MCPAssistantOpenAIPreserveThinking"]
      871 CALL                             R7 1 1
      872 CALL                             R7 0 1
      873 SETTABLEKS                       R7 R5 K254 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      875 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      877 LOADK                            R8 K255 ["MCPAssistantOpenAIThinkingEnabled"]
      878 CALL                             R7 1 1
      879 CALL                             R7 0 1
      880 SETTABLEKS                       R7 R5 K256 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      882 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      884 LOADK                            R8 K257 ["MCPAssistantUseNewMarkdown"]
      885 CALL                             R7 1 1
      886 CALL                             R7 0 1
      887 SETTABLEKS                       R7 R5 K258 ["FFlagMCPAssistantUseNewMarkdown"]
      889 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      891 LOADK                            R8 K259 ["MCPConnectionIndicatorTooltip"]
      892 CALL                             R7 1 1
      893 CALL                             R7 0 1
      894 SETTABLEKS                       R7 R5 K260 ["FFlagMCPConnectionIndicatorTooltip"]
      896 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      898 LOADK                            R8 K261 ["MCPContentNormalization"]
      899 CALL                             R7 1 1
      900 CALL                             R7 0 1
      901 SETTABLEKS                       R7 R5 K262 ["FFlagMCPContentNormalization"]
      903 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      905 LOADK                            R8 K263 ["MCPEnableToolDisabling"]
      906 CALL                             R7 1 1
      907 CALL                             R7 0 1
      908 SETTABLEKS                       R7 R5 K264 ["FFlagMCPEnableToolDisabling"]
      910 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      912 LOADK                            R8 K265 ["PlaytestVision"]
      913 CALL                             R7 1 1
      914 CALL                             R7 0 1
      915 SETTABLEKS                       R7 R5 K266 ["FFlagPlaytestVision"]
      917 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      919 LOADK                            R8 K267 ["PrimGenAllowReInsert"]
      920 CALL                             R7 1 1
      921 CALL                             R7 0 1
      922 SETTABLEKS                       R7 R5 K268 ["FFlagPrimGenAllowReInsert"]
      924 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      926 LOADK                            R8 K269 ["PrimGenBetterErrorType"]
      927 CALL                             R7 1 1
      928 CALL                             R7 0 1
      929 SETTABLEKS                       R7 R5 K270 ["FFlagPrimGenBetterErrorType"]
      931 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      933 LOADK                            R8 K271 ["PrimGenCarouselPreview"]
      934 CALL                             R7 1 1
      935 CALL                             R7 0 1
      936 SETTABLEKS                       R7 R5 K272 ["FFlagPrimGenCarouselPreview"]
      938 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      940 LOADK                            R8 K273 ["PrimGenDetectMineTypeFromContent"]
      941 CALL                             R7 1 1
      942 CALL                             R7 0 1
      943 SETTABLEKS                       R7 R5 K274 ["FFlagPrimGenDetectMineTypeFromContent"]
      945 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      947 LOADK                            R8 K275 ["PrimGenImageGenPromptTemplateEnabled"]
      948 CALL                             R7 1 1
      949 CALL                             R7 0 1
      950 SETTABLEKS                       R7 R5 K276 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      952 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      954 LOADK                            R8 K277 ["PrimGenSchemaSelector"]
      955 CALL                             R7 1 1
      956 CALL                             R7 0 1
      957 SETTABLEKS                       R7 R5 K278 ["FFlagPrimGenSchemaSelector"]
      959 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      961 LOADK                            R8 K279 ["PrimGenVerboseDmIsUnReachableMsg"]
      962 CALL                             R7 1 1
      963 CALL                             R7 0 1
      964 SETTABLEKS                       R7 R5 K280 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      966 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      968 LOADK                            R8 K281 ["PrimGenVersionMismatchError"]
      969 CALL                             R7 1 1
      970 CALL                             R7 0 1
      971 SETTABLEKS                       R7 R5 K282 ["FFlagPrimGenVersionMismatchError"]
      973 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      975 LOADK                            R8 K283 ["PrimitiveGenRestoreError"]
      976 CALL                             R7 1 1
      977 CALL                             R7 0 1
      978 SETTABLEKS                       R7 R5 K284 ["FFlagPrimitiveGenRestoreError"]
      980 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      982 LOADK                            R8 K285 ["PropertiesExposeContentView"]
      983 CALL                             R7 1 1
      984 CALL                             R7 0 1
      985 SETTABLEKS                       R7 R5 K286 ["FFlagPropertiesExposeContentView"]
      987 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      989 LOADK                            R8 K287 ["ScreenCaptureCamera"]
      990 CALL                             R7 1 1
      991 CALL                             R7 0 1
      992 SETTABLEKS                       R7 R5 K288 ["FFlagScreenCaptureCamera"]
      994 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      996 LOADK                            R8 K289 ["ScriptDebuggerServiceEnabled2"]
      997 CALL                             R7 1 1
      998 CALL                             R7 0 1
      999 SETTABLEKS                       R7 R5 K290 ["FFlagScriptDebuggerServiceEnabled"]
     1001 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1003 LOADK                            R8 K291 ["SegmentationFastFollow"]
     1004 CALL                             R7 1 1
     1005 CALL                             R7 0 1
     1006 SETTABLEKS                       R7 R5 K292 ["FFlagSegmentationFastFollow"]
     1008 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1010 LOADK                            R8 K293 ["StudioOpenCloudMCP"]
     1011 CALL                             R7 1 1
     1012 CALL                             R7 0 1
     1013 SETTABLEKS                       R7 R5 K294 ["FFlagStudioOpenCloudMCP"]
     1015 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1017 LOADK                            R8 K295 ["SubagentScriptEditAutoConfirmation"]
     1018 CALL                             R7 1 1
     1019 CALL                             R7 0 1
     1020 SETTABLEKS                       R7 R5 K296 ["FFlagSubagentScriptEditAutoConfirmation"]
     1022 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1024 LOADK                            R8 K297 ["UseStudioSideListTool"]
     1025 CALL                             R7 1 1
     1026 CALL                             R7 0 1
     1027 SETTABLEKS                       R7 R5 K298 ["FFlagUseStudioSideListTool"]
     1029 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1031 LOADK                            R8 K300 ["AmrAssetDependencyGrantEventTimeout"]
     1032 LOADN                            R9 40
     1033 CALL                             R7 2 1
     1034 CALL                             R7 0 1
     1035 SETTABLEKS                       R7 R5 K301 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1037 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1039 LOADK                            R8 K302 ["AssistantAutoSaveInterval"]
     1040 LOADN                            R9 60
     1041 CALL                             R7 2 1
     1042 CALL                             R7 0 1
     1043 SETTABLEKS                       R7 R5 K303 ["FIntAssistantAutoSaveInterval"]
     1045 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1047 LOADK                            R8 K304 ["AssistantDebugToolMaxOutput"]
     1048 LOADN                            R9 20000
     1049 CALL                             R7 2 1
     1050 CALL                             R7 0 1
     1051 SETTABLEKS                       R7 R5 K305 ["FIntAssistantDebugToolMaxOutput"]
     1053 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1055 LOADK                            R8 K306 ["AssistantJobWaitDefaultTimeout"]
     1056 LOADN                            R9 600
     1057 CALL                             R7 2 1
     1058 CALL                             R7 0 1
     1059 SETTABLEKS                       R7 R5 K307 ["FIntAssistantJobWaitDefaultTimeout"]
     1061 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1063 LOADK                            R8 K308 ["AssistantMaxDisplayTextChars"]
     1064 LOADK                            R9 K309 [100000]
     1065 CALL                             R7 2 1
     1066 CALL                             R7 0 1
     1067 SETTABLEKS                       R7 R5 K310 ["FIntAssistantMaxDisplayTextChars"]
     1069 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1071 LOADK                            R8 K311 ["AssistantMaxToolInputStringLen"]
     1072 LOADN                            R9 2000
     1073 CALL                             R7 2 1
     1074 CALL                             R7 0 1
     1075 SETTABLEKS                       R7 R5 K312 ["FIntAssistantMaxToolInputStringLen"]
     1077 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1079 LOADK                            R8 K313 ["AssistantMeshGenMaxTrianglesDefault"]
     1080 LOADN                            R9 10000
     1081 CALL                             R7 2 1
     1082 CALL                             R7 0 1
     1083 SETTABLEKS                       R7 R5 K314 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1085 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1087 LOADK                            R8 K315 ["AssistantMinPopoverHeight"]
     1088 LOADN                            R9 150
     1089 CALL                             R7 2 1
     1090 CALL                             R7 0 1
     1091 SETTABLEKS                       R7 R5 K316 ["FIntAssistantMinPopoverHeight"]
     1093 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1095 LOADK                            R8 K317 ["AssistantPersistenceMessageLoadLimit"]
     1096 LOADN                            R9 5
     1097 CALL                             R7 2 1
     1098 CALL                             R7 0 1
     1099 SETTABLEKS                       R7 R5 K318 ["FIntAssistantPersistenceMessageLoadLimit"]
     1101 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1103 LOADK                            R8 K319 ["AssistantPersistenceThreadLoadLimit"]
     1104 LOADN                            R9 5
     1105 CALL                             R7 2 1
     1106 CALL                             R7 0 1
     1107 SETTABLEKS                       R7 R5 K320 ["FIntAssistantPersistenceThreadLoadLimit"]
     1109 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1111 LOADK                            R8 K321 ["AssistantPostTurnRefreshDelaySeconds"]
     1112 LOADN                            R9 2
     1113 CALL                             R7 2 1
     1114 CALL                             R7 0 1
     1115 SETTABLEKS                       R7 R5 K322 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1117 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1119 LOADK                            R8 K323 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1120 LOADN                            R9 999
     1121 CALL                             R7 2 1
     1122 CALL                             R7 0 1
     1123 SETTABLEKS                       R7 R5 K324 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1125 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1127 LOADK                            R8 K325 ["AssistantPrimitiveGenPollIntervalMs"]
     1128 LOADN                            R9 2000
     1129 CALL                             R7 2 1
     1130 CALL                             R7 0 1
     1131 SETTABLEKS                       R7 R5 K326 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1133 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1135 LOADK                            R8 K327 ["AssistantProcessEventTimeoutMS"]
     1136 LOADK                            R9 K328 [60000]
     1137 CALL                             R7 2 1
     1138 CALL                             R7 0 1
     1139 SETTABLEKS                       R7 R5 K329 ["FIntAssistantProcessEventTimeoutMS"]
     1141 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1143 LOADK                            R8 K330 ["AssistantSegmentMeshMaxUserParts"]
     1144 LOADN                            R9 16
     1145 CALL                             R7 2 1
     1146 CALL                             R7 0 1
     1147 SETTABLEKS                       R7 R5 K331 ["FIntAssistantSegmentMeshMaxUserParts"]
     1149 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1151 LOADK                            R8 K332 ["ConvAIMaxHistoryCount"]
     1152 LOADN                            R9 6
     1153 CALL                             R7 2 1
     1154 CALL                             R7 0 1
     1155 SETTABLEKS                       R7 R5 K333 ["FIntConvAIMaxHistoryCount"]
     1157 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1159 LOADK                            R8 K334 ["ConvAIMeshGenGenerationRetryLimit"]
     1160 LOADN                            R9 4
     1161 CALL                             R7 2 1
     1162 CALL                             R7 0 1
     1163 SETTABLEKS                       R7 R5 K335 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1165 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1167 LOADK                            R8 K336 ["ConvAIMeshGenPublishAttemptLimit"]
     1168 LOADN                            R9 5
     1169 CALL                             R7 2 1
     1170 CALL                             R7 0 1
     1171 SETTABLEKS                       R7 R5 K337 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1173 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1175 LOADK                            R8 K338 ["ExecuteLuauMaxJsonLength"]
     1176 LOADK                            R9 K309 [100000]
     1177 CALL                             R7 2 1
     1178 CALL                             R7 0 1
     1179 SETTABLEKS                       R7 R5 K339 ["FIntExecuteLuauMaxJsonLength"]
     1181 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1183 LOADK                            R8 K340 ["ExecuteLuauMaxStringLength"]
     1184 LOADK                            R9 K309 [100000]
     1185 CALL                             R7 2 1
     1186 CALL                             R7 0 1
     1187 SETTABLEKS                       R7 R5 K341 ["FIntExecuteLuauMaxStringLength"]
     1189 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1191 LOADK                            R8 K342 ["FactorDelayPreview"]
     1192 LOADN                            R9 1
     1193 CALL                             R7 2 1
     1194 CALL                             R7 0 1
     1195 SETTABLEKS                       R7 R5 K343 ["FIntFactorDelayPreview"]
     1197 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1199 LOADK                            R8 K344 ["FromHistoryMaxResultChars"]
     1200 LOADK                            R9 K345 [200000]
     1201 CALL                             R7 2 1
     1202 CALL                             R7 0 1
     1203 SETTABLEKS                       R7 R5 K346 ["FIntFromHistoryMaxResultChars"]
     1205 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1207 LOADK                            R8 K347 ["GameTreeDefaultHeadLimit"]
     1208 LOADN                            R9 200
     1209 CALL                             R7 2 1
     1210 CALL                             R7 0 1
     1211 SETTABLEKS                       R7 R5 K348 ["FIntGameTreeDefaultHeadLimit"]
     1213 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1215 LOADK                            R8 K349 ["GameTreeDefaultMaxDepth"]
     1216 LOADN                            R9 3
     1217 CALL                             R7 2 1
     1218 CALL                             R7 0 1
     1219 SETTABLEKS                       R7 R5 K350 ["FIntGameTreeDefaultMaxDepth"]
     1221 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1223 LOADK                            R8 K351 ["GameTreeMaxAbsoluteDepth"]
     1224 LOADN                            R9 10
     1225 CALL                             R7 2 1
     1226 CALL                             R7 0 1
     1227 SETTABLEKS                       R7 R5 K352 ["FIntGameTreeMaxAbsoluteDepth"]
     1229 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1231 LOADK                            R8 K353 ["InspectInstanceMaxJsonLength"]
     1232 LOADN                            R9 500
     1233 CALL                             R7 2 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R5 K354 ["FIntInspectInstanceMaxJsonLength"]
     1237 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1239 LOADK                            R8 K355 ["InspectInstanceMaxMatches"]
     1240 LOADN                            R9 20
     1241 CALL                             R7 2 1
     1242 CALL                             R7 0 1
     1243 SETTABLEKS                       R7 R5 K356 ["FIntInspectInstanceMaxMatches"]
     1245 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1247 LOADK                            R8 K357 ["InspectInstanceMaxStringLength"]
     1248 LOADN                            R9 1000
     1249 CALL                             R7 2 1
     1250 CALL                             R7 0 1
     1251 SETTABLEKS                       R7 R5 K358 ["FIntInspectInstanceMaxStringLength"]
     1253 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1255 LOADK                            R8 K359 ["MCPAssistantGenerationIndicatorWarningTime"]
     1256 LOADN                            R9 10
     1257 CALL                             R7 2 1
     1258 CALL                             R7 0 1
     1259 SETTABLEKS                       R7 R5 K360 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1261 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1263 LOADK                            R8 K361 ["MCPAssistantInputAreaCharLimit"]
     1264 LOADN                            R9 4000
     1265 CALL                             R7 2 1
     1266 CALL                             R7 0 1
     1267 SETTABLEKS                       R7 R5 K362 ["FIntMCPAssistantInputAreaCharLimit"]
     1269 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1271 LOADK                            R8 K363 ["MCPAssistantMaxPromptHistory"]
     1272 LOADN                            R9 20
     1273 CALL                             R7 2 1
     1274 CALL                             R7 0 1
     1275 SETTABLEKS                       R7 R5 K364 ["FIntMCPAssistantMaxPromptHistory"]
     1277 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1279 LOADK                            R8 K365 ["MCPAssistantMaxToolCalls"]
     1280 LOADN                            R9 20
     1281 CALL                             R7 2 1
     1282 CALL                             R7 0 1
     1283 SETTABLEKS                       R7 R5 K366 ["FIntMCPAssistantMaxToolCalls"]
     1285 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1287 LOADK                            R8 K367 ["MinimumAssistantFreeTrialRemaining"]
     1288 LOADN                            R9 1
     1289 CALL                             R7 2 1
     1290 CALL                             R7 0 1
     1291 SETTABLEKS                       R7 R5 K368 ["FIntMinimumAssistantFreeTrialRemaining"]
     1293 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1295 LOADK                            R8 K369 ["MinimumAssistantRobuxBalance"]
     1296 LOADN                            R9 100
     1297 CALL                             R7 2 1
     1298 CALL                             R7 0 1
     1299 SETTABLEKS                       R7 R5 K370 ["FIntMinimumAssistantRobuxBalance"]
     1301 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1303 LOADK                            R8 K371 ["PlaytestLookBudget"]
     1304 LOADN                            R9 7
     1305 CALL                             R7 2 1
     1306 CALL                             R7 0 1
     1307 SETTABLEKS                       R7 R5 K372 ["FIntPlaytestLookBudget"]
     1309 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1311 LOADK                            R8 K373 ["PlaytestLookTimeoutMs"]
     1312 LOADK                            R9 K328 [60000]
     1313 CALL                             R7 2 1
     1314 CALL                             R7 0 1
     1315 SETTABLEKS                       R7 R5 K374 ["FIntPlaytestLookTimeoutMs"]
     1317 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1319 LOADK                            R8 K375 ["PlaytestMaxToolCalls"]
     1320 LOADN                            R9 50
     1321 CALL                             R7 2 1
     1322 CALL                             R7 0 1
     1323 SETTABLEKS                       R7 R5 K376 ["FIntPlaytestMaxToolCalls"]
     1325 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1327 LOADK                            R8 K377 ["PrimGenLongRunThresholdSec"]
     1328 LOADN                            R9 120
     1329 CALL                             R7 2 1
     1330 CALL                             R7 0 1
     1331 SETTABLEKS                       R7 R5 K378 ["FIntPrimGenLongRunThresholdSec"]
     1333 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1335 LOADK                            R8 K379 ["PrimGenTextMaxLength"]
     1336 LOADN                            R9 80
     1337 CALL                             R7 2 1
     1338 CALL                             R7 0 1
     1339 SETTABLEKS                       R7 R5 K380 ["FIntPrimGenTextMaxLength"]
     1341 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1343 LOADK                            R8 K381 ["PrimGenVerticalGutter"]
     1344 LOADN                            R9 10
     1345 CALL                             R7 2 1
     1346 CALL                             R7 0 1
     1347 SETTABLEKS                       R7 R5 K382 ["FIntPrimGenVerticalGutter"]
     1349 GETTABLEKS                       R7 R4 K299 ["createGetFInt"]
     1351 LOADK                            R8 K383 ["UnitTestSubagentMaxToolCalls"]
     1352 LOADN                            R9 100
     1353 CALL                             R7 2 1
     1354 CALL                             R7 0 1
     1355 SETTABLEKS                       R7 R5 K384 ["FIntUnitTestSubagentMaxToolCalls"]
     1357 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1359 LOADK                            R8 K386 ["AssistantDebugCreditMeteringBlockReason"]
     1360 LOADK                            R9 K387 [""]
     1361 CALL                             R7 2 1
     1362 CALL                             R7 0 1
     1363 SETTABLEKS                       R7 R5 K388 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1365 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1367 LOADK                            R8 K389 ["AssistantDisabledSubagents"]
     1368 LOADK                            R9 K387 [""]
     1369 CALL                             R7 2 1
     1370 CALL                             R7 0 1
     1371 SETTABLEKS                       R7 R5 K390 ["FStringAssistantDisabledSubagents"]
     1373 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1375 LOADK                            R8 K391 ["AssistantGen3dDefaultModel"]
     1376 LOADK                            R9 K392 ["Assistant/glm51-h200"]
     1377 CALL                             R7 2 1
     1378 CALL                             R7 0 1
     1379 SETTABLEKS                       R7 R5 K393 ["FStringAssistantGen3dDefaultModel"]
     1381 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1383 LOADK                            R8 K394 ["AssistantImageGenHostOverride"]
     1384 LOADK                            R9 K387 [""]
     1385 CALL                             R7 2 1
     1386 CALL                             R7 0 1
     1387 SETTABLEKS                       R7 R5 K395 ["FStringAssistantImageGenHostOverride"]
     1389 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1391 LOADK                            R8 K396 ["AssistantJobRunTools"]
     1392 LOADK                            R9 K397 ["generate_procedural_model,generate_mesh,generate_material"]
     1393 CALL                             R7 2 1
     1394 CALL                             R7 0 1
     1395 SETTABLEKS                       R7 R5 K398 ["FStringAssistantJobRunTools"]
     1397 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1399 LOADK                            R8 K399 ["AssistantMeshGenImageGenModelOverride"]
     1400 LOADK                            R9 K400 ["gemini"]
     1401 CALL                             R7 2 1
     1402 CALL                             R7 0 1
     1403 SETTABLEKS                       R7 R5 K401 ["FStringAssistantMeshGenImageGenModelOverride"]
     1405 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1407 LOADK                            R8 K402 ["AssistantMeshGenImageGenPromptTemplate"]
     1408 LOADK                            R9 K387 [""]
     1409 CALL                             R7 2 1
     1410 CALL                             R7 0 1
     1411 SETTABLEKS                       R7 R5 K403 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1413 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1415 LOADK                            R8 K404 ["AssistantMeshGenInferenceServiceOverride"]
     1416 LOADK                            R9 K405 ["stage-diff-mesh-gen"]
     1417 CALL                             R7 2 1
     1418 CALL                             R7 0 1
     1419 SETTABLEKS                       R7 R5 K406 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1421 GETIMPORT                        R7 K5 [require]
     1423 GETTABLEKS                       R8 R0 K407 ["FlagUtils"]
     1425 GETTABLEKS                       R8 R8 K408 ["createGetFStringAssistantMeshGenSchemaData"]
     1427 CALL                             R7 1 1
     1428 CALL                             R7 0 1
     1429 SETTABLEKS                       R7 R5 K409 ["FStringAssistantMeshGenSchemaData"]
     1431 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1433 LOADK                            R8 K410 ["AssistantSkillsAllowlist"]
     1434 LOADK                            R9 K411 ["docs-search, scene-analysis"]
     1435 CALL                             R7 2 1
     1436 CALL                             R7 0 1
     1437 SETTABLEKS                       R7 R5 K412 ["FStringAssistantSkillsAllowlist"]
     1439 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1441 LOADK                            R8 K413 ["AssistantTestLLMReasoningEffort"]
     1442 LOADK                            R9 K414 ["high"]
     1443 CALL                             R7 2 1
     1444 CALL                             R7 0 1
     1445 SETTABLEKS                       R7 R5 K415 ["FStringAssistantTestLLMReasoningEffort"]
     1447 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1449 LOADK                            R8 K416 ["AssistantToolsExcludedDirectories"]
     1450 LOADK                            R9 K417 ["CoreGui,PlayerGui,LoadedCode"]
     1451 CALL                             R7 2 1
     1452 CALL                             R7 0 1
     1453 SETTABLEKS                       R7 R5 K418 ["FStringAssistantToolsExcludedDirectories"]
     1455 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1457 LOADK                            R8 K419 ["AssistantToolWidgetMappings"]
     1458 LOADK                            R9 K387 [""]
     1459 CALL                             R7 2 1
     1460 CALL                             R7 0 1
     1461 SETTABLEKS                       R7 R5 K420 ["FStringAssistantToolWidgetMappings"]
     1463 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1465 LOADK                            R8 K421 ["AssistantUnitTestSubagentModel"]
     1466 LOADK                            R9 K422 ["Assistant/glm5"]
     1467 CALL                             R7 2 1
     1468 CALL                             R7 0 1
     1469 SETTABLEKS                       R7 R5 K423 ["FStringAssistantUnitTestSubagentModel"]
     1471 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1473 LOADK                            R8 K424 ["AssistantUntitledChatPlaceholderText"]
     1474 LOADK                            R9 K425 ["Untitled Chat"]
     1475 CALL                             R7 2 1
     1476 CALL                             R7 0 1
     1477 SETTABLEKS                       R7 R5 K426 ["FStringAssistantUntitledChatPlaceholder"]
     1479 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1481 LOADK                            R8 K427 ["ConvAIMeshGenModerationUrl"]
     1482 LOADK                            R9 K428 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1483 CALL                             R7 2 1
     1484 CALL                             R7 0 1
     1485 SETTABLEKS                       R7 R5 K429 ["FStringConvAIMeshGenModerationUrl"]
     1487 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1489 LOADK                            R8 K430 ["MCPAssistantAnthropicModels"]
     1490 LOADK                            R9 K431 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1491 CALL                             R7 2 1
     1492 CALL                             R7 0 1
     1493 SETTABLEKS                       R7 R5 K432 ["FStringMCPAssistantAnthropicModels"]
     1495 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1497 LOADK                            R8 K433 ["MCPAssistantClaudeAPIKey"]
     1498 LOADK                            R9 K387 [""]
     1499 CALL                             R7 2 1
     1500 CALL                             R7 0 1
     1501 SETTABLEKS                       R7 R5 K434 ["FStringMCPAssistantClaudeAPIKey"]
     1503 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1505 LOADK                            R8 K435 ["MCPAssistantCustomModelName"]
     1506 LOADK                            R9 K387 [""]
     1507 CALL                             R7 2 1
     1508 CALL                             R7 0 1
     1509 SETTABLEKS                       R7 R5 K436 ["FStringMCPAssistantCustomModelName"]
     1511 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1513 LOADK                            R8 K437 ["MCPAssistantGeminiAPIKey"]
     1514 LOADK                            R9 K387 [""]
     1515 CALL                             R7 2 1
     1516 CALL                             R7 0 1
     1517 SETTABLEKS                       R7 R5 K438 ["FStringMCPAssistantGeminiAPIKey"]
     1519 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1521 LOADK                            R8 K439 ["MCPAssistantGeminiModels"]
     1522 LOADK                            R9 K440 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1523 CALL                             R7 2 1
     1524 CALL                             R7 0 1
     1525 SETTABLEKS                       R7 R5 K441 ["FStringMCPAssistantGeminiModels"]
     1527 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1529 LOADK                            R8 K442 ["MCPAssistantOpenAIAPIKey"]
     1530 LOADK                            R9 K387 [""]
     1531 CALL                             R7 2 1
     1532 CALL                             R7 0 1
     1533 SETTABLEKS                       R7 R5 K443 ["FStringMCPAssistantOpenAIAPIKey"]
     1535 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1537 LOADK                            R8 K444 ["MCPAssistantOpenAIModels"]
     1538 LOADK                            R9 K445 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1539 CALL                             R7 2 1
     1540 CALL                             R7 0 1
     1541 SETTABLEKS                       R7 R5 K446 ["FStringMCPAssistantOpenAIModels"]
     1543 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1545 LOADK                            R8 K447 ["MCPAssistantOpenAIReasoningEffort"]
     1546 LOADK                            R9 K387 [""]
     1547 CALL                             R7 2 1
     1548 CALL                             R7 0 1
     1549 SETTABLEKS                       R7 R5 K448 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1551 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1553 LOADK                            R8 K449 ["MCPAssistantPrimitiveGenServerURL"]
     1554 LOADK                            R9 K387 [""]
     1555 CALL                             R7 2 1
     1556 CALL                             R7 0 1
     1557 SETTABLEKS                       R7 R5 K450 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1559 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1561 LOADK                            R8 K451 ["MCPAssistantTestLLMAPIKey"]
     1562 LOADK                            R9 K387 [""]
     1563 CALL                             R7 2 1
     1564 CALL                             R7 0 1
     1565 SETTABLEKS                       R7 R5 K452 ["FStringMCPAssistantTestLLMAPIKey"]
     1567 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1569 LOADK                            R8 K453 ["MCPAssistantURLOverride"]
     1570 LOADK                            R9 K387 [""]
     1571 CALL                             R7 2 1
     1572 CALL                             R7 0 1
     1573 SETTABLEKS                       R7 R5 K454 ["FStringMCPAssistantURLOverride"]
     1575 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1577 LOADK                            R8 K455 ["MCPDocsUrl"]
     1578 LOADK                            R9 K456 ["https://create.roblox.com/docs/studio/mcp/"]
     1579 CALL                             R7 2 1
     1580 CALL                             R7 0 1
     1581 SETTABLEKS                       R7 R5 K457 ["FStringMCPDocsUrl"]
     1583 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1585 LOADK                            R8 K458 ["PlaytestConversationURL"]
     1586 LOADK                            R9 K459 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1587 CALL                             R7 2 1
     1588 CALL                             R7 0 1
     1589 SETTABLEKS                       R7 R5 K460 ["FStringPlaytestConversationURL"]
     1591 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1593 LOADK                            R8 K461 ["PlaytestModelName"]
     1594 LOADK                            R9 K462 ["Qwen/Qwen35-35B-A3B"]
     1595 CALL                             R7 2 1
     1596 CALL                             R7 0 1
     1597 SETTABLEKS                       R7 R5 K463 ["FStringPlaytestModelName"]
     1599 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1601 LOADK                            R8 K464 ["PrimGenImageGenPromptTemplate"]
     1602 LOADK                            R9 K387 [""]
     1603 CALL                             R7 2 1
     1604 CALL                             R7 0 1
     1605 SETTABLEKS                       R7 R5 K465 ["FStringPrimGenImageGenPromptTemplate"]
     1607 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1609 LOADK                            R8 K466 ["ProceduralScriptCapabilities"]
     1610 LOADK                            R9 K467 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1611 CALL                             R7 2 1
     1612 CALL                             R7 0 1
     1613 SETTABLEKS                       R7 R5 K468 ["FStringProceduralScriptCapabilities"]
     1615 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1617 LOADK                            R8 K469 ["ScreenCaptureFormat"]
     1618 LOADK                            R9 K387 [""]
     1619 CALL                             R7 2 1
     1620 CALL                             R7 0 1
     1621 SETTABLEKS                       R7 R5 K470 ["FStringScreenCaptureFormat"]
     1623 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1625 LOADK                            R8 K471 ["ScreenCaptureSize"]
     1626 LOADK                            R9 K387 [""]
     1627 CALL                             R7 2 1
     1628 CALL                             R7 0 1
     1629 SETTABLEKS                       R7 R5 K472 ["FStringScreenCaptureSize"]
     1631 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1633 LOADK                            R8 K473 ["ScreenCaptureSubagentModelName"]
     1634 LOADK                            R9 K387 [""]
     1635 CALL                             R7 2 1
     1636 CALL                             R7 0 1
     1637 SETTABLEKS                       R7 R5 K474 ["FStringScreenCaptureSubagentModelName"]
     1639 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1641 LOADK                            R8 K475 ["SegmentByPartsBetaFeatureUrl"]
     1642 LOADK                            R9 K387 [""]
     1643 CALL                             R7 2 1
     1644 CALL                             R7 0 1
     1645 SETTABLEKS                       R7 R5 K476 ["FStringSegmentByPartsBetaFeatureUrl"]
     1647 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1649 LOADK                            R8 K477 ["StudioScopeRiskLevelsDocsUrl"]
     1650 LOADK                            R9 K478 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1651 CALL                             R7 2 1
     1652 CALL                             R7 0 1
     1653 SETTABLEKS                       R7 R5 K479 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1655 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1657 LOADK                            R8 K480 ["SubagentExploreModelName"]
     1658 LOADK                            R9 K481 ["Assistant/glm5-b200-server-1"]
     1659 CALL                             R7 2 1
     1660 CALL                             R7 0 1
     1661 SETTABLEKS                       R7 R5 K482 ["FStringSubagentExploreModelName"]
     1663 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1665 LOADK                            R8 K483 ["SubagentURLOverride"]
     1666 LOADK                            R9 K387 [""]
     1667 CALL                             R7 2 1
     1668 CALL                             R7 0 1
     1669 SETTABLEKS                       R7 R5 K484 ["FStringSubagentURLOverride"]
     1671 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1673 LOADK                            R8 K485 ["TestLLMURLOverride"]
     1674 LOADK                            R9 K387 [""]
     1675 CALL                             R7 2 1
     1676 CALL                             R7 0 1
     1677 SETTABLEKS                       R7 R5 K486 ["FStringTestLLMURLOverride"]
     1679 GETTABLEKS                       R7 R4 K385 ["createGetFString"]
     1681 LOADK                            R8 K487 ["TestSubagentURLOverride"]
     1682 LOADK                            R9 K387 [""]
     1683 CALL                             R7 2 1
     1684 CALL                             R7 0 1
     1685 SETTABLEKS                       R7 R5 K488 ["FStringTestSubagentURLOverride"]
     1687 DUPTABLE                         R9 K490 [{"__index", "__newindex"}]
     1688 SETTABLEKS                       R3 R9 K489 ["__index"]
     1690 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1692 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1694 MOVE                             R8 R5
     1695 GETIMPORT                        R7 K16 [setmetatable]
     1697 CALL                             R7 2 1
     1698 RETURN                           R7 1
