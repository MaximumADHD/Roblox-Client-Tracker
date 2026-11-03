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
       59 LOADK                            R8 K27 ["AssistantEnableAnimationGeneration"]
       60 CALL                             R7 1 1
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R4 K28 ["EngineFeatureAssistantEnableAnimationGeneration"]
       64 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       66 LOADK                            R8 K29 ["AssistantExecuteLuauArguments"]
       67 CALL                             R7 1 1
       68 CALL                             R7 0 1
       69 SETTABLEKS                       R7 R4 K30 ["EngineFeatureAssistantExecuteLuauArguments"]
       71 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       73 LOADK                            R8 K31 ["AssistantGen3dImagePreview"]
       74 CALL                             R7 1 1
       75 CALL                             R7 0 1
       76 SETTABLEKS                       R7 R4 K32 ["EngineFeatureAssistantGen3dImagePreview"]
       78 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       80 LOADK                            R8 K33 ["AssistantMCPProxyTokenEnabled"]
       81 CALL                             R7 1 1
       82 CALL                             R7 0 1
       83 SETTABLEKS                       R7 R4 K34 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       85 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       87 LOADK                            R8 K35 ["StudioAssistantMcpOriginated"]
       88 CALL                             R7 1 1
       89 CALL                             R7 0 1
       90 SETTABLEKS                       R7 R4 K36 ["EngineFeatureStudioAssistantMcpOriginated"]
       92 GETTABLEKS                       R7 R3 K24 ["createGetEngineFeature"]
       94 LOADK                            R8 K37 ["StudioPanelsResolveFullPluginGuiId"]
       95 CALL                             R7 1 1
       96 CALL                             R7 0 1
       97 SETTABLEKS                       R7 R4 K38 ["EngineFeatureStudioPanelsResolveFullPluginGuiId"]
       99 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      101 LOADK                            R8 K39 ["AllowThreadSuspendOverride"]
      102 CALL                             R7 1 1
      103 CALL                             R7 0 1
      104 SETTABLEKS                       R7 R4 K40 ["FFlagAllowThreadSuspendOverride"]
      106 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      108 LOADK                            R8 K41 ["AnimationGenOpenACE2"]
      109 CALL                             R7 1 1
      110 CALL                             R7 0 1
      111 SETTABLEKS                       R7 R4 K42 ["FFlagAnimationGenOpenACE"]
      113 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      115 LOADK                            R8 K43 ["AssistantACPBatchHistoryReplay"]
      116 CALL                             R7 1 1
      117 CALL                             R7 0 1
      118 SETTABLEKS                       R7 R4 K44 ["FFlagAssistantACPBatchHistoryReplay"]
      120 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      122 LOADK                            R8 K45 ["AssistantACPFixPendingToolCall2"]
      123 CALL                             R7 1 1
      124 CALL                             R7 0 1
      125 SETTABLEKS                       R7 R4 K46 ["FFlagAssistantACPFixPendingToolCall"]
      127 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      129 LOADK                            R8 K47 ["AssistantAddNumberInput"]
      130 CALL                             R7 1 1
      131 CALL                             R7 0 1
      132 SETTABLEKS                       R7 R4 K48 ["FFlagAssistantAddNumberInput"]
      134 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      136 LOADK                            R8 K49 ["AssistantAddPlaceholderProp"]
      137 CALL                             R7 1 1
      138 CALL                             R7 0 1
      139 SETTABLEKS                       R7 R4 K50 ["FFlagAssistantAddPlaceholderProp"]
      141 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      143 LOADK                            R8 K51 ["AssistantAnimationGenPluginGate"]
      144 CALL                             R7 1 1
      145 CALL                             R7 0 1
      146 SETTABLEKS                       R7 R4 K52 ["FFlagAssistantAnimationGenPluginGate"]
      148 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      150 LOADK                            R8 K53 ["AssistantAnimationGenCombinedDragger"]
      151 CALL                             R7 1 1
      152 CALL                             R7 0 1
      153 SETTABLEKS                       R7 R4 K54 ["FFlagAssistantAnimationGenCombinedDragger"]
      155 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      157 LOADK                            R8 K55 ["AssistantAnimationGenEnablePublishForMCP"]
      158 CALL                             R7 1 1
      159 CALL                             R7 0 1
      160 SETTABLEKS                       R7 R4 K56 ["FFlagAssistantAnimationGenEnablePublishForMCP"]
      162 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      164 LOADK                            R8 K57 ["AssistantAnimationGenFixPoseSelect"]
      165 CALL                             R7 1 1
      166 CALL                             R7 0 1
      167 SETTABLEKS                       R7 R4 K58 ["FFlagAssistantAnimationGenFixPoseSelect"]
      169 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      171 LOADK                            R8 K59 ["AssistantAnimationGenAlwaysShowFades"]
      172 CALL                             R7 1 1
      173 CALL                             R7 0 1
      174 SETTABLEKS                       R7 R4 K60 ["FFlagAssistantAnimationGenAlwaysShowFades"]
      176 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      178 LOADK                            R8 K61 ["AssistantAnimationGenForwardPromptVerbatim"]
      179 CALL                             R7 1 1
      180 CALL                             R7 0 1
      181 SETTABLEKS                       R7 R4 K62 ["FFlagAssistantAnimationGenForwardPromptVerbatim"]
      183 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      185 LOADK                            R8 K63 ["AssistantAnimationGenMoveKeyframeKeepRoot"]
      186 CALL                             R7 1 1
      187 CALL                             R7 0 1
      188 SETTABLEKS                       R7 R4 K64 ["FFlagAssistantAnimationGenMoveKeyframeKeepRoot"]
      190 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      192 LOADK                            R8 K65 ["AssistantAnimationGenPausePlaybackOnCollapse"]
      193 CALL                             R7 1 1
      194 CALL                             R7 0 1
      195 SETTABLEKS                       R7 R4 K66 ["FFlagAssistantAnimationGenPausePlaybackOnCollapse"]
      197 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      199 LOADK                            R8 K67 ["AssistantAnimationGenPausePlaybackOnUnmount"]
      200 CALL                             R7 1 1
      201 CALL                             R7 0 1
      202 SETTABLEKS                       R7 R4 K68 ["FFlagAssistantAnimationGenPausePlaybackOnUnmount"]
      204 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      206 LOADK                            R8 K69 ["AssistantAnimationGenRotationIntentV3"]
      207 CALL                             R7 1 1
      208 CALL                             R7 0 1
      209 SETTABLEKS                       R7 R4 K70 ["FFlagAssistantAnimationGenRotationIntentV3"]
      211 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      213 LOADK                            R8 K71 ["AssistantAnimationGenShowPublishButton"]
      214 CALL                             R7 1 1
      215 CALL                             R7 0 1
      216 SETTABLEKS                       R7 R4 K72 ["FFlagAssistantAnimationGenShowPublishButton"]
      218 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      220 LOADK                            R8 K73 ["AssistantAnimationGenTelemetry"]
      221 CALL                             R7 1 1
      222 CALL                             R7 0 1
      223 SETTABLEKS                       R7 R4 K74 ["FFlagAssistantAnimationGenTelemetry"]
      225 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      227 LOADK                            R8 K75 ["AssistantAnimationGenSnapToEditedPoses"]
      228 CALL                             R7 1 1
      229 CALL                             R7 0 1
      230 SETTABLEKS                       R7 R4 K76 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
      232 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      234 LOADK                            R8 K77 ["AssistantAnimationGenSolveRetargetedPoses"]
      235 CALL                             R7 1 1
      236 CALL                             R7 0 1
      237 SETTABLEKS                       R7 R4 K78 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
      239 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      241 LOADK                            R8 K79 ["AssistantAnimationGenCustomRigPosing"]
      242 CALL                             R7 1 1
      243 CALL                             R7 0 1
      244 SETTABLEKS                       R7 R4 K80 ["FFlagAssistantAnimationGenCustomRigPosing"]
      246 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      248 LOADK                            R8 K81 ["AssistantAnimationGenUndoRedo"]
      249 CALL                             R7 1 1
      250 CALL                             R7 0 1
      251 SETTABLEKS                       R7 R4 K82 ["FFlagAssistantAnimationGenUndoRedo"]
      253 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      255 LOADK                            R8 K83 ["AssistantAnimationGenSolveLimbRoots"]
      256 CALL                             R7 1 1
      257 CALL                             R7 0 1
      258 SETTABLEKS                       R7 R4 K84 ["FFlagAssistantAnimationGenSolveLimbRoots"]
      260 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      262 LOADK                            R8 K85 ["AssistantAnimationGenTurnOffRetargetingForR15Plus"]
      263 CALL                             R7 1 1
      264 CALL                             R7 0 1
      265 SETTABLEKS                       R7 R4 K86 ["FFlagAssistantAnimationGenTurnOffRetargetingForR15Plus"]
      267 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      269 LOADK                            R8 K87 ["AssistantAnimationGenPoseR15PlusJoints"]
      270 CALL                             R7 1 1
      271 CALL                             R7 0 1
      272 SETTABLEKS                       R7 R4 K88 ["FFlagAssistantAnimationGenPoseR15PlusJoints"]
      274 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      276 LOADK                            R8 K89 ["AssistantAnimationGenTool"]
      277 CALL                             R7 1 1
      278 CALL                             R7 0 1
      279 SETTABLEKS                       R7 R4 K90 ["FFlagAssistantAnimationGenTool"]
      281 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      283 LOADK                            R8 K91 ["AssistantAnimationGenRemoveEditFormPrompt"]
      284 CALL                             R7 1 1
      285 CALL                             R7 0 1
      286 SETTABLEKS                       R7 R4 K92 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      288 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      290 LOADK                            R8 K93 ["AssistantAnimationGenShowThoughts"]
      291 CALL                             R7 1 1
      292 CALL                             R7 0 1
      293 SETTABLEKS                       R7 R4 K94 ["FFlagAssistantAnimationGenShowThoughts"]
      295 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      297 LOADK                            R8 K95 ["AssistantAskInputExpandableRows"]
      298 CALL                             R7 1 1
      299 CALL                             R7 0 1
      300 SETTABLEKS                       R7 R4 K96 ["FFlagAssistantAskInputExpandableRows"]
      302 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      304 LOADK                            R8 K97 ["AssistantAskInputFooterResolver"]
      305 CALL                             R7 1 1
      306 CALL                             R7 0 1
      307 SETTABLEKS                       R7 R4 K98 ["FFlagAssistantAskInputFooterResolver"]
      309 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      311 LOADK                            R8 K99 ["AssistantAskInputRequiredMarkers"]
      312 CALL                             R7 1 1
      313 CALL                             R7 0 1
      314 SETTABLEKS                       R7 R4 K100 ["FFlagAssistantAskInputRequiredMarkers"]
      316 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      318 LOADK                            R8 K101 ["AssistantAskInputToolLLM2"]
      319 CALL                             R7 1 1
      320 CALL                             R7 0 1
      321 SETTABLEKS                       R7 R4 K102 ["FFlagAssistantAskInputToolLLM"]
      323 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      325 LOADK                            R8 K103 ["AssistantAssetSearchCreatorStoreUtm"]
      326 CALL                             R7 1 1
      327 CALL                             R7 0 1
      328 SETTABLEKS                       R7 R4 K104 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      330 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      332 LOADK                            R8 K105 ["AssistantAssetSearchDirectInsert"]
      333 CALL                             R7 1 1
      334 CALL                             R7 0 1
      335 SETTABLEKS                       R7 R4 K106 ["FFlagAssistantAssetSearchDirectInsert"]
      337 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      339 LOADK                            R8 K107 ["AssistantAssetTileNamePreview"]
      340 CALL                             R7 1 1
      341 CALL                             R7 0 1
      342 SETTABLEKS                       R7 R4 K108 ["FFlagAssistantAssetTileNamePreview"]
      344 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      346 LOADK                            R8 K109 ["AssistantAvatarAutoSetupTool5"]
      347 CALL                             R7 1 1
      348 CALL                             R7 0 1
      349 SETTABLEKS                       R7 R4 K110 ["FFlagAssistantAvatarAutoSetupTool"]
      351 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      353 LOADK                            R8 K111 ["AssistantAvatarGenAccessoriesFromMeshParts"]
      354 CALL                             R7 1 1
      355 CALL                             R7 0 1
      356 SETTABLEKS                       R7 R4 K112 ["FFlagAssistantAvatarGenAccessoriesFromMeshParts"]
      358 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      360 LOADK                            R8 K113 ["AssistantAvatarGenHumanoidRigDescription"]
      361 CALL                             R7 1 1
      362 CALL                             R7 0 1
      363 SETTABLEKS                       R7 R4 K114 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      365 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      367 LOADK                            R8 K115 ["AssistantAvatarGenPlaceWithoutRotation"]
      368 CALL                             R7 1 1
      369 CALL                             R7 0 1
      370 SETTABLEKS                       R7 R4 K116 ["FFlagAssistantAvatarGenPlaceWithoutRotation"]
      372 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      374 LOADK                            R8 K117 ["AssistantAvatarGenSlashCommand"]
      375 CALL                             R7 1 1
      376 CALL                             R7 0 1
      377 SETTABLEKS                       R7 R4 K118 ["FFlagAssistantAvatarGenSlashCommand"]
      379 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      381 LOADK                            R8 K119 ["AssistantAvatarGenTool"]
      382 CALL                             R7 1 1
      383 CALL                             R7 0 1
      384 SETTABLEKS                       R7 R4 K120 ["FFlagAssistantAvatarGenTool"]
      386 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      388 LOADK                            R8 K121 ["AssistantAvatarGenUsageTelemetry"]
      389 CALL                             R7 1 1
      390 CALL                             R7 0 1
      391 SETTABLEKS                       R7 R4 K122 ["FFlagAssistantAvatarGenUsageTelemetry"]
      393 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      395 LOADK                            R8 K123 ["AssistantBetaFeatureSkills"]
      396 CALL                             R7 1 1
      397 CALL                             R7 0 1
      398 SETTABLEKS                       R7 R4 K124 ["FFlagAssistantBetaFeatureSkills"]
      400 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      402 LOADK                            R8 K125 ["AssistantCapturePluginGuiFocusPanel"]
      403 CALL                             R7 1 1
      404 CALL                             R7 0 1
      405 SETTABLEKS                       R7 R4 K126 ["FFlagAssistantCapturePluginGuiFocusPanel"]
      407 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      409 LOADK                            R8 K127 ["AssistantCapturePluginGuiTool"]
      410 CALL                             R7 1 1
      411 CALL                             R7 0 1
      412 SETTABLEKS                       R7 R4 K128 ["FFlagAssistantCapturePluginGuiTool"]
      414 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      416 LOADK                            R8 K129 ["AssistantChatFollowBottomThreshold"]
      417 CALL                             R7 1 1
      418 CALL                             R7 0 1
      419 SETTABLEKS                       R7 R4 K130 ["FFlagAssistantChatFollowBottomThreshold"]
      421 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      423 LOADK                            R8 K131 ["AssistantCloseDropdownsOnWidgetHidden"]
      424 CALL                             R7 1 1
      425 CALL                             R7 0 1
      426 SETTABLEKS                       R7 R4 K132 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      428 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      430 LOADK                            R8 K133 ["AssistantConfirmButtonUpdate"]
      431 CALL                             R7 1 1
      432 CALL                             R7 0 1
      433 SETTABLEKS                       R7 R4 K134 ["FFlagAssistantConfirmButtonUpdate"]
      435 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      437 LOADK                            R8 K135 ["AssistantConsoleOutputTailFromEnd2"]
      438 CALL                             R7 1 1
      439 CALL                             R7 0 1
      440 SETTABLEKS                       R7 R4 K136 ["FFlagAssistantConsoleOutputTailFromEnd"]
      442 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      444 LOADK                            R8 K137 ["AssistantCreditMetering3"]
      445 CALL                             R7 1 1
      446 CALL                             R7 0 1
      447 SETTABLEKS                       R7 R4 K138 ["FFlagAssistantCreditMetering"]
      449 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      451 LOADK                            R8 K139 ["AssistantCreditMeteringAdditionalUsage"]
      452 LOADB                            R9 1
      453 CALL                             R7 2 1
      454 CALL                             R7 0 1
      455 SETTABLEKS                       R7 R4 K140 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      457 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      459 LOADK                            R8 K141 ["AssistantCreditMeteringInferBlockReason"]
      460 CALL                             R7 1 1
      461 CALL                             R7 0 1
      462 SETTABLEKS                       R7 R4 K142 ["FFlagAssistantCreditMeteringInferBlockReason"]
      464 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      466 LOADK                            R8 K143 ["AssistantCreditMeteringLocalBackend"]
      467 CALL                             R7 1 1
      468 CALL                             R7 0 1
      469 SETTABLEKS                       R7 R4 K144 ["FFlagAssistantCreditMeteringLocalBackend"]
      471 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      473 LOADK                            R8 K145 ["AssistantCreditMeteringLocalBackendExp"]
      474 CALL                             R7 1 1
      475 CALL                             R7 0 1
      476 SETTABLEKS                       R7 R4 K146 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      478 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      480 LOADK                            R8 K147 ["AssistantCreditMeteringResetPeriod"]
      481 CALL                             R7 1 1
      482 CALL                             R7 0 1
      483 SETTABLEKS                       R7 R4 K148 ["FFlagAssistantCreditMeteringResetPeriod"]
      485 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      487 LOADK                            R8 K149 ["AssistantDestroySessionMonitorsOnClose"]
      488 CALL                             R7 1 1
      489 CALL                             R7 0 1
      490 SETTABLEKS                       R7 R4 K150 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      492 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      494 LOADK                            R8 K151 ["AssistantDisableApplyEditDataModelAvailability"]
      495 CALL                             R7 1 1
      496 CALL                             R7 0 1
      497 SETTABLEKS                       R7 R4 K152 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      499 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      501 LOADK                            R8 K153 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      502 CALL                             R7 1 1
      503 CALL                             R7 0 1
      504 SETTABLEKS                       R7 R4 K154 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      506 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      508 LOADK                            R8 K155 ["AssistantDisableBranching"]
      509 CALL                             R7 1 1
      510 CALL                             R7 0 1
      511 SETTABLEKS                       R7 R4 K156 ["FFlagAssistantDisableBranching"]
      513 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      515 LOADK                            R8 K157 ["AssistantDisableSessionFilter"]
      516 CALL                             R7 1 1
      517 CALL                             R7 0 1
      518 SETTABLEKS                       R7 R4 K158 ["FFlagAssistantDisableSessionFilter"]
      520 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      522 LOADK                            R8 K159 ["AssistantEditScrubbarPropertyRow"]
      523 CALL                             R7 1 1
      524 CALL                             R7 0 1
      525 SETTABLEKS                       R7 R4 K160 ["FFlagAssistantEditScrubbarPropertyRow"]
      527 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      529 LOADK                            R8 K161 ["AssistantExecLuauYieldHint2"]
      530 CALL                             R7 1 1
      531 CALL                             R7 0 1
      532 SETTABLEKS                       R7 R4 K162 ["FFlagAssistantExecLuauYieldHint"]
      534 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      536 LOADK                            R8 K163 ["AssistantExecLuauYieldHintInternal"]
      537 CALL                             R7 1 1
      538 CALL                             R7 0 1
      539 SETTABLEKS                       R7 R4 K164 ["FFlagAssistantExecLuauYieldHintInternal"]
      541 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      543 LOADK                            R8 K165 ["AssistantExternalMCPPluginSettingRedundancy"]
      544 CALL                             R7 1 1
      545 CALL                             R7 0 1
      546 SETTABLEKS                       R7 R4 K166 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      548 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      550 LOADK                            R8 K167 ["AssistantFeedbackView"]
      551 CALL                             R7 1 1
      552 CALL                             R7 0 1
      553 SETTABLEKS                       R7 R4 K168 ["FFlagAssistantFeedbackView"]
      555 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      557 LOADK                            R8 K169 ["AssistantFixStartPlayHang"]
      558 CALL                             R7 1 1
      559 CALL                             R7 0 1
      560 SETTABLEKS                       R7 R4 K170 ["FFlagAssistantFixStartPlayHang"]
      562 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      564 LOADK                            R8 K171 ["AssistantForceRemoteServiceForInternal"]
      565 CALL                             R7 1 1
      566 CALL                             R7 0 1
      567 SETTABLEKS                       R7 R4 K172 ["FFlagAssistantForceRemoteServiceForInternal"]
      569 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      571 LOADK                            R8 K173 ["AssistantGameTreeYield"]
      572 CALL                             R7 1 1
      573 CALL                             R7 0 1
      574 SETTABLEKS                       R7 R4 K174 ["FFlagAssistantGameTreeYield"]
      576 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      578 LOADK                            R8 K175 ["AssistantGen3DAssetPublishTracking"]
      579 CALL                             R7 1 1
      580 CALL                             R7 0 1
      581 SETTABLEKS                       R7 R4 K176 ["FFlagAssistantGen3DAssetPublishTracking"]
      583 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      585 LOADK                            R8 K177 ["AssistantGen3dAutoSegmentation"]
      586 CALL                             R7 1 1
      587 CALL                             R7 0 1
      588 SETTABLEKS                       R7 R4 K178 ["FFlagAssistantGen3dAutoSegmentation"]
      590 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      592 LOADK                            R8 K179 ["AssistantGen3DImagePreviewTelemetry"]
      593 CALL                             R7 1 1
      594 CALL                             R7 0 1
      595 SETTABLEKS                       R7 R4 K180 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      597 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      599 LOADK                            R8 K181 ["AssistantGen3dRequirePromptToGenerate"]
      600 CALL                             R7 1 1
      601 CALL                             R7 0 1
      602 SETTABLEKS                       R7 R4 K182 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      604 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      606 LOADK                            R8 K183 ["AssistantGen3DTelemetryV2"]
      607 CALL                             R7 1 1
      608 CALL                             R7 0 1
      609 SETTABLEKS                       R7 R4 K184 ["FFlagAssistantGen3DTelemetryV2"]
      611 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      613 LOADK                            R8 K185 ["AssistantGenerateLayoutCalloutCancel"]
      614 CALL                             R7 1 1
      615 CALL                             R7 0 1
      616 SETTABLEKS                       R7 R4 K186 ["FFlagAssistantGenerateLayoutCalloutCancel"]
      618 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      620 LOADK                            R8 K187 ["AssistantGenerateLayoutTool"]
      621 CALL                             R7 1 1
      622 CALL                             R7 0 1
      623 SETTABLEKS                       R7 R4 K188 ["FFlagAssistantGenerateLayoutTool"]
      625 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      627 LOADK                            R8 K189 ["AssistantGenerateSceneInputValidation"]
      628 CALL                             R7 1 1
      629 CALL                             R7 0 1
      630 SETTABLEKS                       R7 R4 K190 ["FFlagAssistantGenerateSceneInputValidation"]
      632 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      634 LOADK                            R8 K191 ["AssistantGenerateSceneMeshGenToggle"]
      635 CALL                             R7 1 1
      636 CALL                             R7 0 1
      637 SETTABLEKS                       R7 R4 K192 ["FFlagAssistantGenerateSceneMeshGenToggle"]
      639 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      641 LOADK                            R8 K193 ["AssistantGenerateSceneQuality"]
      642 CALL                             R7 1 1
      643 CALL                             R7 0 1
      644 SETTABLEKS                       R7 R4 K194 ["FFlagAssistantGenerateSceneQuality"]
      646 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      648 LOADK                            R8 K195 ["AssistantGrepSearchKeepEmptyLines"]
      649 CALL                             R7 1 1
      650 CALL                             R7 0 1
      651 SETTABLEKS                       R7 R4 K196 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      653 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      655 LOADK                            R8 K197 ["AssistantHideContent"]
      656 CALL                             R7 1 1
      657 CALL                             R7 0 1
      658 SETTABLEKS                       R7 R4 K198 ["FFlagAssistantHideContent"]
      660 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      662 LOADK                            R8 K199 ["AssistantAddPaddingToFillRow"]
      663 CALL                             R7 1 1
      664 CALL                             R7 0 1
      665 SETTABLEKS                       R7 R4 K200 ["FFlagAssistantAddPaddingToFillRow"]
      667 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      669 LOADK                            R8 K201 ["AssistantHidePinForBuild"]
      670 CALL                             R7 1 1
      671 CALL                             R7 0 1
      672 SETTABLEKS                       R7 R4 K202 ["FFlagAssistantHidePinForBuild"]
      674 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      676 LOADK                            R8 K203 ["AssistantHintMultiEditOverExecLuau"]
      677 CALL                             R7 1 1
      678 CALL                             R7 0 1
      679 SETTABLEKS                       R7 R4 K204 ["FFlagAssistantHintMultiEditOverExecLuau"]
      681 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      683 LOADK                            R8 K205 ["AssistantImageGenAbortPollOn4xx"]
      684 CALL                             R7 1 1
      685 CALL                             R7 0 1
      686 SETTABLEKS                       R7 R4 K206 ["FFlagAssistantImageGenAbortPollOn4xx"]
      688 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      690 LOADK                            R8 K207 ["AssistantImageGenImprovements"]
      691 CALL                             R7 1 1
      692 CALL                             R7 0 1
      693 SETTABLEKS                       R7 R4 K208 ["FFlagAssistantImageGenImprovements"]
      695 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      697 LOADK                            R8 K209 ["AssistantImageGenSeed"]
      698 CALL                             R7 1 1
      699 CALL                             R7 0 1
      700 SETTABLEKS                       R7 R4 K210 ["FFlagAssistantImageGenSeed"]
      702 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      704 LOADK                            R8 K211 ["AssistantImageSelectionWizardModeMeshGen"]
      705 CALL                             R7 1 1
      706 CALL                             R7 0 1
      707 SETTABLEKS                       R7 R4 K212 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      709 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      711 LOADK                            R8 K213 ["AssistantImageSelectionWizardModePrimitiveGen"]
      712 CALL                             R7 1 1
      713 CALL                             R7 0 1
      714 SETTABLEKS                       R7 R4 K214 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      716 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      718 LOADK                            R8 K215 ["AssistantImageSelectionWizardModeTextureGen"]
      719 CALL                             R7 1 1
      720 CALL                             R7 0 1
      721 SETTABLEKS                       R7 R4 K216 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      723 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      725 LOADK                            R8 K217 ["AssistantIncorrectAttachPrimGenImageToInput"]
      726 CALL                             R7 1 1
      727 CALL                             R7 0 1
      728 SETTABLEKS                       R7 R4 K218 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      730 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      732 LOADK                            R8 K219 ["AssistantInsertAssetSandboxProceduralModels"]
      733 CALL                             R7 1 1
      734 CALL                             R7 0 1
      735 SETTABLEKS                       R7 R4 K220 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      737 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      739 LOADK                            R8 K221 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      740 CALL                             R7 1 1
      741 CALL                             R7 0 1
      742 SETTABLEKS                       R7 R4 K222 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      744 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      746 LOADK                            R8 K223 ["AssistantInsertAssetSandboxScripts"]
      747 CALL                             R7 1 1
      748 CALL                             R7 0 1
      749 SETTABLEKS                       R7 R4 K224 ["FFlagAssistantInsertAssetSandboxScripts"]
      751 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      753 LOADK                            R8 K225 ["AssistantMarkdownStreaming"]
      754 CALL                             R7 1 1
      755 CALL                             R7 0 1
      756 SETTABLEKS                       R7 R4 K226 ["FFlagAssistantMarkdownStreaming"]
      758 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      760 LOADK                            R8 K227 ["AssistantMcpImageGenShortcut"]
      761 CALL                             R7 1 1
      762 CALL                             R7 0 1
      763 SETTABLEKS                       R7 R4 K228 ["FFlagAssistantMcpImageGenShortcut"]
      765 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      767 LOADK                            R8 K229 ["AssistantMcpListPlaceTool"]
      768 CALL                             R7 1 1
      769 CALL                             R7 0 1
      770 SETTABLEKS                       R7 R4 K230 ["FFlagAssistantMcpListPlaceTool"]
      772 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      774 LOADK                            R8 K231 ["AssistantMcpListSkillsTool"]
      775 CALL                             R7 1 1
      776 CALL                             R7 0 1
      777 SETTABLEKS                       R7 R4 K232 ["FFlagAssistantMcpListSkillsTool"]
      779 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      781 LOADK                            R8 K233 ["MCPWebSocketRetryOnStartError"]
      782 CALL                             R7 1 1
      783 CALL                             R7 0 1
      784 JUMPIFNOT                        R7 ; [+5]
      785 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      787 LOADK                            R8 K234 ["AssistantMCPProxyAuthRejectedWarn"]
      788 CALL                             R7 1 1
      789 CALL                             R7 0 1
      790 SETTABLEKS                       R7 R4 K235 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      792 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      794 LOADK                            R9 K236 ["AssistantMCPVideoCapture"]
      795 CALL                             R8 1 1
      796 CALL                             R8 0 1
      797 AND                              R7 R8 R6
      798 SETTABLEKS                       R7 R4 K237 ["FFlagAssistantMCPVideoCapture"]
      800 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      802 LOADK                            R8 K238 ["AssistantMeshGenAutoExpandCollapse"]
      803 CALL                             R7 1 1
      804 CALL                             R7 0 1
      805 SETTABLEKS                       R7 R4 K239 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      807 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      809 LOADK                            R8 K240 ["AssistantMeshGenHintImage"]
      810 CALL                             R7 1 1
      811 CALL                             R7 0 1
      812 SETTABLEKS                       R7 R4 K241 ["FFlagAssistantMeshGenHintImage"]
      814 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      816 LOADK                            R8 K242 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      817 CALL                             R7 1 1
      818 CALL                             R7 0 1
      819 SETTABLEKS                       R7 R4 K243 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      821 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      823 LOADK                            R8 K244 ["AssistantMeshGenRemoveAdminOptions"]
      824 CALL                             R7 1 1
      825 CALL                             R7 0 1
      826 SETTABLEKS                       R7 R4 K245 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      828 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      830 LOADK                            R8 K246 ["AssistantMoveToolButtonsToTheRightAgain"]
      831 CALL                             R7 1 1
      832 CALL                             R7 0 1
      833 SETTABLEKS                       R7 R4 K247 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      835 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      837 LOADK                            R8 K248 ["AssistantMultiEditExternalClient"]
      838 CALL                             R7 1 1
      839 CALL                             R7 0 1
      840 SETTABLEKS                       R7 R4 K249 ["FFlagAssistantMultiEditExternalClient"]
      842 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      844 LOADK                            R8 K250 ["AssistantNumberRowPartialInput"]
      845 CALL                             R7 1 1
      846 CALL                             R7 0 1
      847 SETTABLEKS                       R7 R4 K251 ["FFlagAssistantNumberRowPartialInput"]
      849 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      851 LOADK                            R8 K252 ["AssistantOmitSlashToolCallDroppedFields"]
      852 CALL                             R7 1 1
      853 CALL                             R7 0 1
      854 SETTABLEKS                       R7 R4 K253 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      856 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      858 LOADK                            R8 K254 ["AssistantOpenCloudInvokeTool2"]
      859 CALL                             R7 1 1
      860 CALL                             R7 0 1
      861 SETTABLEKS                       R7 R4 K255 ["FFlagAssistantOpenCloudInvokeTool"]
      863 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      865 LOADK                            R8 K256 ["AssistantPinForBuildUI"]
      866 CALL                             R7 1 1
      867 CALL                             R7 0 1
      868 SETTABLEKS                       R7 R4 K257 ["FFlagAssistantPinForBuildUI"]
      870 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      872 LOADK                            R8 K258 ["AssistantPlanRevisionList"]
      873 CALL                             R7 1 1
      874 CALL                             R7 0 1
      875 SETTABLEKS                       R7 R4 K259 ["FFlagAssistantPlanRevisionList"]
      877 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      879 LOADK                            R8 K260 ["AssistantPlaytestContext"]
      880 CALL                             R7 1 1
      881 CALL                             R7 0 1
      882 SETTABLEKS                       R7 R4 K261 ["FFlagAssistantPlaytestContext"]
      884 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      886 LOADK                            R8 K262 ["AssistantPlaytestKGEnabled"]
      887 CALL                             R7 1 1
      888 CALL                             R7 0 1
      889 SETTABLEKS                       R7 R4 K263 ["FFlagAssistantPlaytestKGEnabled"]
      891 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      893 LOADK                            R8 K264 ["AssistantPlaytestToolFix"]
      894 CALL                             R7 1 1
      895 CALL                             R7 0 1
      896 SETTABLEKS                       R7 R4 K265 ["FFlagAssistantPlaytestToolFix"]
      898 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      900 LOADK                            R8 K266 ["AssistantPromptHistoryFromConversation"]
      901 CALL                             R7 1 1
      902 CALL                             R7 0 1
      903 SETTABLEKS                       R7 R4 K267 ["FFlagAssistantPromptHistoryFromConversation"]
      905 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      907 LOADK                            R8 K268 ["AssistantPromptModeratedError"]
      908 CALL                             R7 1 1
      909 CALL                             R7 0 1
      910 SETTABLEKS                       R7 R4 K269 ["FFlagAssistantPromptModeratedError"]
      912 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      914 LOADK                            R8 K270 ["AssistantReadFileRejectRangeWithEntireFile"]
      915 CALL                             R7 1 1
      916 CALL                             R7 0 1
      917 SETTABLEKS                       R7 R4 K271 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
      919 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      921 LOADK                            R8 K272 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      922 CALL                             R7 1 1
      923 CALL                             R7 0 1
      924 SETTABLEKS                       R7 R4 K273 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      926 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      928 LOADK                            R8 K274 ["AssistantResolveHeading"]
      929 CALL                             R7 1 1
      930 CALL                             R7 0 1
      931 SETTABLEKS                       R7 R4 K275 ["FFlagAssistantResolveHeading"]
      933 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      935 LOADK                            R8 K276 ["AssistantRestoreCameraStateInExec"]
      936 CALL                             R7 1 1
      937 CALL                             R7 0 1
      938 SETTABLEKS                       R7 R4 K277 ["FFlagAssistantRestoreCameraStateInExec"]
      940 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      942 LOADK                            R8 K278 ["AssistantRestoreCameraStateInExecWarn"]
      943 CALL                             R7 1 1
      944 CALL                             R7 0 1
      945 SETTABLEKS                       R7 R4 K279 ["FFlagAssistantRestoreCameraStateInExecWarn"]
      947 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      949 LOADK                            R8 K280 ["AssistantRestoreMostRecentThread"]
      950 CALL                             R7 1 1
      951 CALL                             R7 0 1
      952 SETTABLEKS                       R7 R4 K281 ["FFlagAssistantRestoreMostRecentThread"]
      954 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      956 LOADK                            R8 K282 ["AssistantScrollableAskInputForm"]
      957 CALL                             R7 1 1
      958 CALL                             R7 0 1
      959 SETTABLEKS                       R7 R4 K283 ["FFlagAssistantScrollableAskInputForm"]
      961 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      963 LOADK                            R8 K284 ["AssistantSegmentationBridge"]
      964 CALL                             R7 1 1
      965 CALL                             R7 0 1
      966 SETTABLEKS                       R7 R4 K285 ["FFlagAssistantSegmentationBridge"]
      968 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      970 LOADK                            R8 K286 ["AssistantSegmentationPromptModeSelector"]
      971 CALL                             R7 1 1
      972 CALL                             R7 0 1
      973 SETTABLEKS                       R7 R4 K287 ["FFlagAssistantSegmentationPromptModeSelector"]
      975 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      977 LOADK                            R8 K288 ["AssistantSegmentationUIFixes"]
      978 CALL                             R7 1 1
      979 CALL                             R7 0 1
      980 SETTABLEKS                       R7 R4 K289 ["FFlagAssistantSegmentationUIFixes"]
      982 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      984 LOADK                            R8 K290 ["AssistantSegmentMeshCleanupWorldWrapper"]
      985 CALL                             R7 1 1
      986 CALL                             R7 0 1
      987 SETTABLEKS                       R7 R4 K291 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
      989 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      991 LOADK                            R8 K292 ["AssistantSegmentMeshTool"]
      992 CALL                             R7 1 1
      993 CALL                             R7 0 1
      994 SETTABLEKS                       R7 R4 K293 ["FFlagAssistantSegmentMeshTool"]
      996 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
      998 LOADK                            R8 K294 ["AssistantSegmentMeshUseSourceMeshCFrame"]
      999 CALL                             R7 1 1
     1000 CALL                             R7 0 1
     1001 SETTABLEKS                       R7 R4 K295 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
     1003 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1005 LOADK                            R8 K296 ["AssistantSharedVector3Input"]
     1006 CALL                             R7 1 1
     1007 CALL                             R7 0 1
     1008 SETTABLEKS                       R7 R4 K297 ["FFlagAssistantSharedVector3Input"]
     1010 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1012 LOADK                            R8 K298 ["AssistantSkillsShowDisabled"]
     1013 CALL                             R7 1 1
     1014 CALL                             R7 0 1
     1015 SETTABLEKS                       R7 R4 K299 ["FFlagAssistantSkillsShowDisabled"]
     1017 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1019 LOADK                            R8 K300 ["AssistantSkillToolNameReplace"]
     1020 CALL                             R7 1 1
     1021 CALL                             R7 0 1
     1022 SETTABLEKS                       R7 R4 K301 ["FFlagAssistantSkillToolNameReplace"]
     1024 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1026 LOADK                            R8 K302 ["AssistantSlashCommandStepBackNavigation"]
     1027 CALL                             R7 1 1
     1028 CALL                             R7 0 1
     1029 SETTABLEKS                       R7 R4 K303 ["FFlagAssistantSlashCommandStepBackNavigation"]
     1031 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1033 LOADK                            R8 K304 ["AssistantSlashToolNameAndError"]
     1034 CALL                             R7 1 1
     1035 CALL                             R7 0 1
     1036 SETTABLEKS                       R7 R4 K305 ["FFlagAssistantSlashToolNameAndError"]
     1038 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1040 LOADK                            R8 K306 ["AssistantStartStopPlayBusyCheck"]
     1041 CALL                             R7 1 1
     1042 CALL                             R7 0 1
     1043 SETTABLEKS                       R7 R4 K307 ["FFlagAssistantStartStopPlayBusyCheck"]
     1045 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1047 LOADK                            R8 K308 ["AssistantTestLLMPreserveThinking"]
     1048 LOADB                            R9 1
     1049 CALL                             R7 2 1
     1050 CALL                             R7 0 1
     1051 SETTABLEKS                       R7 R4 K309 ["FFlagAssistantTestLLMPreserveThinking"]
     1053 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1055 LOADK                            R8 K310 ["AssistantTestLLMThinkingEnabled"]
     1056 LOADB                            R9 1
     1057 CALL                             R7 2 1
     1058 CALL                             R7 0 1
     1059 SETTABLEKS                       R7 R4 K311 ["FFlagAssistantTestLLMThinkingEnabled"]
     1061 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1063 LOADK                            R8 K312 ["AssistantTextureGenAutoSelectView"]
     1064 CALL                             R7 1 1
     1065 CALL                             R7 0 1
     1066 SETTABLEKS                       R7 R4 K313 ["FFlagAssistantTextureGenAutoSelectView"]
     1068 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1070 LOADK                            R8 K314 ["AssistantTextureGenMcpQualityAutoView"]
     1071 CALL                             R7 1 1
     1072 CALL                             R7 0 1
     1073 SETTABLEKS                       R7 R4 K315 ["FFlagAssistantTextureGenMcpQualityAutoView"]
     1075 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1077 LOADK                            R8 K316 ["AssistantTextureGenModelSelection"]
     1078 CALL                             R7 1 1
     1079 CALL                             R7 0 1
     1080 SETTABLEKS                       R7 R4 K317 ["FFlagAssistantTextureGenModelSelection"]
     1082 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1084 LOADK                            R8 K318 ["AssistantTextureGenTool"]
     1085 CALL                             R7 1 1
     1086 CALL                             R7 0 1
     1087 SETTABLEKS                       R7 R4 K319 ["FFlagAssistantTextureGenTool"]
     1089 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1091 LOADK                            R8 K320 ["AssistantTextureGenUseSourceMeshCFrame"]
     1092 CALL                             R7 1 1
     1093 CALL                             R7 0 1
     1094 SETTABLEKS                       R7 R4 K321 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
     1096 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1098 LOADK                            R8 K322 ["AssistantToolPermissionQuestion"]
     1099 CALL                             R7 1 1
     1100 CALL                             R7 0 1
     1101 SETTABLEKS                       R7 R4 K323 ["FFlagAssistantToolPermissionQuestion"]
     1103 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1105 LOADK                            R8 K324 ["AssistantToolSkillDescriptions"]
     1106 CALL                             R7 1 1
     1107 CALL                             R7 0 1
     1108 SETTABLEKS                       R7 R4 K325 ["FFlagAssistantToolSkillDescriptions"]
     1110 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1112 LOADK                            R8 K326 ["AssistantTruncatePrimGenHeader"]
     1113 CALL                             R7 1 1
     1114 CALL                             R7 0 1
     1115 SETTABLEKS                       R7 R4 K327 ["FFlagAssistantTruncatePrimGenHeader"]
     1117 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1119 LOADK                            R8 K328 ["AssistantUntitledChatPlaceholder"]
     1120 CALL                             R7 1 1
     1121 CALL                             R7 0 1
     1122 SETTABLEKS                       R7 R4 K329 ["FFlagAssistantUntitledChatPlaceholder"]
     1124 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1126 LOADK                            R8 K330 ["AssistantUseFoundationTextArea"]
     1127 CALL                             R7 1 1
     1128 CALL                             R7 0 1
     1129 SETTABLEKS                       R7 R4 K331 ["FFlagAssistantUseFoundationTextArea"]
     1131 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1133 LOADK                            R8 K332 ["AssistantUseNewDMNetworking"]
     1134 CALL                             R7 1 1
     1135 CALL                             R7 0 1
     1136 SETTABLEKS                       R7 R4 K333 ["FFlagAssistantUseNewDMNetworking"]
     1138 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1140 LOADK                            R8 K334 ["AssistantUseNewTags"]
     1141 CALL                             R7 1 1
     1142 CALL                             R7 0 1
     1143 SETTABLEKS                       R7 R4 K335 ["FFlagAssistantUseNewTags"]
     1145 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1147 LOADK                            R8 K336 ["AssistantUseRemoteService2"]
     1148 CALL                             R7 1 1
     1149 CALL                             R7 0 1
     1150 SETTABLEKS                       R7 R4 K337 ["FFlagAssistantUseRemoteService"]
     1152 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1154 LOADK                            R8 K338 ["AssistantUseRemoteServiceExp"]
     1155 CALL                             R7 1 1
     1156 CALL                             R7 0 1
     1157 SETTABLEKS                       R7 R4 K339 ["FFlagAssistantUseRemoteServiceExp"]
     1159 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1161 LOADK                            R8 K340 ["AssistantUseVariantHttpTransport"]
     1162 CALL                             R7 1 1
     1163 CALL                             R7 0 1
     1164 SETTABLEKS                       R7 R4 K341 ["FFlagAssistantUseVariantHttpTransport"]
     1166 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1168 LOADK                            R8 K342 ["AssistantVersionMismatchWarning"]
     1169 CALL                             R7 1 1
     1170 CALL                             R7 0 1
     1171 SETTABLEKS                       R7 R4 K343 ["FFlagAssistantVersionMismatchWarning"]
     1173 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1175 LOADK                            R8 K344 ["AssistantVideoCaptureTool"]
     1176 CALL                             R7 1 1
     1177 CALL                             R7 0 1
     1178 SETTABLEKS                       R7 R4 K345 ["FFlagAssistantVideoCaptureTool"]
     1180 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1182 LOADK                            R9 K346 ["AssistantVirtualInputEnabled"]
     1183 CALL                             R8 1 1
     1184 CALL                             R8 0 1
     1185 AND                              R7 R8 R5
     1186 SETTABLEKS                       R7 R4 K347 ["FFlagAssistantVirtualInputEnabled"]
     1188 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1190 LOADK                            R8 K348 ["AvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1191 CALL                             R7 1 1
     1192 CALL                             R7 0 1
     1193 SETTABLEKS                       R7 R4 K349 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1195 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1197 LOADK                            R8 K350 ["AvatarPreviewerAvatarCreationDynamicHeadOff"]
     1198 CALL                             R7 1 1
     1199 CALL                             R7 0 1
     1200 SETTABLEKS                       R7 R4 K351 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
     1202 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1204 LOADK                            R8 K352 ["AvatarPreviewerAvatarCreationDynamicHeadOption"]
     1205 CALL                             R7 1 1
     1206 CALL                             R7 0 1
     1207 SETTABLEKS                       R7 R4 K353 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
     1209 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1211 LOADK                            R8 K354 ["AvatarPreviewerAvatarCreationR15PlusOn"]
     1212 CALL                             R7 1 1
     1213 CALL                             R7 0 1
     1214 SETTABLEKS                       R7 R4 K355 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
     1216 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1218 LOADK                            R8 K356 ["AvatarPreviewerAvatarCreationR15PlusOption"]
     1219 CALL                             R7 1 1
     1220 CALL                             R7 0 1
     1221 SETTABLEKS                       R7 R4 K357 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
     1223 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1225 LOADK                            R8 K358 ["DebugAssistantEval"]
     1226 CALL                             R7 1 1
     1227 CALL                             R7 0 1
     1228 SETTABLEKS                       R7 R4 K359 ["FFlagDebugAssistantEval"]
     1230 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1232 LOADK                            R8 K360 ["DebugAssistantMultiPlayerAgentsLog"]
     1233 CALL                             R7 1 1
     1234 CALL                             R7 0 1
     1235 SETTABLEKS                       R7 R4 K361 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
     1237 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1239 LOADK                            R8 K362 ["DebugEnableTestLLMAdapter"]
     1240 CALL                             R7 1 1
     1241 CALL                             R7 0 1
     1242 SETTABLEKS                       R7 R4 K363 ["FFlagDebugEnableTestLLMAdapter"]
     1244 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1246 LOADK                            R8 K364 ["DebugMockPrimitiveGenBackend"]
     1247 CALL                             R7 1 1
     1248 CALL                             R7 0 1
     1249 SETTABLEKS                       R7 R4 K365 ["FFlagDebugMockPrimitiveGenBackend"]
     1251 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1253 LOADK                            R8 K366 ["DisableMCPConnectionIndicator"]
     1254 CALL                             R7 1 1
     1255 CALL                             R7 0 1
     1256 SETTABLEKS                       R7 R4 K367 ["FFlagDisableMCPConnectionIndicator"]
     1258 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1260 LOADK                            R8 K368 ["FFlagDisableNavigationConfirmation"]
     1261 CALL                             R7 1 1
     1262 CALL                             R7 0 1
     1263 SETTABLEKS                       R7 R4 K368 ["FFlagDisableNavigationConfirmation"]
     1265 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1267 LOADK                            R8 K369 ["DisableNewSmartSize"]
     1268 CALL                             R7 1 1
     1269 CALL                             R7 0 1
     1270 SETTABLEKS                       R7 R4 K370 ["FFlagDisableNewSmartSize"]
     1272 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1274 LOADK                            R8 K371 ["DisableOldSmartSize"]
     1275 CALL                             R7 1 1
     1276 CALL                             R7 0 1
     1277 SETTABLEKS                       R7 R4 K372 ["FFlagDisableOldSmartSize"]
     1279 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1281 LOADK                            R8 K373 ["FFlagDisableStartStopPlayConfirmation"]
     1282 CALL                             R7 1 1
     1283 CALL                             R7 0 1
     1284 SETTABLEKS                       R7 R4 K373 ["FFlagDisableStartStopPlayConfirmation"]
     1286 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1288 LOADK                            R8 K374 ["FFlagDisableUserInputConfirmation"]
     1289 CALL                             R7 1 1
     1290 CALL                             R7 0 1
     1291 SETTABLEKS                       R7 R4 K374 ["FFlagDisableUserInputConfirmation"]
     1293 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1295 LOADK                            R8 K375 ["EnableAssistantImageUpload"]
     1296 CALL                             R7 1 1
     1297 CALL                             R7 0 1
     1298 SETTABLEKS                       R7 R4 K376 ["FFlagEnableAssistantImageUpload"]
     1300 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1302 LOADK                            R8 K377 ["EnablePlaytestSubagent"]
     1303 CALL                             R7 1 1
     1304 CALL                             R7 0 1
     1305 SETTABLEKS                       R7 R4 K378 ["FFlagEnablePlaytestSubagent"]
     1307 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1309 LOADK                            R8 K379 ["Gen3dSegmentationSelector"]
     1310 CALL                             R7 1 1
     1311 CALL                             R7 0 1
     1312 SETTABLEKS                       R7 R4 K380 ["FFlagGen3dSegmentationSelector"]
     1314 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1316 LOADK                            R8 K381 ["MarkdownTagFallbacks"]
     1317 CALL                             R7 1 1
     1318 CALL                             R7 0 1
     1319 SETTABLEKS                       R7 R4 K382 ["FFlagMarkdownTagFallbacks"]
     1321 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1323 LOADK                            R8 K383 ["MCPAssistantAzureOpenAI"]
     1324 CALL                             R7 1 1
     1325 CALL                             R7 0 1
     1326 SETTABLEKS                       R7 R4 K384 ["FFlagMCPAssistantAzureOpenAI"]
     1328 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1330 LOADK                            R8 K385 ["MCPAssistantManagementMenu5"]
     1331 CALL                             R7 1 1
     1332 CALL                             R7 0 1
     1333 SETTABLEKS                       R7 R4 K386 ["FFlagMCPAssistantManagementMenu"]
     1335 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1337 LOADK                            R8 K387 ["MCPAssistantOpenAIPreserveThinking"]
     1338 CALL                             R7 1 1
     1339 CALL                             R7 0 1
     1340 SETTABLEKS                       R7 R4 K388 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1342 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1344 LOADK                            R8 K389 ["MCPAssistantOpenAIThinkingEnabled"]
     1345 CALL                             R7 1 1
     1346 CALL                             R7 0 1
     1347 SETTABLEKS                       R7 R4 K390 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1349 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1351 LOADK                            R8 K391 ["MCPClientCountAsASetting"]
     1352 CALL                             R7 1 1
     1353 CALL                             R7 0 1
     1354 SETTABLEKS                       R7 R4 K392 ["FFlagMCPClientCountAsASetting"]
     1356 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1358 LOADK                            R8 K393 ["MCPConnectionIndicatorTooltip"]
     1359 CALL                             R7 1 1
     1360 CALL                             R7 0 1
     1361 SETTABLEKS                       R7 R4 K394 ["FFlagMCPConnectionIndicatorTooltip"]
     1363 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1365 LOADK                            R8 K395 ["MCPContentNormalization"]
     1366 CALL                             R7 1 1
     1367 CALL                             R7 0 1
     1368 SETTABLEKS                       R7 R4 K396 ["FFlagMCPContentNormalization"]
     1370 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1372 LOADK                            R8 K397 ["MCPEnableToolDisabling"]
     1373 CALL                             R7 1 1
     1374 CALL                             R7 0 1
     1375 SETTABLEKS                       R7 R4 K398 ["FFlagMCPEnableToolDisabling"]
     1377 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1379 LOADK                            R8 K399 ["PlaytestVision"]
     1380 CALL                             R7 1 1
     1381 CALL                             R7 0 1
     1382 SETTABLEKS                       R7 R4 K400 ["FFlagPlaytestVision"]
     1384 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1386 LOADK                            R8 K401 ["PrimGenBetterErrorType"]
     1387 CALL                             R7 1 1
     1388 CALL                             R7 0 1
     1389 SETTABLEKS                       R7 R4 K402 ["FFlagPrimGenBetterErrorType"]
     1391 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1393 LOADK                            R8 K403 ["PrimGenImageGenPromptTemplateEnabled"]
     1394 CALL                             R7 1 1
     1395 CALL                             R7 0 1
     1396 SETTABLEKS                       R7 R4 K404 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1398 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1400 LOADK                            R8 K405 ["PrimGenSchemaSelector"]
     1401 CALL                             R7 1 1
     1402 CALL                             R7 0 1
     1403 SETTABLEKS                       R7 R4 K406 ["FFlagPrimGenSchemaSelector"]
     1405 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1407 LOADK                            R8 K407 ["PrimGenVerboseDmIsUnReachableMsg"]
     1408 CALL                             R7 1 1
     1409 CALL                             R7 0 1
     1410 SETTABLEKS                       R7 R4 K408 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1412 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1414 LOADK                            R8 K409 ["PrimGenVersionMismatchError"]
     1415 CALL                             R7 1 1
     1416 CALL                             R7 0 1
     1417 SETTABLEKS                       R7 R4 K410 ["FFlagPrimGenVersionMismatchError"]
     1419 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1421 LOADK                            R8 K411 ["PropertiesExposeContentView"]
     1422 CALL                             R7 1 1
     1423 CALL                             R7 0 1
     1424 SETTABLEKS                       R7 R4 K412 ["FFlagPropertiesExposeContentView"]
     1426 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1428 LOADK                            R8 K413 ["ScreenCaptureCamera"]
     1429 CALL                             R7 1 1
     1430 CALL                             R7 0 1
     1431 SETTABLEKS                       R7 R4 K414 ["FFlagScreenCaptureCamera"]
     1433 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1435 LOADK                            R8 K415 ["ScriptDebuggerServiceEnabled2"]
     1436 CALL                             R7 1 1
     1437 CALL                             R7 0 1
     1438 SETTABLEKS                       R7 R4 K416 ["FFlagScriptDebuggerServiceEnabled"]
     1440 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1442 LOADK                            R8 K417 ["SubagentScriptEditAutoConfirmation"]
     1443 CALL                             R7 1 1
     1444 CALL                             R7 0 1
     1445 SETTABLEKS                       R7 R4 K418 ["FFlagSubagentScriptEditAutoConfirmation"]
     1447 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
     1449 LOADK                            R8 K419 ["UseStudioSideListTool"]
     1450 CALL                             R7 1 1
     1451 CALL                             R7 0 1
     1452 SETTABLEKS                       R7 R4 K420 ["FFlagUseStudioSideListTool"]
     1454 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1456 LOADK                            R8 K422 ["AmrAssetDependencyGrantEventTimeout"]
     1457 LOADN                            R9 40
     1458 CALL                             R7 2 1
     1459 CALL                             R7 0 1
     1460 SETTABLEKS                       R7 R4 K423 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1462 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1464 LOADK                            R8 K424 ["AssistantAnimationGenLocalBendMaxFlexDegrees"]
     1465 LOADN                            R9 120
     1466 CALL                             R7 2 1
     1467 CALL                             R7 0 1
     1468 SETTABLEKS                       R7 R4 K425 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
     1470 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1472 LOADK                            R8 K426 ["AssistantAnimationGenPluginMinDurationSeconds"]
     1473 LOADN                            R9 1
     1474 CALL                             R7 2 1
     1475 CALL                             R7 0 1
     1476 SETTABLEKS                       R7 R4 K427 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
     1478 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1480 LOADK                            R8 K428 ["AssistantAnimationGenPluginMaxDurationSeconds"]
     1481 LOADN                            R9 30
     1482 CALL                             R7 2 1
     1483 CALL                             R7 0 1
     1484 SETTABLEKS                       R7 R4 K429 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
     1486 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1488 LOADK                            R8 K430 ["AssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1489 LOADN                            R9 5
     1490 CALL                             R7 2 1
     1491 CALL                             R7 0 1
     1492 SETTABLEKS                       R7 R4 K431 ["FIntAssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1494 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1496 LOADK                            R8 K432 ["AssistantAutoSaveInterval"]
     1497 LOADN                            R9 60
     1498 CALL                             R7 2 1
     1499 CALL                             R7 0 1
     1500 SETTABLEKS                       R7 R4 K433 ["FIntAssistantAutoSaveInterval"]
     1502 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1504 LOADK                            R8 K434 ["AssistantCapturePluginGuiDelayFrames"]
     1505 LOADN                            R9 10
     1506 CALL                             R7 2 1
     1507 CALL                             R7 0 1
     1508 SETTABLEKS                       R7 R4 K435 ["FIntAssistantCapturePluginGuiDelayFrames"]
     1510 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1512 LOADK                            R8 K436 ["AssistantDebugToolMaxOutput"]
     1513 LOADN                            R9 20000
     1514 CALL                             R7 2 1
     1515 CALL                             R7 0 1
     1516 SETTABLEKS                       R7 R4 K437 ["FIntAssistantDebugToolMaxOutput"]
     1518 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1520 LOADK                            R8 K438 ["AssistantJobWaitDefaultTimeout"]
     1521 LOADN                            R9 600
     1522 CALL                             R7 2 1
     1523 CALL                             R7 0 1
     1524 SETTABLEKS                       R7 R4 K439 ["FIntAssistantJobWaitDefaultTimeout"]
     1526 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1528 LOADK                            R8 K440 ["AssistantMaxDisplayTextChars"]
     1529 LOADK                            R9 K441 [100000]
     1530 CALL                             R7 2 1
     1531 CALL                             R7 0 1
     1532 SETTABLEKS                       R7 R4 K442 ["FIntAssistantMaxDisplayTextChars"]
     1534 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1536 LOADK                            R8 K443 ["AssistantMaxToolInputStringLen"]
     1537 LOADN                            R9 2000
     1538 CALL                             R7 2 1
     1539 CALL                             R7 0 1
     1540 SETTABLEKS                       R7 R4 K444 ["FIntAssistantMaxToolInputStringLen"]
     1542 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1544 LOADK                            R8 K445 ["AssistantMeshGenMaxTrianglesDefault"]
     1545 LOADN                            R9 10000
     1546 CALL                             R7 2 1
     1547 CALL                             R7 0 1
     1548 SETTABLEKS                       R7 R4 K446 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1550 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1552 LOADK                            R8 K447 ["AssistantMinPopoverHeight"]
     1553 LOADN                            R9 150
     1554 CALL                             R7 2 1
     1555 CALL                             R7 0 1
     1556 SETTABLEKS                       R7 R4 K448 ["FIntAssistantMinPopoverHeight"]
     1558 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1560 LOADK                            R8 K449 ["AssistantOpenCloudInvokeMaxFileSize"]
     1561 LOADK                            R9 K450 [20971520]
     1562 CALL                             R7 2 1
     1563 CALL                             R7 0 1
     1564 SETTABLEKS                       R7 R4 K451 ["FIntAssistantOpenCloudInvokeMaxFileSize"]
     1566 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1568 LOADK                            R8 K452 ["AssistantPersistenceMessageLoadLimit"]
     1569 LOADN                            R9 5
     1570 CALL                             R7 2 1
     1571 CALL                             R7 0 1
     1572 SETTABLEKS                       R7 R4 K453 ["FIntAssistantPersistenceMessageLoadLimit"]
     1574 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1576 LOADK                            R8 K454 ["AssistantPersistenceThreadLoadLimit"]
     1577 LOADN                            R9 5
     1578 CALL                             R7 2 1
     1579 CALL                             R7 0 1
     1580 SETTABLEKS                       R7 R4 K455 ["FIntAssistantPersistenceThreadLoadLimit"]
     1582 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1584 LOADK                            R8 K456 ["AssistantPostTurnRefreshDelaySeconds"]
     1585 LOADN                            R9 2
     1586 CALL                             R7 2 1
     1587 CALL                             R7 0 1
     1588 SETTABLEKS                       R7 R4 K457 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1590 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1592 LOADK                            R8 K458 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1593 LOADN                            R9 999
     1594 CALL                             R7 2 1
     1595 CALL                             R7 0 1
     1596 SETTABLEKS                       R7 R4 K459 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1598 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1600 LOADK                            R8 K460 ["AssistantPrimitiveGenPollIntervalMs"]
     1601 LOADN                            R9 2000
     1602 CALL                             R7 2 1
     1603 CALL                             R7 0 1
     1604 SETTABLEKS                       R7 R4 K461 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1606 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1608 LOADK                            R8 K462 ["AssistantProcessEventTimeoutMS"]
     1609 LOADK                            R9 K463 [60000]
     1610 CALL                             R7 2 1
     1611 CALL                             R7 0 1
     1612 SETTABLEKS                       R7 R4 K464 ["FIntAssistantProcessEventTimeoutMS"]
     1614 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1616 LOADK                            R8 K465 ["AssistantSegmentMeshMaxUserParts"]
     1617 LOADN                            R9 16
     1618 CALL                             R7 2 1
     1619 CALL                             R7 0 1
     1620 SETTABLEKS                       R7 R4 K466 ["FIntAssistantSegmentMeshMaxUserParts"]
     1622 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1624 LOADK                            R8 K467 ["ConvAIMaxHistoryCount"]
     1625 LOADN                            R9 6
     1626 CALL                             R7 2 1
     1627 CALL                             R7 0 1
     1628 SETTABLEKS                       R7 R4 K468 ["FIntConvAIMaxHistoryCount"]
     1630 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1632 LOADK                            R8 K469 ["ExecuteLuauMaxJsonLength"]
     1633 LOADK                            R9 K441 [100000]
     1634 CALL                             R7 2 1
     1635 CALL                             R7 0 1
     1636 SETTABLEKS                       R7 R4 K470 ["FIntExecuteLuauMaxJsonLength"]
     1638 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1640 LOADK                            R8 K471 ["ExecuteLuauMaxStringLength"]
     1641 LOADK                            R9 K441 [100000]
     1642 CALL                             R7 2 1
     1643 CALL                             R7 0 1
     1644 SETTABLEKS                       R7 R4 K472 ["FIntExecuteLuauMaxStringLength"]
     1646 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1648 LOADK                            R8 K473 ["FromHistoryMaxResultChars"]
     1649 LOADK                            R9 K474 [200000]
     1650 CALL                             R7 2 1
     1651 CALL                             R7 0 1
     1652 SETTABLEKS                       R7 R4 K475 ["FIntFromHistoryMaxResultChars"]
     1654 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1656 LOADK                            R8 K476 ["GameTreeDefaultHeadLimit"]
     1657 LOADN                            R9 200
     1658 CALL                             R7 2 1
     1659 CALL                             R7 0 1
     1660 SETTABLEKS                       R7 R4 K477 ["FIntGameTreeDefaultHeadLimit"]
     1662 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1664 LOADK                            R8 K478 ["GameTreeDefaultMaxDepth"]
     1665 LOADN                            R9 3
     1666 CALL                             R7 2 1
     1667 CALL                             R7 0 1
     1668 SETTABLEKS                       R7 R4 K479 ["FIntGameTreeDefaultMaxDepth"]
     1670 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1672 LOADK                            R8 K480 ["GameTreeMaxAbsoluteDepth"]
     1673 LOADN                            R9 10
     1674 CALL                             R7 2 1
     1675 CALL                             R7 0 1
     1676 SETTABLEKS                       R7 R4 K481 ["FIntGameTreeMaxAbsoluteDepth"]
     1678 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1680 LOADK                            R8 K482 ["GameTreeYieldCheckInterval"]
     1681 LOADN                            R9 100
     1682 CALL                             R7 2 1
     1683 CALL                             R7 0 1
     1684 SETTABLEKS                       R7 R4 K483 ["FIntGameTreeYieldCheckInterval"]
     1686 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1688 LOADK                            R8 K484 ["GameTreeYieldFps"]
     1689 LOADN                            R9 60
     1690 CALL                             R7 2 1
     1691 CALL                             R7 0 1
     1692 SETTABLEKS                       R7 R4 K485 ["FIntGameTreeYieldFps"]
     1694 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1696 LOADK                            R8 K486 ["InspectInstanceMaxJsonLength"]
     1697 LOADN                            R9 500
     1698 CALL                             R7 2 1
     1699 CALL                             R7 0 1
     1700 SETTABLEKS                       R7 R4 K487 ["FIntInspectInstanceMaxJsonLength"]
     1702 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1704 LOADK                            R8 K488 ["InspectInstanceMaxMatches"]
     1705 LOADN                            R9 20
     1706 CALL                             R7 2 1
     1707 CALL                             R7 0 1
     1708 SETTABLEKS                       R7 R4 K489 ["FIntInspectInstanceMaxMatches"]
     1710 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1712 LOADK                            R8 K490 ["InspectInstanceMaxStringLength"]
     1713 LOADN                            R9 1000
     1714 CALL                             R7 2 1
     1715 CALL                             R7 0 1
     1716 SETTABLEKS                       R7 R4 K491 ["FIntInspectInstanceMaxStringLength"]
     1718 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1720 LOADK                            R8 K492 ["MCPAssistantGenerationIndicatorWarningTime"]
     1721 LOADN                            R9 10
     1722 CALL                             R7 2 1
     1723 CALL                             R7 0 1
     1724 SETTABLEKS                       R7 R4 K493 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1726 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1728 LOADK                            R8 K494 ["MCPAssistantInputAreaCharLimit"]
     1729 LOADN                            R9 4000
     1730 CALL                             R7 2 1
     1731 CALL                             R7 0 1
     1732 SETTABLEKS                       R7 R4 K495 ["FIntMCPAssistantInputAreaCharLimit"]
     1734 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1736 LOADK                            R8 K496 ["MCPAssistantMaxPromptHistory"]
     1737 LOADN                            R9 20
     1738 CALL                             R7 2 1
     1739 CALL                             R7 0 1
     1740 SETTABLEKS                       R7 R4 K497 ["FIntMCPAssistantMaxPromptHistory"]
     1742 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1744 LOADK                            R8 K498 ["MCPAssistantMaxToolCalls"]
     1745 LOADN                            R9 20
     1746 CALL                             R7 2 1
     1747 CALL                             R7 0 1
     1748 SETTABLEKS                       R7 R4 K499 ["FIntMCPAssistantMaxToolCalls"]
     1750 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1752 LOADK                            R8 K500 ["MinimumAssistantFreeTrialRemaining"]
     1753 LOADN                            R9 1
     1754 CALL                             R7 2 1
     1755 CALL                             R7 0 1
     1756 SETTABLEKS                       R7 R4 K501 ["FIntMinimumAssistantFreeTrialRemaining"]
     1758 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1760 LOADK                            R8 K502 ["MinimumAssistantRobuxBalance"]
     1761 LOADN                            R9 100
     1762 CALL                             R7 2 1
     1763 CALL                             R7 0 1
     1764 SETTABLEKS                       R7 R4 K503 ["FIntMinimumAssistantRobuxBalance"]
     1766 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1768 LOADK                            R8 K504 ["PlaytestLookBudget"]
     1769 LOADN                            R9 7
     1770 CALL                             R7 2 1
     1771 CALL                             R7 0 1
     1772 SETTABLEKS                       R7 R4 K505 ["FIntPlaytestLookBudget"]
     1774 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1776 LOADK                            R8 K506 ["PlaytestLookTimeoutMs"]
     1777 LOADK                            R9 K463 [60000]
     1778 CALL                             R7 2 1
     1779 CALL                             R7 0 1
     1780 SETTABLEKS                       R7 R4 K507 ["FIntPlaytestLookTimeoutMs"]
     1782 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1784 LOADK                            R8 K508 ["PlaytestMaxToolCalls"]
     1785 LOADN                            R9 50
     1786 CALL                             R7 2 1
     1787 CALL                             R7 0 1
     1788 SETTABLEKS                       R7 R4 K509 ["FIntPlaytestMaxToolCalls"]
     1790 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1792 LOADK                            R8 K510 ["PrimGenLongRunThresholdSec"]
     1793 LOADN                            R9 120
     1794 CALL                             R7 2 1
     1795 CALL                             R7 0 1
     1796 SETTABLEKS                       R7 R4 K511 ["FIntPrimGenLongRunThresholdSec"]
     1798 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1800 LOADK                            R8 K512 ["PrimGenTextMaxLength"]
     1801 LOADN                            R9 80
     1802 CALL                             R7 2 1
     1803 CALL                             R7 0 1
     1804 SETTABLEKS                       R7 R4 K513 ["FIntPrimGenTextMaxLength"]
     1806 GETTABLEKS                       R7 R3 K421 ["createGetFInt"]
     1808 LOADK                            R8 K514 ["UnitTestSubagentMaxToolCalls"]
     1809 LOADN                            R9 100
     1810 CALL                             R7 2 1
     1811 CALL                             R7 0 1
     1812 SETTABLEKS                       R7 R4 K515 ["FIntUnitTestSubagentMaxToolCalls"]
     1814 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1816 LOADK                            R8 K517 ["AssistantDebugCreditMeteringBlockReason"]
     1817 LOADK                            R9 K518 [""]
     1818 CALL                             R7 2 1
     1819 CALL                             R7 0 1
     1820 SETTABLEKS                       R7 R4 K519 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1822 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1824 LOADK                            R8 K520 ["AssistantDisabledSubagents"]
     1825 LOADK                            R9 K518 [""]
     1826 CALL                             R7 2 1
     1827 CALL                             R7 0 1
     1828 SETTABLEKS                       R7 R4 K521 ["FStringAssistantDisabledSubagents"]
     1830 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1832 LOADK                            R8 K522 ["AssistantGen3dDefaultModel"]
     1833 LOADK                            R9 K523 ["Assistant/glm51-h200"]
     1834 CALL                             R7 2 1
     1835 CALL                             R7 0 1
     1836 SETTABLEKS                       R7 R4 K524 ["FStringAssistantGen3dDefaultModel"]
     1838 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1840 LOADK                            R8 K525 ["AssistantJobRunTools"]
     1841 LOADK                            R9 K526 ["generate_procedural_model,generate_mesh,generate_material,generate_avatar,generate_scene"]
     1842 CALL                             R7 2 1
     1843 CALL                             R7 0 1
     1844 SETTABLEKS                       R7 R4 K527 ["FStringAssistantJobRunTools"]
     1846 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1848 LOADK                            R8 K528 ["AssistantMeshGenImageGenModelOverride"]
     1849 LOADK                            R9 K529 ["gemini"]
     1850 CALL                             R7 2 1
     1851 CALL                             R7 0 1
     1852 SETTABLEKS                       R7 R4 K530 ["FStringAssistantMeshGenImageGenModelOverride"]
     1854 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1856 LOADK                            R8 K531 ["AssistantMeshGenImageGenPromptTemplate"]
     1857 LOADK                            R9 K518 [""]
     1858 CALL                             R7 2 1
     1859 CALL                             R7 0 1
     1860 SETTABLEKS                       R7 R4 K532 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1862 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1864 LOADK                            R8 K533 ["AssistantMeshGenInferenceServiceOverride"]
     1865 LOADK                            R9 K534 ["stage-diff-mesh-gen"]
     1866 CALL                             R7 2 1
     1867 CALL                             R7 0 1
     1868 SETTABLEKS                       R7 R4 K535 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1870 GETIMPORT                        R7 K5 [require]
     1872 GETTABLEKS                       R8 R0 K536 ["FlagUtils"]
     1874 GETTABLEKS                       R8 R8 K537 ["createGetFStringAssistantMeshGenSchemaData"]
     1876 CALL                             R7 1 1
     1877 CALL                             R7 0 1
     1878 SETTABLEKS                       R7 R4 K538 ["FStringAssistantMeshGenSchemaData"]
     1880 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1882 LOADK                            R8 K539 ["AssistantModerateErrorMsg"]
     1883 LOADK                            R9 K540 ["prompt violates Roblox safety policy"]
     1884 CALL                             R7 2 1
     1885 CALL                             R7 0 1
     1886 SETTABLEKS                       R7 R4 K541 ["FStringAssistantModerateErrorMsg"]
     1888 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1890 LOADK                            R8 K542 ["AssistantSkillsAllowlist"]
     1891 LOADK                            R9 K543 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false, import-asset: true"]
     1892 CALL                             R7 2 1
     1893 CALL                             R7 0 1
     1894 SETTABLEKS                       R7 R4 K544 ["FStringAssistantSkillsAllowlist"]
     1896 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1898 LOADK                            R8 K545 ["AssistantTestLLMReasoningEffort"]
     1899 LOADK                            R9 K546 ["high"]
     1900 CALL                             R7 2 1
     1901 CALL                             R7 0 1
     1902 SETTABLEKS                       R7 R4 K547 ["FStringAssistantTestLLMReasoningEffort"]
     1904 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1906 LOADK                            R8 K548 ["AssistantToolsExcludedDirectories"]
     1907 LOADK                            R9 K549 ["CoreGui,PlayerGui,LoadedCode"]
     1908 CALL                             R7 2 1
     1909 CALL                             R7 0 1
     1910 SETTABLEKS                       R7 R4 K550 ["FStringAssistantToolsExcludedDirectories"]
     1912 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1914 LOADK                            R8 K551 ["AssistantToolWidgetMappings"]
     1915 LOADK                            R9 K518 [""]
     1916 CALL                             R7 2 1
     1917 CALL                             R7 0 1
     1918 SETTABLEKS                       R7 R4 K552 ["FStringAssistantToolWidgetMappings"]
     1920 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1922 LOADK                            R8 K553 ["AssistantUnitTestSubagentModel"]
     1923 LOADK                            R9 K554 ["Assistant/glm5"]
     1924 CALL                             R7 2 1
     1925 CALL                             R7 0 1
     1926 SETTABLEKS                       R7 R4 K555 ["FStringAssistantUnitTestSubagentModel"]
     1928 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1930 LOADK                            R8 K556 ["AssistantUntitledChatPlaceholderText"]
     1931 LOADK                            R9 K557 ["Untitled Chat"]
     1932 CALL                             R7 2 1
     1933 CALL                             R7 0 1
     1934 SETTABLEKS                       R7 R4 K558 ["FStringAssistantUntitledChatPlaceholder"]
     1936 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1938 LOADK                            R8 K559 ["MCPAssistantAnthropicModels"]
     1939 LOADK                            R9 K560 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     1940 CALL                             R7 2 1
     1941 CALL                             R7 0 1
     1942 SETTABLEKS                       R7 R4 K561 ["FStringMCPAssistantAnthropicModels"]
     1944 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1946 LOADK                            R8 K562 ["MCPAssistantClaudeAPIKey"]
     1947 LOADK                            R9 K518 [""]
     1948 CALL                             R7 2 1
     1949 CALL                             R7 0 1
     1950 SETTABLEKS                       R7 R4 K563 ["FStringMCPAssistantClaudeAPIKey"]
     1952 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1954 LOADK                            R8 K564 ["MCPAssistantCustomModelName"]
     1955 LOADK                            R9 K518 [""]
     1956 CALL                             R7 2 1
     1957 CALL                             R7 0 1
     1958 SETTABLEKS                       R7 R4 K565 ["FStringMCPAssistantCustomModelName"]
     1960 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1962 LOADK                            R8 K566 ["MCPAssistantGeminiAPIKey"]
     1963 LOADK                            R9 K518 [""]
     1964 CALL                             R7 2 1
     1965 CALL                             R7 0 1
     1966 SETTABLEKS                       R7 R4 K567 ["FStringMCPAssistantGeminiAPIKey"]
     1968 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1970 LOADK                            R8 K568 ["MCPAssistantGeminiModels"]
     1971 LOADK                            R9 K569 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     1972 CALL                             R7 2 1
     1973 CALL                             R7 0 1
     1974 SETTABLEKS                       R7 R4 K570 ["FStringMCPAssistantGeminiModels"]
     1976 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1978 LOADK                            R8 K571 ["MCPAssistantOpenAIAPIKey"]
     1979 LOADK                            R9 K518 [""]
     1980 CALL                             R7 2 1
     1981 CALL                             R7 0 1
     1982 SETTABLEKS                       R7 R4 K572 ["FStringMCPAssistantOpenAIAPIKey"]
     1984 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1986 LOADK                            R8 K573 ["MCPAssistantOpenAIModels"]
     1987 LOADK                            R9 K574 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     1988 CALL                             R7 2 1
     1989 CALL                             R7 0 1
     1990 SETTABLEKS                       R7 R4 K575 ["FStringMCPAssistantOpenAIModels"]
     1992 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     1994 LOADK                            R8 K576 ["MCPAssistantOpenAIReasoningEffort"]
     1995 LOADK                            R9 K518 [""]
     1996 CALL                             R7 2 1
     1997 CALL                             R7 0 1
     1998 SETTABLEKS                       R7 R4 K577 ["FStringMCPAssistantOpenAIReasoningEffort"]
     2000 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2002 LOADK                            R8 K578 ["MCPAssistantPrimitiveGenServerURL"]
     2003 LOADK                            R9 K518 [""]
     2004 CALL                             R7 2 1
     2005 CALL                             R7 0 1
     2006 SETTABLEKS                       R7 R4 K579 ["FStringMCPAssistantPrimitiveGenServerURL"]
     2008 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2010 LOADK                            R8 K580 ["MCPAssistantTestLLMAPIKey"]
     2011 LOADK                            R9 K518 [""]
     2012 CALL                             R7 2 1
     2013 CALL                             R7 0 1
     2014 SETTABLEKS                       R7 R4 K581 ["FStringMCPAssistantTestLLMAPIKey"]
     2016 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2018 LOADK                            R8 K582 ["MCPAssistantURLOverride"]
     2019 LOADK                            R9 K518 [""]
     2020 CALL                             R7 2 1
     2021 CALL                             R7 0 1
     2022 SETTABLEKS                       R7 R4 K583 ["FStringMCPAssistantURLOverride"]
     2024 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2026 LOADK                            R8 K584 ["MCPDocsUrl"]
     2027 LOADK                            R9 K585 ["https://create.roblox.com/docs/studio/mcp/"]
     2028 CALL                             R7 2 1
     2029 CALL                             R7 0 1
     2030 SETTABLEKS                       R7 R4 K586 ["FStringMCPDocsUrl"]
     2032 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2034 LOADK                            R8 K587 ["PlaytestConversationURL"]
     2035 LOADK                            R9 K588 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     2036 CALL                             R7 2 1
     2037 CALL                             R7 0 1
     2038 SETTABLEKS                       R7 R4 K589 ["FStringPlaytestConversationURL"]
     2040 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2042 LOADK                            R8 K590 ["PlaytestModelName"]
     2043 LOADK                            R9 K591 ["Qwen/Qwen35-35B-A3B"]
     2044 CALL                             R7 2 1
     2045 CALL                             R7 0 1
     2046 SETTABLEKS                       R7 R4 K592 ["FStringPlaytestModelName"]
     2048 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2050 LOADK                            R8 K593 ["PrimGenImageGenPromptTemplate"]
     2051 LOADK                            R9 K518 [""]
     2052 CALL                             R7 2 1
     2053 CALL                             R7 0 1
     2054 SETTABLEKS                       R7 R4 K594 ["FStringPrimGenImageGenPromptTemplate"]
     2056 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2058 LOADK                            R8 K595 ["ProceduralScriptCapabilities"]
     2059 LOADK                            R9 K596 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     2060 CALL                             R7 2 1
     2061 CALL                             R7 0 1
     2062 SETTABLEKS                       R7 R4 K597 ["FStringProceduralScriptCapabilities"]
     2064 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2066 LOADK                            R8 K598 ["ScreenCaptureFormat"]
     2067 LOADK                            R9 K518 [""]
     2068 CALL                             R7 2 1
     2069 CALL                             R7 0 1
     2070 SETTABLEKS                       R7 R4 K599 ["FStringScreenCaptureFormat"]
     2072 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2074 LOADK                            R8 K600 ["ScreenCaptureSize"]
     2075 LOADK                            R9 K518 [""]
     2076 CALL                             R7 2 1
     2077 CALL                             R7 0 1
     2078 SETTABLEKS                       R7 R4 K601 ["FStringScreenCaptureSize"]
     2080 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2082 LOADK                            R8 K602 ["ScreenCaptureSubagentModelName"]
     2083 LOADK                            R9 K518 [""]
     2084 CALL                             R7 2 1
     2085 CALL                             R7 0 1
     2086 SETTABLEKS                       R7 R4 K603 ["FStringScreenCaptureSubagentModelName"]
     2088 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2090 LOADK                            R8 K604 ["SegmentByPartsBetaFeatureUrl"]
     2091 LOADK                            R9 K518 [""]
     2092 CALL                             R7 2 1
     2093 CALL                             R7 0 1
     2094 SETTABLEKS                       R7 R4 K605 ["FStringSegmentByPartsBetaFeatureUrl"]
     2096 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2098 LOADK                            R8 K606 ["SubagentExploreModelName"]
     2099 LOADK                            R9 K607 ["Assistant/glm5-b200-server-1"]
     2100 CALL                             R7 2 1
     2101 CALL                             R7 0 1
     2102 SETTABLEKS                       R7 R4 K608 ["FStringSubagentExploreModelName"]
     2104 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2106 LOADK                            R8 K609 ["SubagentURLOverride"]
     2107 LOADK                            R9 K518 [""]
     2108 CALL                             R7 2 1
     2109 CALL                             R7 0 1
     2110 SETTABLEKS                       R7 R4 K610 ["FStringSubagentURLOverride"]
     2112 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2114 LOADK                            R8 K611 ["TestLLMURLOverride"]
     2115 LOADK                            R9 K518 [""]
     2116 CALL                             R7 2 1
     2117 CALL                             R7 0 1
     2118 SETTABLEKS                       R7 R4 K612 ["FStringTestLLMURLOverride"]
     2120 GETTABLEKS                       R7 R3 K516 ["createGetFString"]
     2122 LOADK                            R8 K613 ["TestSubagentURLOverride"]
     2123 LOADK                            R9 K518 [""]
     2124 CALL                             R7 2 1
     2125 CALL                             R7 0 1
     2126 SETTABLEKS                       R7 R4 K614 ["FStringTestSubagentURLOverride"]
     2128 DUPTABLE                         R9 K616 [{"__index", "__newindex"}]
     2129 SETTABLEKS                       R2 R9 K615 ["__index"]
     2131 SETTABLEKS                       R2 R9 K11 ["__newindex"]
     2133 FASTCALL2                        SETMETATABLE R4 R9 ; [+4]
     2135 MOVE                             R8 R4
     2136 GETIMPORT                        R7 K15 [setmetatable]
     2138 CALL                             R7 2 1
     2139 RETURN                           R7 1
