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
      157 LOADK                            R8 K55 ["AssistantAvatarGenTool"]
      158 CALL                             R7 1 1
      159 CALL                             R7 0 1
      160 SETTABLEKS                       R7 R4 K56 ["FFlagAssistantAvatarGenTool"]
      162 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      164 LOADK                            R8 K57 ["AssistantAvatarGenSlashCommand"]
      165 CALL                             R7 1 1
      166 CALL                             R7 0 1
      167 SETTABLEKS                       R7 R4 K58 ["FFlagAssistantAvatarGenSlashCommand"]
      169 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      171 LOADK                            R8 K59 ["AssistantAvatarGenHumanoidRigDescription"]
      172 CALL                             R7 1 1
      173 CALL                             R7 0 1
      174 SETTABLEKS                       R7 R4 K60 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      176 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      178 LOADK                            R8 K61 ["AssistantAvatarAutoSetupTool5"]
      179 CALL                             R7 1 1
      180 CALL                             R7 0 1
      181 SETTABLEKS                       R7 R4 K62 ["FFlagAssistantAvatarAutoSetupTool"]
      183 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      185 LOADK                            R8 K63 ["AssistantBetaFeatureSkills"]
      186 CALL                             R7 1 1
      187 CALL                             R7 0 1
      188 SETTABLEKS                       R7 R4 K64 ["FFlagAssistantBetaFeatureSkills"]
      190 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      192 LOADK                            R8 K65 ["AssistantCapturePluginGuiTool"]
      193 CALL                             R7 1 1
      194 CALL                             R7 0 1
      195 SETTABLEKS                       R7 R4 K66 ["FFlagAssistantCapturePluginGuiTool"]
      197 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      199 LOADK                            R8 K67 ["AssistantChatFollowBottomThreshold"]
      200 CALL                             R7 1 1
      201 CALL                             R7 0 1
      202 SETTABLEKS                       R7 R4 K68 ["FFlagAssistantChatFollowBottomThreshold"]
      204 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      206 LOADK                            R8 K69 ["AssistantCloseDropdownsOnWidgetHidden"]
      207 CALL                             R7 1 1
      208 CALL                             R7 0 1
      209 SETTABLEKS                       R7 R4 K70 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      211 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      213 LOADK                            R8 K71 ["AssistantConfirmButtonUpdate"]
      214 CALL                             R7 1 1
      215 CALL                             R7 0 1
      216 SETTABLEKS                       R7 R4 K72 ["FFlagAssistantConfirmButtonUpdate"]
      218 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      220 LOADK                            R8 K73 ["AssistantConsoleOutputTailFromEnd2"]
      221 CALL                             R7 1 1
      222 CALL                             R7 0 1
      223 SETTABLEKS                       R7 R4 K74 ["FFlagAssistantConsoleOutputTailFromEnd"]
      225 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      227 LOADK                            R8 K75 ["AssistantCreditMetering3"]
      228 CALL                             R7 1 1
      229 CALL                             R7 0 1
      230 SETTABLEKS                       R7 R4 K76 ["FFlagAssistantCreditMetering"]
      232 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      234 LOADK                            R8 K77 ["AssistantCreditMeteringAdditionalUsage"]
      235 LOADB                            R9 1
      236 CALL                             R7 2 1
      237 CALL                             R7 0 1
      238 SETTABLEKS                       R7 R4 K78 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      240 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      242 LOADK                            R8 K79 ["AssistantCreditMeteringInferBlockReason"]
      243 CALL                             R7 1 1
      244 CALL                             R7 0 1
      245 SETTABLEKS                       R7 R4 K80 ["FFlagAssistantCreditMeteringInferBlockReason"]
      247 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      249 LOADK                            R8 K81 ["AssistantCreditMeteringLocalBackend"]
      250 CALL                             R7 1 1
      251 CALL                             R7 0 1
      252 SETTABLEKS                       R7 R4 K82 ["FFlagAssistantCreditMeteringLocalBackend"]
      254 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      256 LOADK                            R8 K83 ["AssistantCreditMeteringLocalBackendExp"]
      257 CALL                             R7 1 1
      258 CALL                             R7 0 1
      259 SETTABLEKS                       R7 R4 K84 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      261 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      263 LOADK                            R8 K85 ["AssistantCreditMeteringResetPeriod"]
      264 CALL                             R7 1 1
      265 CALL                             R7 0 1
      266 SETTABLEKS                       R7 R4 K86 ["FFlagAssistantCreditMeteringResetPeriod"]
      268 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      270 LOADK                            R8 K87 ["AssistantDestroySessionMonitorsOnClose"]
      271 CALL                             R7 1 1
      272 CALL                             R7 0 1
      273 SETTABLEKS                       R7 R4 K88 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      275 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      277 LOADK                            R8 K89 ["AssistantDisableApplyEditDataModelAvailability"]
      278 CALL                             R7 1 1
      279 CALL                             R7 0 1
      280 SETTABLEKS                       R7 R4 K90 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      282 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      284 LOADK                            R8 K91 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      285 CALL                             R7 1 1
      286 CALL                             R7 0 1
      287 SETTABLEKS                       R7 R4 K92 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      289 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      291 LOADK                            R8 K93 ["AssistantDisableBranching"]
      292 CALL                             R7 1 1
      293 CALL                             R7 0 1
      294 SETTABLEKS                       R7 R4 K94 ["FFlagAssistantDisableBranching"]
      296 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      298 LOADK                            R8 K95 ["AssistantDisableSessionFilter"]
      299 CALL                             R7 1 1
      300 CALL                             R7 0 1
      301 SETTABLEKS                       R7 R4 K96 ["FFlagAssistantDisableSessionFilter"]
      303 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      305 LOADK                            R8 K97 ["AssistantEditScrubbarPropertyRow"]
      306 CALL                             R7 1 1
      307 CALL                             R7 0 1
      308 SETTABLEKS                       R7 R4 K98 ["FFlagAssistantEditScrubbarPropertyRow"]
      310 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      312 LOADK                            R8 K99 ["AssistantEval"]
      313 CALL                             R7 1 1
      314 CALL                             R7 0 1
      315 SETTABLEKS                       R7 R4 K100 ["FFlagAssistantEval"]
      317 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      319 LOADK                            R8 K101 ["AssistantExecLuauYieldHint2"]
      320 CALL                             R7 1 1
      321 CALL                             R7 0 1
      322 SETTABLEKS                       R7 R4 K102 ["FFlagAssistantExecLuauYieldHint"]
      324 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      326 LOADK                            R8 K103 ["AssistantExecLuauYieldHintInternal"]
      327 CALL                             R7 1 1
      328 CALL                             R7 0 1
      329 SETTABLEKS                       R7 R4 K104 ["FFlagAssistantExecLuauYieldHintInternal"]
      331 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      333 LOADK                            R8 K105 ["AssistantExternalMCPPluginSettingRedundancy"]
      334 CALL                             R7 1 1
      335 CALL                             R7 0 1
      336 SETTABLEKS                       R7 R4 K106 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      338 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      340 LOADK                            R8 K107 ["AssistantFeedbackView"]
      341 CALL                             R7 1 1
      342 CALL                             R7 0 1
      343 SETTABLEKS                       R7 R4 K108 ["FFlagAssistantFeedbackView"]
      345 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      347 LOADK                            R8 K109 ["AssistantFixStartPlayHang"]
      348 CALL                             R7 1 1
      349 CALL                             R7 0 1
      350 SETTABLEKS                       R7 R4 K110 ["FFlagAssistantFixStartPlayHang"]
      352 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      354 LOADK                            R8 K111 ["AssistantForceRemoteServiceForInternal"]
      355 CALL                             R7 1 1
      356 CALL                             R7 0 1
      357 SETTABLEKS                       R7 R4 K112 ["FFlagAssistantForceRemoteServiceForInternal"]
      359 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      361 LOADK                            R8 K113 ["AssistantGen3DAssetPublishTracking"]
      362 CALL                             R7 1 1
      363 CALL                             R7 0 1
      364 SETTABLEKS                       R7 R4 K114 ["FFlagAssistantGen3DAssetPublishTracking"]
      366 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      368 LOADK                            R8 K115 ["AssistantGen3dAutoSegmentation"]
      369 CALL                             R7 1 1
      370 CALL                             R7 0 1
      371 SETTABLEKS                       R7 R4 K116 ["FFlagAssistantGen3dAutoSegmentation"]
      373 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      375 LOADK                            R8 K117 ["AssistantGen3DImagePreviewTelemetry"]
      376 CALL                             R7 1 1
      377 CALL                             R7 0 1
      378 SETTABLEKS                       R7 R4 K118 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      380 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      382 LOADK                            R8 K119 ["AssistantGen3dRequirePromptToGenerate"]
      383 CALL                             R7 1 1
      384 CALL                             R7 0 1
      385 SETTABLEKS                       R7 R4 K120 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      387 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      389 LOADK                            R8 K121 ["AssistantGen3DTelemetryV2"]
      390 CALL                             R7 1 1
      391 CALL                             R7 0 1
      392 SETTABLEKS                       R7 R4 K122 ["FFlagAssistantGen3DTelemetryV2"]
      394 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      396 LOADK                            R8 K123 ["AssistantGenerateLayoutTool"]
      397 CALL                             R7 1 1
      398 CALL                             R7 0 1
      399 SETTABLEKS                       R7 R4 K124 ["FFlagAssistantGenerateLayoutTool"]
      401 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      403 LOADK                            R8 K125 ["AssistantGenerateLayoutTopDownHint"]
      404 CALL                             R7 1 1
      405 CALL                             R7 0 1
      406 SETTABLEKS                       R7 R4 K126 ["FFlagAssistantGenerateLayoutTopDownHint"]
      408 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      410 LOADK                            R8 K127 ["AssistantGrepSearchKeepEmptyLines"]
      411 CALL                             R7 1 1
      412 CALL                             R7 0 1
      413 SETTABLEKS                       R7 R4 K128 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      415 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      417 LOADK                            R8 K129 ["AssistantHidePinForBuild"]
      418 CALL                             R7 1 1
      419 CALL                             R7 0 1
      420 SETTABLEKS                       R7 R4 K130 ["FFlagAssistantHidePinForBuild"]
      422 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      424 LOADK                            R8 K131 ["AssistantHintMultiEditOverExecLuau"]
      425 CALL                             R7 1 1
      426 CALL                             R7 0 1
      427 SETTABLEKS                       R7 R4 K132 ["FFlagAssistantHintMultiEditOverExecLuau"]
      429 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      431 LOADK                            R8 K133 ["AssistantHttpGetOnStandaloneDM"]
      432 CALL                             R7 1 1
      433 CALL                             R7 0 1
      434 SETTABLEKS                       R7 R4 K134 ["FFlagAssistantHttpGetOnStandaloneDM"]
      436 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      438 LOADK                            R8 K135 ["AssistantImageGenAbortPollOn4xx"]
      439 CALL                             R7 1 1
      440 CALL                             R7 0 1
      441 SETTABLEKS                       R7 R4 K136 ["FFlagAssistantImageGenAbortPollOn4xx"]
      443 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      445 LOADK                            R8 K137 ["AssistantImageGenImprovements"]
      446 CALL                             R7 1 1
      447 CALL                             R7 0 1
      448 SETTABLEKS                       R7 R4 K138 ["FFlagAssistantImageGenImprovements"]
      450 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      452 LOADK                            R8 K139 ["AssistantImageGenSeed"]
      453 CALL                             R7 1 1
      454 CALL                             R7 0 1
      455 SETTABLEKS                       R7 R4 K140 ["FFlagAssistantImageGenSeed"]
      457 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      459 LOADK                            R8 K141 ["AssistantImageSelectionWizardModeMeshGen"]
      460 CALL                             R7 1 1
      461 CALL                             R7 0 1
      462 SETTABLEKS                       R7 R4 K142 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      464 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      466 LOADK                            R8 K143 ["AssistantImageSelectionWizardModePrimitiveGen"]
      467 CALL                             R7 1 1
      468 CALL                             R7 0 1
      469 SETTABLEKS                       R7 R4 K144 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      471 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      473 LOADK                            R8 K145 ["AssistantImageSelectionWizardModeTextureGen"]
      474 CALL                             R7 1 1
      475 CALL                             R7 0 1
      476 SETTABLEKS                       R7 R4 K146 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      478 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      480 LOADK                            R8 K147 ["AssistantIncorrectAttachPrimGenImageToInput"]
      481 CALL                             R7 1 1
      482 CALL                             R7 0 1
      483 SETTABLEKS                       R7 R4 K148 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      485 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      487 LOADK                            R8 K149 ["AssistantInsertAssetSandboxProceduralModels"]
      488 CALL                             R7 1 1
      489 CALL                             R7 0 1
      490 SETTABLEKS                       R7 R4 K150 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      492 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      494 LOADK                            R8 K151 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      495 CALL                             R7 1 1
      496 CALL                             R7 0 1
      497 SETTABLEKS                       R7 R4 K152 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      499 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      501 LOADK                            R8 K153 ["AssistantInsertAssetSandboxScripts"]
      502 CALL                             R7 1 1
      503 CALL                             R7 0 1
      504 SETTABLEKS                       R7 R4 K154 ["FFlagAssistantInsertAssetSandboxScripts"]
      506 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      508 LOADK                            R8 K155 ["AssistantMarkdownStreaming"]
      509 CALL                             R7 1 1
      510 CALL                             R7 0 1
      511 SETTABLEKS                       R7 R4 K156 ["FFlagAssistantMarkdownStreaming"]
      513 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      515 LOADK                            R8 K157 ["AssistantMcpImageGenShortcut"]
      516 CALL                             R7 1 1
      517 CALL                             R7 0 1
      518 SETTABLEKS                       R7 R4 K158 ["FFlagAssistantMcpImageGenShortcut"]
      520 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      522 LOADK                            R8 K159 ["MCPWebSocketRetryOnStartError"]
      523 CALL                             R7 1 1
      524 CALL                             R7 0 1
      525 JUMPIFNOT                        R7 ; [+5]
      526 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      528 LOADK                            R8 K160 ["AssistantMCPProxyAuthRejectedWarn"]
      529 CALL                             R7 1 1
      530 CALL                             R7 0 1
      531 SETTABLEKS                       R7 R4 K161 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      533 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      535 LOADK                            R9 K162 ["AssistantMCPVideoCapture"]
      536 CALL                             R8 1 1
      537 CALL                             R8 0 1
      538 AND                              R7 R8 R6
      539 SETTABLEKS                       R7 R4 K163 ["FFlagAssistantMCPVideoCapture"]
      541 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      543 LOADK                            R8 K164 ["AssistantMeshGenAutoExpandCollapse"]
      544 CALL                             R7 1 1
      545 CALL                             R7 0 1
      546 SETTABLEKS                       R7 R4 K165 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      548 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      550 LOADK                            R8 K166 ["AssistantMeshGenHintImage"]
      551 CALL                             R7 1 1
      552 CALL                             R7 0 1
      553 SETTABLEKS                       R7 R4 K167 ["FFlagAssistantMeshGenHintImage"]
      555 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      557 LOADK                            R8 K168 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      558 CALL                             R7 1 1
      559 CALL                             R7 0 1
      560 SETTABLEKS                       R7 R4 K169 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      562 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      564 LOADK                            R8 K170 ["AssistantMeshGenRemoveAdminOptions"]
      565 CALL                             R7 1 1
      566 CALL                             R7 0 1
      567 SETTABLEKS                       R7 R4 K171 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      569 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      571 LOADK                            R8 K172 ["AssistantMoveToolButtonsToTheRightAgain"]
      572 CALL                             R7 1 1
      573 CALL                             R7 0 1
      574 SETTABLEKS                       R7 R4 K173 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      576 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      578 LOADK                            R8 K174 ["AssistantMultiEditExternalClient"]
      579 CALL                             R7 1 1
      580 CALL                             R7 0 1
      581 SETTABLEKS                       R7 R4 K175 ["FFlagAssistantMultiEditExternalClient"]
      583 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      585 LOADK                            R8 K176 ["AssistantOmitSlashToolCallDroppedFields"]
      586 CALL                             R7 1 1
      587 CALL                             R7 0 1
      588 SETTABLEKS                       R7 R4 K177 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      590 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      592 LOADK                            R8 K178 ["AssistantPinForBuildUI"]
      593 CALL                             R7 1 1
      594 CALL                             R7 0 1
      595 SETTABLEKS                       R7 R4 K179 ["FFlagAssistantPinForBuildUI"]
      597 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      599 LOADK                            R8 K180 ["AssistantPlanRevisionList"]
      600 CALL                             R7 1 1
      601 CALL                             R7 0 1
      602 SETTABLEKS                       R7 R4 K181 ["FFlagAssistantPlanRevisionList"]
      604 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      606 LOADK                            R8 K182 ["AssistantPlaytestContext"]
      607 CALL                             R7 1 1
      608 CALL                             R7 0 1
      609 SETTABLEKS                       R7 R4 K183 ["FFlagAssistantPlaytestContext"]
      611 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      613 LOADK                            R8 K184 ["AssistantPlaytestKGEnabled"]
      614 CALL                             R7 1 1
      615 CALL                             R7 0 1
      616 SETTABLEKS                       R7 R4 K185 ["FFlagAssistantPlaytestKGEnabled"]
      618 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      620 LOADK                            R8 K186 ["AssistantPlaytestToolFix"]
      621 CALL                             R7 1 1
      622 CALL                             R7 0 1
      623 SETTABLEKS                       R7 R4 K187 ["FFlagAssistantPlaytestToolFix"]
      625 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      627 LOADK                            R8 K188 ["AssistantPromptHistoryFromConversation"]
      628 CALL                             R7 1 1
      629 CALL                             R7 0 1
      630 SETTABLEKS                       R7 R4 K189 ["FFlagAssistantPromptHistoryFromConversation"]
      632 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      634 LOADK                            R8 K190 ["AssistantPromptModeratedError"]
      635 CALL                             R7 1 1
      636 CALL                             R7 0 1
      637 SETTABLEKS                       R7 R4 K191 ["FFlagAssistantPromptModeratedError"]
      639 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      641 LOADK                            R8 K192 ["AssistantReadFileRejectRangeWithEntireFile"]
      642 CALL                             R7 1 1
      643 CALL                             R7 0 1
      644 SETTABLEKS                       R7 R4 K193 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
      646 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      648 LOADK                            R8 K194 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      649 CALL                             R7 1 1
      650 CALL                             R7 0 1
      651 SETTABLEKS                       R7 R4 K195 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      653 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      655 LOADK                            R8 K196 ["AssistantResolveHeading"]
      656 CALL                             R7 1 1
      657 CALL                             R7 0 1
      658 SETTABLEKS                       R7 R4 K197 ["FFlagAssistantResolveHeading"]
      660 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      662 LOADK                            R8 K198 ["AssistantResourcePromptBlocks"]
      663 CALL                             R7 1 1
      664 CALL                             R7 0 1
      665 SETTABLEKS                       R7 R4 K199 ["FFlagAssistantResourcePromptBlocks"]
      667 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      669 LOADK                            R8 K200 ["AssistantRestoreCameraStateInExec"]
      670 CALL                             R7 1 1
      671 CALL                             R7 0 1
      672 SETTABLEKS                       R7 R4 K201 ["FFlagAssistantRestoreCameraStateInExec"]
      674 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      676 LOADK                            R8 K202 ["AssistantRestoreCameraStateInExecWarn"]
      677 CALL                             R7 1 1
      678 CALL                             R7 0 1
      679 SETTABLEKS                       R7 R4 K203 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      681 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      683 LOADK                            R8 K204 ["AssistantRestoreMostRecentThread"]
      684 CALL                             R7 1 1
      685 CALL                             R7 0 1
      686 SETTABLEKS                       R7 R4 K205 ["FFlagAssistantRestoreMostRecentThread"]
      688 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      690 LOADK                            R8 K206 ["AssistantScrollableAskInputForm"]
      691 CALL                             R7 1 1
      692 CALL                             R7 0 1
      693 SETTABLEKS                       R7 R4 K207 ["FFlagAssistantScrollableAskInputForm"]
      695 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      697 LOADK                            R8 K208 ["AssistantSegmentationBridge"]
      698 CALL                             R7 1 1
      699 CALL                             R7 0 1
      700 SETTABLEKS                       R7 R4 K209 ["FFlagAssistantSegmentationBridge"]
      702 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      704 LOADK                            R8 K210 ["AssistantSegmentationPromptModeSelector"]
      705 CALL                             R7 1 1
      706 CALL                             R7 0 1
      707 SETTABLEKS                       R7 R4 K211 ["FFlagAssistantSegmentationPromptModeSelector"]
      709 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      711 LOADK                            R8 K212 ["AssistantSegmentationUIFixes"]
      712 CALL                             R7 1 1
      713 CALL                             R7 0 1
      714 SETTABLEKS                       R7 R4 K213 ["FFlagAssistantSegmentationUIFixes"]
      716 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      718 LOADK                            R8 K214 ["AssistantSegmentMeshCleanupWorldWrapper"]
      719 CALL                             R7 1 1
      720 CALL                             R7 0 1
      721 SETTABLEKS                       R7 R4 K215 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      723 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      725 LOADK                            R8 K216 ["AssistantSegmentMeshTool"]
      726 CALL                             R7 1 1
      727 CALL                             R7 0 1
      728 SETTABLEKS                       R7 R4 K217 ["FFlagAssistantSegmentMeshTool"]
      730 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      732 LOADK                            R8 K218 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      733 CALL                             R7 1 1
      734 CALL                             R7 0 1
      735 SETTABLEKS                       R7 R4 K219 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      737 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      739 LOADK                            R8 K220 ["AssistantSkillToolNameReplace"]
      740 CALL                             R7 1 1
      741 CALL                             R7 0 1
      742 SETTABLEKS                       R7 R4 K221 ["FFlagAssistantSkillToolNameReplace"]
      744 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      746 LOADK                            R8 K222 ["AssistantSlashCommandStepBackNavigation"]
      747 CALL                             R7 1 1
      748 CALL                             R7 0 1
      749 SETTABLEKS                       R7 R4 K223 ["FFlagAssistantSlashCommandStepBackNavigation"]
      751 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      753 LOADK                            R8 K224 ["AssistantSlashToolNameAndError"]
      754 CALL                             R7 1 1
      755 CALL                             R7 0 1
      756 SETTABLEKS                       R7 R4 K225 ["FFlagAssistantSlashToolNameAndError"]
      758 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      760 LOADK                            R8 K226 ["AssistantStandaloneDataModel"]
      761 CALL                             R7 1 1
      762 CALL                             R7 0 1
      763 SETTABLEKS                       R7 R4 K227 ["FFlagAssistantStandaloneDataModel"]
      765 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      767 LOADK                            R8 K228 ["AssistantStartStopPlayBusyCheck"]
      768 CALL                             R7 1 1
      769 CALL                             R7 0 1
      770 SETTABLEKS                       R7 R4 K229 ["FFlagAssistantStartStopPlayBusyCheck"]
      772 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      774 LOADK                            R8 K230 ["AssistantTestLLMPreserveThinking"]
      775 LOADB                            R9 1
      776 CALL                             R7 2 1
      777 CALL                             R7 0 1
      778 SETTABLEKS                       R7 R4 K231 ["FFlagAssistantTestLLMPreserveThinking"]
      780 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      782 LOADK                            R8 K232 ["AssistantTestLLMThinkingEnabled"]
      783 LOADB                            R9 1
      784 CALL                             R7 2 1
      785 CALL                             R7 0 1
      786 SETTABLEKS                       R7 R4 K233 ["FFlagAssistantTestLLMThinkingEnabled"]
      788 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      790 LOADK                            R8 K234 ["AssistantTextureGenAutoSelectView"]
      791 CALL                             R7 1 1
      792 CALL                             R7 0 1
      793 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantTextureGenAutoSelectView"]
      795 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      797 LOADK                            R8 K236 ["AssistantTextureGenMcpQualityAutoView"]
      798 CALL                             R7 1 1
      799 CALL                             R7 0 1
      800 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantTextureGenMcpQualityAutoView"]
      802 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      804 LOADK                            R8 K238 ["AssistantTextureGenModelSelection"]
      805 CALL                             R7 1 1
      806 CALL                             R7 0 1
      807 SETTABLEKS                       R7 R4 K239 ["FFlagAssistantTextureGenModelSelection"]
      809 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      811 LOADK                            R8 K240 ["AssistantTextureGenTool"]
      812 CALL                             R7 1 1
      813 CALL                             R7 0 1
      814 SETTABLEKS                       R7 R4 K241 ["FFlagAssistantTextureGenTool"]
      816 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      818 LOADK                            R8 K242 ["AssistantTextureGenUseSourceMeshCFrame"]
      819 CALL                             R7 1 1
      820 CALL                             R7 0 1
      821 SETTABLEKS                       R7 R4 K243 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      823 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      825 LOADK                            R8 K244 ["AssistantTruncatePrimGenHeader"]
      826 CALL                             R7 1 1
      827 CALL                             R7 0 1
      828 SETTABLEKS                       R7 R4 K245 ["FFlagAssistantTruncatePrimGenHeader"]
      830 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      832 LOADK                            R8 K246 ["AssistantUntitledChatPlaceholder"]
      833 CALL                             R7 1 1
      834 CALL                             R7 0 1
      835 SETTABLEKS                       R7 R4 K247 ["FFlagAssistantUntitledChatPlaceholder"]
      837 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      839 LOADK                            R8 K248 ["AssistantUseNewDMNetworking"]
      840 CALL                             R7 1 1
      841 CALL                             R7 0 1
      842 SETTABLEKS                       R7 R4 K249 ["FFlagAssistantUseNewDMNetworking"]
      844 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      846 LOADK                            R8 K250 ["AssistantUseNewTags"]
      847 CALL                             R7 1 1
      848 CALL                             R7 0 1
      849 SETTABLEKS                       R7 R4 K251 ["FFlagAssistantUseNewTags"]
      851 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      853 LOADK                            R8 K252 ["AssistantUseRemoteService2"]
      854 CALL                             R7 1 1
      855 CALL                             R7 0 1
      856 SETTABLEKS                       R7 R4 K253 ["FFlagAssistantUseRemoteService"]
      858 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      860 LOADK                            R8 K254 ["AssistantUseRemoteServiceExp"]
      861 CALL                             R7 1 1
      862 CALL                             R7 0 1
      863 SETTABLEKS                       R7 R4 K255 ["FFlagAssistantUseRemoteServiceExp"]
      865 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      867 LOADK                            R8 K256 ["AssistantUseVariantHttpTransport"]
      868 CALL                             R7 1 1
      869 CALL                             R7 0 1
      870 SETTABLEKS                       R7 R4 K257 ["FFlagAssistantUseVariantHttpTransport"]
      872 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      874 LOADK                            R8 K258 ["AssistantVersionMismatchWarning"]
      875 CALL                             R7 1 1
      876 CALL                             R7 0 1
      877 SETTABLEKS                       R7 R4 K259 ["FFlagAssistantVersionMismatchWarning"]
      879 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      881 LOADK                            R8 K260 ["AssistantVideoCaptureTool"]
      882 CALL                             R7 1 1
      883 CALL                             R7 0 1
      884 SETTABLEKS                       R7 R4 K261 ["FFlagAssistantVideoCaptureTool"]
      886 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      888 LOADK                            R9 K262 ["AssistantVirtualInputEnabled"]
      889 CALL                             R8 1 1
      890 CALL                             R8 0 1
      891 AND                              R7 R8 R5
      892 SETTABLEKS                       R7 R4 K263 ["FFlagAssistantVirtualInputEnabled"]
      894 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      896 LOADK                            R8 K264 ["AvatarPreviewerAvatarCreationDefaultBodyOnly"]
      897 CALL                             R7 1 1
      898 CALL                             R7 0 1
      899 SETTABLEKS                       R7 R4 K265 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
      901 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      903 LOADK                            R8 K266 ["AvatarPreviewerAvatarCreationDynamicHeadOff"]
      904 CALL                             R7 1 1
      905 CALL                             R7 0 1
      906 SETTABLEKS                       R7 R4 K267 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
      908 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      910 LOADK                            R8 K268 ["AvatarPreviewerAvatarCreationDynamicHeadOption"]
      911 CALL                             R7 1 1
      912 CALL                             R7 0 1
      913 SETTABLEKS                       R7 R4 K269 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      915 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      917 LOADK                            R8 K270 ["AvatarPreviewerAvatarCreationR15PlusOn"]
      918 CALL                             R7 1 1
      919 CALL                             R7 0 1
      920 SETTABLEKS                       R7 R4 K271 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
      922 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      924 LOADK                            R8 K272 ["AvatarPreviewerAvatarCreationR15PlusOption"]
      925 CALL                             R7 1 1
      926 CALL                             R7 0 1
      927 SETTABLEKS                       R7 R4 K273 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      929 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      931 LOADK                            R8 K274 ["DebugAssistantMultiPlayerAgentsLog"]
      932 CALL                             R7 1 1
      933 CALL                             R7 0 1
      934 SETTABLEKS                       R7 R4 K275 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
      936 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      938 LOADK                            R8 K276 ["DebugEnableTestLLMAdapter"]
      939 CALL                             R7 1 1
      940 CALL                             R7 0 1
      941 SETTABLEKS                       R7 R4 K277 ["FFlagDebugEnableTestLLMAdapter"]
      943 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      945 LOADK                            R8 K278 ["DebugMockPrimitiveGenBackend"]
      946 CALL                             R7 1 1
      947 CALL                             R7 0 1
      948 SETTABLEKS                       R7 R4 K279 ["FFlagDebugMockPrimitiveGenBackend"]
      950 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      952 LOADK                            R8 K280 ["DisableMCPConnectionIndicator"]
      953 CALL                             R7 1 1
      954 CALL                             R7 0 1
      955 SETTABLEKS                       R7 R4 K281 ["FFlagDisableMCPConnectionIndicator"]
      957 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      959 LOADK                            R8 K282 ["FFlagDisableNavigationConfirmation"]
      960 CALL                             R7 1 1
      961 CALL                             R7 0 1
      962 SETTABLEKS                       R7 R4 K282 ["FFlagDisableNavigationConfirmation"]
      964 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      966 LOADK                            R8 K283 ["DisableNewSmartSize"]
      967 CALL                             R7 1 1
      968 CALL                             R7 0 1
      969 SETTABLEKS                       R7 R4 K284 ["FFlagDisableNewSmartSize"]
      971 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      973 LOADK                            R8 K285 ["DisableOldSmartSize"]
      974 CALL                             R7 1 1
      975 CALL                             R7 0 1
      976 SETTABLEKS                       R7 R4 K286 ["FFlagDisableOldSmartSize"]
      978 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      980 LOADK                            R8 K287 ["FFlagDisableStartStopPlayConfirmation"]
      981 CALL                             R7 1 1
      982 CALL                             R7 0 1
      983 SETTABLEKS                       R7 R4 K287 ["FFlagDisableStartStopPlayConfirmation"]
      985 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      987 LOADK                            R8 K288 ["FFlagDisableUserInputConfirmation"]
      988 CALL                             R7 1 1
      989 CALL                             R7 0 1
      990 SETTABLEKS                       R7 R4 K288 ["FFlagDisableUserInputConfirmation"]
      992 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      994 LOADK                            R8 K289 ["EnableAssistantImageUpload"]
      995 CALL                             R7 1 1
      996 CALL                             R7 0 1
      997 SETTABLEKS                       R7 R4 K290 ["FFlagEnableAssistantImageUpload"]
      999 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1001 LOADK                            R8 K291 ["EnablePlaytestSubagent"]
     1002 CALL                             R7 1 1
     1003 CALL                             R7 0 1
     1004 SETTABLEKS                       R7 R4 K292 ["FFlagEnablePlaytestSubagent"]
     1006 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1008 LOADK                            R8 K293 ["Gen3dSegmentationSelector"]
     1009 CALL                             R7 1 1
     1010 CALL                             R7 0 1
     1011 SETTABLEKS                       R7 R4 K294 ["FFlagGen3dSegmentationSelector"]
     1013 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1015 LOADK                            R8 K295 ["MarkdownTagFallbacks"]
     1016 CALL                             R7 1 1
     1017 CALL                             R7 0 1
     1018 SETTABLEKS                       R7 R4 K296 ["FFlagMarkdownTagFallbacks"]
     1020 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1022 LOADK                            R8 K297 ["MCPAssistantAzureOpenAI"]
     1023 CALL                             R7 1 1
     1024 CALL                             R7 0 1
     1025 SETTABLEKS                       R7 R4 K298 ["FFlagMCPAssistantAzureOpenAI"]
     1027 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1029 LOADK                            R8 K299 ["MCPAssistantManagementMenu5"]
     1030 CALL                             R7 1 1
     1031 CALL                             R7 0 1
     1032 SETTABLEKS                       R7 R4 K300 ["FFlagMCPAssistantManagementMenu"]
     1034 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1036 LOADK                            R8 K301 ["MCPAssistantOpenAIPreserveThinking"]
     1037 CALL                             R7 1 1
     1038 CALL                             R7 0 1
     1039 SETTABLEKS                       R7 R4 K302 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1041 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1043 LOADK                            R8 K303 ["MCPAssistantOpenAIThinkingEnabled"]
     1044 CALL                             R7 1 1
     1045 CALL                             R7 0 1
     1046 SETTABLEKS                       R7 R4 K304 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1048 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1050 LOADK                            R8 K305 ["MCPConnectionIndicatorTooltip"]
     1051 CALL                             R7 1 1
     1052 CALL                             R7 0 1
     1053 SETTABLEKS                       R7 R4 K306 ["FFlagMCPConnectionIndicatorTooltip"]
     1055 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1057 LOADK                            R8 K307 ["MCPContentNormalization"]
     1058 CALL                             R7 1 1
     1059 CALL                             R7 0 1
     1060 SETTABLEKS                       R7 R4 K308 ["FFlagMCPContentNormalization"]
     1062 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1064 LOADK                            R8 K309 ["MCPEnableToolDisabling"]
     1065 CALL                             R7 1 1
     1066 CALL                             R7 0 1
     1067 SETTABLEKS                       R7 R4 K310 ["FFlagMCPEnableToolDisabling"]
     1069 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1071 LOADK                            R8 K311 ["PlaytestVision"]
     1072 CALL                             R7 1 1
     1073 CALL                             R7 0 1
     1074 SETTABLEKS                       R7 R4 K312 ["FFlagPlaytestVision"]
     1076 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1078 LOADK                            R8 K313 ["PrimGenBetterErrorType"]
     1079 CALL                             R7 1 1
     1080 CALL                             R7 0 1
     1081 SETTABLEKS                       R7 R4 K314 ["FFlagPrimGenBetterErrorType"]
     1083 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1085 LOADK                            R8 K315 ["PrimGenImageGenPromptTemplateEnabled"]
     1086 CALL                             R7 1 1
     1087 CALL                             R7 0 1
     1088 SETTABLEKS                       R7 R4 K316 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1090 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1092 LOADK                            R8 K317 ["PrimGenSchemaSelector"]
     1093 CALL                             R7 1 1
     1094 CALL                             R7 0 1
     1095 SETTABLEKS                       R7 R4 K318 ["FFlagPrimGenSchemaSelector"]
     1097 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1099 LOADK                            R8 K319 ["PrimGenVerboseDmIsUnReachableMsg"]
     1100 CALL                             R7 1 1
     1101 CALL                             R7 0 1
     1102 SETTABLEKS                       R7 R4 K320 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1104 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1106 LOADK                            R8 K321 ["PrimGenVersionMismatchError"]
     1107 CALL                             R7 1 1
     1108 CALL                             R7 0 1
     1109 SETTABLEKS                       R7 R4 K322 ["FFlagPrimGenVersionMismatchError"]
     1111 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1113 LOADK                            R8 K323 ["PropertiesExposeContentView"]
     1114 CALL                             R7 1 1
     1115 CALL                             R7 0 1
     1116 SETTABLEKS                       R7 R4 K324 ["FFlagPropertiesExposeContentView"]
     1118 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1120 LOADK                            R8 K325 ["ScreenCaptureCamera"]
     1121 CALL                             R7 1 1
     1122 CALL                             R7 0 1
     1123 SETTABLEKS                       R7 R4 K326 ["FFlagScreenCaptureCamera"]
     1125 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1127 LOADK                            R8 K327 ["ScriptDebuggerServiceEnabled2"]
     1128 CALL                             R7 1 1
     1129 CALL                             R7 0 1
     1130 SETTABLEKS                       R7 R4 K328 ["FFlagScriptDebuggerServiceEnabled"]
     1132 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1134 LOADK                            R8 K329 ["SubagentScriptEditAutoConfirmation"]
     1135 CALL                             R7 1 1
     1136 CALL                             R7 0 1
     1137 SETTABLEKS                       R7 R4 K330 ["FFlagSubagentScriptEditAutoConfirmation"]
     1139 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1141 LOADK                            R8 K331 ["UseStudioSideListTool"]
     1142 CALL                             R7 1 1
     1143 CALL                             R7 0 1
     1144 SETTABLEKS                       R7 R4 K332 ["FFlagUseStudioSideListTool"]
     1146 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1148 LOADK                            R8 K334 ["AmrAssetDependencyGrantEventTimeout"]
     1149 LOADN                            R9 40
     1150 CALL                             R7 2 1
     1151 CALL                             R7 0 1
     1152 SETTABLEKS                       R7 R4 K335 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1154 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1156 LOADK                            R8 K336 ["AssistantAutoSaveInterval"]
     1157 LOADN                            R9 60
     1158 CALL                             R7 2 1
     1159 CALL                             R7 0 1
     1160 SETTABLEKS                       R7 R4 K337 ["FIntAssistantAutoSaveInterval"]
     1162 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1164 LOADK                            R8 K338 ["AssistantDebugToolMaxOutput"]
     1165 LOADN                            R9 20000
     1166 CALL                             R7 2 1
     1167 CALL                             R7 0 1
     1168 SETTABLEKS                       R7 R4 K339 ["FIntAssistantDebugToolMaxOutput"]
     1170 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1172 LOADK                            R8 K340 ["AssistantJobWaitDefaultTimeout"]
     1173 LOADN                            R9 600
     1174 CALL                             R7 2 1
     1175 CALL                             R7 0 1
     1176 SETTABLEKS                       R7 R4 K341 ["FIntAssistantJobWaitDefaultTimeout"]
     1178 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1180 LOADK                            R8 K342 ["AssistantMaxDisplayTextChars"]
     1181 LOADK                            R9 K343 [100000]
     1182 CALL                             R7 2 1
     1183 CALL                             R7 0 1
     1184 SETTABLEKS                       R7 R4 K344 ["FIntAssistantMaxDisplayTextChars"]
     1186 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1188 LOADK                            R8 K345 ["AssistantMaxToolInputStringLen"]
     1189 LOADN                            R9 2000
     1190 CALL                             R7 2 1
     1191 CALL                             R7 0 1
     1192 SETTABLEKS                       R7 R4 K346 ["FIntAssistantMaxToolInputStringLen"]
     1194 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1196 LOADK                            R8 K347 ["AssistantMeshGenMaxTrianglesDefault"]
     1197 LOADN                            R9 10000
     1198 CALL                             R7 2 1
     1199 CALL                             R7 0 1
     1200 SETTABLEKS                       R7 R4 K348 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1202 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1204 LOADK                            R8 K349 ["AssistantMinPopoverHeight"]
     1205 LOADN                            R9 150
     1206 CALL                             R7 2 1
     1207 CALL                             R7 0 1
     1208 SETTABLEKS                       R7 R4 K350 ["FIntAssistantMinPopoverHeight"]
     1210 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1212 LOADK                            R8 K351 ["AssistantPersistenceMessageLoadLimit"]
     1213 LOADN                            R9 5
     1214 CALL                             R7 2 1
     1215 CALL                             R7 0 1
     1216 SETTABLEKS                       R7 R4 K352 ["FIntAssistantPersistenceMessageLoadLimit"]
     1218 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1220 LOADK                            R8 K353 ["AssistantPersistenceThreadLoadLimit"]
     1221 LOADN                            R9 5
     1222 CALL                             R7 2 1
     1223 CALL                             R7 0 1
     1224 SETTABLEKS                       R7 R4 K354 ["FIntAssistantPersistenceThreadLoadLimit"]
     1226 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1228 LOADK                            R8 K355 ["AssistantPostTurnRefreshDelaySeconds"]
     1229 LOADN                            R9 2
     1230 CALL                             R7 2 1
     1231 CALL                             R7 0 1
     1232 SETTABLEKS                       R7 R4 K356 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1234 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1236 LOADK                            R8 K357 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1237 LOADN                            R9 999
     1238 CALL                             R7 2 1
     1239 CALL                             R7 0 1
     1240 SETTABLEKS                       R7 R4 K358 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1242 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1244 LOADK                            R8 K359 ["AssistantPrimitiveGenPollIntervalMs"]
     1245 LOADN                            R9 2000
     1246 CALL                             R7 2 1
     1247 CALL                             R7 0 1
     1248 SETTABLEKS                       R7 R4 K360 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1250 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1252 LOADK                            R8 K361 ["AssistantProcessEventTimeoutMS"]
     1253 LOADK                            R9 K362 [60000]
     1254 CALL                             R7 2 1
     1255 CALL                             R7 0 1
     1256 SETTABLEKS                       R7 R4 K363 ["FIntAssistantProcessEventTimeoutMS"]
     1258 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1260 LOADK                            R8 K364 ["AssistantSegmentMeshMaxUserParts"]
     1261 LOADN                            R9 16
     1262 CALL                             R7 2 1
     1263 CALL                             R7 0 1
     1264 SETTABLEKS                       R7 R4 K365 ["FIntAssistantSegmentMeshMaxUserParts"]
     1266 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1268 LOADK                            R8 K366 ["ConvAIMaxHistoryCount"]
     1269 LOADN                            R9 6
     1270 CALL                             R7 2 1
     1271 CALL                             R7 0 1
     1272 SETTABLEKS                       R7 R4 K367 ["FIntConvAIMaxHistoryCount"]
     1274 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1276 LOADK                            R8 K368 ["ExecuteLuauMaxJsonLength"]
     1277 LOADK                            R9 K343 [100000]
     1278 CALL                             R7 2 1
     1279 CALL                             R7 0 1
     1280 SETTABLEKS                       R7 R4 K369 ["FIntExecuteLuauMaxJsonLength"]
     1282 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1284 LOADK                            R8 K370 ["ExecuteLuauMaxStringLength"]
     1285 LOADK                            R9 K343 [100000]
     1286 CALL                             R7 2 1
     1287 CALL                             R7 0 1
     1288 SETTABLEKS                       R7 R4 K371 ["FIntExecuteLuauMaxStringLength"]
     1290 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1292 LOADK                            R8 K372 ["FromHistoryMaxResultChars"]
     1293 LOADK                            R9 K373 [200000]
     1294 CALL                             R7 2 1
     1295 CALL                             R7 0 1
     1296 SETTABLEKS                       R7 R4 K374 ["FIntFromHistoryMaxResultChars"]
     1298 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1300 LOADK                            R8 K375 ["GameTreeDefaultHeadLimit"]
     1301 LOADN                            R9 200
     1302 CALL                             R7 2 1
     1303 CALL                             R7 0 1
     1304 SETTABLEKS                       R7 R4 K376 ["FIntGameTreeDefaultHeadLimit"]
     1306 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1308 LOADK                            R8 K377 ["GameTreeDefaultMaxDepth"]
     1309 LOADN                            R9 3
     1310 CALL                             R7 2 1
     1311 CALL                             R7 0 1
     1312 SETTABLEKS                       R7 R4 K378 ["FIntGameTreeDefaultMaxDepth"]
     1314 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1316 LOADK                            R8 K379 ["GameTreeMaxAbsoluteDepth"]
     1317 LOADN                            R9 10
     1318 CALL                             R7 2 1
     1319 CALL                             R7 0 1
     1320 SETTABLEKS                       R7 R4 K380 ["FIntGameTreeMaxAbsoluteDepth"]
     1322 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1324 LOADK                            R8 K381 ["InspectInstanceMaxJsonLength"]
     1325 LOADN                            R9 500
     1326 CALL                             R7 2 1
     1327 CALL                             R7 0 1
     1328 SETTABLEKS                       R7 R4 K382 ["FIntInspectInstanceMaxJsonLength"]
     1330 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1332 LOADK                            R8 K383 ["InspectInstanceMaxMatches"]
     1333 LOADN                            R9 20
     1334 CALL                             R7 2 1
     1335 CALL                             R7 0 1
     1336 SETTABLEKS                       R7 R4 K384 ["FIntInspectInstanceMaxMatches"]
     1338 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1340 LOADK                            R8 K385 ["InspectInstanceMaxStringLength"]
     1341 LOADN                            R9 1000
     1342 CALL                             R7 2 1
     1343 CALL                             R7 0 1
     1344 SETTABLEKS                       R7 R4 K386 ["FIntInspectInstanceMaxStringLength"]
     1346 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1348 LOADK                            R8 K387 ["MCPAssistantGenerationIndicatorWarningTime"]
     1349 LOADN                            R9 10
     1350 CALL                             R7 2 1
     1351 CALL                             R7 0 1
     1352 SETTABLEKS                       R7 R4 K388 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1354 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1356 LOADK                            R8 K389 ["MCPAssistantInputAreaCharLimit"]
     1357 LOADN                            R9 4000
     1358 CALL                             R7 2 1
     1359 CALL                             R7 0 1
     1360 SETTABLEKS                       R7 R4 K390 ["FIntMCPAssistantInputAreaCharLimit"]
     1362 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1364 LOADK                            R8 K391 ["MCPAssistantMaxPromptHistory"]
     1365 LOADN                            R9 20
     1366 CALL                             R7 2 1
     1367 CALL                             R7 0 1
     1368 SETTABLEKS                       R7 R4 K392 ["FIntMCPAssistantMaxPromptHistory"]
     1370 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1372 LOADK                            R8 K393 ["MCPAssistantMaxToolCalls"]
     1373 LOADN                            R9 20
     1374 CALL                             R7 2 1
     1375 CALL                             R7 0 1
     1376 SETTABLEKS                       R7 R4 K394 ["FIntMCPAssistantMaxToolCalls"]
     1378 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1380 LOADK                            R8 K395 ["MinimumAssistantFreeTrialRemaining"]
     1381 LOADN                            R9 1
     1382 CALL                             R7 2 1
     1383 CALL                             R7 0 1
     1384 SETTABLEKS                       R7 R4 K396 ["FIntMinimumAssistantFreeTrialRemaining"]
     1386 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1388 LOADK                            R8 K397 ["MinimumAssistantRobuxBalance"]
     1389 LOADN                            R9 100
     1390 CALL                             R7 2 1
     1391 CALL                             R7 0 1
     1392 SETTABLEKS                       R7 R4 K398 ["FIntMinimumAssistantRobuxBalance"]
     1394 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1396 LOADK                            R8 K399 ["PlaytestLookBudget"]
     1397 LOADN                            R9 7
     1398 CALL                             R7 2 1
     1399 CALL                             R7 0 1
     1400 SETTABLEKS                       R7 R4 K400 ["FIntPlaytestLookBudget"]
     1402 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1404 LOADK                            R8 K401 ["PlaytestLookTimeoutMs"]
     1405 LOADK                            R9 K362 [60000]
     1406 CALL                             R7 2 1
     1407 CALL                             R7 0 1
     1408 SETTABLEKS                       R7 R4 K402 ["FIntPlaytestLookTimeoutMs"]
     1410 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1412 LOADK                            R8 K403 ["PlaytestMaxToolCalls"]
     1413 LOADN                            R9 50
     1414 CALL                             R7 2 1
     1415 CALL                             R7 0 1
     1416 SETTABLEKS                       R7 R4 K404 ["FIntPlaytestMaxToolCalls"]
     1418 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1420 LOADK                            R8 K405 ["PrimGenLongRunThresholdSec"]
     1421 LOADN                            R9 120
     1422 CALL                             R7 2 1
     1423 CALL                             R7 0 1
     1424 SETTABLEKS                       R7 R4 K406 ["FIntPrimGenLongRunThresholdSec"]
     1426 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1428 LOADK                            R8 K407 ["PrimGenTextMaxLength"]
     1429 LOADN                            R9 80
     1430 CALL                             R7 2 1
     1431 CALL                             R7 0 1
     1432 SETTABLEKS                       R7 R4 K408 ["FIntPrimGenTextMaxLength"]
     1434 GETTABLEKS                       R7 R3 K333 ["createGetFInt"]
     1436 LOADK                            R8 K409 ["UnitTestSubagentMaxToolCalls"]
     1437 LOADN                            R9 100
     1438 CALL                             R7 2 1
     1439 CALL                             R7 0 1
     1440 SETTABLEKS                       R7 R4 K410 ["FIntUnitTestSubagentMaxToolCalls"]
     1442 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1444 LOADK                            R8 K412 ["AssistantDebugCreditMeteringBlockReason"]
     1445 LOADK                            R9 K413 [""]
     1446 CALL                             R7 2 1
     1447 CALL                             R7 0 1
     1448 SETTABLEKS                       R7 R4 K414 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1450 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1452 LOADK                            R8 K415 ["AssistantDisabledSubagents"]
     1453 LOADK                            R9 K413 [""]
     1454 CALL                             R7 2 1
     1455 CALL                             R7 0 1
     1456 SETTABLEKS                       R7 R4 K416 ["FStringAssistantDisabledSubagents"]
     1458 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1460 LOADK                            R8 K417 ["AssistantGen3dDefaultModel"]
     1461 LOADK                            R9 K418 ["Assistant/glm51-h200"]
     1462 CALL                             R7 2 1
     1463 CALL                             R7 0 1
     1464 SETTABLEKS                       R7 R4 K419 ["FStringAssistantGen3dDefaultModel"]
     1466 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1468 LOADK                            R8 K420 ["AssistantJobRunTools"]
     1469 LOADK                            R9 K421 ["generate_procedural_model,generate_mesh,generate_material,generate_avatar"]
     1470 CALL                             R7 2 1
     1471 CALL                             R7 0 1
     1472 SETTABLEKS                       R7 R4 K422 ["FStringAssistantJobRunTools"]
     1474 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1476 LOADK                            R8 K423 ["AssistantMeshGenImageGenModelOverride"]
     1477 LOADK                            R9 K424 ["gemini"]
     1478 CALL                             R7 2 1
     1479 CALL                             R7 0 1
     1480 SETTABLEKS                       R7 R4 K425 ["FStringAssistantMeshGenImageGenModelOverride"]
     1482 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1484 LOADK                            R8 K426 ["AssistantMeshGenImageGenPromptTemplate"]
     1485 LOADK                            R9 K413 [""]
     1486 CALL                             R7 2 1
     1487 CALL                             R7 0 1
     1488 SETTABLEKS                       R7 R4 K427 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1490 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1492 LOADK                            R8 K428 ["AssistantMeshGenInferenceServiceOverride"]
     1493 LOADK                            R9 K429 ["stage-diff-mesh-gen"]
     1494 CALL                             R7 2 1
     1495 CALL                             R7 0 1
     1496 SETTABLEKS                       R7 R4 K430 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1498 GETIMPORT                        R7 K5 [require]
     1500 GETTABLEKS                       R8 R0 K431 ["FlagUtils"]
     1502 GETTABLEKS                       R8 R8 K432 ["createGetFStringAssistantMeshGenSchemaData"]
     1504 CALL                             R7 1 1
     1505 CALL                             R7 0 1
     1506 SETTABLEKS                       R7 R4 K433 ["FStringAssistantMeshGenSchemaData"]
     1508 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1510 LOADK                            R8 K434 ["AssistantModerateErrorMsg"]
     1511 LOADK                            R9 K435 ["prompt violates Roblox safety policy"]
     1512 CALL                             R7 2 1
     1513 CALL                             R7 0 1
     1514 SETTABLEKS                       R7 R4 K436 ["FStringAssistantModerateErrorMsg"]
     1516 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1518 LOADK                            R8 K437 ["AssistantSkillsAllowlist"]
     1519 LOADK                            R9 K438 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false"]
     1520 CALL                             R7 2 1
     1521 CALL                             R7 0 1
     1522 SETTABLEKS                       R7 R4 K439 ["FStringAssistantSkillsAllowlist"]
     1524 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1526 LOADK                            R8 K440 ["AssistantTestLLMReasoningEffort"]
     1527 LOADK                            R9 K441 ["high"]
     1528 CALL                             R7 2 1
     1529 CALL                             R7 0 1
     1530 SETTABLEKS                       R7 R4 K442 ["FStringAssistantTestLLMReasoningEffort"]
     1532 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1534 LOADK                            R8 K443 ["AssistantToolsExcludedDirectories"]
     1535 LOADK                            R9 K444 ["CoreGui,PlayerGui,LoadedCode"]
     1536 CALL                             R7 2 1
     1537 CALL                             R7 0 1
     1538 SETTABLEKS                       R7 R4 K445 ["FStringAssistantToolsExcludedDirectories"]
     1540 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1542 LOADK                            R8 K446 ["AssistantToolWidgetMappings"]
     1543 LOADK                            R9 K413 [""]
     1544 CALL                             R7 2 1
     1545 CALL                             R7 0 1
     1546 SETTABLEKS                       R7 R4 K447 ["FStringAssistantToolWidgetMappings"]
     1548 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1550 LOADK                            R8 K448 ["AssistantUnitTestSubagentModel"]
     1551 LOADK                            R9 K449 ["Assistant/glm5"]
     1552 CALL                             R7 2 1
     1553 CALL                             R7 0 1
     1554 SETTABLEKS                       R7 R4 K450 ["FStringAssistantUnitTestSubagentModel"]
     1556 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1558 LOADK                            R8 K451 ["AssistantUntitledChatPlaceholderText"]
     1559 LOADK                            R9 K452 ["Untitled Chat"]
     1560 CALL                             R7 2 1
     1561 CALL                             R7 0 1
     1562 SETTABLEKS                       R7 R4 K453 ["FStringAssistantUntitledChatPlaceholder"]
     1564 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1566 LOADK                            R8 K454 ["MCPAssistantAnthropicModels"]
     1567 LOADK                            R9 K455 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1568 CALL                             R7 2 1
     1569 CALL                             R7 0 1
     1570 SETTABLEKS                       R7 R4 K456 ["FStringMCPAssistantAnthropicModels"]
     1572 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1574 LOADK                            R8 K457 ["MCPAssistantClaudeAPIKey"]
     1575 LOADK                            R9 K413 [""]
     1576 CALL                             R7 2 1
     1577 CALL                             R7 0 1
     1578 SETTABLEKS                       R7 R4 K458 ["FStringMCPAssistantClaudeAPIKey"]
     1580 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1582 LOADK                            R8 K459 ["MCPAssistantCustomModelName"]
     1583 LOADK                            R9 K413 [""]
     1584 CALL                             R7 2 1
     1585 CALL                             R7 0 1
     1586 SETTABLEKS                       R7 R4 K460 ["FStringMCPAssistantCustomModelName"]
     1588 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1590 LOADK                            R8 K461 ["MCPAssistantGeminiAPIKey"]
     1591 LOADK                            R9 K413 [""]
     1592 CALL                             R7 2 1
     1593 CALL                             R7 0 1
     1594 SETTABLEKS                       R7 R4 K462 ["FStringMCPAssistantGeminiAPIKey"]
     1596 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1598 LOADK                            R8 K463 ["MCPAssistantGeminiModels"]
     1599 LOADK                            R9 K464 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1600 CALL                             R7 2 1
     1601 CALL                             R7 0 1
     1602 SETTABLEKS                       R7 R4 K465 ["FStringMCPAssistantGeminiModels"]
     1604 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1606 LOADK                            R8 K466 ["MCPAssistantOpenAIAPIKey"]
     1607 LOADK                            R9 K413 [""]
     1608 CALL                             R7 2 1
     1609 CALL                             R7 0 1
     1610 SETTABLEKS                       R7 R4 K467 ["FStringMCPAssistantOpenAIAPIKey"]
     1612 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1614 LOADK                            R8 K468 ["MCPAssistantOpenAIModels"]
     1615 LOADK                            R9 K469 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1616 CALL                             R7 2 1
     1617 CALL                             R7 0 1
     1618 SETTABLEKS                       R7 R4 K470 ["FStringMCPAssistantOpenAIModels"]
     1620 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1622 LOADK                            R8 K471 ["MCPAssistantOpenAIReasoningEffort"]
     1623 LOADK                            R9 K413 [""]
     1624 CALL                             R7 2 1
     1625 CALL                             R7 0 1
     1626 SETTABLEKS                       R7 R4 K472 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1628 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1630 LOADK                            R8 K473 ["MCPAssistantPrimitiveGenServerURL"]
     1631 LOADK                            R9 K413 [""]
     1632 CALL                             R7 2 1
     1633 CALL                             R7 0 1
     1634 SETTABLEKS                       R7 R4 K474 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1636 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1638 LOADK                            R8 K475 ["MCPAssistantTestLLMAPIKey"]
     1639 LOADK                            R9 K413 [""]
     1640 CALL                             R7 2 1
     1641 CALL                             R7 0 1
     1642 SETTABLEKS                       R7 R4 K476 ["FStringMCPAssistantTestLLMAPIKey"]
     1644 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1646 LOADK                            R8 K477 ["MCPAssistantURLOverride"]
     1647 LOADK                            R9 K413 [""]
     1648 CALL                             R7 2 1
     1649 CALL                             R7 0 1
     1650 SETTABLEKS                       R7 R4 K478 ["FStringMCPAssistantURLOverride"]
     1652 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1654 LOADK                            R8 K479 ["MCPDocsUrl"]
     1655 LOADK                            R9 K480 ["https://create.roblox.com/docs/studio/mcp/"]
     1656 CALL                             R7 2 1
     1657 CALL                             R7 0 1
     1658 SETTABLEKS                       R7 R4 K481 ["FStringMCPDocsUrl"]
     1660 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1662 LOADK                            R8 K482 ["PlaytestConversationURL"]
     1663 LOADK                            R9 K483 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1664 CALL                             R7 2 1
     1665 CALL                             R7 0 1
     1666 SETTABLEKS                       R7 R4 K484 ["FStringPlaytestConversationURL"]
     1668 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1670 LOADK                            R8 K485 ["PlaytestModelName"]
     1671 LOADK                            R9 K486 ["Qwen/Qwen35-35B-A3B"]
     1672 CALL                             R7 2 1
     1673 CALL                             R7 0 1
     1674 SETTABLEKS                       R7 R4 K487 ["FStringPlaytestModelName"]
     1676 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1678 LOADK                            R8 K488 ["PrimGenImageGenPromptTemplate"]
     1679 LOADK                            R9 K413 [""]
     1680 CALL                             R7 2 1
     1681 CALL                             R7 0 1
     1682 SETTABLEKS                       R7 R4 K489 ["FStringPrimGenImageGenPromptTemplate"]
     1684 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1686 LOADK                            R8 K490 ["ProceduralScriptCapabilities"]
     1687 LOADK                            R9 K491 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1688 CALL                             R7 2 1
     1689 CALL                             R7 0 1
     1690 SETTABLEKS                       R7 R4 K492 ["FStringProceduralScriptCapabilities"]
     1692 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1694 LOADK                            R8 K493 ["ScreenCaptureFormat"]
     1695 LOADK                            R9 K413 [""]
     1696 CALL                             R7 2 1
     1697 CALL                             R7 0 1
     1698 SETTABLEKS                       R7 R4 K494 ["FStringScreenCaptureFormat"]
     1700 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1702 LOADK                            R8 K495 ["ScreenCaptureSize"]
     1703 LOADK                            R9 K413 [""]
     1704 CALL                             R7 2 1
     1705 CALL                             R7 0 1
     1706 SETTABLEKS                       R7 R4 K496 ["FStringScreenCaptureSize"]
     1708 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1710 LOADK                            R8 K497 ["ScreenCaptureSubagentModelName"]
     1711 LOADK                            R9 K413 [""]
     1712 CALL                             R7 2 1
     1713 CALL                             R7 0 1
     1714 SETTABLEKS                       R7 R4 K498 ["FStringScreenCaptureSubagentModelName"]
     1716 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1718 LOADK                            R8 K499 ["SegmentByPartsBetaFeatureUrl"]
     1719 LOADK                            R9 K413 [""]
     1720 CALL                             R7 2 1
     1721 CALL                             R7 0 1
     1722 SETTABLEKS                       R7 R4 K500 ["FStringSegmentByPartsBetaFeatureUrl"]
     1724 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1726 LOADK                            R8 K501 ["SubagentExploreModelName"]
     1727 LOADK                            R9 K502 ["Assistant/glm5-b200-server-1"]
     1728 CALL                             R7 2 1
     1729 CALL                             R7 0 1
     1730 SETTABLEKS                       R7 R4 K503 ["FStringSubagentExploreModelName"]
     1732 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1734 LOADK                            R8 K504 ["SubagentURLOverride"]
     1735 LOADK                            R9 K413 [""]
     1736 CALL                             R7 2 1
     1737 CALL                             R7 0 1
     1738 SETTABLEKS                       R7 R4 K505 ["FStringSubagentURLOverride"]
     1740 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1742 LOADK                            R8 K506 ["TestLLMURLOverride"]
     1743 LOADK                            R9 K413 [""]
     1744 CALL                             R7 2 1
     1745 CALL                             R7 0 1
     1746 SETTABLEKS                       R7 R4 K507 ["FStringTestLLMURLOverride"]
     1748 GETTABLEKS                       R7 R3 K411 ["createGetFString"]
     1750 LOADK                            R8 K508 ["TestSubagentURLOverride"]
     1751 LOADK                            R9 K413 [""]
     1752 CALL                             R7 2 1
     1753 CALL                             R7 0 1
     1754 SETTABLEKS                       R7 R4 K509 ["FStringTestSubagentURLOverride"]
     1756 DUPTABLE                         R9 K511 [{"__index", "__newindex"}]
     1757 SETTABLEKS                       R2 R9 K510 ["__index"]
     1759 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1761 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1763 MOVE                             R8 R4
     1764 GETIMPORT                        R7 K15 [setmetatable]
     1766 CALL                             R7 2 1
     1767 RETURN                           R7 1
