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
       46 GETTABLEKS                       R7 R3 K21 ["createGetDFFlag"]
       48 LOADK                            R8 K22 ["MCPVideoCapture2"]
       49 CALL                             R7 1 1
       50 CALL                             R7 0 1
       51 GETTABLEKS                       R8 R3 K23 ["createGetDFString"]
       53 LOADK                            R9 K24 ["GenerationServiceSchemaDefinitionPartsKey"]
       54 LOADK                            R10 K25 ["Groups"]
       55 CALL                             R8 2 1
       56 CALL                             R8 0 1
       57 SETTABLEKS                       R8 R4 K26 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       59 GETTABLEKS                       R8 R3 K27 ["createGetEngineFeature"]
       61 LOADK                            R9 K28 ["AssistantBridgeStandalone"]
       62 CALL                             R8 1 1
       63 CALL                             R8 0 1
       64 SETTABLEKS                       R8 R4 K29 ["EngineFeatureAssistantBridgeStandalone"]
       66 GETTABLEKS                       R8 R3 K27 ["createGetEngineFeature"]
       68 LOADK                            R9 K30 ["AssistantGen3dImagePreview"]
       69 CALL                             R8 1 1
       70 CALL                             R8 0 1
       71 SETTABLEKS                       R8 R4 K31 ["EngineFeatureAssistantGen3dImagePreview"]
       73 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
       75 LOADK                            R9 K32 ["AllowThreadSuspendOverride"]
       76 CALL                             R8 1 1
       77 CALL                             R8 0 1
       78 SETTABLEKS                       R8 R4 K33 ["FFlagAllowThreadSuspendOverride"]
       80 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
       82 LOADK                            R9 K34 ["AnimationGenOpenACE2"]
       83 CALL                             R8 1 1
       84 CALL                             R8 0 1
       85 SETTABLEKS                       R8 R4 K35 ["FFlagAnimationGenOpenACE"]
       87 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
       89 LOADK                            R9 K36 ["AssistantACPBatchHistoryReplay"]
       90 CALL                             R8 1 1
       91 CALL                             R8 0 1
       92 SETTABLEKS                       R8 R4 K37 ["FFlagAssistantACPBatchHistoryReplay"]
       94 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
       96 LOADK                            R9 K38 ["AssistantACPFixPendingToolCall2"]
       97 CALL                             R8 1 1
       98 CALL                             R8 0 1
       99 SETTABLEKS                       R8 R4 K39 ["FFlagAssistantACPFixPendingToolCall"]
      101 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      103 LOADK                            R9 K40 ["AssistantAddPlaceholderProp"]
      104 CALL                             R8 1 1
      105 CALL                             R8 0 1
      106 SETTABLEKS                       R8 R4 K41 ["FFlagAssistantAddPlaceholderProp"]
      108 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      110 LOADK                            R9 K42 ["AssistantAnimationGenTool"]
      111 CALL                             R8 1 1
      112 CALL                             R8 0 1
      113 SETTABLEKS                       R8 R4 K43 ["FFlagAssistantAnimationGenTool"]
      115 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      117 LOADK                            R9 K44 ["AssistantAskInputTool2"]
      118 CALL                             R8 1 1
      119 CALL                             R8 0 1
      120 SETTABLEKS                       R8 R4 K45 ["FFlagAssistantAskInputTool"]
      122 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      124 LOADK                            R9 K46 ["AssistantAskInputToolLLM2"]
      125 CALL                             R8 1 1
      126 CALL                             R8 0 1
      127 SETTABLEKS                       R8 R4 K47 ["FFlagAssistantAskInputToolLLM"]
      129 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      131 LOADK                            R9 K48 ["AssistantAssetSearchCreatorStoreUtm"]
      132 CALL                             R8 1 1
      133 CALL                             R8 0 1
      134 SETTABLEKS                       R8 R4 K49 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      136 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      138 LOADK                            R9 K50 ["AssistantAssetSearchDirectInsert"]
      139 CALL                             R8 1 1
      140 CALL                             R8 0 1
      141 SETTABLEKS                       R8 R4 K51 ["FFlagAssistantAssetSearchDirectInsert"]
      143 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      145 LOADK                            R9 K52 ["AssistantAssetSearchInsertTool2"]
      146 CALL                             R8 1 1
      147 CALL                             R8 0 1
      148 SETTABLEKS                       R8 R4 K53 ["FFlagAssistantAssetSearchInsertTool"]
      150 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      152 LOADK                            R9 K54 ["AssistantAssetSearchInsertToolABTest"]
      153 CALL                             R8 1 1
      154 CALL                             R8 0 1
      155 SETTABLEKS                       R8 R4 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      157 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      159 LOADK                            R9 K56 ["AssistantAssetTileNamePreview"]
      160 CALL                             R8 1 1
      161 CALL                             R8 0 1
      162 SETTABLEKS                       R8 R4 K57 ["FFlagAssistantAssetTileNamePreview"]
      164 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      166 LOADK                            R9 K58 ["AssistantAvatarAutoSetupTool3"]
      167 CALL                             R8 1 1
      168 CALL                             R8 0 1
      169 SETTABLEKS                       R8 R4 K59 ["FFlagAssistantAvatarAutoSetupTool"]
      171 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      173 LOADK                            R9 K60 ["AssistantBetaFeatureSkills"]
      174 CALL                             R8 1 1
      175 CALL                             R8 0 1
      176 SETTABLEKS                       R8 R4 K61 ["FFlagAssistantBetaFeatureSkills"]
      178 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      180 LOADK                            R9 K62 ["AssistantEndPlanTurnOnBuild"]
      181 CALL                             R8 1 1
      182 CALL                             R8 0 1
      183 SETTABLEKS                       R8 R4 K63 ["FFlagAssistantEndPlanTurnOnBuild"]
      185 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      187 LOADK                            R9 K64 ["AssistantChatFollowBottomThreshold"]
      188 CALL                             R8 1 1
      189 CALL                             R8 0 1
      190 SETTABLEKS                       R8 R4 K65 ["FFlagAssistantChatFollowBottomThreshold"]
      192 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      194 LOADK                            R9 K66 ["AssistantCloseDropdownsOnWidgetHidden"]
      195 CALL                             R8 1 1
      196 CALL                             R8 0 1
      197 SETTABLEKS                       R8 R4 K67 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      199 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      201 LOADK                            R9 K68 ["AssistantConfirmButtonUpdate"]
      202 CALL                             R8 1 1
      203 CALL                             R8 0 1
      204 SETTABLEKS                       R8 R4 K69 ["FFlagAssistantConfirmButtonUpdate"]
      206 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      208 LOADK                            R9 K70 ["AssistantConsoleOutputTailFromEnd2"]
      209 CALL                             R8 1 1
      210 CALL                             R8 0 1
      211 SETTABLEKS                       R8 R4 K71 ["FFlagAssistantConsoleOutputTailFromEnd"]
      213 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      215 LOADK                            R9 K72 ["AssistantCopyButton"]
      216 CALL                             R8 1 1
      217 CALL                             R8 0 1
      218 SETTABLEKS                       R8 R4 K73 ["FFlagAssistantCopyButton"]
      220 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      222 LOADK                            R9 K74 ["AssistantCreditMetering3"]
      223 CALL                             R8 1 1
      224 CALL                             R8 0 1
      225 SETTABLEKS                       R8 R4 K75 ["FFlagAssistantCreditMetering"]
      227 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      229 LOADK                            R9 K76 ["AssistantCreditMeteringAdditionalUsage"]
      230 LOADB                            R10 1
      231 CALL                             R8 2 1
      232 CALL                             R8 0 1
      233 SETTABLEKS                       R8 R4 K77 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      235 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      237 LOADK                            R9 K78 ["AssistantCreditMeteringInferBlockReason"]
      238 CALL                             R8 1 1
      239 CALL                             R8 0 1
      240 SETTABLEKS                       R8 R4 K79 ["FFlagAssistantCreditMeteringInferBlockReason"]
      242 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      244 LOADK                            R9 K80 ["AssistantCreditMeteringLocalBackend"]
      245 CALL                             R8 1 1
      246 CALL                             R8 0 1
      247 SETTABLEKS                       R8 R4 K81 ["FFlagAssistantCreditMeteringLocalBackend"]
      249 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      251 LOADK                            R9 K82 ["AssistantCreditMeteringResetPeriod"]
      252 CALL                             R8 1 1
      253 CALL                             R8 0 1
      254 SETTABLEKS                       R8 R4 K83 ["FFlagAssistantCreditMeteringResetPeriod"]
      256 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      258 LOADK                            R9 K84 ["AssistantDestroySessionMonitorsOnClose"]
      259 CALL                             R8 1 1
      260 CALL                             R8 0 1
      261 SETTABLEKS                       R8 R4 K85 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      263 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      265 LOADK                            R9 K86 ["AssistantDisableApplyEditDataModelAvailability"]
      266 CALL                             R8 1 1
      267 CALL                             R8 0 1
      268 SETTABLEKS                       R8 R4 K87 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      270 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      272 LOADK                            R9 K88 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      273 CALL                             R8 1 1
      274 CALL                             R8 0 1
      275 SETTABLEKS                       R8 R4 K89 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      277 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      279 LOADK                            R9 K90 ["AssistantDisableBranching"]
      280 CALL                             R8 1 1
      281 CALL                             R8 0 1
      282 SETTABLEKS                       R8 R4 K91 ["FFlagAssistantDisableBranching"]
      284 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      286 LOADK                            R9 K92 ["AssistantDisableForceSyncJobRun"]
      287 CALL                             R8 1 1
      288 CALL                             R8 0 1
      289 SETTABLEKS                       R8 R4 K93 ["FFlagAssistantDisableForceSyncJobRun"]
      291 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      293 LOADK                            R9 K94 ["AssistantDisableSessionFilter"]
      294 CALL                             R8 1 1
      295 CALL                             R8 0 1
      296 SETTABLEKS                       R8 R4 K95 ["FFlagAssistantDisableSessionFilter"]
      298 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      300 LOADK                            R9 K96 ["AssistantEditScrubbarPropertyRow"]
      301 CALL                             R8 1 1
      302 CALL                             R8 0 1
      303 SETTABLEKS                       R8 R4 K97 ["FFlagAssistantEditScrubbarPropertyRow"]
      305 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      307 LOADK                            R9 K98 ["AssistantEval"]
      308 CALL                             R8 1 1
      309 CALL                             R8 0 1
      310 SETTABLEKS                       R8 R4 K99 ["FFlagAssistantEval"]
      312 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      314 LOADK                            R9 K100 ["AssistantExternalInterface"]
      315 CALL                             R8 1 1
      316 CALL                             R8 0 1
      317 SETTABLEKS                       R8 R4 K101 ["FFlagAssistantExternalInterface"]
      319 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      321 LOADK                            R9 K102 ["AssistantExternalMCPPluginSettingRedundancy"]
      322 CALL                             R8 1 1
      323 CALL                             R8 0 1
      324 SETTABLEKS                       R8 R4 K103 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      326 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      328 LOADK                            R9 K104 ["AssistantFeedbackView"]
      329 CALL                             R8 1 1
      330 CALL                             R8 0 1
      331 SETTABLEKS                       R8 R4 K105 ["FFlagAssistantFeedbackView"]
      333 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      335 LOADK                            R9 K106 ["AssistantFixStartPlayHang"]
      336 CALL                             R8 1 1
      337 CALL                             R8 0 1
      338 SETTABLEKS                       R8 R4 K107 ["FFlagAssistantFixStartPlayHang"]
      340 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      342 LOADK                            R9 K108 ["AssistantForceRemoteServiceForInternal"]
      343 CALL                             R8 1 1
      344 CALL                             R8 0 1
      345 SETTABLEKS                       R8 R4 K109 ["FFlagAssistantForceRemoteServiceForInternal"]
      347 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      349 LOADK                            R9 K110 ["AssistantGen3DAssetPublishTracking"]
      350 CALL                             R8 1 1
      351 CALL                             R8 0 1
      352 SETTABLEKS                       R8 R4 K111 ["FFlagAssistantGen3DAssetPublishTracking"]
      354 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      356 LOADK                            R9 K112 ["AssistantGen3dAutoSegmentation"]
      357 CALL                             R8 1 1
      358 CALL                             R8 0 1
      359 SETTABLEKS                       R8 R4 K113 ["FFlagAssistantGen3dAutoSegmentation"]
      361 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      363 LOADK                            R9 K114 ["AssistantGen3DImagePreviewTelemetry"]
      364 CALL                             R8 1 1
      365 CALL                             R8 0 1
      366 SETTABLEKS                       R8 R4 K115 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      368 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      370 LOADK                            R9 K116 ["AssistantGen3dInputRequestedOverride"]
      371 CALL                             R8 1 1
      372 CALL                             R8 0 1
      373 SETTABLEKS                       R8 R4 K117 ["FFlagAssistantGen3dInputRequestedOverride"]
      375 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      377 LOADK                            R9 K118 ["AssistantGen3dRequirePromptToGenerate"]
      378 CALL                             R8 1 1
      379 CALL                             R8 0 1
      380 SETTABLEKS                       R8 R4 K119 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      382 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      384 LOADK                            R9 K120 ["AssistantGen3DTelemetryV2"]
      385 CALL                             R8 1 1
      386 CALL                             R8 0 1
      387 SETTABLEKS                       R8 R4 K121 ["FFlagAssistantGen3DTelemetryV2"]
      389 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      391 LOADK                            R9 K122 ["AssistantGenerateLayoutTool"]
      392 CALL                             R8 1 1
      393 CALL                             R8 0 1
      394 SETTABLEKS                       R8 R4 K123 ["FFlagAssistantGenerateLayoutTool"]
      396 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      398 LOADK                            R9 K124 ["AssistantGenerateLayoutTopDownHint"]
      399 CALL                             R8 1 1
      400 CALL                             R8 0 1
      401 SETTABLEKS                       R8 R4 K125 ["FFlagAssistantGenerateLayoutTopDownHint"]
      403 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      405 LOADK                            R9 K126 ["AssistantHidePinForBuild"]
      406 CALL                             R8 1 1
      407 CALL                             R8 0 1
      408 SETTABLEKS                       R8 R4 K127 ["FFlagAssistantHidePinForBuild"]
      410 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      412 LOADK                            R9 K128 ["AssistantHintImageAsUri2"]
      413 CALL                             R8 1 1
      414 CALL                             R8 0 1
      415 SETTABLEKS                       R8 R4 K129 ["FFlagAssistantHintImageAsUri"]
      417 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      419 LOADK                            R9 K130 ["AssistantHintMultiEditOverExecLuau"]
      420 CALL                             R8 1 1
      421 CALL                             R8 0 1
      422 SETTABLEKS                       R8 R4 K131 ["FFlagAssistantHintMultiEditOverExecLuau"]
      424 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      426 LOADK                            R9 K132 ["AssistantImageGenAbortPollOn4xx"]
      427 CALL                             R8 1 1
      428 CALL                             R8 0 1
      429 SETTABLEKS                       R8 R4 K133 ["FFlagAssistantImageGenAbortPollOn4xx"]
      431 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      433 LOADK                            R9 K134 ["AssistantImageGenImprovements"]
      434 CALL                             R8 1 1
      435 CALL                             R8 0 1
      436 SETTABLEKS                       R8 R4 K135 ["FFlagAssistantImageGenImprovements"]
      438 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      440 LOADK                            R9 K136 ["AssistantImageGenSeed"]
      441 CALL                             R8 1 1
      442 CALL                             R8 0 1
      443 SETTABLEKS                       R8 R4 K137 ["FFlagAssistantImageGenSeed"]
      445 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      447 LOADK                            R9 K138 ["AssistantImageGenUseOpenApiClient"]
      448 CALL                             R8 1 1
      449 CALL                             R8 0 1
      450 SETTABLEKS                       R8 R4 K139 ["FFlagAssistantImageGenUseOpenApiClient"]
      452 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      454 LOADK                            R9 K140 ["AssistantImageSelectionForGen3D"]
      455 CALL                             R8 1 1
      456 CALL                             R8 0 1
      457 SETTABLEKS                       R8 R4 K141 ["FFlagAssistantImageSelectionForGen3D"]
      459 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      461 LOADK                            R9 K142 ["AssistantImageSelectionWizardModeMeshGen"]
      462 CALL                             R8 1 1
      463 CALL                             R8 0 1
      464 SETTABLEKS                       R8 R4 K143 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      466 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      468 LOADK                            R9 K144 ["AssistantImageSelectionWizardModePrimitiveGen"]
      469 CALL                             R8 1 1
      470 CALL                             R8 0 1
      471 SETTABLEKS                       R8 R4 K145 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      473 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      475 LOADK                            R9 K146 ["AssistantImageSelectionWizardModeTextureGen"]
      476 CALL                             R8 1 1
      477 CALL                             R8 0 1
      478 SETTABLEKS                       R8 R4 K147 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      480 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      482 LOADK                            R9 K148 ["AssistantInputRequestedFixedFooter"]
      483 CALL                             R8 1 1
      484 CALL                             R8 0 1
      485 SETTABLEKS                       R8 R4 K149 ["FFlagAssistantInputRequestedFixedFooter"]
      487 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      489 LOADK                            R9 K150 ["AssistantInsertAssetSandboxProceduralModels"]
      490 CALL                             R8 1 1
      491 CALL                             R8 0 1
      492 SETTABLEKS                       R8 R4 K151 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      494 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      496 LOADK                            R9 K152 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      497 CALL                             R8 1 1
      498 CALL                             R8 0 1
      499 SETTABLEKS                       R8 R4 K153 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      501 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      503 LOADK                            R9 K154 ["AssistantInsertAssetSandboxScripts"]
      504 CALL                             R8 1 1
      505 CALL                             R8 0 1
      506 SETTABLEKS                       R8 R4 K155 ["FFlagAssistantInsertAssetSandboxScripts"]
      508 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      510 LOADK                            R10 K156 ["AssistantMCPVideoCapture"]
      511 CALL                             R9 1 1
      512 CALL                             R9 0 1
      513 AND                              R8 R9 R7
      514 SETTABLEKS                       R8 R4 K157 ["FFlagAssistantMCPVideoCapture"]
      516 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      518 LOADK                            R9 K158 ["AssistantMcpImageGenShortcut"]
      519 CALL                             R8 1 1
      520 CALL                             R8 0 1
      521 SETTABLEKS                       R8 R4 K159 ["FFlagAssistantMcpImageGenShortcut"]
      523 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      525 LOADK                            R9 K160 ["AssistantMeshGenAutoExpandCollapse"]
      526 CALL                             R8 1 1
      527 CALL                             R8 0 1
      528 SETTABLEKS                       R8 R4 K161 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      530 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      532 LOADK                            R9 K162 ["AssistantMeshGenCarouselPreview"]
      533 CALL                             R8 1 1
      534 CALL                             R8 0 1
      535 SETTABLEKS                       R8 R4 K163 ["FFlagAssistantMeshGenCarouselPreview"]
      537 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      539 LOADK                            R9 K164 ["AssistantMeshGenCombinedAddToPlace"]
      540 CALL                             R8 1 1
      541 CALL                             R8 0 1
      542 SETTABLEKS                       R8 R4 K165 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      544 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      546 LOADK                            R9 K166 ["AssistantMeshGenHintImage"]
      547 CALL                             R8 1 1
      548 CALL                             R8 0 1
      549 SETTABLEKS                       R8 R4 K167 ["FFlagAssistantMeshGenHintImage"]
      551 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      553 LOADK                            R9 K168 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      554 CALL                             R8 1 1
      555 CALL                             R8 0 1
      556 SETTABLEKS                       R8 R4 K169 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      558 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      560 LOADK                            R9 K170 ["AssistantMeshGenRemoveAdminOptions"]
      561 CALL                             R8 1 1
      562 CALL                             R8 0 1
      563 SETTABLEKS                       R8 R4 K171 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      565 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      567 LOADK                            R9 K172 ["AssistantMoveToolButtonsToTheRight"]
      568 CALL                             R8 1 1
      569 CALL                             R8 0 1
      570 SETTABLEKS                       R8 R4 K173 ["FFlagAssistantMoveToolButtonsToTheRight"]
      572 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      574 LOADK                            R9 K174 ["AssistantMoveToolButtonsToTheRightAgain"]
      575 CALL                             R8 1 1
      576 CALL                             R8 0 1
      577 SETTABLEKS                       R8 R4 K175 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      579 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      581 LOADK                            R9 K176 ["AssistantMultiEditExternalClient"]
      582 CALL                             R8 1 1
      583 CALL                             R8 0 1
      584 SETTABLEKS                       R8 R4 K177 ["FFlagAssistantMultiEditExternalClient"]
      586 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      588 LOADK                            R9 K178 ["AssistantOmitSlashToolCallDroppedFields"]
      589 CALL                             R8 1 1
      590 CALL                             R8 0 1
      591 SETTABLEKS                       R8 R4 K179 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      593 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      595 LOADK                            R9 K180 ["AssistantPinForBuildUI"]
      596 CALL                             R8 1 1
      597 CALL                             R8 0 1
      598 SETTABLEKS                       R8 R4 K181 ["FFlagAssistantPinForBuildUI"]
      600 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      602 LOADK                            R9 K182 ["AssistantPlanRevisionList"]
      603 CALL                             R8 1 1
      604 CALL                             R8 0 1
      605 SETTABLEKS                       R8 R4 K183 ["FFlagAssistantPlanRevisionList"]
      607 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      609 LOADK                            R9 K184 ["AssistantPlaytestContext"]
      610 CALL                             R8 1 1
      611 CALL                             R8 0 1
      612 SETTABLEKS                       R8 R4 K185 ["FFlagAssistantPlaytestContext"]
      614 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      616 LOADK                            R9 K186 ["AssistantPlaytestToolFix"]
      617 CALL                             R8 1 1
      618 CALL                             R8 0 1
      619 SETTABLEKS                       R8 R4 K187 ["FFlagAssistantPlaytestToolFix"]
      621 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      623 LOADK                            R9 K188 ["AssistantPromptHistoryFromConversation"]
      624 CALL                             R8 1 1
      625 CALL                             R8 0 1
      626 SETTABLEKS                       R8 R4 K189 ["FFlagAssistantPromptHistoryFromConversation"]
      628 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      630 LOADK                            R9 K190 ["AssistantPromptModeratedError"]
      631 CALL                             R8 1 1
      632 CALL                             R8 0 1
      633 SETTABLEKS                       R8 R4 K191 ["FFlagAssistantPromptModeratedError"]
      635 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      637 LOADK                            R9 K192 ["AssistantQuestionAnswerSkipReview"]
      638 CALL                             R8 1 1
      639 CALL                             R8 0 1
      640 SETTABLEKS                       R8 R4 K193 ["FFlagAssistantQuestionAnswerSkipReview"]
      642 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      644 LOADK                            R9 K194 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      645 CALL                             R8 1 1
      646 CALL                             R8 0 1
      647 SETTABLEKS                       R8 R4 K195 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      649 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      651 LOADK                            R10 K196 ["AssistantReplaceJobRunWithAsyncArg"]
      652 CALL                             R9 1 1
      653 CALL                             R9 0 1
      654 AND                              R8 R9 R5
      655 SETTABLEKS                       R8 R4 K197 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      657 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      659 LOADK                            R9 K198 ["AssistantRestoreMostRecentThread"]
      660 CALL                             R8 1 1
      661 CALL                             R8 0 1
      662 SETTABLEKS                       R8 R4 K199 ["FFlagAssistantRestoreMostRecentThread"]
      664 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      666 LOADK                            R9 K200 ["AssistantRevertPerThreadInputState"]
      667 CALL                             R8 1 1
      668 CALL                             R8 0 1
      669 SETTABLEKS                       R8 R4 K201 ["FFlagAssistantRevertPerThreadInputState"]
      671 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      673 LOADK                            R9 K202 ["AssistantSegmentationBridge"]
      674 CALL                             R8 1 1
      675 CALL                             R8 0 1
      676 SETTABLEKS                       R8 R4 K203 ["FFlagAssistantSegmentationBridge"]
      678 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      680 LOADK                            R9 K204 ["AssistantSegmentationPanelScroll"]
      681 CALL                             R8 1 1
      682 CALL                             R8 0 1
      683 SETTABLEKS                       R8 R4 K205 ["FFlagAssistantSegmentationPanelScroll"]
      685 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      687 LOADK                            R9 K206 ["AssistantSegmentationPromptModeSelector"]
      688 CALL                             R8 1 1
      689 CALL                             R8 0 1
      690 SETTABLEKS                       R8 R4 K207 ["FFlagAssistantSegmentationPromptModeSelector"]
      692 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      694 LOADK                            R9 K208 ["AssistantSegmentationUIFixes"]
      695 CALL                             R8 1 1
      696 CALL                             R8 0 1
      697 SETTABLEKS                       R8 R4 K209 ["FFlagAssistantSegmentationUIFixes"]
      699 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      701 LOADK                            R9 K210 ["AssistantSegmentMeshCleanupWorldWrapper"]
      702 CALL                             R8 1 1
      703 CALL                             R8 0 1
      704 SETTABLEKS                       R8 R4 K211 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      706 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      708 LOADK                            R9 K212 ["AssistantSegmentMeshTool"]
      709 CALL                             R8 1 1
      710 CALL                             R8 0 1
      711 SETTABLEKS                       R8 R4 K213 ["FFlagAssistantSegmentMeshTool"]
      713 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      715 LOADK                            R9 K214 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      716 CALL                             R8 1 1
      717 CALL                             R8 0 1
      718 SETTABLEKS                       R8 R4 K215 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      720 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      722 LOADK                            R9 K216 ["AssistantSerializeToolConfirmation"]
      723 CALL                             R8 1 1
      724 CALL                             R8 0 1
      725 SETTABLEKS                       R8 R4 K217 ["FFlagAssistantSerializeToolConfirmation"]
      727 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      729 LOADK                            R9 K218 ["AssistantSkillImport"]
      730 CALL                             R8 1 1
      731 CALL                             R8 0 1
      732 SETTABLEKS                       R8 R4 K219 ["FFlagAssistantSkillImport"]
      734 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      736 LOADK                            R9 K220 ["AssistantSkillToolNameReplace"]
      737 CALL                             R8 1 1
      738 CALL                             R8 0 1
      739 SETTABLEKS                       R8 R4 K221 ["FFlagAssistantSkillToolNameReplace"]
      741 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      743 LOADK                            R9 K222 ["AssistantSlashCommandStepBackNavigation"]
      744 CALL                             R8 1 1
      745 CALL                             R8 0 1
      746 SETTABLEKS                       R8 R4 K223 ["FFlagAssistantSlashCommandStepBackNavigation"]
      748 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      750 LOADK                            R9 K224 ["AssistantSlashToolNameAndError"]
      751 CALL                             R8 1 1
      752 CALL                             R8 0 1
      753 SETTABLEKS                       R8 R4 K225 ["FFlagAssistantSlashToolNameAndError"]
      755 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      757 LOADK                            R9 K226 ["AssistantStandaloneDataModel"]
      758 CALL                             R8 1 1
      759 CALL                             R8 0 1
      760 SETTABLEKS                       R8 R4 K227 ["FFlagAssistantStandaloneDataModel"]
      762 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      764 LOADK                            R9 K228 ["AssistantStartStopPlayBusyCheck"]
      765 CALL                             R8 1 1
      766 CALL                             R8 0 1
      767 SETTABLEKS                       R8 R4 K229 ["FFlagAssistantStartStopPlayBusyCheck"]
      769 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      771 LOADK                            R9 K230 ["AssistantRestoreCameraStateInExec"]
      772 CALL                             R8 1 1
      773 CALL                             R8 0 1
      774 SETTABLEKS                       R8 R4 K231 ["FFlagAssistantRestoreCameraStateInExec"]
      776 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      778 LOADK                            R9 K232 ["AssistantRestoreCameraStateInExecWarn"]
      779 CALL                             R8 1 1
      780 CALL                             R8 0 1
      781 SETTABLEKS                       R8 R4 K233 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      783 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      785 LOADK                            R9 K234 ["AssistantSystemSkillsStateReminder"]
      786 CALL                             R8 1 1
      787 CALL                             R8 0 1
      788 SETTABLEKS                       R8 R4 K235 ["FFlagAssistantSystemSkillsStateReminder"]
      790 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      792 LOADK                            R9 K236 ["AssistantTestLLMPreserveThinking"]
      793 LOADB                            R10 1
      794 CALL                             R8 2 1
      795 CALL                             R8 0 1
      796 SETTABLEKS                       R8 R4 K237 ["FFlagAssistantTestLLMPreserveThinking"]
      798 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      800 LOADK                            R9 K238 ["AssistantTestLLMThinkingEnabled"]
      801 LOADB                            R10 1
      802 CALL                             R8 2 1
      803 CALL                             R8 0 1
      804 SETTABLEKS                       R8 R4 K239 ["FFlagAssistantTestLLMThinkingEnabled"]
      806 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      808 LOADK                            R9 K240 ["AssistantTextureGenConfirmBeforeInsert"]
      809 CALL                             R8 1 1
      810 CALL                             R8 0 1
      811 SETTABLEKS                       R8 R4 K241 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
      813 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      815 LOADK                            R9 K242 ["AssistantTextureGenModelSelection"]
      816 CALL                             R8 1 1
      817 CALL                             R8 0 1
      818 SETTABLEKS                       R8 R4 K243 ["FFlagAssistantTextureGenModelSelection"]
      820 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      822 LOADK                            R9 K244 ["AssistantTextureGenTool"]
      823 CALL                             R8 1 1
      824 CALL                             R8 0 1
      825 SETTABLEKS                       R8 R4 K245 ["FFlagAssistantTextureGenTool"]
      827 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      829 LOADK                            R9 K246 ["AssistantTextureGenUseSourceMeshCFrame"]
      830 CALL                             R8 1 1
      831 CALL                             R8 0 1
      832 SETTABLEKS                       R8 R4 K247 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      834 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      836 LOADK                            R9 K248 ["AssistantTruncatePrimGenHeader"]
      837 CALL                             R8 1 1
      838 CALL                             R8 0 1
      839 SETTABLEKS                       R8 R4 K249 ["FFlagAssistantTruncatePrimGenHeader"]
      841 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      843 LOADK                            R9 K250 ["AssistantUntitledChatPlaceholder"]
      844 CALL                             R8 1 1
      845 CALL                             R8 0 1
      846 SETTABLEKS                       R8 R4 K251 ["FFlagAssistantUntitledChatPlaceholder"]
      848 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      850 LOADK                            R9 K252 ["AssistantUseMarkdownPackage"]
      851 CALL                             R8 1 1
      852 CALL                             R8 0 1
      853 SETTABLEKS                       R8 R4 K253 ["FFlagAssistantUseMarkdownPackage"]
      855 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      857 LOADK                            R9 K254 ["AssistantUseNewTags"]
      858 CALL                             R8 1 1
      859 CALL                             R8 0 1
      860 SETTABLEKS                       R8 R4 K255 ["FFlagAssistantUseNewTags"]
      862 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      864 LOADK                            R9 K256 ["AssistantUseRemoteService2"]
      865 CALL                             R8 1 1
      866 CALL                             R8 0 1
      867 SETTABLEKS                       R8 R4 K257 ["FFlagAssistantUseRemoteService"]
      869 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      871 LOADK                            R9 K258 ["AssistantUseRemoteServiceExp"]
      872 CALL                             R8 1 1
      873 CALL                             R8 0 1
      874 SETTABLEKS                       R8 R4 K259 ["FFlagAssistantUseRemoteServiceExp"]
      876 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      878 LOADK                            R9 K260 ["AssistantUseVariantHttpTransport"]
      879 CALL                             R8 1 1
      880 CALL                             R8 0 1
      881 SETTABLEKS                       R8 R4 K261 ["FFlagAssistantUseVariantHttpTransport"]
      883 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      885 LOADK                            R9 K262 ["AssistantVersionMismatchWarning"]
      886 CALL                             R8 1 1
      887 CALL                             R8 0 1
      888 SETTABLEKS                       R8 R4 K263 ["FFlagAssistantVersionMismatchWarning"]
      890 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      892 LOADK                            R9 K264 ["AssistantVideoCaptureTool"]
      893 CALL                             R8 1 1
      894 CALL                             R8 0 1
      895 SETTABLEKS                       R8 R4 K265 ["FFlagAssistantVideoCaptureTool"]
      897 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      899 LOADK                            R10 K266 ["AssistantVirtualInputEnabled"]
      900 CALL                             R9 1 1
      901 CALL                             R9 0 1
      902 AND                              R8 R9 R6
      903 SETTABLEKS                       R8 R4 K267 ["FFlagAssistantVirtualInputEnabled"]
      905 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      907 LOADK                            R9 K268 ["AsssistantFixMarkdownRendererErrorForBracket"]
      908 CALL                             R8 1 1
      909 CALL                             R8 0 1
      910 SETTABLEKS                       R8 R4 K269 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      912 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      914 LOADK                            R9 K270 ["DebugAssistantMultiPlayerAgentsLog"]
      915 CALL                             R8 1 1
      916 CALL                             R8 0 1
      917 SETTABLEKS                       R8 R4 K271 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      919 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      921 LOADK                            R9 K272 ["DebugEnableTestLLMAdapter"]
      922 CALL                             R8 1 1
      923 CALL                             R8 0 1
      924 SETTABLEKS                       R8 R4 K273 ["FFlagDebugEnableTestLLMAdapter"]
      926 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      928 LOADK                            R9 K274 ["DebugMockPrimitiveGenBackend"]
      929 CALL                             R8 1 1
      930 CALL                             R8 0 1
      931 SETTABLEKS                       R8 R4 K275 ["FFlagDebugMockPrimitiveGenBackend"]
      933 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      935 LOADK                            R9 K276 ["DebugPrimGenDMNoReachable"]
      936 CALL                             R8 1 1
      937 CALL                             R8 0 1
      938 SETTABLEKS                       R8 R4 K277 ["FFlagDebugPrimGenDMNoReachable"]
      940 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      942 LOADK                            R9 K278 ["DisableMCPConnectionIndicator"]
      943 CALL                             R8 1 1
      944 CALL                             R8 0 1
      945 SETTABLEKS                       R8 R4 K279 ["FFlagDisableMCPConnectionIndicator"]
      947 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      949 LOADK                            R9 K280 ["FFlagDisableNavigationConfirmation"]
      950 CALL                             R8 1 1
      951 CALL                             R8 0 1
      952 SETTABLEKS                       R8 R4 K280 ["FFlagDisableNavigationConfirmation"]
      954 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      956 LOADK                            R9 K281 ["DisableNewSmartSize"]
      957 CALL                             R8 1 1
      958 CALL                             R8 0 1
      959 SETTABLEKS                       R8 R4 K282 ["FFlagDisableNewSmartSize"]
      961 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      963 LOADK                            R9 K283 ["DisableOldSmartSize"]
      964 CALL                             R8 1 1
      965 CALL                             R8 0 1
      966 SETTABLEKS                       R8 R4 K284 ["FFlagDisableOldSmartSize"]
      968 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      970 LOADK                            R9 K285 ["FFlagDisableStartStopPlayConfirmation"]
      971 CALL                             R8 1 1
      972 CALL                             R8 0 1
      973 SETTABLEKS                       R8 R4 K285 ["FFlagDisableStartStopPlayConfirmation"]
      975 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      977 LOADK                            R9 K286 ["FFlagDisableUserInputConfirmation"]
      978 CALL                             R8 1 1
      979 CALL                             R8 0 1
      980 SETTABLEKS                       R8 R4 K286 ["FFlagDisableUserInputConfirmation"]
      982 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      984 LOADK                            R9 K287 ["EnableAssistantImageUpload"]
      985 CALL                             R8 1 1
      986 CALL                             R8 0 1
      987 SETTABLEKS                       R8 R4 K288 ["FFlagEnableAssistantImageUpload"]
      989 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      991 LOADK                            R9 K289 ["EnablePlaytestSubagent"]
      992 CALL                             R8 1 1
      993 CALL                             R8 0 1
      994 SETTABLEKS                       R8 R4 K290 ["FFlagEnablePlaytestSubagent"]
      996 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      998 LOADK                            R9 K291 ["Gen3dSegmentationSelector"]
      999 CALL                             R8 1 1
     1000 CALL                             R8 0 1
     1001 SETTABLEKS                       R8 R4 K292 ["FFlagGen3dSegmentationSelector"]
     1003 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1005 LOADK                            R9 K293 ["MCPAssistantAzureOpenAI"]
     1006 CALL                             R8 1 1
     1007 CALL                             R8 0 1
     1008 SETTABLEKS                       R8 R4 K294 ["FFlagMCPAssistantAzureOpenAI"]
     1010 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1012 LOADK                            R9 K295 ["MCPAssistantManagementMenu5"]
     1013 CALL                             R8 1 1
     1014 CALL                             R8 0 1
     1015 SETTABLEKS                       R8 R4 K296 ["FFlagMCPAssistantManagementMenu"]
     1017 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1019 LOADK                            R9 K297 ["MCPAssistantOpenAIPreserveThinking"]
     1020 CALL                             R8 1 1
     1021 CALL                             R8 0 1
     1022 SETTABLEKS                       R8 R4 K298 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1024 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1026 LOADK                            R9 K299 ["MCPAssistantOpenAIThinkingEnabled"]
     1027 CALL                             R8 1 1
     1028 CALL                             R8 0 1
     1029 SETTABLEKS                       R8 R4 K300 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1031 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1033 LOADK                            R9 K301 ["MCPConnectionIndicatorTooltip"]
     1034 CALL                             R8 1 1
     1035 CALL                             R8 0 1
     1036 SETTABLEKS                       R8 R4 K302 ["FFlagMCPConnectionIndicatorTooltip"]
     1038 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1040 LOADK                            R9 K303 ["MCPContentNormalization"]
     1041 CALL                             R8 1 1
     1042 CALL                             R8 0 1
     1043 SETTABLEKS                       R8 R4 K304 ["FFlagMCPContentNormalization"]
     1045 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1047 LOADK                            R9 K305 ["MCPEnableToolDisabling"]
     1048 CALL                             R8 1 1
     1049 CALL                             R8 0 1
     1050 SETTABLEKS                       R8 R4 K306 ["FFlagMCPEnableToolDisabling"]
     1052 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1054 LOADK                            R9 K307 ["PlaytestVision"]
     1055 CALL                             R8 1 1
     1056 CALL                             R8 0 1
     1057 SETTABLEKS                       R8 R4 K308 ["FFlagPlaytestVision"]
     1059 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1061 LOADK                            R9 K309 ["PrimGenAllowReInsert"]
     1062 CALL                             R8 1 1
     1063 CALL                             R8 0 1
     1064 SETTABLEKS                       R8 R4 K310 ["FFlagPrimGenAllowReInsert"]
     1066 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1068 LOADK                            R9 K311 ["PrimGenBetterErrorType"]
     1069 CALL                             R8 1 1
     1070 CALL                             R8 0 1
     1071 SETTABLEKS                       R8 R4 K312 ["FFlagPrimGenBetterErrorType"]
     1073 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1075 LOADK                            R9 K313 ["PrimGenCarouselPreview"]
     1076 CALL                             R8 1 1
     1077 CALL                             R8 0 1
     1078 SETTABLEKS                       R8 R4 K314 ["FFlagPrimGenCarouselPreview"]
     1080 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1082 LOADK                            R9 K315 ["PrimGenDetectMineTypeFromContent"]
     1083 CALL                             R8 1 1
     1084 CALL                             R8 0 1
     1085 SETTABLEKS                       R8 R4 K316 ["FFlagPrimGenDetectMineTypeFromContent"]
     1087 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1089 LOADK                            R9 K317 ["PrimGenImageGenPromptTemplateEnabled"]
     1090 CALL                             R8 1 1
     1091 CALL                             R8 0 1
     1092 SETTABLEKS                       R8 R4 K318 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1094 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1096 LOADK                            R9 K319 ["PrimGenSchemaSelector"]
     1097 CALL                             R8 1 1
     1098 CALL                             R8 0 1
     1099 SETTABLEKS                       R8 R4 K320 ["FFlagPrimGenSchemaSelector"]
     1101 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1103 LOADK                            R9 K321 ["PrimGenVerboseDmIsUnReachableMsg"]
     1104 CALL                             R8 1 1
     1105 CALL                             R8 0 1
     1106 SETTABLEKS                       R8 R4 K322 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1108 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1110 LOADK                            R9 K323 ["PrimGenVersionMismatchError"]
     1111 CALL                             R8 1 1
     1112 CALL                             R8 0 1
     1113 SETTABLEKS                       R8 R4 K324 ["FFlagPrimGenVersionMismatchError"]
     1115 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1117 LOADK                            R9 K325 ["PropertiesExposeContentView"]
     1118 CALL                             R8 1 1
     1119 CALL                             R8 0 1
     1120 SETTABLEKS                       R8 R4 K326 ["FFlagPropertiesExposeContentView"]
     1122 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1124 LOADK                            R9 K327 ["ScreenCaptureCamera"]
     1125 CALL                             R8 1 1
     1126 CALL                             R8 0 1
     1127 SETTABLEKS                       R8 R4 K328 ["FFlagScreenCaptureCamera"]
     1129 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1131 LOADK                            R9 K329 ["ScriptDebuggerServiceEnabled2"]
     1132 CALL                             R8 1 1
     1133 CALL                             R8 0 1
     1134 SETTABLEKS                       R8 R4 K330 ["FFlagScriptDebuggerServiceEnabled"]
     1136 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1138 LOADK                            R9 K331 ["SegmentationFastFollow"]
     1139 CALL                             R8 1 1
     1140 CALL                             R8 0 1
     1141 SETTABLEKS                       R8 R4 K332 ["FFlagSegmentationFastFollow"]
     1143 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1145 LOADK                            R9 K333 ["StudioOpenCloudMCP"]
     1146 CALL                             R8 1 1
     1147 CALL                             R8 0 1
     1148 SETTABLEKS                       R8 R4 K334 ["FFlagStudioOpenCloudMCP"]
     1150 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1152 LOADK                            R9 K335 ["SubagentScriptEditAutoConfirmation"]
     1153 CALL                             R8 1 1
     1154 CALL                             R8 0 1
     1155 SETTABLEKS                       R8 R4 K336 ["FFlagSubagentScriptEditAutoConfirmation"]
     1157 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1159 LOADK                            R9 K337 ["UseStudioSideListTool"]
     1160 CALL                             R8 1 1
     1161 CALL                             R8 0 1
     1162 SETTABLEKS                       R8 R4 K338 ["FFlagUseStudioSideListTool"]
     1164 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1166 LOADK                            R9 K340 ["AmrAssetDependencyGrantEventTimeout"]
     1167 LOADN                            R10 40
     1168 CALL                             R8 2 1
     1169 CALL                             R8 0 1
     1170 SETTABLEKS                       R8 R4 K341 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1172 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1174 LOADK                            R9 K342 ["AssistantAutoSaveInterval"]
     1175 LOADN                            R10 60
     1176 CALL                             R8 2 1
     1177 CALL                             R8 0 1
     1178 SETTABLEKS                       R8 R4 K343 ["FIntAssistantAutoSaveInterval"]
     1180 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1182 LOADK                            R9 K344 ["AssistantDebugToolMaxOutput"]
     1183 LOADN                            R10 20000
     1184 CALL                             R8 2 1
     1185 CALL                             R8 0 1
     1186 SETTABLEKS                       R8 R4 K345 ["FIntAssistantDebugToolMaxOutput"]
     1188 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1190 LOADK                            R9 K346 ["AssistantJobWaitDefaultTimeout"]
     1191 LOADN                            R10 600
     1192 CALL                             R8 2 1
     1193 CALL                             R8 0 1
     1194 SETTABLEKS                       R8 R4 K347 ["FIntAssistantJobWaitDefaultTimeout"]
     1196 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1198 LOADK                            R9 K348 ["AssistantMaxDisplayTextChars"]
     1199 LOADK                            R10 K349 [100000]
     1200 CALL                             R8 2 1
     1201 CALL                             R8 0 1
     1202 SETTABLEKS                       R8 R4 K350 ["FIntAssistantMaxDisplayTextChars"]
     1204 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1206 LOADK                            R9 K351 ["AssistantMaxToolInputStringLen"]
     1207 LOADN                            R10 2000
     1208 CALL                             R8 2 1
     1209 CALL                             R8 0 1
     1210 SETTABLEKS                       R8 R4 K352 ["FIntAssistantMaxToolInputStringLen"]
     1212 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1214 LOADK                            R9 K353 ["AssistantMeshGenMaxTrianglesDefault"]
     1215 LOADN                            R10 10000
     1216 CALL                             R8 2 1
     1217 CALL                             R8 0 1
     1218 SETTABLEKS                       R8 R4 K354 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1220 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1222 LOADK                            R9 K355 ["AssistantMinPopoverHeight"]
     1223 LOADN                            R10 150
     1224 CALL                             R8 2 1
     1225 CALL                             R8 0 1
     1226 SETTABLEKS                       R8 R4 K356 ["FIntAssistantMinPopoverHeight"]
     1228 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1230 LOADK                            R9 K357 ["AssistantPersistenceMessageLoadLimit"]
     1231 LOADN                            R10 5
     1232 CALL                             R8 2 1
     1233 CALL                             R8 0 1
     1234 SETTABLEKS                       R8 R4 K358 ["FIntAssistantPersistenceMessageLoadLimit"]
     1236 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1238 LOADK                            R9 K359 ["AssistantPersistenceThreadLoadLimit"]
     1239 LOADN                            R10 5
     1240 CALL                             R8 2 1
     1241 CALL                             R8 0 1
     1242 SETTABLEKS                       R8 R4 K360 ["FIntAssistantPersistenceThreadLoadLimit"]
     1244 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1246 LOADK                            R9 K361 ["AssistantPostTurnRefreshDelaySeconds"]
     1247 LOADN                            R10 2
     1248 CALL                             R8 2 1
     1249 CALL                             R8 0 1
     1250 SETTABLEKS                       R8 R4 K362 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1252 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1254 LOADK                            R9 K363 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1255 LOADN                            R10 999
     1256 CALL                             R8 2 1
     1257 CALL                             R8 0 1
     1258 SETTABLEKS                       R8 R4 K364 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1260 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1262 LOADK                            R9 K365 ["AssistantPrimitiveGenPollIntervalMs"]
     1263 LOADN                            R10 2000
     1264 CALL                             R8 2 1
     1265 CALL                             R8 0 1
     1266 SETTABLEKS                       R8 R4 K366 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1268 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1270 LOADK                            R9 K367 ["AssistantProcessEventTimeoutMS"]
     1271 LOADK                            R10 K368 [60000]
     1272 CALL                             R8 2 1
     1273 CALL                             R8 0 1
     1274 SETTABLEKS                       R8 R4 K369 ["FIntAssistantProcessEventTimeoutMS"]
     1276 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1278 LOADK                            R9 K370 ["AssistantSegmentMeshMaxUserParts"]
     1279 LOADN                            R10 16
     1280 CALL                             R8 2 1
     1281 CALL                             R8 0 1
     1282 SETTABLEKS                       R8 R4 K371 ["FIntAssistantSegmentMeshMaxUserParts"]
     1284 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1286 LOADK                            R9 K372 ["ConvAIMaxHistoryCount"]
     1287 LOADN                            R10 6
     1288 CALL                             R8 2 1
     1289 CALL                             R8 0 1
     1290 SETTABLEKS                       R8 R4 K373 ["FIntConvAIMaxHistoryCount"]
     1292 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1294 LOADK                            R9 K374 ["ConvAIMeshGenGenerationRetryLimit"]
     1295 LOADN                            R10 4
     1296 CALL                             R8 2 1
     1297 CALL                             R8 0 1
     1298 SETTABLEKS                       R8 R4 K375 ["FIntConvAIMeshGenGenerationRetryLimit"]
     1300 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1302 LOADK                            R9 K376 ["ConvAIMeshGenPublishAttemptLimit"]
     1303 LOADN                            R10 5
     1304 CALL                             R8 2 1
     1305 CALL                             R8 0 1
     1306 SETTABLEKS                       R8 R4 K377 ["FIntConvAIMeshGenPublishAttemptLimit"]
     1308 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1310 LOADK                            R9 K378 ["ExecuteLuauMaxJsonLength"]
     1311 LOADK                            R10 K349 [100000]
     1312 CALL                             R8 2 1
     1313 CALL                             R8 0 1
     1314 SETTABLEKS                       R8 R4 K379 ["FIntExecuteLuauMaxJsonLength"]
     1316 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1318 LOADK                            R9 K380 ["ExecuteLuauMaxStringLength"]
     1319 LOADK                            R10 K349 [100000]
     1320 CALL                             R8 2 1
     1321 CALL                             R8 0 1
     1322 SETTABLEKS                       R8 R4 K381 ["FIntExecuteLuauMaxStringLength"]
     1324 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1326 LOADK                            R9 K382 ["FactorDelayPreview"]
     1327 LOADN                            R10 1
     1328 CALL                             R8 2 1
     1329 CALL                             R8 0 1
     1330 SETTABLEKS                       R8 R4 K383 ["FIntFactorDelayPreview"]
     1332 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1334 LOADK                            R9 K384 ["FromHistoryMaxResultChars"]
     1335 LOADK                            R10 K385 [200000]
     1336 CALL                             R8 2 1
     1337 CALL                             R8 0 1
     1338 SETTABLEKS                       R8 R4 K386 ["FIntFromHistoryMaxResultChars"]
     1340 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1342 LOADK                            R9 K387 ["GameTreeDefaultHeadLimit"]
     1343 LOADN                            R10 200
     1344 CALL                             R8 2 1
     1345 CALL                             R8 0 1
     1346 SETTABLEKS                       R8 R4 K388 ["FIntGameTreeDefaultHeadLimit"]
     1348 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1350 LOADK                            R9 K389 ["GameTreeDefaultMaxDepth"]
     1351 LOADN                            R10 3
     1352 CALL                             R8 2 1
     1353 CALL                             R8 0 1
     1354 SETTABLEKS                       R8 R4 K390 ["FIntGameTreeDefaultMaxDepth"]
     1356 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1358 LOADK                            R9 K391 ["GameTreeMaxAbsoluteDepth"]
     1359 LOADN                            R10 10
     1360 CALL                             R8 2 1
     1361 CALL                             R8 0 1
     1362 SETTABLEKS                       R8 R4 K392 ["FIntGameTreeMaxAbsoluteDepth"]
     1364 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1366 LOADK                            R9 K393 ["InspectInstanceMaxJsonLength"]
     1367 LOADN                            R10 500
     1368 CALL                             R8 2 1
     1369 CALL                             R8 0 1
     1370 SETTABLEKS                       R8 R4 K394 ["FIntInspectInstanceMaxJsonLength"]
     1372 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1374 LOADK                            R9 K395 ["InspectInstanceMaxMatches"]
     1375 LOADN                            R10 20
     1376 CALL                             R8 2 1
     1377 CALL                             R8 0 1
     1378 SETTABLEKS                       R8 R4 K396 ["FIntInspectInstanceMaxMatches"]
     1380 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1382 LOADK                            R9 K397 ["InspectInstanceMaxStringLength"]
     1383 LOADN                            R10 1000
     1384 CALL                             R8 2 1
     1385 CALL                             R8 0 1
     1386 SETTABLEKS                       R8 R4 K398 ["FIntInspectInstanceMaxStringLength"]
     1388 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1390 LOADK                            R9 K399 ["MCPAssistantGenerationIndicatorWarningTime"]
     1391 LOADN                            R10 10
     1392 CALL                             R8 2 1
     1393 CALL                             R8 0 1
     1394 SETTABLEKS                       R8 R4 K400 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1396 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1398 LOADK                            R9 K401 ["MCPAssistantInputAreaCharLimit"]
     1399 LOADN                            R10 4000
     1400 CALL                             R8 2 1
     1401 CALL                             R8 0 1
     1402 SETTABLEKS                       R8 R4 K402 ["FIntMCPAssistantInputAreaCharLimit"]
     1404 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1406 LOADK                            R9 K403 ["MCPAssistantMaxPromptHistory"]
     1407 LOADN                            R10 20
     1408 CALL                             R8 2 1
     1409 CALL                             R8 0 1
     1410 SETTABLEKS                       R8 R4 K404 ["FIntMCPAssistantMaxPromptHistory"]
     1412 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1414 LOADK                            R9 K405 ["MCPAssistantMaxToolCalls"]
     1415 LOADN                            R10 20
     1416 CALL                             R8 2 1
     1417 CALL                             R8 0 1
     1418 SETTABLEKS                       R8 R4 K406 ["FIntMCPAssistantMaxToolCalls"]
     1420 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1422 LOADK                            R9 K407 ["MinimumAssistantFreeTrialRemaining"]
     1423 LOADN                            R10 1
     1424 CALL                             R8 2 1
     1425 CALL                             R8 0 1
     1426 SETTABLEKS                       R8 R4 K408 ["FIntMinimumAssistantFreeTrialRemaining"]
     1428 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1430 LOADK                            R9 K409 ["MinimumAssistantRobuxBalance"]
     1431 LOADN                            R10 100
     1432 CALL                             R8 2 1
     1433 CALL                             R8 0 1
     1434 SETTABLEKS                       R8 R4 K410 ["FIntMinimumAssistantRobuxBalance"]
     1436 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1438 LOADK                            R9 K411 ["PlaytestLookBudget"]
     1439 LOADN                            R10 7
     1440 CALL                             R8 2 1
     1441 CALL                             R8 0 1
     1442 SETTABLEKS                       R8 R4 K412 ["FIntPlaytestLookBudget"]
     1444 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1446 LOADK                            R9 K413 ["PlaytestLookTimeoutMs"]
     1447 LOADK                            R10 K368 [60000]
     1448 CALL                             R8 2 1
     1449 CALL                             R8 0 1
     1450 SETTABLEKS                       R8 R4 K414 ["FIntPlaytestLookTimeoutMs"]
     1452 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1454 LOADK                            R9 K415 ["PlaytestMaxToolCalls"]
     1455 LOADN                            R10 50
     1456 CALL                             R8 2 1
     1457 CALL                             R8 0 1
     1458 SETTABLEKS                       R8 R4 K416 ["FIntPlaytestMaxToolCalls"]
     1460 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1462 LOADK                            R9 K417 ["PrimGenLongRunThresholdSec"]
     1463 LOADN                            R10 120
     1464 CALL                             R8 2 1
     1465 CALL                             R8 0 1
     1466 SETTABLEKS                       R8 R4 K418 ["FIntPrimGenLongRunThresholdSec"]
     1468 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1470 LOADK                            R9 K419 ["PrimGenTextMaxLength"]
     1471 LOADN                            R10 80
     1472 CALL                             R8 2 1
     1473 CALL                             R8 0 1
     1474 SETTABLEKS                       R8 R4 K420 ["FIntPrimGenTextMaxLength"]
     1476 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1478 LOADK                            R9 K421 ["PrimGenVerticalGutter"]
     1479 LOADN                            R10 10
     1480 CALL                             R8 2 1
     1481 CALL                             R8 0 1
     1482 SETTABLEKS                       R8 R4 K422 ["FIntPrimGenVerticalGutter"]
     1484 GETTABLEKS                       R8 R3 K339 ["createGetFInt"]
     1486 LOADK                            R9 K423 ["UnitTestSubagentMaxToolCalls"]
     1487 LOADN                            R10 100
     1488 CALL                             R8 2 1
     1489 CALL                             R8 0 1
     1490 SETTABLEKS                       R8 R4 K424 ["FIntUnitTestSubagentMaxToolCalls"]
     1492 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1494 LOADK                            R9 K426 ["AssistantDebugCreditMeteringBlockReason"]
     1495 LOADK                            R10 K427 [""]
     1496 CALL                             R8 2 1
     1497 CALL                             R8 0 1
     1498 SETTABLEKS                       R8 R4 K428 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1500 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1502 LOADK                            R9 K429 ["AssistantDisabledSubagents"]
     1503 LOADK                            R10 K427 [""]
     1504 CALL                             R8 2 1
     1505 CALL                             R8 0 1
     1506 SETTABLEKS                       R8 R4 K430 ["FStringAssistantDisabledSubagents"]
     1508 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1510 LOADK                            R9 K431 ["AssistantGen3dDefaultModel"]
     1511 LOADK                            R10 K432 ["Assistant/glm51-h200"]
     1512 CALL                             R8 2 1
     1513 CALL                             R8 0 1
     1514 SETTABLEKS                       R8 R4 K433 ["FStringAssistantGen3dDefaultModel"]
     1516 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1518 LOADK                            R9 K434 ["AssistantImageGenHostOverride"]
     1519 LOADK                            R10 K427 [""]
     1520 CALL                             R8 2 1
     1521 CALL                             R8 0 1
     1522 SETTABLEKS                       R8 R4 K435 ["FStringAssistantImageGenHostOverride"]
     1524 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1526 LOADK                            R9 K436 ["AssistantJobRunTools"]
     1527 LOADK                            R10 K437 ["generate_procedural_model,generate_mesh,generate_material"]
     1528 CALL                             R8 2 1
     1529 CALL                             R8 0 1
     1530 SETTABLEKS                       R8 R4 K438 ["FStringAssistantJobRunTools"]
     1532 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1534 LOADK                            R9 K439 ["AssistantMeshGenImageGenModelOverride"]
     1535 LOADK                            R10 K440 ["gemini"]
     1536 CALL                             R8 2 1
     1537 CALL                             R8 0 1
     1538 SETTABLEKS                       R8 R4 K441 ["FStringAssistantMeshGenImageGenModelOverride"]
     1540 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1542 LOADK                            R9 K442 ["AssistantMeshGenImageGenPromptTemplate"]
     1543 LOADK                            R10 K427 [""]
     1544 CALL                             R8 2 1
     1545 CALL                             R8 0 1
     1546 SETTABLEKS                       R8 R4 K443 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1548 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1550 LOADK                            R9 K444 ["AssistantMeshGenInferenceServiceOverride"]
     1551 LOADK                            R10 K445 ["stage-diff-mesh-gen"]
     1552 CALL                             R8 2 1
     1553 CALL                             R8 0 1
     1554 SETTABLEKS                       R8 R4 K446 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1556 GETIMPORT                        R8 K5 [require]
     1558 GETTABLEKS                       R9 R0 K447 ["FlagUtils"]
     1560 GETTABLEKS                       R9 R9 K448 ["createGetFStringAssistantMeshGenSchemaData"]
     1562 CALL                             R8 1 1
     1563 CALL                             R8 0 1
     1564 SETTABLEKS                       R8 R4 K449 ["FStringAssistantMeshGenSchemaData"]
     1566 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1568 LOADK                            R9 K450 ["AssistantModerateErrorMsg"]
     1569 LOADK                            R10 K451 ["prompt violates Roblox safety policy"]
     1570 CALL                             R8 2 1
     1571 CALL                             R8 0 1
     1572 SETTABLEKS                       R8 R4 K452 ["FStringAssistantModerateErrorMsg"]
     1574 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1576 LOADK                            R9 K453 ["AssistantSkillsAllowlist"]
     1577 LOADK                            R10 K454 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false"]
     1578 CALL                             R8 2 1
     1579 CALL                             R8 0 1
     1580 SETTABLEKS                       R8 R4 K455 ["FStringAssistantSkillsAllowlist"]
     1582 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1584 LOADK                            R9 K456 ["AssistantTestLLMReasoningEffort"]
     1585 LOADK                            R10 K457 ["high"]
     1586 CALL                             R8 2 1
     1587 CALL                             R8 0 1
     1588 SETTABLEKS                       R8 R4 K458 ["FStringAssistantTestLLMReasoningEffort"]
     1590 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1592 LOADK                            R9 K459 ["AssistantToolsExcludedDirectories"]
     1593 LOADK                            R10 K460 ["CoreGui,PlayerGui,LoadedCode"]
     1594 CALL                             R8 2 1
     1595 CALL                             R8 0 1
     1596 SETTABLEKS                       R8 R4 K461 ["FStringAssistantToolsExcludedDirectories"]
     1598 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1600 LOADK                            R9 K462 ["AssistantToolWidgetMappings"]
     1601 LOADK                            R10 K427 [""]
     1602 CALL                             R8 2 1
     1603 CALL                             R8 0 1
     1604 SETTABLEKS                       R8 R4 K463 ["FStringAssistantToolWidgetMappings"]
     1606 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1608 LOADK                            R9 K464 ["AssistantUnitTestSubagentModel"]
     1609 LOADK                            R10 K465 ["Assistant/glm5"]
     1610 CALL                             R8 2 1
     1611 CALL                             R8 0 1
     1612 SETTABLEKS                       R8 R4 K466 ["FStringAssistantUnitTestSubagentModel"]
     1614 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1616 LOADK                            R9 K467 ["AssistantUntitledChatPlaceholderText"]
     1617 LOADK                            R10 K468 ["Untitled Chat"]
     1618 CALL                             R8 2 1
     1619 CALL                             R8 0 1
     1620 SETTABLEKS                       R8 R4 K469 ["FStringAssistantUntitledChatPlaceholder"]
     1622 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1624 LOADK                            R9 K470 ["ConvAIMeshGenModerationUrl"]
     1625 LOADK                            R10 K471 ["https://en.help.roblox.com/hc/en-us/articles/21416271342868"]
     1626 CALL                             R8 2 1
     1627 CALL                             R8 0 1
     1628 SETTABLEKS                       R8 R4 K472 ["FStringConvAIMeshGenModerationUrl"]
     1630 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1632 LOADK                            R9 K473 ["MCPAssistantAnthropicModels"]
     1633 LOADK                            R10 K474 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1634 CALL                             R8 2 1
     1635 CALL                             R8 0 1
     1636 SETTABLEKS                       R8 R4 K475 ["FStringMCPAssistantAnthropicModels"]
     1638 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1640 LOADK                            R9 K476 ["MCPAssistantClaudeAPIKey"]
     1641 LOADK                            R10 K427 [""]
     1642 CALL                             R8 2 1
     1643 CALL                             R8 0 1
     1644 SETTABLEKS                       R8 R4 K477 ["FStringMCPAssistantClaudeAPIKey"]
     1646 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1648 LOADK                            R9 K478 ["MCPAssistantCustomModelName"]
     1649 LOADK                            R10 K427 [""]
     1650 CALL                             R8 2 1
     1651 CALL                             R8 0 1
     1652 SETTABLEKS                       R8 R4 K479 ["FStringMCPAssistantCustomModelName"]
     1654 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1656 LOADK                            R9 K480 ["MCPAssistantGeminiAPIKey"]
     1657 LOADK                            R10 K427 [""]
     1658 CALL                             R8 2 1
     1659 CALL                             R8 0 1
     1660 SETTABLEKS                       R8 R4 K481 ["FStringMCPAssistantGeminiAPIKey"]
     1662 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1664 LOADK                            R9 K482 ["MCPAssistantGeminiModels"]
     1665 LOADK                            R10 K483 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1666 CALL                             R8 2 1
     1667 CALL                             R8 0 1
     1668 SETTABLEKS                       R8 R4 K484 ["FStringMCPAssistantGeminiModels"]
     1670 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1672 LOADK                            R9 K485 ["MCPAssistantOpenAIAPIKey"]
     1673 LOADK                            R10 K427 [""]
     1674 CALL                             R8 2 1
     1675 CALL                             R8 0 1
     1676 SETTABLEKS                       R8 R4 K486 ["FStringMCPAssistantOpenAIAPIKey"]
     1678 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1680 LOADK                            R9 K487 ["MCPAssistantOpenAIModels"]
     1681 LOADK                            R10 K488 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1682 CALL                             R8 2 1
     1683 CALL                             R8 0 1
     1684 SETTABLEKS                       R8 R4 K489 ["FStringMCPAssistantOpenAIModels"]
     1686 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1688 LOADK                            R9 K490 ["MCPAssistantOpenAIReasoningEffort"]
     1689 LOADK                            R10 K427 [""]
     1690 CALL                             R8 2 1
     1691 CALL                             R8 0 1
     1692 SETTABLEKS                       R8 R4 K491 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1694 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1696 LOADK                            R9 K492 ["MCPAssistantPrimitiveGenServerURL"]
     1697 LOADK                            R10 K427 [""]
     1698 CALL                             R8 2 1
     1699 CALL                             R8 0 1
     1700 SETTABLEKS                       R8 R4 K493 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1702 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1704 LOADK                            R9 K494 ["MCPAssistantTestLLMAPIKey"]
     1705 LOADK                            R10 K427 [""]
     1706 CALL                             R8 2 1
     1707 CALL                             R8 0 1
     1708 SETTABLEKS                       R8 R4 K495 ["FStringMCPAssistantTestLLMAPIKey"]
     1710 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1712 LOADK                            R9 K496 ["MCPAssistantURLOverride"]
     1713 LOADK                            R10 K427 [""]
     1714 CALL                             R8 2 1
     1715 CALL                             R8 0 1
     1716 SETTABLEKS                       R8 R4 K497 ["FStringMCPAssistantURLOverride"]
     1718 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1720 LOADK                            R9 K498 ["MCPDocsUrl"]
     1721 LOADK                            R10 K499 ["https://create.roblox.com/docs/studio/mcp/"]
     1722 CALL                             R8 2 1
     1723 CALL                             R8 0 1
     1724 SETTABLEKS                       R8 R4 K500 ["FStringMCPDocsUrl"]
     1726 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1728 LOADK                            R9 K501 ["PlaytestConversationURL"]
     1729 LOADK                            R10 K502 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1730 CALL                             R8 2 1
     1731 CALL                             R8 0 1
     1732 SETTABLEKS                       R8 R4 K503 ["FStringPlaytestConversationURL"]
     1734 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1736 LOADK                            R9 K504 ["PlaytestModelName"]
     1737 LOADK                            R10 K505 ["Qwen/Qwen35-35B-A3B"]
     1738 CALL                             R8 2 1
     1739 CALL                             R8 0 1
     1740 SETTABLEKS                       R8 R4 K506 ["FStringPlaytestModelName"]
     1742 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1744 LOADK                            R9 K507 ["PrimGenImageGenPromptTemplate"]
     1745 LOADK                            R10 K427 [""]
     1746 CALL                             R8 2 1
     1747 CALL                             R8 0 1
     1748 SETTABLEKS                       R8 R4 K508 ["FStringPrimGenImageGenPromptTemplate"]
     1750 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1752 LOADK                            R9 K509 ["ProceduralScriptCapabilities"]
     1753 LOADK                            R10 K510 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1754 CALL                             R8 2 1
     1755 CALL                             R8 0 1
     1756 SETTABLEKS                       R8 R4 K511 ["FStringProceduralScriptCapabilities"]
     1758 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1760 LOADK                            R9 K512 ["ScreenCaptureFormat"]
     1761 LOADK                            R10 K427 [""]
     1762 CALL                             R8 2 1
     1763 CALL                             R8 0 1
     1764 SETTABLEKS                       R8 R4 K513 ["FStringScreenCaptureFormat"]
     1766 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1768 LOADK                            R9 K514 ["ScreenCaptureSize"]
     1769 LOADK                            R10 K427 [""]
     1770 CALL                             R8 2 1
     1771 CALL                             R8 0 1
     1772 SETTABLEKS                       R8 R4 K515 ["FStringScreenCaptureSize"]
     1774 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1776 LOADK                            R9 K516 ["ScreenCaptureSubagentModelName"]
     1777 LOADK                            R10 K427 [""]
     1778 CALL                             R8 2 1
     1779 CALL                             R8 0 1
     1780 SETTABLEKS                       R8 R4 K517 ["FStringScreenCaptureSubagentModelName"]
     1782 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1784 LOADK                            R9 K518 ["SegmentByPartsBetaFeatureUrl"]
     1785 LOADK                            R10 K427 [""]
     1786 CALL                             R8 2 1
     1787 CALL                             R8 0 1
     1788 SETTABLEKS                       R8 R4 K519 ["FStringSegmentByPartsBetaFeatureUrl"]
     1790 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1792 LOADK                            R9 K520 ["StudioScopeRiskLevelsDocsUrl"]
     1793 LOADK                            R10 K521 ["https://create.roblox.com/docs/cloud/reference/risk-levels"]
     1794 CALL                             R8 2 1
     1795 CALL                             R8 0 1
     1796 SETTABLEKS                       R8 R4 K522 ["FStringStudioScopeRiskLevelsDocsUrl"]
     1798 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1800 LOADK                            R9 K523 ["SubagentExploreModelName"]
     1801 LOADK                            R10 K524 ["Assistant/glm5-b200-server-1"]
     1802 CALL                             R8 2 1
     1803 CALL                             R8 0 1
     1804 SETTABLEKS                       R8 R4 K525 ["FStringSubagentExploreModelName"]
     1806 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1808 LOADK                            R9 K526 ["SubagentURLOverride"]
     1809 LOADK                            R10 K427 [""]
     1810 CALL                             R8 2 1
     1811 CALL                             R8 0 1
     1812 SETTABLEKS                       R8 R4 K527 ["FStringSubagentURLOverride"]
     1814 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1816 LOADK                            R9 K528 ["TestLLMURLOverride"]
     1817 LOADK                            R10 K427 [""]
     1818 CALL                             R8 2 1
     1819 CALL                             R8 0 1
     1820 SETTABLEKS                       R8 R4 K529 ["FStringTestLLMURLOverride"]
     1822 GETTABLEKS                       R8 R3 K425 ["createGetFString"]
     1824 LOADK                            R9 K530 ["TestSubagentURLOverride"]
     1825 LOADK                            R10 K427 [""]
     1826 CALL                             R8 2 1
     1827 CALL                             R8 0 1
     1828 SETTABLEKS                       R8 R4 K531 ["FStringTestSubagentURLOverride"]
     1830 DUPTABLE                         R10 K533 [{"__index", "__newindex"}]
     1831 SETTABLEKS                       R2 R10 K532 ["__index"]
     1833 SETTABLEKS                       R2 R10 K11 ["__newindex"]
     1835 FASTCALL2                        SETMETATABLE R4 R10 ; [+4]
     1837 MOVE                             R9 R4
     1838 GETIMPORT                        R8 K15 [setmetatable]
     1840 CALL                             R8 2 1
     1841 RETURN                           R8 1
