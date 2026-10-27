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
       20 NEWTABLE                         R5 512 0
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
       59 LOADK                            R8 K27 ["AssistantExecuteLuauArguments"]
       60 CALL                             R7 1 1
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R4 K28 ["EngineFeatureAssistantExecuteLuauArguments"]
       64 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       66 LOADK                            R8 K29 ["AssistantGen3dImagePreview"]
       67 CALL                             R7 1 1
       68 CALL                             R7 0 1
       69 SETTABLEKS                       R7 R4 K30 ["EngineFeatureAssistantGen3dImagePreview"]
       71 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       73 LOADK                            R8 K31 ["AssistantMCPProxyTokenEnabled"]
       74 CALL                             R7 1 1
       75 CALL                             R7 0 1
       76 SETTABLEKS                       R7 R4 K32 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       78 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       80 LOADK                            R8 K33 ["StudioAssistantMcpOriginated"]
       81 CALL                             R7 1 1
       82 CALL                             R7 0 1
       83 SETTABLEKS                       R7 R4 K34 ["EngineFeatureStudioAssistantMcpOriginated"]
       85 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       87 LOADK                            R8 K35 ["StudioPanelsResolveFullPluginGuiId"]
       88 CALL                             R7 1 1
       89 CALL                             R7 0 1
       90 SETTABLEKS                       R7 R4 K36 ["EngineFeatureStudioPanelsResolveFullPluginGuiId"]
       92 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       94 LOADK                            R8 K37 ["AllowThreadSuspendOverride"]
       95 CALL                             R7 1 1
       96 CALL                             R7 0 1
       97 SETTABLEKS                       R7 R4 K38 ["FFlagAllowThreadSuspendOverride"]
       99 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      101 LOADK                            R8 K39 ["AnimationGenOpenACE2"]
      102 CALL                             R7 1 1
      103 CALL                             R7 0 1
      104 SETTABLEKS                       R7 R4 K40 ["FFlagAnimationGenOpenACE"]
      106 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      108 LOADK                            R8 K41 ["AssistantACPBatchHistoryReplay"]
      109 CALL                             R7 1 1
      110 CALL                             R7 0 1
      111 SETTABLEKS                       R7 R4 K42 ["FFlagAssistantACPBatchHistoryReplay"]
      113 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      115 LOADK                            R8 K43 ["AssistantACPFixPendingToolCall2"]
      116 CALL                             R7 1 1
      117 CALL                             R7 0 1
      118 SETTABLEKS                       R7 R4 K44 ["FFlagAssistantACPFixPendingToolCall"]
      120 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      122 LOADK                            R8 K45 ["AssistantAddNumberInput"]
      123 CALL                             R7 1 1
      124 CALL                             R7 0 1
      125 SETTABLEKS                       R7 R4 K46 ["FFlagAssistantAddNumberInput"]
      127 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      129 LOADK                            R8 K47 ["AssistantAddPlaceholderProp"]
      130 CALL                             R7 1 1
      131 CALL                             R7 0 1
      132 SETTABLEKS                       R7 R4 K48 ["FFlagAssistantAddPlaceholderProp"]
      134 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      136 LOADK                            R8 K49 ["AssistantAnimationGenMoveKeyframeKeepRoot"]
      137 CALL                             R7 1 1
      138 CALL                             R7 0 1
      139 SETTABLEKS                       R7 R4 K50 ["FFlagAssistantAnimationGenMoveKeyframeKeepRoot"]
      141 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      143 LOADK                            R8 K51 ["AssistantAnimationGenRotationIntentV3"]
      144 CALL                             R7 1 1
      145 CALL                             R7 0 1
      146 SETTABLEKS                       R7 R4 K52 ["FFlagAssistantAnimationGenRotationIntentV3"]
      148 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      150 LOADK                            R8 K53 ["AssistantAnimationGenShowPublishButton"]
      151 CALL                             R7 1 1
      152 CALL                             R7 0 1
      153 SETTABLEKS                       R7 R4 K54 ["FFlagAssistantAnimationGenShowPublishButton"]
      155 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      157 LOADK                            R8 K55 ["AssistantAnimationGenSnapToEditedPoses"]
      158 CALL                             R7 1 1
      159 CALL                             R7 0 1
      160 SETTABLEKS                       R7 R4 K56 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
      162 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      164 LOADK                            R8 K57 ["AssistantAnimationGenTool"]
      165 CALL                             R7 1 1
      166 CALL                             R7 0 1
      167 SETTABLEKS                       R7 R4 K58 ["FFlagAssistantAnimationGenTool"]
      169 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      171 LOADK                            R8 K59 ["AssistantAskInputExpandableRows"]
      172 CALL                             R7 1 1
      173 CALL                             R7 0 1
      174 SETTABLEKS                       R7 R4 K60 ["FFlagAssistantAskInputExpandableRows"]
      176 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      178 LOADK                            R8 K61 ["AssistantAskInputFooterResolver"]
      179 CALL                             R7 1 1
      180 CALL                             R7 0 1
      181 SETTABLEKS                       R7 R4 K62 ["FFlagAssistantAskInputFooterResolver"]
      183 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      185 LOADK                            R8 K63 ["AssistantAskInputToolLLM2"]
      186 CALL                             R7 1 1
      187 CALL                             R7 0 1
      188 SETTABLEKS                       R7 R4 K64 ["FFlagAssistantAskInputToolLLM"]
      190 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      192 LOADK                            R8 K65 ["AssistantAssetSearchCreatorStoreUtm"]
      193 CALL                             R7 1 1
      194 CALL                             R7 0 1
      195 SETTABLEKS                       R7 R4 K66 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      197 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      199 LOADK                            R8 K67 ["AssistantAssetSearchDirectInsert"]
      200 CALL                             R7 1 1
      201 CALL                             R7 0 1
      202 SETTABLEKS                       R7 R4 K68 ["FFlagAssistantAssetSearchDirectInsert"]
      204 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      206 LOADK                            R8 K69 ["AssistantAssetTileNamePreview"]
      207 CALL                             R7 1 1
      208 CALL                             R7 0 1
      209 SETTABLEKS                       R7 R4 K70 ["FFlagAssistantAssetTileNamePreview"]
      211 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      213 LOADK                            R8 K71 ["AssistantAvatarAutoSetupTool5"]
      214 CALL                             R7 1 1
      215 CALL                             R7 0 1
      216 SETTABLEKS                       R7 R4 K72 ["FFlagAssistantAvatarAutoSetupTool"]
      218 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      220 LOADK                            R8 K73 ["AssistantAvatarGenHumanoidRigDescription"]
      221 CALL                             R7 1 1
      222 CALL                             R7 0 1
      223 SETTABLEKS                       R7 R4 K74 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      225 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      227 LOADK                            R8 K75 ["AssistantAvatarGenSlashCommand"]
      228 CALL                             R7 1 1
      229 CALL                             R7 0 1
      230 SETTABLEKS                       R7 R4 K76 ["FFlagAssistantAvatarGenSlashCommand"]
      232 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      234 LOADK                            R8 K77 ["AssistantAvatarGenTool"]
      235 CALL                             R7 1 1
      236 CALL                             R7 0 1
      237 SETTABLEKS                       R7 R4 K78 ["FFlagAssistantAvatarGenTool"]
      239 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      241 LOADK                            R8 K79 ["AssistantAvatarGenUsageTelemetry"]
      242 CALL                             R7 1 1
      243 CALL                             R7 0 1
      244 SETTABLEKS                       R7 R4 K80 ["FFlagAssistantAvatarGenUsageTelemetry"]
      246 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      248 LOADK                            R8 K81 ["AssistantBetaFeatureSkills"]
      249 CALL                             R7 1 1
      250 CALL                             R7 0 1
      251 SETTABLEKS                       R7 R4 K82 ["FFlagAssistantBetaFeatureSkills"]
      253 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      255 LOADK                            R8 K83 ["AssistantCapturePluginGuiFocusPanel"]
      256 CALL                             R7 1 1
      257 CALL                             R7 0 1
      258 SETTABLEKS                       R7 R4 K84 ["FFlagAssistantCapturePluginGuiFocusPanel"]
      260 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      262 LOADK                            R8 K85 ["AssistantCapturePluginGuiTool"]
      263 CALL                             R7 1 1
      264 CALL                             R7 0 1
      265 SETTABLEKS                       R7 R4 K86 ["FFlagAssistantCapturePluginGuiTool"]
      267 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      269 LOADK                            R8 K87 ["AssistantChatFollowBottomThreshold"]
      270 CALL                             R7 1 1
      271 CALL                             R7 0 1
      272 SETTABLEKS                       R7 R4 K88 ["FFlagAssistantChatFollowBottomThreshold"]
      274 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      276 LOADK                            R8 K89 ["AssistantCloseDropdownsOnWidgetHidden"]
      277 CALL                             R7 1 1
      278 CALL                             R7 0 1
      279 SETTABLEKS                       R7 R4 K90 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      281 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      283 LOADK                            R8 K91 ["AssistantConfirmButtonUpdate"]
      284 CALL                             R7 1 1
      285 CALL                             R7 0 1
      286 SETTABLEKS                       R7 R4 K92 ["FFlagAssistantConfirmButtonUpdate"]
      288 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      290 LOADK                            R8 K93 ["AssistantConsoleOutputTailFromEnd2"]
      291 CALL                             R7 1 1
      292 CALL                             R7 0 1
      293 SETTABLEKS                       R7 R4 K94 ["FFlagAssistantConsoleOutputTailFromEnd"]
      295 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      297 LOADK                            R8 K95 ["AssistantCreditMetering3"]
      298 CALL                             R7 1 1
      299 CALL                             R7 0 1
      300 SETTABLEKS                       R7 R4 K96 ["FFlagAssistantCreditMetering"]
      302 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      304 LOADK                            R8 K97 ["AssistantCreditMeteringAdditionalUsage"]
      305 LOADB                            R9 1
      306 CALL                             R7 2 1
      307 CALL                             R7 0 1
      308 SETTABLEKS                       R7 R4 K98 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      310 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      312 LOADK                            R8 K99 ["AssistantCreditMeteringInferBlockReason"]
      313 CALL                             R7 1 1
      314 CALL                             R7 0 1
      315 SETTABLEKS                       R7 R4 K100 ["FFlagAssistantCreditMeteringInferBlockReason"]
      317 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      319 LOADK                            R8 K101 ["AssistantCreditMeteringLocalBackend"]
      320 CALL                             R7 1 1
      321 CALL                             R7 0 1
      322 SETTABLEKS                       R7 R4 K102 ["FFlagAssistantCreditMeteringLocalBackend"]
      324 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      326 LOADK                            R8 K103 ["AssistantCreditMeteringLocalBackendExp"]
      327 CALL                             R7 1 1
      328 CALL                             R7 0 1
      329 SETTABLEKS                       R7 R4 K104 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      331 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      333 LOADK                            R8 K105 ["AssistantCreditMeteringResetPeriod"]
      334 CALL                             R7 1 1
      335 CALL                             R7 0 1
      336 SETTABLEKS                       R7 R4 K106 ["FFlagAssistantCreditMeteringResetPeriod"]
      338 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      340 LOADK                            R8 K107 ["AssistantDestroySessionMonitorsOnClose"]
      341 CALL                             R7 1 1
      342 CALL                             R7 0 1
      343 SETTABLEKS                       R7 R4 K108 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      345 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      347 LOADK                            R8 K109 ["AssistantDisableApplyEditDataModelAvailability"]
      348 CALL                             R7 1 1
      349 CALL                             R7 0 1
      350 SETTABLEKS                       R7 R4 K110 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      352 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      354 LOADK                            R8 K111 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      355 CALL                             R7 1 1
      356 CALL                             R7 0 1
      357 SETTABLEKS                       R7 R4 K112 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      359 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      361 LOADK                            R8 K113 ["AssistantDisableBranching"]
      362 CALL                             R7 1 1
      363 CALL                             R7 0 1
      364 SETTABLEKS                       R7 R4 K114 ["FFlagAssistantDisableBranching"]
      366 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      368 LOADK                            R8 K115 ["AssistantDisableSessionFilter"]
      369 CALL                             R7 1 1
      370 CALL                             R7 0 1
      371 SETTABLEKS                       R7 R4 K116 ["FFlagAssistantDisableSessionFilter"]
      373 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      375 LOADK                            R8 K117 ["AssistantEditScrubbarPropertyRow"]
      376 CALL                             R7 1 1
      377 CALL                             R7 0 1
      378 SETTABLEKS                       R7 R4 K118 ["FFlagAssistantEditScrubbarPropertyRow"]
      380 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      382 LOADK                            R8 K119 ["AssistantExecLuauYieldHint2"]
      383 CALL                             R7 1 1
      384 CALL                             R7 0 1
      385 SETTABLEKS                       R7 R4 K120 ["FFlagAssistantExecLuauYieldHint"]
      387 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      389 LOADK                            R8 K121 ["AssistantExecLuauYieldHintInternal"]
      390 CALL                             R7 1 1
      391 CALL                             R7 0 1
      392 SETTABLEKS                       R7 R4 K122 ["FFlagAssistantExecLuauYieldHintInternal"]
      394 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      396 LOADK                            R8 K123 ["AssistantExternalMCPPluginSettingRedundancy"]
      397 CALL                             R7 1 1
      398 CALL                             R7 0 1
      399 SETTABLEKS                       R7 R4 K124 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      401 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      403 LOADK                            R8 K125 ["AssistantFeedbackView"]
      404 CALL                             R7 1 1
      405 CALL                             R7 0 1
      406 SETTABLEKS                       R7 R4 K126 ["FFlagAssistantFeedbackView"]
      408 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      410 LOADK                            R8 K127 ["AssistantFixStartPlayHang"]
      411 CALL                             R7 1 1
      412 CALL                             R7 0 1
      413 SETTABLEKS                       R7 R4 K128 ["FFlagAssistantFixStartPlayHang"]
      415 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      417 LOADK                            R8 K129 ["AssistantForceRemoteServiceForInternal"]
      418 CALL                             R7 1 1
      419 CALL                             R7 0 1
      420 SETTABLEKS                       R7 R4 K130 ["FFlagAssistantForceRemoteServiceForInternal"]
      422 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      424 LOADK                            R8 K131 ["AssistantGameTreeYield"]
      425 CALL                             R7 1 1
      426 CALL                             R7 0 1
      427 SETTABLEKS                       R7 R4 K132 ["FFlagAssistantGameTreeYield"]
      429 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      431 LOADK                            R8 K133 ["AssistantGen3DAssetPublishTracking"]
      432 CALL                             R7 1 1
      433 CALL                             R7 0 1
      434 SETTABLEKS                       R7 R4 K134 ["FFlagAssistantGen3DAssetPublishTracking"]
      436 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      438 LOADK                            R8 K135 ["AssistantGen3dAutoSegmentation"]
      439 CALL                             R7 1 1
      440 CALL                             R7 0 1
      441 SETTABLEKS                       R7 R4 K136 ["FFlagAssistantGen3dAutoSegmentation"]
      443 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      445 LOADK                            R8 K137 ["AssistantGen3DImagePreviewTelemetry"]
      446 CALL                             R7 1 1
      447 CALL                             R7 0 1
      448 SETTABLEKS                       R7 R4 K138 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      450 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      452 LOADK                            R8 K139 ["AssistantGen3dRequirePromptToGenerate"]
      453 CALL                             R7 1 1
      454 CALL                             R7 0 1
      455 SETTABLEKS                       R7 R4 K140 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      457 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      459 LOADK                            R8 K141 ["AssistantGen3DTelemetryV2"]
      460 CALL                             R7 1 1
      461 CALL                             R7 0 1
      462 SETTABLEKS                       R7 R4 K142 ["FFlagAssistantGen3DTelemetryV2"]
      464 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      466 LOADK                            R8 K143 ["AssistantGenerateLayoutCalloutCancel"]
      467 CALL                             R7 1 1
      468 CALL                             R7 0 1
      469 SETTABLEKS                       R7 R4 K144 ["FFlagAssistantGenerateLayoutCalloutCancel"]
      471 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      473 LOADK                            R8 K145 ["AssistantGenerateLayoutTool"]
      474 CALL                             R7 1 1
      475 CALL                             R7 0 1
      476 SETTABLEKS                       R7 R4 K146 ["FFlagAssistantGenerateLayoutTool"]
      478 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      480 LOADK                            R8 K147 ["AssistantGenerateSceneInputValidation"]
      481 CALL                             R7 1 1
      482 CALL                             R7 0 1
      483 SETTABLEKS                       R7 R4 K148 ["FFlagAssistantGenerateSceneInputValidation"]
      485 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      487 LOADK                            R8 K149 ["AssistantGenerateSceneMeshGenToggle"]
      488 CALL                             R7 1 1
      489 CALL                             R7 0 1
      490 SETTABLEKS                       R7 R4 K150 ["FFlagAssistantGenerateSceneMeshGenToggle"]
      492 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      494 LOADK                            R8 K151 ["AssistantGenerateSceneQuality"]
      495 CALL                             R7 1 1
      496 CALL                             R7 0 1
      497 SETTABLEKS                       R7 R4 K152 ["FFlagAssistantGenerateSceneQuality"]
      499 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      501 LOADK                            R8 K153 ["AssistantGrepSearchKeepEmptyLines"]
      502 CALL                             R7 1 1
      503 CALL                             R7 0 1
      504 SETTABLEKS                       R7 R4 K154 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      506 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      508 LOADK                            R8 K155 ["AssistantHideContent"]
      509 CALL                             R7 1 1
      510 CALL                             R7 0 1
      511 SETTABLEKS                       R7 R4 K156 ["FFlagAssistantHideContent"]
      513 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      515 LOADK                            R8 K157 ["AssistantAddPaddingToFillRow"]
      516 CALL                             R7 1 1
      517 CALL                             R7 0 1
      518 SETTABLEKS                       R7 R4 K158 ["FFlagAssistantAddPaddingToFillRow"]
      520 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      522 LOADK                            R8 K159 ["AssistantHidePinForBuild"]
      523 CALL                             R7 1 1
      524 CALL                             R7 0 1
      525 SETTABLEKS                       R7 R4 K160 ["FFlagAssistantHidePinForBuild"]
      527 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      529 LOADK                            R8 K161 ["AssistantHintMultiEditOverExecLuau"]
      530 CALL                             R7 1 1
      531 CALL                             R7 0 1
      532 SETTABLEKS                       R7 R4 K162 ["FFlagAssistantHintMultiEditOverExecLuau"]
      534 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      536 LOADK                            R8 K163 ["AssistantImageGenAbortPollOn4xx"]
      537 CALL                             R7 1 1
      538 CALL                             R7 0 1
      539 SETTABLEKS                       R7 R4 K164 ["FFlagAssistantImageGenAbortPollOn4xx"]
      541 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      543 LOADK                            R8 K165 ["AssistantImageGenImprovements"]
      544 CALL                             R7 1 1
      545 CALL                             R7 0 1
      546 SETTABLEKS                       R7 R4 K166 ["FFlagAssistantImageGenImprovements"]
      548 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      550 LOADK                            R8 K167 ["AssistantImageGenSeed"]
      551 CALL                             R7 1 1
      552 CALL                             R7 0 1
      553 SETTABLEKS                       R7 R4 K168 ["FFlagAssistantImageGenSeed"]
      555 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      557 LOADK                            R8 K169 ["AssistantImageSelectionWizardModeMeshGen"]
      558 CALL                             R7 1 1
      559 CALL                             R7 0 1
      560 SETTABLEKS                       R7 R4 K170 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      562 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      564 LOADK                            R8 K171 ["AssistantImageSelectionWizardModePrimitiveGen"]
      565 CALL                             R7 1 1
      566 CALL                             R7 0 1
      567 SETTABLEKS                       R7 R4 K172 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      569 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      571 LOADK                            R8 K173 ["AssistantImageSelectionWizardModeTextureGen"]
      572 CALL                             R7 1 1
      573 CALL                             R7 0 1
      574 SETTABLEKS                       R7 R4 K174 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      576 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      578 LOADK                            R8 K175 ["AssistantIncorrectAttachPrimGenImageToInput"]
      579 CALL                             R7 1 1
      580 CALL                             R7 0 1
      581 SETTABLEKS                       R7 R4 K176 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      583 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      585 LOADK                            R8 K177 ["AssistantInsertAssetSandboxProceduralModels"]
      586 CALL                             R7 1 1
      587 CALL                             R7 0 1
      588 SETTABLEKS                       R7 R4 K178 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      590 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      592 LOADK                            R8 K179 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      593 CALL                             R7 1 1
      594 CALL                             R7 0 1
      595 SETTABLEKS                       R7 R4 K180 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      597 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      599 LOADK                            R8 K181 ["AssistantInsertAssetSandboxScripts"]
      600 CALL                             R7 1 1
      601 CALL                             R7 0 1
      602 SETTABLEKS                       R7 R4 K182 ["FFlagAssistantInsertAssetSandboxScripts"]
      604 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      606 LOADK                            R8 K183 ["AssistantMarkdownStreaming"]
      607 CALL                             R7 1 1
      608 CALL                             R7 0 1
      609 SETTABLEKS                       R7 R4 K184 ["FFlagAssistantMarkdownStreaming"]
      611 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      613 LOADK                            R8 K185 ["AssistantMcpImageGenShortcut"]
      614 CALL                             R7 1 1
      615 CALL                             R7 0 1
      616 SETTABLEKS                       R7 R4 K186 ["FFlagAssistantMcpImageGenShortcut"]
      618 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      620 LOADK                            R8 K187 ["AssistantMcpListSkillsTool"]
      621 CALL                             R7 1 1
      622 CALL                             R7 0 1
      623 SETTABLEKS                       R7 R4 K188 ["FFlagAssistantMcpListSkillsTool"]
      625 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      627 LOADK                            R8 K189 ["MCPWebSocketRetryOnStartError"]
      628 CALL                             R7 1 1
      629 CALL                             R7 0 1
      630 JUMPIFNOT                        R7 ; [+5]
      631 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      633 LOADK                            R8 K190 ["AssistantMCPProxyAuthRejectedWarn"]
      634 CALL                             R7 1 1
      635 CALL                             R7 0 1
      636 SETTABLEKS                       R7 R4 K191 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      638 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      640 LOADK                            R9 K192 ["AssistantMCPVideoCapture"]
      641 CALL                             R8 1 1
      642 CALL                             R8 0 1
      643 AND                              R7 R8 R6
      644 SETTABLEKS                       R7 R4 K193 ["FFlagAssistantMCPVideoCapture"]
      646 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      648 LOADK                            R8 K194 ["AssistantMeshGenAutoExpandCollapse"]
      649 CALL                             R7 1 1
      650 CALL                             R7 0 1
      651 SETTABLEKS                       R7 R4 K195 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      653 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      655 LOADK                            R8 K196 ["AssistantMeshGenHintImage"]
      656 CALL                             R7 1 1
      657 CALL                             R7 0 1
      658 SETTABLEKS                       R7 R4 K197 ["FFlagAssistantMeshGenHintImage"]
      660 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      662 LOADK                            R8 K198 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      663 CALL                             R7 1 1
      664 CALL                             R7 0 1
      665 SETTABLEKS                       R7 R4 K199 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      667 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      669 LOADK                            R8 K200 ["AssistantMeshGenRemoveAdminOptions"]
      670 CALL                             R7 1 1
      671 CALL                             R7 0 1
      672 SETTABLEKS                       R7 R4 K201 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      674 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      676 LOADK                            R8 K202 ["AssistantMoveToolButtonsToTheRightAgain"]
      677 CALL                             R7 1 1
      678 CALL                             R7 0 1
      679 SETTABLEKS                       R7 R4 K203 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      681 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      683 LOADK                            R8 K204 ["AssistantMultiEditExternalClient"]
      684 CALL                             R7 1 1
      685 CALL                             R7 0 1
      686 SETTABLEKS                       R7 R4 K205 ["FFlagAssistantMultiEditExternalClient"]
      688 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      690 LOADK                            R8 K206 ["AssistantNumberRowPartialInput"]
      691 CALL                             R7 1 1
      692 CALL                             R7 0 1
      693 SETTABLEKS                       R7 R4 K207 ["FFlagAssistantNumberRowPartialInput"]
      695 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      697 LOADK                            R8 K208 ["AssistantOmitSlashToolCallDroppedFields"]
      698 CALL                             R7 1 1
      699 CALL                             R7 0 1
      700 SETTABLEKS                       R7 R4 K209 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      702 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      704 LOADK                            R8 K210 ["AssistantOpenCloudInvokeTool"]
      705 CALL                             R7 1 1
      706 CALL                             R7 0 1
      707 SETTABLEKS                       R7 R4 K211 ["FFlagAssistantOpenCloudInvokeTool"]
      709 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      711 LOADK                            R8 K212 ["AssistantPinForBuildUI"]
      712 CALL                             R7 1 1
      713 CALL                             R7 0 1
      714 SETTABLEKS                       R7 R4 K213 ["FFlagAssistantPinForBuildUI"]
      716 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      718 LOADK                            R8 K214 ["AssistantPlanRevisionList"]
      719 CALL                             R7 1 1
      720 CALL                             R7 0 1
      721 SETTABLEKS                       R7 R4 K215 ["FFlagAssistantPlanRevisionList"]
      723 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      725 LOADK                            R8 K216 ["AssistantPlaytestContext"]
      726 CALL                             R7 1 1
      727 CALL                             R7 0 1
      728 SETTABLEKS                       R7 R4 K217 ["FFlagAssistantPlaytestContext"]
      730 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      732 LOADK                            R8 K218 ["AssistantPlaytestKGEnabled"]
      733 CALL                             R7 1 1
      734 CALL                             R7 0 1
      735 SETTABLEKS                       R7 R4 K219 ["FFlagAssistantPlaytestKGEnabled"]
      737 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      739 LOADK                            R8 K220 ["AssistantPlaytestToolFix"]
      740 CALL                             R7 1 1
      741 CALL                             R7 0 1
      742 SETTABLEKS                       R7 R4 K221 ["FFlagAssistantPlaytestToolFix"]
      744 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      746 LOADK                            R8 K222 ["AssistantPromptHistoryFromConversation"]
      747 CALL                             R7 1 1
      748 CALL                             R7 0 1
      749 SETTABLEKS                       R7 R4 K223 ["FFlagAssistantPromptHistoryFromConversation"]
      751 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      753 LOADK                            R8 K224 ["AssistantPromptModeratedError"]
      754 CALL                             R7 1 1
      755 CALL                             R7 0 1
      756 SETTABLEKS                       R7 R4 K225 ["FFlagAssistantPromptModeratedError"]
      758 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      760 LOADK                            R8 K226 ["AssistantReadFileRejectRangeWithEntireFile"]
      761 CALL                             R7 1 1
      762 CALL                             R7 0 1
      763 SETTABLEKS                       R7 R4 K227 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
      765 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      767 LOADK                            R8 K228 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      768 CALL                             R7 1 1
      769 CALL                             R7 0 1
      770 SETTABLEKS                       R7 R4 K229 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      772 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      774 LOADK                            R8 K230 ["AssistantResolveHeading"]
      775 CALL                             R7 1 1
      776 CALL                             R7 0 1
      777 SETTABLEKS                       R7 R4 K231 ["FFlagAssistantResolveHeading"]
      779 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      781 LOADK                            R8 K232 ["AssistantRestoreCameraStateInExec"]
      782 CALL                             R7 1 1
      783 CALL                             R7 0 1
      784 SETTABLEKS                       R7 R4 K233 ["FFlagAssistantRestoreCameraStateInExec"]
      786 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      788 LOADK                            R8 K234 ["AssistantRestoreCameraStateInExecWarn"]
      789 CALL                             R7 1 1
      790 CALL                             R7 0 1
      791 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      793 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      795 LOADK                            R8 K236 ["AssistantRestoreMostRecentThread"]
      796 CALL                             R7 1 1
      797 CALL                             R7 0 1
      798 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantRestoreMostRecentThread"]
      800 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      802 LOADK                            R8 K238 ["AssistantScrollableAskInputForm"]
      803 CALL                             R7 1 1
      804 CALL                             R7 0 1
      805 SETTABLEKS                       R7 R4 K239 ["FFlagAssistantScrollableAskInputForm"]
      807 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      809 LOADK                            R8 K240 ["AssistantSegmentationBridge"]
      810 CALL                             R7 1 1
      811 CALL                             R7 0 1
      812 SETTABLEKS                       R7 R4 K241 ["FFlagAssistantSegmentationBridge"]
      814 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      816 LOADK                            R8 K242 ["AssistantSegmentationPromptModeSelector"]
      817 CALL                             R7 1 1
      818 CALL                             R7 0 1
      819 SETTABLEKS                       R7 R4 K243 ["FFlagAssistantSegmentationPromptModeSelector"]
      821 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      823 LOADK                            R8 K244 ["AssistantSegmentationUIFixes"]
      824 CALL                             R7 1 1
      825 CALL                             R7 0 1
      826 SETTABLEKS                       R7 R4 K245 ["FFlagAssistantSegmentationUIFixes"]
      828 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      830 LOADK                            R8 K246 ["AssistantSegmentMeshCleanupWorldWrapper"]
      831 CALL                             R7 1 1
      832 CALL                             R7 0 1
      833 SETTABLEKS                       R7 R4 K247 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      835 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      837 LOADK                            R8 K248 ["AssistantSegmentMeshTool"]
      838 CALL                             R7 1 1
      839 CALL                             R7 0 1
      840 SETTABLEKS                       R7 R4 K249 ["FFlagAssistantSegmentMeshTool"]
      842 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      844 LOADK                            R8 K250 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      845 CALL                             R7 1 1
      846 CALL                             R7 0 1
      847 SETTABLEKS                       R7 R4 K251 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
      849 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      851 LOADK                            R8 K252 ["AssistantSharedVector3Input"]
      852 CALL                             R7 1 1
      853 CALL                             R7 0 1
      854 SETTABLEKS                       R7 R4 K253 ["FFlagAssistantSharedVector3Input"]
      856 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      858 LOADK                            R8 K254 ["AssistantSkillToolNameReplace"]
      859 CALL                             R7 1 1
      860 CALL                             R7 0 1
      861 SETTABLEKS                       R7 R4 K255 ["FFlagAssistantSkillToolNameReplace"]
      863 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      865 LOADK                            R8 K256 ["AssistantSlashCommandStepBackNavigation"]
      866 CALL                             R7 1 1
      867 CALL                             R7 0 1
      868 SETTABLEKS                       R7 R4 K257 ["FFlagAssistantSlashCommandStepBackNavigation"]
      870 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      872 LOADK                            R8 K258 ["AssistantSlashToolNameAndError"]
      873 CALL                             R7 1 1
      874 CALL                             R7 0 1
      875 SETTABLEKS                       R7 R4 K259 ["FFlagAssistantSlashToolNameAndError"]
      877 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      879 LOADK                            R8 K260 ["AssistantStartStopPlayBusyCheck"]
      880 CALL                             R7 1 1
      881 CALL                             R7 0 1
      882 SETTABLEKS                       R7 R4 K261 ["FFlagAssistantStartStopPlayBusyCheck"]
      884 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      886 LOADK                            R8 K262 ["AssistantTestLLMPreserveThinking"]
      887 LOADB                            R9 1
      888 CALL                             R7 2 1
      889 CALL                             R7 0 1
      890 SETTABLEKS                       R7 R4 K263 ["FFlagAssistantTestLLMPreserveThinking"]
      892 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      894 LOADK                            R8 K264 ["AssistantTestLLMThinkingEnabled"]
      895 LOADB                            R9 1
      896 CALL                             R7 2 1
      897 CALL                             R7 0 1
      898 SETTABLEKS                       R7 R4 K265 ["FFlagAssistantTestLLMThinkingEnabled"]
      900 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      902 LOADK                            R8 K266 ["AssistantTextureGenAutoSelectView"]
      903 CALL                             R7 1 1
      904 CALL                             R7 0 1
      905 SETTABLEKS                       R7 R4 K267 ["FFlagAssistantTextureGenAutoSelectView"]
      907 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      909 LOADK                            R8 K268 ["AssistantTextureGenMcpQualityAutoView"]
      910 CALL                             R7 1 1
      911 CALL                             R7 0 1
      912 SETTABLEKS                       R7 R4 K269 ["FFlagAssistantTextureGenMcpQualityAutoView"]
      914 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      916 LOADK                            R8 K270 ["AssistantTextureGenModelSelection"]
      917 CALL                             R7 1 1
      918 CALL                             R7 0 1
      919 SETTABLEKS                       R7 R4 K271 ["FFlagAssistantTextureGenModelSelection"]
      921 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      923 LOADK                            R8 K272 ["AssistantTextureGenTool"]
      924 CALL                             R7 1 1
      925 CALL                             R7 0 1
      926 SETTABLEKS                       R7 R4 K273 ["FFlagAssistantTextureGenTool"]
      928 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      930 LOADK                            R8 K274 ["AssistantTextureGenUseSourceMeshCFrame"]
      931 CALL                             R7 1 1
      932 CALL                             R7 0 1
      933 SETTABLEKS                       R7 R4 K275 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
      935 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      937 LOADK                            R8 K276 ["AssistantToolSkillDescriptions"]
      938 CALL                             R7 1 1
      939 CALL                             R7 0 1
      940 SETTABLEKS                       R7 R4 K277 ["FFlagAssistantToolSkillDescriptions"]
      942 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      944 LOADK                            R8 K278 ["AssistantTruncatePrimGenHeader"]
      945 CALL                             R7 1 1
      946 CALL                             R7 0 1
      947 SETTABLEKS                       R7 R4 K279 ["FFlagAssistantTruncatePrimGenHeader"]
      949 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      951 LOADK                            R8 K280 ["AssistantUntitledChatPlaceholder"]
      952 CALL                             R7 1 1
      953 CALL                             R7 0 1
      954 SETTABLEKS                       R7 R4 K281 ["FFlagAssistantUntitledChatPlaceholder"]
      956 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      958 LOADK                            R8 K282 ["AssistantUseNewDMNetworking"]
      959 CALL                             R7 1 1
      960 CALL                             R7 0 1
      961 SETTABLEKS                       R7 R4 K283 ["FFlagAssistantUseNewDMNetworking"]
      963 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      965 LOADK                            R8 K284 ["AssistantUseNewTags"]
      966 CALL                             R7 1 1
      967 CALL                             R7 0 1
      968 SETTABLEKS                       R7 R4 K285 ["FFlagAssistantUseNewTags"]
      970 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      972 LOADK                            R8 K286 ["AssistantUseRemoteService2"]
      973 CALL                             R7 1 1
      974 CALL                             R7 0 1
      975 SETTABLEKS                       R7 R4 K287 ["FFlagAssistantUseRemoteService"]
      977 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      979 LOADK                            R8 K288 ["AssistantUseRemoteServiceExp"]
      980 CALL                             R7 1 1
      981 CALL                             R7 0 1
      982 SETTABLEKS                       R7 R4 K289 ["FFlagAssistantUseRemoteServiceExp"]
      984 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      986 LOADK                            R8 K290 ["AssistantUseVariantHttpTransport"]
      987 CALL                             R7 1 1
      988 CALL                             R7 0 1
      989 SETTABLEKS                       R7 R4 K291 ["FFlagAssistantUseVariantHttpTransport"]
      991 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      993 LOADK                            R8 K292 ["AssistantVersionMismatchWarning"]
      994 CALL                             R7 1 1
      995 CALL                             R7 0 1
      996 SETTABLEKS                       R7 R4 K293 ["FFlagAssistantVersionMismatchWarning"]
      998 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1000 LOADK                            R8 K294 ["AssistantVideoCaptureTool"]
     1001 CALL                             R7 1 1
     1002 CALL                             R7 0 1
     1003 SETTABLEKS                       R7 R4 K295 ["FFlagAssistantVideoCaptureTool"]
     1005 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1007 LOADK                            R9 K296 ["AssistantVirtualInputEnabled"]
     1008 CALL                             R8 1 1
     1009 CALL                             R8 0 1
     1010 AND                              R7 R8 R5
     1011 SETTABLEKS                       R7 R4 K297 ["FFlagAssistantVirtualInputEnabled"]
     1013 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1015 LOADK                            R8 K298 ["AvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1016 CALL                             R7 1 1
     1017 CALL                             R7 0 1
     1018 SETTABLEKS                       R7 R4 K299 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1020 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1022 LOADK                            R8 K300 ["AvatarPreviewerAvatarCreationDynamicHeadOff"]
     1023 CALL                             R7 1 1
     1024 CALL                             R7 0 1
     1025 SETTABLEKS                       R7 R4 K301 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
     1027 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1029 LOADK                            R8 K302 ["AvatarPreviewerAvatarCreationDynamicHeadOption"]
     1030 CALL                             R7 1 1
     1031 CALL                             R7 0 1
     1032 SETTABLEKS                       R7 R4 K303 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
     1034 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1036 LOADK                            R8 K304 ["AvatarPreviewerAvatarCreationR15PlusOn"]
     1037 CALL                             R7 1 1
     1038 CALL                             R7 0 1
     1039 SETTABLEKS                       R7 R4 K305 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
     1041 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1043 LOADK                            R8 K306 ["AvatarPreviewerAvatarCreationR15PlusOption"]
     1044 CALL                             R7 1 1
     1045 CALL                             R7 0 1
     1046 SETTABLEKS                       R7 R4 K307 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
     1048 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1050 LOADK                            R8 K308 ["DebugAssistantEval"]
     1051 CALL                             R7 1 1
     1052 CALL                             R7 0 1
     1053 SETTABLEKS                       R7 R4 K309 ["FFlagDebugAssistantEval"]
     1055 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1057 LOADK                            R8 K310 ["DebugAssistantMultiPlayerAgentsLog"]
     1058 CALL                             R7 1 1
     1059 CALL                             R7 0 1
     1060 SETTABLEKS                       R7 R4 K311 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
     1062 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1064 LOADK                            R8 K312 ["DebugEnableTestLLMAdapter"]
     1065 CALL                             R7 1 1
     1066 CALL                             R7 0 1
     1067 SETTABLEKS                       R7 R4 K313 ["FFlagDebugEnableTestLLMAdapter"]
     1069 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1071 LOADK                            R8 K314 ["DebugMockPrimitiveGenBackend"]
     1072 CALL                             R7 1 1
     1073 CALL                             R7 0 1
     1074 SETTABLEKS                       R7 R4 K315 ["FFlagDebugMockPrimitiveGenBackend"]
     1076 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1078 LOADK                            R8 K316 ["DisableMCPConnectionIndicator"]
     1079 CALL                             R7 1 1
     1080 CALL                             R7 0 1
     1081 SETTABLEKS                       R7 R4 K317 ["FFlagDisableMCPConnectionIndicator"]
     1083 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1085 LOADK                            R8 K318 ["FFlagDisableNavigationConfirmation"]
     1086 CALL                             R7 1 1
     1087 CALL                             R7 0 1
     1088 SETTABLEKS                       R7 R4 K318 ["FFlagDisableNavigationConfirmation"]
     1090 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1092 LOADK                            R8 K319 ["DisableNewSmartSize"]
     1093 CALL                             R7 1 1
     1094 CALL                             R7 0 1
     1095 SETTABLEKS                       R7 R4 K320 ["FFlagDisableNewSmartSize"]
     1097 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1099 LOADK                            R8 K321 ["DisableOldSmartSize"]
     1100 CALL                             R7 1 1
     1101 CALL                             R7 0 1
     1102 SETTABLEKS                       R7 R4 K322 ["FFlagDisableOldSmartSize"]
     1104 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1106 LOADK                            R8 K323 ["FFlagDisableStartStopPlayConfirmation"]
     1107 CALL                             R7 1 1
     1108 CALL                             R7 0 1
     1109 SETTABLEKS                       R7 R4 K323 ["FFlagDisableStartStopPlayConfirmation"]
     1111 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1113 LOADK                            R8 K324 ["FFlagDisableUserInputConfirmation"]
     1114 CALL                             R7 1 1
     1115 CALL                             R7 0 1
     1116 SETTABLEKS                       R7 R4 K324 ["FFlagDisableUserInputConfirmation"]
     1118 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1120 LOADK                            R8 K325 ["EnableAssistantImageUpload"]
     1121 CALL                             R7 1 1
     1122 CALL                             R7 0 1
     1123 SETTABLEKS                       R7 R4 K326 ["FFlagEnableAssistantImageUpload"]
     1125 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1127 LOADK                            R8 K327 ["EnablePlaytestSubagent"]
     1128 CALL                             R7 1 1
     1129 CALL                             R7 0 1
     1130 SETTABLEKS                       R7 R4 K328 ["FFlagEnablePlaytestSubagent"]
     1132 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1134 LOADK                            R8 K329 ["Gen3dSegmentationSelector"]
     1135 CALL                             R7 1 1
     1136 CALL                             R7 0 1
     1137 SETTABLEKS                       R7 R4 K330 ["FFlagGen3dSegmentationSelector"]
     1139 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1141 LOADK                            R8 K331 ["MarkdownTagFallbacks"]
     1142 CALL                             R7 1 1
     1143 CALL                             R7 0 1
     1144 SETTABLEKS                       R7 R4 K332 ["FFlagMarkdownTagFallbacks"]
     1146 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1148 LOADK                            R8 K333 ["MCPAssistantAzureOpenAI"]
     1149 CALL                             R7 1 1
     1150 CALL                             R7 0 1
     1151 SETTABLEKS                       R7 R4 K334 ["FFlagMCPAssistantAzureOpenAI"]
     1153 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1155 LOADK                            R8 K335 ["MCPAssistantManagementMenu5"]
     1156 CALL                             R7 1 1
     1157 CALL                             R7 0 1
     1158 SETTABLEKS                       R7 R4 K336 ["FFlagMCPAssistantManagementMenu"]
     1160 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1162 LOADK                            R8 K337 ["MCPAssistantOpenAIPreserveThinking"]
     1163 CALL                             R7 1 1
     1164 CALL                             R7 0 1
     1165 SETTABLEKS                       R7 R4 K338 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1167 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1169 LOADK                            R8 K339 ["MCPAssistantOpenAIThinkingEnabled"]
     1170 CALL                             R7 1 1
     1171 CALL                             R7 0 1
     1172 SETTABLEKS                       R7 R4 K340 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1174 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1176 LOADK                            R8 K341 ["MCPClientCountAsASetting"]
     1177 CALL                             R7 1 1
     1178 CALL                             R7 0 1
     1179 SETTABLEKS                       R7 R4 K342 ["FFlagMCPClientCountAsASetting"]
     1181 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1183 LOADK                            R8 K343 ["MCPConnectionIndicatorTooltip"]
     1184 CALL                             R7 1 1
     1185 CALL                             R7 0 1
     1186 SETTABLEKS                       R7 R4 K344 ["FFlagMCPConnectionIndicatorTooltip"]
     1188 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1190 LOADK                            R8 K345 ["MCPContentNormalization"]
     1191 CALL                             R7 1 1
     1192 CALL                             R7 0 1
     1193 SETTABLEKS                       R7 R4 K346 ["FFlagMCPContentNormalization"]
     1195 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1197 LOADK                            R8 K347 ["MCPEnableToolDisabling"]
     1198 CALL                             R7 1 1
     1199 CALL                             R7 0 1
     1200 SETTABLEKS                       R7 R4 K348 ["FFlagMCPEnableToolDisabling"]
     1202 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1204 LOADK                            R8 K349 ["PlaytestVision"]
     1205 CALL                             R7 1 1
     1206 CALL                             R7 0 1
     1207 SETTABLEKS                       R7 R4 K350 ["FFlagPlaytestVision"]
     1209 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1211 LOADK                            R8 K351 ["PrimGenBetterErrorType"]
     1212 CALL                             R7 1 1
     1213 CALL                             R7 0 1
     1214 SETTABLEKS                       R7 R4 K352 ["FFlagPrimGenBetterErrorType"]
     1216 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1218 LOADK                            R8 K353 ["PrimGenImageGenPromptTemplateEnabled"]
     1219 CALL                             R7 1 1
     1220 CALL                             R7 0 1
     1221 SETTABLEKS                       R7 R4 K354 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1223 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1225 LOADK                            R8 K355 ["PrimGenSchemaSelector"]
     1226 CALL                             R7 1 1
     1227 CALL                             R7 0 1
     1228 SETTABLEKS                       R7 R4 K356 ["FFlagPrimGenSchemaSelector"]
     1230 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1232 LOADK                            R8 K357 ["PrimGenVerboseDmIsUnReachableMsg"]
     1233 CALL                             R7 1 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R4 K358 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1237 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1239 LOADK                            R8 K359 ["PrimGenVersionMismatchError"]
     1240 CALL                             R7 1 1
     1241 CALL                             R7 0 1
     1242 SETTABLEKS                       R7 R4 K360 ["FFlagPrimGenVersionMismatchError"]
     1244 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1246 LOADK                            R8 K361 ["PropertiesExposeContentView"]
     1247 CALL                             R7 1 1
     1248 CALL                             R7 0 1
     1249 SETTABLEKS                       R7 R4 K362 ["FFlagPropertiesExposeContentView"]
     1251 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1253 LOADK                            R8 K363 ["ScreenCaptureCamera"]
     1254 CALL                             R7 1 1
     1255 CALL                             R7 0 1
     1256 SETTABLEKS                       R7 R4 K364 ["FFlagScreenCaptureCamera"]
     1258 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1260 LOADK                            R8 K365 ["ScriptDebuggerServiceEnabled2"]
     1261 CALL                             R7 1 1
     1262 CALL                             R7 0 1
     1263 SETTABLEKS                       R7 R4 K366 ["FFlagScriptDebuggerServiceEnabled"]
     1265 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1267 LOADK                            R8 K367 ["SubagentScriptEditAutoConfirmation"]
     1268 CALL                             R7 1 1
     1269 CALL                             R7 0 1
     1270 SETTABLEKS                       R7 R4 K368 ["FFlagSubagentScriptEditAutoConfirmation"]
     1272 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1274 LOADK                            R8 K369 ["UseStudioSideListTool"]
     1275 CALL                             R7 1 1
     1276 CALL                             R7 0 1
     1277 SETTABLEKS                       R7 R4 K370 ["FFlagUseStudioSideListTool"]
     1279 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1281 LOADK                            R8 K372 ["AmrAssetDependencyGrantEventTimeout"]
     1282 LOADN                            R9 40
     1283 CALL                             R7 2 1
     1284 CALL                             R7 0 1
     1285 SETTABLEKS                       R7 R4 K373 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1287 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1289 LOADK                            R8 K374 ["AssistantAnimationGenLocalBendMaxFlexDegrees"]
     1290 LOADN                            R9 120
     1291 CALL                             R7 2 1
     1292 CALL                             R7 0 1
     1293 SETTABLEKS                       R7 R4 K375 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
     1295 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1297 LOADK                            R8 K376 ["AssistantAnimationGenPluginMinDurationSeconds"]
     1298 LOADN                            R9 1
     1299 CALL                             R7 2 1
     1300 CALL                             R7 0 1
     1301 SETTABLEKS                       R7 R4 K377 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
     1303 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1305 LOADK                            R8 K378 ["AssistantAnimationGenPluginMaxDurationSeconds"]
     1306 LOADN                            R9 30
     1307 CALL                             R7 2 1
     1308 CALL                             R7 0 1
     1309 SETTABLEKS                       R7 R4 K379 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
     1311 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1313 LOADK                            R8 K380 ["AssistantAutoSaveInterval"]
     1314 LOADN                            R9 60
     1315 CALL                             R7 2 1
     1316 CALL                             R7 0 1
     1317 SETTABLEKS                       R7 R4 K381 ["FIntAssistantAutoSaveInterval"]
     1319 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1321 LOADK                            R8 K382 ["AssistantCapturePluginGuiDelayFrames"]
     1322 LOADN                            R9 10
     1323 CALL                             R7 2 1
     1324 CALL                             R7 0 1
     1325 SETTABLEKS                       R7 R4 K383 ["FIntAssistantCapturePluginGuiDelayFrames"]
     1327 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1329 LOADK                            R8 K384 ["AssistantDebugToolMaxOutput"]
     1330 LOADN                            R9 20000
     1331 CALL                             R7 2 1
     1332 CALL                             R7 0 1
     1333 SETTABLEKS                       R7 R4 K385 ["FIntAssistantDebugToolMaxOutput"]
     1335 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1337 LOADK                            R8 K386 ["AssistantJobWaitDefaultTimeout"]
     1338 LOADN                            R9 600
     1339 CALL                             R7 2 1
     1340 CALL                             R7 0 1
     1341 SETTABLEKS                       R7 R4 K387 ["FIntAssistantJobWaitDefaultTimeout"]
     1343 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1345 LOADK                            R8 K388 ["AssistantMaxDisplayTextChars"]
     1346 LOADK                            R9 K389 [100000]
     1347 CALL                             R7 2 1
     1348 CALL                             R7 0 1
     1349 SETTABLEKS                       R7 R4 K390 ["FIntAssistantMaxDisplayTextChars"]
     1351 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1353 LOADK                            R8 K391 ["AssistantMaxToolInputStringLen"]
     1354 LOADN                            R9 2000
     1355 CALL                             R7 2 1
     1356 CALL                             R7 0 1
     1357 SETTABLEKS                       R7 R4 K392 ["FIntAssistantMaxToolInputStringLen"]
     1359 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1361 LOADK                            R8 K393 ["AssistantMeshGenMaxTrianglesDefault"]
     1362 LOADN                            R9 10000
     1363 CALL                             R7 2 1
     1364 CALL                             R7 0 1
     1365 SETTABLEKS                       R7 R4 K394 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1367 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1369 LOADK                            R8 K395 ["AssistantMinPopoverHeight"]
     1370 LOADN                            R9 150
     1371 CALL                             R7 2 1
     1372 CALL                             R7 0 1
     1373 SETTABLEKS                       R7 R4 K396 ["FIntAssistantMinPopoverHeight"]
     1375 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1377 LOADK                            R8 K397 ["AssistantOpenCloudInvokeMaxFileSize"]
     1378 LOADK                            R9 K398 [20971520]
     1379 CALL                             R7 2 1
     1380 CALL                             R7 0 1
     1381 SETTABLEKS                       R7 R4 K399 ["FIntAssistantOpenCloudInvokeMaxFileSize"]
     1383 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1385 LOADK                            R8 K400 ["AssistantPersistenceMessageLoadLimit"]
     1386 LOADN                            R9 5
     1387 CALL                             R7 2 1
     1388 CALL                             R7 0 1
     1389 SETTABLEKS                       R7 R4 K401 ["FIntAssistantPersistenceMessageLoadLimit"]
     1391 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1393 LOADK                            R8 K402 ["AssistantPersistenceThreadLoadLimit"]
     1394 LOADN                            R9 5
     1395 CALL                             R7 2 1
     1396 CALL                             R7 0 1
     1397 SETTABLEKS                       R7 R4 K403 ["FIntAssistantPersistenceThreadLoadLimit"]
     1399 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1401 LOADK                            R8 K404 ["AssistantPostTurnRefreshDelaySeconds"]
     1402 LOADN                            R9 2
     1403 CALL                             R7 2 1
     1404 CALL                             R7 0 1
     1405 SETTABLEKS                       R7 R4 K405 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1407 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1409 LOADK                            R8 K406 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1410 LOADN                            R9 999
     1411 CALL                             R7 2 1
     1412 CALL                             R7 0 1
     1413 SETTABLEKS                       R7 R4 K407 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1415 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1417 LOADK                            R8 K408 ["AssistantPrimitiveGenPollIntervalMs"]
     1418 LOADN                            R9 2000
     1419 CALL                             R7 2 1
     1420 CALL                             R7 0 1
     1421 SETTABLEKS                       R7 R4 K409 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1423 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1425 LOADK                            R8 K410 ["AssistantProcessEventTimeoutMS"]
     1426 LOADK                            R9 K411 [60000]
     1427 CALL                             R7 2 1
     1428 CALL                             R7 0 1
     1429 SETTABLEKS                       R7 R4 K412 ["FIntAssistantProcessEventTimeoutMS"]
     1431 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1433 LOADK                            R8 K413 ["AssistantSegmentMeshMaxUserParts"]
     1434 LOADN                            R9 16
     1435 CALL                             R7 2 1
     1436 CALL                             R7 0 1
     1437 SETTABLEKS                       R7 R4 K414 ["FIntAssistantSegmentMeshMaxUserParts"]
     1439 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1441 LOADK                            R8 K415 ["ConvAIMaxHistoryCount"]
     1442 LOADN                            R9 6
     1443 CALL                             R7 2 1
     1444 CALL                             R7 0 1
     1445 SETTABLEKS                       R7 R4 K416 ["FIntConvAIMaxHistoryCount"]
     1447 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1449 LOADK                            R8 K417 ["ExecuteLuauMaxJsonLength"]
     1450 LOADK                            R9 K389 [100000]
     1451 CALL                             R7 2 1
     1452 CALL                             R7 0 1
     1453 SETTABLEKS                       R7 R4 K418 ["FIntExecuteLuauMaxJsonLength"]
     1455 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1457 LOADK                            R8 K419 ["ExecuteLuauMaxStringLength"]
     1458 LOADK                            R9 K389 [100000]
     1459 CALL                             R7 2 1
     1460 CALL                             R7 0 1
     1461 SETTABLEKS                       R7 R4 K420 ["FIntExecuteLuauMaxStringLength"]
     1463 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1465 LOADK                            R8 K421 ["FromHistoryMaxResultChars"]
     1466 LOADK                            R9 K422 [200000]
     1467 CALL                             R7 2 1
     1468 CALL                             R7 0 1
     1469 SETTABLEKS                       R7 R4 K423 ["FIntFromHistoryMaxResultChars"]
     1471 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1473 LOADK                            R8 K424 ["GameTreeDefaultHeadLimit"]
     1474 LOADN                            R9 200
     1475 CALL                             R7 2 1
     1476 CALL                             R7 0 1
     1477 SETTABLEKS                       R7 R4 K425 ["FIntGameTreeDefaultHeadLimit"]
     1479 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1481 LOADK                            R8 K426 ["GameTreeDefaultMaxDepth"]
     1482 LOADN                            R9 3
     1483 CALL                             R7 2 1
     1484 CALL                             R7 0 1
     1485 SETTABLEKS                       R7 R4 K427 ["FIntGameTreeDefaultMaxDepth"]
     1487 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1489 LOADK                            R8 K428 ["GameTreeMaxAbsoluteDepth"]
     1490 LOADN                            R9 10
     1491 CALL                             R7 2 1
     1492 CALL                             R7 0 1
     1493 SETTABLEKS                       R7 R4 K429 ["FIntGameTreeMaxAbsoluteDepth"]
     1495 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1497 LOADK                            R8 K430 ["GameTreeYieldCheckInterval"]
     1498 LOADN                            R9 100
     1499 CALL                             R7 2 1
     1500 CALL                             R7 0 1
     1501 SETTABLEKS                       R7 R4 K431 ["FIntGameTreeYieldCheckInterval"]
     1503 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1505 LOADK                            R8 K432 ["GameTreeYieldFps"]
     1506 LOADN                            R9 60
     1507 CALL                             R7 2 1
     1508 CALL                             R7 0 1
     1509 SETTABLEKS                       R7 R4 K433 ["FIntGameTreeYieldFps"]
     1511 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1513 LOADK                            R8 K434 ["InspectInstanceMaxJsonLength"]
     1514 LOADN                            R9 500
     1515 CALL                             R7 2 1
     1516 CALL                             R7 0 1
     1517 SETTABLEKS                       R7 R4 K435 ["FIntInspectInstanceMaxJsonLength"]
     1519 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1521 LOADK                            R8 K436 ["InspectInstanceMaxMatches"]
     1522 LOADN                            R9 20
     1523 CALL                             R7 2 1
     1524 CALL                             R7 0 1
     1525 SETTABLEKS                       R7 R4 K437 ["FIntInspectInstanceMaxMatches"]
     1527 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1529 LOADK                            R8 K438 ["InspectInstanceMaxStringLength"]
     1530 LOADN                            R9 1000
     1531 CALL                             R7 2 1
     1532 CALL                             R7 0 1
     1533 SETTABLEKS                       R7 R4 K439 ["FIntInspectInstanceMaxStringLength"]
     1535 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1537 LOADK                            R8 K440 ["MCPAssistantGenerationIndicatorWarningTime"]
     1538 LOADN                            R9 10
     1539 CALL                             R7 2 1
     1540 CALL                             R7 0 1
     1541 SETTABLEKS                       R7 R4 K441 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1543 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1545 LOADK                            R8 K442 ["MCPAssistantInputAreaCharLimit"]
     1546 LOADN                            R9 4000
     1547 CALL                             R7 2 1
     1548 CALL                             R7 0 1
     1549 SETTABLEKS                       R7 R4 K443 ["FIntMCPAssistantInputAreaCharLimit"]
     1551 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1553 LOADK                            R8 K444 ["MCPAssistantMaxPromptHistory"]
     1554 LOADN                            R9 20
     1555 CALL                             R7 2 1
     1556 CALL                             R7 0 1
     1557 SETTABLEKS                       R7 R4 K445 ["FIntMCPAssistantMaxPromptHistory"]
     1559 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1561 LOADK                            R8 K446 ["MCPAssistantMaxToolCalls"]
     1562 LOADN                            R9 20
     1563 CALL                             R7 2 1
     1564 CALL                             R7 0 1
     1565 SETTABLEKS                       R7 R4 K447 ["FIntMCPAssistantMaxToolCalls"]
     1567 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1569 LOADK                            R8 K448 ["MinimumAssistantFreeTrialRemaining"]
     1570 LOADN                            R9 1
     1571 CALL                             R7 2 1
     1572 CALL                             R7 0 1
     1573 SETTABLEKS                       R7 R4 K449 ["FIntMinimumAssistantFreeTrialRemaining"]
     1575 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1577 LOADK                            R8 K450 ["MinimumAssistantRobuxBalance"]
     1578 LOADN                            R9 100
     1579 CALL                             R7 2 1
     1580 CALL                             R7 0 1
     1581 SETTABLEKS                       R7 R4 K451 ["FIntMinimumAssistantRobuxBalance"]
     1583 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1585 LOADK                            R8 K452 ["PlaytestLookBudget"]
     1586 LOADN                            R9 7
     1587 CALL                             R7 2 1
     1588 CALL                             R7 0 1
     1589 SETTABLEKS                       R7 R4 K453 ["FIntPlaytestLookBudget"]
     1591 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1593 LOADK                            R8 K454 ["PlaytestLookTimeoutMs"]
     1594 LOADK                            R9 K411 [60000]
     1595 CALL                             R7 2 1
     1596 CALL                             R7 0 1
     1597 SETTABLEKS                       R7 R4 K455 ["FIntPlaytestLookTimeoutMs"]
     1599 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1601 LOADK                            R8 K456 ["PlaytestMaxToolCalls"]
     1602 LOADN                            R9 50
     1603 CALL                             R7 2 1
     1604 CALL                             R7 0 1
     1605 SETTABLEKS                       R7 R4 K457 ["FIntPlaytestMaxToolCalls"]
     1607 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1609 LOADK                            R8 K458 ["PrimGenLongRunThresholdSec"]
     1610 LOADN                            R9 120
     1611 CALL                             R7 2 1
     1612 CALL                             R7 0 1
     1613 SETTABLEKS                       R7 R4 K459 ["FIntPrimGenLongRunThresholdSec"]
     1615 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1617 LOADK                            R8 K460 ["PrimGenTextMaxLength"]
     1618 LOADN                            R9 80
     1619 CALL                             R7 2 1
     1620 CALL                             R7 0 1
     1621 SETTABLEKS                       R7 R4 K461 ["FIntPrimGenTextMaxLength"]
     1623 GETTABLEKS                       R7 R3 K371 ["createGetFInt"]
     1625 LOADK                            R8 K462 ["UnitTestSubagentMaxToolCalls"]
     1626 LOADN                            R9 100
     1627 CALL                             R7 2 1
     1628 CALL                             R7 0 1
     1629 SETTABLEKS                       R7 R4 K463 ["FIntUnitTestSubagentMaxToolCalls"]
     1631 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1633 LOADK                            R8 K465 ["AssistantDebugCreditMeteringBlockReason"]
     1634 LOADK                            R9 K466 [""]
     1635 CALL                             R7 2 1
     1636 CALL                             R7 0 1
     1637 SETTABLEKS                       R7 R4 K467 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1639 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1641 LOADK                            R8 K468 ["AssistantDisabledSubagents"]
     1642 LOADK                            R9 K466 [""]
     1643 CALL                             R7 2 1
     1644 CALL                             R7 0 1
     1645 SETTABLEKS                       R7 R4 K469 ["FStringAssistantDisabledSubagents"]
     1647 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1649 LOADK                            R8 K470 ["AssistantGen3dDefaultModel"]
     1650 LOADK                            R9 K471 ["Assistant/glm51-h200"]
     1651 CALL                             R7 2 1
     1652 CALL                             R7 0 1
     1653 SETTABLEKS                       R7 R4 K472 ["FStringAssistantGen3dDefaultModel"]
     1655 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1657 LOADK                            R8 K473 ["AssistantJobRunTools"]
     1658 LOADK                            R9 K474 ["generate_procedural_model,generate_mesh,generate_material,generate_avatar,generate_scene"]
     1659 CALL                             R7 2 1
     1660 CALL                             R7 0 1
     1661 SETTABLEKS                       R7 R4 K475 ["FStringAssistantJobRunTools"]
     1663 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1665 LOADK                            R8 K476 ["AssistantMeshGenImageGenModelOverride"]
     1666 LOADK                            R9 K477 ["gemini"]
     1667 CALL                             R7 2 1
     1668 CALL                             R7 0 1
     1669 SETTABLEKS                       R7 R4 K478 ["FStringAssistantMeshGenImageGenModelOverride"]
     1671 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1673 LOADK                            R8 K479 ["AssistantMeshGenImageGenPromptTemplate"]
     1674 LOADK                            R9 K466 [""]
     1675 CALL                             R7 2 1
     1676 CALL                             R7 0 1
     1677 SETTABLEKS                       R7 R4 K480 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1679 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1681 LOADK                            R8 K481 ["AssistantMeshGenInferenceServiceOverride"]
     1682 LOADK                            R9 K482 ["stage-diff-mesh-gen"]
     1683 CALL                             R7 2 1
     1684 CALL                             R7 0 1
     1685 SETTABLEKS                       R7 R4 K483 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1687 GETIMPORT                        R7 K5 [require]
     1689 GETTABLEKS                       R8 R0 K484 ["FlagUtils"]
     1691 GETTABLEKS                       R8 R8 K485 ["createGetFStringAssistantMeshGenSchemaData"]
     1693 CALL                             R7 1 1
     1694 CALL                             R7 0 1
     1695 SETTABLEKS                       R7 R4 K486 ["FStringAssistantMeshGenSchemaData"]
     1697 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1699 LOADK                            R8 K487 ["AssistantModerateErrorMsg"]
     1700 LOADK                            R9 K488 ["prompt violates Roblox safety policy"]
     1701 CALL                             R7 2 1
     1702 CALL                             R7 0 1
     1703 SETTABLEKS                       R7 R4 K489 ["FStringAssistantModerateErrorMsg"]
     1705 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1707 LOADK                            R8 K490 ["AssistantSkillsAllowlist"]
     1708 LOADK                            R9 K491 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false, import-asset: true"]
     1709 CALL                             R7 2 1
     1710 CALL                             R7 0 1
     1711 SETTABLEKS                       R7 R4 K492 ["FStringAssistantSkillsAllowlist"]
     1713 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1715 LOADK                            R8 K493 ["AssistantTestLLMReasoningEffort"]
     1716 LOADK                            R9 K494 ["high"]
     1717 CALL                             R7 2 1
     1718 CALL                             R7 0 1
     1719 SETTABLEKS                       R7 R4 K495 ["FStringAssistantTestLLMReasoningEffort"]
     1721 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1723 LOADK                            R8 K496 ["AssistantToolsExcludedDirectories"]
     1724 LOADK                            R9 K497 ["CoreGui,PlayerGui,LoadedCode"]
     1725 CALL                             R7 2 1
     1726 CALL                             R7 0 1
     1727 SETTABLEKS                       R7 R4 K498 ["FStringAssistantToolsExcludedDirectories"]
     1729 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1731 LOADK                            R8 K499 ["AssistantToolWidgetMappings"]
     1732 LOADK                            R9 K466 [""]
     1733 CALL                             R7 2 1
     1734 CALL                             R7 0 1
     1735 SETTABLEKS                       R7 R4 K500 ["FStringAssistantToolWidgetMappings"]
     1737 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1739 LOADK                            R8 K501 ["AssistantUnitTestSubagentModel"]
     1740 LOADK                            R9 K502 ["Assistant/glm5"]
     1741 CALL                             R7 2 1
     1742 CALL                             R7 0 1
     1743 SETTABLEKS                       R7 R4 K503 ["FStringAssistantUnitTestSubagentModel"]
     1745 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1747 LOADK                            R8 K504 ["AssistantUntitledChatPlaceholderText"]
     1748 LOADK                            R9 K505 ["Untitled Chat"]
     1749 CALL                             R7 2 1
     1750 CALL                             R7 0 1
     1751 SETTABLEKS                       R7 R4 K506 ["FStringAssistantUntitledChatPlaceholder"]
     1753 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1755 LOADK                            R8 K507 ["MCPAssistantAnthropicModels"]
     1756 LOADK                            R9 K508 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1757 CALL                             R7 2 1
     1758 CALL                             R7 0 1
     1759 SETTABLEKS                       R7 R4 K509 ["FStringMCPAssistantAnthropicModels"]
     1761 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1763 LOADK                            R8 K510 ["MCPAssistantClaudeAPIKey"]
     1764 LOADK                            R9 K466 [""]
     1765 CALL                             R7 2 1
     1766 CALL                             R7 0 1
     1767 SETTABLEKS                       R7 R4 K511 ["FStringMCPAssistantClaudeAPIKey"]
     1769 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1771 LOADK                            R8 K512 ["MCPAssistantCustomModelName"]
     1772 LOADK                            R9 K466 [""]
     1773 CALL                             R7 2 1
     1774 CALL                             R7 0 1
     1775 SETTABLEKS                       R7 R4 K513 ["FStringMCPAssistantCustomModelName"]
     1777 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1779 LOADK                            R8 K514 ["MCPAssistantGeminiAPIKey"]
     1780 LOADK                            R9 K466 [""]
     1781 CALL                             R7 2 1
     1782 CALL                             R7 0 1
     1783 SETTABLEKS                       R7 R4 K515 ["FStringMCPAssistantGeminiAPIKey"]
     1785 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1787 LOADK                            R8 K516 ["MCPAssistantGeminiModels"]
     1788 LOADK                            R9 K517 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1789 CALL                             R7 2 1
     1790 CALL                             R7 0 1
     1791 SETTABLEKS                       R7 R4 K518 ["FStringMCPAssistantGeminiModels"]
     1793 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1795 LOADK                            R8 K519 ["MCPAssistantOpenAIAPIKey"]
     1796 LOADK                            R9 K466 [""]
     1797 CALL                             R7 2 1
     1798 CALL                             R7 0 1
     1799 SETTABLEKS                       R7 R4 K520 ["FStringMCPAssistantOpenAIAPIKey"]
     1801 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1803 LOADK                            R8 K521 ["MCPAssistantOpenAIModels"]
     1804 LOADK                            R9 K522 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1805 CALL                             R7 2 1
     1806 CALL                             R7 0 1
     1807 SETTABLEKS                       R7 R4 K523 ["FStringMCPAssistantOpenAIModels"]
     1809 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1811 LOADK                            R8 K524 ["MCPAssistantOpenAIReasoningEffort"]
     1812 LOADK                            R9 K466 [""]
     1813 CALL                             R7 2 1
     1814 CALL                             R7 0 1
     1815 SETTABLEKS                       R7 R4 K525 ["FStringMCPAssistantOpenAIReasoningEffort"]
     1817 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1819 LOADK                            R8 K526 ["MCPAssistantPrimitiveGenServerURL"]
     1820 LOADK                            R9 K466 [""]
     1821 CALL                             R7 2 1
     1822 CALL                             R7 0 1
     1823 SETTABLEKS                       R7 R4 K527 ["FStringMCPAssistantPrimitiveGenServerURL"]
     1825 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1827 LOADK                            R8 K528 ["MCPAssistantTestLLMAPIKey"]
     1828 LOADK                            R9 K466 [""]
     1829 CALL                             R7 2 1
     1830 CALL                             R7 0 1
     1831 SETTABLEKS                       R7 R4 K529 ["FStringMCPAssistantTestLLMAPIKey"]
     1833 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1835 LOADK                            R8 K530 ["MCPAssistantURLOverride"]
     1836 LOADK                            R9 K466 [""]
     1837 CALL                             R7 2 1
     1838 CALL                             R7 0 1
     1839 SETTABLEKS                       R7 R4 K531 ["FStringMCPAssistantURLOverride"]
     1841 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1843 LOADK                            R8 K532 ["MCPDocsUrl"]
     1844 LOADK                            R9 K533 ["https://create.roblox.com/docs/studio/mcp/"]
     1845 CALL                             R7 2 1
     1846 CALL                             R7 0 1
     1847 SETTABLEKS                       R7 R4 K534 ["FStringMCPDocsUrl"]
     1849 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1851 LOADK                            R8 K535 ["PlaytestConversationURL"]
     1852 LOADK                            R9 K536 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     1853 CALL                             R7 2 1
     1854 CALL                             R7 0 1
     1855 SETTABLEKS                       R7 R4 K537 ["FStringPlaytestConversationURL"]
     1857 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1859 LOADK                            R8 K538 ["PlaytestModelName"]
     1860 LOADK                            R9 K539 ["Qwen/Qwen35-35B-A3B"]
     1861 CALL                             R7 2 1
     1862 CALL                             R7 0 1
     1863 SETTABLEKS                       R7 R4 K540 ["FStringPlaytestModelName"]
     1865 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1867 LOADK                            R8 K541 ["PrimGenImageGenPromptTemplate"]
     1868 LOADK                            R9 K466 [""]
     1869 CALL                             R7 2 1
     1870 CALL                             R7 0 1
     1871 SETTABLEKS                       R7 R4 K542 ["FStringPrimGenImageGenPromptTemplate"]
     1873 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1875 LOADK                            R8 K543 ["ProceduralScriptCapabilities"]
     1876 LOADK                            R9 K544 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     1877 CALL                             R7 2 1
     1878 CALL                             R7 0 1
     1879 SETTABLEKS                       R7 R4 K545 ["FStringProceduralScriptCapabilities"]
     1881 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1883 LOADK                            R8 K546 ["ScreenCaptureFormat"]
     1884 LOADK                            R9 K466 [""]
     1885 CALL                             R7 2 1
     1886 CALL                             R7 0 1
     1887 SETTABLEKS                       R7 R4 K547 ["FStringScreenCaptureFormat"]
     1889 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1891 LOADK                            R8 K548 ["ScreenCaptureSize"]
     1892 LOADK                            R9 K466 [""]
     1893 CALL                             R7 2 1
     1894 CALL                             R7 0 1
     1895 SETTABLEKS                       R7 R4 K549 ["FStringScreenCaptureSize"]
     1897 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1899 LOADK                            R8 K550 ["ScreenCaptureSubagentModelName"]
     1900 LOADK                            R9 K466 [""]
     1901 CALL                             R7 2 1
     1902 CALL                             R7 0 1
     1903 SETTABLEKS                       R7 R4 K551 ["FStringScreenCaptureSubagentModelName"]
     1905 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1907 LOADK                            R8 K552 ["SegmentByPartsBetaFeatureUrl"]
     1908 LOADK                            R9 K466 [""]
     1909 CALL                             R7 2 1
     1910 CALL                             R7 0 1
     1911 SETTABLEKS                       R7 R4 K553 ["FStringSegmentByPartsBetaFeatureUrl"]
     1913 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1915 LOADK                            R8 K554 ["SubagentExploreModelName"]
     1916 LOADK                            R9 K555 ["Assistant/glm5-b200-server-1"]
     1917 CALL                             R7 2 1
     1918 CALL                             R7 0 1
     1919 SETTABLEKS                       R7 R4 K556 ["FStringSubagentExploreModelName"]
     1921 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1923 LOADK                            R8 K557 ["SubagentURLOverride"]
     1924 LOADK                            R9 K466 [""]
     1925 CALL                             R7 2 1
     1926 CALL                             R7 0 1
     1927 SETTABLEKS                       R7 R4 K558 ["FStringSubagentURLOverride"]
     1929 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1931 LOADK                            R8 K559 ["TestLLMURLOverride"]
     1932 LOADK                            R9 K466 [""]
     1933 CALL                             R7 2 1
     1934 CALL                             R7 0 1
     1935 SETTABLEKS                       R7 R4 K560 ["FStringTestLLMURLOverride"]
     1937 GETTABLEKS                       R7 R3 K464 ["createGetFString"]
     1939 LOADK                            R8 K561 ["TestSubagentURLOverride"]
     1940 LOADK                            R9 K466 [""]
     1941 CALL                             R7 2 1
     1942 CALL                             R7 0 1
     1943 SETTABLEKS                       R7 R4 K562 ["FStringTestSubagentURLOverride"]
     1945 DUPTABLE                         R9 K564 [{"__index", "__newindex"}]
     1946 SETTABLEKS                       R2 R9 K563 ["__index"]
     1948 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     1950 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     1952 MOVE                             R8 R4
     1953 GETIMPORT                        R7 K15 [setmetatable]
     1955 CALL                             R7 2 1
     1956 RETURN                           R7 1
