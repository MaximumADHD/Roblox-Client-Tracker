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
      161 LOADK                            R8 K56 ["AssistantEndPlanTurnOnBuild"]
      162 CALL                             R7 1 1
      163 CALL                             R7 0 1
      164 SETTABLEKS                       R7 R4 K57 ["FFlagAssistantEndPlanTurnOnBuild"]
      166 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      168 LOADK                            R8 K58 ["AssistantChatFollowBottomThreshold"]
      169 CALL                             R7 1 1
      170 CALL                             R7 0 1
      171 SETTABLEKS                       R7 R4 K59 ["FFlagAssistantChatFollowBottomThreshold"]
      173 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      175 LOADK                            R8 K60 ["AssistantCloseDropdownsOnWidgetHidden"]
      176 CALL                             R7 1 1
      177 CALL                             R7 0 1
      178 SETTABLEKS                       R7 R4 K61 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      180 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      182 LOADK                            R8 K62 ["AssistantConfirmButtonUpdate"]
      183 CALL                             R7 1 1
      184 CALL                             R7 0 1
      185 SETTABLEKS                       R7 R4 K63 ["FFlagAssistantConfirmButtonUpdate"]
      187 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      189 LOADK                            R8 K64 ["AssistantConsoleOutputTailFromEnd2"]
      190 CALL                             R7 1 1
      191 CALL                             R7 0 1
      192 SETTABLEKS                       R7 R4 K65 ["FFlagAssistantConsoleOutputTailFromEnd"]
      194 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      196 LOADK                            R8 K66 ["AssistantCopyButton"]
      197 CALL                             R7 1 1
      198 CALL                             R7 0 1
      199 SETTABLEKS                       R7 R4 K67 ["FFlagAssistantCopyButton"]
      201 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      203 LOADK                            R8 K68 ["AssistantCreditMetering3"]
      204 CALL                             R7 1 1
      205 CALL                             R7 0 1
      206 SETTABLEKS                       R7 R4 K69 ["FFlagAssistantCreditMetering"]
      208 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      210 LOADK                            R8 K70 ["AssistantCreditMeteringAdditionalUsage"]
      211 LOADB                            R9 1
      212 CALL                             R7 2 1
      213 CALL                             R7 0 1
      214 SETTABLEKS                       R7 R4 K71 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      216 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      218 LOADK                            R8 K72 ["AssistantCreditMeteringInferBlockReason"]
      219 CALL                             R7 1 1
      220 CALL                             R7 0 1
      221 SETTABLEKS                       R7 R4 K73 ["FFlagAssistantCreditMeteringInferBlockReason"]
      223 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      225 LOADK                            R8 K74 ["AssistantCreditMeteringTelemetry"]
      226 CALL                             R7 1 1
      227 CALL                             R7 0 1
      228 SETTABLEKS                       R7 R4 K75 ["FFlagAssistantCreditMeteringTelemetry"]
      230 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      232 LOADK                            R8 K76 ["AssistantDestroySessionMonitorsOnClose"]
      233 CALL                             R7 1 1
      234 CALL                             R7 0 1
      235 SETTABLEKS                       R7 R4 K77 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      237 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      239 LOADK                            R8 K78 ["AssistantDisableApplyEditDataModelAvailability"]
      240 CALL                             R7 1 1
      241 CALL                             R7 0 1
      242 SETTABLEKS                       R7 R4 K79 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      244 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      246 LOADK                            R8 K80 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      247 CALL                             R7 1 1
      248 CALL                             R7 0 1
      249 SETTABLEKS                       R7 R4 K81 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      251 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      253 LOADK                            R8 K82 ["AssistantDisableBranching"]
      254 CALL                             R7 1 1
      255 CALL                             R7 0 1
      256 SETTABLEKS                       R7 R4 K83 ["FFlagAssistantDisableBranching"]
      258 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      260 LOADK                            R8 K84 ["AssistantDisableForceSyncJobRun"]
      261 CALL                             R7 1 1
      262 CALL                             R7 0 1
      263 SETTABLEKS                       R7 R4 K85 ["FFlagAssistantDisableForceSyncJobRun"]
      265 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      267 LOADK                            R8 K86 ["AssistantDisableSessionFilter"]
      268 CALL                             R7 1 1
      269 CALL                             R7 0 1
      270 SETTABLEKS                       R7 R4 K87 ["FFlagAssistantDisableSessionFilter"]
      272 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      274 LOADK                            R8 K88 ["AssistantEditScrubbarPropertyRow"]
      275 CALL                             R7 1 1
      276 CALL                             R7 0 1
      277 SETTABLEKS                       R7 R4 K89 ["FFlagAssistantEditScrubbarPropertyRow"]
      279 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      281 LOADK                            R8 K90 ["AssistantEval"]
      282 CALL                             R7 1 1
      283 CALL                             R7 0 1
      284 SETTABLEKS                       R7 R4 K91 ["FFlagAssistantEval"]
      286 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      288 LOADK                            R8 K92 ["AssistantExternalInterface"]
      289 CALL                             R7 1 1
      290 CALL                             R7 0 1
      291 SETTABLEKS                       R7 R4 K93 ["FFlagAssistantExternalInterface"]
      293 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      295 LOADK                            R8 K94 ["AssistantExternalMCPPluginSettingRedundancy"]
      296 CALL                             R7 1 1
      297 CALL                             R7 0 1
      298 SETTABLEKS                       R7 R4 K95 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      300 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      302 LOADK                            R8 K96 ["AssistantFeedbackView"]
      303 CALL                             R7 1 1
      304 CALL                             R7 0 1
      305 SETTABLEKS                       R7 R4 K97 ["FFlagAssistantFeedbackView"]
      307 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      309 LOADK                            R8 K98 ["AssistantFixStartPlayHang"]
      310 CALL                             R7 1 1
      311 CALL                             R7 0 1
      312 SETTABLEKS                       R7 R4 K99 ["FFlagAssistantFixStartPlayHang"]
      314 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      316 LOADK                            R8 K100 ["AssistantForceRemoteServiceForInternal"]
      317 CALL                             R7 1 1
      318 CALL                             R7 0 1
      319 SETTABLEKS                       R7 R4 K101 ["FFlagAssistantForceRemoteServiceForInternal"]
      321 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      323 LOADK                            R8 K102 ["AssistantGen3DAssetPublishTracking"]
      324 CALL                             R7 1 1
      325 CALL                             R7 0 1
      326 SETTABLEKS                       R7 R4 K103 ["FFlagAssistantGen3DAssetPublishTracking"]
      328 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      330 LOADK                            R8 K104 ["AssistantGen3dAutoSegmentation"]
      331 CALL                             R7 1 1
      332 CALL                             R7 0 1
      333 SETTABLEKS                       R7 R4 K105 ["FFlagAssistantGen3dAutoSegmentation"]
      335 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      337 LOADK                            R8 K106 ["AssistantGen3DImagePreviewTelemetry"]
      338 CALL                             R7 1 1
      339 CALL                             R7 0 1
      340 SETTABLEKS                       R7 R4 K107 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      342 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      344 LOADK                            R8 K108 ["AssistantGen3dInputRequestedOverride"]
      345 CALL                             R7 1 1
      346 CALL                             R7 0 1
      347 SETTABLEKS                       R7 R4 K109 ["FFlagAssistantGen3dInputRequestedOverride"]
      349 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      351 LOADK                            R8 K110 ["AssistantGen3dRequirePromptToGenerate"]
      352 CALL                             R7 1 1
      353 CALL                             R7 0 1
      354 SETTABLEKS                       R7 R4 K111 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      356 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      358 LOADK                            R8 K112 ["AssistantGen3DTelemetryV2"]
      359 CALL                             R7 1 1
      360 CALL                             R7 0 1
      361 SETTABLEKS                       R7 R4 K113 ["FFlagAssistantGen3DTelemetryV2"]
      363 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      365 LOADK                            R8 K114 ["AssistantGenerateLayoutTool"]
      366 CALL                             R7 1 1
      367 CALL                             R7 0 1
      368 SETTABLEKS                       R7 R4 K115 ["FFlagAssistantGenerateLayoutTool"]
      370 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      372 LOADK                            R8 K116 ["AssistantGenerateLayoutTopDownHint"]
      373 CALL                             R7 1 1
      374 CALL                             R7 0 1
      375 SETTABLEKS                       R7 R4 K117 ["FFlagAssistantGenerateLayoutTopDownHint"]
      377 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      379 LOADK                            R8 K118 ["AssistantHidePinForBuild"]
      380 CALL                             R7 1 1
      381 CALL                             R7 0 1
      382 SETTABLEKS                       R7 R4 K119 ["FFlagAssistantHidePinForBuild"]
      384 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      386 LOADK                            R8 K120 ["AssistantHintImageAsUri2"]
      387 CALL                             R7 1 1
      388 CALL                             R7 0 1
      389 SETTABLEKS                       R7 R4 K121 ["FFlagAssistantHintImageAsUri"]
      391 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      393 LOADK                            R8 K122 ["AssistantHintMultiEditOverExecLuau"]
      394 CALL                             R7 1 1
      395 CALL                             R7 0 1
      396 SETTABLEKS                       R7 R4 K123 ["FFlagAssistantHintMultiEditOverExecLuau"]
      398 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      400 LOADK                            R8 K124 ["AssistantImageGenAbortPollOn4xx"]
      401 CALL                             R7 1 1
      402 CALL                             R7 0 1
      403 SETTABLEKS                       R7 R4 K125 ["FFlagAssistantImageGenAbortPollOn4xx"]
      405 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      407 LOADK                            R8 K126 ["AssistantImageGenImprovements"]
      408 CALL                             R7 1 1
      409 CALL                             R7 0 1
      410 SETTABLEKS                       R7 R4 K127 ["FFlagAssistantImageGenImprovements"]
      412 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      414 LOADK                            R8 K128 ["AssistantImageGenSeed"]
      415 CALL                             R7 1 1
      416 CALL                             R7 0 1
      417 SETTABLEKS                       R7 R4 K129 ["FFlagAssistantImageGenSeed"]
      419 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      421 LOADK                            R8 K130 ["AssistantImageGenUseOpenApiClient"]
      422 CALL                             R7 1 1
      423 CALL                             R7 0 1
      424 SETTABLEKS                       R7 R4 K131 ["FFlagAssistantImageGenUseOpenApiClient"]
      426 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      428 LOADK                            R8 K132 ["AssistantImageSelectionForGen3D"]
      429 CALL                             R7 1 1
      430 CALL                             R7 0 1
      431 SETTABLEKS                       R7 R4 K133 ["FFlagAssistantImageSelectionForGen3D"]
      433 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      435 LOADK                            R8 K134 ["AssistantImageSelectionWizardModeMeshGen"]
      436 CALL                             R7 1 1
      437 CALL                             R7 0 1
      438 SETTABLEKS                       R7 R4 K135 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      440 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      442 LOADK                            R8 K136 ["AssistantImageSelectionWizardModePrimitiveGen"]
      443 CALL                             R7 1 1
      444 CALL                             R7 0 1
      445 SETTABLEKS                       R7 R4 K137 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      447 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      449 LOADK                            R8 K138 ["AssistantImageSelectionWizardModeTextureGen"]
      450 CALL                             R7 1 1
      451 CALL                             R7 0 1
      452 SETTABLEKS                       R7 R4 K139 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      454 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      456 LOADK                            R8 K140 ["AssistantInputRequestedFixedFooter"]
      457 CALL                             R7 1 1
      458 CALL                             R7 0 1
      459 SETTABLEKS                       R7 R4 K141 ["FFlagAssistantInputRequestedFixedFooter"]
      461 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      463 LOADK                            R8 K142 ["AssistantInsertAssetSandboxProceduralModels"]
      464 CALL                             R7 1 1
      465 CALL                             R7 0 1
      466 SETTABLEKS                       R7 R4 K143 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      468 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      470 LOADK                            R8 K144 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      471 CALL                             R7 1 1
      472 CALL                             R7 0 1
      473 SETTABLEKS                       R7 R4 K145 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      475 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      477 LOADK                            R8 K146 ["AssistantInsertAssetSandboxScripts"]
      478 CALL                             R7 1 1
      479 CALL                             R7 0 1
      480 SETTABLEKS                       R7 R4 K147 ["FFlagAssistantInsertAssetSandboxScripts"]
      482 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      484 LOADK                            R8 K148 ["AssistantMcpImageGenShortcut"]
      485 CALL                             R7 1 1
      486 CALL                             R7 0 1
      487 SETTABLEKS                       R7 R4 K149 ["FFlagAssistantMcpImageGenShortcut"]
      489 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      491 LOADK                            R8 K150 ["AssistantMeshGenAutoExpandCollapse"]
      492 CALL                             R7 1 1
      493 CALL                             R7 0 1
      494 SETTABLEKS                       R7 R4 K151 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      496 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      498 LOADK                            R8 K152 ["AssistantMeshGenCarouselPreview"]
      499 CALL                             R7 1 1
      500 CALL                             R7 0 1
      501 SETTABLEKS                       R7 R4 K153 ["FFlagAssistantMeshGenCarouselPreview"]
      503 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      505 LOADK                            R8 K154 ["AssistantMeshGenCombinedAddToPlace"]
      506 CALL                             R7 1 1
      507 CALL                             R7 0 1
      508 SETTABLEKS                       R7 R4 K155 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      510 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      512 LOADK                            R8 K156 ["AssistantMeshGenHintImage"]
      513 CALL                             R7 1 1
      514 CALL                             R7 0 1
      515 SETTABLEKS                       R7 R4 K157 ["FFlagAssistantMeshGenHintImage"]
      517 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      519 LOADK                            R8 K158 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      520 CALL                             R7 1 1
      521 CALL                             R7 0 1
      522 SETTABLEKS                       R7 R4 K159 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      524 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      526 LOADK                            R8 K160 ["AssistantMeshGenRemoveAdminOptions"]
      527 CALL                             R7 1 1
      528 CALL                             R7 0 1
      529 SETTABLEKS                       R7 R4 K161 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      531 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      533 LOADK                            R8 K162 ["AssistantMoveToolButtonsToTheRight"]
      534 CALL                             R7 1 1
      535 CALL                             R7 0 1
      536 SETTABLEKS                       R7 R4 K163 ["FFlagAssistantMoveToolButtonsToTheRight"]
      538 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      540 LOADK                            R8 K164 ["AssistantMultiEditExternalClient"]
      541 CALL                             R7 1 1
      542 CALL                             R7 0 1
      543 SETTABLEKS                       R7 R4 K165 ["FFlagAssistantMultiEditExternalClient"]
      545 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      547 LOADK                            R8 K166 ["AssistantOmitSlashToolCallDroppedFields"]
      548 CALL                             R7 1 1
      549 CALL                             R7 0 1
      550 SETTABLEKS                       R7 R4 K167 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      552 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      554 LOADK                            R8 K168 ["AssistantPinForBuildUI"]
      555 CALL                             R7 1 1
      556 CALL                             R7 0 1
      557 SETTABLEKS                       R7 R4 K169 ["FFlagAssistantPinForBuildUI"]
      559 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      561 LOADK                            R8 K170 ["AssistantPlanRevisionList"]
      562 CALL                             R7 1 1
      563 CALL                             R7 0 1
      564 SETTABLEKS                       R7 R4 K171 ["FFlagAssistantPlanRevisionList"]
      566 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      568 LOADK                            R8 K172 ["AssistantPlaytestContext"]
      569 CALL                             R7 1 1
      570 CALL                             R7 0 1
      571 SETTABLEKS                       R7 R4 K173 ["FFlagAssistantPlaytestContext"]
      573 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      575 LOADK                            R8 K174 ["AssistantPlaytestToolFix"]
      576 CALL                             R7 1 1
      577 CALL                             R7 0 1
      578 SETTABLEKS                       R7 R4 K175 ["FFlagAssistantPlaytestToolFix"]
      580 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      582 LOADK                            R8 K176 ["AssistantPromptModeratedError"]
      583 CALL                             R7 1 1
      584 CALL                             R7 0 1
      585 SETTABLEKS                       R7 R4 K177 ["FFlagAssistantPromptModeratedError"]
      587 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      589 LOADK                            R8 K178 ["AssistantQuestionAnswerSkipReview"]
      590 CALL                             R7 1 1
      591 CALL                             R7 0 1
      592 SETTABLEKS                       R7 R4 K179 ["FFlagAssistantQuestionAnswerSkipReview"]
      594 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      596 LOADK                            R8 K180 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      597 CALL                             R7 1 1
      598 CALL                             R7 0 1
      599 SETTABLEKS                       R7 R4 K181 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      601 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      603 LOADK                            R9 K182 ["AssistantReplaceJobRunWithAsyncArg"]
      604 CALL                             R8 1 1
      605 CALL                             R8 0 1
      606 AND                              R7 R8 R5
      607 SETTABLEKS                       R7 R4 K183 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      609 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      611 LOADK                            R8 K184 ["AssistantRestoreMostRecentThread"]
      612 CALL                             R7 1 1
      613 CALL                             R7 0 1
      614 SETTABLEKS                       R7 R4 K185 ["FFlagAssistantRestoreMostRecentThread"]
      616 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      618 LOADK                            R8 K186 ["AssistantRevertPerThreadInputState"]
      619 CALL                             R7 1 1
      620 CALL                             R7 0 1
      621 SETTABLEKS                       R7 R4 K187 ["FFlagAssistantRevertPerThreadInputState"]
      623 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      625 LOADK                            R8 K188 ["AssistantSegmentationBridge"]
      626 CALL                             R7 1 1
      627 CALL                             R7 0 1
      628 SETTABLEKS                       R7 R4 K189 ["FFlagAssistantSegmentationBridge"]
      630 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      632 LOADK                            R8 K190 ["AssistantSegmentationPanelScroll"]
      633 CALL                             R7 1 1
      634 CALL                             R7 0 1
      635 SETTABLEKS                       R7 R4 K191 ["FFlagAssistantSegmentationPanelScroll"]
      637 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      639 LOADK                            R8 K192 ["AssistantSegmentationPromptModeSelector"]
      640 CALL                             R7 1 1
      641 CALL                             R7 0 1
      642 SETTABLEKS                       R7 R4 K193 ["FFlagAssistantSegmentationPromptModeSelector"]
      644 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      646 LOADK                            R8 K194 ["AssistantSegmentationUIFixes"]
      647 CALL                             R7 1 1
      648 CALL                             R7 0 1
      649 SETTABLEKS                       R7 R4 K195 ["FFlagAssistantSegmentationUIFixes"]
      651 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      653 LOADK                            R8 K196 ["AssistantSegmentMeshCleanupWorldWrapper"]
      654 CALL                             R7 1 1
      655 CALL                             R7 0 1
      656 SETTABLEKS                       R7 R4 K197 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      658 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      660 LOADK                            R8 K198 ["AssistantSegmentMeshTool"]
      661 CALL                             R7 1 1
      662 CALL                             R7 0 1
      663 SETTABLEKS                       R7 R4 K199 ["FFlagAssistantSegmentMeshTool"]
      665 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      667 LOADK                            R8 K200 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      668 CALL                             R7 1 1
      669 CALL                             R7 0 1
      670 SETTABLEKS                       R7 R4 K201 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      672 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      674 LOADK                            R8 K202 ["AssistantSkillImport"]
      675 CALL                             R7 1 1
      676 CALL                             R7 0 1
      677 SETTABLEKS                       R7 R4 K203 ["FFlagAssistantSkillImport"]
      679 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      681 LOADK                            R8 K204 ["AssistantSkillToolNameReplace"]
      682 CALL                             R7 1 1
      683 CALL                             R7 0 1
      684 SETTABLEKS                       R7 R4 K205 ["FFlagAssistantSkillToolNameReplace"]
      686 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      688 LOADK                            R8 K206 ["AssistantSlashCommandStepBackNavigation"]
      689 CALL                             R7 1 1
      690 CALL                             R7 0 1
      691 SETTABLEKS                       R7 R4 K207 ["FFlagAssistantSlashCommandStepBackNavigation"]
      693 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      695 LOADK                            R8 K208 ["AssistantSlashToolNameAndError"]
      696 CALL                             R7 1 1
      697 CALL                             R7 0 1
      698 SETTABLEKS                       R7 R4 K209 ["FFlagAssistantSlashToolNameAndError"]
      700 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      702 LOADK                            R8 K210 ["AssistantStandaloneDataModel"]
      703 CALL                             R7 1 1
      704 CALL                             R7 0 1
      705 SETTABLEKS                       R7 R4 K211 ["FFlagAssistantStandaloneDataModel"]
      707 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      709 LOADK                            R8 K212 ["AssistantStartStopPlayBusyCheck"]
      710 CALL                             R7 1 1
      711 CALL                             R7 0 1
      712 SETTABLEKS                       R7 R4 K213 ["FFlagAssistantStartStopPlayBusyCheck"]
      714 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      716 LOADK                            R8 K214 ["AssistantSystemSkillsStateReminder"]
      717 CALL                             R7 1 1
      718 CALL                             R7 0 1
      719 SETTABLEKS                       R7 R4 K215 ["FFlagAssistantSystemSkillsStateReminder"]
      721 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      723 LOADK                            R8 K216 ["AssistantTestLLMPreserveThinking"]
      724 LOADB                            R9 1
      725 CALL                             R7 2 1
      726 CALL                             R7 0 1
      727 SETTABLEKS                       R7 R4 K217 ["FFlagAssistantTestLLMPreserveThinking"]
      729 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      731 LOADK                            R8 K218 ["AssistantTestLLMThinkingEnabled"]
      732 LOADB                            R9 1
      733 CALL                             R7 2 1
      734 CALL                             R7 0 1
      735 SETTABLEKS                       R7 R4 K219 ["FFlagAssistantTestLLMThinkingEnabled"]
      737 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      739 LOADK                            R8 K220 ["AssistantTextureGenConfirmBeforeInsert"]
      740 CALL                             R7 1 1
      741 CALL                             R7 0 1
      742 SETTABLEKS                       R7 R4 K221 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      744 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      746 LOADK                            R8 K222 ["AssistantTextureGenModelSelection"]
      747 CALL                             R7 1 1
      748 CALL                             R7 0 1
      749 SETTABLEKS                       R7 R4 K223 ["FFlagAssistantTextureGenModelSelection"]
      751 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      753 LOADK                            R8 K224 ["AssistantTextureGenTool"]
      754 CALL                             R7 1 1
      755 CALL                             R7 0 1
      756 SETTABLEKS                       R7 R4 K225 ["FFlagAssistantTextureGenTool"]
      758 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      760 LOADK                            R8 K226 ["AssistantTextureGenUseSourceMeshCFrame"]
      761 CALL                             R7 1 1
      762 CALL                             R7 0 1
      763 SETTABLEKS                       R7 R4 K227 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      765 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      767 LOADK                            R8 K228 ["AssistantUntitledChatPlaceholder"]
      768 CALL                             R7 1 1
      769 CALL                             R7 0 1
      770 SETTABLEKS                       R7 R4 K229 ["FFlagAssistantUntitledChatPlaceholder"]
      772 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      774 LOADK                            R8 K230 ["AssistantUseMarkdownPackage"]
      775 CALL                             R7 1 1
      776 CALL                             R7 0 1
      777 SETTABLEKS                       R7 R4 K231 ["FFlagAssistantUseMarkdownPackage"]
      779 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      781 LOADK                            R8 K232 ["AssistantUseNewTags"]
      782 CALL                             R7 1 1
      783 CALL                             R7 0 1
      784 SETTABLEKS                       R7 R4 K233 ["FFlagAssistantUseNewTags"]
      786 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      788 LOADK                            R8 K234 ["AssistantUseRemoteService2"]
      789 CALL                             R7 1 1
      790 CALL                             R7 0 1
      791 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantUseRemoteService"]
      793 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      795 LOADK                            R8 K236 ["AssistantUseRemoteServiceExp"]
      796 CALL                             R7 1 1
      797 CALL                             R7 0 1
      798 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantUseRemoteServiceExp"]
      800 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      802 LOADK                            R8 K238 ["AssistantUseVariantHttpTransport"]
      803 CALL                             R7 1 1
      804 CALL                             R7 0 1
      805 SETTABLEKS                       R7 R4 K239 ["FFlagAssistantUseVariantHttpTransport"]
      807 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      809 LOADK                            R8 K240 ["AssistantVersionMismatchWarning"]
      810 CALL                             R7 1 1
      811 CALL                             R7 0 1
      812 SETTABLEKS                       R7 R4 K241 ["FFlagAssistantVersionMismatchWarning"]
      814 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      816 LOADK                            R8 K242 ["AssistantVideoCaptureTool"]
      817 CALL                             R7 1 1
      818 CALL                             R7 0 1
      819 SETTABLEKS                       R7 R4 K243 ["FFlagAssistantVideoCaptureTool"]
      821 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      823 LOADK                            R9 K244 ["AssistantVirtualInputEnabled"]
      824 CALL                             R8 1 1
      825 CALL                             R8 0 1
      826 AND                              R7 R8 R6
      827 SETTABLEKS                       R7 R4 K245 ["FFlagAssistantVirtualInputEnabled"]
      829 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      831 LOADK                            R8 K246 ["AsssistantFixMarkdownRendererErrorForBracket"]
      832 CALL                             R7 1 1
      833 CALL                             R7 0 1
      834 SETTABLEKS                       R7 R4 K247 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      836 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      838 LOADK                            R8 K248 ["DebugAssistantMultiPlayerAgentsLog"]
      839 CALL                             R7 1 1
      840 CALL                             R7 0 1
      841 SETTABLEKS                       R7 R4 K249 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      843 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      845 LOADK                            R8 K250 ["DebugEnableTestLLMAdapter"]
      846 CALL                             R7 1 1
      847 CALL                             R7 0 1
      848 SETTABLEKS                       R7 R4 K251 ["FFlagDebugEnableTestLLMAdapter"]
      850 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      852 LOADK                            R8 K252 ["DebugMockPrimitiveGenBackend"]
      853 CALL                             R7 1 1
      854 CALL                             R7 0 1
      855 SETTABLEKS                       R7 R4 K253 ["FFlagDebugMockPrimitiveGenBackend"]
      857 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      859 LOADK                            R8 K254 ["DebugPrimGenDMNoReachable"]
      860 CALL                             R7 1 1
      861 CALL                             R7 0 1
      862 SETTABLEKS                       R7 R4 K255 ["FFlagDebugPrimGenDMNoReachable"]
      864 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      866 LOADK                            R8 K256 ["DisableMCPConnectionIndicator"]
      867 CALL                             R7 1 1
      868 CALL                             R7 0 1
      869 SETTABLEKS                       R7 R4 K257 ["FFlagDisableMCPConnectionIndicator"]
      871 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      873 LOADK                            R8 K258 ["FFlagDisableNavigationConfirmation"]
      874 CALL                             R7 1 1
      875 CALL                             R7 0 1
      876 SETTABLEKS                       R7 R4 K258 ["FFlagDisableNavigationConfirmation"]
      878 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      880 LOADK                            R8 K259 ["DisableNewSmartSize"]
      881 CALL                             R7 1 1
      882 CALL                             R7 0 1
      883 SETTABLEKS                       R7 R4 K260 ["FFlagDisableNewSmartSize"]
      885 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      887 LOADK                            R8 K261 ["DisableOldSmartSize"]
      888 CALL                             R7 1 1
      889 CALL                             R7 0 1
      890 SETTABLEKS                       R7 R4 K262 ["FFlagDisableOldSmartSize"]
      892 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      894 LOADK                            R8 K263 ["FFlagDisableStartStopPlayConfirmation"]
      895 CALL                             R7 1 1
      896 CALL                             R7 0 1
      897 SETTABLEKS                       R7 R4 K263 ["FFlagDisableStartStopPlayConfirmation"]
      899 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      901 LOADK                            R8 K264 ["FFlagDisableUserInputConfirmation"]
      902 CALL                             R7 1 1
      903 CALL                             R7 0 1
      904 SETTABLEKS                       R7 R4 K264 ["FFlagDisableUserInputConfirmation"]
      906 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      908 LOADK                            R8 K265 ["EnableAssistantImageUpload"]
      909 CALL                             R7 1 1
      910 CALL                             R7 0 1
      911 SETTABLEKS                       R7 R4 K266 ["FFlagEnableAssistantImageUpload"]
      913 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      915 LOADK                            R8 K267 ["EnablePlaytestSubagent"]
      916 CALL                             R7 1 1
      917 CALL                             R7 0 1
      918 SETTABLEKS                       R7 R4 K268 ["FFlagEnablePlaytestSubagent"]
      920 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      922 LOADK                            R8 K269 ["Gen3dSegmentationSelector"]
      923 CALL                             R7 1 1
      924 CALL                             R7 0 1
      925 SETTABLEKS                       R7 R4 K270 ["FFlagGen3dSegmentationSelector"]
      927 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      929 LOADK                            R8 K271 ["MCPAssistantAzureOpenAI"]
      930 CALL                             R7 1 1
      931 CALL                             R7 0 1
      932 SETTABLEKS                       R7 R4 K272 ["FFlagMCPAssistantAzureOpenAI"]
      934 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      936 LOADK                            R8 K273 ["MCPAssistantManagementMenu5"]
      937 CALL                             R7 1 1
      938 CALL                             R7 0 1
      939 SETTABLEKS                       R7 R4 K274 ["FFlagMCPAssistantManagementMenu"]
      941 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      943 LOADK                            R8 K275 ["MCPAssistantOpenAIPreserveThinking"]
      944 CALL                             R7 1 1
      945 CALL                             R7 0 1
      946 SETTABLEKS                       R7 R4 K276 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      948 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      950 LOADK                            R8 K277 ["MCPAssistantOpenAIThinkingEnabled"]
      951 CALL                             R7 1 1
      952 CALL                             R7 0 1
      953 SETTABLEKS                       R7 R4 K278 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      955 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      957 LOADK                            R8 K279 ["MCPConnectionIndicatorTooltip"]
      958 CALL                             R7 1 1
      959 CALL                             R7 0 1
      960 SETTABLEKS                       R7 R4 K280 ["FFlagMCPConnectionIndicatorTooltip"]
      962 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      964 LOADK                            R8 K281 ["MCPContentNormalization"]
      965 CALL                             R7 1 1
      966 CALL                             R7 0 1
      967 SETTABLEKS                       R7 R4 K282 ["FFlagMCPContentNormalization"]
      969 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      971 LOADK                            R8 K283 ["MCPEnableToolDisabling"]
      972 CALL                             R7 1 1
      973 CALL                             R7 0 1
      974 SETTABLEKS                       R7 R4 K284 ["FFlagMCPEnableToolDisabling"]
      976 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      978 LOADK                            R8 K285 ["PlaytestVision"]
      979 CALL                             R7 1 1
      980 CALL                             R7 0 1
      981 SETTABLEKS                       R7 R4 K286 ["FFlagPlaytestVision"]
      983 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      985 LOADK                            R8 K287 ["PrimGenAllowReInsert"]
      986 CALL                             R7 1 1
      987 CALL                             R7 0 1
      988 SETTABLEKS                       R7 R4 K288 ["FFlagPrimGenAllowReInsert"]
      990 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      992 LOADK                            R8 K289 ["PrimGenBetterErrorType"]
      993 CALL                             R7 1 1
      994 CALL                             R7 0 1
      995 SETTABLEKS                       R7 R4 K290 ["FFlagPrimGenBetterErrorType"]
      997 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      999 LOADK                            R8 K291 ["PrimGenCarouselPreview"]
     1000 CALL                             R7 1 1
     1001 CALL                             R7 0 1
     1002 SETTABLEKS                       R7 R4 K292 ["FFlagPrimGenCarouselPreview"]
     1004 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1006 LOADK                            R8 K293 ["PrimGenDetectMineTypeFromContent"]
     1007 CALL                             R7 1 1
     1008 CALL                             R7 0 1
     1009 SETTABLEKS                       R7 R4 K294 ["FFlagPrimGenDetectMineTypeFromContent"]
     1011 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1013 LOADK                            R8 K295 ["PrimGenImageGenPromptTemplateEnabled"]
     1014 CALL                             R7 1 1
     1015 CALL                             R7 0 1
     1016 SETTABLEKS                       R7 R4 K296 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1018 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1020 LOADK                            R8 K297 ["PrimGenSchemaSelector"]
     1021 CALL                             R7 1 1
     1022 CALL                             R7 0 1
     1023 SETTABLEKS                       R7 R4 K298 ["FFlagPrimGenSchemaSelector"]
     1025 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1027 LOADK                            R8 K299 ["PrimGenVerboseDmIsUnReachableMsg"]
     1028 CALL                             R7 1 1
     1029 CALL                             R7 0 1
     1030 SETTABLEKS                       R7 R4 K300 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1032 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1034 LOADK                            R8 K301 ["PrimGenVersionMismatchError"]
     1035 CALL                             R7 1 1
     1036 CALL                             R7 0 1
     1037 SETTABLEKS                       R7 R4 K302 ["FFlagPrimGenVersionMismatchError"]
     1039 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1041 LOADK                            R8 K303 ["PropertiesExposeContentView"]
     1042 CALL                             R7 1 1
     1043 CALL                             R7 0 1
     1044 SETTABLEKS                       R7 R4 K304 ["FFlagPropertiesExposeContentView"]
     1046 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1048 LOADK                            R8 K305 ["ScreenCaptureCamera"]
     1049 CALL                             R7 1 1
     1050 CALL                             R7 0 1
     1051 SETTABLEKS                       R7 R4 K306 ["FFlagScreenCaptureCamera"]
     1053 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1055 LOADK                            R8 K307 ["ScriptDebuggerServiceEnabled2"]
     1056 CALL                             R7 1 1
     1057 CALL                             R7 0 1
     1058 SETTABLEKS                       R7 R4 K308 ["FFlagScriptDebuggerServiceEnabled"]
     1060 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1062 LOADK                            R8 K309 ["SegmentationFastFollow"]
     1063 CALL                             R7 1 1
     1064 CALL                             R7 0 1
     1065 SETTABLEKS                       R7 R4 K310 ["FFlagSegmentationFastFollow"]
     1067 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1069 LOADK                            R8 K311 ["StudioOpenCloudMCP"]
     1070 CALL                             R7 1 1
     1071 CALL                             R7 0 1
     1072 SETTABLEKS                       R7 R4 K312 ["FFlagStudioOpenCloudMCP"]
     1074 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1076 LOADK                            R8 K313 ["SubagentScriptEditAutoConfirmation"]
     1077 CALL                             R7 1 1
     1078 CALL                             R7 0 1
     1079 SETTABLEKS                       R7 R4 K314 ["FFlagSubagentScriptEditAutoConfirmation"]
     1081 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1083 LOADK                            R8 K315 ["UseStudioSideListTool"]
     1084 CALL                             R7 1 1
     1085 CALL                             R7 0 1
     1086 SETTABLEKS                       R7 R4 K316 ["FFlagUseStudioSideListTool"]
     1088 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1090 LOADK                            R8 K318 ["AmrAssetDependencyGrantEventTimeout"]
     1091 LOADN                            R9 40
     1092 CALL                             R7 2 1
     1093 CALL                             R7 0 1
     1094 SETTABLEKS                       R7 R4 K319 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1096 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1098 LOADK                            R8 K320 ["AssistantAutoSaveInterval"]
     1099 LOADN                            R9 60
     1100 CALL                             R7 2 1
     1101 CALL                             R7 0 1
     1102 SETTABLEKS                       R7 R4 K321 ["FIntAssistantAutoSaveInterval"]
     1104 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1106 LOADK                            R8 K322 ["AssistantDebugToolMaxOutput"]
     1107 LOADN                            R9 20000
     1108 CALL                             R7 2 1
     1109 CALL                             R7 0 1
     1110 SETTABLEKS                       R7 R4 K323 ["FIntAssistantDebugToolMaxOutput"]
     1112 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1114 LOADK                            R8 K324 ["AssistantJobWaitDefaultTimeout"]
     1115 LOADN                            R9 600
     1116 CALL                             R7 2 1
     1117 CALL                             R7 0 1
     1118 SETTABLEKS                       R7 R4 K325 ["FIntAssistantJobWaitDefaultTimeout"]
     1120 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1122 LOADK                            R8 K326 ["AssistantMaxDisplayTextChars"]
     1123 LOADK                            R9 K327 [100000]
     1124 CALL                             R7 2 1
     1125 CALL                             R7 0 1
     1126 SETTABLEKS                       R7 R4 K328 ["FIntAssistantMaxDisplayTextChars"]
     1128 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1130 LOADK                            R8 K329 ["AssistantMaxToolInputStringLen"]
     1131 LOADN                            R9 2000
     1132 CALL                             R7 2 1
     1133 CALL                             R7 0 1
     1134 SETTABLEKS                       R7 R4 K330 ["FIntAssistantMaxToolInputStringLen"]
     1136 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1138 LOADK                            R8 K331 ["AssistantMeshGenMaxTrianglesDefault"]
     1139 LOADN                            R9 10000
     1140 CALL                             R7 2 1
     1141 CALL                             R7 0 1
     1142 SETTABLEKS                       R7 R4 K332 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1144 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1146 LOADK                            R8 K333 ["AssistantMinPopoverHeight"]
     1147 LOADN                            R9 150
     1148 CALL                             R7 2 1
     1149 CALL                             R7 0 1
     1150 SETTABLEKS                       R7 R4 K334 ["FIntAssistantMinPopoverHeight"]
     1152 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1154 LOADK                            R8 K335 ["AssistantPersistenceMessageLoadLimit"]
     1155 LOADN                            R9 5
     1156 CALL                             R7 2 1
     1157 CALL                             R7 0 1
     1158 SETTABLEKS                       R7 R4 K336 ["FIntAssistantPersistenceMessageLoadLimit"]
     1160 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1162 LOADK                            R8 K337 ["AssistantPersistenceThreadLoadLimit"]
     1163 LOADN                            R9 5
     1164 CALL                             R7 2 1
     1165 CALL                             R7 0 1
     1166 SETTABLEKS                       R7 R4 K338 ["FIntAssistantPersistenceThreadLoadLimit"]
     1168 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1170 LOADK                            R8 K339 ["AssistantPostTurnRefreshDelaySeconds"]
     1171 LOADN                            R9 2
     1172 CALL                             R7 2 1
     1173 CALL                             R7 0 1
     1174 SETTABLEKS                       R7 R4 K340 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1176 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1178 LOADK                            R8 K341 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1179 LOADN                            R9 999
     1180 CALL                             R7 2 1
     1181 CALL                             R7 0 1
     1182 SETTABLEKS                       R7 R4 K342 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1184 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1186 LOADK                            R8 K343 ["AssistantPrimitiveGenPollIntervalMs"]
     1187 LOADN                            R9 2000
     1188 CALL                             R7 2 1
     1189 CALL                             R7 0 1
     1190 SETTABLEKS                       R7 R4 K344 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1192 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1194 LOADK                            R8 K345 ["AssistantProcessEventTimeoutMS"]
     1195 LOADK                            R9 K346 [60000]
     1196 CALL                             R7 2 1
     1197 CALL                             R7 0 1
     1198 SETTABLEKS                       R7 R4 K347 ["FIntAssistantProcessEventTimeoutMS"]
     1200 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1202 LOADK                            R8 K348 ["AssistantSegmentMeshMaxUserParts"]
     1203 LOADN                            R9 16
     1204 CALL                             R7 2 1
     1205 CALL                             R7 0 1
     1206 SETTABLEKS                       R7 R4 K349 ["FIntAssistantSegmentMeshMaxUserParts"]
     1208 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1210 LOADK                            R8 K350 ["ConvAIMaxHistoryCount"]
     1211 LOADN                            R9 6
     1212 CALL                             R7 2 1
     1213 CALL                             R7 0 1
     1214 SETTABLEKS                       R7 R4 K351 ["FIntConvAIMaxHistoryCount"]
     1216 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1218 LOADK                            R8 K352 ["ConvAIMeshGenGenerationRetryLimit"]
     1219 LOADN                            R9 4
     1220 CALL                             R7 2 1
     1221 CALL                             R7 0 1
     1222 SETTABLEKS                       R7 R4 K353 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1224 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1226 LOADK                            R8 K354 ["ConvAIMeshGenPublishAttemptLimit"]
     1227 LOADN                            R9 5
     1228 CALL                             R7 2 1
     1229 CALL                             R7 0 1
     1230 SETTABLEKS                       R7 R4 K355 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1232 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1234 LOADK                            R8 K356 ["ExecuteLuauMaxJsonLength"]
     1235 LOADK                            R9 K327 [100000]
     1236 CALL                             R7 2 1
     1237 CALL                             R7 0 1
     1238 SETTABLEKS                       R7 R4 K357 ["FIntExecuteLuauMaxJsonLength"]
     1240 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1242 LOADK                            R8 K358 ["ExecuteLuauMaxStringLength"]
     1243 LOADK                            R9 K327 [100000]
     1244 CALL                             R7 2 1
     1245 CALL                             R7 0 1
     1246 SETTABLEKS                       R7 R4 K359 ["FIntExecuteLuauMaxStringLength"]
     1248 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1250 LOADK                            R8 K360 ["FactorDelayPreview"]
     1251 LOADN                            R9 1
     1252 CALL                             R7 2 1
     1253 CALL                             R7 0 1
     1254 SETTABLEKS                       R7 R4 K361 ["FIntFactorDelayPreview"]
     1256 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1258 LOADK                            R8 K362 ["FromHistoryMaxResultChars"]
     1259 LOADK                            R9 K363 [200000]
     1260 CALL                             R7 2 1
     1261 CALL                             R7 0 1
     1262 SETTABLEKS                       R7 R4 K364 ["FIntFromHistoryMaxResultChars"]
     1264 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1266 LOADK                            R8 K365 ["GameTreeDefaultHeadLimit"]
     1267 LOADN                            R9 200
     1268 CALL                             R7 2 1
     1269 CALL                             R7 0 1
     1270 SETTABLEKS                       R7 R4 K366 ["FIntGameTreeDefaultHeadLimit"]
     1272 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1274 LOADK                            R8 K367 ["GameTreeDefaultMaxDepth"]
     1275 LOADN                            R9 3
     1276 CALL                             R7 2 1
     1277 CALL                             R7 0 1
     1278 SETTABLEKS                       R7 R4 K368 ["FIntGameTreeDefaultMaxDepth"]
     1280 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1282 LOADK                            R8 K369 ["GameTreeMaxAbsoluteDepth"]
     1283 LOADN                            R9 10
     1284 CALL                             R7 2 1
     1285 CALL                             R7 0 1
     1286 SETTABLEKS                       R7 R4 K370 ["FIntGameTreeMaxAbsoluteDepth"]
     1288 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1290 LOADK                            R8 K371 ["InspectInstanceMaxJsonLength"]
     1291 LOADN                            R9 500
     1292 CALL                             R7 2 1
     1293 CALL                             R7 0 1
     1294 SETTABLEKS                       R7 R4 K372 ["FIntInspectInstanceMaxJsonLength"]
     1296 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1298 LOADK                            R8 K373 ["InspectInstanceMaxMatches"]
     1299 LOADN                            R9 20
     1300 CALL                             R7 2 1
     1301 CALL                             R7 0 1
     1302 SETTABLEKS                       R7 R4 K374 ["FIntInspectInstanceMaxMatches"]
     1304 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1306 LOADK                            R8 K375 ["InspectInstanceMaxStringLength"]
     1307 LOADN                            R9 1000
     1308 CALL                             R7 2 1
     1309 CALL                             R7 0 1
     1310 SETTABLEKS                       R7 R4 K376 ["FIntInspectInstanceMaxStringLength"]
     1312 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1314 LOADK                            R8 K377 ["MCPAssistantGenerationIndicatorWarningTime"]
     1315 LOADN                            R9 10
     1316 CALL                             R7 2 1
     1317 CALL                             R7 0 1
     1318 SETTABLEKS                       R7 R4 K378 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1320 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1322 LOADK                            R8 K379 ["MCPAssistantInputAreaCharLimit"]
     1323 LOADN                            R9 4000
     1324 CALL                             R7 2 1
     1325 CALL                             R7 0 1
     1326 SETTABLEKS                       R7 R4 K380 ["FIntMCPAssistantInputAreaCharLimit"]
     1328 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1330 LOADK                            R8 K381 ["MCPAssistantMaxPromptHistory"]
     1331 LOADN                            R9 20
     1332 CALL                             R7 2 1
     1333 CALL                             R7 0 1
     1334 SETTABLEKS                       R7 R4 K382 ["FIntMCPAssistantMaxPromptHistory"]
     1336 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1338 LOADK                            R8 K383 ["MCPAssistantMaxToolCalls"]
     1339 LOADN                            R9 20
     1340 CALL                             R7 2 1
     1341 CALL                             R7 0 1
     1342 SETTABLEKS                       R7 R4 K384 ["FIntMCPAssistantMaxToolCalls"]
     1344 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1346 LOADK                            R8 K385 ["MinimumAssistantFreeTrialRemaining"]
     1347 LOADN                            R9 1
     1348 CALL                             R7 2 1
     1349 CALL                             R7 0 1
     1350 SETTABLEKS                       R7 R4 K386 ["FIntMinimumAssistantFreeTrialRemaining"]
     1352 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1354 LOADK                            R8 K387 ["MinimumAssistantRobuxBalance"]
     1355 LOADN                            R9 100
     1356 CALL                             R7 2 1
     1357 CALL                             R7 0 1
     1358 SETTABLEKS                       R7 R4 K388 ["FIntMinimumAssistantRobuxBalance"]
     1360 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1362 LOADK                            R8 K389 ["PlaytestLookBudget"]
     1363 LOADN                            R9 7
     1364 CALL                             R7 2 1
     1365 CALL                             R7 0 1
     1366 SETTABLEKS                       R7 R4 K390 ["FIntPlaytestLookBudget"]
     1368 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1370 LOADK                            R8 K391 ["PlaytestLookTimeoutMs"]
     1371 LOADK                            R9 K346 [60000]
     1372 CALL                             R7 2 1
     1373 CALL                             R7 0 1
     1374 SETTABLEKS                       R7 R4 K392 ["FIntPlaytestLookTimeoutMs"]
     1376 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1378 LOADK                            R8 K393 ["PlaytestMaxToolCalls"]
     1379 LOADN                            R9 50
     1380 CALL                             R7 2 1
     1381 CALL                             R7 0 1
     1382 SETTABLEKS                       R7 R4 K394 ["FIntPlaytestMaxToolCalls"]
     1384 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1386 LOADK                            R8 K395 ["PrimGenLongRunThresholdSec"]
     1387 LOADN                            R9 120
     1388 CALL                             R7 2 1
     1389 CALL                             R7 0 1
     1390 SETTABLEKS                       R7 R4 K396 ["FIntPrimGenLongRunThresholdSec"]
     1392 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1394 LOADK                            R8 K397 ["PrimGenTextMaxLength"]
     1395 LOADN                            R9 80
     1396 CALL                             R7 2 1
     1397 CALL                             R7 0 1
     1398 SETTABLEKS                       R7 R4 K398 ["FIntPrimGenTextMaxLength"]
     1400 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1402 LOADK                            R8 K399 ["PrimGenVerticalGutter"]
     1403 LOADN                            R9 10
     1404 CALL                             R7 2 1
     1405 CALL                             R7 0 1
     1406 SETTABLEKS                       R7 R4 K400 ["FIntPrimGenVerticalGutter"]
     1408 GETTABLEKS                       R7 R3 K317 ["createGetFInt"]
     1410 LOADK                            R8 K401 ["UnitTestSubagentMaxToolCalls"]
     1411 LOADN                            R9 100
     1412 CALL                             R7 2 1
     1413 CALL                             R7 0 1
     1414 SETTABLEKS                       R7 R4 K402 ["FIntUnitTestSubagentMaxToolCalls"]
     1416 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1418 LOADK                            R8 K404 ["AssistantDebugCreditMeteringBlockReason"]
     1419 LOADK                            R9 K405 [""]
     1420 CALL                             R7 2 1
     1421 CALL                             R7 0 1
     1422 SETTABLEKS                       R7 R4 K406 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1424 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1426 LOADK                            R8 K407 ["AssistantDisabledSubagents"]
     1427 LOADK                            R9 K405 [""]
     1428 CALL                             R7 2 1
     1429 CALL                             R7 0 1
     1430 SETTABLEKS                       R7 R4 K408 ["FStringAssistantDisabledSubagents"]
     1432 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1434 LOADK                            R8 K409 ["AssistantGen3dDefaultModel"]
     1435 LOADK                            R9 K410 ["Assistant/glm51-h200"]
     1436 CALL                             R7 2 1
     1437 CALL                             R7 0 1
     1438 SETTABLEKS                       R7 R4 K411 ["FStringAssistantGen3dDefaultModel"]
     1440 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1442 LOADK                            R8 K412 ["AssistantImageGenHostOverride"]
     1443 LOADK                            R9 K405 [""]
     1444 CALL                             R7 2 1
     1445 CALL                             R7 0 1
     1446 SETTABLEKS                       R7 R4 K413 ["FStringAssistantImageGenHostOverride"]
     1448 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1450 LOADK                            R8 K414 ["AssistantJobRunTools"]
     1451 LOADK                            R9 K415 ["generate_procedural_model,generate_mesh,generate_material"]
     1452 CALL                             R7 2 1
     1453 CALL                             R7 0 1
     1454 SETTABLEKS                       R7 R4 K416 ["FStringAssistantJobRunTools"]
     1456 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1458 LOADK                            R8 K417 ["AssistantMeshGenImageGenModelOverride"]
     1459 LOADK                            R9 K418 ["gemini"]
     1460 CALL                             R7 2 1
     1461 CALL                             R7 0 1
     1462 SETTABLEKS                       R7 R4 K419 ["FStringAssistantMeshGenImageGenModelOverride"]
     1464 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1466 LOADK                            R8 K420 ["AssistantMeshGenImageGenPromptTemplate"]
     1467 LOADK                            R9 K405 [""]
     1468 CALL                             R7 2 1
     1469 CALL                             R7 0 1
     1470 SETTABLEKS                       R7 R4 K421 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1472 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1474 LOADK                            R8 K422 ["AssistantMeshGenInferenceServiceOverride"]
     1475 LOADK                            R9 K423 ["stage-diff-mesh-gen"]
     1476 CALL                             R7 2 1
     1477 CALL                             R7 0 1
     1478 SETTABLEKS                       R7 R4 K424 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1480 GETIMPORT                        R7 K5 [require]
     1482 GETTABLEKS                       R8 R0 K425 ["FlagUtils"]
     1484 GETTABLEKS                       R8 R8 K426 ["createGetFStringAssistantMeshGenSchemaData"]
     1486 CALL                             R7 1 1
     1487 CALL                             R7 0 1
     1488 SETTABLEKS                       R7 R4 K427 ["FStringAssistantMeshGenSchemaData"]
     1490 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1492 LOADK                            R8 K428 ["AssistantModerateErrorMsg"]
     1493 LOADK                            R9 K429 ["prompt violates Roblox safety policy"]
     1494 CALL                             R7 2 1
     1495 CALL                             R7 0 1
     1496 SETTABLEKS                       R7 R4 K430 ["FStringAssistantModerateErrorMsg"]
     1498 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1500 LOADK                            R8 K431 ["AssistantSkillsAllowlist"]
     1501 LOADK                            R9 K432 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false"]
     1502 CALL                             R7 2 1
     1503 CALL                             R7 0 1
     1504 SETTABLEKS                       R7 R4 K433 ["FStringAssistantSkillsAllowlist"]
     1506 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1508 LOADK                            R8 K434 ["AssistantTestLLMReasoningEffort"]
     1509 LOADK                            R9 K435 ["high"]
     1510 CALL                             R7 2 1
     1511 CALL                             R7 0 1
     1512 SETTABLEKS                       R7 R4 K436 ["FStringAssistantTestLLMReasoningEffort"]
     1514 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1516 LOADK                            R8 K437 ["AssistantToolsExcludedDirectories"]
     1517 LOADK                            R9 K438 ["CoreGui,PlayerGui,LoadedCode"]
     1518 CALL                             R7 2 1
     1519 CALL                             R7 0 1
     1520 SETTABLEKS                       R7 R4 K439 ["FStringAssistantToolsExcludedDirectories"]
     1522 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1524 LOADK                            R8 K440 ["AssistantToolWidgetMappings"]
     1525 LOADK                            R9 K405 [""]
     1526 CALL                             R7 2 1
     1527 CALL                             R7 0 1
     1528 SETTABLEKS                       R7 R4 K441 ["FStringAssistantToolWidgetMappings"]
     1530 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1532 LOADK                            R8 K442 ["AssistantUnitTestSubagentModel"]
     1533 LOADK                            R9 K443 ["Assistant/glm5"]
     1534 CALL                             R7 2 1
     1535 CALL                             R7 0 1
     1536 SETTABLEKS                       R7 R4 K444 ["FStringAssistantUnitTestSubagentModel"]
     1538 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1540 LOADK                            R8 K445 ["AssistantUntitledChatPlaceholderText"]
     1541 LOADK                            R9 K446 ["Untitled Chat"]
     1542 CALL                             R7 2 1
     1543 CALL                             R7 0 1
     1544 SETTABLEKS                       R7 R4 K447 ["FStringAssistantUntitledChatPlaceholder"]
     1546 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1548 LOADK                            R8 K448 ["ConvAIMeshGenModerationUrl"]
     1549 LOADK                            R9 K449 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1550 CALL                             R7 2 1
     1551 CALL                             R7 0 1
     1552 SETTABLEKS                       R7 R4 K450 ["FStringConvAIMeshGenModerationUrl"]
     1554 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1556 LOADK                            R8 K451 ["MCPAssistantAnthropicModels"]
     1557 LOADK                            R9 K452 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1558 CALL                             R7 2 1
     1559 CALL                             R7 0 1
     1560 SETTABLEKS                       R7 R4 K453 ["FStringMCPAssistantAnthropicModels"]
     1562 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1564 LOADK                            R8 K454 ["MCPAssistantClaudeAPIKey"]
     1565 LOADK                            R9 K405 [""]
     1566 CALL                             R7 2 1
     1567 CALL                             R7 0 1
     1568 SETTABLEKS                       R7 R4 K455 ["FStringMCPAssistantClaudeAPIKey"]
     1570 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1572 LOADK                            R8 K456 ["MCPAssistantCustomModelName"]
     1573 LOADK                            R9 K405 [""]
     1574 CALL                             R7 2 1
     1575 CALL                             R7 0 1
     1576 SETTABLEKS                       R7 R4 K457 ["FStringMCPAssistantCustomModelName"]
     1578 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1580 LOADK                            R8 K458 ["MCPAssistantGeminiAPIKey"]
     1581 LOADK                            R9 K405 [""]
     1582 CALL                             R7 2 1
     1583 CALL                             R7 0 1
     1584 SETTABLEKS                       R7 R4 K459 ["FStringMCPAssistantGeminiAPIKey"]
     1586 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1588 LOADK                            R8 K460 ["MCPAssistantGeminiModels"]
     1589 LOADK                            R9 K461 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1590 CALL                             R7 2 1
     1591 CALL                             R7 0 1
     1592 SETTABLEKS                       R7 R4 K462 ["FStringMCPAssistantGeminiModels"]
     1594 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1596 LOADK                            R8 K463 ["MCPAssistantOpenAIAPIKey"]
     1597 LOADK                            R9 K405 [""]
     1598 CALL                             R7 2 1
     1599 CALL                             R7 0 1
     1600 SETTABLEKS                       R7 R4 K464 ["FStringMCPAssistantOpenAIAPIKey"]
     1602 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1604 LOADK                            R8 K465 ["MCPAssistantOpenAIModels"]
     1605 LOADK                            R9 K466 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1606 CALL                             R7 2 1
     1607 CALL                             R7 0 1
     1608 SETTABLEKS                       R7 R4 K467 ["FStringMCPAssistantOpenAIModels"]
     1610 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1612 LOADK                            R8 K468 ["MCPAssistantOpenAIReasoningEffort"]
     1613 LOADK                            R9 K405 [""]
     1614 CALL                             R7 2 1
     1615 CALL                             R7 0 1
     1616 SETTABLEKS                       R7 R4 K469 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1618 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1620 LOADK                            R8 K470 ["MCPAssistantPrimitiveGenServerURL"]
     1621 LOADK                            R9 K405 [""]
     1622 CALL                             R7 2 1
     1623 CALL                             R7 0 1
     1624 SETTABLEKS                       R7 R4 K471 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1626 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1628 LOADK                            R8 K472 ["MCPAssistantTestLLMAPIKey"]
     1629 LOADK                            R9 K405 [""]
     1630 CALL                             R7 2 1
     1631 CALL                             R7 0 1
     1632 SETTABLEKS                       R7 R4 K473 ["FStringMCPAssistantTestLLMAPIKey"]
     1634 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1636 LOADK                            R8 K474 ["MCPAssistantURLOverride"]
     1637 LOADK                            R9 K405 [""]
     1638 CALL                             R7 2 1
     1639 CALL                             R7 0 1
     1640 SETTABLEKS                       R7 R4 K475 ["FStringMCPAssistantURLOverride"]
     1642 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1644 LOADK                            R8 K476 ["MCPDocsUrl"]
     1645 LOADK                            R9 K477 ["https://create.roblox.com/docs/studio/mcp/"]
     1646 CALL                             R7 2 1
     1647 CALL                             R7 0 1
     1648 SETTABLEKS                       R7 R4 K478 ["FStringMCPDocsUrl"]
     1650 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1652 LOADK                            R8 K479 ["PlaytestConversationURL"]
     1653 LOADK                            R9 K480 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1654 CALL                             R7 2 1
     1655 CALL                             R7 0 1
     1656 SETTABLEKS                       R7 R4 K481 ["FStringPlaytestConversationURL"]
     1658 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1660 LOADK                            R8 K482 ["PlaytestModelName"]
     1661 LOADK                            R9 K483 ["Qwen/Qwen35-35B-A3B"]
     1662 CALL                             R7 2 1
     1663 CALL                             R7 0 1
     1664 SETTABLEKS                       R7 R4 K484 ["FStringPlaytestModelName"]
     1666 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1668 LOADK                            R8 K485 ["PrimGenImageGenPromptTemplate"]
     1669 LOADK                            R9 K405 [""]
     1670 CALL                             R7 2 1
     1671 CALL                             R7 0 1
     1672 SETTABLEKS                       R7 R4 K486 ["FStringPrimGenImageGenPromptTemplate"]
     1674 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1676 LOADK                            R8 K487 ["ProceduralScriptCapabilities"]
     1677 LOADK                            R9 K488 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1678 CALL                             R7 2 1
     1679 CALL                             R7 0 1
     1680 SETTABLEKS                       R7 R4 K489 ["FStringProceduralScriptCapabilities"]
     1682 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1684 LOADK                            R8 K490 ["ScreenCaptureFormat"]
     1685 LOADK                            R9 K405 [""]
     1686 CALL                             R7 2 1
     1687 CALL                             R7 0 1
     1688 SETTABLEKS                       R7 R4 K491 ["FStringScreenCaptureFormat"]
     1690 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1692 LOADK                            R8 K492 ["ScreenCaptureSize"]
     1693 LOADK                            R9 K405 [""]
     1694 CALL                             R7 2 1
     1695 CALL                             R7 0 1
     1696 SETTABLEKS                       R7 R4 K493 ["FStringScreenCaptureSize"]
     1698 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1700 LOADK                            R8 K494 ["ScreenCaptureSubagentModelName"]
     1701 LOADK                            R9 K405 [""]
     1702 CALL                             R7 2 1
     1703 CALL                             R7 0 1
     1704 SETTABLEKS                       R7 R4 K495 ["FStringScreenCaptureSubagentModelName"]
     1706 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1708 LOADK                            R8 K496 ["SegmentByPartsBetaFeatureUrl"]
     1709 LOADK                            R9 K405 [""]
     1710 CALL                             R7 2 1
     1711 CALL                             R7 0 1
     1712 SETTABLEKS                       R7 R4 K497 ["FStringSegmentByPartsBetaFeatureUrl"]
     1714 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1716 LOADK                            R8 K498 ["StudioScopeRiskLevelsDocsUrl"]
     1717 LOADK                            R9 K499 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1718 CALL                             R7 2 1
     1719 CALL                             R7 0 1
     1720 SETTABLEKS                       R7 R4 K500 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1722 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1724 LOADK                            R8 K501 ["SubagentExploreModelName"]
     1725 LOADK                            R9 K502 ["Assistant/glm5-b200-server-1"]
     1726 CALL                             R7 2 1
     1727 CALL                             R7 0 1
     1728 SETTABLEKS                       R7 R4 K503 ["FStringSubagentExploreModelName"]
     1730 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1732 LOADK                            R8 K504 ["SubagentURLOverride"]
     1733 LOADK                            R9 K405 [""]
     1734 CALL                             R7 2 1
     1735 CALL                             R7 0 1
     1736 SETTABLEKS                       R7 R4 K505 ["FStringSubagentURLOverride"]
     1738 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1740 LOADK                            R8 K506 ["TestLLMURLOverride"]
     1741 LOADK                            R9 K405 [""]
     1742 CALL                             R7 2 1
     1743 CALL                             R7 0 1
     1744 SETTABLEKS                       R7 R4 K507 ["FStringTestLLMURLOverride"]
     1746 GETTABLEKS                       R7 R3 K403 ["createGetFString"]
     1748 LOADK                            R8 K508 ["TestSubagentURLOverride"]
     1749 LOADK                            R9 K405 [""]
     1750 CALL                             R7 2 1
     1751 CALL                             R7 0 1
     1752 SETTABLEKS                       R7 R4 K509 ["FStringTestSubagentURLOverride"]
     1754 DUPTABLE                         R9 K511 [{"__index", "__newindex"}]
     1755 SETTABLEKS                       R2 R9 K510 ["__index"]
     1757 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1759 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1761 MOVE                             R8 R4
     1762 GETIMPORT                        R7 K15 [setmetatable]
     1764 CALL                             R7 2 1
     1765 RETURN                           R7 1
