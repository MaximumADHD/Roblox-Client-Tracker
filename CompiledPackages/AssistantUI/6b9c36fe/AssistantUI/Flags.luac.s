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
       14 GETTABLEKS                       R2 R1 K8 ["Engine"]
       16 GETTABLEKS                       R2 R2 K9 ["EngineFlags"]
       18 GETTABLEKS                       R3 R1 K10 ["TestableFlags"]
       20 NEWTABLE                         R5 256 0
       22 DUPTABLE                         R6 K12 [{"__newindex"}]
       23 DUPCLOSURE                       R7 K13 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R7 R6 K11 ["__newindex"]
       27 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       29 GETIMPORT                        R4 K15 [setmetatable]
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R3 K16 ["createGetFFlag"]
       34 LOADK                            R6 K17 ["AssistantAsyncSlashCommands"]
       35 CALL                             R5 1 1
       36 CALL                             R5 0 1
       37 SETTABLEKS                       R5 R4 K18 ["FFlagAssistantAsyncSlashCommands"]
       39 GETTABLEKS                       R6 R3 K16 ["createGetFFlag"]
       41 LOADK                            R7 K19 ["VirtualInputEnabled"]
       42 CALL                             R6 1 1
       43 CALL                             R6 0 1
       44 SETTABLEKS                       R6 R4 K20 ["FFlagVirtualInputEnabled"]
       46 GETTABLEKS                       R7 R3 K21 ["createGetDFString"]
       48 LOADK                            R8 K22 ["GenerationServiceSchemaDefinitionPartsKey"]
       49 LOADK                            R9 K23 ["Groups"]
       50 CALL                             R7 2 1
       51 CALL                             R7 0 1
       52 SETTABLEKS                       R7 R4 K24 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       54 GETTABLEKS                       R7 R3 K25 ["createGetEngineFeature"]
       56 LOADK                            R8 K26 ["AssistantGen3dImagePreview"]
       57 CALL                             R7 1 1
       58 CALL                             R7 0 1
       59 SETTABLEKS                       R7 R4 K27 ["EngineFeatureAssistantGen3dImagePreview"]
       61 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       63 LOADK                            R8 K28 ["AllowThreadSuspendOverride"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 SETTABLEKS                       R7 R4 K29 ["FFlagAllowThreadSuspendOverride"]
       68 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       70 LOADK                            R8 K30 ["AnimationGenOpenACE2"]
       71 CALL                             R7 1 1
       72 CALL                             R7 0 1
       73 SETTABLEKS                       R7 R4 K31 ["FFlagAnimationGenOpenACE"]
       75 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       77 LOADK                            R8 K32 ["AssistantACPFixPendingToolCall2"]
       78 CALL                             R7 1 1
       79 CALL                             R7 0 1
       80 SETTABLEKS                       R7 R4 K33 ["FFlagAssistantACPFixPendingToolCall"]
       82 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       84 LOADK                            R8 K34 ["AssistantAddPlaceholderProp"]
       85 CALL                             R7 1 1
       86 CALL                             R7 0 1
       87 SETTABLEKS                       R7 R4 K35 ["FFlagAssistantAddPlaceholderProp"]
       89 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       91 LOADK                            R8 K36 ["AssistantAnimationGenTool"]
       92 CALL                             R7 1 1
       93 CALL                             R7 0 1
       94 SETTABLEKS                       R7 R4 K37 ["FFlagAssistantAnimationGenTool"]
       96 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       98 LOADK                            R8 K38 ["AssistantAskInputTool2"]
       99 CALL                             R7 1 1
      100 CALL                             R7 0 1
      101 SETTABLEKS                       R7 R4 K39 ["FFlagAssistantAskInputTool"]
      103 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      105 LOADK                            R8 K40 ["AssistantAskInputToolLLM2"]
      106 CALL                             R7 1 1
      107 CALL                             R7 0 1
      108 SETTABLEKS                       R7 R4 K41 ["FFlagAssistantAskInputToolLLM"]
      110 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      112 LOADK                            R8 K42 ["AssistantAssetSearchCreatorStoreUtm"]
      113 CALL                             R7 1 1
      114 CALL                             R7 0 1
      115 SETTABLEKS                       R7 R4 K43 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      117 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      119 LOADK                            R8 K44 ["AssistantAssetSearchDirectInsert"]
      120 CALL                             R7 1 1
      121 CALL                             R7 0 1
      122 SETTABLEKS                       R7 R4 K45 ["FFlagAssistantAssetSearchDirectInsert"]
      124 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      126 LOADK                            R8 K46 ["AssistantAssetSearchInsertTool2"]
      127 CALL                             R7 1 1
      128 CALL                             R7 0 1
      129 SETTABLEKS                       R7 R4 K47 ["FFlagAssistantAssetSearchInsertTool"]
      131 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      133 LOADK                            R8 K48 ["AssistantAssetSearchInsertToolABTest"]
      134 CALL                             R7 1 1
      135 CALL                             R7 0 1
      136 SETTABLEKS                       R7 R4 K49 ["FFlagAssistantAssetSearchInsertToolABTest"]
      138 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      140 LOADK                            R8 K50 ["AssistantAssetTileNamePreview"]
      141 CALL                             R7 1 1
      142 CALL                             R7 0 1
      143 SETTABLEKS                       R7 R4 K51 ["FFlagAssistantAssetTileNamePreview"]
      145 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      147 LOADK                            R8 K52 ["AssistantAvatarAutoSetupTool3"]
      148 CALL                             R7 1 1
      149 CALL                             R7 0 1
      150 SETTABLEKS                       R7 R4 K53 ["FFlagAssistantAvatarAutoSetupTool"]
      152 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      154 LOADK                            R8 K54 ["AssistantBetaFeatureSkills"]
      155 CALL                             R7 1 1
      156 CALL                             R7 0 1
      157 SETTABLEKS                       R7 R4 K55 ["FFlagAssistantBetaFeatureSkills"]
      159 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      161 LOADK                            R8 K56 ["AssistantChatFollowBottomThreshold"]
      162 CALL                             R7 1 1
      163 CALL                             R7 0 1
      164 SETTABLEKS                       R7 R4 K57 ["FFlagAssistantChatFollowBottomThreshold"]
      166 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      168 LOADK                            R8 K58 ["AssistantCloseDropdownsOnWidgetHidden"]
      169 CALL                             R7 1 1
      170 CALL                             R7 0 1
      171 SETTABLEKS                       R7 R4 K59 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      173 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      175 LOADK                            R8 K60 ["AssistantConfirmButtonUpdate"]
      176 CALL                             R7 1 1
      177 CALL                             R7 0 1
      178 SETTABLEKS                       R7 R4 K61 ["FFlagAssistantConfirmButtonUpdate"]
      180 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      182 LOADK                            R8 K62 ["AssistantConsoleOutputTailFromEnd2"]
      183 CALL                             R7 1 1
      184 CALL                             R7 0 1
      185 SETTABLEKS                       R7 R4 K63 ["FFlagAssistantConsoleOutputTailFromEnd"]
      187 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      189 LOADK                            R8 K64 ["AssistantCopyButton"]
      190 CALL                             R7 1 1
      191 CALL                             R7 0 1
      192 SETTABLEKS                       R7 R4 K65 ["FFlagAssistantCopyButton"]
      194 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      196 LOADK                            R8 K66 ["AssistantCreditMetering3"]
      197 CALL                             R7 1 1
      198 CALL                             R7 0 1
      199 SETTABLEKS                       R7 R4 K67 ["FFlagAssistantCreditMetering"]
      201 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      203 LOADK                            R8 K68 ["AssistantCreditMeteringAdditionalUsage"]
      204 LOADB                            R9 1
      205 CALL                             R7 2 1
      206 CALL                             R7 0 1
      207 SETTABLEKS                       R7 R4 K69 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      209 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      211 LOADK                            R8 K70 ["AssistantCreditMeteringInferBlockReason"]
      212 CALL                             R7 1 1
      213 CALL                             R7 0 1
      214 SETTABLEKS                       R7 R4 K71 ["FFlagAssistantCreditMeteringInferBlockReason"]
      216 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      218 LOADK                            R8 K72 ["AssistantCreditMeteringTelemetry"]
      219 CALL                             R7 1 1
      220 CALL                             R7 0 1
      221 SETTABLEKS                       R7 R4 K73 ["FFlagAssistantCreditMeteringTelemetry"]
      223 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      225 LOADK                            R8 K74 ["AssistantDestroySessionMonitorsOnClose"]
      226 CALL                             R7 1 1
      227 CALL                             R7 0 1
      228 SETTABLEKS                       R7 R4 K75 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      230 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      232 LOADK                            R8 K76 ["AssistantDisableApplyEditDataModelAvailability"]
      233 CALL                             R7 1 1
      234 CALL                             R7 0 1
      235 SETTABLEKS                       R7 R4 K77 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      237 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      239 LOADK                            R8 K78 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      240 CALL                             R7 1 1
      241 CALL                             R7 0 1
      242 SETTABLEKS                       R7 R4 K79 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      244 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      246 LOADK                            R8 K80 ["AssistantDisableBranching"]
      247 CALL                             R7 1 1
      248 CALL                             R7 0 1
      249 SETTABLEKS                       R7 R4 K81 ["FFlagAssistantDisableBranching"]
      251 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      253 LOADK                            R8 K82 ["AssistantDisableForceSyncJobRun"]
      254 CALL                             R7 1 1
      255 CALL                             R7 0 1
      256 SETTABLEKS                       R7 R4 K83 ["FFlagAssistantDisableForceSyncJobRun"]
      258 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      260 LOADK                            R8 K84 ["AssistantDisableSessionFilter"]
      261 CALL                             R7 1 1
      262 CALL                             R7 0 1
      263 SETTABLEKS                       R7 R4 K85 ["FFlagAssistantDisableSessionFilter"]
      265 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      267 LOADK                            R8 K86 ["AssistantEval"]
      268 CALL                             R7 1 1
      269 CALL                             R7 0 1
      270 SETTABLEKS                       R7 R4 K87 ["FFlagAssistantEval"]
      272 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      274 LOADK                            R8 K88 ["AssistantExternalInterface"]
      275 CALL                             R7 1 1
      276 CALL                             R7 0 1
      277 SETTABLEKS                       R7 R4 K89 ["FFlagAssistantExternalInterface"]
      279 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      281 LOADK                            R8 K90 ["AssistantExternalMCPPluginSettingRedundancy"]
      282 CALL                             R7 1 1
      283 CALL                             R7 0 1
      284 SETTABLEKS                       R7 R4 K91 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      286 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      288 LOADK                            R8 K92 ["AssistantFeedbackView"]
      289 CALL                             R7 1 1
      290 CALL                             R7 0 1
      291 SETTABLEKS                       R7 R4 K93 ["FFlagAssistantFeedbackView"]
      293 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      295 LOADK                            R8 K94 ["AssistantFixStartPlayHang"]
      296 CALL                             R7 1 1
      297 CALL                             R7 0 1
      298 SETTABLEKS                       R7 R4 K95 ["FFlagAssistantFixStartPlayHang"]
      300 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      302 LOADK                            R8 K96 ["AssistantForceRemoteServiceForInternal"]
      303 CALL                             R7 1 1
      304 CALL                             R7 0 1
      305 SETTABLEKS                       R7 R4 K97 ["FFlagAssistantForceRemoteServiceForInternal"]
      307 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      309 LOADK                            R8 K98 ["AssistantGen3DAssetPublishTracking"]
      310 CALL                             R7 1 1
      311 CALL                             R7 0 1
      312 SETTABLEKS                       R7 R4 K99 ["FFlagAssistantGen3DAssetPublishTracking"]
      314 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      316 LOADK                            R8 K100 ["AssistantGen3dAutoSegmentation"]
      317 CALL                             R7 1 1
      318 CALL                             R7 0 1
      319 SETTABLEKS                       R7 R4 K101 ["FFlagAssistantGen3dAutoSegmentation"]
      321 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      323 LOADK                            R8 K102 ["AssistantGen3DImagePreviewTelemetry"]
      324 CALL                             R7 1 1
      325 CALL                             R7 0 1
      326 SETTABLEKS                       R7 R4 K103 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      328 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      330 LOADK                            R8 K104 ["AssistantGen3dInputRequestedOverride"]
      331 CALL                             R7 1 1
      332 CALL                             R7 0 1
      333 SETTABLEKS                       R7 R4 K105 ["FFlagAssistantGen3dInputRequestedOverride"]
      335 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      337 LOADK                            R8 K106 ["AssistantGen3dRequirePromptToGenerate"]
      338 CALL                             R7 1 1
      339 CALL                             R7 0 1
      340 SETTABLEKS                       R7 R4 K107 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      342 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      344 LOADK                            R8 K108 ["AssistantGen3DTelemetryV2"]
      345 CALL                             R7 1 1
      346 CALL                             R7 0 1
      347 SETTABLEKS                       R7 R4 K109 ["FFlagAssistantGen3DTelemetryV2"]
      349 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      351 LOADK                            R8 K110 ["AssistantGenerateLayoutTool"]
      352 CALL                             R7 1 1
      353 CALL                             R7 0 1
      354 SETTABLEKS                       R7 R4 K111 ["FFlagAssistantGenerateLayoutTool"]
      356 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      358 LOADK                            R8 K112 ["AssistantGenerateLayoutTopDownHint"]
      359 CALL                             R7 1 1
      360 CALL                             R7 0 1
      361 SETTABLEKS                       R7 R4 K113 ["FFlagAssistantGenerateLayoutTopDownHint"]
      363 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      365 LOADK                            R8 K114 ["AssistantHidePinForBuild"]
      366 CALL                             R7 1 1
      367 CALL                             R7 0 1
      368 SETTABLEKS                       R7 R4 K115 ["FFlagAssistantHidePinForBuild"]
      370 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      372 LOADK                            R8 K116 ["AssistantHintImageAsUri2"]
      373 CALL                             R7 1 1
      374 CALL                             R7 0 1
      375 SETTABLEKS                       R7 R4 K117 ["FFlagAssistantHintImageAsUri"]
      377 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      379 LOADK                            R8 K118 ["AssistantHintMultiEditOverExecLuau"]
      380 CALL                             R7 1 1
      381 CALL                             R7 0 1
      382 SETTABLEKS                       R7 R4 K119 ["FFlagAssistantHintMultiEditOverExecLuau"]
      384 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      386 LOADK                            R8 K120 ["AssistantImageGenAbortPollOn4xx"]
      387 CALL                             R7 1 1
      388 CALL                             R7 0 1
      389 SETTABLEKS                       R7 R4 K121 ["FFlagAssistantImageGenAbortPollOn4xx"]
      391 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      393 LOADK                            R8 K122 ["AssistantImageGenImprovements"]
      394 CALL                             R7 1 1
      395 CALL                             R7 0 1
      396 SETTABLEKS                       R7 R4 K123 ["FFlagAssistantImageGenImprovements"]
      398 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      400 LOADK                            R8 K124 ["AssistantImageGenSeed"]
      401 CALL                             R7 1 1
      402 CALL                             R7 0 1
      403 SETTABLEKS                       R7 R4 K125 ["FFlagAssistantImageGenSeed"]
      405 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      407 LOADK                            R8 K126 ["AssistantImageGenUseOpenApiClient"]
      408 CALL                             R7 1 1
      409 CALL                             R7 0 1
      410 SETTABLEKS                       R7 R4 K127 ["FFlagAssistantImageGenUseOpenApiClient"]
      412 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      414 LOADK                            R8 K128 ["AssistantImageSelectionForGen3D"]
      415 CALL                             R7 1 1
      416 CALL                             R7 0 1
      417 SETTABLEKS                       R7 R4 K129 ["FFlagAssistantImageSelectionForGen3D"]
      419 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      421 LOADK                            R8 K130 ["AssistantImageSelectionWizardModeMeshGen"]
      422 CALL                             R7 1 1
      423 CALL                             R7 0 1
      424 SETTABLEKS                       R7 R4 K131 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      426 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      428 LOADK                            R8 K132 ["AssistantImageSelectionWizardModePrimitiveGen"]
      429 CALL                             R7 1 1
      430 CALL                             R7 0 1
      431 SETTABLEKS                       R7 R4 K133 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      433 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      435 LOADK                            R8 K134 ["AssistantImageSelectionWizardModeTextureGen"]
      436 CALL                             R7 1 1
      437 CALL                             R7 0 1
      438 SETTABLEKS                       R7 R4 K135 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      440 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      442 LOADK                            R8 K136 ["AssistantInputRequestedFixedFooter"]
      443 CALL                             R7 1 1
      444 CALL                             R7 0 1
      445 SETTABLEKS                       R7 R4 K137 ["FFlagAssistantInputRequestedFixedFooter"]
      447 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      449 LOADK                            R8 K138 ["AssistantInsertAssetSandboxProceduralModels"]
      450 CALL                             R7 1 1
      451 CALL                             R7 0 1
      452 SETTABLEKS                       R7 R4 K139 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      454 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      456 LOADK                            R8 K140 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      457 CALL                             R7 1 1
      458 CALL                             R7 0 1
      459 SETTABLEKS                       R7 R4 K141 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      461 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      463 LOADK                            R8 K142 ["AssistantInsertAssetSandboxScripts"]
      464 CALL                             R7 1 1
      465 CALL                             R7 0 1
      466 SETTABLEKS                       R7 R4 K143 ["FFlagAssistantInsertAssetSandboxScripts"]
      468 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      470 LOADK                            R8 K144 ["AssistantMcpImageGenShortcut"]
      471 CALL                             R7 1 1
      472 CALL                             R7 0 1
      473 SETTABLEKS                       R7 R4 K145 ["FFlagAssistantMcpImageGenShortcut"]
      475 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      477 LOADK                            R8 K146 ["AssistantMeshGenAutoExpandCollapse"]
      478 CALL                             R7 1 1
      479 CALL                             R7 0 1
      480 SETTABLEKS                       R7 R4 K147 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      482 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      484 LOADK                            R8 K148 ["AssistantMeshGenCarouselPreview"]
      485 CALL                             R7 1 1
      486 CALL                             R7 0 1
      487 SETTABLEKS                       R7 R4 K149 ["FFlagAssistantMeshGenCarouselPreview"]
      489 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      491 LOADK                            R8 K150 ["AssistantMeshGenCombinedAddToPlace"]
      492 CALL                             R7 1 1
      493 CALL                             R7 0 1
      494 SETTABLEKS                       R7 R4 K151 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      496 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      498 LOADK                            R8 K152 ["AssistantMeshGenHintImage"]
      499 CALL                             R7 1 1
      500 CALL                             R7 0 1
      501 SETTABLEKS                       R7 R4 K153 ["FFlagAssistantMeshGenHintImage"]
      503 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      505 LOADK                            R8 K154 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      506 CALL                             R7 1 1
      507 CALL                             R7 0 1
      508 SETTABLEKS                       R7 R4 K155 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      510 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      512 LOADK                            R8 K156 ["AssistantMeshGenRemoveAdminOptions"]
      513 CALL                             R7 1 1
      514 CALL                             R7 0 1
      515 SETTABLEKS                       R7 R4 K157 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      517 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      519 LOADK                            R8 K158 ["AssistantMoveToolButtonsToTheRight"]
      520 CALL                             R7 1 1
      521 CALL                             R7 0 1
      522 SETTABLEKS                       R7 R4 K159 ["FFlagAssistantMoveToolButtonsToTheRight"]
      524 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      526 LOADK                            R8 K160 ["AssistantMultiEditExternalClient"]
      527 CALL                             R7 1 1
      528 CALL                             R7 0 1
      529 SETTABLEKS                       R7 R4 K161 ["FFlagAssistantMultiEditExternalClient"]
      531 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      533 LOADK                            R8 K162 ["AssistantOmitSlashToolCallDroppedFields"]
      534 CALL                             R7 1 1
      535 CALL                             R7 0 1
      536 SETTABLEKS                       R7 R4 K163 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      538 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      540 LOADK                            R8 K164 ["AssistantPinForBuildUI"]
      541 CALL                             R7 1 1
      542 CALL                             R7 0 1
      543 SETTABLEKS                       R7 R4 K165 ["FFlagAssistantPinForBuildUI"]
      545 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      547 LOADK                            R8 K166 ["AssistantPlanRevisionList"]
      548 CALL                             R7 1 1
      549 CALL                             R7 0 1
      550 SETTABLEKS                       R7 R4 K167 ["FFlagAssistantPlanRevisionList"]
      552 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      554 LOADK                            R8 K168 ["AssistantPlaytestContext"]
      555 CALL                             R7 1 1
      556 CALL                             R7 0 1
      557 SETTABLEKS                       R7 R4 K169 ["FFlagAssistantPlaytestContext"]
      559 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      561 LOADK                            R8 K170 ["AssistantPlaytestToolFix"]
      562 CALL                             R7 1 1
      563 CALL                             R7 0 1
      564 SETTABLEKS                       R7 R4 K171 ["FFlagAssistantPlaytestToolFix"]
      566 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      568 LOADK                            R8 K172 ["AssistantQuestionAnswerSkipReview"]
      569 CALL                             R7 1 1
      570 CALL                             R7 0 1
      571 SETTABLEKS                       R7 R4 K173 ["FFlagAssistantQuestionAnswerSkipReview"]
      573 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      575 LOADK                            R8 K174 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      576 CALL                             R7 1 1
      577 CALL                             R7 0 1
      578 SETTABLEKS                       R7 R4 K175 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      580 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      582 LOADK                            R9 K176 ["AssistantReplaceJobRunWithAsyncArg"]
      583 CALL                             R8 1 1
      584 CALL                             R8 0 1
      585 AND                              R7 R8 R5
      586 SETTABLEKS                       R7 R4 K177 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      588 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      590 LOADK                            R8 K178 ["AssistantRestoreMostRecentThread"]
      591 CALL                             R7 1 1
      592 CALL                             R7 0 1
      593 SETTABLEKS                       R7 R4 K179 ["FFlagAssistantRestoreMostRecentThread"]
      595 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      597 LOADK                            R8 K180 ["AssistantSegmentationBridge"]
      598 CALL                             R7 1 1
      599 CALL                             R7 0 1
      600 SETTABLEKS                       R7 R4 K181 ["FFlagAssistantSegmentationBridge"]
      602 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      604 LOADK                            R8 K182 ["AssistantSegmentationPanelScroll"]
      605 CALL                             R7 1 1
      606 CALL                             R7 0 1
      607 SETTABLEKS                       R7 R4 K183 ["FFlagAssistantSegmentationPanelScroll"]
      609 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      611 LOADK                            R8 K184 ["AssistantSegmentationPromptModeSelector"]
      612 CALL                             R7 1 1
      613 CALL                             R7 0 1
      614 SETTABLEKS                       R7 R4 K185 ["FFlagAssistantSegmentationPromptModeSelector"]
      616 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      618 LOADK                            R8 K186 ["AssistantSegmentationUIFixes"]
      619 CALL                             R7 1 1
      620 CALL                             R7 0 1
      621 SETTABLEKS                       R7 R4 K187 ["FFlagAssistantSegmentationUIFixes"]
      623 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      625 LOADK                            R8 K188 ["AssistantSegmentMeshCleanupWorldWrapper"]
      626 CALL                             R7 1 1
      627 CALL                             R7 0 1
      628 SETTABLEKS                       R7 R4 K189 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      630 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      632 LOADK                            R8 K190 ["AssistantSegmentMeshTool"]
      633 CALL                             R7 1 1
      634 CALL                             R7 0 1
      635 SETTABLEKS                       R7 R4 K191 ["FFlagAssistantSegmentMeshTool"]
      637 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      639 LOADK                            R8 K192 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      640 CALL                             R7 1 1
      641 CALL                             R7 0 1
      642 SETTABLEKS                       R7 R4 K193 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      644 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      646 LOADK                            R8 K194 ["AssistantSkillToolNameReplace"]
      647 CALL                             R7 1 1
      648 CALL                             R7 0 1
      649 SETTABLEKS                       R7 R4 K195 ["FFlagAssistantSkillToolNameReplace"]
      651 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      653 LOADK                            R8 K196 ["AssistantSlashCommandStepBackNavigation"]
      654 CALL                             R7 1 1
      655 CALL                             R7 0 1
      656 SETTABLEKS                       R7 R4 K197 ["FFlagAssistantSlashCommandStepBackNavigation"]
      658 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      660 LOADK                            R8 K198 ["AssistantSlashToolNameAndError"]
      661 CALL                             R7 1 1
      662 CALL                             R7 0 1
      663 SETTABLEKS                       R7 R4 K199 ["FFlagAssistantSlashToolNameAndError"]
      665 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      667 LOADK                            R8 K200 ["AssistantStandaloneDataModel"]
      668 CALL                             R7 1 1
      669 CALL                             R7 0 1
      670 SETTABLEKS                       R7 R4 K201 ["FFlagAssistantStandaloneDataModel"]
      672 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      674 LOADK                            R8 K202 ["AssistantStartStopPlayBusyCheck"]
      675 CALL                             R7 1 1
      676 CALL                             R7 0 1
      677 SETTABLEKS                       R7 R4 K203 ["FFlagAssistantStartStopPlayBusyCheck"]
      679 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      681 LOADK                            R8 K204 ["AssistantSystemSkillsStateReminder"]
      682 CALL                             R7 1 1
      683 CALL                             R7 0 1
      684 SETTABLEKS                       R7 R4 K205 ["FFlagAssistantSystemSkillsStateReminder"]
      686 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      688 LOADK                            R8 K206 ["AssistantTestLLMPreserveThinking"]
      689 LOADB                            R9 1
      690 CALL                             R7 2 1
      691 CALL                             R7 0 1
      692 SETTABLEKS                       R7 R4 K207 ["FFlagAssistantTestLLMPreserveThinking"]
      694 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      696 LOADK                            R8 K208 ["AssistantTestLLMThinkingEnabled"]
      697 LOADB                            R9 1
      698 CALL                             R7 2 1
      699 CALL                             R7 0 1
      700 SETTABLEKS                       R7 R4 K209 ["FFlagAssistantTestLLMThinkingEnabled"]
      702 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      704 LOADK                            R8 K210 ["AssistantTextureGenConfirmBeforeInsert"]
      705 CALL                             R7 1 1
      706 CALL                             R7 0 1
      707 SETTABLEKS                       R7 R4 K211 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      709 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      711 LOADK                            R8 K212 ["AssistantTextureGenModelSelection"]
      712 CALL                             R7 1 1
      713 CALL                             R7 0 1
      714 SETTABLEKS                       R7 R4 K213 ["FFlagAssistantTextureGenModelSelection"]
      716 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      718 LOADK                            R8 K214 ["AssistantTextureGenTool"]
      719 CALL                             R7 1 1
      720 CALL                             R7 0 1
      721 SETTABLEKS                       R7 R4 K215 ["FFlagAssistantTextureGenTool"]
      723 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      725 LOADK                            R8 K216 ["AssistantTextureGenUseSourceMeshCFrame"]
      726 CALL                             R7 1 1
      727 CALL                             R7 0 1
      728 SETTABLEKS                       R7 R4 K217 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      730 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      732 LOADK                            R8 K218 ["AssistantUntitledChatPlaceholder"]
      733 CALL                             R7 1 1
      734 CALL                             R7 0 1
      735 SETTABLEKS                       R7 R4 K219 ["FFlagAssistantUntitledChatPlaceholder"]
      737 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      739 LOADK                            R8 K220 ["AssistantUseBuilderIcons"]
      740 CALL                             R7 1 1
      741 CALL                             R7 0 1
      742 SETTABLEKS                       R7 R4 K221 ["FFlagAssistantUseBuilderIcons"]
      744 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      746 LOADK                            R8 K222 ["AssistantUseMarkdownPackage"]
      747 CALL                             R7 1 1
      748 CALL                             R7 0 1
      749 SETTABLEKS                       R7 R4 K223 ["FFlagAssistantUseMarkdownPackage"]
      751 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      753 LOADK                            R8 K224 ["AssistantUseNewTags"]
      754 CALL                             R7 1 1
      755 CALL                             R7 0 1
      756 SETTABLEKS                       R7 R4 K225 ["FFlagAssistantUseNewTags"]
      758 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      760 LOADK                            R8 K226 ["AssistantUseRemoteService2"]
      761 CALL                             R7 1 1
      762 CALL                             R7 0 1
      763 SETTABLEKS                       R7 R4 K227 ["FFlagAssistantUseRemoteService"]
      765 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      767 LOADK                            R8 K228 ["AssistantUseRemoteServiceExp"]
      768 CALL                             R7 1 1
      769 CALL                             R7 0 1
      770 SETTABLEKS                       R7 R4 K229 ["FFlagAssistantUseRemoteServiceExp"]
      772 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      774 LOADK                            R8 K230 ["AssistantUseVariantHttpTransport"]
      775 CALL                             R7 1 1
      776 CALL                             R7 0 1
      777 SETTABLEKS                       R7 R4 K231 ["FFlagAssistantUseVariantHttpTransport"]
      779 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      781 LOADK                            R8 K232 ["AssistantVersionMismatchWarning"]
      782 CALL                             R7 1 1
      783 CALL                             R7 0 1
      784 SETTABLEKS                       R7 R4 K233 ["FFlagAssistantVersionMismatchWarning"]
      786 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      788 LOADK                            R8 K234 ["AssistantVideoCaptureTool"]
      789 CALL                             R7 1 1
      790 CALL                             R7 0 1
      791 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantVideoCaptureTool"]
      793 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      795 LOADK                            R9 K236 ["AssistantVirtualInputEnabled"]
      796 CALL                             R8 1 1
      797 CALL                             R8 0 1
      798 AND                              R7 R8 R6
      799 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantVirtualInputEnabled"]
      801 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      803 LOADK                            R8 K238 ["AsssistantFixMarkdownRendererErrorForBracket"]
      804 CALL                             R7 1 1
      805 CALL                             R7 0 1
      806 SETTABLEKS                       R7 R4 K239 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      808 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      810 LOADK                            R8 K240 ["DebugAssistantMultiPlayerAgentsLog"]
      811 CALL                             R7 1 1
      812 CALL                             R7 0 1
      813 SETTABLEKS                       R7 R4 K241 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      815 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      817 LOADK                            R8 K242 ["DebugEnableTestLLMAdapter"]
      818 CALL                             R7 1 1
      819 CALL                             R7 0 1
      820 SETTABLEKS                       R7 R4 K243 ["FFlagDebugEnableTestLLMAdapter"]
      822 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      824 LOADK                            R8 K244 ["DebugMockPrimitiveGenBackend"]
      825 CALL                             R7 1 1
      826 CALL                             R7 0 1
      827 SETTABLEKS                       R7 R4 K245 ["FFlagDebugMockPrimitiveGenBackend"]
      829 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      831 LOADK                            R8 K246 ["DebugPrimGenDMNoReachable"]
      832 CALL                             R7 1 1
      833 CALL                             R7 0 1
      834 SETTABLEKS                       R7 R4 K247 ["FFlagDebugPrimGenDMNoReachable"]
      836 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      838 LOADK                            R8 K248 ["DisableMCPConnectionIndicator"]
      839 CALL                             R7 1 1
      840 CALL                             R7 0 1
      841 SETTABLEKS                       R7 R4 K249 ["FFlagDisableMCPConnectionIndicator"]
      843 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      845 LOADK                            R8 K250 ["FFlagDisableNavigationConfirmation"]
      846 CALL                             R7 1 1
      847 CALL                             R7 0 1
      848 SETTABLEKS                       R7 R4 K250 ["FFlagDisableNavigationConfirmation"]
      850 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      852 LOADK                            R8 K251 ["DisableNewSmartSize"]
      853 CALL                             R7 1 1
      854 CALL                             R7 0 1
      855 SETTABLEKS                       R7 R4 K252 ["FFlagDisableNewSmartSize"]
      857 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      859 LOADK                            R8 K253 ["DisableOldSmartSize"]
      860 CALL                             R7 1 1
      861 CALL                             R7 0 1
      862 SETTABLEKS                       R7 R4 K254 ["FFlagDisableOldSmartSize"]
      864 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      866 LOADK                            R8 K255 ["FFlagDisableStartStopPlayConfirmation"]
      867 CALL                             R7 1 1
      868 CALL                             R7 0 1
      869 SETTABLEKS                       R7 R4 K255 ["FFlagDisableStartStopPlayConfirmation"]
      871 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      873 LOADK                            R8 K256 ["FFlagDisableUserInputConfirmation"]
      874 CALL                             R7 1 1
      875 CALL                             R7 0 1
      876 SETTABLEKS                       R7 R4 K256 ["FFlagDisableUserInputConfirmation"]
      878 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      880 LOADK                            R8 K257 ["EnableAssistantImageUpload"]
      881 CALL                             R7 1 1
      882 CALL                             R7 0 1
      883 SETTABLEKS                       R7 R4 K258 ["FFlagEnableAssistantImageUpload"]
      885 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      887 LOADK                            R8 K259 ["EnablePlaytestSubagent"]
      888 CALL                             R7 1 1
      889 CALL                             R7 0 1
      890 SETTABLEKS                       R7 R4 K260 ["FFlagEnablePlaytestSubagent"]
      892 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      894 LOADK                            R8 K261 ["Gen3dSegmentationSelector"]
      895 CALL                             R7 1 1
      896 CALL                             R7 0 1
      897 SETTABLEKS                       R7 R4 K262 ["FFlagGen3dSegmentationSelector"]
      899 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      901 LOADK                            R8 K263 ["MCPAssistantAzureOpenAI"]
      902 CALL                             R7 1 1
      903 CALL                             R7 0 1
      904 SETTABLEKS                       R7 R4 K264 ["FFlagMCPAssistantAzureOpenAI"]
      906 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      908 LOADK                            R8 K265 ["MCPAssistantManagementMenu5"]
      909 CALL                             R7 1 1
      910 CALL                             R7 0 1
      911 SETTABLEKS                       R7 R4 K266 ["FFlagMCPAssistantManagementMenu"]
      913 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      915 LOADK                            R8 K267 ["MCPAssistantOpenAIPreserveThinking"]
      916 CALL                             R7 1 1
      917 CALL                             R7 0 1
      918 SETTABLEKS                       R7 R4 K268 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      920 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      922 LOADK                            R8 K269 ["MCPAssistantOpenAIThinkingEnabled"]
      923 CALL                             R7 1 1
      924 CALL                             R7 0 1
      925 SETTABLEKS                       R7 R4 K270 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      927 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      929 LOADK                            R8 K271 ["MCPConnectionIndicatorTooltip"]
      930 CALL                             R7 1 1
      931 CALL                             R7 0 1
      932 SETTABLEKS                       R7 R4 K272 ["FFlagMCPConnectionIndicatorTooltip"]
      934 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      936 LOADK                            R8 K273 ["MCPContentNormalization"]
      937 CALL                             R7 1 1
      938 CALL                             R7 0 1
      939 SETTABLEKS                       R7 R4 K274 ["FFlagMCPContentNormalization"]
      941 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      943 LOADK                            R8 K275 ["MCPEnableToolDisabling"]
      944 CALL                             R7 1 1
      945 CALL                             R7 0 1
      946 SETTABLEKS                       R7 R4 K276 ["FFlagMCPEnableToolDisabling"]
      948 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      950 LOADK                            R8 K277 ["PlaytestVision"]
      951 CALL                             R7 1 1
      952 CALL                             R7 0 1
      953 SETTABLEKS                       R7 R4 K278 ["FFlagPlaytestVision"]
      955 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      957 LOADK                            R8 K279 ["PrimGenAllowReInsert"]
      958 CALL                             R7 1 1
      959 CALL                             R7 0 1
      960 SETTABLEKS                       R7 R4 K280 ["FFlagPrimGenAllowReInsert"]
      962 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      964 LOADK                            R8 K281 ["PrimGenBetterErrorType"]
      965 CALL                             R7 1 1
      966 CALL                             R7 0 1
      967 SETTABLEKS                       R7 R4 K282 ["FFlagPrimGenBetterErrorType"]
      969 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      971 LOADK                            R8 K283 ["PrimGenCarouselPreview"]
      972 CALL                             R7 1 1
      973 CALL                             R7 0 1
      974 SETTABLEKS                       R7 R4 K284 ["FFlagPrimGenCarouselPreview"]
      976 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      978 LOADK                            R8 K285 ["PrimGenDetectMineTypeFromContent"]
      979 CALL                             R7 1 1
      980 CALL                             R7 0 1
      981 SETTABLEKS                       R7 R4 K286 ["FFlagPrimGenDetectMineTypeFromContent"]
      983 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      985 LOADK                            R8 K287 ["PrimGenImageGenPromptTemplateEnabled"]
      986 CALL                             R7 1 1
      987 CALL                             R7 0 1
      988 SETTABLEKS                       R7 R4 K288 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      990 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      992 LOADK                            R8 K289 ["PrimGenSchemaSelector"]
      993 CALL                             R7 1 1
      994 CALL                             R7 0 1
      995 SETTABLEKS                       R7 R4 K290 ["FFlagPrimGenSchemaSelector"]
      997 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      999 LOADK                            R8 K291 ["PrimGenVerboseDmIsUnReachableMsg"]
     1000 CALL                             R7 1 1
     1001 CALL                             R7 0 1
     1002 SETTABLEKS                       R7 R4 K292 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1004 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1006 LOADK                            R8 K293 ["PrimGenVersionMismatchError"]
     1007 CALL                             R7 1 1
     1008 CALL                             R7 0 1
     1009 SETTABLEKS                       R7 R4 K294 ["FFlagPrimGenVersionMismatchError"]
     1011 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1013 LOADK                            R8 K295 ["PropertiesExposeContentView"]
     1014 CALL                             R7 1 1
     1015 CALL                             R7 0 1
     1016 SETTABLEKS                       R7 R4 K296 ["FFlagPropertiesExposeContentView"]
     1018 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1020 LOADK                            R8 K297 ["ScreenCaptureCamera"]
     1021 CALL                             R7 1 1
     1022 CALL                             R7 0 1
     1023 SETTABLEKS                       R7 R4 K298 ["FFlagScreenCaptureCamera"]
     1025 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1027 LOADK                            R8 K299 ["ScriptDebuggerServiceEnabled2"]
     1028 CALL                             R7 1 1
     1029 CALL                             R7 0 1
     1030 SETTABLEKS                       R7 R4 K300 ["FFlagScriptDebuggerServiceEnabled"]
     1032 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1034 LOADK                            R8 K301 ["SegmentationFastFollow"]
     1035 CALL                             R7 1 1
     1036 CALL                             R7 0 1
     1037 SETTABLEKS                       R7 R4 K302 ["FFlagSegmentationFastFollow"]
     1039 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1041 LOADK                            R8 K303 ["StudioOpenCloudMCP"]
     1042 CALL                             R7 1 1
     1043 CALL                             R7 0 1
     1044 SETTABLEKS                       R7 R4 K304 ["FFlagStudioOpenCloudMCP"]
     1046 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1048 LOADK                            R8 K305 ["SubagentScriptEditAutoConfirmation"]
     1049 CALL                             R7 1 1
     1050 CALL                             R7 0 1
     1051 SETTABLEKS                       R7 R4 K306 ["FFlagSubagentScriptEditAutoConfirmation"]
     1053 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1055 LOADK                            R8 K307 ["UseStudioSideListTool"]
     1056 CALL                             R7 1 1
     1057 CALL                             R7 0 1
     1058 SETTABLEKS                       R7 R4 K308 ["FFlagUseStudioSideListTool"]
     1060 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1062 LOADK                            R8 K310 ["AmrAssetDependencyGrantEventTimeout"]
     1063 LOADN                            R9 40
     1064 CALL                             R7 2 1
     1065 CALL                             R7 0 1
     1066 SETTABLEKS                       R7 R4 K311 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1068 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1070 LOADK                            R8 K312 ["AssistantAutoSaveInterval"]
     1071 LOADN                            R9 60
     1072 CALL                             R7 2 1
     1073 CALL                             R7 0 1
     1074 SETTABLEKS                       R7 R4 K313 ["FIntAssistantAutoSaveInterval"]
     1076 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1078 LOADK                            R8 K314 ["AssistantDebugToolMaxOutput"]
     1079 LOADN                            R9 20000
     1080 CALL                             R7 2 1
     1081 CALL                             R7 0 1
     1082 SETTABLEKS                       R7 R4 K315 ["FIntAssistantDebugToolMaxOutput"]
     1084 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1086 LOADK                            R8 K316 ["AssistantJobWaitDefaultTimeout"]
     1087 LOADN                            R9 600
     1088 CALL                             R7 2 1
     1089 CALL                             R7 0 1
     1090 SETTABLEKS                       R7 R4 K317 ["FIntAssistantJobWaitDefaultTimeout"]
     1092 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1094 LOADK                            R8 K318 ["AssistantMaxDisplayTextChars"]
     1095 LOADK                            R9 K319 [100000]
     1096 CALL                             R7 2 1
     1097 CALL                             R7 0 1
     1098 SETTABLEKS                       R7 R4 K320 ["FIntAssistantMaxDisplayTextChars"]
     1100 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1102 LOADK                            R8 K321 ["AssistantMaxToolInputStringLen"]
     1103 LOADN                            R9 2000
     1104 CALL                             R7 2 1
     1105 CALL                             R7 0 1
     1106 SETTABLEKS                       R7 R4 K322 ["FIntAssistantMaxToolInputStringLen"]
     1108 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1110 LOADK                            R8 K323 ["AssistantMeshGenMaxTrianglesDefault"]
     1111 LOADN                            R9 10000
     1112 CALL                             R7 2 1
     1113 CALL                             R7 0 1
     1114 SETTABLEKS                       R7 R4 K324 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1116 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1118 LOADK                            R8 K325 ["AssistantMinPopoverHeight"]
     1119 LOADN                            R9 150
     1120 CALL                             R7 2 1
     1121 CALL                             R7 0 1
     1122 SETTABLEKS                       R7 R4 K326 ["FIntAssistantMinPopoverHeight"]
     1124 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1126 LOADK                            R8 K327 ["AssistantPersistenceMessageLoadLimit"]
     1127 LOADN                            R9 5
     1128 CALL                             R7 2 1
     1129 CALL                             R7 0 1
     1130 SETTABLEKS                       R7 R4 K328 ["FIntAssistantPersistenceMessageLoadLimit"]
     1132 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1134 LOADK                            R8 K329 ["AssistantPersistenceThreadLoadLimit"]
     1135 LOADN                            R9 5
     1136 CALL                             R7 2 1
     1137 CALL                             R7 0 1
     1138 SETTABLEKS                       R7 R4 K330 ["FIntAssistantPersistenceThreadLoadLimit"]
     1140 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1142 LOADK                            R8 K331 ["AssistantPostTurnRefreshDelaySeconds"]
     1143 LOADN                            R9 2
     1144 CALL                             R7 2 1
     1145 CALL                             R7 0 1
     1146 SETTABLEKS                       R7 R4 K332 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1148 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1150 LOADK                            R8 K333 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1151 LOADN                            R9 999
     1152 CALL                             R7 2 1
     1153 CALL                             R7 0 1
     1154 SETTABLEKS                       R7 R4 K334 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1156 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1158 LOADK                            R8 K335 ["AssistantPrimitiveGenPollIntervalMs"]
     1159 LOADN                            R9 2000
     1160 CALL                             R7 2 1
     1161 CALL                             R7 0 1
     1162 SETTABLEKS                       R7 R4 K336 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1164 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1166 LOADK                            R8 K337 ["AssistantProcessEventTimeoutMS"]
     1167 LOADK                            R9 K338 [60000]
     1168 CALL                             R7 2 1
     1169 CALL                             R7 0 1
     1170 SETTABLEKS                       R7 R4 K339 ["FIntAssistantProcessEventTimeoutMS"]
     1172 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1174 LOADK                            R8 K340 ["AssistantSegmentMeshMaxUserParts"]
     1175 LOADN                            R9 16
     1176 CALL                             R7 2 1
     1177 CALL                             R7 0 1
     1178 SETTABLEKS                       R7 R4 K341 ["FIntAssistantSegmentMeshMaxUserParts"]
     1180 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1182 LOADK                            R8 K342 ["ConvAIMaxHistoryCount"]
     1183 LOADN                            R9 6
     1184 CALL                             R7 2 1
     1185 CALL                             R7 0 1
     1186 SETTABLEKS                       R7 R4 K343 ["FIntConvAIMaxHistoryCount"]
     1188 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1190 LOADK                            R8 K344 ["ConvAIMeshGenGenerationRetryLimit"]
     1191 LOADN                            R9 4
     1192 CALL                             R7 2 1
     1193 CALL                             R7 0 1
     1194 SETTABLEKS                       R7 R4 K345 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1196 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1198 LOADK                            R8 K346 ["ConvAIMeshGenPublishAttemptLimit"]
     1199 LOADN                            R9 5
     1200 CALL                             R7 2 1
     1201 CALL                             R7 0 1
     1202 SETTABLEKS                       R7 R4 K347 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1204 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1206 LOADK                            R8 K348 ["ExecuteLuauMaxJsonLength"]
     1207 LOADK                            R9 K319 [100000]
     1208 CALL                             R7 2 1
     1209 CALL                             R7 0 1
     1210 SETTABLEKS                       R7 R4 K349 ["FIntExecuteLuauMaxJsonLength"]
     1212 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1214 LOADK                            R8 K350 ["ExecuteLuauMaxStringLength"]
     1215 LOADK                            R9 K319 [100000]
     1216 CALL                             R7 2 1
     1217 CALL                             R7 0 1
     1218 SETTABLEKS                       R7 R4 K351 ["FIntExecuteLuauMaxStringLength"]
     1220 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1222 LOADK                            R8 K352 ["FactorDelayPreview"]
     1223 LOADN                            R9 1
     1224 CALL                             R7 2 1
     1225 CALL                             R7 0 1
     1226 SETTABLEKS                       R7 R4 K353 ["FIntFactorDelayPreview"]
     1228 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1230 LOADK                            R8 K354 ["FromHistoryMaxResultChars"]
     1231 LOADK                            R9 K355 [200000]
     1232 CALL                             R7 2 1
     1233 CALL                             R7 0 1
     1234 SETTABLEKS                       R7 R4 K356 ["FIntFromHistoryMaxResultChars"]
     1236 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1238 LOADK                            R8 K357 ["GameTreeDefaultHeadLimit"]
     1239 LOADN                            R9 200
     1240 CALL                             R7 2 1
     1241 CALL                             R7 0 1
     1242 SETTABLEKS                       R7 R4 K358 ["FIntGameTreeDefaultHeadLimit"]
     1244 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1246 LOADK                            R8 K359 ["GameTreeDefaultMaxDepth"]
     1247 LOADN                            R9 3
     1248 CALL                             R7 2 1
     1249 CALL                             R7 0 1
     1250 SETTABLEKS                       R7 R4 K360 ["FIntGameTreeDefaultMaxDepth"]
     1252 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1254 LOADK                            R8 K361 ["GameTreeMaxAbsoluteDepth"]
     1255 LOADN                            R9 10
     1256 CALL                             R7 2 1
     1257 CALL                             R7 0 1
     1258 SETTABLEKS                       R7 R4 K362 ["FIntGameTreeMaxAbsoluteDepth"]
     1260 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1262 LOADK                            R8 K363 ["InspectInstanceMaxJsonLength"]
     1263 LOADN                            R9 500
     1264 CALL                             R7 2 1
     1265 CALL                             R7 0 1
     1266 SETTABLEKS                       R7 R4 K364 ["FIntInspectInstanceMaxJsonLength"]
     1268 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1270 LOADK                            R8 K365 ["InspectInstanceMaxMatches"]
     1271 LOADN                            R9 20
     1272 CALL                             R7 2 1
     1273 CALL                             R7 0 1
     1274 SETTABLEKS                       R7 R4 K366 ["FIntInspectInstanceMaxMatches"]
     1276 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1278 LOADK                            R8 K367 ["InspectInstanceMaxStringLength"]
     1279 LOADN                            R9 1000
     1280 CALL                             R7 2 1
     1281 CALL                             R7 0 1
     1282 SETTABLEKS                       R7 R4 K368 ["FIntInspectInstanceMaxStringLength"]
     1284 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1286 LOADK                            R8 K369 ["MCPAssistantGenerationIndicatorWarningTime"]
     1287 LOADN                            R9 10
     1288 CALL                             R7 2 1
     1289 CALL                             R7 0 1
     1290 SETTABLEKS                       R7 R4 K370 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1292 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1294 LOADK                            R8 K371 ["MCPAssistantInputAreaCharLimit"]
     1295 LOADN                            R9 4000
     1296 CALL                             R7 2 1
     1297 CALL                             R7 0 1
     1298 SETTABLEKS                       R7 R4 K372 ["FIntMCPAssistantInputAreaCharLimit"]
     1300 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1302 LOADK                            R8 K373 ["MCPAssistantMaxPromptHistory"]
     1303 LOADN                            R9 20
     1304 CALL                             R7 2 1
     1305 CALL                             R7 0 1
     1306 SETTABLEKS                       R7 R4 K374 ["FIntMCPAssistantMaxPromptHistory"]
     1308 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1310 LOADK                            R8 K375 ["MCPAssistantMaxToolCalls"]
     1311 LOADN                            R9 20
     1312 CALL                             R7 2 1
     1313 CALL                             R7 0 1
     1314 SETTABLEKS                       R7 R4 K376 ["FIntMCPAssistantMaxToolCalls"]
     1316 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1318 LOADK                            R8 K377 ["MinimumAssistantFreeTrialRemaining"]
     1319 LOADN                            R9 1
     1320 CALL                             R7 2 1
     1321 CALL                             R7 0 1
     1322 SETTABLEKS                       R7 R4 K378 ["FIntMinimumAssistantFreeTrialRemaining"]
     1324 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1326 LOADK                            R8 K379 ["MinimumAssistantRobuxBalance"]
     1327 LOADN                            R9 100
     1328 CALL                             R7 2 1
     1329 CALL                             R7 0 1
     1330 SETTABLEKS                       R7 R4 K380 ["FIntMinimumAssistantRobuxBalance"]
     1332 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1334 LOADK                            R8 K381 ["PlaytestLookBudget"]
     1335 LOADN                            R9 7
     1336 CALL                             R7 2 1
     1337 CALL                             R7 0 1
     1338 SETTABLEKS                       R7 R4 K382 ["FIntPlaytestLookBudget"]
     1340 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1342 LOADK                            R8 K383 ["PlaytestLookTimeoutMs"]
     1343 LOADK                            R9 K338 [60000]
     1344 CALL                             R7 2 1
     1345 CALL                             R7 0 1
     1346 SETTABLEKS                       R7 R4 K384 ["FIntPlaytestLookTimeoutMs"]
     1348 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1350 LOADK                            R8 K385 ["PlaytestMaxToolCalls"]
     1351 LOADN                            R9 50
     1352 CALL                             R7 2 1
     1353 CALL                             R7 0 1
     1354 SETTABLEKS                       R7 R4 K386 ["FIntPlaytestMaxToolCalls"]
     1356 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1358 LOADK                            R8 K387 ["PrimGenLongRunThresholdSec"]
     1359 LOADN                            R9 120
     1360 CALL                             R7 2 1
     1361 CALL                             R7 0 1
     1362 SETTABLEKS                       R7 R4 K388 ["FIntPrimGenLongRunThresholdSec"]
     1364 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1366 LOADK                            R8 K389 ["PrimGenTextMaxLength"]
     1367 LOADN                            R9 80
     1368 CALL                             R7 2 1
     1369 CALL                             R7 0 1
     1370 SETTABLEKS                       R7 R4 K390 ["FIntPrimGenTextMaxLength"]
     1372 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1374 LOADK                            R8 K391 ["PrimGenVerticalGutter"]
     1375 LOADN                            R9 10
     1376 CALL                             R7 2 1
     1377 CALL                             R7 0 1
     1378 SETTABLEKS                       R7 R4 K392 ["FIntPrimGenVerticalGutter"]
     1380 GETTABLEKS                       R7 R3 K309 ["createGetFInt"]
     1382 LOADK                            R8 K393 ["UnitTestSubagentMaxToolCalls"]
     1383 LOADN                            R9 100
     1384 CALL                             R7 2 1
     1385 CALL                             R7 0 1
     1386 SETTABLEKS                       R7 R4 K394 ["FIntUnitTestSubagentMaxToolCalls"]
     1388 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1390 LOADK                            R8 K396 ["AssistantDebugCreditMeteringBlockReason"]
     1391 LOADK                            R9 K397 [""]
     1392 CALL                             R7 2 1
     1393 CALL                             R7 0 1
     1394 SETTABLEKS                       R7 R4 K398 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1396 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1398 LOADK                            R8 K399 ["AssistantDisabledSubagents"]
     1399 LOADK                            R9 K397 [""]
     1400 CALL                             R7 2 1
     1401 CALL                             R7 0 1
     1402 SETTABLEKS                       R7 R4 K400 ["FStringAssistantDisabledSubagents"]
     1404 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1406 LOADK                            R8 K401 ["AssistantGen3dDefaultModel"]
     1407 LOADK                            R9 K402 ["Assistant/glm51-h200"]
     1408 CALL                             R7 2 1
     1409 CALL                             R7 0 1
     1410 SETTABLEKS                       R7 R4 K403 ["FStringAssistantGen3dDefaultModel"]
     1412 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1414 LOADK                            R8 K404 ["AssistantImageGenHostOverride"]
     1415 LOADK                            R9 K397 [""]
     1416 CALL                             R7 2 1
     1417 CALL                             R7 0 1
     1418 SETTABLEKS                       R7 R4 K405 ["FStringAssistantImageGenHostOverride"]
     1420 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1422 LOADK                            R8 K406 ["AssistantJobRunTools"]
     1423 LOADK                            R9 K407 ["generate_procedural_model,generate_mesh,generate_material"]
     1424 CALL                             R7 2 1
     1425 CALL                             R7 0 1
     1426 SETTABLEKS                       R7 R4 K408 ["FStringAssistantJobRunTools"]
     1428 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1430 LOADK                            R8 K409 ["AssistantMeshGenImageGenModelOverride"]
     1431 LOADK                            R9 K410 ["gemini"]
     1432 CALL                             R7 2 1
     1433 CALL                             R7 0 1
     1434 SETTABLEKS                       R7 R4 K411 ["FStringAssistantMeshGenImageGenModelOverride"]
     1436 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1438 LOADK                            R8 K412 ["AssistantMeshGenImageGenPromptTemplate"]
     1439 LOADK                            R9 K397 [""]
     1440 CALL                             R7 2 1
     1441 CALL                             R7 0 1
     1442 SETTABLEKS                       R7 R4 K413 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1444 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1446 LOADK                            R8 K414 ["AssistantMeshGenInferenceServiceOverride"]
     1447 LOADK                            R9 K415 ["stage-diff-mesh-gen"]
     1448 CALL                             R7 2 1
     1449 CALL                             R7 0 1
     1450 SETTABLEKS                       R7 R4 K416 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1452 GETIMPORT                        R7 K5 [require]
     1454 GETTABLEKS                       R8 R0 K417 ["FlagUtils"]
     1456 GETTABLEKS                       R8 R8 K418 ["createGetFStringAssistantMeshGenSchemaData"]
     1458 CALL                             R7 1 1
     1459 CALL                             R7 0 1
     1460 SETTABLEKS                       R7 R4 K419 ["FStringAssistantMeshGenSchemaData"]
     1462 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1464 LOADK                            R8 K420 ["AssistantSkillsAllowlist"]
     1465 LOADK                            R9 K421 ["docs-search, scene-analysis"]
     1466 CALL                             R7 2 1
     1467 CALL                             R7 0 1
     1468 SETTABLEKS                       R7 R4 K422 ["FStringAssistantSkillsAllowlist"]
     1470 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1472 LOADK                            R8 K423 ["AssistantTestLLMReasoningEffort"]
     1473 LOADK                            R9 K424 ["high"]
     1474 CALL                             R7 2 1
     1475 CALL                             R7 0 1
     1476 SETTABLEKS                       R7 R4 K425 ["FStringAssistantTestLLMReasoningEffort"]
     1478 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1480 LOADK                            R8 K426 ["AssistantToolsExcludedDirectories"]
     1481 LOADK                            R9 K427 ["CoreGui,PlayerGui,LoadedCode"]
     1482 CALL                             R7 2 1
     1483 CALL                             R7 0 1
     1484 SETTABLEKS                       R7 R4 K428 ["FStringAssistantToolsExcludedDirectories"]
     1486 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1488 LOADK                            R8 K429 ["AssistantToolWidgetMappings"]
     1489 LOADK                            R9 K397 [""]
     1490 CALL                             R7 2 1
     1491 CALL                             R7 0 1
     1492 SETTABLEKS                       R7 R4 K430 ["FStringAssistantToolWidgetMappings"]
     1494 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1496 LOADK                            R8 K431 ["AssistantUnitTestSubagentModel"]
     1497 LOADK                            R9 K432 ["Assistant/glm5"]
     1498 CALL                             R7 2 1
     1499 CALL                             R7 0 1
     1500 SETTABLEKS                       R7 R4 K433 ["FStringAssistantUnitTestSubagentModel"]
     1502 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1504 LOADK                            R8 K434 ["AssistantUntitledChatPlaceholderText"]
     1505 LOADK                            R9 K435 ["Untitled Chat"]
     1506 CALL                             R7 2 1
     1507 CALL                             R7 0 1
     1508 SETTABLEKS                       R7 R4 K436 ["FStringAssistantUntitledChatPlaceholder"]
     1510 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1512 LOADK                            R8 K437 ["ConvAIMeshGenModerationUrl"]
     1513 LOADK                            R9 K438 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1514 CALL                             R7 2 1
     1515 CALL                             R7 0 1
     1516 SETTABLEKS                       R7 R4 K439 ["FStringConvAIMeshGenModerationUrl"]
     1518 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1520 LOADK                            R8 K440 ["MCPAssistantAnthropicModels"]
     1521 LOADK                            R9 K441 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1522 CALL                             R7 2 1
     1523 CALL                             R7 0 1
     1524 SETTABLEKS                       R7 R4 K442 ["FStringMCPAssistantAnthropicModels"]
     1526 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1528 LOADK                            R8 K443 ["MCPAssistantClaudeAPIKey"]
     1529 LOADK                            R9 K397 [""]
     1530 CALL                             R7 2 1
     1531 CALL                             R7 0 1
     1532 SETTABLEKS                       R7 R4 K444 ["FStringMCPAssistantClaudeAPIKey"]
     1534 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1536 LOADK                            R8 K445 ["MCPAssistantCustomModelName"]
     1537 LOADK                            R9 K397 [""]
     1538 CALL                             R7 2 1
     1539 CALL                             R7 0 1
     1540 SETTABLEKS                       R7 R4 K446 ["FStringMCPAssistantCustomModelName"]
     1542 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1544 LOADK                            R8 K447 ["MCPAssistantGeminiAPIKey"]
     1545 LOADK                            R9 K397 [""]
     1546 CALL                             R7 2 1
     1547 CALL                             R7 0 1
     1548 SETTABLEKS                       R7 R4 K448 ["FStringMCPAssistantGeminiAPIKey"]
     1550 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1552 LOADK                            R8 K449 ["MCPAssistantGeminiModels"]
     1553 LOADK                            R9 K450 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1554 CALL                             R7 2 1
     1555 CALL                             R7 0 1
     1556 SETTABLEKS                       R7 R4 K451 ["FStringMCPAssistantGeminiModels"]
     1558 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1560 LOADK                            R8 K452 ["MCPAssistantOpenAIAPIKey"]
     1561 LOADK                            R9 K397 [""]
     1562 CALL                             R7 2 1
     1563 CALL                             R7 0 1
     1564 SETTABLEKS                       R7 R4 K453 ["FStringMCPAssistantOpenAIAPIKey"]
     1566 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1568 LOADK                            R8 K454 ["MCPAssistantOpenAIModels"]
     1569 LOADK                            R9 K455 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1570 CALL                             R7 2 1
     1571 CALL                             R7 0 1
     1572 SETTABLEKS                       R7 R4 K456 ["FStringMCPAssistantOpenAIModels"]
     1574 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1576 LOADK                            R8 K457 ["MCPAssistantOpenAIReasoningEffort"]
     1577 LOADK                            R9 K397 [""]
     1578 CALL                             R7 2 1
     1579 CALL                             R7 0 1
     1580 SETTABLEKS                       R7 R4 K458 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1582 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1584 LOADK                            R8 K459 ["MCPAssistantPrimitiveGenServerURL"]
     1585 LOADK                            R9 K397 [""]
     1586 CALL                             R7 2 1
     1587 CALL                             R7 0 1
     1588 SETTABLEKS                       R7 R4 K460 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1590 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1592 LOADK                            R8 K461 ["MCPAssistantTestLLMAPIKey"]
     1593 LOADK                            R9 K397 [""]
     1594 CALL                             R7 2 1
     1595 CALL                             R7 0 1
     1596 SETTABLEKS                       R7 R4 K462 ["FStringMCPAssistantTestLLMAPIKey"]
     1598 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1600 LOADK                            R8 K463 ["MCPAssistantURLOverride"]
     1601 LOADK                            R9 K397 [""]
     1602 CALL                             R7 2 1
     1603 CALL                             R7 0 1
     1604 SETTABLEKS                       R7 R4 K464 ["FStringMCPAssistantURLOverride"]
     1606 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1608 LOADK                            R8 K465 ["MCPDocsUrl"]
     1609 LOADK                            R9 K466 ["https://create.roblox.com/docs/studio/mcp/"]
     1610 CALL                             R7 2 1
     1611 CALL                             R7 0 1
     1612 SETTABLEKS                       R7 R4 K467 ["FStringMCPDocsUrl"]
     1614 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1616 LOADK                            R8 K468 ["PlaytestConversationURL"]
     1617 LOADK                            R9 K469 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1618 CALL                             R7 2 1
     1619 CALL                             R7 0 1
     1620 SETTABLEKS                       R7 R4 K470 ["FStringPlaytestConversationURL"]
     1622 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1624 LOADK                            R8 K471 ["PlaytestModelName"]
     1625 LOADK                            R9 K472 ["Qwen/Qwen35-35B-A3B"]
     1626 CALL                             R7 2 1
     1627 CALL                             R7 0 1
     1628 SETTABLEKS                       R7 R4 K473 ["FStringPlaytestModelName"]
     1630 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1632 LOADK                            R8 K474 ["PrimGenImageGenPromptTemplate"]
     1633 LOADK                            R9 K397 [""]
     1634 CALL                             R7 2 1
     1635 CALL                             R7 0 1
     1636 SETTABLEKS                       R7 R4 K475 ["FStringPrimGenImageGenPromptTemplate"]
     1638 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1640 LOADK                            R8 K476 ["ProceduralScriptCapabilities"]
     1641 LOADK                            R9 K477 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1642 CALL                             R7 2 1
     1643 CALL                             R7 0 1
     1644 SETTABLEKS                       R7 R4 K478 ["FStringProceduralScriptCapabilities"]
     1646 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1648 LOADK                            R8 K479 ["ScreenCaptureFormat"]
     1649 LOADK                            R9 K397 [""]
     1650 CALL                             R7 2 1
     1651 CALL                             R7 0 1
     1652 SETTABLEKS                       R7 R4 K480 ["FStringScreenCaptureFormat"]
     1654 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1656 LOADK                            R8 K481 ["ScreenCaptureSize"]
     1657 LOADK                            R9 K397 [""]
     1658 CALL                             R7 2 1
     1659 CALL                             R7 0 1
     1660 SETTABLEKS                       R7 R4 K482 ["FStringScreenCaptureSize"]
     1662 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1664 LOADK                            R8 K483 ["ScreenCaptureSubagentModelName"]
     1665 LOADK                            R9 K397 [""]
     1666 CALL                             R7 2 1
     1667 CALL                             R7 0 1
     1668 SETTABLEKS                       R7 R4 K484 ["FStringScreenCaptureSubagentModelName"]
     1670 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1672 LOADK                            R8 K485 ["SegmentByPartsBetaFeatureUrl"]
     1673 LOADK                            R9 K397 [""]
     1674 CALL                             R7 2 1
     1675 CALL                             R7 0 1
     1676 SETTABLEKS                       R7 R4 K486 ["FStringSegmentByPartsBetaFeatureUrl"]
     1678 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1680 LOADK                            R8 K487 ["StudioScopeRiskLevelsDocsUrl"]
     1681 LOADK                            R9 K488 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1682 CALL                             R7 2 1
     1683 CALL                             R7 0 1
     1684 SETTABLEKS                       R7 R4 K489 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1686 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1688 LOADK                            R8 K490 ["SubagentExploreModelName"]
     1689 LOADK                            R9 K491 ["Assistant/glm5-b200-server-1"]
     1690 CALL                             R7 2 1
     1691 CALL                             R7 0 1
     1692 SETTABLEKS                       R7 R4 K492 ["FStringSubagentExploreModelName"]
     1694 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1696 LOADK                            R8 K493 ["SubagentURLOverride"]
     1697 LOADK                            R9 K397 [""]
     1698 CALL                             R7 2 1
     1699 CALL                             R7 0 1
     1700 SETTABLEKS                       R7 R4 K494 ["FStringSubagentURLOverride"]
     1702 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1704 LOADK                            R8 K495 ["TestLLMURLOverride"]
     1705 LOADK                            R9 K397 [""]
     1706 CALL                             R7 2 1
     1707 CALL                             R7 0 1
     1708 SETTABLEKS                       R7 R4 K496 ["FStringTestLLMURLOverride"]
     1710 GETTABLEKS                       R7 R3 K395 ["createGetFString"]
     1712 LOADK                            R8 K497 ["TestSubagentURLOverride"]
     1713 LOADK                            R9 K397 [""]
     1714 CALL                             R7 2 1
     1715 CALL                             R7 0 1
     1716 SETTABLEKS                       R7 R4 K498 ["FStringTestSubagentURLOverride"]
     1718 DUPTABLE                         R9 K500 [{"__index", "__newindex"}]
     1719 SETTABLEKS                       R2 R9 K499 ["__index"]
     1721 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1723 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1725 MOVE                             R8 R4
     1726 GETIMPORT                        R7 K15 [setmetatable]
     1728 CALL                             R7 2 1
     1729 RETURN                           R7 1
