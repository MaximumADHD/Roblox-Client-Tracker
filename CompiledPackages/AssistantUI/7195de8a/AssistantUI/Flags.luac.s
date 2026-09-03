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
      251 LOADK                            R8 K80 ["AssistantExternalInterface"]
      252 CALL                             R7 1 1
      253 CALL                             R7 0 1
      254 SETTABLEKS                       R7 R5 K81 ["FFlagAssistantExternalInterface"]
      256 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      258 LOADK                            R8 K82 ["AssistantExternalMCPPluginSettingRedundancy"]
      259 CALL                             R7 1 1
      260 CALL                             R7 0 1
      261 SETTABLEKS                       R7 R5 K83 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      263 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      265 LOADK                            R8 K84 ["AssistantFeedbackView"]
      266 CALL                             R7 1 1
      267 CALL                             R7 0 1
      268 SETTABLEKS                       R7 R5 K85 ["FFlagAssistantFeedbackView"]
      270 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      272 LOADK                            R8 K86 ["AssistantFixStartPlayHang"]
      273 CALL                             R7 1 1
      274 CALL                             R7 0 1
      275 SETTABLEKS                       R7 R5 K87 ["FFlagAssistantFixStartPlayHang"]
      277 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      279 LOADK                            R8 K88 ["AssistantGen3DAssetPublishTracking"]
      280 CALL                             R7 1 1
      281 CALL                             R7 0 1
      282 SETTABLEKS                       R7 R5 K89 ["FFlagAssistantGen3DAssetPublishTracking"]
      284 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      286 LOADK                            R8 K90 ["AssistantGen3dAutoSegmentation"]
      287 CALL                             R7 1 1
      288 CALL                             R7 0 1
      289 SETTABLEKS                       R7 R5 K91 ["FFlagAssistantGen3dAutoSegmentation"]
      291 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      293 LOADK                            R8 K92 ["AssistantGen3DImagePreviewTelemetry"]
      294 CALL                             R7 1 1
      295 CALL                             R7 0 1
      296 SETTABLEKS                       R7 R5 K93 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      298 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      300 LOADK                            R8 K94 ["AssistantGen3dInputRequestedOverride"]
      301 CALL                             R7 1 1
      302 CALL                             R7 0 1
      303 SETTABLEKS                       R7 R5 K95 ["FFlagAssistantGen3dInputRequestedOverride"]
      305 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      307 LOADK                            R8 K96 ["AssistantGen3dRequirePromptToGenerate"]
      308 CALL                             R7 1 1
      309 CALL                             R7 0 1
      310 SETTABLEKS                       R7 R5 K97 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      312 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      314 LOADK                            R8 K98 ["AssistantGen3DTelemetryV2"]
      315 CALL                             R7 1 1
      316 CALL                             R7 0 1
      317 SETTABLEKS                       R7 R5 K99 ["FFlagAssistantGen3DTelemetryV2"]
      319 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      321 LOADK                            R8 K100 ["AssistantGenerateLayoutTool"]
      322 CALL                             R7 1 1
      323 CALL                             R7 0 1
      324 SETTABLEKS                       R7 R5 K101 ["FFlagAssistantGenerateLayoutTool"]
      326 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      328 LOADK                            R8 K102 ["AssistantHarnessSplit4"]
      329 CALL                             R7 1 1
      330 CALL                             R7 0 1
      331 SETTABLEKS                       R7 R5 K103 ["FFlagAssistantHarnessSplit"]
      333 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      335 LOADK                            R8 K104 ["AssistantHarnessSplitExp2"]
      336 CALL                             R7 1 1
      337 CALL                             R7 0 1
      338 SETTABLEKS                       R7 R5 K105 ["FFlagAssistantHarnessSplitExp"]
      340 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      342 LOADK                            R8 K106 ["AssistantHideSystemReminderContents"]
      343 CALL                             R7 1 1
      344 CALL                             R7 0 1
      345 SETTABLEKS                       R7 R5 K107 ["FFlagAssistantHideSystemReminderContents"]
      347 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      349 LOADK                            R8 K108 ["AssistantHintImageAsUri2"]
      350 CALL                             R7 1 1
      351 CALL                             R7 0 1
      352 SETTABLEKS                       R7 R5 K109 ["FFlagAssistantHintImageAsUri"]
      354 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      356 LOADK                            R8 K110 ["AssistantHintMultiEditOverExecLuau"]
      357 CALL                             R7 1 1
      358 CALL                             R7 0 1
      359 SETTABLEKS                       R7 R5 K111 ["FFlagAssistantHintMultiEditOverExecLuau"]
      361 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      363 LOADK                            R8 K112 ["AssistantImageGenAbortPollOn4xx"]
      364 CALL                             R7 1 1
      365 CALL                             R7 0 1
      366 SETTABLEKS                       R7 R5 K113 ["FFlagAssistantImageGenAbortPollOn4xx"]
      368 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      370 LOADK                            R8 K114 ["AssistantImageGenImprovements"]
      371 CALL                             R7 1 1
      372 CALL                             R7 0 1
      373 SETTABLEKS                       R7 R5 K115 ["FFlagAssistantImageGenImprovements"]
      375 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      377 LOADK                            R8 K116 ["AssistantImageGenSeed"]
      378 CALL                             R7 1 1
      379 CALL                             R7 0 1
      380 SETTABLEKS                       R7 R5 K117 ["FFlagAssistantImageGenSeed"]
      382 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      384 LOADK                            R8 K118 ["AssistantImageGenUseOpenApiClient"]
      385 CALL                             R7 1 1
      386 CALL                             R7 0 1
      387 SETTABLEKS                       R7 R5 K119 ["FFlagAssistantImageGenUseOpenApiClient"]
      389 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      391 LOADK                            R8 K120 ["AssistantImageSelectionForGen3D"]
      392 CALL                             R7 1 1
      393 CALL                             R7 0 1
      394 SETTABLEKS                       R7 R5 K121 ["FFlagAssistantImageSelectionForGen3D"]
      396 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      398 LOADK                            R8 K122 ["AssistantImageSelectionWizardModeMeshGen"]
      399 CALL                             R7 1 1
      400 CALL                             R7 0 1
      401 SETTABLEKS                       R7 R5 K123 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      403 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      405 LOADK                            R8 K124 ["AssistantImageSelectionWizardModePrimitiveGen"]
      406 CALL                             R7 1 1
      407 CALL                             R7 0 1
      408 SETTABLEKS                       R7 R5 K125 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      410 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      412 LOADK                            R8 K126 ["AssistantImageSelectionWizardModeTextureGen"]
      413 CALL                             R7 1 1
      414 CALL                             R7 0 1
      415 SETTABLEKS                       R7 R5 K127 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      417 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      419 LOADK                            R8 K128 ["AssistantInputRequestedFixedFooter"]
      420 CALL                             R7 1 1
      421 CALL                             R7 0 1
      422 SETTABLEKS                       R7 R5 K129 ["FFlagAssistantInputRequestedFixedFooter"]
      424 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      426 LOADK                            R8 K130 ["AssistantInsertAssetSandboxProceduralModels"]
      427 CALL                             R7 1 1
      428 CALL                             R7 0 1
      429 SETTABLEKS                       R7 R5 K131 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      431 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      433 LOADK                            R8 K132 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      434 CALL                             R7 1 1
      435 CALL                             R7 0 1
      436 SETTABLEKS                       R7 R5 K133 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      438 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      440 LOADK                            R8 K134 ["AssistantInsertAssetSandboxScripts"]
      441 CALL                             R7 1 1
      442 CALL                             R7 0 1
      443 SETTABLEKS                       R7 R5 K135 ["FFlagAssistantInsertAssetSandboxScripts"]
      445 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      447 LOADK                            R8 K136 ["AssistantMcpImageGenShortcut"]
      448 CALL                             R7 1 1
      449 CALL                             R7 0 1
      450 SETTABLEKS                       R7 R5 K137 ["FFlagAssistantMcpImageGenShortcut"]
      452 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      454 LOADK                            R8 K138 ["AssistantMeshGenAutoExpandCollapse"]
      455 CALL                             R7 1 1
      456 CALL                             R7 0 1
      457 SETTABLEKS                       R7 R5 K139 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      459 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      461 LOADK                            R8 K140 ["AssistantMeshGenCarouselPreview"]
      462 CALL                             R7 1 1
      463 CALL                             R7 0 1
      464 SETTABLEKS                       R7 R5 K141 ["FFlagAssistantMeshGenCarouselPreview"]
      466 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      468 LOADK                            R8 K142 ["AssistantMeshGenCombinedAddToPlace"]
      469 CALL                             R7 1 1
      470 CALL                             R7 0 1
      471 SETTABLEKS                       R7 R5 K143 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      473 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      475 LOADK                            R8 K144 ["AssistantMeshGenHintImage"]
      476 CALL                             R7 1 1
      477 CALL                             R7 0 1
      478 SETTABLEKS                       R7 R5 K145 ["FFlagAssistantMeshGenHintImage"]
      480 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      482 LOADK                            R8 K146 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      483 CALL                             R7 1 1
      484 CALL                             R7 0 1
      485 SETTABLEKS                       R7 R5 K147 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      487 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      489 LOADK                            R8 K148 ["AssistantMeshGenRemoveAdminOptions"]
      490 CALL                             R7 1 1
      491 CALL                             R7 0 1
      492 SETTABLEKS                       R7 R5 K149 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      494 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      496 LOADK                            R8 K150 ["AssistantMoveToolButtonsToTheRight"]
      497 CALL                             R7 1 1
      498 CALL                             R7 0 1
      499 SETTABLEKS                       R7 R5 K151 ["FFlagAssistantMoveToolButtonsToTheRight"]
      501 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      503 LOADK                            R8 K152 ["AssistantMultiEditExternalClient"]
      504 CALL                             R7 1 1
      505 CALL                             R7 0 1
      506 SETTABLEKS                       R7 R5 K153 ["FFlagAssistantMultiEditExternalClient"]
      508 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      510 LOADK                            R8 K154 ["AssistantOmitSlashToolCallDroppedFields"]
      511 CALL                             R7 1 1
      512 CALL                             R7 0 1
      513 SETTABLEKS                       R7 R5 K155 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      515 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      517 LOADK                            R8 K156 ["AssistantPinForBuildUI"]
      518 CALL                             R7 1 1
      519 CALL                             R7 0 1
      520 SETTABLEKS                       R7 R5 K157 ["FFlagAssistantPinForBuildUI"]
      522 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      524 LOADK                            R8 K158 ["AssistantPlanRevisionList"]
      525 CALL                             R7 1 1
      526 CALL                             R7 0 1
      527 SETTABLEKS                       R7 R5 K159 ["FFlagAssistantPlanRevisionList"]
      529 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      531 LOADK                            R8 K160 ["AssistantPlaytestContext"]
      532 CALL                             R7 1 1
      533 CALL                             R7 0 1
      534 SETTABLEKS                       R7 R5 K161 ["FFlagAssistantPlaytestContext"]
      536 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      538 LOADK                            R8 K162 ["AssistantPlaytestToolFix"]
      539 CALL                             R7 1 1
      540 CALL                             R7 0 1
      541 SETTABLEKS                       R7 R5 K163 ["FFlagAssistantPlaytestToolFix"]
      543 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      545 LOADK                            R8 K164 ["AssistantPrivilegedCodeExecution"]
      546 CALL                             R7 1 1
      547 CALL                             R7 0 1
      548 SETTABLEKS                       R7 R5 K165 ["FFlagAssistantPrivilegedCodeExecution"]
      550 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      552 LOADK                            R8 K166 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      553 CALL                             R7 1 1
      554 CALL                             R7 0 1
      555 SETTABLEKS                       R7 R5 K167 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      557 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      559 LOADK                            R8 K168 ["AssistantRestoreMostRecentThread"]
      560 CALL                             R7 1 1
      561 CALL                             R7 0 1
      562 SETTABLEKS                       R7 R5 K169 ["FFlagAssistantRestoreMostRecentThread"]
      564 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      566 LOADK                            R8 K170 ["AssistantSegmentationBridge"]
      567 CALL                             R7 1 1
      568 CALL                             R7 0 1
      569 SETTABLEKS                       R7 R5 K171 ["FFlagAssistantSegmentationBridge"]
      571 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      573 LOADK                            R8 K172 ["AssistantSegmentationPanelScroll"]
      574 CALL                             R7 1 1
      575 CALL                             R7 0 1
      576 SETTABLEKS                       R7 R5 K173 ["FFlagAssistantSegmentationPanelScroll"]
      578 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      580 LOADK                            R8 K174 ["AssistantSegmentationPromptModeSelector"]
      581 CALL                             R7 1 1
      582 CALL                             R7 0 1
      583 SETTABLEKS                       R7 R5 K175 ["FFlagAssistantSegmentationPromptModeSelector"]
      585 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      587 LOADK                            R8 K176 ["AssistantSegmentationUIFixes"]
      588 CALL                             R7 1 1
      589 CALL                             R7 0 1
      590 SETTABLEKS                       R7 R5 K177 ["FFlagAssistantSegmentationUIFixes"]
      592 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      594 LOADK                            R8 K178 ["AssistantSegmentMeshCleanupWorldWrapper"]
      595 CALL                             R7 1 1
      596 CALL                             R7 0 1
      597 SETTABLEKS                       R7 R5 K179 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      599 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      601 LOADK                            R8 K180 ["AssistantSegmentMeshTool"]
      602 CALL                             R7 1 1
      603 CALL                             R7 0 1
      604 SETTABLEKS                       R7 R5 K181 ["FFlagAssistantSegmentMeshTool"]
      606 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      608 LOADK                            R8 K182 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      609 CALL                             R7 1 1
      610 CALL                             R7 0 1
      611 SETTABLEKS                       R7 R5 K183 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      613 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      615 LOADK                            R8 K184 ["AssistantSkillToolNameReplace"]
      616 CALL                             R7 1 1
      617 CALL                             R7 0 1
      618 SETTABLEKS                       R7 R5 K185 ["FFlagAssistantSkillToolNameReplace"]
      620 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      622 LOADK                            R8 K186 ["AssistantSlashCommandViaAcp"]
      623 CALL                             R7 1 1
      624 CALL                             R7 0 1
      625 SETTABLEKS                       R7 R5 K187 ["FFlagAssistantSlashCommandViaAcp"]
      627 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      629 LOADK                            R8 K188 ["AssistantSlashToolNameAndError"]
      630 CALL                             R7 1 1
      631 CALL                             R7 0 1
      632 SETTABLEKS                       R7 R5 K189 ["FFlagAssistantSlashToolNameAndError"]
      634 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      636 LOADK                            R8 K190 ["AssistantStandaloneDataModel"]
      637 CALL                             R7 1 1
      638 CALL                             R7 0 1
      639 SETTABLEKS                       R7 R5 K191 ["FFlagAssistantStandaloneDataModel"]
      641 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      643 LOADK                            R8 K192 ["AssistantStartStopPlayBusyCheck"]
      644 CALL                             R7 1 1
      645 CALL                             R7 0 1
      646 SETTABLEKS                       R7 R5 K193 ["FFlagAssistantStartStopPlayBusyCheck"]
      648 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      650 LOADK                            R8 K194 ["AssistantSupportSlashCommandCancellation"]
      651 CALL                             R7 1 1
      652 CALL                             R7 0 1
      653 SETTABLEKS                       R7 R5 K195 ["FFlagAssistantSupportSlashCommandCancellation"]
      655 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      657 LOADK                            R8 K196 ["AssistantSystemSkillsStateReminder"]
      658 CALL                             R7 1 1
      659 CALL                             R7 0 1
      660 SETTABLEKS                       R7 R5 K197 ["FFlagAssistantSystemSkillsStateReminder"]
      662 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      664 LOADK                            R8 K198 ["AssistantTestLLMPreserveThinking"]
      665 LOADB                            R9 1
      666 CALL                             R7 2 1
      667 CALL                             R7 0 1
      668 SETTABLEKS                       R7 R5 K199 ["FFlagAssistantTestLLMPreserveThinking"]
      670 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      672 LOADK                            R8 K200 ["AssistantTestLLMThinkingEnabled"]
      673 LOADB                            R9 1
      674 CALL                             R7 2 1
      675 CALL                             R7 0 1
      676 SETTABLEKS                       R7 R5 K201 ["FFlagAssistantTestLLMThinkingEnabled"]
      678 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      680 LOADK                            R8 K202 ["AssistantTextureGenConfirmBeforeInsert"]
      681 CALL                             R7 1 1
      682 CALL                             R7 0 1
      683 SETTABLEKS                       R7 R5 K203 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      685 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      687 LOADK                            R8 K204 ["AssistantTextureGenModelSelection"]
      688 CALL                             R7 1 1
      689 CALL                             R7 0 1
      690 SETTABLEKS                       R7 R5 K205 ["FFlagAssistantTextureGenModelSelection"]
      692 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      694 LOADK                            R8 K206 ["AssistantTextureGenTool"]
      695 CALL                             R7 1 1
      696 CALL                             R7 0 1
      697 SETTABLEKS                       R7 R5 K207 ["FFlagAssistantTextureGenTool"]
      699 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      701 LOADK                            R8 K208 ["AssistantTextureGenUseSourceMeshCFrame"]
      702 CALL                             R7 1 1
      703 CALL                             R7 0 1
      704 SETTABLEKS                       R7 R5 K209 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      706 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      708 LOADK                            R8 K210 ["AssistantUntitledChatPlaceholder"]
      709 CALL                             R7 1 1
      710 CALL                             R7 0 1
      711 SETTABLEKS                       R7 R5 K211 ["FFlagAssistantUntitledChatPlaceholder"]
      713 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      715 LOADK                            R8 K212 ["AssistantUseBuilderIcons"]
      716 CALL                             R7 1 1
      717 CALL                             R7 0 1
      718 SETTABLEKS                       R7 R5 K213 ["FFlagAssistantUseBuilderIcons"]
      720 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      722 LOADK                            R8 K214 ["AssistantUseNewTags"]
      723 CALL                             R7 1 1
      724 CALL                             R7 0 1
      725 SETTABLEKS                       R7 R5 K215 ["FFlagAssistantUseNewTags"]
      727 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      729 LOADK                            R8 K216 ["AssistantUseRemoteService2"]
      730 CALL                             R7 1 1
      731 CALL                             R7 0 1
      732 SETTABLEKS                       R7 R5 K217 ["FFlagAssistantUseRemoteService"]
      734 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      736 LOADK                            R8 K218 ["AssistantUseVariantHttpTransport"]
      737 CALL                             R7 1 1
      738 CALL                             R7 0 1
      739 SETTABLEKS                       R7 R5 K219 ["FFlagAssistantUseVariantHttpTransport"]
      741 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      743 LOADK                            R8 K220 ["AssistantVersionMismatchWarning"]
      744 CALL                             R7 1 1
      745 CALL                             R7 0 1
      746 SETTABLEKS                       R7 R5 K221 ["FFlagAssistantVersionMismatchWarning"]
      748 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      750 LOADK                            R8 K222 ["AssistantVideoCaptureTool"]
      751 CALL                             R7 1 1
      752 CALL                             R7 0 1
      753 SETTABLEKS                       R7 R5 K223 ["FFlagAssistantVideoCaptureTool"]
      755 GETTABLEKS                       R8 R4 K17 ["createGetFFlag"]
      757 LOADK                            R9 K224 ["AssistantVirtualInputEnabled"]
      758 CALL                             R8 1 1
      759 CALL                             R8 0 1
      760 AND                              R7 R8 R6
      761 SETTABLEKS                       R7 R5 K225 ["FFlagAssistantVirtualInputEnabled"]
      763 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      765 LOADK                            R8 K226 ["AsssistantFixMarkdownRendererErrorForBracket"]
      766 CALL                             R7 1 1
      767 CALL                             R7 0 1
      768 SETTABLEKS                       R7 R5 K227 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      770 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      772 LOADK                            R8 K228 ["DebugAssistantMultiPlayerAgentsLog"]
      773 CALL                             R7 1 1
      774 CALL                             R7 0 1
      775 SETTABLEKS                       R7 R5 K229 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      777 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      779 LOADK                            R8 K230 ["DebugEnableTestLLMAdapter"]
      780 CALL                             R7 1 1
      781 CALL                             R7 0 1
      782 SETTABLEKS                       R7 R5 K231 ["FFlagDebugEnableTestLLMAdapter"]
      784 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      786 LOADK                            R8 K232 ["DebugMockPrimitiveGenBackend"]
      787 CALL                             R7 1 1
      788 CALL                             R7 0 1
      789 SETTABLEKS                       R7 R5 K233 ["FFlagDebugMockPrimitiveGenBackend"]
      791 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      793 LOADK                            R8 K234 ["DebugPrimGenDMNoReachable"]
      794 CALL                             R7 1 1
      795 CALL                             R7 0 1
      796 SETTABLEKS                       R7 R5 K235 ["FFlagDebugPrimGenDMNoReachable"]
      798 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      800 LOADK                            R8 K236 ["DisableMCPConnectionIndicator"]
      801 CALL                             R7 1 1
      802 CALL                             R7 0 1
      803 SETTABLEKS                       R7 R5 K237 ["FFlagDisableMCPConnectionIndicator"]
      805 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      807 LOADK                            R8 K238 ["FFlagDisableNavigationConfirmation"]
      808 CALL                             R7 1 1
      809 CALL                             R7 0 1
      810 SETTABLEKS                       R7 R5 K238 ["FFlagDisableNavigationConfirmation"]
      812 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      814 LOADK                            R8 K239 ["DisableNewSmartSize"]
      815 CALL                             R7 1 1
      816 CALL                             R7 0 1
      817 SETTABLEKS                       R7 R5 K240 ["FFlagDisableNewSmartSize"]
      819 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      821 LOADK                            R8 K241 ["DisableOldSmartSize"]
      822 CALL                             R7 1 1
      823 CALL                             R7 0 1
      824 SETTABLEKS                       R7 R5 K242 ["FFlagDisableOldSmartSize"]
      826 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      828 LOADK                            R8 K243 ["FFlagDisableStartStopPlayConfirmation"]
      829 CALL                             R7 1 1
      830 CALL                             R7 0 1
      831 SETTABLEKS                       R7 R5 K243 ["FFlagDisableStartStopPlayConfirmation"]
      833 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      835 LOADK                            R8 K244 ["FFlagDisableUserInputConfirmation"]
      836 CALL                             R7 1 1
      837 CALL                             R7 0 1
      838 SETTABLEKS                       R7 R5 K244 ["FFlagDisableUserInputConfirmation"]
      840 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      842 LOADK                            R8 K245 ["EnableAssistantImageUpload"]
      843 CALL                             R7 1 1
      844 CALL                             R7 0 1
      845 SETTABLEKS                       R7 R5 K246 ["FFlagEnableAssistantImageUpload"]
      847 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      849 LOADK                            R8 K247 ["EnablePlaytestSubagent"]
      850 CALL                             R7 1 1
      851 CALL                             R7 0 1
      852 SETTABLEKS                       R7 R5 K248 ["FFlagEnablePlaytestSubagent"]
      854 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      856 LOADK                            R8 K249 ["Gen3dSegmentationSelector"]
      857 CALL                             R7 1 1
      858 CALL                             R7 0 1
      859 SETTABLEKS                       R7 R5 K250 ["FFlagGen3dSegmentationSelector"]
      861 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      863 LOADK                            R8 K251 ["MarkdownStudioThemeColors"]
      864 CALL                             R7 1 1
      865 CALL                             R7 0 1
      866 SETTABLEKS                       R7 R5 K252 ["FFlagMarkdownStudioThemeColors"]
      868 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      870 LOADK                            R8 K253 ["MCPAssistantAzureOpenAI"]
      871 CALL                             R7 1 1
      872 CALL                             R7 0 1
      873 SETTABLEKS                       R7 R5 K254 ["FFlagMCPAssistantAzureOpenAI"]
      875 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      877 LOADK                            R8 K255 ["MCPAssistantManagementMenu5"]
      878 CALL                             R7 1 1
      879 CALL                             R7 0 1
      880 SETTABLEKS                       R7 R5 K256 ["FFlagMCPAssistantManagementMenu"]
      882 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      884 LOADK                            R8 K257 ["MCPAssistantOpenAIPreserveThinking"]
      885 CALL                             R7 1 1
      886 CALL                             R7 0 1
      887 SETTABLEKS                       R7 R5 K258 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      889 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      891 LOADK                            R8 K259 ["MCPAssistantOpenAIThinkingEnabled"]
      892 CALL                             R7 1 1
      893 CALL                             R7 0 1
      894 SETTABLEKS                       R7 R5 K260 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      896 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      898 LOADK                            R8 K261 ["MCPAssistantUseNewMarkdown"]
      899 CALL                             R7 1 1
      900 CALL                             R7 0 1
      901 SETTABLEKS                       R7 R5 K262 ["FFlagMCPAssistantUseNewMarkdown"]
      903 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      905 LOADK                            R8 K263 ["MCPConnectionIndicatorTooltip"]
      906 CALL                             R7 1 1
      907 CALL                             R7 0 1
      908 SETTABLEKS                       R7 R5 K264 ["FFlagMCPConnectionIndicatorTooltip"]
      910 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      912 LOADK                            R8 K265 ["MCPContentNormalization"]
      913 CALL                             R7 1 1
      914 CALL                             R7 0 1
      915 SETTABLEKS                       R7 R5 K266 ["FFlagMCPContentNormalization"]
      917 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      919 LOADK                            R8 K267 ["MCPEnableToolDisabling"]
      920 CALL                             R7 1 1
      921 CALL                             R7 0 1
      922 SETTABLEKS                       R7 R5 K268 ["FFlagMCPEnableToolDisabling"]
      924 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      926 LOADK                            R8 K269 ["PlaytestVision"]
      927 CALL                             R7 1 1
      928 CALL                             R7 0 1
      929 SETTABLEKS                       R7 R5 K270 ["FFlagPlaytestVision"]
      931 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      933 LOADK                            R8 K271 ["PrimGenAllowReInsert"]
      934 CALL                             R7 1 1
      935 CALL                             R7 0 1
      936 SETTABLEKS                       R7 R5 K272 ["FFlagPrimGenAllowReInsert"]
      938 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      940 LOADK                            R8 K273 ["PrimGenBetterErrorType"]
      941 CALL                             R7 1 1
      942 CALL                             R7 0 1
      943 SETTABLEKS                       R7 R5 K274 ["FFlagPrimGenBetterErrorType"]
      945 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      947 LOADK                            R8 K275 ["PrimGenCarouselPreview"]
      948 CALL                             R7 1 1
      949 CALL                             R7 0 1
      950 SETTABLEKS                       R7 R5 K276 ["FFlagPrimGenCarouselPreview"]
      952 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      954 LOADK                            R8 K277 ["PrimGenDetectMineTypeFromContent"]
      955 CALL                             R7 1 1
      956 CALL                             R7 0 1
      957 SETTABLEKS                       R7 R5 K278 ["FFlagPrimGenDetectMineTypeFromContent"]
      959 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      961 LOADK                            R8 K279 ["PrimGenImageGenPromptTemplateEnabled"]
      962 CALL                             R7 1 1
      963 CALL                             R7 0 1
      964 SETTABLEKS                       R7 R5 K280 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      966 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      968 LOADK                            R8 K281 ["PrimGenSchemaSelector"]
      969 CALL                             R7 1 1
      970 CALL                             R7 0 1
      971 SETTABLEKS                       R7 R5 K282 ["FFlagPrimGenSchemaSelector"]
      973 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      975 LOADK                            R8 K283 ["PrimGenVerboseDmIsUnReachableMsg"]
      976 CALL                             R7 1 1
      977 CALL                             R7 0 1
      978 SETTABLEKS                       R7 R5 K284 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      980 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      982 LOADK                            R8 K285 ["PrimGenVersionMismatchError"]
      983 CALL                             R7 1 1
      984 CALL                             R7 0 1
      985 SETTABLEKS                       R7 R5 K286 ["FFlagPrimGenVersionMismatchError"]
      987 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      989 LOADK                            R8 K287 ["PrimitiveGenRestoreError"]
      990 CALL                             R7 1 1
      991 CALL                             R7 0 1
      992 SETTABLEKS                       R7 R5 K288 ["FFlagPrimitiveGenRestoreError"]
      994 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
      996 LOADK                            R8 K289 ["PropertiesExposeContentView"]
      997 CALL                             R7 1 1
      998 CALL                             R7 0 1
      999 SETTABLEKS                       R7 R5 K290 ["FFlagPropertiesExposeContentView"]
     1001 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1003 LOADK                            R8 K291 ["ScreenCaptureCamera"]
     1004 CALL                             R7 1 1
     1005 CALL                             R7 0 1
     1006 SETTABLEKS                       R7 R5 K292 ["FFlagScreenCaptureCamera"]
     1008 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1010 LOADK                            R8 K293 ["ScriptDebuggerServiceEnabled2"]
     1011 CALL                             R7 1 1
     1012 CALL                             R7 0 1
     1013 SETTABLEKS                       R7 R5 K294 ["FFlagScriptDebuggerServiceEnabled"]
     1015 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1017 LOADK                            R8 K295 ["SegmentationFastFollow"]
     1018 CALL                             R7 1 1
     1019 CALL                             R7 0 1
     1020 SETTABLEKS                       R7 R5 K296 ["FFlagSegmentationFastFollow"]
     1022 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1024 LOADK                            R8 K297 ["StudioOpenCloudMCP"]
     1025 CALL                             R7 1 1
     1026 CALL                             R7 0 1
     1027 SETTABLEKS                       R7 R5 K298 ["FFlagStudioOpenCloudMCP"]
     1029 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1031 LOADK                            R8 K299 ["SubagentScriptEditAutoConfirmation"]
     1032 CALL                             R7 1 1
     1033 CALL                             R7 0 1
     1034 SETTABLEKS                       R7 R5 K300 ["FFlagSubagentScriptEditAutoConfirmation"]
     1036 GETTABLEKS                       R7 R4 K17 ["createGetFFlag"]
     1038 LOADK                            R8 K301 ["UseStudioSideListTool"]
     1039 CALL                             R7 1 1
     1040 CALL                             R7 0 1
     1041 SETTABLEKS                       R7 R5 K302 ["FFlagUseStudioSideListTool"]
     1043 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1045 LOADK                            R8 K304 ["AmrAssetDependencyGrantEventTimeout"]
     1046 LOADN                            R9 40
     1047 CALL                             R7 2 1
     1048 CALL                             R7 0 1
     1049 SETTABLEKS                       R7 R5 K305 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1051 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1053 LOADK                            R8 K306 ["AssistantAutoSaveInterval"]
     1054 LOADN                            R9 60
     1055 CALL                             R7 2 1
     1056 CALL                             R7 0 1
     1057 SETTABLEKS                       R7 R5 K307 ["FIntAssistantAutoSaveInterval"]
     1059 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1061 LOADK                            R8 K308 ["AssistantDebugToolMaxOutput"]
     1062 LOADN                            R9 20000
     1063 CALL                             R7 2 1
     1064 CALL                             R7 0 1
     1065 SETTABLEKS                       R7 R5 K309 ["FIntAssistantDebugToolMaxOutput"]
     1067 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1069 LOADK                            R8 K310 ["AssistantJobWaitDefaultTimeout"]
     1070 LOADN                            R9 600
     1071 CALL                             R7 2 1
     1072 CALL                             R7 0 1
     1073 SETTABLEKS                       R7 R5 K311 ["FIntAssistantJobWaitDefaultTimeout"]
     1075 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1077 LOADK                            R8 K312 ["AssistantMaxDisplayTextChars"]
     1078 LOADK                            R9 K313 [100000]
     1079 CALL                             R7 2 1
     1080 CALL                             R7 0 1
     1081 SETTABLEKS                       R7 R5 K314 ["FIntAssistantMaxDisplayTextChars"]
     1083 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1085 LOADK                            R8 K315 ["AssistantMaxToolInputStringLen"]
     1086 LOADN                            R9 2000
     1087 CALL                             R7 2 1
     1088 CALL                             R7 0 1
     1089 SETTABLEKS                       R7 R5 K316 ["FIntAssistantMaxToolInputStringLen"]
     1091 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1093 LOADK                            R8 K317 ["AssistantMeshGenMaxTrianglesDefault"]
     1094 LOADN                            R9 10000
     1095 CALL                             R7 2 1
     1096 CALL                             R7 0 1
     1097 SETTABLEKS                       R7 R5 K318 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1099 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1101 LOADK                            R8 K319 ["AssistantMinPopoverHeight"]
     1102 LOADN                            R9 150
     1103 CALL                             R7 2 1
     1104 CALL                             R7 0 1
     1105 SETTABLEKS                       R7 R5 K320 ["FIntAssistantMinPopoverHeight"]
     1107 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1109 LOADK                            R8 K321 ["AssistantPersistenceMessageLoadLimit"]
     1110 LOADN                            R9 5
     1111 CALL                             R7 2 1
     1112 CALL                             R7 0 1
     1113 SETTABLEKS                       R7 R5 K322 ["FIntAssistantPersistenceMessageLoadLimit"]
     1115 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1117 LOADK                            R8 K323 ["AssistantPersistenceThreadLoadLimit"]
     1118 LOADN                            R9 5
     1119 CALL                             R7 2 1
     1120 CALL                             R7 0 1
     1121 SETTABLEKS                       R7 R5 K324 ["FIntAssistantPersistenceThreadLoadLimit"]
     1123 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1125 LOADK                            R8 K325 ["AssistantPostTurnRefreshDelaySeconds"]
     1126 LOADN                            R9 2
     1127 CALL                             R7 2 1
     1128 CALL                             R7 0 1
     1129 SETTABLEKS                       R7 R5 K326 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1131 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1133 LOADK                            R8 K327 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1134 LOADN                            R9 999
     1135 CALL                             R7 2 1
     1136 CALL                             R7 0 1
     1137 SETTABLEKS                       R7 R5 K328 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1139 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1141 LOADK                            R8 K329 ["AssistantPrimitiveGenPollIntervalMs"]
     1142 LOADN                            R9 2000
     1143 CALL                             R7 2 1
     1144 CALL                             R7 0 1
     1145 SETTABLEKS                       R7 R5 K330 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1147 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1149 LOADK                            R8 K331 ["AssistantProcessEventTimeoutMS"]
     1150 LOADK                            R9 K332 [60000]
     1151 CALL                             R7 2 1
     1152 CALL                             R7 0 1
     1153 SETTABLEKS                       R7 R5 K333 ["FIntAssistantProcessEventTimeoutMS"]
     1155 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1157 LOADK                            R8 K334 ["AssistantSegmentMeshMaxUserParts"]
     1158 LOADN                            R9 16
     1159 CALL                             R7 2 1
     1160 CALL                             R7 0 1
     1161 SETTABLEKS                       R7 R5 K335 ["FIntAssistantSegmentMeshMaxUserParts"]
     1163 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1165 LOADK                            R8 K336 ["ConvAIMaxHistoryCount"]
     1166 LOADN                            R9 6
     1167 CALL                             R7 2 1
     1168 CALL                             R7 0 1
     1169 SETTABLEKS                       R7 R5 K337 ["FIntConvAIMaxHistoryCount"]
     1171 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1173 LOADK                            R8 K338 ["ConvAIMeshGenGenerationRetryLimit"]
     1174 LOADN                            R9 4
     1175 CALL                             R7 2 1
     1176 CALL                             R7 0 1
     1177 SETTABLEKS                       R7 R5 K339 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1179 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1181 LOADK                            R8 K340 ["ConvAIMeshGenPublishAttemptLimit"]
     1182 LOADN                            R9 5
     1183 CALL                             R7 2 1
     1184 CALL                             R7 0 1
     1185 SETTABLEKS                       R7 R5 K341 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1187 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1189 LOADK                            R8 K342 ["ExecuteLuauMaxJsonLength"]
     1190 LOADK                            R9 K313 [100000]
     1191 CALL                             R7 2 1
     1192 CALL                             R7 0 1
     1193 SETTABLEKS                       R7 R5 K343 ["FIntExecuteLuauMaxJsonLength"]
     1195 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1197 LOADK                            R8 K344 ["ExecuteLuauMaxStringLength"]
     1198 LOADK                            R9 K313 [100000]
     1199 CALL                             R7 2 1
     1200 CALL                             R7 0 1
     1201 SETTABLEKS                       R7 R5 K345 ["FIntExecuteLuauMaxStringLength"]
     1203 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1205 LOADK                            R8 K346 ["FactorDelayPreview"]
     1206 LOADN                            R9 1
     1207 CALL                             R7 2 1
     1208 CALL                             R7 0 1
     1209 SETTABLEKS                       R7 R5 K347 ["FIntFactorDelayPreview"]
     1211 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1213 LOADK                            R8 K348 ["FromHistoryMaxResultChars"]
     1214 LOADK                            R9 K349 [200000]
     1215 CALL                             R7 2 1
     1216 CALL                             R7 0 1
     1217 SETTABLEKS                       R7 R5 K350 ["FIntFromHistoryMaxResultChars"]
     1219 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1221 LOADK                            R8 K351 ["GameTreeDefaultHeadLimit"]
     1222 LOADN                            R9 200
     1223 CALL                             R7 2 1
     1224 CALL                             R7 0 1
     1225 SETTABLEKS                       R7 R5 K352 ["FIntGameTreeDefaultHeadLimit"]
     1227 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1229 LOADK                            R8 K353 ["GameTreeDefaultMaxDepth"]
     1230 LOADN                            R9 3
     1231 CALL                             R7 2 1
     1232 CALL                             R7 0 1
     1233 SETTABLEKS                       R7 R5 K354 ["FIntGameTreeDefaultMaxDepth"]
     1235 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1237 LOADK                            R8 K355 ["GameTreeMaxAbsoluteDepth"]
     1238 LOADN                            R9 10
     1239 CALL                             R7 2 1
     1240 CALL                             R7 0 1
     1241 SETTABLEKS                       R7 R5 K356 ["FIntGameTreeMaxAbsoluteDepth"]
     1243 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1245 LOADK                            R8 K357 ["InspectInstanceMaxJsonLength"]
     1246 LOADN                            R9 500
     1247 CALL                             R7 2 1
     1248 CALL                             R7 0 1
     1249 SETTABLEKS                       R7 R5 K358 ["FIntInspectInstanceMaxJsonLength"]
     1251 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1253 LOADK                            R8 K359 ["InspectInstanceMaxMatches"]
     1254 LOADN                            R9 20
     1255 CALL                             R7 2 1
     1256 CALL                             R7 0 1
     1257 SETTABLEKS                       R7 R5 K360 ["FIntInspectInstanceMaxMatches"]
     1259 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1261 LOADK                            R8 K361 ["InspectInstanceMaxStringLength"]
     1262 LOADN                            R9 1000
     1263 CALL                             R7 2 1
     1264 CALL                             R7 0 1
     1265 SETTABLEKS                       R7 R5 K362 ["FIntInspectInstanceMaxStringLength"]
     1267 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1269 LOADK                            R8 K363 ["MCPAssistantGenerationIndicatorWarningTime"]
     1270 LOADN                            R9 10
     1271 CALL                             R7 2 1
     1272 CALL                             R7 0 1
     1273 SETTABLEKS                       R7 R5 K364 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1275 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1277 LOADK                            R8 K365 ["MCPAssistantInputAreaCharLimit"]
     1278 LOADN                            R9 4000
     1279 CALL                             R7 2 1
     1280 CALL                             R7 0 1
     1281 SETTABLEKS                       R7 R5 K366 ["FIntMCPAssistantInputAreaCharLimit"]
     1283 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1285 LOADK                            R8 K367 ["MCPAssistantMaxPromptHistory"]
     1286 LOADN                            R9 20
     1287 CALL                             R7 2 1
     1288 CALL                             R7 0 1
     1289 SETTABLEKS                       R7 R5 K368 ["FIntMCPAssistantMaxPromptHistory"]
     1291 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1293 LOADK                            R8 K369 ["MCPAssistantMaxToolCalls"]
     1294 LOADN                            R9 20
     1295 CALL                             R7 2 1
     1296 CALL                             R7 0 1
     1297 SETTABLEKS                       R7 R5 K370 ["FIntMCPAssistantMaxToolCalls"]
     1299 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1301 LOADK                            R8 K371 ["MinimumAssistantFreeTrialRemaining"]
     1302 LOADN                            R9 1
     1303 CALL                             R7 2 1
     1304 CALL                             R7 0 1
     1305 SETTABLEKS                       R7 R5 K372 ["FIntMinimumAssistantFreeTrialRemaining"]
     1307 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1309 LOADK                            R8 K373 ["MinimumAssistantRobuxBalance"]
     1310 LOADN                            R9 100
     1311 CALL                             R7 2 1
     1312 CALL                             R7 0 1
     1313 SETTABLEKS                       R7 R5 K374 ["FIntMinimumAssistantRobuxBalance"]
     1315 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1317 LOADK                            R8 K375 ["PlaytestLookBudget"]
     1318 LOADN                            R9 7
     1319 CALL                             R7 2 1
     1320 CALL                             R7 0 1
     1321 SETTABLEKS                       R7 R5 K376 ["FIntPlaytestLookBudget"]
     1323 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1325 LOADK                            R8 K377 ["PlaytestLookTimeoutMs"]
     1326 LOADK                            R9 K332 [60000]
     1327 CALL                             R7 2 1
     1328 CALL                             R7 0 1
     1329 SETTABLEKS                       R7 R5 K378 ["FIntPlaytestLookTimeoutMs"]
     1331 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1333 LOADK                            R8 K379 ["PlaytestMaxToolCalls"]
     1334 LOADN                            R9 50
     1335 CALL                             R7 2 1
     1336 CALL                             R7 0 1
     1337 SETTABLEKS                       R7 R5 K380 ["FIntPlaytestMaxToolCalls"]
     1339 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1341 LOADK                            R8 K381 ["PrimGenLongRunThresholdSec"]
     1342 LOADN                            R9 120
     1343 CALL                             R7 2 1
     1344 CALL                             R7 0 1
     1345 SETTABLEKS                       R7 R5 K382 ["FIntPrimGenLongRunThresholdSec"]
     1347 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1349 LOADK                            R8 K383 ["PrimGenTextMaxLength"]
     1350 LOADN                            R9 80
     1351 CALL                             R7 2 1
     1352 CALL                             R7 0 1
     1353 SETTABLEKS                       R7 R5 K384 ["FIntPrimGenTextMaxLength"]
     1355 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1357 LOADK                            R8 K385 ["PrimGenVerticalGutter"]
     1358 LOADN                            R9 10
     1359 CALL                             R7 2 1
     1360 CALL                             R7 0 1
     1361 SETTABLEKS                       R7 R5 K386 ["FIntPrimGenVerticalGutter"]
     1363 GETTABLEKS                       R7 R4 K303 ["createGetFInt"]
     1365 LOADK                            R8 K387 ["UnitTestSubagentMaxToolCalls"]
     1366 LOADN                            R9 100
     1367 CALL                             R7 2 1
     1368 CALL                             R7 0 1
     1369 SETTABLEKS                       R7 R5 K388 ["FIntUnitTestSubagentMaxToolCalls"]
     1371 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1373 LOADK                            R8 K390 ["AssistantDebugCreditMeteringBlockReason"]
     1374 LOADK                            R9 K391 [""]
     1375 CALL                             R7 2 1
     1376 CALL                             R7 0 1
     1377 SETTABLEKS                       R7 R5 K392 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1379 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1381 LOADK                            R8 K393 ["AssistantDisabledSubagents"]
     1382 LOADK                            R9 K391 [""]
     1383 CALL                             R7 2 1
     1384 CALL                             R7 0 1
     1385 SETTABLEKS                       R7 R5 K394 ["FStringAssistantDisabledSubagents"]
     1387 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1389 LOADK                            R8 K395 ["AssistantGen3dDefaultModel"]
     1390 LOADK                            R9 K396 ["Assistant/glm51-h200"]
     1391 CALL                             R7 2 1
     1392 CALL                             R7 0 1
     1393 SETTABLEKS                       R7 R5 K397 ["FStringAssistantGen3dDefaultModel"]
     1395 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1397 LOADK                            R8 K398 ["AssistantImageGenHostOverride"]
     1398 LOADK                            R9 K391 [""]
     1399 CALL                             R7 2 1
     1400 CALL                             R7 0 1
     1401 SETTABLEKS                       R7 R5 K399 ["FStringAssistantImageGenHostOverride"]
     1403 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1405 LOADK                            R8 K400 ["AssistantJobRunTools"]
     1406 LOADK                            R9 K401 ["generate_procedural_model,generate_mesh,generate_material"]
     1407 CALL                             R7 2 1
     1408 CALL                             R7 0 1
     1409 SETTABLEKS                       R7 R5 K402 ["FStringAssistantJobRunTools"]
     1411 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1413 LOADK                            R8 K403 ["AssistantMeshGenImageGenModelOverride"]
     1414 LOADK                            R9 K404 ["gemini"]
     1415 CALL                             R7 2 1
     1416 CALL                             R7 0 1
     1417 SETTABLEKS                       R7 R5 K405 ["FStringAssistantMeshGenImageGenModelOverride"]
     1419 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1421 LOADK                            R8 K406 ["AssistantMeshGenImageGenPromptTemplate"]
     1422 LOADK                            R9 K391 [""]
     1423 CALL                             R7 2 1
     1424 CALL                             R7 0 1
     1425 SETTABLEKS                       R7 R5 K407 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1427 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1429 LOADK                            R8 K408 ["AssistantMeshGenInferenceServiceOverride"]
     1430 LOADK                            R9 K409 ["stage-diff-mesh-gen"]
     1431 CALL                             R7 2 1
     1432 CALL                             R7 0 1
     1433 SETTABLEKS                       R7 R5 K410 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1435 GETIMPORT                        R7 K5 [require]
     1437 GETTABLEKS                       R8 R0 K411 ["FlagUtils"]
     1439 GETTABLEKS                       R8 R8 K412 ["createGetFStringAssistantMeshGenSchemaData"]
     1441 CALL                             R7 1 1
     1442 CALL                             R7 0 1
     1443 SETTABLEKS                       R7 R5 K413 ["FStringAssistantMeshGenSchemaData"]
     1445 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1447 LOADK                            R8 K414 ["AssistantSkillsAllowlist"]
     1448 LOADK                            R9 K415 ["docs-search, scene-analysis"]
     1449 CALL                             R7 2 1
     1450 CALL                             R7 0 1
     1451 SETTABLEKS                       R7 R5 K416 ["FStringAssistantSkillsAllowlist"]
     1453 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1455 LOADK                            R8 K417 ["AssistantTestLLMReasoningEffort"]
     1456 LOADK                            R9 K418 ["high"]
     1457 CALL                             R7 2 1
     1458 CALL                             R7 0 1
     1459 SETTABLEKS                       R7 R5 K419 ["FStringAssistantTestLLMReasoningEffort"]
     1461 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1463 LOADK                            R8 K420 ["AssistantToolsExcludedDirectories"]
     1464 LOADK                            R9 K421 ["CoreGui,PlayerGui,LoadedCode"]
     1465 CALL                             R7 2 1
     1466 CALL                             R7 0 1
     1467 SETTABLEKS                       R7 R5 K422 ["FStringAssistantToolsExcludedDirectories"]
     1469 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1471 LOADK                            R8 K423 ["AssistantToolWidgetMappings"]
     1472 LOADK                            R9 K391 [""]
     1473 CALL                             R7 2 1
     1474 CALL                             R7 0 1
     1475 SETTABLEKS                       R7 R5 K424 ["FStringAssistantToolWidgetMappings"]
     1477 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1479 LOADK                            R8 K425 ["AssistantUnitTestSubagentModel"]
     1480 LOADK                            R9 K426 ["Assistant/glm5"]
     1481 CALL                             R7 2 1
     1482 CALL                             R7 0 1
     1483 SETTABLEKS                       R7 R5 K427 ["FStringAssistantUnitTestSubagentModel"]
     1485 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1487 LOADK                            R8 K428 ["AssistantUntitledChatPlaceholderText"]
     1488 LOADK                            R9 K429 ["Untitled Chat"]
     1489 CALL                             R7 2 1
     1490 CALL                             R7 0 1
     1491 SETTABLEKS                       R7 R5 K430 ["FStringAssistantUntitledChatPlaceholder"]
     1493 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1495 LOADK                            R8 K431 ["ConvAIMeshGenModerationUrl"]
     1496 LOADK                            R9 K432 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1497 CALL                             R7 2 1
     1498 CALL                             R7 0 1
     1499 SETTABLEKS                       R7 R5 K433 ["FStringConvAIMeshGenModerationUrl"]
     1501 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1503 LOADK                            R8 K434 ["MCPAssistantAnthropicModels"]
     1504 LOADK                            R9 K435 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1505 CALL                             R7 2 1
     1506 CALL                             R7 0 1
     1507 SETTABLEKS                       R7 R5 K436 ["FStringMCPAssistantAnthropicModels"]
     1509 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1511 LOADK                            R8 K437 ["MCPAssistantClaudeAPIKey"]
     1512 LOADK                            R9 K391 [""]
     1513 CALL                             R7 2 1
     1514 CALL                             R7 0 1
     1515 SETTABLEKS                       R7 R5 K438 ["FStringMCPAssistantClaudeAPIKey"]
     1517 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1519 LOADK                            R8 K439 ["MCPAssistantCustomModelName"]
     1520 LOADK                            R9 K391 [""]
     1521 CALL                             R7 2 1
     1522 CALL                             R7 0 1
     1523 SETTABLEKS                       R7 R5 K440 ["FStringMCPAssistantCustomModelName"]
     1525 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1527 LOADK                            R8 K441 ["MCPAssistantGeminiAPIKey"]
     1528 LOADK                            R9 K391 [""]
     1529 CALL                             R7 2 1
     1530 CALL                             R7 0 1
     1531 SETTABLEKS                       R7 R5 K442 ["FStringMCPAssistantGeminiAPIKey"]
     1533 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1535 LOADK                            R8 K443 ["MCPAssistantGeminiModels"]
     1536 LOADK                            R9 K444 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1537 CALL                             R7 2 1
     1538 CALL                             R7 0 1
     1539 SETTABLEKS                       R7 R5 K445 ["FStringMCPAssistantGeminiModels"]
     1541 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1543 LOADK                            R8 K446 ["MCPAssistantOpenAIAPIKey"]
     1544 LOADK                            R9 K391 [""]
     1545 CALL                             R7 2 1
     1546 CALL                             R7 0 1
     1547 SETTABLEKS                       R7 R5 K447 ["FStringMCPAssistantOpenAIAPIKey"]
     1549 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1551 LOADK                            R8 K448 ["MCPAssistantOpenAIModels"]
     1552 LOADK                            R9 K449 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1553 CALL                             R7 2 1
     1554 CALL                             R7 0 1
     1555 SETTABLEKS                       R7 R5 K450 ["FStringMCPAssistantOpenAIModels"]
     1557 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1559 LOADK                            R8 K451 ["MCPAssistantOpenAIReasoningEffort"]
     1560 LOADK                            R9 K391 [""]
     1561 CALL                             R7 2 1
     1562 CALL                             R7 0 1
     1563 SETTABLEKS                       R7 R5 K452 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1565 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1567 LOADK                            R8 K453 ["MCPAssistantPrimitiveGenServerURL"]
     1568 LOADK                            R9 K391 [""]
     1569 CALL                             R7 2 1
     1570 CALL                             R7 0 1
     1571 SETTABLEKS                       R7 R5 K454 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1573 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1575 LOADK                            R8 K455 ["MCPAssistantTestLLMAPIKey"]
     1576 LOADK                            R9 K391 [""]
     1577 CALL                             R7 2 1
     1578 CALL                             R7 0 1
     1579 SETTABLEKS                       R7 R5 K456 ["FStringMCPAssistantTestLLMAPIKey"]
     1581 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1583 LOADK                            R8 K457 ["MCPAssistantURLOverride"]
     1584 LOADK                            R9 K391 [""]
     1585 CALL                             R7 2 1
     1586 CALL                             R7 0 1
     1587 SETTABLEKS                       R7 R5 K458 ["FStringMCPAssistantURLOverride"]
     1589 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1591 LOADK                            R8 K459 ["MCPDocsUrl"]
     1592 LOADK                            R9 K460 ["https://create.roblox.com/docs/studio/mcp/"]
     1593 CALL                             R7 2 1
     1594 CALL                             R7 0 1
     1595 SETTABLEKS                       R7 R5 K461 ["FStringMCPDocsUrl"]
     1597 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1599 LOADK                            R8 K462 ["PlaytestConversationURL"]
     1600 LOADK                            R9 K463 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1601 CALL                             R7 2 1
     1602 CALL                             R7 0 1
     1603 SETTABLEKS                       R7 R5 K464 ["FStringPlaytestConversationURL"]
     1605 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1607 LOADK                            R8 K465 ["PlaytestModelName"]
     1608 LOADK                            R9 K466 ["Qwen/Qwen35-35B-A3B"]
     1609 CALL                             R7 2 1
     1610 CALL                             R7 0 1
     1611 SETTABLEKS                       R7 R5 K467 ["FStringPlaytestModelName"]
     1613 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1615 LOADK                            R8 K468 ["PrimGenImageGenPromptTemplate"]
     1616 LOADK                            R9 K391 [""]
     1617 CALL                             R7 2 1
     1618 CALL                             R7 0 1
     1619 SETTABLEKS                       R7 R5 K469 ["FStringPrimGenImageGenPromptTemplate"]
     1621 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1623 LOADK                            R8 K470 ["ProceduralScriptCapabilities"]
     1624 LOADK                            R9 K471 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1625 CALL                             R7 2 1
     1626 CALL                             R7 0 1
     1627 SETTABLEKS                       R7 R5 K472 ["FStringProceduralScriptCapabilities"]
     1629 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1631 LOADK                            R8 K473 ["ScreenCaptureFormat"]
     1632 LOADK                            R9 K391 [""]
     1633 CALL                             R7 2 1
     1634 CALL                             R7 0 1
     1635 SETTABLEKS                       R7 R5 K474 ["FStringScreenCaptureFormat"]
     1637 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1639 LOADK                            R8 K475 ["ScreenCaptureSize"]
     1640 LOADK                            R9 K391 [""]
     1641 CALL                             R7 2 1
     1642 CALL                             R7 0 1
     1643 SETTABLEKS                       R7 R5 K476 ["FStringScreenCaptureSize"]
     1645 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1647 LOADK                            R8 K477 ["ScreenCaptureSubagentModelName"]
     1648 LOADK                            R9 K391 [""]
     1649 CALL                             R7 2 1
     1650 CALL                             R7 0 1
     1651 SETTABLEKS                       R7 R5 K478 ["FStringScreenCaptureSubagentModelName"]
     1653 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1655 LOADK                            R8 K479 ["SegmentByPartsBetaFeatureUrl"]
     1656 LOADK                            R9 K391 [""]
     1657 CALL                             R7 2 1
     1658 CALL                             R7 0 1
     1659 SETTABLEKS                       R7 R5 K480 ["FStringSegmentByPartsBetaFeatureUrl"]
     1661 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1663 LOADK                            R8 K481 ["StudioScopeRiskLevelsDocsUrl"]
     1664 LOADK                            R9 K482 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1665 CALL                             R7 2 1
     1666 CALL                             R7 0 1
     1667 SETTABLEKS                       R7 R5 K483 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1669 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1671 LOADK                            R8 K484 ["SubagentExploreModelName"]
     1672 LOADK                            R9 K485 ["Assistant/glm5-b200-server-1"]
     1673 CALL                             R7 2 1
     1674 CALL                             R7 0 1
     1675 SETTABLEKS                       R7 R5 K486 ["FStringSubagentExploreModelName"]
     1677 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1679 LOADK                            R8 K487 ["SubagentURLOverride"]
     1680 LOADK                            R9 K391 [""]
     1681 CALL                             R7 2 1
     1682 CALL                             R7 0 1
     1683 SETTABLEKS                       R7 R5 K488 ["FStringSubagentURLOverride"]
     1685 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1687 LOADK                            R8 K489 ["TestLLMURLOverride"]
     1688 LOADK                            R9 K391 [""]
     1689 CALL                             R7 2 1
     1690 CALL                             R7 0 1
     1691 SETTABLEKS                       R7 R5 K490 ["FStringTestLLMURLOverride"]
     1693 GETTABLEKS                       R7 R4 K389 ["createGetFString"]
     1695 LOADK                            R8 K491 ["TestSubagentURLOverride"]
     1696 LOADK                            R9 K391 [""]
     1697 CALL                             R7 2 1
     1698 CALL                             R7 0 1
     1699 SETTABLEKS                       R7 R5 K492 ["FStringTestSubagentURLOverride"]
     1701 DUPTABLE                         R9 K494 [{"__index", "__newindex"}]
     1702 SETTABLEKS                       R3 R9 K493 ["__index"]
     1704 SETTABLEKS                       R3 R9 K12 ["__newindex"]
     1706 FASTCALL2                        SETMETATABLE R5 R9 ; [+4]
     1708 MOVE                             R8 R5
     1709 GETIMPORT                        R7 K16 [setmetatable]
     1711 CALL                             R7 2 1
     1712 RETURN                           R7 1
