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
       34 LOADK                            R6 K17 ["VirtualInputEnabled"]
       35 CALL                             R5 1 1
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R6 R3 K18 ["createGetDFFlag"]
       39 LOADK                            R7 K19 ["MCPVideoCapture2"]
       40 CALL                             R6 1 1
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R7 R3 K20 ["createGetDFString"]
       44 LOADK                            R8 K21 ["GenerationServiceSchemaDefinitionPartsKey"]
       45 LOADK                            R9 K22 ["Groups"]
       46 CALL                             R7 2 1
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R4 K23 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       50 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       52 LOADK                            R8 K25 ["AssistantBridgeStandalone"]
       53 CALL                             R7 1 1
       54 CALL                             R7 0 1
       55 SETTABLEKS                       R7 R4 K26 ["EngineFeatureAssistantBridgeStandalone"]
       57 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       59 LOADK                            R8 K27 ["AssistantGen3dImagePreview"]
       60 CALL                             R7 1 1
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R4 K28 ["EngineFeatureAssistantGen3dImagePreview"]
       64 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       66 LOADK                            R8 K29 ["AssistantMCPProxyTokenEnabled"]
       67 CALL                             R7 1 1
       68 CALL                             R7 0 1
       69 SETTABLEKS                       R7 R4 K30 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       71 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       73 LOADK                            R8 K31 ["StudioAssistantMcpOriginated"]
       74 CALL                             R7 1 1
       75 CALL                             R7 0 1
       76 SETTABLEKS                       R7 R4 K32 ["EngineFeatureStudioAssistantMcpOriginated"]
       78 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       80 LOADK                            R8 K33 ["AllowThreadSuspendOverride"]
       81 CALL                             R7 1 1
       82 CALL                             R7 0 1
       83 SETTABLEKS                       R7 R4 K34 ["FFlagAllowThreadSuspendOverride"]
       85 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       87 LOADK                            R8 K35 ["AnimationGenOpenACE2"]
       88 CALL                             R7 1 1
       89 CALL                             R7 0 1
       90 SETTABLEKS                       R7 R4 K36 ["FFlagAnimationGenOpenACE"]
       92 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       94 LOADK                            R8 K37 ["AssistantACPBatchHistoryReplay"]
       95 CALL                             R7 1 1
       96 CALL                             R7 0 1
       97 SETTABLEKS                       R7 R4 K38 ["FFlagAssistantACPBatchHistoryReplay"]
       99 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      101 LOADK                            R8 K39 ["AssistantACPFixPendingToolCall2"]
      102 CALL                             R7 1 1
      103 CALL                             R7 0 1
      104 SETTABLEKS                       R7 R4 K40 ["FFlagAssistantACPFixPendingToolCall"]
      106 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      108 LOADK                            R8 K41 ["AssistantAddNumberInput"]
      109 CALL                             R7 1 1
      110 CALL                             R7 0 1
      111 SETTABLEKS                       R7 R4 K42 ["FFlagAssistantAddNumberInput"]
      113 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      115 LOADK                            R8 K43 ["AssistantAddPlaceholderProp"]
      116 CALL                             R7 1 1
      117 CALL                             R7 0 1
      118 SETTABLEKS                       R7 R4 K44 ["FFlagAssistantAddPlaceholderProp"]
      120 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      122 LOADK                            R8 K45 ["AssistantAnimationGenTool"]
      123 CALL                             R7 1 1
      124 CALL                             R7 0 1
      125 SETTABLEKS                       R7 R4 K46 ["FFlagAssistantAnimationGenTool"]
      127 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      129 LOADK                            R8 K47 ["AssistantAskInputToolLLM2"]
      130 CALL                             R7 1 1
      131 CALL                             R7 0 1
      132 SETTABLEKS                       R7 R4 K48 ["FFlagAssistantAskInputToolLLM"]
      134 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      136 LOADK                            R8 K49 ["AssistantAssetSearchCreatorStoreUtm"]
      137 CALL                             R7 1 1
      138 CALL                             R7 0 1
      139 SETTABLEKS                       R7 R4 K50 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      141 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      143 LOADK                            R8 K51 ["AssistantAssetSearchDirectInsert"]
      144 CALL                             R7 1 1
      145 CALL                             R7 0 1
      146 SETTABLEKS                       R7 R4 K52 ["FFlagAssistantAssetSearchDirectInsert"]
      148 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      150 LOADK                            R8 K53 ["AssistantAssetTileNamePreview"]
      151 CALL                             R7 1 1
      152 CALL                             R7 0 1
      153 SETTABLEKS                       R7 R4 K54 ["FFlagAssistantAssetTileNamePreview"]
      155 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      157 LOADK                            R8 K55 ["AssistantAvatarAutoSetupTool4"]
      158 CALL                             R7 1 1
      159 CALL                             R7 0 1
      160 SETTABLEKS                       R7 R4 K56 ["FFlagAssistantAvatarAutoSetupTool"]
      162 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      164 LOADK                            R8 K57 ["AssistantBetaFeatureSkills"]
      165 CALL                             R7 1 1
      166 CALL                             R7 0 1
      167 SETTABLEKS                       R7 R4 K58 ["FFlagAssistantBetaFeatureSkills"]
      169 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      171 LOADK                            R8 K59 ["AssistantCapturePluginGuiTool"]
      172 CALL                             R7 1 1
      173 CALL                             R7 0 1
      174 SETTABLEKS                       R7 R4 K60 ["FFlagAssistantCapturePluginGuiTool"]
      176 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      178 LOADK                            R8 K61 ["AssistantChatFollowBottomThreshold"]
      179 CALL                             R7 1 1
      180 CALL                             R7 0 1
      181 SETTABLEKS                       R7 R4 K62 ["FFlagAssistantChatFollowBottomThreshold"]
      183 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      185 LOADK                            R8 K63 ["AssistantCloseDropdownsOnWidgetHidden"]
      186 CALL                             R7 1 1
      187 CALL                             R7 0 1
      188 SETTABLEKS                       R7 R4 K64 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      190 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      192 LOADK                            R8 K65 ["AssistantConfirmButtonUpdate"]
      193 CALL                             R7 1 1
      194 CALL                             R7 0 1
      195 SETTABLEKS                       R7 R4 K66 ["FFlagAssistantConfirmButtonUpdate"]
      197 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      199 LOADK                            R8 K67 ["AssistantConsoleOutputTailFromEnd2"]
      200 CALL                             R7 1 1
      201 CALL                             R7 0 1
      202 SETTABLEKS                       R7 R4 K68 ["FFlagAssistantConsoleOutputTailFromEnd"]
      204 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      206 LOADK                            R8 K69 ["AssistantCreditMetering3"]
      207 CALL                             R7 1 1
      208 CALL                             R7 0 1
      209 SETTABLEKS                       R7 R4 K70 ["FFlagAssistantCreditMetering"]
      211 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      213 LOADK                            R8 K71 ["AssistantCreditMeteringAdditionalUsage"]
      214 LOADB                            R9 1
      215 CALL                             R7 2 1
      216 CALL                             R7 0 1
      217 SETTABLEKS                       R7 R4 K72 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      219 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      221 LOADK                            R8 K73 ["AssistantCreditMeteringInferBlockReason"]
      222 CALL                             R7 1 1
      223 CALL                             R7 0 1
      224 SETTABLEKS                       R7 R4 K74 ["FFlagAssistantCreditMeteringInferBlockReason"]
      226 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      228 LOADK                            R8 K75 ["AssistantCreditMeteringLocalBackend"]
      229 CALL                             R7 1 1
      230 CALL                             R7 0 1
      231 SETTABLEKS                       R7 R4 K76 ["FFlagAssistantCreditMeteringLocalBackend"]
      233 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      235 LOADK                            R8 K77 ["AssistantCreditMeteringLocalBackendExp"]
      236 CALL                             R7 1 1
      237 CALL                             R7 0 1
      238 SETTABLEKS                       R7 R4 K78 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      240 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      242 LOADK                            R8 K79 ["AssistantCreditMeteringResetPeriod"]
      243 CALL                             R7 1 1
      244 CALL                             R7 0 1
      245 SETTABLEKS                       R7 R4 K80 ["FFlagAssistantCreditMeteringResetPeriod"]
      247 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      249 LOADK                            R8 K81 ["AssistantDestroySessionMonitorsOnClose"]
      250 CALL                             R7 1 1
      251 CALL                             R7 0 1
      252 SETTABLEKS                       R7 R4 K82 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      254 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      256 LOADK                            R8 K83 ["AssistantDisableApplyEditDataModelAvailability"]
      257 CALL                             R7 1 1
      258 CALL                             R7 0 1
      259 SETTABLEKS                       R7 R4 K84 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      261 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      263 LOADK                            R8 K85 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      264 CALL                             R7 1 1
      265 CALL                             R7 0 1
      266 SETTABLEKS                       R7 R4 K86 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      268 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      270 LOADK                            R8 K87 ["AssistantDisableBranching"]
      271 CALL                             R7 1 1
      272 CALL                             R7 0 1
      273 SETTABLEKS                       R7 R4 K88 ["FFlagAssistantDisableBranching"]
      275 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      277 LOADK                            R8 K89 ["AssistantDisableSessionFilter"]
      278 CALL                             R7 1 1
      279 CALL                             R7 0 1
      280 SETTABLEKS                       R7 R4 K90 ["FFlagAssistantDisableSessionFilter"]
      282 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      284 LOADK                            R8 K91 ["AssistantEditScrubbarPropertyRow"]
      285 CALL                             R7 1 1
      286 CALL                             R7 0 1
      287 SETTABLEKS                       R7 R4 K92 ["FFlagAssistantEditScrubbarPropertyRow"]
      289 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      291 LOADK                            R8 K93 ["AssistantEval"]
      292 CALL                             R7 1 1
      293 CALL                             R7 0 1
      294 SETTABLEKS                       R7 R4 K94 ["FFlagAssistantEval"]
      296 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      298 LOADK                            R8 K95 ["AssistantExecLuauYieldHint2"]
      299 CALL                             R7 1 1
      300 CALL                             R7 0 1
      301 SETTABLEKS                       R7 R4 K96 ["FFlagAssistantExecLuauYieldHint"]
      303 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      305 LOADK                            R8 K97 ["AssistantExternalMCPPluginSettingRedundancy"]
      306 CALL                             R7 1 1
      307 CALL                             R7 0 1
      308 SETTABLEKS                       R7 R4 K98 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      310 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      312 LOADK                            R8 K99 ["AssistantFeedbackView"]
      313 CALL                             R7 1 1
      314 CALL                             R7 0 1
      315 SETTABLEKS                       R7 R4 K100 ["FFlagAssistantFeedbackView"]
      317 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      319 LOADK                            R8 K101 ["AssistantFixStartPlayHang"]
      320 CALL                             R7 1 1
      321 CALL                             R7 0 1
      322 SETTABLEKS                       R7 R4 K102 ["FFlagAssistantFixStartPlayHang"]
      324 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      326 LOADK                            R8 K103 ["AssistantForceRemoteServiceForInternal"]
      327 CALL                             R7 1 1
      328 CALL                             R7 0 1
      329 SETTABLEKS                       R7 R4 K104 ["FFlagAssistantForceRemoteServiceForInternal"]
      331 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      333 LOADK                            R8 K105 ["AssistantGen3DAssetPublishTracking"]
      334 CALL                             R7 1 1
      335 CALL                             R7 0 1
      336 SETTABLEKS                       R7 R4 K106 ["FFlagAssistantGen3DAssetPublishTracking"]
      338 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      340 LOADK                            R8 K107 ["AssistantGen3dAutoSegmentation"]
      341 CALL                             R7 1 1
      342 CALL                             R7 0 1
      343 SETTABLEKS                       R7 R4 K108 ["FFlagAssistantGen3dAutoSegmentation"]
      345 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      347 LOADK                            R8 K109 ["AssistantGen3DImagePreviewTelemetry"]
      348 CALL                             R7 1 1
      349 CALL                             R7 0 1
      350 SETTABLEKS                       R7 R4 K110 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      352 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      354 LOADK                            R8 K111 ["AssistantGen3dRequirePromptToGenerate"]
      355 CALL                             R7 1 1
      356 CALL                             R7 0 1
      357 SETTABLEKS                       R7 R4 K112 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      359 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      361 LOADK                            R8 K113 ["AssistantGen3DTelemetryV2"]
      362 CALL                             R7 1 1
      363 CALL                             R7 0 1
      364 SETTABLEKS                       R7 R4 K114 ["FFlagAssistantGen3DTelemetryV2"]
      366 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      368 LOADK                            R8 K115 ["AssistantGenerateLayoutTool"]
      369 CALL                             R7 1 1
      370 CALL                             R7 0 1
      371 SETTABLEKS                       R7 R4 K116 ["FFlagAssistantGenerateLayoutTool"]
      373 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      375 LOADK                            R8 K117 ["AssistantGenerateLayoutTopDownHint"]
      376 CALL                             R7 1 1
      377 CALL                             R7 0 1
      378 SETTABLEKS                       R7 R4 K118 ["FFlagAssistantGenerateLayoutTopDownHint"]
      380 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      382 LOADK                            R8 K119 ["AssistantGrepSearchKeepEmptyLines"]
      383 CALL                             R7 1 1
      384 CALL                             R7 0 1
      385 SETTABLEKS                       R7 R4 K120 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      387 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      389 LOADK                            R8 K121 ["AssistantHidePinForBuild"]
      390 CALL                             R7 1 1
      391 CALL                             R7 0 1
      392 SETTABLEKS                       R7 R4 K122 ["FFlagAssistantHidePinForBuild"]
      394 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      396 LOADK                            R8 K123 ["AssistantHintMultiEditOverExecLuau"]
      397 CALL                             R7 1 1
      398 CALL                             R7 0 1
      399 SETTABLEKS                       R7 R4 K124 ["FFlagAssistantHintMultiEditOverExecLuau"]
      401 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      403 LOADK                            R8 K125 ["AssistantHttpGetOnStandaloneDM"]
      404 CALL                             R7 1 1
      405 CALL                             R7 0 1
      406 SETTABLEKS                       R7 R4 K126 ["FFlagAssistantHttpGetOnStandaloneDM"]
      408 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      410 LOADK                            R8 K127 ["AssistantImageGenAbortPollOn4xx"]
      411 CALL                             R7 1 1
      412 CALL                             R7 0 1
      413 SETTABLEKS                       R7 R4 K128 ["FFlagAssistantImageGenAbortPollOn4xx"]
      415 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      417 LOADK                            R8 K129 ["AssistantImageGenImprovements"]
      418 CALL                             R7 1 1
      419 CALL                             R7 0 1
      420 SETTABLEKS                       R7 R4 K130 ["FFlagAssistantImageGenImprovements"]
      422 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      424 LOADK                            R8 K131 ["AssistantImageGenSeed"]
      425 CALL                             R7 1 1
      426 CALL                             R7 0 1
      427 SETTABLEKS                       R7 R4 K132 ["FFlagAssistantImageGenSeed"]
      429 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      431 LOADK                            R8 K133 ["AssistantImageSelectionWizardModeMeshGen"]
      432 CALL                             R7 1 1
      433 CALL                             R7 0 1
      434 SETTABLEKS                       R7 R4 K134 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      436 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      438 LOADK                            R8 K135 ["AssistantImageSelectionWizardModePrimitiveGen"]
      439 CALL                             R7 1 1
      440 CALL                             R7 0 1
      441 SETTABLEKS                       R7 R4 K136 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      443 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      445 LOADK                            R8 K137 ["AssistantImageSelectionWizardModeTextureGen"]
      446 CALL                             R7 1 1
      447 CALL                             R7 0 1
      448 SETTABLEKS                       R7 R4 K138 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      450 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      452 LOADK                            R8 K139 ["AssistantInsertAssetSandboxProceduralModels"]
      453 CALL                             R7 1 1
      454 CALL                             R7 0 1
      455 SETTABLEKS                       R7 R4 K140 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      457 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      459 LOADK                            R8 K141 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      460 CALL                             R7 1 1
      461 CALL                             R7 0 1
      462 SETTABLEKS                       R7 R4 K142 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      464 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      466 LOADK                            R8 K143 ["AssistantInsertAssetSandboxScripts"]
      467 CALL                             R7 1 1
      468 CALL                             R7 0 1
      469 SETTABLEKS                       R7 R4 K144 ["FFlagAssistantInsertAssetSandboxScripts"]
      471 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      473 LOADK                            R8 K145 ["MCPWebSocketRetryOnStartError"]
      474 CALL                             R7 1 1
      475 CALL                             R7 0 1
      476 JUMPIFNOT                        R7 ; [+5]
      477 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      479 LOADK                            R8 K146 ["AssistantMCPProxyAuthRejectedWarn"]
      480 CALL                             R7 1 1
      481 CALL                             R7 0 1
      482 SETTABLEKS                       R7 R4 K147 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      484 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      486 LOADK                            R8 K148 ["AssistantMcpImageGenShortcut"]
      487 CALL                             R7 1 1
      488 CALL                             R7 0 1
      489 SETTABLEKS                       R7 R4 K149 ["FFlagAssistantMcpImageGenShortcut"]
      491 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      493 LOADK                            R9 K150 ["AssistantMCPVideoCapture"]
      494 CALL                             R8 1 1
      495 CALL                             R8 0 1
      496 AND                              R7 R8 R6
      497 SETTABLEKS                       R7 R4 K151 ["FFlagAssistantMCPVideoCapture"]
      499 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      501 LOADK                            R8 K152 ["AssistantMeshGenAutoExpandCollapse"]
      502 CALL                             R7 1 1
      503 CALL                             R7 0 1
      504 SETTABLEKS                       R7 R4 K153 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      506 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      508 LOADK                            R8 K154 ["AssistantMeshGenHintImage"]
      509 CALL                             R7 1 1
      510 CALL                             R7 0 1
      511 SETTABLEKS                       R7 R4 K155 ["FFlagAssistantMeshGenHintImage"]
      513 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      515 LOADK                            R8 K156 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      516 CALL                             R7 1 1
      517 CALL                             R7 0 1
      518 SETTABLEKS                       R7 R4 K157 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      520 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      522 LOADK                            R8 K158 ["AssistantMeshGenRemoveAdminOptions"]
      523 CALL                             R7 1 1
      524 CALL                             R7 0 1
      525 SETTABLEKS                       R7 R4 K159 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      527 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      529 LOADK                            R8 K160 ["AssistantMoveToolButtonsToTheRightAgain"]
      530 CALL                             R7 1 1
      531 CALL                             R7 0 1
      532 SETTABLEKS                       R7 R4 K161 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      534 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      536 LOADK                            R8 K162 ["AssistantMultiEditExternalClient"]
      537 CALL                             R7 1 1
      538 CALL                             R7 0 1
      539 SETTABLEKS                       R7 R4 K163 ["FFlagAssistantMultiEditExternalClient"]
      541 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      543 LOADK                            R8 K164 ["AssistantOmitSlashToolCallDroppedFields"]
      544 CALL                             R7 1 1
      545 CALL                             R7 0 1
      546 SETTABLEKS                       R7 R4 K165 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      548 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      550 LOADK                            R8 K166 ["AssistantPinForBuildUI"]
      551 CALL                             R7 1 1
      552 CALL                             R7 0 1
      553 SETTABLEKS                       R7 R4 K167 ["FFlagAssistantPinForBuildUI"]
      555 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      557 LOADK                            R8 K168 ["AssistantPlanRevisionList"]
      558 CALL                             R7 1 1
      559 CALL                             R7 0 1
      560 SETTABLEKS                       R7 R4 K169 ["FFlagAssistantPlanRevisionList"]
      562 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      564 LOADK                            R8 K170 ["AssistantPlaytestContext"]
      565 CALL                             R7 1 1
      566 CALL                             R7 0 1
      567 SETTABLEKS                       R7 R4 K171 ["FFlagAssistantPlaytestContext"]
      569 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      571 LOADK                            R8 K172 ["AssistantPlaytestKGEnabled"]
      572 CALL                             R7 1 1
      573 CALL                             R7 0 1
      574 SETTABLEKS                       R7 R4 K173 ["FFlagAssistantPlaytestKGEnabled"]
      576 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      578 LOADK                            R8 K174 ["AssistantPlaytestToolFix"]
      579 CALL                             R7 1 1
      580 CALL                             R7 0 1
      581 SETTABLEKS                       R7 R4 K175 ["FFlagAssistantPlaytestToolFix"]
      583 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      585 LOADK                            R8 K176 ["AssistantPromptHistoryFromConversation"]
      586 CALL                             R7 1 1
      587 CALL                             R7 0 1
      588 SETTABLEKS                       R7 R4 K177 ["FFlagAssistantPromptHistoryFromConversation"]
      590 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      592 LOADK                            R8 K178 ["AssistantPromptModeratedError"]
      593 CALL                             R7 1 1
      594 CALL                             R7 0 1
      595 SETTABLEKS                       R7 R4 K179 ["FFlagAssistantPromptModeratedError"]
      597 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      599 LOADK                            R8 K180 ["AssistantReadFileRejectRangeWithEntireFile"]
      600 CALL                             R7 1 1
      601 CALL                             R7 0 1
      602 SETTABLEKS                       R7 R4 K181 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
      604 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      606 LOADK                            R8 K182 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      607 CALL                             R7 1 1
      608 CALL                             R7 0 1
      609 SETTABLEKS                       R7 R4 K183 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      611 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      613 LOADK                            R8 K184 ["AssistantResourcePromptBlocks"]
      614 CALL                             R7 1 1
      615 CALL                             R7 0 1
      616 SETTABLEKS                       R7 R4 K185 ["FFlagAssistantResourcePromptBlocks"]
      618 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      620 LOADK                            R8 K186 ["AssistantRestoreCameraStateInExec"]
      621 CALL                             R7 1 1
      622 CALL                             R7 0 1
      623 SETTABLEKS                       R7 R4 K187 ["FFlagAssistantRestoreCameraStateInExec"]
      625 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      627 LOADK                            R8 K188 ["AssistantRestoreCameraStateInExecWarn"]
      628 CALL                             R7 1 1
      629 CALL                             R7 0 1
      630 SETTABLEKS                       R7 R4 K189 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      632 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      634 LOADK                            R8 K190 ["AssistantRestoreMostRecentThread"]
      635 CALL                             R7 1 1
      636 CALL                             R7 0 1
      637 SETTABLEKS                       R7 R4 K191 ["FFlagAssistantRestoreMostRecentThread"]
      639 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      641 LOADK                            R8 K192 ["AssistantScrollableAskInputForm"]
      642 CALL                             R7 1 1
      643 CALL                             R7 0 1
      644 SETTABLEKS                       R7 R4 K193 ["FFlagAssistantScrollableAskInputForm"]
      646 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      648 LOADK                            R8 K194 ["AssistantSegmentationBridge"]
      649 CALL                             R7 1 1
      650 CALL                             R7 0 1
      651 SETTABLEKS                       R7 R4 K195 ["FFlagAssistantSegmentationBridge"]
      653 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      655 LOADK                            R8 K196 ["AssistantSegmentationPromptModeSelector"]
      656 CALL                             R7 1 1
      657 CALL                             R7 0 1
      658 SETTABLEKS                       R7 R4 K197 ["FFlagAssistantSegmentationPromptModeSelector"]
      660 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      662 LOADK                            R8 K198 ["AssistantSegmentationUIFixes"]
      663 CALL                             R7 1 1
      664 CALL                             R7 0 1
      665 SETTABLEKS                       R7 R4 K199 ["FFlagAssistantSegmentationUIFixes"]
      667 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      669 LOADK                            R8 K200 ["AssistantSegmentMeshCleanupWorldWrapper"]
      670 CALL                             R7 1 1
      671 CALL                             R7 0 1
      672 SETTABLEKS                       R7 R4 K201 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      674 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      676 LOADK                            R8 K202 ["AssistantSegmentMeshTool"]
      677 CALL                             R7 1 1
      678 CALL                             R7 0 1
      679 SETTABLEKS                       R7 R4 K203 ["FFlagAssistantSegmentMeshTool"]
      681 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      683 LOADK                            R8 K204 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      684 CALL                             R7 1 1
      685 CALL                             R7 0 1
      686 SETTABLEKS                       R7 R4 K205 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      688 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      690 LOADK                            R8 K206 ["AssistantSkillToolNameReplace"]
      691 CALL                             R7 1 1
      692 CALL                             R7 0 1
      693 SETTABLEKS                       R7 R4 K207 ["FFlagAssistantSkillToolNameReplace"]
      695 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      697 LOADK                            R8 K208 ["AssistantSlashCommandStepBackNavigation"]
      698 CALL                             R7 1 1
      699 CALL                             R7 0 1
      700 SETTABLEKS                       R7 R4 K209 ["FFlagAssistantSlashCommandStepBackNavigation"]
      702 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      704 LOADK                            R8 K210 ["AssistantSlashToolNameAndError"]
      705 CALL                             R7 1 1
      706 CALL                             R7 0 1
      707 SETTABLEKS                       R7 R4 K211 ["FFlagAssistantSlashToolNameAndError"]
      709 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      711 LOADK                            R8 K212 ["AssistantStandaloneDataModel"]
      712 CALL                             R7 1 1
      713 CALL                             R7 0 1
      714 SETTABLEKS                       R7 R4 K213 ["FFlagAssistantStandaloneDataModel"]
      716 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      718 LOADK                            R8 K214 ["AssistantStartStopPlayBusyCheck"]
      719 CALL                             R7 1 1
      720 CALL                             R7 0 1
      721 SETTABLEKS                       R7 R4 K215 ["FFlagAssistantStartStopPlayBusyCheck"]
      723 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      725 LOADK                            R8 K216 ["AssistantTestLLMPreserveThinking"]
      726 LOADB                            R9 1
      727 CALL                             R7 2 1
      728 CALL                             R7 0 1
      729 SETTABLEKS                       R7 R4 K217 ["FFlagAssistantTestLLMPreserveThinking"]
      731 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      733 LOADK                            R8 K218 ["AssistantTestLLMThinkingEnabled"]
      734 LOADB                            R9 1
      735 CALL                             R7 2 1
      736 CALL                             R7 0 1
      737 SETTABLEKS                       R7 R4 K219 ["FFlagAssistantTestLLMThinkingEnabled"]
      739 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      741 LOADK                            R8 K220 ["AssistantTextureGenAutoSelectView"]
      742 CALL                             R7 1 1
      743 CALL                             R7 0 1
      744 SETTABLEKS                       R7 R4 K221 ["FFlagAssistantTextureGenAutoSelectView"]
      746 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      748 LOADK                            R8 K222 ["AssistantTextureGenModelSelection"]
      749 CALL                             R7 1 1
      750 CALL                             R7 0 1
      751 SETTABLEKS                       R7 R4 K223 ["FFlagAssistantTextureGenModelSelection"]
      753 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      755 LOADK                            R8 K224 ["AssistantTextureGenTool"]
      756 CALL                             R7 1 1
      757 CALL                             R7 0 1
      758 SETTABLEKS                       R7 R4 K225 ["FFlagAssistantTextureGenTool"]
      760 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      762 LOADK                            R8 K226 ["AssistantTextureGenUseSourceMeshCFrame"]
      763 CALL                             R7 1 1
      764 CALL                             R7 0 1
      765 SETTABLEKS                       R7 R4 K227 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      767 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      769 LOADK                            R8 K228 ["AssistantTruncatePrimGenHeader"]
      770 CALL                             R7 1 1
      771 CALL                             R7 0 1
      772 SETTABLEKS                       R7 R4 K229 ["FFlagAssistantTruncatePrimGenHeader"]
      774 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      776 LOADK                            R8 K230 ["AssistantUntitledChatPlaceholder"]
      777 CALL                             R7 1 1
      778 CALL                             R7 0 1
      779 SETTABLEKS                       R7 R4 K231 ["FFlagAssistantUntitledChatPlaceholder"]
      781 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      783 LOADK                            R8 K232 ["AssistantUseNewDMNetworking"]
      784 CALL                             R7 1 1
      785 CALL                             R7 0 1
      786 SETTABLEKS                       R7 R4 K233 ["FFlagAssistantUseNewDMNetworking"]
      788 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      790 LOADK                            R8 K234 ["AssistantUseNewTags"]
      791 CALL                             R7 1 1
      792 CALL                             R7 0 1
      793 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantUseNewTags"]
      795 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      797 LOADK                            R8 K236 ["AssistantUseRemoteService2"]
      798 CALL                             R7 1 1
      799 CALL                             R7 0 1
      800 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantUseRemoteService"]
      802 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      804 LOADK                            R8 K238 ["AssistantUseRemoteServiceExp"]
      805 CALL                             R7 1 1
      806 CALL                             R7 0 1
      807 SETTABLEKS                       R7 R4 K239 ["FFlagAssistantUseRemoteServiceExp"]
      809 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      811 LOADK                            R8 K240 ["AssistantUseVariantHttpTransport"]
      812 CALL                             R7 1 1
      813 CALL                             R7 0 1
      814 SETTABLEKS                       R7 R4 K241 ["FFlagAssistantUseVariantHttpTransport"]
      816 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      818 LOADK                            R8 K242 ["AssistantVersionMismatchWarning"]
      819 CALL                             R7 1 1
      820 CALL                             R7 0 1
      821 SETTABLEKS                       R7 R4 K243 ["FFlagAssistantVersionMismatchWarning"]
      823 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      825 LOADK                            R8 K244 ["AssistantVideoCaptureTool"]
      826 CALL                             R7 1 1
      827 CALL                             R7 0 1
      828 SETTABLEKS                       R7 R4 K245 ["FFlagAssistantVideoCaptureTool"]
      830 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      832 LOADK                            R9 K246 ["AssistantVirtualInputEnabled"]
      833 CALL                             R8 1 1
      834 CALL                             R8 0 1
      835 AND                              R7 R8 R5
      836 SETTABLEKS                       R7 R4 K247 ["FFlagAssistantVirtualInputEnabled"]
      838 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      840 LOADK                            R8 K248 ["DebugAssistantMultiPlayerAgentsLog"]
      841 CALL                             R7 1 1
      842 CALL                             R7 0 1
      843 SETTABLEKS                       R7 R4 K249 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      845 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      847 LOADK                            R8 K250 ["DebugEnableTestLLMAdapter"]
      848 CALL                             R7 1 1
      849 CALL                             R7 0 1
      850 SETTABLEKS                       R7 R4 K251 ["FFlagDebugEnableTestLLMAdapter"]
      852 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      854 LOADK                            R8 K252 ["DebugMockPrimitiveGenBackend"]
      855 CALL                             R7 1 1
      856 CALL                             R7 0 1
      857 SETTABLEKS                       R7 R4 K253 ["FFlagDebugMockPrimitiveGenBackend"]
      859 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      861 LOADK                            R8 K254 ["DisableMCPConnectionIndicator"]
      862 CALL                             R7 1 1
      863 CALL                             R7 0 1
      864 SETTABLEKS                       R7 R4 K255 ["FFlagDisableMCPConnectionIndicator"]
      866 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      868 LOADK                            R8 K256 ["FFlagDisableNavigationConfirmation"]
      869 CALL                             R7 1 1
      870 CALL                             R7 0 1
      871 SETTABLEKS                       R7 R4 K256 ["FFlagDisableNavigationConfirmation"]
      873 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      875 LOADK                            R8 K257 ["DisableNewSmartSize"]
      876 CALL                             R7 1 1
      877 CALL                             R7 0 1
      878 SETTABLEKS                       R7 R4 K258 ["FFlagDisableNewSmartSize"]
      880 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      882 LOADK                            R8 K259 ["DisableOldSmartSize"]
      883 CALL                             R7 1 1
      884 CALL                             R7 0 1
      885 SETTABLEKS                       R7 R4 K260 ["FFlagDisableOldSmartSize"]
      887 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      889 LOADK                            R8 K261 ["FFlagDisableStartStopPlayConfirmation"]
      890 CALL                             R7 1 1
      891 CALL                             R7 0 1
      892 SETTABLEKS                       R7 R4 K261 ["FFlagDisableStartStopPlayConfirmation"]
      894 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      896 LOADK                            R8 K262 ["FFlagDisableUserInputConfirmation"]
      897 CALL                             R7 1 1
      898 CALL                             R7 0 1
      899 SETTABLEKS                       R7 R4 K262 ["FFlagDisableUserInputConfirmation"]
      901 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      903 LOADK                            R8 K263 ["EnableAssistantImageUpload"]
      904 CALL                             R7 1 1
      905 CALL                             R7 0 1
      906 SETTABLEKS                       R7 R4 K264 ["FFlagEnableAssistantImageUpload"]
      908 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      910 LOADK                            R8 K265 ["EnablePlaytestSubagent"]
      911 CALL                             R7 1 1
      912 CALL                             R7 0 1
      913 SETTABLEKS                       R7 R4 K266 ["FFlagEnablePlaytestSubagent"]
      915 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      917 LOADK                            R8 K267 ["Gen3dSegmentationSelector"]
      918 CALL                             R7 1 1
      919 CALL                             R7 0 1
      920 SETTABLEKS                       R7 R4 K268 ["FFlagGen3dSegmentationSelector"]
      922 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      924 LOADK                            R8 K269 ["MCPAssistantAzureOpenAI"]
      925 CALL                             R7 1 1
      926 CALL                             R7 0 1
      927 SETTABLEKS                       R7 R4 K270 ["FFlagMCPAssistantAzureOpenAI"]
      929 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      931 LOADK                            R8 K271 ["MCPAssistantManagementMenu5"]
      932 CALL                             R7 1 1
      933 CALL                             R7 0 1
      934 SETTABLEKS                       R7 R4 K272 ["FFlagMCPAssistantManagementMenu"]
      936 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      938 LOADK                            R8 K273 ["MCPAssistantOpenAIPreserveThinking"]
      939 CALL                             R7 1 1
      940 CALL                             R7 0 1
      941 SETTABLEKS                       R7 R4 K274 ["FFlagMCPAssistantOpenAIPreserveThinking"]
      943 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      945 LOADK                            R8 K275 ["MCPAssistantOpenAIThinkingEnabled"]
      946 CALL                             R7 1 1
      947 CALL                             R7 0 1
      948 SETTABLEKS                       R7 R4 K276 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
      950 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      952 LOADK                            R8 K277 ["MCPConnectionIndicatorTooltip"]
      953 CALL                             R7 1 1
      954 CALL                             R7 0 1
      955 SETTABLEKS                       R7 R4 K278 ["FFlagMCPConnectionIndicatorTooltip"]
      957 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      959 LOADK                            R8 K279 ["MCPContentNormalization"]
      960 CALL                             R7 1 1
      961 CALL                             R7 0 1
      962 SETTABLEKS                       R7 R4 K280 ["FFlagMCPContentNormalization"]
      964 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      966 LOADK                            R8 K281 ["MCPEnableToolDisabling"]
      967 CALL                             R7 1 1
      968 CALL                             R7 0 1
      969 SETTABLEKS                       R7 R4 K282 ["FFlagMCPEnableToolDisabling"]
      971 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      973 LOADK                            R8 K283 ["PlaytestVision"]
      974 CALL                             R7 1 1
      975 CALL                             R7 0 1
      976 SETTABLEKS                       R7 R4 K284 ["FFlagPlaytestVision"]
      978 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      980 LOADK                            R8 K285 ["PrimGenBetterErrorType"]
      981 CALL                             R7 1 1
      982 CALL                             R7 0 1
      983 SETTABLEKS                       R7 R4 K286 ["FFlagPrimGenBetterErrorType"]
      985 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      987 LOADK                            R8 K287 ["PrimGenImageGenPromptTemplateEnabled"]
      988 CALL                             R7 1 1
      989 CALL                             R7 0 1
      990 SETTABLEKS                       R7 R4 K288 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
      992 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      994 LOADK                            R8 K289 ["PrimGenSchemaSelector"]
      995 CALL                             R7 1 1
      996 CALL                             R7 0 1
      997 SETTABLEKS                       R7 R4 K290 ["FFlagPrimGenSchemaSelector"]
      999 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1001 LOADK                            R8 K291 ["PrimGenVerboseDmIsUnReachableMsg"]
     1002 CALL                             R7 1 1
     1003 CALL                             R7 0 1
     1004 SETTABLEKS                       R7 R4 K292 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1006 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1008 LOADK                            R8 K293 ["PrimGenVersionMismatchError"]
     1009 CALL                             R7 1 1
     1010 CALL                             R7 0 1
     1011 SETTABLEKS                       R7 R4 K294 ["FFlagPrimGenVersionMismatchError"]
     1013 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1015 LOADK                            R8 K295 ["PropertiesExposeContentView"]
     1016 CALL                             R7 1 1
     1017 CALL                             R7 0 1
     1018 SETTABLEKS                       R7 R4 K296 ["FFlagPropertiesExposeContentView"]
     1020 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1022 LOADK                            R8 K297 ["ScreenCaptureCamera"]
     1023 CALL                             R7 1 1
     1024 CALL                             R7 0 1
     1025 SETTABLEKS                       R7 R4 K298 ["FFlagScreenCaptureCamera"]
     1027 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1029 LOADK                            R8 K299 ["ScriptDebuggerServiceEnabled2"]
     1030 CALL                             R7 1 1
     1031 CALL                             R7 0 1
     1032 SETTABLEKS                       R7 R4 K300 ["FFlagScriptDebuggerServiceEnabled"]
     1034 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1036 LOADK                            R8 K301 ["SubagentScriptEditAutoConfirmation"]
     1037 CALL                             R7 1 1
     1038 CALL                             R7 0 1
     1039 SETTABLEKS                       R7 R4 K302 ["FFlagSubagentScriptEditAutoConfirmation"]
     1041 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1043 LOADK                            R8 K303 ["UseStudioSideListTool"]
     1044 CALL                             R7 1 1
     1045 CALL                             R7 0 1
     1046 SETTABLEKS                       R7 R4 K304 ["FFlagUseStudioSideListTool"]
     1048 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1050 LOADK                            R8 K306 ["AmrAssetDependencyGrantEventTimeout"]
     1051 LOADN                            R9 40
     1052 CALL                             R7 2 1
     1053 CALL                             R7 0 1
     1054 SETTABLEKS                       R7 R4 K307 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1056 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1058 LOADK                            R8 K308 ["AssistantAutoSaveInterval"]
     1059 LOADN                            R9 60
     1060 CALL                             R7 2 1
     1061 CALL                             R7 0 1
     1062 SETTABLEKS                       R7 R4 K309 ["FIntAssistantAutoSaveInterval"]
     1064 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1066 LOADK                            R8 K310 ["AssistantDebugToolMaxOutput"]
     1067 LOADN                            R9 20000
     1068 CALL                             R7 2 1
     1069 CALL                             R7 0 1
     1070 SETTABLEKS                       R7 R4 K311 ["FIntAssistantDebugToolMaxOutput"]
     1072 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1074 LOADK                            R8 K312 ["AssistantJobWaitDefaultTimeout"]
     1075 LOADN                            R9 600
     1076 CALL                             R7 2 1
     1077 CALL                             R7 0 1
     1078 SETTABLEKS                       R7 R4 K313 ["FIntAssistantJobWaitDefaultTimeout"]
     1080 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1082 LOADK                            R8 K314 ["AssistantMaxDisplayTextChars"]
     1083 LOADK                            R9 K315 [100000]
     1084 CALL                             R7 2 1
     1085 CALL                             R7 0 1
     1086 SETTABLEKS                       R7 R4 K316 ["FIntAssistantMaxDisplayTextChars"]
     1088 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1090 LOADK                            R8 K317 ["AssistantMaxToolInputStringLen"]
     1091 LOADN                            R9 2000
     1092 CALL                             R7 2 1
     1093 CALL                             R7 0 1
     1094 SETTABLEKS                       R7 R4 K318 ["FIntAssistantMaxToolInputStringLen"]
     1096 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1098 LOADK                            R8 K319 ["AssistantMeshGenMaxTrianglesDefault"]
     1099 LOADN                            R9 10000
     1100 CALL                             R7 2 1
     1101 CALL                             R7 0 1
     1102 SETTABLEKS                       R7 R4 K320 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1104 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1106 LOADK                            R8 K321 ["AssistantMinPopoverHeight"]
     1107 LOADN                            R9 150
     1108 CALL                             R7 2 1
     1109 CALL                             R7 0 1
     1110 SETTABLEKS                       R7 R4 K322 ["FIntAssistantMinPopoverHeight"]
     1112 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1114 LOADK                            R8 K323 ["AssistantPersistenceMessageLoadLimit"]
     1115 LOADN                            R9 5
     1116 CALL                             R7 2 1
     1117 CALL                             R7 0 1
     1118 SETTABLEKS                       R7 R4 K324 ["FIntAssistantPersistenceMessageLoadLimit"]
     1120 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1122 LOADK                            R8 K325 ["AssistantPersistenceThreadLoadLimit"]
     1123 LOADN                            R9 5
     1124 CALL                             R7 2 1
     1125 CALL                             R7 0 1
     1126 SETTABLEKS                       R7 R4 K326 ["FIntAssistantPersistenceThreadLoadLimit"]
     1128 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1130 LOADK                            R8 K327 ["AssistantPostTurnRefreshDelaySeconds"]
     1131 LOADN                            R9 2
     1132 CALL                             R7 2 1
     1133 CALL                             R7 0 1
     1134 SETTABLEKS                       R7 R4 K328 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1136 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1138 LOADK                            R8 K329 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1139 LOADN                            R9 999
     1140 CALL                             R7 2 1
     1141 CALL                             R7 0 1
     1142 SETTABLEKS                       R7 R4 K330 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1144 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1146 LOADK                            R8 K331 ["AssistantPrimitiveGenPollIntervalMs"]
     1147 LOADN                            R9 2000
     1148 CALL                             R7 2 1
     1149 CALL                             R7 0 1
     1150 SETTABLEKS                       R7 R4 K332 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1152 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1154 LOADK                            R8 K333 ["AssistantProcessEventTimeoutMS"]
     1155 LOADK                            R9 K334 [60000]
     1156 CALL                             R7 2 1
     1157 CALL                             R7 0 1
     1158 SETTABLEKS                       R7 R4 K335 ["FIntAssistantProcessEventTimeoutMS"]
     1160 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1162 LOADK                            R8 K336 ["AssistantSegmentMeshMaxUserParts"]
     1163 LOADN                            R9 16
     1164 CALL                             R7 2 1
     1165 CALL                             R7 0 1
     1166 SETTABLEKS                       R7 R4 K337 ["FIntAssistantSegmentMeshMaxUserParts"]
     1168 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1170 LOADK                            R8 K338 ["ConvAIMaxHistoryCount"]
     1171 LOADN                            R9 6
     1172 CALL                             R7 2 1
     1173 CALL                             R7 0 1
     1174 SETTABLEKS                       R7 R4 K339 ["FIntConvAIMaxHistoryCount"]
     1176 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1178 LOADK                            R8 K340 ["ExecuteLuauMaxJsonLength"]
     1179 LOADK                            R9 K315 [100000]
     1180 CALL                             R7 2 1
     1181 CALL                             R7 0 1
     1182 SETTABLEKS                       R7 R4 K341 ["FIntExecuteLuauMaxJsonLength"]
     1184 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1186 LOADK                            R8 K342 ["ExecuteLuauMaxStringLength"]
     1187 LOADK                            R9 K315 [100000]
     1188 CALL                             R7 2 1
     1189 CALL                             R7 0 1
     1190 SETTABLEKS                       R7 R4 K343 ["FIntExecuteLuauMaxStringLength"]
     1192 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1194 LOADK                            R8 K344 ["FromHistoryMaxResultChars"]
     1195 LOADK                            R9 K345 [200000]
     1196 CALL                             R7 2 1
     1197 CALL                             R7 0 1
     1198 SETTABLEKS                       R7 R4 K346 ["FIntFromHistoryMaxResultChars"]
     1200 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1202 LOADK                            R8 K347 ["GameTreeDefaultHeadLimit"]
     1203 LOADN                            R9 200
     1204 CALL                             R7 2 1
     1205 CALL                             R7 0 1
     1206 SETTABLEKS                       R7 R4 K348 ["FIntGameTreeDefaultHeadLimit"]
     1208 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1210 LOADK                            R8 K349 ["GameTreeDefaultMaxDepth"]
     1211 LOADN                            R9 3
     1212 CALL                             R7 2 1
     1213 CALL                             R7 0 1
     1214 SETTABLEKS                       R7 R4 K350 ["FIntGameTreeDefaultMaxDepth"]
     1216 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1218 LOADK                            R8 K351 ["GameTreeMaxAbsoluteDepth"]
     1219 LOADN                            R9 10
     1220 CALL                             R7 2 1
     1221 CALL                             R7 0 1
     1222 SETTABLEKS                       R7 R4 K352 ["FIntGameTreeMaxAbsoluteDepth"]
     1224 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1226 LOADK                            R8 K353 ["InspectInstanceMaxJsonLength"]
     1227 LOADN                            R9 500
     1228 CALL                             R7 2 1
     1229 CALL                             R7 0 1
     1230 SETTABLEKS                       R7 R4 K354 ["FIntInspectInstanceMaxJsonLength"]
     1232 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1234 LOADK                            R8 K355 ["InspectInstanceMaxMatches"]
     1235 LOADN                            R9 20
     1236 CALL                             R7 2 1
     1237 CALL                             R7 0 1
     1238 SETTABLEKS                       R7 R4 K356 ["FIntInspectInstanceMaxMatches"]
     1240 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1242 LOADK                            R8 K357 ["InspectInstanceMaxStringLength"]
     1243 LOADN                            R9 1000
     1244 CALL                             R7 2 1
     1245 CALL                             R7 0 1
     1246 SETTABLEKS                       R7 R4 K358 ["FIntInspectInstanceMaxStringLength"]
     1248 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1250 LOADK                            R8 K359 ["MCPAssistantGenerationIndicatorWarningTime"]
     1251 LOADN                            R9 10
     1252 CALL                             R7 2 1
     1253 CALL                             R7 0 1
     1254 SETTABLEKS                       R7 R4 K360 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1256 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1258 LOADK                            R8 K361 ["MCPAssistantInputAreaCharLimit"]
     1259 LOADN                            R9 4000
     1260 CALL                             R7 2 1
     1261 CALL                             R7 0 1
     1262 SETTABLEKS                       R7 R4 K362 ["FIntMCPAssistantInputAreaCharLimit"]
     1264 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1266 LOADK                            R8 K363 ["MCPAssistantMaxPromptHistory"]
     1267 LOADN                            R9 20
     1268 CALL                             R7 2 1
     1269 CALL                             R7 0 1
     1270 SETTABLEKS                       R7 R4 K364 ["FIntMCPAssistantMaxPromptHistory"]
     1272 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1274 LOADK                            R8 K365 ["MCPAssistantMaxToolCalls"]
     1275 LOADN                            R9 20
     1276 CALL                             R7 2 1
     1277 CALL                             R7 0 1
     1278 SETTABLEKS                       R7 R4 K366 ["FIntMCPAssistantMaxToolCalls"]
     1280 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1282 LOADK                            R8 K367 ["MinimumAssistantFreeTrialRemaining"]
     1283 LOADN                            R9 1
     1284 CALL                             R7 2 1
     1285 CALL                             R7 0 1
     1286 SETTABLEKS                       R7 R4 K368 ["FIntMinimumAssistantFreeTrialRemaining"]
     1288 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1290 LOADK                            R8 K369 ["MinimumAssistantRobuxBalance"]
     1291 LOADN                            R9 100
     1292 CALL                             R7 2 1
     1293 CALL                             R7 0 1
     1294 SETTABLEKS                       R7 R4 K370 ["FIntMinimumAssistantRobuxBalance"]
     1296 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1298 LOADK                            R8 K371 ["PlaytestLookBudget"]
     1299 LOADN                            R9 7
     1300 CALL                             R7 2 1
     1301 CALL                             R7 0 1
     1302 SETTABLEKS                       R7 R4 K372 ["FIntPlaytestLookBudget"]
     1304 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1306 LOADK                            R8 K373 ["PlaytestLookTimeoutMs"]
     1307 LOADK                            R9 K334 [60000]
     1308 CALL                             R7 2 1
     1309 CALL                             R7 0 1
     1310 SETTABLEKS                       R7 R4 K374 ["FIntPlaytestLookTimeoutMs"]
     1312 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1314 LOADK                            R8 K375 ["PlaytestMaxToolCalls"]
     1315 LOADN                            R9 50
     1316 CALL                             R7 2 1
     1317 CALL                             R7 0 1
     1318 SETTABLEKS                       R7 R4 K376 ["FIntPlaytestMaxToolCalls"]
     1320 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1322 LOADK                            R8 K377 ["PrimGenLongRunThresholdSec"]
     1323 LOADN                            R9 120
     1324 CALL                             R7 2 1
     1325 CALL                             R7 0 1
     1326 SETTABLEKS                       R7 R4 K378 ["FIntPrimGenLongRunThresholdSec"]
     1328 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1330 LOADK                            R8 K379 ["PrimGenTextMaxLength"]
     1331 LOADN                            R9 80
     1332 CALL                             R7 2 1
     1333 CALL                             R7 0 1
     1334 SETTABLEKS                       R7 R4 K380 ["FIntPrimGenTextMaxLength"]
     1336 GETTABLEKS                       R7 R3 K305 ["createGetFInt"]
     1338 LOADK                            R8 K381 ["UnitTestSubagentMaxToolCalls"]
     1339 LOADN                            R9 100
     1340 CALL                             R7 2 1
     1341 CALL                             R7 0 1
     1342 SETTABLEKS                       R7 R4 K382 ["FIntUnitTestSubagentMaxToolCalls"]
     1344 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1346 LOADK                            R8 K384 ["AssistantDebugCreditMeteringBlockReason"]
     1347 LOADK                            R9 K385 [""]
     1348 CALL                             R7 2 1
     1349 CALL                             R7 0 1
     1350 SETTABLEKS                       R7 R4 K386 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1352 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1354 LOADK                            R8 K387 ["AssistantDisabledSubagents"]
     1355 LOADK                            R9 K385 [""]
     1356 CALL                             R7 2 1
     1357 CALL                             R7 0 1
     1358 SETTABLEKS                       R7 R4 K388 ["FStringAssistantDisabledSubagents"]
     1360 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1362 LOADK                            R8 K389 ["AssistantGen3dDefaultModel"]
     1363 LOADK                            R9 K390 ["Assistant/glm51-h200"]
     1364 CALL                             R7 2 1
     1365 CALL                             R7 0 1
     1366 SETTABLEKS                       R7 R4 K391 ["FStringAssistantGen3dDefaultModel"]
     1368 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1370 LOADK                            R8 K392 ["AssistantJobRunTools"]
     1371 LOADK                            R9 K393 ["generate_procedural_model,generate_mesh,generate_material"]
     1372 CALL                             R7 2 1
     1373 CALL                             R7 0 1
     1374 SETTABLEKS                       R7 R4 K394 ["FStringAssistantJobRunTools"]
     1376 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1378 LOADK                            R8 K395 ["AssistantMeshGenImageGenModelOverride"]
     1379 LOADK                            R9 K396 ["gemini"]
     1380 CALL                             R7 2 1
     1381 CALL                             R7 0 1
     1382 SETTABLEKS                       R7 R4 K397 ["FStringAssistantMeshGenImageGenModelOverride"]
     1384 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1386 LOADK                            R8 K398 ["AssistantMeshGenImageGenPromptTemplate"]
     1387 LOADK                            R9 K385 [""]
     1388 CALL                             R7 2 1
     1389 CALL                             R7 0 1
     1390 SETTABLEKS                       R7 R4 K399 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1392 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1394 LOADK                            R8 K400 ["AssistantMeshGenInferenceServiceOverride"]
     1395 LOADK                            R9 K401 ["stage-diff-mesh-gen"]
     1396 CALL                             R7 2 1
     1397 CALL                             R7 0 1
     1398 SETTABLEKS                       R7 R4 K402 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1400 GETIMPORT                        R7 K5 [require]
     1402 GETTABLEKS                       R8 R0 K403 ["FlagUtils"]
     1404 GETTABLEKS                       R8 R8 K404 ["createGetFStringAssistantMeshGenSchemaData"]
     1406 CALL                             R7 1 1
     1407 CALL                             R7 0 1
     1408 SETTABLEKS                       R7 R4 K405 ["FStringAssistantMeshGenSchemaData"]
     1410 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1412 LOADK                            R8 K406 ["AssistantModerateErrorMsg"]
     1413 LOADK                            R9 K407 ["prompt violates Roblox safety policy"]
     1414 CALL                             R7 2 1
     1415 CALL                             R7 0 1
     1416 SETTABLEKS                       R7 R4 K408 ["FStringAssistantModerateErrorMsg"]
     1418 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1420 LOADK                            R8 K409 ["AssistantSkillsAllowlist"]
     1421 LOADK                            R9 K410 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false"]
     1422 CALL                             R7 2 1
     1423 CALL                             R7 0 1
     1424 SETTABLEKS                       R7 R4 K411 ["FStringAssistantSkillsAllowlist"]
     1426 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1428 LOADK                            R8 K412 ["AssistantTestLLMReasoningEffort"]
     1429 LOADK                            R9 K413 ["high"]
     1430 CALL                             R7 2 1
     1431 CALL                             R7 0 1
     1432 SETTABLEKS                       R7 R4 K414 ["FStringAssistantTestLLMReasoningEffort"]
     1434 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1436 LOADK                            R8 K415 ["AssistantToolsExcludedDirectories"]
     1437 LOADK                            R9 K416 ["CoreGui,PlayerGui,LoadedCode"]
     1438 CALL                             R7 2 1
     1439 CALL                             R7 0 1
     1440 SETTABLEKS                       R7 R4 K417 ["FStringAssistantToolsExcludedDirectories"]
     1442 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1444 LOADK                            R8 K418 ["AssistantToolWidgetMappings"]
     1445 LOADK                            R9 K385 [""]
     1446 CALL                             R7 2 1
     1447 CALL                             R7 0 1
     1448 SETTABLEKS                       R7 R4 K419 ["FStringAssistantToolWidgetMappings"]
     1450 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1452 LOADK                            R8 K420 ["AssistantUnitTestSubagentModel"]
     1453 LOADK                            R9 K421 ["Assistant/glm5"]
     1454 CALL                             R7 2 1
     1455 CALL                             R7 0 1
     1456 SETTABLEKS                       R7 R4 K422 ["FStringAssistantUnitTestSubagentModel"]
     1458 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1460 LOADK                            R8 K423 ["AssistantUntitledChatPlaceholderText"]
     1461 LOADK                            R9 K424 ["Untitled Chat"]
     1462 CALL                             R7 2 1
     1463 CALL                             R7 0 1
     1464 SETTABLEKS                       R7 R4 K425 ["FStringAssistantUntitledChatPlaceholder"]
     1466 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1468 LOADK                            R8 K426 ["MCPAssistantAnthropicModels"]
     1469 LOADK                            R9 K427 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1470 CALL                             R7 2 1
     1471 CALL                             R7 0 1
     1472 SETTABLEKS                       R7 R4 K428 ["FStringMCPAssistantAnthropicModels"]
     1474 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1476 LOADK                            R8 K429 ["MCPAssistantClaudeAPIKey"]
     1477 LOADK                            R9 K385 [""]
     1478 CALL                             R7 2 1
     1479 CALL                             R7 0 1
     1480 SETTABLEKS                       R7 R4 K430 ["FStringMCPAssistantClaudeAPIKey"]
     1482 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1484 LOADK                            R8 K431 ["MCPAssistantCustomModelName"]
     1485 LOADK                            R9 K385 [""]
     1486 CALL                             R7 2 1
     1487 CALL                             R7 0 1
     1488 SETTABLEKS                       R7 R4 K432 ["FStringMCPAssistantCustomModelName"]
     1490 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1492 LOADK                            R8 K433 ["MCPAssistantGeminiAPIKey"]
     1493 LOADK                            R9 K385 [""]
     1494 CALL                             R7 2 1
     1495 CALL                             R7 0 1
     1496 SETTABLEKS                       R7 R4 K434 ["FStringMCPAssistantGeminiAPIKey"]
     1498 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1500 LOADK                            R8 K435 ["MCPAssistantGeminiModels"]
     1501 LOADK                            R9 K436 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1502 CALL                             R7 2 1
     1503 CALL                             R7 0 1
     1504 SETTABLEKS                       R7 R4 K437 ["FStringMCPAssistantGeminiModels"]
     1506 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1508 LOADK                            R8 K438 ["MCPAssistantOpenAIAPIKey"]
     1509 LOADK                            R9 K385 [""]
     1510 CALL                             R7 2 1
     1511 CALL                             R7 0 1
     1512 SETTABLEKS                       R7 R4 K439 ["FStringMCPAssistantOpenAIAPIKey"]
     1514 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1516 LOADK                            R8 K440 ["MCPAssistantOpenAIModels"]
     1517 LOADK                            R9 K441 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1518 CALL                             R7 2 1
     1519 CALL                             R7 0 1
     1520 SETTABLEKS                       R7 R4 K442 ["FStringMCPAssistantOpenAIModels"]
     1522 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1524 LOADK                            R8 K443 ["MCPAssistantOpenAIReasoningEffort"]
     1525 LOADK                            R9 K385 [""]
     1526 CALL                             R7 2 1
     1527 CALL                             R7 0 1
     1528 SETTABLEKS                       R7 R4 K444 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1530 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1532 LOADK                            R8 K445 ["MCPAssistantPrimitiveGenServerURL"]
     1533 LOADK                            R9 K385 [""]
     1534 CALL                             R7 2 1
     1535 CALL                             R7 0 1
     1536 SETTABLEKS                       R7 R4 K446 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1538 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1540 LOADK                            R8 K447 ["MCPAssistantTestLLMAPIKey"]
     1541 LOADK                            R9 K385 [""]
     1542 CALL                             R7 2 1
     1543 CALL                             R7 0 1
     1544 SETTABLEKS                       R7 R4 K448 ["FStringMCPAssistantTestLLMAPIKey"]
     1546 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1548 LOADK                            R8 K449 ["MCPAssistantURLOverride"]
     1549 LOADK                            R9 K385 [""]
     1550 CALL                             R7 2 1
     1551 CALL                             R7 0 1
     1552 SETTABLEKS                       R7 R4 K450 ["FStringMCPAssistantURLOverride"]
     1554 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1556 LOADK                            R8 K451 ["MCPDocsUrl"]
     1557 LOADK                            R9 K452 ["https://create.roblox.com/docs/studio/mcp/"]
     1558 CALL                             R7 2 1
     1559 CALL                             R7 0 1
     1560 SETTABLEKS                       R7 R4 K453 ["FStringMCPDocsUrl"]
     1562 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1564 LOADK                            R8 K454 ["PlaytestConversationURL"]
     1565 LOADK                            R9 K455 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1566 CALL                             R7 2 1
     1567 CALL                             R7 0 1
     1568 SETTABLEKS                       R7 R4 K456 ["FStringPlaytestConversationURL"]
     1570 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1572 LOADK                            R8 K457 ["PlaytestModelName"]
     1573 LOADK                            R9 K458 ["Qwen/Qwen35-35B-A3B"]
     1574 CALL                             R7 2 1
     1575 CALL                             R7 0 1
     1576 SETTABLEKS                       R7 R4 K459 ["FStringPlaytestModelName"]
     1578 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1580 LOADK                            R8 K460 ["PrimGenImageGenPromptTemplate"]
     1581 LOADK                            R9 K385 [""]
     1582 CALL                             R7 2 1
     1583 CALL                             R7 0 1
     1584 SETTABLEKS                       R7 R4 K461 ["FStringPrimGenImageGenPromptTemplate"]
     1586 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1588 LOADK                            R8 K462 ["ProceduralScriptCapabilities"]
     1589 LOADK                            R9 K463 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1590 CALL                             R7 2 1
     1591 CALL                             R7 0 1
     1592 SETTABLEKS                       R7 R4 K464 ["FStringProceduralScriptCapabilities"]
     1594 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1596 LOADK                            R8 K465 ["ScreenCaptureFormat"]
     1597 LOADK                            R9 K385 [""]
     1598 CALL                             R7 2 1
     1599 CALL                             R7 0 1
     1600 SETTABLEKS                       R7 R4 K466 ["FStringScreenCaptureFormat"]
     1602 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1604 LOADK                            R8 K467 ["ScreenCaptureSize"]
     1605 LOADK                            R9 K385 [""]
     1606 CALL                             R7 2 1
     1607 CALL                             R7 0 1
     1608 SETTABLEKS                       R7 R4 K468 ["FStringScreenCaptureSize"]
     1610 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1612 LOADK                            R8 K469 ["ScreenCaptureSubagentModelName"]
     1613 LOADK                            R9 K385 [""]
     1614 CALL                             R7 2 1
     1615 CALL                             R7 0 1
     1616 SETTABLEKS                       R7 R4 K470 ["FStringScreenCaptureSubagentModelName"]
     1618 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1620 LOADK                            R8 K471 ["SegmentByPartsBetaFeatureUrl"]
     1621 LOADK                            R9 K385 [""]
     1622 CALL                             R7 2 1
     1623 CALL                             R7 0 1
     1624 SETTABLEKS                       R7 R4 K472 ["FStringSegmentByPartsBetaFeatureUrl"]
     1626 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1628 LOADK                            R8 K473 ["SubagentExploreModelName"]
     1629 LOADK                            R9 K474 ["Assistant/glm5-b200-server-1"]
     1630 CALL                             R7 2 1
     1631 CALL                             R7 0 1
     1632 SETTABLEKS                       R7 R4 K475 ["FStringSubagentExploreModelName"]
     1634 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1636 LOADK                            R8 K476 ["SubagentURLOverride"]
     1637 LOADK                            R9 K385 [""]
     1638 CALL                             R7 2 1
     1639 CALL                             R7 0 1
     1640 SETTABLEKS                       R7 R4 K477 ["FStringSubagentURLOverride"]
     1642 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1644 LOADK                            R8 K478 ["TestLLMURLOverride"]
     1645 LOADK                            R9 K385 [""]
     1646 CALL                             R7 2 1
     1647 CALL                             R7 0 1
     1648 SETTABLEKS                       R7 R4 K479 ["FStringTestLLMURLOverride"]
     1650 GETTABLEKS                       R7 R3 K383 ["createGetFString"]
     1652 LOADK                            R8 K480 ["TestSubagentURLOverride"]
     1653 LOADK                            R9 K385 [""]
     1654 CALL                             R7 2 1
     1655 CALL                             R7 0 1
     1656 SETTABLEKS                       R7 R4 K481 ["FStringTestSubagentURLOverride"]
     1658 DUPTABLE                         R9 K483 [{"__index", "__newindex"}]
     1659 SETTABLEKS                       R2 R9 K482 ["__index"]
     1661 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1663 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1665 MOVE                             R8 R4
     1666 GETIMPORT                        R7 K15 [setmetatable]
     1668 CALL                             R7 2 1
     1669 RETURN                           R7 1
