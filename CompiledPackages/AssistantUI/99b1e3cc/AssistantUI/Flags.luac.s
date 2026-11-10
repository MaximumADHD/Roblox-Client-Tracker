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
       42 GETTABLEKS                       R7 R3 K16 ["createGetFFlag"]
       44 LOADK                            R8 K20 ["AssistantStartMcpServerWithoutUI"]
       45 CALL                             R7 1 1
       46 CALL                             R7 0 1
       47 GETTABLEKS                       R8 R3 K21 ["createGetDFString"]
       49 LOADK                            R9 K22 ["GenerationServiceSchemaDefinitionPartsKey"]
       50 LOADK                            R10 K23 ["Groups"]
       51 CALL                             R8 2 1
       52 CALL                             R8 0 1
       53 SETTABLEKS                       R8 R4 K24 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       55 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       57 LOADK                            R9 K26 ["AssistantBridgeStandalone"]
       58 CALL                             R8 1 1
       59 CALL                             R8 0 1
       60 SETTABLEKS                       R8 R4 K27 ["EngineFeatureAssistantBridgeStandalone"]
       62 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       64 LOADK                            R9 K28 ["AssistantEnableAnimationGeneration"]
       65 CALL                             R8 1 1
       66 CALL                             R8 0 1
       67 SETTABLEKS                       R8 R4 K29 ["EngineFeatureAssistantEnableAnimationGeneration"]
       69 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       71 LOADK                            R9 K30 ["AssistantExecuteLuauArguments"]
       72 CALL                             R8 1 1
       73 CALL                             R8 0 1
       74 SETTABLEKS                       R8 R4 K31 ["EngineFeatureAssistantExecuteLuauArguments"]
       76 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       78 LOADK                            R9 K32 ["AssistantGen3dImagePreview"]
       79 CALL                             R8 1 1
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R4 K33 ["EngineFeatureAssistantGen3dImagePreview"]
       83 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       85 LOADK                            R9 K34 ["AssistantMCPProxyTokenEnabled"]
       86 CALL                             R8 1 1
       87 CALL                             R8 0 1
       88 SETTABLEKS                       R8 R4 K35 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
       90 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       92 LOADK                            R9 K36 ["AssistantMcpCaptureHook"]
       93 CALL                             R8 1 1
       94 CALL                             R8 0 1
       95 SETTABLEKS                       R8 R4 K37 ["EngineFeatureAssistantMcpCaptureHook"]
       97 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       99 LOADK                            R9 K38 ["StudioAssistantMcpOriginated"]
      100 CALL                             R8 1 1
      101 CALL                             R8 0 1
      102 SETTABLEKS                       R8 R4 K39 ["EngineFeatureStudioAssistantMcpOriginated"]
      104 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      106 LOADK                            R9 K40 ["StudioPanelsResolveFullPluginGuiId"]
      107 CALL                             R8 1 1
      108 CALL                             R8 0 1
      109 SETTABLEKS                       R8 R4 K41 ["EngineFeatureStudioPanelsResolveFullPluginGuiId"]
      111 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      113 LOADK                            R9 K42 ["StudioPlaceSaver"]
      114 CALL                             R8 1 1
      115 CALL                             R8 0 1
      116 SETTABLEKS                       R8 R4 K43 ["EngineFeatureStudioPlaceSaver"]
      118 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      120 LOADK                            R9 K44 ["StudioPluginCaptureFromOwnWindow"]
      121 CALL                             R8 1 1
      122 CALL                             R8 0 1
      123 SETTABLEKS                       R8 R4 K45 ["EngineFeatureStudioPluginCaptureFromOwnWindow"]
      125 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      127 LOADK                            R9 K46 ["AllowThreadSuspendOverride"]
      128 CALL                             R8 1 1
      129 CALL                             R8 0 1
      130 SETTABLEKS                       R8 R4 K47 ["FFlagAllowThreadSuspendOverride"]
      132 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      134 LOADK                            R9 K48 ["AnimationGenOpenACE2"]
      135 CALL                             R8 1 1
      136 CALL                             R8 0 1
      137 SETTABLEKS                       R8 R4 K49 ["FFlagAnimationGenOpenACE"]
      139 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      141 LOADK                            R9 K50 ["AssistantACPBatchHistoryReplay"]
      142 CALL                             R8 1 1
      143 CALL                             R8 0 1
      144 SETTABLEKS                       R8 R4 K51 ["FFlagAssistantACPBatchHistoryReplay"]
      146 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      148 LOADK                            R9 K52 ["AssistantACPFixPendingToolCall2"]
      149 CALL                             R8 1 1
      150 CALL                             R8 0 1
      151 SETTABLEKS                       R8 R4 K53 ["FFlagAssistantACPFixPendingToolCall"]
      153 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      155 LOADK                            R9 K54 ["AssistantAddNumberInput"]
      156 CALL                             R8 1 1
      157 CALL                             R8 0 1
      158 SETTABLEKS                       R8 R4 K55 ["FFlagAssistantAddNumberInput"]
      160 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      162 LOADK                            R9 K56 ["AssistantAddPlaceholderProp"]
      163 CALL                             R8 1 1
      164 CALL                             R8 0 1
      165 SETTABLEKS                       R8 R4 K57 ["FFlagAssistantAddPlaceholderProp"]
      167 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      169 LOADK                            R9 K58 ["AssistantAnimationGenPluginGate"]
      170 CALL                             R8 1 1
      171 CALL                             R8 0 1
      172 SETTABLEKS                       R8 R4 K59 ["FFlagAssistantAnimationGenPluginGate"]
      174 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      176 LOADK                            R9 K60 ["AssistantAnimationGenCombinedDragger"]
      177 CALL                             R8 1 1
      178 CALL                             R8 0 1
      179 SETTABLEKS                       R8 R4 K61 ["FFlagAssistantAnimationGenCombinedDragger"]
      181 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      183 LOADK                            R9 K62 ["AssistantAnimationGenDisablePreviewSelectionFollowing"]
      184 CALL                             R8 1 1
      185 CALL                             R8 0 1
      186 SETTABLEKS                       R8 R4 K63 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
      188 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      190 LOADK                            R9 K64 ["AssistantAnimationGenEnablePublishForMCP"]
      191 CALL                             R8 1 1
      192 CALL                             R8 0 1
      193 SETTABLEKS                       R8 R4 K65 ["FFlagAssistantAnimationGenEnablePublishForMCP"]
      195 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      197 LOADK                            R9 K66 ["AssistantAnimationGenFixPoseSelect"]
      198 CALL                             R8 1 1
      199 CALL                             R8 0 1
      200 SETTABLEKS                       R8 R4 K67 ["FFlagAssistantAnimationGenFixPoseSelect"]
      202 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      204 LOADK                            R9 K68 ["AssistantAnimationGenAlwaysShowFades"]
      205 CALL                             R8 1 1
      206 CALL                             R8 0 1
      207 SETTABLEKS                       R8 R4 K69 ["FFlagAssistantAnimationGenAlwaysShowFades"]
      209 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      211 LOADK                            R9 K70 ["AssistantAnimationGenForwardPromptVerbatim"]
      212 CALL                             R8 1 1
      213 CALL                             R8 0 1
      214 SETTABLEKS                       R8 R4 K71 ["FFlagAssistantAnimationGenForwardPromptVerbatim"]
      216 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      218 LOADK                            R9 K72 ["AssistantAnimationGenMoveKeyframeKeepRoot"]
      219 CALL                             R8 1 1
      220 CALL                             R8 0 1
      221 SETTABLEKS                       R8 R4 K73 ["FFlagAssistantAnimationGenMoveKeyframeKeepRoot"]
      223 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      225 LOADK                            R9 K74 ["AssistantAnimationGenPausePlaybackOnCollapse"]
      226 CALL                             R8 1 1
      227 CALL                             R8 0 1
      228 SETTABLEKS                       R8 R4 K75 ["FFlagAssistantAnimationGenPausePlaybackOnCollapse"]
      230 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      232 LOADK                            R9 K76 ["AssistantAnimationGenPausePlaybackOnUnmount"]
      233 CALL                             R8 1 1
      234 CALL                             R8 0 1
      235 SETTABLEKS                       R8 R4 K77 ["FFlagAssistantAnimationGenPausePlaybackOnUnmount"]
      237 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      239 LOADK                            R9 K78 ["AssistantAnimationGenRotationIntentV3"]
      240 CALL                             R8 1 1
      241 CALL                             R8 0 1
      242 SETTABLEKS                       R8 R4 K79 ["FFlagAssistantAnimationGenRotationIntentV3"]
      244 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      246 LOADK                            R9 K80 ["AssistantAnimationGenShowPublishButton"]
      247 CALL                             R8 1 1
      248 CALL                             R8 0 1
      249 SETTABLEKS                       R8 R4 K81 ["FFlagAssistantAnimationGenShowPublishButton"]
      251 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      253 LOADK                            R9 K82 ["AssistantAnimationGenTelemetry"]
      254 CALL                             R8 1 1
      255 CALL                             R8 0 1
      256 SETTABLEKS                       R8 R4 K83 ["FFlagAssistantAnimationGenTelemetry"]
      258 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      260 LOADK                            R9 K84 ["AssistantAnimationGenSnapToEditedPoses"]
      261 CALL                             R8 1 1
      262 CALL                             R8 0 1
      263 SETTABLEKS                       R8 R4 K85 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
      265 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      267 LOADK                            R9 K86 ["AssistantAnimationGenSolveRetargetedPoses"]
      268 CALL                             R8 1 1
      269 CALL                             R8 0 1
      270 SETTABLEKS                       R8 R4 K87 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
      272 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      274 LOADK                            R9 K88 ["AssistantAnimationGenCustomRigPosing"]
      275 CALL                             R8 1 1
      276 CALL                             R8 0 1
      277 SETTABLEKS                       R8 R4 K89 ["FFlagAssistantAnimationGenCustomRigPosing"]
      279 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      281 LOADK                            R9 K90 ["AssistantAnimationGenUndoRedo"]
      282 CALL                             R8 1 1
      283 CALL                             R8 0 1
      284 SETTABLEKS                       R8 R4 K91 ["FFlagAssistantAnimationGenUndoRedo"]
      286 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      288 LOADK                            R9 K92 ["AssistantAnimationGenSolveLimbRoots"]
      289 CALL                             R8 1 1
      290 CALL                             R8 0 1
      291 SETTABLEKS                       R8 R4 K93 ["FFlagAssistantAnimationGenSolveLimbRoots"]
      293 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      295 LOADK                            R9 K94 ["AssistantAnimationGenTurnOffRetargetingForR15Plus"]
      296 CALL                             R8 1 1
      297 CALL                             R8 0 1
      298 SETTABLEKS                       R8 R4 K95 ["FFlagAssistantAnimationGenTurnOffRetargetingForR15Plus"]
      300 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      302 LOADK                            R9 K96 ["AssistantAnimationGenPoseR15PlusJoints"]
      303 CALL                             R8 1 1
      304 CALL                             R8 0 1
      305 SETTABLEKS                       R8 R4 K97 ["FFlagAssistantAnimationGenPoseR15PlusJoints"]
      307 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      309 LOADK                            R9 K98 ["AssistantAnimationGenTool"]
      310 CALL                             R8 1 1
      311 CALL                             R8 0 1
      312 SETTABLEKS                       R8 R4 K99 ["FFlagAssistantAnimationGenTool"]
      314 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      316 LOADK                            R9 K100 ["AssistantAnimationGenRemoveEditFormPrompt"]
      317 CALL                             R8 1 1
      318 CALL                             R8 0 1
      319 SETTABLEKS                       R8 R4 K101 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      321 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      323 LOADK                            R9 K102 ["AssistantAnimationGenShowThoughts"]
      324 CALL                             R8 1 1
      325 CALL                             R8 0 1
      326 SETTABLEKS                       R8 R4 K103 ["FFlagAssistantAnimationGenShowThoughts"]
      328 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      330 LOADK                            R9 K104 ["AssistantAskInputExpandableRows"]
      331 CALL                             R8 1 1
      332 CALL                             R8 0 1
      333 SETTABLEKS                       R8 R4 K105 ["FFlagAssistantAskInputExpandableRows"]
      335 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      337 LOADK                            R9 K106 ["AssistantAskInputFooterResolver"]
      338 CALL                             R8 1 1
      339 CALL                             R8 0 1
      340 SETTABLEKS                       R8 R4 K107 ["FFlagAssistantAskInputFooterResolver"]
      342 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      344 LOADK                            R9 K108 ["AssistantAskInputRequiredMarkers"]
      345 CALL                             R8 1 1
      346 CALL                             R8 0 1
      347 SETTABLEKS                       R8 R4 K109 ["FFlagAssistantAskInputRequiredMarkers"]
      349 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      351 LOADK                            R9 K110 ["AssistantAskInputToolLLM2"]
      352 CALL                             R8 1 1
      353 CALL                             R8 0 1
      354 SETTABLEKS                       R8 R4 K111 ["FFlagAssistantAskInputToolLLM"]
      356 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      358 LOADK                            R9 K112 ["AssistantAssetSearchCreatorStoreUtm"]
      359 CALL                             R8 1 1
      360 CALL                             R8 0 1
      361 SETTABLEKS                       R8 R4 K113 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      363 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      365 LOADK                            R9 K114 ["AssistantAssetSearchDirectInsert"]
      366 CALL                             R8 1 1
      367 CALL                             R8 0 1
      368 SETTABLEKS                       R8 R4 K115 ["FFlagAssistantAssetSearchDirectInsert"]
      370 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      372 LOADK                            R9 K116 ["AssistantAssetTileNamePreview"]
      373 CALL                             R8 1 1
      374 CALL                             R8 0 1
      375 SETTABLEKS                       R8 R4 K117 ["FFlagAssistantAssetTileNamePreview"]
      377 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      379 LOADK                            R9 K118 ["AssistantAvatarAutoSetupTool5"]
      380 CALL                             R8 1 1
      381 CALL                             R8 0 1
      382 SETTABLEKS                       R8 R4 K119 ["FFlagAssistantAvatarAutoSetupTool"]
      384 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      386 LOADK                            R9 K120 ["AssistantAvatarGenAccessoriesFromMeshParts"]
      387 CALL                             R8 1 1
      388 CALL                             R8 0 1
      389 SETTABLEKS                       R8 R4 K121 ["FFlagAssistantAvatarGenAccessoriesFromMeshParts"]
      391 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      393 LOADK                            R9 K122 ["AssistantAvatarGenCompactName"]
      394 CALL                             R8 1 1
      395 CALL                             R8 0 1
      396 SETTABLEKS                       R8 R4 K123 ["FFlagAssistantAvatarGenCompactName"]
      398 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      400 LOADK                            R9 K124 ["AssistantAvatarGenHumanoidRigDescription"]
      401 CALL                             R8 1 1
      402 CALL                             R8 0 1
      403 SETTABLEKS                       R8 R4 K125 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      405 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      407 LOADK                            R9 K126 ["AssistantAvatarGenPlaceWithoutRotation"]
      408 CALL                             R8 1 1
      409 CALL                             R8 0 1
      410 SETTABLEKS                       R8 R4 K127 ["FFlagAssistantAvatarGenPlaceWithoutRotation"]
      412 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      414 LOADK                            R9 K128 ["AssistantAvatarGenSlashCommand"]
      415 CALL                             R8 1 1
      416 CALL                             R8 0 1
      417 SETTABLEKS                       R8 R4 K129 ["FFlagAssistantAvatarGenSlashCommand"]
      419 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      421 LOADK                            R9 K130 ["AssistantAvatarGenTool"]
      422 CALL                             R8 1 1
      423 CALL                             R8 0 1
      424 SETTABLEKS                       R8 R4 K131 ["FFlagAssistantAvatarGenTool"]
      426 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      428 LOADK                            R9 K132 ["AssistantAvatarGenUsageTelemetry"]
      429 CALL                             R8 1 1
      430 CALL                             R8 0 1
      431 SETTABLEKS                       R8 R4 K133 ["FFlagAssistantAvatarGenUsageTelemetry"]
      433 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      435 LOADK                            R9 K134 ["AssistantBetaFeatureSkills"]
      436 CALL                             R8 1 1
      437 CALL                             R8 0 1
      438 SETTABLEKS                       R8 R4 K135 ["FFlagAssistantBetaFeatureSkills"]
      440 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      442 LOADK                            R9 K136 ["AssistantCapturePluginGuiFocusPanel"]
      443 CALL                             R8 1 1
      444 CALL                             R8 0 1
      445 SETTABLEKS                       R8 R4 K137 ["FFlagAssistantCapturePluginGuiFocusPanel"]
      447 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      449 LOADK                            R9 K138 ["AssistantCapturePluginGuiTool"]
      450 CALL                             R8 1 1
      451 CALL                             R8 0 1
      452 SETTABLEKS                       R8 R4 K139 ["FFlagAssistantCapturePluginGuiTool"]
      454 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      456 LOADK                            R9 K140 ["AssistantChatFollowBottomThreshold"]
      457 CALL                             R8 1 1
      458 CALL                             R8 0 1
      459 SETTABLEKS                       R8 R4 K141 ["FFlagAssistantChatFollowBottomThreshold"]
      461 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      463 LOADK                            R9 K142 ["AssistantCloseDropdownsOnWidgetHidden"]
      464 CALL                             R8 1 1
      465 CALL                             R8 0 1
      466 SETTABLEKS                       R8 R4 K143 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      468 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      470 LOADK                            R9 K144 ["AssistantConsoleOutputTailFromEnd2"]
      471 CALL                             R8 1 1
      472 CALL                             R8 0 1
      473 SETTABLEKS                       R8 R4 K145 ["FFlagAssistantConsoleOutputTailFromEnd"]
      475 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      477 LOADK                            R9 K146 ["AssistantContentRowHideNewButton"]
      478 CALL                             R8 1 1
      479 CALL                             R8 0 1
      480 SETTABLEKS                       R8 R4 K147 ["FFlagAssistantContentRowHideNewButton"]
      482 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      484 LOADK                            R9 K148 ["AssistantCreditMetering3"]
      485 CALL                             R8 1 1
      486 CALL                             R8 0 1
      487 SETTABLEKS                       R8 R4 K149 ["FFlagAssistantCreditMetering"]
      489 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      491 LOADK                            R9 K150 ["AssistantCreditMeteringAdditionalUsage"]
      492 LOADB                            R10 1
      493 CALL                             R8 2 1
      494 CALL                             R8 0 1
      495 SETTABLEKS                       R8 R4 K151 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      497 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      499 LOADK                            R9 K152 ["AssistantCreditMeteringInferBlockReason"]
      500 CALL                             R8 1 1
      501 CALL                             R8 0 1
      502 SETTABLEKS                       R8 R4 K153 ["FFlagAssistantCreditMeteringInferBlockReason"]
      504 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      506 LOADK                            R9 K154 ["AssistantCreditMeteringLocalBackend"]
      507 CALL                             R8 1 1
      508 CALL                             R8 0 1
      509 SETTABLEKS                       R8 R4 K155 ["FFlagAssistantCreditMeteringLocalBackend"]
      511 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      513 LOADK                            R9 K156 ["AssistantCreditMeteringLocalBackendExp"]
      514 CALL                             R8 1 1
      515 CALL                             R8 0 1
      516 SETTABLEKS                       R8 R4 K157 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      518 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      520 LOADK                            R9 K158 ["AssistantCreditMeteringResetPeriod"]
      521 CALL                             R8 1 1
      522 CALL                             R8 0 1
      523 SETTABLEKS                       R8 R4 K159 ["FFlagAssistantCreditMeteringResetPeriod"]
      525 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      527 LOADK                            R9 K160 ["AssistantDestroySessionMonitorsOnClose"]
      528 CALL                             R8 1 1
      529 CALL                             R8 0 1
      530 SETTABLEKS                       R8 R4 K161 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      532 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      534 LOADK                            R9 K162 ["AssistantDisableApplyEditDataModelAvailability"]
      535 CALL                             R8 1 1
      536 CALL                             R8 0 1
      537 SETTABLEKS                       R8 R4 K163 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      539 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      541 LOADK                            R9 K164 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      542 CALL                             R8 1 1
      543 CALL                             R8 0 1
      544 SETTABLEKS                       R8 R4 K165 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      546 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      548 LOADK                            R9 K166 ["AssistantDisableBranching"]
      549 CALL                             R8 1 1
      550 CALL                             R8 0 1
      551 SETTABLEKS                       R8 R4 K167 ["FFlagAssistantDisableBranching"]
      553 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      555 LOADK                            R9 K168 ["AssistantDisableSessionFilter"]
      556 CALL                             R8 1 1
      557 CALL                             R8 0 1
      558 SETTABLEKS                       R8 R4 K169 ["FFlagAssistantDisableSessionFilter"]
      560 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      562 LOADK                            R9 K170 ["AssistantEditScrubbarPropertyRow"]
      563 CALL                             R8 1 1
      564 CALL                             R8 0 1
      565 SETTABLEKS                       R8 R4 K171 ["FFlagAssistantEditScrubbarPropertyRow"]
      567 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      569 LOADK                            R9 K172 ["AssistantExecLuauYieldHint2"]
      570 CALL                             R8 1 1
      571 CALL                             R8 0 1
      572 SETTABLEKS                       R8 R4 K173 ["FFlagAssistantExecLuauYieldHint"]
      574 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      576 LOADK                            R9 K174 ["AssistantExecLuauYieldHintInternal"]
      577 CALL                             R8 1 1
      578 CALL                             R8 0 1
      579 SETTABLEKS                       R8 R4 K175 ["FFlagAssistantExecLuauYieldHintInternal"]
      581 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      583 LOADK                            R9 K176 ["AssistantExternalMCPPluginSettingRedundancy"]
      584 CALL                             R8 1 1
      585 CALL                             R8 0 1
      586 SETTABLEKS                       R8 R4 K177 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      588 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      590 LOADK                            R9 K178 ["AssistantFeedbackView"]
      591 CALL                             R8 1 1
      592 CALL                             R8 0 1
      593 SETTABLEKS                       R8 R4 K179 ["FFlagAssistantFeedbackView"]
      595 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      597 LOADK                            R9 K180 ["AssistantFixStartPlayHang"]
      598 CALL                             R8 1 1
      599 CALL                             R8 0 1
      600 SETTABLEKS                       R8 R4 K181 ["FFlagAssistantFixStartPlayHang"]
      602 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      604 LOADK                            R9 K182 ["AssistantForceRemoteServiceForInternal"]
      605 CALL                             R8 1 1
      606 CALL                             R8 0 1
      607 SETTABLEKS                       R8 R4 K183 ["FFlagAssistantForceRemoteServiceForInternal"]
      609 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      611 LOADK                            R9 K184 ["AssistantGameTreeYield"]
      612 CALL                             R8 1 1
      613 CALL                             R8 0 1
      614 SETTABLEKS                       R8 R4 K185 ["FFlagAssistantGameTreeYield"]
      616 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      618 LOADK                            R9 K186 ["AssistantGen3DAssetPublishTracking"]
      619 CALL                             R8 1 1
      620 CALL                             R8 0 1
      621 SETTABLEKS                       R8 R4 K187 ["FFlagAssistantGen3DAssetPublishTracking"]
      623 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      625 LOADK                            R9 K188 ["AssistantGen3dAutoSegmentation"]
      626 CALL                             R8 1 1
      627 CALL                             R8 0 1
      628 SETTABLEKS                       R8 R4 K189 ["FFlagAssistantGen3dAutoSegmentation"]
      630 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      632 LOADK                            R9 K190 ["AssistantGen3DImagePreviewTelemetry"]
      633 CALL                             R8 1 1
      634 CALL                             R8 0 1
      635 SETTABLEKS                       R8 R4 K191 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      637 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      639 LOADK                            R9 K192 ["AssistantGen3dRequirePromptToGenerate"]
      640 CALL                             R8 1 1
      641 CALL                             R8 0 1
      642 SETTABLEKS                       R8 R4 K193 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      644 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      646 LOADK                            R9 K194 ["AssistantGen3DTelemetryV2"]
      647 CALL                             R8 1 1
      648 CALL                             R8 0 1
      649 SETTABLEKS                       R8 R4 K195 ["FFlagAssistantGen3DTelemetryV2"]
      651 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      653 LOADK                            R9 K196 ["AssistantGenerateLayoutCalloutCancel"]
      654 CALL                             R8 1 1
      655 CALL                             R8 0 1
      656 SETTABLEKS                       R8 R4 K197 ["FFlagAssistantGenerateLayoutCalloutCancel"]
      658 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      660 LOADK                            R9 K198 ["AssistantGenerateLayoutTool"]
      661 CALL                             R8 1 1
      662 CALL                             R8 0 1
      663 SETTABLEKS                       R8 R4 K199 ["FFlagAssistantGenerateLayoutTool"]
      665 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      667 LOADK                            R9 K200 ["AssistantGenerateSceneInputValidation"]
      668 CALL                             R8 1 1
      669 CALL                             R8 0 1
      670 SETTABLEKS                       R8 R4 K201 ["FFlagAssistantGenerateSceneInputValidation"]
      672 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      674 LOADK                            R9 K202 ["AssistantGenerateSceneMeshGenToggle"]
      675 CALL                             R8 1 1
      676 CALL                             R8 0 1
      677 SETTABLEKS                       R8 R4 K203 ["FFlagAssistantGenerateSceneMeshGenToggle"]
      679 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      681 LOADK                            R9 K204 ["AssistantGenerateSceneQuality"]
      682 CALL                             R8 1 1
      683 CALL                             R8 0 1
      684 SETTABLEKS                       R8 R4 K205 ["FFlagAssistantGenerateSceneQuality"]
      686 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      688 LOADK                            R9 K206 ["AssistantGrepSearchKeepEmptyLines"]
      689 CALL                             R8 1 1
      690 CALL                             R8 0 1
      691 SETTABLEKS                       R8 R4 K207 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      693 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      695 LOADK                            R9 K208 ["AssistantHideContent"]
      696 CALL                             R8 1 1
      697 CALL                             R8 0 1
      698 SETTABLEKS                       R8 R4 K209 ["FFlagAssistantHideContent"]
      700 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      702 LOADK                            R9 K210 ["AssistantAddPaddingToFillRow"]
      703 CALL                             R8 1 1
      704 CALL                             R8 0 1
      705 SETTABLEKS                       R8 R4 K211 ["FFlagAssistantAddPaddingToFillRow"]
      707 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      709 LOADK                            R9 K212 ["AssistantHidePinForBuild"]
      710 CALL                             R8 1 1
      711 CALL                             R8 0 1
      712 SETTABLEKS                       R8 R4 K213 ["FFlagAssistantHidePinForBuild"]
      714 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      716 LOADK                            R9 K214 ["AssistantHintMultiEditOverExecLuau"]
      717 CALL                             R8 1 1
      718 CALL                             R8 0 1
      719 SETTABLEKS                       R8 R4 K215 ["FFlagAssistantHintMultiEditOverExecLuau"]
      721 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      723 LOADK                            R9 K216 ["AssistantImageGenAbortPollOn4xx"]
      724 CALL                             R8 1 1
      725 CALL                             R8 0 1
      726 SETTABLEKS                       R8 R4 K217 ["FFlagAssistantImageGenAbortPollOn4xx"]
      728 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      730 LOADK                            R9 K218 ["AssistantImageGenImprovements"]
      731 CALL                             R8 1 1
      732 CALL                             R8 0 1
      733 SETTABLEKS                       R8 R4 K219 ["FFlagAssistantImageGenImprovements"]
      735 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      737 LOADK                            R9 K220 ["AssistantImageGenSeed"]
      738 CALL                             R8 1 1
      739 CALL                             R8 0 1
      740 SETTABLEKS                       R8 R4 K221 ["FFlagAssistantImageGenSeed"]
      742 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      744 LOADK                            R9 K222 ["AssistantImageSelectionWizardModeMeshGen"]
      745 CALL                             R8 1 1
      746 CALL                             R8 0 1
      747 SETTABLEKS                       R8 R4 K223 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      749 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      751 LOADK                            R9 K224 ["AssistantImageSelectionWizardModePrimitiveGen"]
      752 CALL                             R8 1 1
      753 CALL                             R8 0 1
      754 SETTABLEKS                       R8 R4 K225 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      756 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      758 LOADK                            R9 K226 ["AssistantImageSelectionWizardModeTextureGen"]
      759 CALL                             R8 1 1
      760 CALL                             R8 0 1
      761 SETTABLEKS                       R8 R4 K227 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      763 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      765 LOADK                            R9 K228 ["AssistantIncorrectAttachPrimGenImageToInput"]
      766 CALL                             R8 1 1
      767 CALL                             R8 0 1
      768 SETTABLEKS                       R8 R4 K229 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      770 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      772 LOADK                            R9 K230 ["AssistantInsertAssetSandboxProceduralModels"]
      773 CALL                             R8 1 1
      774 CALL                             R8 0 1
      775 SETTABLEKS                       R8 R4 K231 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      777 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      779 LOADK                            R9 K232 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      780 CALL                             R8 1 1
      781 CALL                             R8 0 1
      782 SETTABLEKS                       R8 R4 K233 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      784 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      786 LOADK                            R9 K234 ["AssistantInsertAssetSandboxScripts"]
      787 CALL                             R8 1 1
      788 CALL                             R8 0 1
      789 SETTABLEKS                       R8 R4 K235 ["FFlagAssistantInsertAssetSandboxScripts"]
      791 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      793 LOADK                            R9 K236 ["AssistantMarkdownStreaming"]
      794 CALL                             R8 1 1
      795 CALL                             R8 0 1
      796 SETTABLEKS                       R8 R4 K237 ["FFlagAssistantMarkdownStreaming"]
      798 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      800 LOADK                            R9 K238 ["AssistantMcpImageGenShortcut"]
      801 CALL                             R8 1 1
      802 CALL                             R8 0 1
      803 SETTABLEKS                       R8 R4 K239 ["FFlagAssistantMcpImageGenShortcut"]
      805 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      807 LOADK                            R9 K240 ["AssistantMcpListPlaceTool"]
      808 CALL                             R8 1 1
      809 CALL                             R8 0 1
      810 SETTABLEKS                       R8 R4 K241 ["FFlagAssistantMcpListPlaceTool"]
      812 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      814 LOADK                            R9 K242 ["AssistantMcpListSkillsTool"]
      815 CALL                             R8 1 1
      816 CALL                             R8 0 1
      817 SETTABLEKS                       R8 R4 K243 ["FFlagAssistantMcpListSkillsTool"]
      819 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      821 LOADK                            R9 K244 ["AssistantMcpListStudiosFullPath"]
      822 CALL                             R8 1 1
      823 CALL                             R8 0 1
      824 SETTABLEKS                       R8 R4 K245 ["FFlagAssistantMcpListStudiosFullPath"]
      826 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      828 LOADK                            R9 K246 ["AssistantMcpListStudiosTool"]
      829 CALL                             R8 1 1
      830 CALL                             R8 0 1
      831 SETTABLEKS                       R8 R4 K247 ["FFlagAssistantMcpListStudiosTool"]
      833 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      835 LOADK                            R9 K248 ["AssistantMcpSubmitFeedbackTool"]
      836 CALL                             R8 1 1
      837 CALL                             R8 0 1
      838 SETTABLEKS                       R8 R4 K249 ["FFlagAssistantMcpSubmitFeedbackTool"]
      840 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      842 LOADK                            R10 K250 ["AssistantMcpCapturePerTurn"]
      843 CALL                             R9 1 1
      844 CALL                             R9 0 1
      845 AND                              R8 R9 R7
      846 SETTABLEKS                       R8 R4 K251 ["FFlagAssistantMcpCapturePerTurn"]
      848 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      850 LOADK                            R9 K252 ["MCPWebSocketRetryOnStartError"]
      851 CALL                             R8 1 1
      852 CALL                             R8 0 1
      853 JUMPIFNOT                        R8 ; [+5]
      854 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      856 LOADK                            R9 K253 ["AssistantMCPProxyAuthRejectedWarn"]
      857 CALL                             R8 1 1
      858 CALL                             R8 0 1
      859 SETTABLEKS                       R8 R4 K254 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      861 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      863 LOADK                            R10 K255 ["AssistantMCPVideoCapture"]
      864 CALL                             R9 1 1
      865 CALL                             R9 0 1
      866 AND                              R8 R9 R6
      867 SETTABLEKS                       R8 R4 K256 ["FFlagAssistantMCPVideoCapture"]
      869 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      871 LOADK                            R9 K257 ["AssistantMeshGenAutoExpandCollapse"]
      872 CALL                             R8 1 1
      873 CALL                             R8 0 1
      874 SETTABLEKS                       R8 R4 K258 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      876 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      878 LOADK                            R9 K259 ["AssistantMeshGenHintImage"]
      879 CALL                             R8 1 1
      880 CALL                             R8 0 1
      881 SETTABLEKS                       R8 R4 K260 ["FFlagAssistantMeshGenHintImage"]
      883 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      885 LOADK                            R9 K261 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      886 CALL                             R8 1 1
      887 CALL                             R8 0 1
      888 SETTABLEKS                       R8 R4 K262 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      890 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      892 LOADK                            R9 K263 ["AssistantMeshGenRemoveAdminOptions"]
      893 CALL                             R8 1 1
      894 CALL                             R8 0 1
      895 SETTABLEKS                       R8 R4 K264 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      897 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      899 LOADK                            R9 K265 ["AssistantMoveToolButtonsToTheRightAgain"]
      900 CALL                             R8 1 1
      901 CALL                             R8 0 1
      902 SETTABLEKS                       R8 R4 K266 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      904 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      906 LOADK                            R9 K267 ["AssistantMultiEditExternalClient"]
      907 CALL                             R8 1 1
      908 CALL                             R8 0 1
      909 SETTABLEKS                       R8 R4 K268 ["FFlagAssistantMultiEditExternalClient"]
      911 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      913 LOADK                            R9 K269 ["AssistantNumberRowPartialInput"]
      914 CALL                             R8 1 1
      915 CALL                             R8 0 1
      916 SETTABLEKS                       R8 R4 K270 ["FFlagAssistantNumberRowPartialInput"]
      918 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      920 LOADK                            R9 K271 ["AssistantOmitSlashToolCallDroppedFields"]
      921 CALL                             R8 1 1
      922 CALL                             R8 0 1
      923 SETTABLEKS                       R8 R4 K272 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      925 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      927 LOADK                            R9 K273 ["AssistantOpenCloudInvokeTool2"]
      928 CALL                             R8 1 1
      929 CALL                             R8 0 1
      930 SETTABLEKS                       R8 R4 K274 ["FFlagAssistantOpenCloudInvokeTool"]
      932 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      934 LOADK                            R9 K275 ["AssistantPinForBuildUI"]
      935 CALL                             R8 1 1
      936 CALL                             R8 0 1
      937 SETTABLEKS                       R8 R4 K276 ["FFlagAssistantPinForBuildUI"]
      939 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      941 LOADK                            R9 K277 ["AssistantPlanRevisionList"]
      942 CALL                             R8 1 1
      943 CALL                             R8 0 1
      944 SETTABLEKS                       R8 R4 K278 ["FFlagAssistantPlanRevisionList"]
      946 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      948 LOADK                            R9 K279 ["AssistantPlaytestContext"]
      949 CALL                             R8 1 1
      950 CALL                             R8 0 1
      951 SETTABLEKS                       R8 R4 K280 ["FFlagAssistantPlaytestContext"]
      953 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      955 LOADK                            R9 K281 ["AssistantPlaytestKGEnabled"]
      956 CALL                             R8 1 1
      957 CALL                             R8 0 1
      958 SETTABLEKS                       R8 R4 K282 ["FFlagAssistantPlaytestKGEnabled"]
      960 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      962 LOADK                            R9 K283 ["AssistantPlaytestToolFix"]
      963 CALL                             R8 1 1
      964 CALL                             R8 0 1
      965 SETTABLEKS                       R8 R4 K284 ["FFlagAssistantPlaytestToolFix"]
      967 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      969 LOADK                            R9 K285 ["AssistantPromptHistoryFromConversation"]
      970 CALL                             R8 1 1
      971 CALL                             R8 0 1
      972 SETTABLEKS                       R8 R4 K286 ["FFlagAssistantPromptHistoryFromConversation"]
      974 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      976 LOADK                            R9 K287 ["AssistantPromptModeratedError"]
      977 CALL                             R8 1 1
      978 CALL                             R8 0 1
      979 SETTABLEKS                       R8 R4 K288 ["FFlagAssistantPromptModeratedError"]
      981 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      983 LOADK                            R9 K289 ["AssistantReadFileRejectRangeWithEntireFile"]
      984 CALL                             R8 1 1
      985 CALL                             R8 0 1
      986 SETTABLEKS                       R8 R4 K290 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
      988 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      990 LOADK                            R9 K291 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
      991 CALL                             R8 1 1
      992 CALL                             R8 0 1
      993 SETTABLEKS                       R8 R4 K292 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
      995 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      997 LOADK                            R9 K293 ["AssistantResolveHeading"]
      998 CALL                             R8 1 1
      999 CALL                             R8 0 1
     1000 SETTABLEKS                       R8 R4 K294 ["FFlagAssistantResolveHeading"]
     1002 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1004 LOADK                            R9 K295 ["AssistantRestoreCameraStateInExec"]
     1005 CALL                             R8 1 1
     1006 CALL                             R8 0 1
     1007 SETTABLEKS                       R8 R4 K296 ["FFlagAssistantRestoreCameraStateInExec"]
     1009 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1011 LOADK                            R9 K297 ["AssistantRestoreCameraStateInExecWarn"]
     1012 CALL                             R8 1 1
     1013 CALL                             R8 0 1
     1014 SETTABLEKS                       R8 R4 K298 ["FFlagAssistantRestoreCameraStateInExecWarn"]
     1016 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1018 LOADK                            R9 K299 ["AssistantRestoreMostRecentThread"]
     1019 CALL                             R8 1 1
     1020 CALL                             R8 0 1
     1021 SETTABLEKS                       R8 R4 K300 ["FFlagAssistantRestoreMostRecentThread"]
     1023 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1025 LOADK                            R9 K301 ["AssistantSavePlaceTool"]
     1026 CALL                             R8 1 1
     1027 CALL                             R8 0 1
     1028 SETTABLEKS                       R8 R4 K302 ["FFlagAssistantSavePlaceTool"]
     1030 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1032 LOADK                            R9 K303 ["AssistantScreenCaptureSubagentPluginGuis"]
     1033 CALL                             R8 1 1
     1034 CALL                             R8 0 1
     1035 SETTABLEKS                       R8 R4 K304 ["FFlagAssistantScreenCaptureSubagentPluginGuis"]
     1037 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1039 LOADK                            R9 K305 ["AssistantScrollableAskInputForm"]
     1040 CALL                             R8 1 1
     1041 CALL                             R8 0 1
     1042 SETTABLEKS                       R8 R4 K306 ["FFlagAssistantScrollableAskInputForm"]
     1044 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1046 LOADK                            R9 K307 ["AssistantSegmentationBridge"]
     1047 CALL                             R8 1 1
     1048 CALL                             R8 0 1
     1049 SETTABLEKS                       R8 R4 K308 ["FFlagAssistantSegmentationBridge"]
     1051 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1053 LOADK                            R9 K309 ["AssistantSegmentationUIFixes"]
     1054 CALL                             R8 1 1
     1055 CALL                             R8 0 1
     1056 SETTABLEKS                       R8 R4 K310 ["FFlagAssistantSegmentationUIFixes"]
     1058 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1060 LOADK                            R9 K311 ["AssistantSegmentMeshCleanupWorldWrapper"]
     1061 CALL                             R8 1 1
     1062 CALL                             R8 0 1
     1063 SETTABLEKS                       R8 R4 K312 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
     1065 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1067 LOADK                            R9 K313 ["AssistantSegmentMeshTool"]
     1068 CALL                             R8 1 1
     1069 CALL                             R8 0 1
     1070 SETTABLEKS                       R8 R4 K314 ["FFlagAssistantSegmentMeshTool"]
     1072 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1074 LOADK                            R9 K315 ["AssistantSegmentMeshUseSourceMeshCFrame"]
     1075 CALL                             R8 1 1
     1076 CALL                             R8 0 1
     1077 SETTABLEKS                       R8 R4 K316 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
     1079 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1081 LOADK                            R9 K317 ["AssistantSharedVector3Input"]
     1082 CALL                             R8 1 1
     1083 CALL                             R8 0 1
     1084 SETTABLEKS                       R8 R4 K318 ["FFlagAssistantSharedVector3Input"]
     1086 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1088 LOADK                            R9 K319 ["AssistantShorterCapturePluginGuiDescription"]
     1089 CALL                             R8 1 1
     1090 CALL                             R8 0 1
     1091 SETTABLEKS                       R8 R4 K320 ["FFlagAssistantShorterCapturePluginGuiDescription"]
     1093 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1095 LOADK                            R9 K321 ["AssistantSkillsShowDisabled"]
     1096 CALL                             R8 1 1
     1097 CALL                             R8 0 1
     1098 SETTABLEKS                       R8 R4 K322 ["FFlagAssistantSkillsShowDisabled"]
     1100 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1102 LOADK                            R9 K323 ["AssistantSkillToolNameReplace"]
     1103 CALL                             R8 1 1
     1104 CALL                             R8 0 1
     1105 SETTABLEKS                       R8 R4 K324 ["FFlagAssistantSkillToolNameReplace"]
     1107 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1109 LOADK                            R9 K325 ["AssistantSlashCommandStepBackNavigation"]
     1110 CALL                             R8 1 1
     1111 CALL                             R8 0 1
     1112 SETTABLEKS                       R8 R4 K326 ["FFlagAssistantSlashCommandStepBackNavigation"]
     1114 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1116 LOADK                            R9 K327 ["AssistantSlashToolNameAndError"]
     1117 CALL                             R8 1 1
     1118 CALL                             R8 0 1
     1119 SETTABLEKS                       R8 R4 K328 ["FFlagAssistantSlashToolNameAndError"]
     1121 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1123 LOADK                            R9 K329 ["AssistantStartStopPlayBusyCheck"]
     1124 CALL                             R8 1 1
     1125 CALL                             R8 0 1
     1126 SETTABLEKS                       R8 R4 K330 ["FFlagAssistantStartStopPlayBusyCheck"]
     1128 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1130 LOADK                            R9 K331 ["AssistantTestLLMPreserveThinking"]
     1131 LOADB                            R10 1
     1132 CALL                             R8 2 1
     1133 CALL                             R8 0 1
     1134 SETTABLEKS                       R8 R4 K332 ["FFlagAssistantTestLLMPreserveThinking"]
     1136 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1138 LOADK                            R9 K333 ["AssistantTestLLMThinkingEnabled"]
     1139 LOADB                            R10 1
     1140 CALL                             R8 2 1
     1141 CALL                             R8 0 1
     1142 SETTABLEKS                       R8 R4 K334 ["FFlagAssistantTestLLMThinkingEnabled"]
     1144 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1146 LOADK                            R9 K335 ["AssistantTextureGenAutoSelectView"]
     1147 CALL                             R8 1 1
     1148 CALL                             R8 0 1
     1149 SETTABLEKS                       R8 R4 K336 ["FFlagAssistantTextureGenAutoSelectView"]
     1151 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1153 LOADK                            R9 K337 ["AssistantTextureGenMcpPreviewReference"]
     1154 CALL                             R8 1 1
     1155 CALL                             R8 0 1
     1156 SETTABLEKS                       R8 R4 K338 ["FFlagAssistantTextureGenMcpPreviewReference"]
     1158 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1160 LOADK                            R9 K339 ["AssistantTextureGenMcpQualityAutoView"]
     1161 CALL                             R8 1 1
     1162 CALL                             R8 0 1
     1163 SETTABLEKS                       R8 R4 K340 ["FFlagAssistantTextureGenMcpQualityAutoView"]
     1165 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1167 LOADK                            R9 K341 ["AssistantTextureGenModelSelection"]
     1168 CALL                             R8 1 1
     1169 CALL                             R8 0 1
     1170 SETTABLEKS                       R8 R4 K342 ["FFlagAssistantTextureGenModelSelection"]
     1172 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1174 LOADK                            R9 K343 ["AssistantTextureGenTool"]
     1175 CALL                             R8 1 1
     1176 CALL                             R8 0 1
     1177 SETTABLEKS                       R8 R4 K344 ["FFlagAssistantTextureGenTool"]
     1179 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1181 LOADK                            R9 K345 ["AssistantTextureGenUseSourceMeshCFrame"]
     1182 CALL                             R8 1 1
     1183 CALL                             R8 0 1
     1184 SETTABLEKS                       R8 R4 K346 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
     1186 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1188 LOADK                            R9 K347 ["AssistantToolPermissionQuestion"]
     1189 CALL                             R8 1 1
     1190 CALL                             R8 0 1
     1191 SETTABLEKS                       R8 R4 K348 ["FFlagAssistantToolPermissionQuestion"]
     1193 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1195 LOADK                            R9 K349 ["AssistantToolSkillDescriptions"]
     1196 CALL                             R8 1 1
     1197 CALL                             R8 0 1
     1198 SETTABLEKS                       R8 R4 K350 ["FFlagAssistantToolSkillDescriptions"]
     1200 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1202 LOADK                            R9 K351 ["AssistantTruncatePrimGenHeader"]
     1203 CALL                             R8 1 1
     1204 CALL                             R8 0 1
     1205 SETTABLEKS                       R8 R4 K352 ["FFlagAssistantTruncatePrimGenHeader"]
     1207 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1209 LOADK                            R9 K353 ["AssistantUntitledChatPlaceholder"]
     1210 CALL                             R8 1 1
     1211 CALL                             R8 0 1
     1212 SETTABLEKS                       R8 R4 K354 ["FFlagAssistantUntitledChatPlaceholder"]
     1214 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1216 LOADK                            R9 K355 ["AssistantUseFoundationTextArea"]
     1217 CALL                             R8 1 1
     1218 CALL                             R8 0 1
     1219 SETTABLEKS                       R8 R4 K356 ["FFlagAssistantUseFoundationTextArea"]
     1221 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1223 LOADK                            R9 K357 ["AssistantUseNewDMNetworking"]
     1224 CALL                             R8 1 1
     1225 CALL                             R8 0 1
     1226 SETTABLEKS                       R8 R4 K358 ["FFlagAssistantUseNewDMNetworking"]
     1228 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1230 LOADK                            R9 K359 ["AssistantUseNewTags"]
     1231 CALL                             R8 1 1
     1232 CALL                             R8 0 1
     1233 SETTABLEKS                       R8 R4 K360 ["FFlagAssistantUseNewTags"]
     1235 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1237 LOADK                            R9 K361 ["AssistantUseRemoteService2"]
     1238 CALL                             R8 1 1
     1239 CALL                             R8 0 1
     1240 SETTABLEKS                       R8 R4 K362 ["FFlagAssistantUseRemoteService"]
     1242 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1244 LOADK                            R9 K363 ["AssistantUseRemoteServiceExp"]
     1245 CALL                             R8 1 1
     1246 CALL                             R8 0 1
     1247 SETTABLEKS                       R8 R4 K364 ["FFlagAssistantUseRemoteServiceExp"]
     1249 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1251 LOADK                            R9 K365 ["AssistantUseVariantHttpTransport"]
     1252 CALL                             R8 1 1
     1253 CALL                             R8 0 1
     1254 SETTABLEKS                       R8 R4 K366 ["FFlagAssistantUseVariantHttpTransport"]
     1256 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1258 LOADK                            R9 K367 ["AssistantVersionMismatchWarning"]
     1259 CALL                             R8 1 1
     1260 CALL                             R8 0 1
     1261 SETTABLEKS                       R8 R4 K368 ["FFlagAssistantVersionMismatchWarning"]
     1263 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1265 LOADK                            R9 K369 ["AssistantVideoCaptureTool"]
     1266 CALL                             R8 1 1
     1267 CALL                             R8 0 1
     1268 SETTABLEKS                       R8 R4 K370 ["FFlagAssistantVideoCaptureTool"]
     1270 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
     1272 LOADK                            R10 K371 ["AssistantVirtualInputEnabled"]
     1273 CALL                             R9 1 1
     1274 CALL                             R9 0 1
     1275 AND                              R8 R9 R5
     1276 SETTABLEKS                       R8 R4 K372 ["FFlagAssistantVirtualInputEnabled"]
     1278 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1280 LOADK                            R9 K373 ["AvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1281 CALL                             R8 1 1
     1282 CALL                             R8 0 1
     1283 SETTABLEKS                       R8 R4 K374 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1285 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1287 LOADK                            R9 K375 ["AvatarPreviewerAvatarCreationDynamicHeadOff"]
     1288 CALL                             R8 1 1
     1289 CALL                             R8 0 1
     1290 SETTABLEKS                       R8 R4 K376 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
     1292 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1294 LOADK                            R9 K377 ["AvatarPreviewerAvatarCreationDynamicHeadOption"]
     1295 CALL                             R8 1 1
     1296 CALL                             R8 0 1
     1297 SETTABLEKS                       R8 R4 K378 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
     1299 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1301 LOADK                            R9 K379 ["AvatarPreviewerAvatarCreationR15PlusOn"]
     1302 CALL                             R8 1 1
     1303 CALL                             R8 0 1
     1304 SETTABLEKS                       R8 R4 K380 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
     1306 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1308 LOADK                            R9 K381 ["AvatarPreviewerAvatarCreationR15PlusOption"]
     1309 CALL                             R8 1 1
     1310 CALL                             R8 0 1
     1311 SETTABLEKS                       R8 R4 K382 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
     1313 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1315 LOADK                            R9 K383 ["DebugAssistantEval"]
     1316 CALL                             R8 1 1
     1317 CALL                             R8 0 1
     1318 SETTABLEKS                       R8 R4 K384 ["FFlagDebugAssistantEval"]
     1320 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1322 LOADK                            R9 K385 ["DebugAssistantMcpCaptureLogging"]
     1323 CALL                             R8 1 1
     1324 CALL                             R8 0 1
     1325 SETTABLEKS                       R8 R4 K386 ["FFlagDebugAssistantMcpCaptureLogging"]
     1327 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1329 LOADK                            R9 K387 ["DebugAssistantMultiPlayerAgentsLog"]
     1330 CALL                             R8 1 1
     1331 CALL                             R8 0 1
     1332 SETTABLEKS                       R8 R4 K388 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
     1334 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1336 LOADK                            R9 K389 ["DebugEnableTestLLMAdapter"]
     1337 CALL                             R8 1 1
     1338 CALL                             R8 0 1
     1339 SETTABLEKS                       R8 R4 K390 ["FFlagDebugEnableTestLLMAdapter"]
     1341 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1343 LOADK                            R9 K391 ["DebugMockPrimitiveGenBackend"]
     1344 CALL                             R8 1 1
     1345 CALL                             R8 0 1
     1346 SETTABLEKS                       R8 R4 K392 ["FFlagDebugMockPrimitiveGenBackend"]
     1348 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1350 LOADK                            R9 K393 ["DisableMCPConnectionIndicator"]
     1351 CALL                             R8 1 1
     1352 CALL                             R8 0 1
     1353 SETTABLEKS                       R8 R4 K394 ["FFlagDisableMCPConnectionIndicator"]
     1355 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1357 LOADK                            R9 K395 ["FFlagDisableNavigationConfirmation"]
     1358 CALL                             R8 1 1
     1359 CALL                             R8 0 1
     1360 SETTABLEKS                       R8 R4 K395 ["FFlagDisableNavigationConfirmation"]
     1362 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1364 LOADK                            R9 K396 ["DisableNewSmartSize"]
     1365 CALL                             R8 1 1
     1366 CALL                             R8 0 1
     1367 SETTABLEKS                       R8 R4 K397 ["FFlagDisableNewSmartSize"]
     1369 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1371 LOADK                            R9 K398 ["DisableOldSmartSize"]
     1372 CALL                             R8 1 1
     1373 CALL                             R8 0 1
     1374 SETTABLEKS                       R8 R4 K399 ["FFlagDisableOldSmartSize"]
     1376 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1378 LOADK                            R9 K400 ["FFlagDisableStartStopPlayConfirmation"]
     1379 CALL                             R8 1 1
     1380 CALL                             R8 0 1
     1381 SETTABLEKS                       R8 R4 K400 ["FFlagDisableStartStopPlayConfirmation"]
     1383 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1385 LOADK                            R9 K401 ["FFlagDisableUserInputConfirmation"]
     1386 CALL                             R8 1 1
     1387 CALL                             R8 0 1
     1388 SETTABLEKS                       R8 R4 K401 ["FFlagDisableUserInputConfirmation"]
     1390 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1392 LOADK                            R9 K402 ["EnableAssistantImageUpload"]
     1393 CALL                             R8 1 1
     1394 CALL                             R8 0 1
     1395 SETTABLEKS                       R8 R4 K403 ["FFlagEnableAssistantImageUpload"]
     1397 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1399 LOADK                            R9 K404 ["EnablePlaytestSubagent"]
     1400 CALL                             R8 1 1
     1401 CALL                             R8 0 1
     1402 SETTABLEKS                       R8 R4 K405 ["FFlagEnablePlaytestSubagent"]
     1404 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1406 LOADK                            R9 K406 ["Gen3dSegmentationSelector"]
     1407 CALL                             R8 1 1
     1408 CALL                             R8 0 1
     1409 SETTABLEKS                       R8 R4 K407 ["FFlagGen3dSegmentationSelector"]
     1411 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1413 LOADK                            R9 K408 ["MarkdownTagFallbacks"]
     1414 CALL                             R8 1 1
     1415 CALL                             R8 0 1
     1416 SETTABLEKS                       R8 R4 K409 ["FFlagMarkdownTagFallbacks"]
     1418 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1420 LOADK                            R9 K410 ["MCPAssistantAzureOpenAI"]
     1421 CALL                             R8 1 1
     1422 CALL                             R8 0 1
     1423 SETTABLEKS                       R8 R4 K411 ["FFlagMCPAssistantAzureOpenAI"]
     1425 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1427 LOADK                            R9 K412 ["MCPAssistantManagementMenu5"]
     1428 CALL                             R8 1 1
     1429 CALL                             R8 0 1
     1430 SETTABLEKS                       R8 R4 K413 ["FFlagMCPAssistantManagementMenu"]
     1432 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1434 LOADK                            R9 K414 ["MCPAssistantOpenAIPreserveThinking"]
     1435 CALL                             R8 1 1
     1436 CALL                             R8 0 1
     1437 SETTABLEKS                       R8 R4 K415 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1439 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1441 LOADK                            R9 K416 ["MCPAssistantOpenAIThinkingEnabled"]
     1442 CALL                             R8 1 1
     1443 CALL                             R8 0 1
     1444 SETTABLEKS                       R8 R4 K417 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1446 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1448 LOADK                            R9 K418 ["MCPClientCountAsASetting"]
     1449 CALL                             R8 1 1
     1450 CALL                             R8 0 1
     1451 SETTABLEKS                       R8 R4 K419 ["FFlagMCPClientCountAsASetting"]
     1453 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1455 LOADK                            R9 K420 ["MCPConnectionIndicatorTooltip"]
     1456 CALL                             R8 1 1
     1457 CALL                             R8 0 1
     1458 SETTABLEKS                       R8 R4 K421 ["FFlagMCPConnectionIndicatorTooltip"]
     1460 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1462 LOADK                            R9 K422 ["MCPContentNormalization"]
     1463 CALL                             R8 1 1
     1464 CALL                             R8 0 1
     1465 SETTABLEKS                       R8 R4 K423 ["FFlagMCPContentNormalization"]
     1467 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1469 LOADK                            R9 K424 ["MCPEnableToolDisabling"]
     1470 CALL                             R8 1 1
     1471 CALL                             R8 0 1
     1472 SETTABLEKS                       R8 R4 K425 ["FFlagMCPEnableToolDisabling"]
     1474 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1476 LOADK                            R9 K426 ["PlaytestVision"]
     1477 CALL                             R8 1 1
     1478 CALL                             R8 0 1
     1479 SETTABLEKS                       R8 R4 K427 ["FFlagPlaytestVision"]
     1481 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1483 LOADK                            R9 K428 ["PrimGenBetterErrorType"]
     1484 CALL                             R8 1 1
     1485 CALL                             R8 0 1
     1486 SETTABLEKS                       R8 R4 K429 ["FFlagPrimGenBetterErrorType"]
     1488 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1490 LOADK                            R9 K430 ["PrimGenImageGenPromptTemplateEnabled"]
     1491 CALL                             R8 1 1
     1492 CALL                             R8 0 1
     1493 SETTABLEKS                       R8 R4 K431 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1495 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1497 LOADK                            R9 K432 ["PrimGenSchemaSelector"]
     1498 CALL                             R8 1 1
     1499 CALL                             R8 0 1
     1500 SETTABLEKS                       R8 R4 K433 ["FFlagPrimGenSchemaSelector"]
     1502 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1504 LOADK                            R9 K434 ["PrimGenVerboseDmIsUnReachableMsg"]
     1505 CALL                             R8 1 1
     1506 CALL                             R8 0 1
     1507 SETTABLEKS                       R8 R4 K435 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1509 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1511 LOADK                            R9 K436 ["PrimGenVersionMismatchError"]
     1512 CALL                             R8 1 1
     1513 CALL                             R8 0 1
     1514 SETTABLEKS                       R8 R4 K437 ["FFlagPrimGenVersionMismatchError"]
     1516 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1518 LOADK                            R9 K438 ["PropertiesExposeContentView"]
     1519 CALL                             R8 1 1
     1520 CALL                             R8 0 1
     1521 SETTABLEKS                       R8 R4 K439 ["FFlagPropertiesExposeContentView"]
     1523 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1525 LOADK                            R9 K440 ["ScreenCaptureCamera"]
     1526 CALL                             R8 1 1
     1527 CALL                             R8 0 1
     1528 SETTABLEKS                       R8 R4 K441 ["FFlagScreenCaptureCamera"]
     1530 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1532 LOADK                            R9 K442 ["ScriptDebuggerServiceEnabled2"]
     1533 CALL                             R8 1 1
     1534 CALL                             R8 0 1
     1535 SETTABLEKS                       R8 R4 K443 ["FFlagScriptDebuggerServiceEnabled"]
     1537 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1539 LOADK                            R9 K444 ["StudioAssistantPermissionsHideNetwork"]
     1540 CALL                             R8 1 1
     1541 CALL                             R8 0 1
     1542 SETTABLEKS                       R8 R4 K445 ["FFlagStudioAssistantPermissionsHideNetwork"]
     1544 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1546 LOADK                            R9 K446 ["StudioMCPListStudiosFanOut"]
     1547 CALL                             R8 1 1
     1548 CALL                             R8 0 1
     1549 SETTABLEKS                       R8 R4 K447 ["FFlagStudioMCPListStudiosFanOut"]
     1551 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1553 LOADK                            R9 K448 ["SubagentScriptEditAutoConfirmation"]
     1554 CALL                             R8 1 1
     1555 CALL                             R8 0 1
     1556 SETTABLEKS                       R8 R4 K449 ["FFlagSubagentScriptEditAutoConfirmation"]
     1558 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1560 LOADK                            R9 K451 ["AmrAssetDependencyGrantEventTimeout"]
     1561 LOADN                            R10 40
     1562 CALL                             R8 2 1
     1563 CALL                             R8 0 1
     1564 SETTABLEKS                       R8 R4 K452 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1566 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1568 LOADK                            R9 K453 ["AssistantAnimationGenLocalBendMaxFlexDegrees"]
     1569 LOADN                            R10 120
     1570 CALL                             R8 2 1
     1571 CALL                             R8 0 1
     1572 SETTABLEKS                       R8 R4 K454 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
     1574 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1576 LOADK                            R9 K455 ["AssistantAnimationGenPluginMinDurationSeconds"]
     1577 LOADN                            R10 1
     1578 CALL                             R8 2 1
     1579 CALL                             R8 0 1
     1580 SETTABLEKS                       R8 R4 K456 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
     1582 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1584 LOADK                            R9 K457 ["AssistantAnimationGenPluginMaxDurationSeconds"]
     1585 LOADN                            R10 30
     1586 CALL                             R8 2 1
     1587 CALL                             R8 0 1
     1588 SETTABLEKS                       R8 R4 K458 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
     1590 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1592 LOADK                            R9 K459 ["AssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1593 LOADN                            R10 5
     1594 CALL                             R8 2 1
     1595 CALL                             R8 0 1
     1596 SETTABLEKS                       R8 R4 K460 ["FIntAssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1598 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1600 LOADK                            R9 K461 ["AssistantAutoSaveInterval"]
     1601 LOADN                            R10 60
     1602 CALL                             R8 2 1
     1603 CALL                             R8 0 1
     1604 SETTABLEKS                       R8 R4 K462 ["FIntAssistantAutoSaveInterval"]
     1606 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1608 LOADK                            R9 K463 ["AssistantCapturePluginGuiDelayFrames"]
     1609 LOADN                            R10 10
     1610 CALL                             R8 2 1
     1611 CALL                             R8 0 1
     1612 SETTABLEKS                       R8 R4 K464 ["FIntAssistantCapturePluginGuiDelayFrames"]
     1614 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1616 LOADK                            R9 K465 ["AssistantDebugToolMaxOutput"]
     1617 LOADN                            R10 20000
     1618 CALL                             R8 2 1
     1619 CALL                             R8 0 1
     1620 SETTABLEKS                       R8 R4 K466 ["FIntAssistantDebugToolMaxOutput"]
     1622 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1624 LOADK                            R9 K467 ["AssistantJobWaitDefaultTimeout"]
     1625 LOADN                            R10 600
     1626 CALL                             R8 2 1
     1627 CALL                             R8 0 1
     1628 SETTABLEKS                       R8 R4 K468 ["FIntAssistantJobWaitDefaultTimeout"]
     1630 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1632 LOADK                            R9 K469 ["AssistantMaxDisplayTextChars"]
     1633 LOADK                            R10 K470 [100000]
     1634 CALL                             R8 2 1
     1635 CALL                             R8 0 1
     1636 SETTABLEKS                       R8 R4 K471 ["FIntAssistantMaxDisplayTextChars"]
     1638 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1640 LOADK                            R9 K472 ["AssistantMaxToolInputStringLen"]
     1641 LOADN                            R10 2000
     1642 CALL                             R8 2 1
     1643 CALL                             R8 0 1
     1644 SETTABLEKS                       R8 R4 K473 ["FIntAssistantMaxToolInputStringLen"]
     1646 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1648 LOADK                            R9 K474 ["AssistantMeshGenMaxTrianglesDefault"]
     1649 LOADN                            R10 10000
     1650 CALL                             R8 2 1
     1651 CALL                             R8 0 1
     1652 SETTABLEKS                       R8 R4 K475 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1654 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1656 LOADK                            R9 K476 ["AssistantMinPopoverHeight"]
     1657 LOADN                            R10 150
     1658 CALL                             R8 2 1
     1659 CALL                             R8 0 1
     1660 SETTABLEKS                       R8 R4 K477 ["FIntAssistantMinPopoverHeight"]
     1662 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1664 LOADK                            R9 K478 ["AssistantOpenCloudInvokeMaxFileSize"]
     1665 LOADK                            R10 K479 [20971520]
     1666 CALL                             R8 2 1
     1667 CALL                             R8 0 1
     1668 SETTABLEKS                       R8 R4 K480 ["FIntAssistantOpenCloudInvokeMaxFileSize"]
     1670 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1672 LOADK                            R9 K481 ["AssistantPersistenceMessageLoadLimit"]
     1673 LOADN                            R10 5
     1674 CALL                             R8 2 1
     1675 CALL                             R8 0 1
     1676 SETTABLEKS                       R8 R4 K482 ["FIntAssistantPersistenceMessageLoadLimit"]
     1678 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1680 LOADK                            R9 K483 ["AssistantPersistenceThreadLoadLimit"]
     1681 LOADN                            R10 5
     1682 CALL                             R8 2 1
     1683 CALL                             R8 0 1
     1684 SETTABLEKS                       R8 R4 K484 ["FIntAssistantPersistenceThreadLoadLimit"]
     1686 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1688 LOADK                            R9 K485 ["AssistantPostTurnRefreshDelaySeconds"]
     1689 LOADN                            R10 2
     1690 CALL                             R8 2 1
     1691 CALL                             R8 0 1
     1692 SETTABLEKS                       R8 R4 K486 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1694 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1696 LOADK                            R9 K487 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1697 LOADN                            R10 999
     1698 CALL                             R8 2 1
     1699 CALL                             R8 0 1
     1700 SETTABLEKS                       R8 R4 K488 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1702 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1704 LOADK                            R9 K489 ["AssistantPrimitiveGenPollIntervalMs"]
     1705 LOADN                            R10 2000
     1706 CALL                             R8 2 1
     1707 CALL                             R8 0 1
     1708 SETTABLEKS                       R8 R4 K490 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1710 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1712 LOADK                            R9 K491 ["AssistantProcessEventTimeoutMS"]
     1713 LOADK                            R10 K492 [60000]
     1714 CALL                             R8 2 1
     1715 CALL                             R8 0 1
     1716 SETTABLEKS                       R8 R4 K493 ["FIntAssistantProcessEventTimeoutMS"]
     1718 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1720 LOADK                            R9 K494 ["AssistantSegmentMeshMaxUserParts"]
     1721 LOADN                            R10 16
     1722 CALL                             R8 2 1
     1723 CALL                             R8 0 1
     1724 SETTABLEKS                       R8 R4 K495 ["FIntAssistantSegmentMeshMaxUserParts"]
     1726 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1728 LOADK                            R9 K496 ["ConvAIMaxHistoryCount"]
     1729 LOADN                            R10 6
     1730 CALL                             R8 2 1
     1731 CALL                             R8 0 1
     1732 SETTABLEKS                       R8 R4 K497 ["FIntConvAIMaxHistoryCount"]
     1734 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1736 LOADK                            R9 K498 ["ExecuteLuauMaxJsonLength"]
     1737 LOADK                            R10 K470 [100000]
     1738 CALL                             R8 2 1
     1739 CALL                             R8 0 1
     1740 SETTABLEKS                       R8 R4 K499 ["FIntExecuteLuauMaxJsonLength"]
     1742 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1744 LOADK                            R9 K500 ["ExecuteLuauMaxStringLength"]
     1745 LOADK                            R10 K470 [100000]
     1746 CALL                             R8 2 1
     1747 CALL                             R8 0 1
     1748 SETTABLEKS                       R8 R4 K501 ["FIntExecuteLuauMaxStringLength"]
     1750 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1752 LOADK                            R9 K502 ["FromHistoryMaxResultChars"]
     1753 LOADK                            R10 K503 [200000]
     1754 CALL                             R8 2 1
     1755 CALL                             R8 0 1
     1756 SETTABLEKS                       R8 R4 K504 ["FIntFromHistoryMaxResultChars"]
     1758 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1760 LOADK                            R9 K505 ["GameTreeDefaultHeadLimit"]
     1761 LOADN                            R10 200
     1762 CALL                             R8 2 1
     1763 CALL                             R8 0 1
     1764 SETTABLEKS                       R8 R4 K506 ["FIntGameTreeDefaultHeadLimit"]
     1766 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1768 LOADK                            R9 K507 ["GameTreeDefaultMaxDepth"]
     1769 LOADN                            R10 3
     1770 CALL                             R8 2 1
     1771 CALL                             R8 0 1
     1772 SETTABLEKS                       R8 R4 K508 ["FIntGameTreeDefaultMaxDepth"]
     1774 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1776 LOADK                            R9 K509 ["GameTreeMaxAbsoluteDepth"]
     1777 LOADN                            R10 10
     1778 CALL                             R8 2 1
     1779 CALL                             R8 0 1
     1780 SETTABLEKS                       R8 R4 K510 ["FIntGameTreeMaxAbsoluteDepth"]
     1782 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1784 LOADK                            R9 K511 ["GameTreeYieldCheckInterval"]
     1785 LOADN                            R10 100
     1786 CALL                             R8 2 1
     1787 CALL                             R8 0 1
     1788 SETTABLEKS                       R8 R4 K512 ["FIntGameTreeYieldCheckInterval"]
     1790 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1792 LOADK                            R9 K513 ["GameTreeYieldFps"]
     1793 LOADN                            R10 60
     1794 CALL                             R8 2 1
     1795 CALL                             R8 0 1
     1796 SETTABLEKS                       R8 R4 K514 ["FIntGameTreeYieldFps"]
     1798 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1800 LOADK                            R9 K515 ["InspectInstanceMaxJsonLength"]
     1801 LOADN                            R10 500
     1802 CALL                             R8 2 1
     1803 CALL                             R8 0 1
     1804 SETTABLEKS                       R8 R4 K516 ["FIntInspectInstanceMaxJsonLength"]
     1806 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1808 LOADK                            R9 K517 ["InspectInstanceMaxMatches"]
     1809 LOADN                            R10 20
     1810 CALL                             R8 2 1
     1811 CALL                             R8 0 1
     1812 SETTABLEKS                       R8 R4 K518 ["FIntInspectInstanceMaxMatches"]
     1814 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1816 LOADK                            R9 K519 ["InspectInstanceMaxStringLength"]
     1817 LOADN                            R10 1000
     1818 CALL                             R8 2 1
     1819 CALL                             R8 0 1
     1820 SETTABLEKS                       R8 R4 K520 ["FIntInspectInstanceMaxStringLength"]
     1822 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1824 LOADK                            R9 K521 ["MCPAssistantGenerationIndicatorWarningTime"]
     1825 LOADN                            R10 10
     1826 CALL                             R8 2 1
     1827 CALL                             R8 0 1
     1828 SETTABLEKS                       R8 R4 K522 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1830 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1832 LOADK                            R9 K523 ["MCPAssistantInputAreaCharLimit"]
     1833 LOADN                            R10 4000
     1834 CALL                             R8 2 1
     1835 CALL                             R8 0 1
     1836 SETTABLEKS                       R8 R4 K524 ["FIntMCPAssistantInputAreaCharLimit"]
     1838 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1840 LOADK                            R9 K525 ["MCPAssistantMaxPromptHistory"]
     1841 LOADN                            R10 20
     1842 CALL                             R8 2 1
     1843 CALL                             R8 0 1
     1844 SETTABLEKS                       R8 R4 K526 ["FIntMCPAssistantMaxPromptHistory"]
     1846 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1848 LOADK                            R9 K527 ["MCPAssistantMaxToolCalls"]
     1849 LOADN                            R10 20
     1850 CALL                             R8 2 1
     1851 CALL                             R8 0 1
     1852 SETTABLEKS                       R8 R4 K528 ["FIntMCPAssistantMaxToolCalls"]
     1854 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1856 LOADK                            R9 K529 ["MinimumAssistantFreeTrialRemaining"]
     1857 LOADN                            R10 1
     1858 CALL                             R8 2 1
     1859 CALL                             R8 0 1
     1860 SETTABLEKS                       R8 R4 K530 ["FIntMinimumAssistantFreeTrialRemaining"]
     1862 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1864 LOADK                            R9 K531 ["MinimumAssistantRobuxBalance"]
     1865 LOADN                            R10 100
     1866 CALL                             R8 2 1
     1867 CALL                             R8 0 1
     1868 SETTABLEKS                       R8 R4 K532 ["FIntMinimumAssistantRobuxBalance"]
     1870 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1872 LOADK                            R9 K533 ["PlaytestLookBudget"]
     1873 LOADN                            R10 7
     1874 CALL                             R8 2 1
     1875 CALL                             R8 0 1
     1876 SETTABLEKS                       R8 R4 K534 ["FIntPlaytestLookBudget"]
     1878 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1880 LOADK                            R9 K535 ["PlaytestLookTimeoutMs"]
     1881 LOADK                            R10 K492 [60000]
     1882 CALL                             R8 2 1
     1883 CALL                             R8 0 1
     1884 SETTABLEKS                       R8 R4 K536 ["FIntPlaytestLookTimeoutMs"]
     1886 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1888 LOADK                            R9 K537 ["PlaytestMaxToolCalls"]
     1889 LOADN                            R10 50
     1890 CALL                             R8 2 1
     1891 CALL                             R8 0 1
     1892 SETTABLEKS                       R8 R4 K538 ["FIntPlaytestMaxToolCalls"]
     1894 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1896 LOADK                            R9 K539 ["PrimGenLongRunThresholdSec"]
     1897 LOADN                            R10 120
     1898 CALL                             R8 2 1
     1899 CALL                             R8 0 1
     1900 SETTABLEKS                       R8 R4 K540 ["FIntPrimGenLongRunThresholdSec"]
     1902 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1904 LOADK                            R9 K541 ["PrimGenTextMaxLength"]
     1905 LOADN                            R10 80
     1906 CALL                             R8 2 1
     1907 CALL                             R8 0 1
     1908 SETTABLEKS                       R8 R4 K542 ["FIntPrimGenTextMaxLength"]
     1910 GETTABLEKS                       R8 R3 K450 ["createGetFInt"]
     1912 LOADK                            R9 K543 ["UnitTestSubagentMaxToolCalls"]
     1913 LOADN                            R10 100
     1914 CALL                             R8 2 1
     1915 CALL                             R8 0 1
     1916 SETTABLEKS                       R8 R4 K544 ["FIntUnitTestSubagentMaxToolCalls"]
     1918 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1920 LOADK                            R9 K546 ["AssistantDebugCreditMeteringBlockReason"]
     1921 LOADK                            R10 K547 [""]
     1922 CALL                             R8 2 1
     1923 CALL                             R8 0 1
     1924 SETTABLEKS                       R8 R4 K548 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1926 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1928 LOADK                            R9 K549 ["AssistantDisabledSubagents"]
     1929 LOADK                            R10 K547 [""]
     1930 CALL                             R8 2 1
     1931 CALL                             R8 0 1
     1932 SETTABLEKS                       R8 R4 K550 ["FStringAssistantDisabledSubagents"]
     1934 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1936 LOADK                            R9 K551 ["AssistantGen3dDefaultModel"]
     1937 LOADK                            R10 K552 ["Assistant/glm51-h200"]
     1938 CALL                             R8 2 1
     1939 CALL                             R8 0 1
     1940 SETTABLEKS                       R8 R4 K553 ["FStringAssistantGen3dDefaultModel"]
     1942 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1944 LOADK                            R9 K554 ["AssistantJobRunTools"]
     1945 LOADK                            R10 K555 ["generate_procedural_model,generate_mesh,generate_material,generate_avatar,generate_scene"]
     1946 CALL                             R8 2 1
     1947 CALL                             R8 0 1
     1948 SETTABLEKS                       R8 R4 K556 ["FStringAssistantJobRunTools"]
     1950 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1952 LOADK                            R9 K557 ["AssistantMeshGenImageGenModelOverride"]
     1953 LOADK                            R10 K558 ["gemini"]
     1954 CALL                             R8 2 1
     1955 CALL                             R8 0 1
     1956 SETTABLEKS                       R8 R4 K559 ["FStringAssistantMeshGenImageGenModelOverride"]
     1958 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1960 LOADK                            R9 K560 ["AssistantMeshGenImageGenPromptTemplate"]
     1961 LOADK                            R10 K547 [""]
     1962 CALL                             R8 2 1
     1963 CALL                             R8 0 1
     1964 SETTABLEKS                       R8 R4 K561 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     1966 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1968 LOADK                            R9 K562 ["AssistantMeshGenInferenceServiceOverride"]
     1969 LOADK                            R10 K563 ["stage-diff-mesh-gen"]
     1970 CALL                             R8 2 1
     1971 CALL                             R8 0 1
     1972 SETTABLEKS                       R8 R4 K564 ["FStringAssistantMeshGenInferenceServiceOverride"]
     1974 GETIMPORT                        R8 K5 [require]
     1976 GETTABLEKS                       R9 R0 K565 ["FlagUtils"]
     1978 GETTABLEKS                       R9 R9 K566 ["createGetFStringAssistantMeshGenSchemaData"]
     1980 CALL                             R8 1 1
     1981 CALL                             R8 0 1
     1982 SETTABLEKS                       R8 R4 K567 ["FStringAssistantMeshGenSchemaData"]
     1984 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1986 LOADK                            R9 K568 ["AssistantModerateErrorMsg"]
     1987 LOADK                            R10 K569 ["prompt violates Roblox safety policy"]
     1988 CALL                             R8 2 1
     1989 CALL                             R8 0 1
     1990 SETTABLEKS                       R8 R4 K570 ["FStringAssistantModerateErrorMsg"]
     1992 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     1994 LOADK                            R9 K571 ["AssistantSkillsAllowlist"]
     1995 LOADK                            R10 K572 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false, import-asset: true"]
     1996 CALL                             R8 2 1
     1997 CALL                             R8 0 1
     1998 SETTABLEKS                       R8 R4 K573 ["FStringAssistantSkillsAllowlist"]
     2000 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2002 LOADK                            R9 K574 ["AssistantTestLLMReasoningEffort"]
     2003 LOADK                            R10 K575 ["high"]
     2004 CALL                             R8 2 1
     2005 CALL                             R8 0 1
     2006 SETTABLEKS                       R8 R4 K576 ["FStringAssistantTestLLMReasoningEffort"]
     2008 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2010 LOADK                            R9 K577 ["AssistantToolsExcludedDirectories"]
     2011 LOADK                            R10 K578 ["CoreGui,PlayerGui,LoadedCode"]
     2012 CALL                             R8 2 1
     2013 CALL                             R8 0 1
     2014 SETTABLEKS                       R8 R4 K579 ["FStringAssistantToolsExcludedDirectories"]
     2016 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2018 LOADK                            R9 K580 ["AssistantToolWidgetMappings"]
     2019 LOADK                            R10 K547 [""]
     2020 CALL                             R8 2 1
     2021 CALL                             R8 0 1
     2022 SETTABLEKS                       R8 R4 K581 ["FStringAssistantToolWidgetMappings"]
     2024 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2026 LOADK                            R9 K582 ["AssistantUnitTestSubagentModel"]
     2027 LOADK                            R10 K583 ["Assistant/glm5"]
     2028 CALL                             R8 2 1
     2029 CALL                             R8 0 1
     2030 SETTABLEKS                       R8 R4 K584 ["FStringAssistantUnitTestSubagentModel"]
     2032 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2034 LOADK                            R9 K585 ["AssistantUntitledChatPlaceholderText"]
     2035 LOADK                            R10 K586 ["Untitled Chat"]
     2036 CALL                             R8 2 1
     2037 CALL                             R8 0 1
     2038 SETTABLEKS                       R8 R4 K587 ["FStringAssistantUntitledChatPlaceholder"]
     2040 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2042 LOADK                            R9 K588 ["MCPAssistantAnthropicModels"]
     2043 LOADK                            R10 K589 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     2044 CALL                             R8 2 1
     2045 CALL                             R8 0 1
     2046 SETTABLEKS                       R8 R4 K590 ["FStringMCPAssistantAnthropicModels"]
     2048 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2050 LOADK                            R9 K591 ["MCPAssistantClaudeAPIKey"]
     2051 LOADK                            R10 K547 [""]
     2052 CALL                             R8 2 1
     2053 CALL                             R8 0 1
     2054 SETTABLEKS                       R8 R4 K592 ["FStringMCPAssistantClaudeAPIKey"]
     2056 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2058 LOADK                            R9 K593 ["MCPAssistantCustomModelName"]
     2059 LOADK                            R10 K547 [""]
     2060 CALL                             R8 2 1
     2061 CALL                             R8 0 1
     2062 SETTABLEKS                       R8 R4 K594 ["FStringMCPAssistantCustomModelName"]
     2064 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2066 LOADK                            R9 K595 ["MCPAssistantGeminiAPIKey"]
     2067 LOADK                            R10 K547 [""]
     2068 CALL                             R8 2 1
     2069 CALL                             R8 0 1
     2070 SETTABLEKS                       R8 R4 K596 ["FStringMCPAssistantGeminiAPIKey"]
     2072 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2074 LOADK                            R9 K597 ["MCPAssistantGeminiModels"]
     2075 LOADK                            R10 K598 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     2076 CALL                             R8 2 1
     2077 CALL                             R8 0 1
     2078 SETTABLEKS                       R8 R4 K599 ["FStringMCPAssistantGeminiModels"]
     2080 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2082 LOADK                            R9 K600 ["MCPAssistantOpenAIAPIKey"]
     2083 LOADK                            R10 K547 [""]
     2084 CALL                             R8 2 1
     2085 CALL                             R8 0 1
     2086 SETTABLEKS                       R8 R4 K601 ["FStringMCPAssistantOpenAIAPIKey"]
     2088 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2090 LOADK                            R9 K602 ["MCPAssistantOpenAIModels"]
     2091 LOADK                            R10 K603 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     2092 CALL                             R8 2 1
     2093 CALL                             R8 0 1
     2094 SETTABLEKS                       R8 R4 K604 ["FStringMCPAssistantOpenAIModels"]
     2096 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2098 LOADK                            R9 K605 ["MCPAssistantOpenAIReasoningEffort"]
     2099 LOADK                            R10 K547 [""]
     2100 CALL                             R8 2 1
     2101 CALL                             R8 0 1
     2102 SETTABLEKS                       R8 R4 K606 ["FStringMCPAssistantOpenAIReasoningEffort"]
     2104 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2106 LOADK                            R9 K607 ["MCPAssistantPrimitiveGenServerURL"]
     2107 LOADK                            R10 K547 [""]
     2108 CALL                             R8 2 1
     2109 CALL                             R8 0 1
     2110 SETTABLEKS                       R8 R4 K608 ["FStringMCPAssistantPrimitiveGenServerURL"]
     2112 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2114 LOADK                            R9 K609 ["MCPAssistantTestLLMAPIKey"]
     2115 LOADK                            R10 K547 [""]
     2116 CALL                             R8 2 1
     2117 CALL                             R8 0 1
     2118 SETTABLEKS                       R8 R4 K610 ["FStringMCPAssistantTestLLMAPIKey"]
     2120 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2122 LOADK                            R9 K611 ["MCPAssistantURLOverride"]
     2123 LOADK                            R10 K547 [""]
     2124 CALL                             R8 2 1
     2125 CALL                             R8 0 1
     2126 SETTABLEKS                       R8 R4 K612 ["FStringMCPAssistantURLOverride"]
     2128 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2130 LOADK                            R9 K613 ["MCPDocsUrl"]
     2131 LOADK                            R10 K614 ["https://create.roblox.com/docs/studio/mcp/"]
     2132 CALL                             R8 2 1
     2133 CALL                             R8 0 1
     2134 SETTABLEKS                       R8 R4 K615 ["FStringMCPDocsUrl"]
     2136 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2138 LOADK                            R9 K616 ["PlaytestConversationURL"]
     2139 LOADK                            R10 K617 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     2140 CALL                             R8 2 1
     2141 CALL                             R8 0 1
     2142 SETTABLEKS                       R8 R4 K618 ["FStringPlaytestConversationURL"]
     2144 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2146 LOADK                            R9 K619 ["PlaytestModelName"]
     2147 LOADK                            R10 K620 ["Qwen/Qwen35-35B-A3B"]
     2148 CALL                             R8 2 1
     2149 CALL                             R8 0 1
     2150 SETTABLEKS                       R8 R4 K621 ["FStringPlaytestModelName"]
     2152 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2154 LOADK                            R9 K622 ["PrimGenImageGenPromptTemplate"]
     2155 LOADK                            R10 K547 [""]
     2156 CALL                             R8 2 1
     2157 CALL                             R8 0 1
     2158 SETTABLEKS                       R8 R4 K623 ["FStringPrimGenImageGenPromptTemplate"]
     2160 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2162 LOADK                            R9 K624 ["ProceduralScriptCapabilities"]
     2163 LOADK                            R10 K625 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     2164 CALL                             R8 2 1
     2165 CALL                             R8 0 1
     2166 SETTABLEKS                       R8 R4 K626 ["FStringProceduralScriptCapabilities"]
     2168 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2170 LOADK                            R9 K627 ["ScreenCaptureFormat"]
     2171 LOADK                            R10 K547 [""]
     2172 CALL                             R8 2 1
     2173 CALL                             R8 0 1
     2174 SETTABLEKS                       R8 R4 K628 ["FStringScreenCaptureFormat"]
     2176 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2178 LOADK                            R9 K629 ["ScreenCaptureSize"]
     2179 LOADK                            R10 K547 [""]
     2180 CALL                             R8 2 1
     2181 CALL                             R8 0 1
     2182 SETTABLEKS                       R8 R4 K630 ["FStringScreenCaptureSize"]
     2184 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2186 LOADK                            R9 K631 ["ScreenCaptureSubagentModelName"]
     2187 LOADK                            R10 K547 [""]
     2188 CALL                             R8 2 1
     2189 CALL                             R8 0 1
     2190 SETTABLEKS                       R8 R4 K632 ["FStringScreenCaptureSubagentModelName"]
     2192 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2194 LOADK                            R9 K633 ["SubagentExploreModelName"]
     2195 LOADK                            R10 K634 ["Assistant/glm5-b200-server-1"]
     2196 CALL                             R8 2 1
     2197 CALL                             R8 0 1
     2198 SETTABLEKS                       R8 R4 K635 ["FStringSubagentExploreModelName"]
     2200 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2202 LOADK                            R9 K636 ["SubagentURLOverride"]
     2203 LOADK                            R10 K547 [""]
     2204 CALL                             R8 2 1
     2205 CALL                             R8 0 1
     2206 SETTABLEKS                       R8 R4 K637 ["FStringSubagentURLOverride"]
     2208 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2210 LOADK                            R9 K638 ["TestLLMURLOverride"]
     2211 LOADK                            R10 K547 [""]
     2212 CALL                             R8 2 1
     2213 CALL                             R8 0 1
     2214 SETTABLEKS                       R8 R4 K639 ["FStringTestLLMURLOverride"]
     2216 GETTABLEKS                       R8 R3 K545 ["createGetFString"]
     2218 LOADK                            R9 K640 ["TestSubagentURLOverride"]
     2219 LOADK                            R10 K547 [""]
     2220 CALL                             R8 2 1
     2221 CALL                             R8 0 1
     2222 SETTABLEKS                       R8 R4 K641 ["FStringTestSubagentURLOverride"]
     2224 DUPTABLE                         R10 K643 [{"__index", "__newindex"}]
     2225 SETTABLEKS                       R2 R10 K642 ["__index"]
     2227 SETTABLEKS                       R2 R10 K11 ["__newindex"]
     2229 FASTCALL2                        SETMETATABLE R4 R10 ; [+4]
     2231 MOVE                             R9 R4
     2232 GETIMPORT                        R8 K15 [setmetatable]
     2234 CALL                             R8 2 1
     2235 RETURN                           R8 1
