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
       92 LOADK                            R9 K36 ["AssistantMcpActivityReportingEnabled"]
       93 CALL                             R8 1 1
       94 CALL                             R8 0 1
       95 SETTABLEKS                       R8 R4 K37 ["EngineFeatureAssistantMcpActivityReportingEnabled"]
       97 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
       99 LOADK                            R9 K38 ["AssistantMcpCaptureHook"]
      100 CALL                             R8 1 1
      101 CALL                             R8 0 1
      102 SETTABLEKS                       R8 R4 K39 ["EngineFeatureAssistantMcpCaptureHook"]
      104 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      106 LOADK                            R9 K40 ["StudioAssistantMcpOriginated"]
      107 CALL                             R8 1 1
      108 CALL                             R8 0 1
      109 SETTABLEKS                       R8 R4 K41 ["EngineFeatureStudioAssistantMcpOriginated"]
      111 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      113 LOADK                            R9 K42 ["StudioPanelsResolveFullPluginGuiId"]
      114 CALL                             R8 1 1
      115 CALL                             R8 0 1
      116 SETTABLEKS                       R8 R4 K43 ["EngineFeatureStudioPanelsResolveFullPluginGuiId"]
      118 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      120 LOADK                            R9 K44 ["StudioPlaceSaver"]
      121 CALL                             R8 1 1
      122 CALL                             R8 0 1
      123 SETTABLEKS                       R8 R4 K45 ["EngineFeatureStudioPlaceSaver"]
      125 GETTABLEKS                       R8 R3 K25 ["createGetEngineFeature"]
      127 LOADK                            R9 K46 ["StudioPluginCaptureFromOwnWindow"]
      128 CALL                             R8 1 1
      129 CALL                             R8 0 1
      130 SETTABLEKS                       R8 R4 K47 ["EngineFeatureStudioPluginCaptureFromOwnWindow"]
      132 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      134 LOADK                            R9 K48 ["AllowThreadSuspendOverride"]
      135 CALL                             R8 1 1
      136 CALL                             R8 0 1
      137 SETTABLEKS                       R8 R4 K49 ["FFlagAllowThreadSuspendOverride"]
      139 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      141 LOADK                            R9 K50 ["AnimationGenOpenACE2"]
      142 CALL                             R8 1 1
      143 CALL                             R8 0 1
      144 SETTABLEKS                       R8 R4 K51 ["FFlagAnimationGenOpenACE"]
      146 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      148 LOADK                            R9 K52 ["AssistantACPBatchHistoryReplay"]
      149 CALL                             R8 1 1
      150 CALL                             R8 0 1
      151 SETTABLEKS                       R8 R4 K53 ["FFlagAssistantACPBatchHistoryReplay"]
      153 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      155 LOADK                            R9 K54 ["AssistantACPFixPendingToolCall2"]
      156 CALL                             R8 1 1
      157 CALL                             R8 0 1
      158 SETTABLEKS                       R8 R4 K55 ["FFlagAssistantACPFixPendingToolCall"]
      160 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      162 LOADK                            R9 K56 ["AssistantActivatePluginTool"]
      163 CALL                             R8 1 1
      164 CALL                             R8 0 1
      165 SETTABLEKS                       R8 R4 K57 ["FFlagAssistantActivatePluginTool"]
      167 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      169 LOADK                            R9 K58 ["AssistantAddNumberInput"]
      170 CALL                             R8 1 1
      171 CALL                             R8 0 1
      172 SETTABLEKS                       R8 R4 K59 ["FFlagAssistantAddNumberInput"]
      174 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      176 LOADK                            R9 K60 ["AssistantAnimationGenPluginGate"]
      177 CALL                             R8 1 1
      178 CALL                             R8 0 1
      179 SETTABLEKS                       R8 R4 K61 ["FFlagAssistantAnimationGenPluginGate"]
      181 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      183 LOADK                            R9 K62 ["AssistantAnimationGenCombinedDragger"]
      184 CALL                             R8 1 1
      185 CALL                             R8 0 1
      186 SETTABLEKS                       R8 R4 K63 ["FFlagAssistantAnimationGenCombinedDragger"]
      188 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      190 LOADK                            R9 K64 ["AssistantAnimationGenDisablePreviewSelectionFollowing"]
      191 CALL                             R8 1 1
      192 CALL                             R8 0 1
      193 SETTABLEKS                       R8 R4 K65 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
      195 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      197 LOADK                            R9 K66 ["AssistantAnimationGenEnablePublishForMCP"]
      198 CALL                             R8 1 1
      199 CALL                             R8 0 1
      200 SETTABLEKS                       R8 R4 K67 ["FFlagAssistantAnimationGenEnablePublishForMCP"]
      202 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      204 LOADK                            R9 K68 ["AssistantAnimationGenFixPoseSelect"]
      205 CALL                             R8 1 1
      206 CALL                             R8 0 1
      207 SETTABLEKS                       R8 R4 K69 ["FFlagAssistantAnimationGenFixPoseSelect"]
      209 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      211 LOADK                            R9 K70 ["AssistantAnimationGenAlwaysShowFades"]
      212 CALL                             R8 1 1
      213 CALL                             R8 0 1
      214 SETTABLEKS                       R8 R4 K71 ["FFlagAssistantAnimationGenAlwaysShowFades"]
      216 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      218 LOADK                            R9 K72 ["AssistantAnimationGenForwardPromptVerbatim"]
      219 CALL                             R8 1 1
      220 CALL                             R8 0 1
      221 SETTABLEKS                       R8 R4 K73 ["FFlagAssistantAnimationGenForwardPromptVerbatim"]
      223 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      225 LOADK                            R9 K74 ["AssistantAnimationGenMoveKeyframeKeepRoot"]
      226 CALL                             R8 1 1
      227 CALL                             R8 0 1
      228 SETTABLEKS                       R8 R4 K75 ["FFlagAssistantAnimationGenMoveKeyframeKeepRoot"]
      230 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      232 LOADK                            R9 K76 ["AssistantAnimationGenPausePlaybackOnCollapse"]
      233 CALL                             R8 1 1
      234 CALL                             R8 0 1
      235 SETTABLEKS                       R8 R4 K77 ["FFlagAssistantAnimationGenPausePlaybackOnCollapse"]
      237 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      239 LOADK                            R9 K78 ["AssistantAnimationGenPausePlaybackOnUnmount"]
      240 CALL                             R8 1 1
      241 CALL                             R8 0 1
      242 SETTABLEKS                       R8 R4 K79 ["FFlagAssistantAnimationGenPausePlaybackOnUnmount"]
      244 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      246 LOADK                            R9 K80 ["AssistantAnimationGenRotationIntentV3"]
      247 CALL                             R8 1 1
      248 CALL                             R8 0 1
      249 SETTABLEKS                       R8 R4 K81 ["FFlagAssistantAnimationGenRotationIntentV3"]
      251 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      253 LOADK                            R9 K82 ["AssistantAnimationGenShowPublishButton"]
      254 CALL                             R8 1 1
      255 CALL                             R8 0 1
      256 SETTABLEKS                       R8 R4 K83 ["FFlagAssistantAnimationGenShowPublishButton"]
      258 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      260 LOADK                            R9 K84 ["AssistantAnimationGenTelemetry"]
      261 CALL                             R8 1 1
      262 CALL                             R8 0 1
      263 SETTABLEKS                       R8 R4 K85 ["FFlagAssistantAnimationGenTelemetry"]
      265 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      267 LOADK                            R9 K86 ["AssistantAnimationGenTrackMcpPublish"]
      268 CALL                             R8 1 1
      269 CALL                             R8 0 1
      270 SETTABLEKS                       R8 R4 K87 ["FFlagAssistantAnimationGenTrackMcpPublish"]
      272 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      274 LOADK                            R9 K88 ["AssistantAnimationGenLogResolvedMode"]
      275 CALL                             R8 1 1
      276 CALL                             R8 0 1
      277 SETTABLEKS                       R8 R4 K89 ["FFlagAssistantAnimationGenLogResolvedMode"]
      279 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      281 LOADK                            R9 K90 ["AssistantAnimationGenSnapToEditedPoses"]
      282 CALL                             R8 1 1
      283 CALL                             R8 0 1
      284 SETTABLEKS                       R8 R4 K91 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
      286 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      288 LOADK                            R9 K92 ["AssistantAnimationGenSolveRetargetedPoses"]
      289 CALL                             R8 1 1
      290 CALL                             R8 0 1
      291 SETTABLEKS                       R8 R4 K93 ["FFlagAssistantAnimationGenSolveRetargetedPoses"]
      293 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      295 LOADK                            R9 K94 ["AssistantAnimationGenCustomRigPosing"]
      296 CALL                             R8 1 1
      297 CALL                             R8 0 1
      298 SETTABLEKS                       R8 R4 K95 ["FFlagAssistantAnimationGenCustomRigPosing"]
      300 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      302 LOADK                            R9 K96 ["AssistantAnimationGenUndoRedo"]
      303 CALL                             R8 1 1
      304 CALL                             R8 0 1
      305 SETTABLEKS                       R8 R4 K97 ["FFlagAssistantAnimationGenUndoRedo"]
      307 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      309 LOADK                            R9 K98 ["AssistantAnimationGenSolveLimbRoots"]
      310 CALL                             R8 1 1
      311 CALL                             R8 0 1
      312 SETTABLEKS                       R8 R4 K99 ["FFlagAssistantAnimationGenSolveLimbRoots"]
      314 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      316 LOADK                            R9 K100 ["AssistantAnimationGenTurnOffRetargetingForR15Plus"]
      317 CALL                             R8 1 1
      318 CALL                             R8 0 1
      319 SETTABLEKS                       R8 R4 K101 ["FFlagAssistantAnimationGenTurnOffRetargetingForR15Plus"]
      321 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      323 LOADK                            R9 K102 ["AssistantAnimationGenPoseR15PlusJoints"]
      324 CALL                             R8 1 1
      325 CALL                             R8 0 1
      326 SETTABLEKS                       R8 R4 K103 ["FFlagAssistantAnimationGenPoseR15PlusJoints"]
      328 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      330 LOADK                            R9 K104 ["AssistantAnimationGenNewPosing"]
      331 CALL                             R8 1 1
      332 CALL                             R8 0 1
      333 SETTABLEKS                       R8 R4 K105 ["FFlagAssistantAnimationGenNewPosing"]
      335 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      337 LOADK                            R9 K106 ["AssistantAnimationGenDrawUnposeableBones"]
      338 CALL                             R8 1 1
      339 CALL                             R8 0 1
      340 SETTABLEKS                       R8 R4 K107 ["FFlagAssistantAnimationGenDrawUnposeableBones"]
      342 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      344 LOADK                            R9 K108 ["AssistantAnimationGenTool"]
      345 CALL                             R8 1 1
      346 CALL                             R8 0 1
      347 SETTABLEKS                       R8 R4 K109 ["FFlagAssistantAnimationGenTool"]
      349 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      351 LOADK                            R9 K110 ["AssistantAnimationGenRemoveEditFormPrompt"]
      352 CALL                             R8 1 1
      353 CALL                             R8 0 1
      354 SETTABLEKS                       R8 R4 K111 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      356 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      358 LOADK                            R9 K112 ["AssistantAnimationGenShowThoughts"]
      359 CALL                             R8 1 1
      360 CALL                             R8 0 1
      361 SETTABLEKS                       R8 R4 K113 ["FFlagAssistantAnimationGenShowThoughts"]
      363 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      365 LOADK                            R9 K114 ["AssistantAnimationGenSkill"]
      366 CALL                             R8 1 1
      367 CALL                             R8 0 1
      368 SETTABLEKS                       R8 R4 K115 ["FFlagAssistantAnimationGenSkill"]
      370 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      372 LOADK                            R9 K116 ["AssistantAnimationGenSkillToolDescription"]
      373 CALL                             R8 1 1
      374 CALL                             R8 0 1
      375 SETTABLEKS                       R8 R4 K117 ["FFlagAssistantAnimationGenSkillToolDescription"]
      377 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      379 LOADK                            R9 K118 ["AssistantAskInputExpandableRows"]
      380 CALL                             R8 1 1
      381 CALL                             R8 0 1
      382 SETTABLEKS                       R8 R4 K119 ["FFlagAssistantAskInputExpandableRows"]
      384 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      386 LOADK                            R9 K120 ["AssistantAskInputFooterResolver"]
      387 CALL                             R8 1 1
      388 CALL                             R8 0 1
      389 SETTABLEKS                       R8 R4 K121 ["FFlagAssistantAskInputFooterResolver"]
      391 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      393 LOADK                            R9 K122 ["AssistantAskInputRequiredMarkers"]
      394 CALL                             R8 1 1
      395 CALL                             R8 0 1
      396 SETTABLEKS                       R8 R4 K123 ["FFlagAssistantAskInputRequiredMarkers"]
      398 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      400 LOADK                            R9 K124 ["AssistantAskInputToolLLM2"]
      401 CALL                             R8 1 1
      402 CALL                             R8 0 1
      403 SETTABLEKS                       R8 R4 K125 ["FFlagAssistantAskInputToolLLM"]
      405 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      407 LOADK                            R9 K126 ["AssistantAssetQualityTool"]
      408 CALL                             R8 1 1
      409 CALL                             R8 0 1
      410 SETTABLEKS                       R8 R4 K127 ["FFlagAssistantAssetQualityTool"]
      412 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      414 LOADK                            R9 K128 ["AssistantAssetSearchCreatorStoreUtm"]
      415 CALL                             R8 1 1
      416 CALL                             R8 0 1
      417 SETTABLEKS                       R8 R4 K129 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
      419 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      421 LOADK                            R9 K130 ["AssistantAssetSearchDirectInsert"]
      422 CALL                             R8 1 1
      423 CALL                             R8 0 1
      424 SETTABLEKS                       R8 R4 K131 ["FFlagAssistantAssetSearchDirectInsert"]
      426 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      428 LOADK                            R9 K132 ["AssistantAssetTileNamePreview"]
      429 CALL                             R8 1 1
      430 CALL                             R8 0 1
      431 SETTABLEKS                       R8 R4 K133 ["FFlagAssistantAssetTileNamePreview"]
      433 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      435 LOADK                            R9 K134 ["AssistantAvatarAutoSetupTool5"]
      436 CALL                             R8 1 1
      437 CALL                             R8 0 1
      438 SETTABLEKS                       R8 R4 K135 ["FFlagAssistantAvatarAutoSetupTool"]
      440 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      442 LOADK                            R9 K136 ["AssistantAvatarGenAccessoriesAfterParent"]
      443 CALL                             R8 1 1
      444 CALL                             R8 0 1
      445 SETTABLEKS                       R8 R4 K137 ["FFlagAssistantAvatarGenAccessoriesAfterParent"]
      447 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      449 LOADK                            R9 K138 ["AssistantAvatarGenAccessoriesFromMeshParts"]
      450 CALL                             R8 1 1
      451 CALL                             R8 0 1
      452 SETTABLEKS                       R8 R4 K139 ["FFlagAssistantAvatarGenAccessoriesFromMeshParts"]
      454 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      456 LOADK                            R9 K140 ["AssistantAvatarGenCompactName2"]
      457 CALL                             R8 1 1
      458 CALL                             R8 0 1
      459 SETTABLEKS                       R8 R4 K141 ["FFlagAssistantAvatarGenCompactName"]
      461 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      463 LOADK                            R9 K142 ["AssistantAvatarGenHumanoidRigDescription"]
      464 CALL                             R8 1 1
      465 CALL                             R8 0 1
      466 SETTABLEKS                       R8 R4 K143 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      468 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      470 LOADK                            R9 K144 ["AssistantAvatarGenPlaceWithoutRotation"]
      471 CALL                             R8 1 1
      472 CALL                             R8 0 1
      473 SETTABLEKS                       R8 R4 K145 ["FFlagAssistantAvatarGenPlaceWithoutRotation"]
      475 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      477 LOADK                            R9 K146 ["AssistantAvatarGenSlashCommand"]
      478 CALL                             R8 1 1
      479 CALL                             R8 0 1
      480 SETTABLEKS                       R8 R4 K147 ["FFlagAssistantAvatarGenSlashCommand"]
      482 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      484 LOADK                            R9 K148 ["AssistantAvatarGenTool"]
      485 CALL                             R8 1 1
      486 CALL                             R8 0 1
      487 SETTABLEKS                       R8 R4 K149 ["FFlagAssistantAvatarGenTool"]
      489 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      491 LOADK                            R9 K150 ["AssistantAvatarGenUsageTelemetry"]
      492 CALL                             R8 1 1
      493 CALL                             R8 0 1
      494 SETTABLEKS                       R8 R4 K151 ["FFlagAssistantAvatarGenUsageTelemetry"]
      496 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      498 LOADK                            R9 K152 ["AssistantBetaFeatureSkills"]
      499 CALL                             R8 1 1
      500 CALL                             R8 0 1
      501 SETTABLEKS                       R8 R4 K153 ["FFlagAssistantBetaFeatureSkills"]
      503 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      505 LOADK                            R9 K154 ["AssistantCapturePluginGuiFocusPanel"]
      506 CALL                             R8 1 1
      507 CALL                             R8 0 1
      508 SETTABLEKS                       R8 R4 K155 ["FFlagAssistantCapturePluginGuiFocusPanel"]
      510 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      512 LOADK                            R9 K156 ["AssistantCapturePluginGuiTool"]
      513 CALL                             R8 1 1
      514 CALL                             R8 0 1
      515 SETTABLEKS                       R8 R4 K157 ["FFlagAssistantCapturePluginGuiTool"]
      517 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      519 LOADK                            R9 K158 ["AssistantChatFollowBottomThreshold"]
      520 CALL                             R8 1 1
      521 CALL                             R8 0 1
      522 SETTABLEKS                       R8 R4 K159 ["FFlagAssistantChatFollowBottomThreshold"]
      524 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      526 LOADK                            R9 K160 ["AssistantCloseDropdownsOnWidgetHidden"]
      527 CALL                             R8 1 1
      528 CALL                             R8 0 1
      529 SETTABLEKS                       R8 R4 K161 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      531 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      533 LOADK                            R9 K162 ["AssistantConsoleOutputTailFromEnd2"]
      534 CALL                             R8 1 1
      535 CALL                             R8 0 1
      536 SETTABLEKS                       R8 R4 K163 ["FFlagAssistantConsoleOutputTailFromEnd"]
      538 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      540 LOADK                            R9 K164 ["AssistantContentRowHideNewButton"]
      541 CALL                             R8 1 1
      542 CALL                             R8 0 1
      543 SETTABLEKS                       R8 R4 K165 ["FFlagAssistantContentRowHideNewButton"]
      545 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      547 LOADK                            R9 K166 ["AssistantCreditMetering3"]
      548 CALL                             R8 1 1
      549 CALL                             R8 0 1
      550 SETTABLEKS                       R8 R4 K167 ["FFlagAssistantCreditMetering"]
      552 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      554 LOADK                            R9 K168 ["AssistantCreditMeteringAdditionalUsage"]
      555 LOADB                            R10 1
      556 CALL                             R8 2 1
      557 CALL                             R8 0 1
      558 SETTABLEKS                       R8 R4 K169 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      560 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      562 LOADK                            R9 K170 ["AssistantCreditMeteringInferBlockReason"]
      563 CALL                             R8 1 1
      564 CALL                             R8 0 1
      565 SETTABLEKS                       R8 R4 K171 ["FFlagAssistantCreditMeteringInferBlockReason"]
      567 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      569 LOADK                            R9 K172 ["AssistantCreditMeteringLocalBackend"]
      570 CALL                             R8 1 1
      571 CALL                             R8 0 1
      572 SETTABLEKS                       R8 R4 K173 ["FFlagAssistantCreditMeteringLocalBackend"]
      574 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      576 LOADK                            R9 K174 ["AssistantCreditMeteringLocalBackendExp"]
      577 CALL                             R8 1 1
      578 CALL                             R8 0 1
      579 SETTABLEKS                       R8 R4 K175 ["FFlagAssistantCreditMeteringLocalBackendExp"]
      581 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      583 LOADK                            R9 K176 ["AssistantCreditMeteringResetPeriod"]
      584 CALL                             R8 1 1
      585 CALL                             R8 0 1
      586 SETTABLEKS                       R8 R4 K177 ["FFlagAssistantCreditMeteringResetPeriod"]
      588 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      590 LOADK                            R9 K178 ["AssistantDestroySessionMonitorsOnClose"]
      591 CALL                             R8 1 1
      592 CALL                             R8 0 1
      593 SETTABLEKS                       R8 R4 K179 ["FFlagAssistantDestroySessionMonitorsOnClose"]
      595 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      597 LOADK                            R9 K180 ["AssistantDisableApplyEditDataModelAvailability"]
      598 CALL                             R8 1 1
      599 CALL                             R8 0 1
      600 SETTABLEKS                       R8 R4 K181 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      602 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      604 LOADK                            R9 K182 ["AssistantDisableAssetInsertAutoGrantPermissions"]
      605 CALL                             R8 1 1
      606 CALL                             R8 0 1
      607 SETTABLEKS                       R8 R4 K183 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      609 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      611 LOADK                            R9 K184 ["AssistantDisableBranching"]
      612 CALL                             R8 1 1
      613 CALL                             R8 0 1
      614 SETTABLEKS                       R8 R4 K185 ["FFlagAssistantDisableBranching"]
      616 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      618 LOADK                            R9 K186 ["AssistantDisableSessionFilter"]
      619 CALL                             R8 1 1
      620 CALL                             R8 0 1
      621 SETTABLEKS                       R8 R4 K187 ["FFlagAssistantDisableSessionFilter"]
      623 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      625 LOADK                            R9 K188 ["AssistantDMNetworkingLongUnreachableTimeout"]
      626 CALL                             R8 1 1
      627 CALL                             R8 0 1
      628 SETTABLEKS                       R8 R4 K189 ["FFlagAssistantDMNetworkingLongUnreachableTimeout"]
      630 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      632 LOADK                            R9 K190 ["AssistantExecLuauYieldHint2"]
      633 CALL                             R8 1 1
      634 CALL                             R8 0 1
      635 SETTABLEKS                       R8 R4 K191 ["FFlagAssistantExecLuauYieldHint"]
      637 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      639 LOADK                            R9 K192 ["AssistantExecLuauYieldHintInternal"]
      640 CALL                             R8 1 1
      641 CALL                             R8 0 1
      642 SETTABLEKS                       R8 R4 K193 ["FFlagAssistantExecLuauYieldHintInternal"]
      644 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      646 LOADK                            R9 K194 ["AssistantExternalMCPPluginSettingRedundancy"]
      647 CALL                             R8 1 1
      648 CALL                             R8 0 1
      649 SETTABLEKS                       R8 R4 K195 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
      651 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      653 LOADK                            R9 K196 ["AssistantFeedbackView"]
      654 CALL                             R8 1 1
      655 CALL                             R8 0 1
      656 SETTABLEKS                       R8 R4 K197 ["FFlagAssistantFeedbackView"]
      658 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      660 LOADK                            R9 K198 ["AssistantFixStartPlayHang"]
      661 CALL                             R8 1 1
      662 CALL                             R8 0 1
      663 SETTABLEKS                       R8 R4 K199 ["FFlagAssistantFixStartPlayHang"]
      665 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      667 LOADK                            R9 K200 ["AssistantForceRemoteServiceForInternal"]
      668 CALL                             R8 1 1
      669 CALL                             R8 0 1
      670 SETTABLEKS                       R8 R4 K201 ["FFlagAssistantForceRemoteServiceForInternal"]
      672 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      674 LOADK                            R9 K202 ["AssistantGameTreeYield"]
      675 CALL                             R8 1 1
      676 CALL                             R8 0 1
      677 SETTABLEKS                       R8 R4 K203 ["FFlagAssistantGameTreeYield"]
      679 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      681 LOADK                            R9 K204 ["AssistantGen3DAssetPublishTracking"]
      682 CALL                             R8 1 1
      683 CALL                             R8 0 1
      684 SETTABLEKS                       R8 R4 K205 ["FFlagAssistantGen3DAssetPublishTracking"]
      686 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      688 LOADK                            R9 K206 ["AssistantGen3dAutoSegmentation"]
      689 CALL                             R8 1 1
      690 CALL                             R8 0 1
      691 SETTABLEKS                       R8 R4 K207 ["FFlagAssistantGen3dAutoSegmentation"]
      693 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      695 LOADK                            R9 K208 ["AssistantGen3dCancelCompletionTelemetry"]
      696 CALL                             R8 1 1
      697 CALL                             R8 0 1
      698 SETTABLEKS                       R8 R4 K209 ["FFlagAssistantGen3dCancelCompletionTelemetry"]
      700 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      702 LOADK                            R9 K210 ["AssistantGen3DImagePreviewTelemetry"]
      703 CALL                             R8 1 1
      704 CALL                             R8 0 1
      705 SETTABLEKS                       R8 R4 K211 ["FFlagAssistantGen3DImagePreviewTelemetry"]
      707 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      709 LOADK                            R9 K212 ["AssistantGen3DTelemetryV2"]
      710 CALL                             R8 1 1
      711 CALL                             R8 0 1
      712 SETTABLEKS                       R8 R4 K213 ["FFlagAssistantGen3DTelemetryV2"]
      714 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      716 LOADK                            R9 K214 ["AssistantGenerateLayoutCalloutCancel"]
      717 CALL                             R8 1 1
      718 CALL                             R8 0 1
      719 SETTABLEKS                       R8 R4 K215 ["FFlagAssistantGenerateLayoutCalloutCancel"]
      721 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      723 LOADK                            R9 K216 ["AssistantGenerateLayoutTool"]
      724 CALL                             R8 1 1
      725 CALL                             R8 0 1
      726 SETTABLEKS                       R8 R4 K217 ["FFlagAssistantGenerateLayoutTool"]
      728 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      730 LOADK                            R9 K218 ["AssistantGenerateSceneInputValidation"]
      731 CALL                             R8 1 1
      732 CALL                             R8 0 1
      733 SETTABLEKS                       R8 R4 K219 ["FFlagAssistantGenerateSceneInputValidation"]
      735 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      737 LOADK                            R9 K220 ["AssistantGenerateSceneMeshGenToggle"]
      738 CALL                             R8 1 1
      739 CALL                             R8 0 1
      740 SETTABLEKS                       R8 R4 K221 ["FFlagAssistantGenerateSceneMeshGenToggle"]
      742 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      744 LOADK                            R9 K222 ["AssistantGenerateSceneQuality"]
      745 CALL                             R8 1 1
      746 CALL                             R8 0 1
      747 SETTABLEKS                       R8 R4 K223 ["FFlagAssistantGenerateSceneQuality"]
      749 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      751 LOADK                            R9 K224 ["AssistantGrepSearchKeepEmptyLines"]
      752 CALL                             R8 1 1
      753 CALL                             R8 0 1
      754 SETTABLEKS                       R8 R4 K225 ["FFlagAssistantGrepSearchKeepEmptyLines"]
      756 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      758 LOADK                            R9 K226 ["AssistantHideContent"]
      759 CALL                             R8 1 1
      760 CALL                             R8 0 1
      761 SETTABLEKS                       R8 R4 K227 ["FFlagAssistantHideContent"]
      763 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      765 LOADK                            R9 K228 ["AssistantAddPaddingToFillRow"]
      766 CALL                             R8 1 1
      767 CALL                             R8 0 1
      768 SETTABLEKS                       R8 R4 K229 ["FFlagAssistantAddPaddingToFillRow"]
      770 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      772 LOADK                            R9 K230 ["AssistantHidePinForBuild"]
      773 CALL                             R8 1 1
      774 CALL                             R8 0 1
      775 SETTABLEKS                       R8 R4 K231 ["FFlagAssistantHidePinForBuild"]
      777 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      779 LOADK                            R9 K232 ["AssistantHintMultiEditOverExecLuau"]
      780 CALL                             R8 1 1
      781 CALL                             R8 0 1
      782 SETTABLEKS                       R8 R4 K233 ["FFlagAssistantHintMultiEditOverExecLuau"]
      784 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      786 LOADK                            R9 K234 ["AssistantImageGenAbortPollOn4xx"]
      787 CALL                             R8 1 1
      788 CALL                             R8 0 1
      789 SETTABLEKS                       R8 R4 K235 ["FFlagAssistantImageGenAbortPollOn4xx"]
      791 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      793 LOADK                            R9 K236 ["AssistantImageSelectionWizardModeMeshGen"]
      794 CALL                             R8 1 1
      795 CALL                             R8 0 1
      796 SETTABLEKS                       R8 R4 K237 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      798 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      800 LOADK                            R9 K238 ["AssistantImageSelectionWizardModePrimitiveGen"]
      801 CALL                             R8 1 1
      802 CALL                             R8 0 1
      803 SETTABLEKS                       R8 R4 K239 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      805 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      807 LOADK                            R9 K240 ["AssistantImageSelectionWizardModeTextureGen"]
      808 CALL                             R8 1 1
      809 CALL                             R8 0 1
      810 SETTABLEKS                       R8 R4 K241 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      812 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      814 LOADK                            R9 K242 ["AssistantIncorrectAttachPrimGenImageToInput"]
      815 CALL                             R8 1 1
      816 CALL                             R8 0 1
      817 SETTABLEKS                       R8 R4 K243 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      819 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      821 LOADK                            R9 K244 ["AssistantInsertAssetSandboxProceduralModels"]
      822 CALL                             R8 1 1
      823 CALL                             R8 0 1
      824 SETTABLEKS                       R8 R4 K245 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      826 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      828 LOADK                            R9 K246 ["AssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      829 CALL                             R8 1 1
      830 CALL                             R8 0 1
      831 SETTABLEKS                       R8 R4 K247 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      833 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      835 LOADK                            R9 K248 ["AssistantInsertAssetSandboxScripts"]
      836 CALL                             R8 1 1
      837 CALL                             R8 0 1
      838 SETTABLEKS                       R8 R4 K249 ["FFlagAssistantInsertAssetSandboxScripts"]
      840 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      842 LOADK                            R9 K250 ["AssistantJobWaitExternalMcp"]
      843 CALL                             R8 1 1
      844 CALL                             R8 0 1
      845 SETTABLEKS                       R8 R4 K251 ["FFlagAssistantJobWaitExternalMcp"]
      847 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      849 LOADK                            R9 K252 ["AssistantListPluginGuisTool"]
      850 CALL                             R8 1 1
      851 CALL                             R8 0 1
      852 SETTABLEKS                       R8 R4 K253 ["FFlagAssistantListPluginGuisTool"]
      854 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      856 LOADK                            R9 K254 ["AssistantMarkdownStreaming"]
      857 CALL                             R8 1 1
      858 CALL                             R8 0 1
      859 SETTABLEKS                       R8 R4 K255 ["FFlagAssistantMarkdownStreaming"]
      861 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      863 LOADK                            R9 K256 ["AssistantMcpImageGenShortcut"]
      864 CALL                             R8 1 1
      865 CALL                             R8 0 1
      866 SETTABLEKS                       R8 R4 K257 ["FFlagAssistantMcpImageGenShortcut"]
      868 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      870 LOADK                            R9 K258 ["AssistantMcpListPlaceTool"]
      871 CALL                             R8 1 1
      872 CALL                             R8 0 1
      873 SETTABLEKS                       R8 R4 K259 ["FFlagAssistantMcpListPlaceTool"]
      875 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      877 LOADK                            R9 K260 ["AssistantMcpListSkillsTool"]
      878 CALL                             R8 1 1
      879 CALL                             R8 0 1
      880 SETTABLEKS                       R8 R4 K261 ["FFlagAssistantMcpListSkillsTool"]
      882 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      884 LOADK                            R9 K262 ["AssistantMcpListStudiosFullPath"]
      885 CALL                             R8 1 1
      886 CALL                             R8 0 1
      887 SETTABLEKS                       R8 R4 K263 ["FFlagAssistantMcpListStudiosFullPath"]
      889 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      891 LOADK                            R9 K264 ["AssistantMcpListStudiosTool"]
      892 CALL                             R8 1 1
      893 CALL                             R8 0 1
      894 SETTABLEKS                       R8 R4 K265 ["FFlagAssistantMcpListStudiosTool"]
      896 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      898 LOADK                            R9 K266 ["AssistantMcpSubmitFeedbackTool"]
      899 CALL                             R8 1 1
      900 CALL                             R8 0 1
      901 SETTABLEKS                       R8 R4 K267 ["FFlagAssistantMcpSubmitFeedbackTool"]
      903 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      905 LOADK                            R10 K268 ["AssistantMcpCapturePerTurn"]
      906 CALL                             R9 1 1
      907 CALL                             R9 0 1
      908 AND                              R8 R9 R7
      909 SETTABLEKS                       R8 R4 K269 ["FFlagAssistantMcpCapturePerTurn"]
      911 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      913 LOADK                            R9 K270 ["MCPWebSocketRetryOnStartError"]
      914 CALL                             R8 1 1
      915 CALL                             R8 0 1
      916 JUMPIFNOT                        R8 ; [+5]
      917 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      919 LOADK                            R9 K271 ["AssistantMCPProxyAuthRejectedWarn"]
      920 CALL                             R8 1 1
      921 CALL                             R8 0 1
      922 SETTABLEKS                       R8 R4 K272 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      924 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
      926 LOADK                            R10 K273 ["AssistantMCPVideoCapture"]
      927 CALL                             R9 1 1
      928 CALL                             R9 0 1
      929 AND                              R8 R9 R6
      930 SETTABLEKS                       R8 R4 K274 ["FFlagAssistantMCPVideoCapture"]
      932 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      934 LOADK                            R9 K275 ["AssistantMeshGenAutoExpandCollapse"]
      935 CALL                             R8 1 1
      936 CALL                             R8 0 1
      937 SETTABLEKS                       R8 R4 K276 ["FFlagAssistantMeshGenAutoExpandCollapse"]
      939 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      941 LOADK                            R9 K277 ["AssistantMeshGenHintImage"]
      942 CALL                             R8 1 1
      943 CALL                             R8 0 1
      944 SETTABLEKS                       R8 R4 K278 ["FFlagAssistantMeshGenHintImage"]
      946 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      948 LOADK                            R9 K279 ["AssistantMeshGenImageGenPromptTemplateEnabled"]
      949 CALL                             R8 1 1
      950 CALL                             R8 0 1
      951 SETTABLEKS                       R8 R4 K280 ["FFlagAssistantMeshGenImageGenPromptTemplateEnabled"]
      953 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      955 LOADK                            R9 K281 ["AssistantMeshGenRemoveAdminOptions"]
      956 CALL                             R8 1 1
      957 CALL                             R8 0 1
      958 SETTABLEKS                       R8 R4 K282 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      960 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      962 LOADK                            R9 K283 ["AssistantMultiEditExternalClient"]
      963 CALL                             R8 1 1
      964 CALL                             R8 0 1
      965 SETTABLEKS                       R8 R4 K284 ["FFlagAssistantMultiEditExternalClient"]
      967 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      969 LOADK                            R9 K285 ["AssistantNumberRowPartialInput"]
      970 CALL                             R8 1 1
      971 CALL                             R8 0 1
      972 SETTABLEKS                       R8 R4 K286 ["FFlagAssistantNumberRowPartialInput"]
      974 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      976 LOADK                            R9 K287 ["AssistantOmitSlashToolCallDroppedFields"]
      977 CALL                             R8 1 1
      978 CALL                             R8 0 1
      979 SETTABLEKS                       R8 R4 K288 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      981 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      983 LOADK                            R9 K289 ["AssistantOpenCloudInvokeTool2"]
      984 CALL                             R8 1 1
      985 CALL                             R8 0 1
      986 SETTABLEKS                       R8 R4 K290 ["FFlagAssistantOpenCloudInvokeTool"]
      988 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      990 LOADK                            R9 K291 ["AssistantPinForBuildUI"]
      991 CALL                             R8 1 1
      992 CALL                             R8 0 1
      993 SETTABLEKS                       R8 R4 K292 ["FFlagAssistantPinForBuildUI"]
      995 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
      997 LOADK                            R9 K293 ["AssistantPlanRevisionList"]
      998 CALL                             R8 1 1
      999 CALL                             R8 0 1
     1000 SETTABLEKS                       R8 R4 K294 ["FFlagAssistantPlanRevisionList"]
     1002 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1004 LOADK                            R9 K295 ["AssistantPlaytestContext"]
     1005 CALL                             R8 1 1
     1006 CALL                             R8 0 1
     1007 SETTABLEKS                       R8 R4 K296 ["FFlagAssistantPlaytestContext"]
     1009 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1011 LOADK                            R9 K297 ["AssistantPlaytestKGEnabled"]
     1012 CALL                             R8 1 1
     1013 CALL                             R8 0 1
     1014 SETTABLEKS                       R8 R4 K298 ["FFlagAssistantPlaytestKGEnabled"]
     1016 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1018 LOADK                            R9 K299 ["AssistantPlaytestToolFix"]
     1019 CALL                             R8 1 1
     1020 CALL                             R8 0 1
     1021 SETTABLEKS                       R8 R4 K300 ["FFlagAssistantPlaytestToolFix"]
     1023 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1025 LOADK                            R9 K301 ["AssistantPromptHistoryFromConversation"]
     1026 CALL                             R8 1 1
     1027 CALL                             R8 0 1
     1028 SETTABLEKS                       R8 R4 K302 ["FFlagAssistantPromptHistoryFromConversation"]
     1030 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1032 LOADK                            R9 K303 ["AssistantPromptModeratedError"]
     1033 CALL                             R8 1 1
     1034 CALL                             R8 0 1
     1035 SETTABLEKS                       R8 R4 K304 ["FFlagAssistantPromptModeratedError"]
     1037 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1039 LOADK                            R9 K305 ["AssistantReadFileRejectRangeWithEntireFile"]
     1040 CALL                             R8 1 1
     1041 CALL                             R8 0 1
     1042 SETTABLEKS                       R8 R4 K306 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
     1044 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1046 LOADK                            R9 K307 ["AssistantRemoveWaitForPendingSavesOnDestroy"]
     1047 CALL                             R8 1 1
     1048 CALL                             R8 0 1
     1049 SETTABLEKS                       R8 R4 K308 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
     1051 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1053 LOADK                            R9 K309 ["AssistantResolveHeading"]
     1054 CALL                             R8 1 1
     1055 CALL                             R8 0 1
     1056 SETTABLEKS                       R8 R4 K310 ["FFlagAssistantResolveHeading"]
     1058 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1060 LOADK                            R9 K311 ["AssistantRestoreCameraStateInExec"]
     1061 CALL                             R8 1 1
     1062 CALL                             R8 0 1
     1063 SETTABLEKS                       R8 R4 K312 ["FFlagAssistantRestoreCameraStateInExec"]
     1065 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1067 LOADK                            R9 K313 ["AssistantRestoreCameraStateInExecWarn"]
     1068 CALL                             R8 1 1
     1069 CALL                             R8 0 1
     1070 SETTABLEKS                       R8 R4 K314 ["FFlagAssistantRestoreCameraStateInExecWarn"]
     1072 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1074 LOADK                            R9 K315 ["AssistantRestoreMostRecentThread"]
     1075 CALL                             R8 1 1
     1076 CALL                             R8 0 1
     1077 SETTABLEKS                       R8 R4 K316 ["FFlagAssistantRestoreMostRecentThread"]
     1079 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1081 LOADK                            R9 K317 ["AssistantSavePlaceTool"]
     1082 CALL                             R8 1 1
     1083 CALL                             R8 0 1
     1084 SETTABLEKS                       R8 R4 K318 ["FFlagAssistantSavePlaceTool"]
     1086 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1088 LOADK                            R9 K319 ["AssistantScreenCaptureSubagentPluginGuis"]
     1089 CALL                             R8 1 1
     1090 CALL                             R8 0 1
     1091 SETTABLEKS                       R8 R4 K320 ["FFlagAssistantScreenCaptureSubagentPluginGuis"]
     1093 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1095 LOADK                            R9 K321 ["AssistantScrollableAskInputForm"]
     1096 CALL                             R8 1 1
     1097 CALL                             R8 0 1
     1098 SETTABLEKS                       R8 R4 K322 ["FFlagAssistantScrollableAskInputForm"]
     1100 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1102 LOADK                            R9 K323 ["AssistantSegmentationBridge"]
     1103 CALL                             R8 1 1
     1104 CALL                             R8 0 1
     1105 SETTABLEKS                       R8 R4 K324 ["FFlagAssistantSegmentationBridge"]
     1107 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1109 LOADK                            R9 K325 ["AssistantSegmentationUIFixes"]
     1110 CALL                             R8 1 1
     1111 CALL                             R8 0 1
     1112 SETTABLEKS                       R8 R4 K326 ["FFlagAssistantSegmentationUIFixes"]
     1114 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1116 LOADK                            R9 K327 ["AssistantSegmentMeshCleanupWorldWrapper"]
     1117 CALL                             R8 1 1
     1118 CALL                             R8 0 1
     1119 SETTABLEKS                       R8 R4 K328 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
     1121 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1123 LOADK                            R9 K329 ["AssistantSegmentMeshTool"]
     1124 CALL                             R8 1 1
     1125 CALL                             R8 0 1
     1126 SETTABLEKS                       R8 R4 K330 ["FFlagAssistantSegmentMeshTool"]
     1128 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1130 LOADK                            R9 K331 ["AssistantSegmentMeshUseSourceMeshCFrame"]
     1131 CALL                             R8 1 1
     1132 CALL                             R8 0 1
     1133 SETTABLEKS                       R8 R4 K332 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
     1135 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1137 LOADK                            R9 K333 ["AssistantSharedVector3Input"]
     1138 CALL                             R8 1 1
     1139 CALL                             R8 0 1
     1140 SETTABLEKS                       R8 R4 K334 ["FFlagAssistantSharedVector3Input"]
     1142 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1144 LOADK                            R9 K335 ["AssistantShorterCapturePluginGuiDescription"]
     1145 CALL                             R8 1 1
     1146 CALL                             R8 0 1
     1147 SETTABLEKS                       R8 R4 K336 ["FFlagAssistantShorterCapturePluginGuiDescription"]
     1149 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1151 LOADK                            R9 K337 ["AssistantSkillsShowDisabled"]
     1152 CALL                             R8 1 1
     1153 CALL                             R8 0 1
     1154 SETTABLEKS                       R8 R4 K338 ["FFlagAssistantSkillsShowDisabled"]
     1156 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1158 LOADK                            R9 K339 ["AssistantSkillToolNameReplace"]
     1159 CALL                             R8 1 1
     1160 CALL                             R8 0 1
     1161 SETTABLEKS                       R8 R4 K340 ["FFlagAssistantSkillToolNameReplace"]
     1163 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1165 LOADK                            R9 K341 ["AssistantSlashCommandStepBackNavigation"]
     1166 CALL                             R8 1 1
     1167 CALL                             R8 0 1
     1168 SETTABLEKS                       R8 R4 K342 ["FFlagAssistantSlashCommandStepBackNavigation"]
     1170 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1172 LOADK                            R9 K343 ["AssistantSlashToolNameAndError"]
     1173 CALL                             R8 1 1
     1174 CALL                             R8 0 1
     1175 SETTABLEKS                       R8 R4 K344 ["FFlagAssistantSlashToolNameAndError"]
     1177 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1179 LOADK                            R9 K345 ["AssistantStartStopPlayBusyCheck"]
     1180 CALL                             R8 1 1
     1181 CALL                             R8 0 1
     1182 SETTABLEKS                       R8 R4 K346 ["FFlagAssistantStartStopPlayBusyCheck"]
     1184 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1186 LOADK                            R9 K347 ["AssistantTestLLMPreserveThinking"]
     1187 LOADB                            R10 1
     1188 CALL                             R8 2 1
     1189 CALL                             R8 0 1
     1190 SETTABLEKS                       R8 R4 K348 ["FFlagAssistantTestLLMPreserveThinking"]
     1192 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1194 LOADK                            R9 K349 ["AssistantTestLLMThinkingEnabled"]
     1195 LOADB                            R10 1
     1196 CALL                             R8 2 1
     1197 CALL                             R8 0 1
     1198 SETTABLEKS                       R8 R4 K350 ["FFlagAssistantTestLLMThinkingEnabled"]
     1200 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1202 LOADK                            R9 K351 ["AssistantTextureGenAutoSelectView"]
     1203 CALL                             R8 1 1
     1204 CALL                             R8 0 1
     1205 SETTABLEKS                       R8 R4 K352 ["FFlagAssistantTextureGenAutoSelectView"]
     1207 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1209 LOADK                            R9 K353 ["AssistantTextureGenMcpPreviewReference"]
     1210 CALL                             R8 1 1
     1211 CALL                             R8 0 1
     1212 SETTABLEKS                       R8 R4 K354 ["FFlagAssistantTextureGenMcpPreviewReference"]
     1214 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1216 LOADK                            R9 K355 ["AssistantTextureGenMcpQualityAutoView"]
     1217 CALL                             R8 1 1
     1218 CALL                             R8 0 1
     1219 SETTABLEKS                       R8 R4 K356 ["FFlagAssistantTextureGenMcpQualityAutoView"]
     1221 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1223 LOADK                            R9 K357 ["AssistantTextureGenModelSelection"]
     1224 CALL                             R8 1 1
     1225 CALL                             R8 0 1
     1226 SETTABLEKS                       R8 R4 K358 ["FFlagAssistantTextureGenModelSelection"]
     1228 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1230 LOADK                            R9 K359 ["AssistantTextureGenTool"]
     1231 CALL                             R8 1 1
     1232 CALL                             R8 0 1
     1233 SETTABLEKS                       R8 R4 K360 ["FFlagAssistantTextureGenTool"]
     1235 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1237 LOADK                            R9 K361 ["AssistantTextureGenUseSourceMeshCFrame"]
     1238 CALL                             R8 1 1
     1239 CALL                             R8 0 1
     1240 SETTABLEKS                       R8 R4 K362 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
     1242 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1244 LOADK                            R9 K363 ["AssistantToolPermissionQuestion"]
     1245 CALL                             R8 1 1
     1246 CALL                             R8 0 1
     1247 SETTABLEKS                       R8 R4 K364 ["FFlagAssistantToolPermissionQuestion"]
     1249 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1251 LOADK                            R9 K365 ["AssistantToolSkillDescriptions"]
     1252 CALL                             R8 1 1
     1253 CALL                             R8 0 1
     1254 SETTABLEKS                       R8 R4 K366 ["FFlagAssistantToolSkillDescriptions"]
     1256 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1258 LOADK                            R9 K367 ["AssistantTruncatePrimGenHeader"]
     1259 CALL                             R8 1 1
     1260 CALL                             R8 0 1
     1261 SETTABLEKS                       R8 R4 K368 ["FFlagAssistantTruncatePrimGenHeader"]
     1263 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1265 LOADK                            R9 K369 ["AssistantUntitledChatPlaceholder"]
     1266 CALL                             R8 1 1
     1267 CALL                             R8 0 1
     1268 SETTABLEKS                       R8 R4 K370 ["FFlagAssistantUntitledChatPlaceholder"]
     1270 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1272 LOADK                            R9 K371 ["AssistantUseFoundationTextArea"]
     1273 CALL                             R8 1 1
     1274 CALL                             R8 0 1
     1275 SETTABLEKS                       R8 R4 K372 ["FFlagAssistantUseFoundationTextArea"]
     1277 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1279 LOADK                            R9 K373 ["AssistantUseNewTags"]
     1280 CALL                             R8 1 1
     1281 CALL                             R8 0 1
     1282 SETTABLEKS                       R8 R4 K374 ["FFlagAssistantUseNewTags"]
     1284 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1286 LOADK                            R9 K375 ["AssistantUseRemoteService2"]
     1287 CALL                             R8 1 1
     1288 CALL                             R8 0 1
     1289 SETTABLEKS                       R8 R4 K376 ["FFlagAssistantUseRemoteService"]
     1291 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1293 LOADK                            R9 K377 ["AssistantUseRemoteServiceExp"]
     1294 CALL                             R8 1 1
     1295 CALL                             R8 0 1
     1296 SETTABLEKS                       R8 R4 K378 ["FFlagAssistantUseRemoteServiceExp"]
     1298 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1300 LOADK                            R9 K379 ["AssistantUseVariantHttpTransport"]
     1301 CALL                             R8 1 1
     1302 CALL                             R8 0 1
     1303 SETTABLEKS                       R8 R4 K380 ["FFlagAssistantUseVariantHttpTransport"]
     1305 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1307 LOADK                            R9 K381 ["AssistantUserInputPluginGuiTarget"]
     1308 CALL                             R8 1 1
     1309 CALL                             R8 0 1
     1310 SETTABLEKS                       R8 R4 K382 ["FFlagAssistantUserInputPluginGuiTarget"]
     1312 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1314 LOADK                            R9 K383 ["AssistantVersionMismatchWarning"]
     1315 CALL                             R8 1 1
     1316 CALL                             R8 0 1
     1317 SETTABLEKS                       R8 R4 K384 ["FFlagAssistantVersionMismatchWarning"]
     1319 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1321 LOADK                            R9 K385 ["AssistantVideoCaptureTool"]
     1322 CALL                             R8 1 1
     1323 CALL                             R8 0 1
     1324 SETTABLEKS                       R8 R4 K386 ["FFlagAssistantVideoCaptureTool"]
     1326 GETTABLEKS                       R9 R3 K16 ["createGetFFlag"]
     1328 LOADK                            R10 K387 ["AssistantVirtualInputEnabled"]
     1329 CALL                             R9 1 1
     1330 CALL                             R9 0 1
     1331 AND                              R8 R9 R5
     1332 SETTABLEKS                       R8 R4 K388 ["FFlagAssistantVirtualInputEnabled"]
     1334 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1336 LOADK                            R9 K389 ["AvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1337 CALL                             R8 1 1
     1338 CALL                             R8 0 1
     1339 SETTABLEKS                       R8 R4 K390 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
     1341 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1343 LOADK                            R9 K391 ["AvatarPreviewerAvatarCreationDynamicHeadOff"]
     1344 CALL                             R8 1 1
     1345 CALL                             R8 0 1
     1346 SETTABLEKS                       R8 R4 K392 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
     1348 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1350 LOADK                            R9 K393 ["AvatarPreviewerAvatarCreationDynamicHeadOption"]
     1351 CALL                             R8 1 1
     1352 CALL                             R8 0 1
     1353 SETTABLEKS                       R8 R4 K394 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
     1355 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1357 LOADK                            R9 K395 ["AvatarPreviewerAvatarCreationR15PlusOn"]
     1358 CALL                             R8 1 1
     1359 CALL                             R8 0 1
     1360 SETTABLEKS                       R8 R4 K396 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
     1362 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1364 LOADK                            R9 K397 ["AvatarPreviewerAvatarCreationR15PlusOption"]
     1365 CALL                             R8 1 1
     1366 CALL                             R8 0 1
     1367 SETTABLEKS                       R8 R4 K398 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
     1369 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1371 LOADK                            R9 K399 ["DebugAssistantEval"]
     1372 CALL                             R8 1 1
     1373 CALL                             R8 0 1
     1374 SETTABLEKS                       R8 R4 K400 ["FFlagDebugAssistantEval"]
     1376 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1378 LOADK                            R9 K401 ["DebugAssistantMcpCaptureLogging"]
     1379 CALL                             R8 1 1
     1380 CALL                             R8 0 1
     1381 SETTABLEKS                       R8 R4 K402 ["FFlagDebugAssistantMcpCaptureLogging"]
     1383 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1385 LOADK                            R9 K403 ["DebugAssistantMultiPlayerAgentsLog"]
     1386 CALL                             R8 1 1
     1387 CALL                             R8 0 1
     1388 SETTABLEKS                       R8 R4 K404 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
     1390 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1392 LOADK                            R9 K405 ["DebugEnableTestLLMAdapter"]
     1393 CALL                             R8 1 1
     1394 CALL                             R8 0 1
     1395 SETTABLEKS                       R8 R4 K406 ["FFlagDebugEnableTestLLMAdapter"]
     1397 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1399 LOADK                            R9 K407 ["DebugMockPrimitiveGenBackend"]
     1400 CALL                             R8 1 1
     1401 CALL                             R8 0 1
     1402 SETTABLEKS                       R8 R4 K408 ["FFlagDebugMockPrimitiveGenBackend"]
     1404 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1406 LOADK                            R9 K409 ["DisableMCPConnectionIndicator"]
     1407 CALL                             R8 1 1
     1408 CALL                             R8 0 1
     1409 SETTABLEKS                       R8 R4 K410 ["FFlagDisableMCPConnectionIndicator"]
     1411 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1413 LOADK                            R9 K411 ["FFlagDisableNavigationConfirmation"]
     1414 CALL                             R8 1 1
     1415 CALL                             R8 0 1
     1416 SETTABLEKS                       R8 R4 K411 ["FFlagDisableNavigationConfirmation"]
     1418 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1420 LOADK                            R9 K412 ["DisableNewSmartSize"]
     1421 CALL                             R8 1 1
     1422 CALL                             R8 0 1
     1423 SETTABLEKS                       R8 R4 K413 ["FFlagDisableNewSmartSize"]
     1425 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1427 LOADK                            R9 K414 ["DisableOldSmartSize"]
     1428 CALL                             R8 1 1
     1429 CALL                             R8 0 1
     1430 SETTABLEKS                       R8 R4 K415 ["FFlagDisableOldSmartSize"]
     1432 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1434 LOADK                            R9 K416 ["FFlagDisableStartStopPlayConfirmation"]
     1435 CALL                             R8 1 1
     1436 CALL                             R8 0 1
     1437 SETTABLEKS                       R8 R4 K416 ["FFlagDisableStartStopPlayConfirmation"]
     1439 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1441 LOADK                            R9 K417 ["FFlagDisableUserInputConfirmation"]
     1442 CALL                             R8 1 1
     1443 CALL                             R8 0 1
     1444 SETTABLEKS                       R8 R4 K417 ["FFlagDisableUserInputConfirmation"]
     1446 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1448 LOADK                            R9 K418 ["EnableAssistantImageUpload"]
     1449 CALL                             R8 1 1
     1450 CALL                             R8 0 1
     1451 SETTABLEKS                       R8 R4 K419 ["FFlagEnableAssistantImageUpload"]
     1453 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1455 LOADK                            R9 K420 ["EnablePlaytestSubagent"]
     1456 CALL                             R8 1 1
     1457 CALL                             R8 0 1
     1458 SETTABLEKS                       R8 R4 K421 ["FFlagEnablePlaytestSubagent"]
     1460 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1462 LOADK                            R9 K422 ["MarkdownTagFallbacks"]
     1463 CALL                             R8 1 1
     1464 CALL                             R8 0 1
     1465 SETTABLEKS                       R8 R4 K423 ["FFlagMarkdownTagFallbacks"]
     1467 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1469 LOADK                            R9 K424 ["MCPAssistantAzureOpenAI"]
     1470 CALL                             R8 1 1
     1471 CALL                             R8 0 1
     1472 SETTABLEKS                       R8 R4 K425 ["FFlagMCPAssistantAzureOpenAI"]
     1474 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1476 LOADK                            R9 K426 ["MCPAssistantManagementMenu5"]
     1477 CALL                             R8 1 1
     1478 CALL                             R8 0 1
     1479 SETTABLEKS                       R8 R4 K427 ["FFlagMCPAssistantManagementMenu"]
     1481 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1483 LOADK                            R9 K428 ["MCPAssistantOpenAIPreserveThinking"]
     1484 CALL                             R8 1 1
     1485 CALL                             R8 0 1
     1486 SETTABLEKS                       R8 R4 K429 ["FFlagMCPAssistantOpenAIPreserveThinking"]
     1488 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1490 LOADK                            R9 K430 ["MCPAssistantOpenAIThinkingEnabled"]
     1491 CALL                             R8 1 1
     1492 CALL                             R8 0 1
     1493 SETTABLEKS                       R8 R4 K431 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
     1495 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1497 LOADK                            R9 K432 ["MCPClientCountAsASetting"]
     1498 CALL                             R8 1 1
     1499 CALL                             R8 0 1
     1500 SETTABLEKS                       R8 R4 K433 ["FFlagMCPClientCountAsASetting"]
     1502 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1504 LOADK                            R9 K434 ["MCPConnectionIndicatorTooltip"]
     1505 CALL                             R8 1 1
     1506 CALL                             R8 0 1
     1507 SETTABLEKS                       R8 R4 K435 ["FFlagMCPConnectionIndicatorTooltip"]
     1509 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1511 LOADK                            R9 K436 ["MCPContentNormalization"]
     1512 CALL                             R8 1 1
     1513 CALL                             R8 0 1
     1514 SETTABLEKS                       R8 R4 K437 ["FFlagMCPContentNormalization"]
     1516 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1518 LOADK                            R9 K438 ["MCPEnableToolDisabling"]
     1519 CALL                             R8 1 1
     1520 CALL                             R8 0 1
     1521 SETTABLEKS                       R8 R4 K439 ["FFlagMCPEnableToolDisabling"]
     1523 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1525 LOADK                            R9 K440 ["PlaytestVision"]
     1526 CALL                             R8 1 1
     1527 CALL                             R8 0 1
     1528 SETTABLEKS                       R8 R4 K441 ["FFlagPlaytestVision"]
     1530 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1532 LOADK                            R9 K442 ["PrimGenBetterErrorType"]
     1533 CALL                             R8 1 1
     1534 CALL                             R8 0 1
     1535 SETTABLEKS                       R8 R4 K443 ["FFlagPrimGenBetterErrorType"]
     1537 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1539 LOADK                            R9 K444 ["PrimGenImageGenPromptTemplateEnabled"]
     1540 CALL                             R8 1 1
     1541 CALL                             R8 0 1
     1542 SETTABLEKS                       R8 R4 K445 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
     1544 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1546 LOADK                            R9 K446 ["PrimGenVerboseDmIsUnReachableMsg"]
     1547 CALL                             R8 1 1
     1548 CALL                             R8 0 1
     1549 SETTABLEKS                       R8 R4 K447 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
     1551 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1553 LOADK                            R9 K448 ["PrimGenVersionMismatchError"]
     1554 CALL                             R8 1 1
     1555 CALL                             R8 0 1
     1556 SETTABLEKS                       R8 R4 K449 ["FFlagPrimGenVersionMismatchError"]
     1558 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1560 LOADK                            R9 K450 ["PropertiesExposeContentView"]
     1561 CALL                             R8 1 1
     1562 CALL                             R8 0 1
     1563 SETTABLEKS                       R8 R4 K451 ["FFlagPropertiesExposeContentView"]
     1565 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1567 LOADK                            R9 K452 ["ScreenCaptureCamera"]
     1568 CALL                             R8 1 1
     1569 CALL                             R8 0 1
     1570 SETTABLEKS                       R8 R4 K453 ["FFlagScreenCaptureCamera"]
     1572 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1574 LOADK                            R9 K454 ["ScriptDebuggerServiceEnabled2"]
     1575 CALL                             R8 1 1
     1576 CALL                             R8 0 1
     1577 SETTABLEKS                       R8 R4 K455 ["FFlagScriptDebuggerServiceEnabled"]
     1579 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1581 LOADK                            R9 K456 ["StudioAssistantPermissionSaveCancelFrame"]
     1582 CALL                             R8 1 1
     1583 CALL                             R8 0 1
     1584 SETTABLEKS                       R8 R4 K457 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
     1586 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1588 LOADK                            R9 K458 ["StudioAssistantPermissionsFilter"]
     1589 CALL                             R8 1 1
     1590 CALL                             R8 0 1
     1591 SETTABLEKS                       R8 R4 K459 ["FFlagStudioAssistantPermissionsFilter"]
     1593 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1595 LOADK                            R9 K460 ["StudioAssistantPermissionsHideNetwork"]
     1596 CALL                             R8 1 1
     1597 CALL                             R8 0 1
     1598 SETTABLEKS                       R8 R4 K461 ["FFlagStudioAssistantPermissionsHideNetwork"]
     1600 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1602 LOADK                            R9 K462 ["StudioMCPListStudiosFanOut"]
     1603 CALL                             R8 1 1
     1604 CALL                             R8 0 1
     1605 SETTABLEKS                       R8 R4 K463 ["FFlagStudioMCPListStudiosFanOut"]
     1607 GETTABLEKS                       R8 R3 K16 ["createGetFFlag"]
     1609 LOADK                            R9 K464 ["SubagentScriptEditAutoConfirmation"]
     1610 CALL                             R8 1 1
     1611 CALL                             R8 0 1
     1612 SETTABLEKS                       R8 R4 K465 ["FFlagSubagentScriptEditAutoConfirmation"]
     1614 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1616 LOADK                            R9 K467 ["AmrAssetDependencyGrantEventTimeout"]
     1617 LOADN                            R10 40
     1618 CALL                             R8 2 1
     1619 CALL                             R8 0 1
     1620 SETTABLEKS                       R8 R4 K468 ["FIntAmrAssetDependencyGrantEventTimeout"]
     1622 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1624 LOADK                            R9 K469 ["AssistantAnimationGenLocalBendMaxFlexDegrees"]
     1625 LOADN                            R10 120
     1626 CALL                             R8 2 1
     1627 CALL                             R8 0 1
     1628 SETTABLEKS                       R8 R4 K470 ["FIntAssistantAnimationGenLocalBendMaxFlexDegrees"]
     1630 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1632 LOADK                            R9 K471 ["AssistantAnimationGenPluginMinDurationSeconds"]
     1633 LOADN                            R10 1
     1634 CALL                             R8 2 1
     1635 CALL                             R8 0 1
     1636 SETTABLEKS                       R8 R4 K472 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
     1638 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1640 LOADK                            R9 K473 ["AssistantAnimationGenPluginMaxDurationSeconds"]
     1641 LOADN                            R10 30
     1642 CALL                             R8 2 1
     1643 CALL                             R8 0 1
     1644 SETTABLEKS                       R8 R4 K474 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
     1646 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1648 LOADK                            R9 K475 ["AssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1649 LOADN                            R10 5
     1650 CALL                             R8 2 1
     1651 CALL                             R8 0 1
     1652 SETTABLEKS                       R8 R4 K476 ["FIntAssistantAnimationGenSolveRetargetedPoseMaxIterations"]
     1654 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1656 LOADK                            R9 K477 ["AssistantAutoSaveInterval"]
     1657 LOADN                            R10 60
     1658 CALL                             R8 2 1
     1659 CALL                             R8 0 1
     1660 SETTABLEKS                       R8 R4 K478 ["FIntAssistantAutoSaveInterval"]
     1662 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1664 LOADK                            R9 K479 ["AssistantCapturePluginGuiDelayFrames"]
     1665 LOADN                            R10 10
     1666 CALL                             R8 2 1
     1667 CALL                             R8 0 1
     1668 SETTABLEKS                       R8 R4 K480 ["FIntAssistantCapturePluginGuiDelayFrames"]
     1670 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1672 LOADK                            R9 K481 ["AssistantDebugToolMaxOutput"]
     1673 LOADN                            R10 20000
     1674 CALL                             R8 2 1
     1675 CALL                             R8 0 1
     1676 SETTABLEKS                       R8 R4 K482 ["FIntAssistantDebugToolMaxOutput"]
     1678 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1680 LOADK                            R9 K483 ["AssistantJobWaitDefaultTimeout"]
     1681 LOADN                            R10 600
     1682 CALL                             R8 2 1
     1683 CALL                             R8 0 1
     1684 SETTABLEKS                       R8 R4 K484 ["FIntAssistantJobWaitDefaultTimeout"]
     1686 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1688 LOADK                            R9 K485 ["AssistantJobWaitExternalMaxTimeout"]
     1689 LOADN                            R10 45
     1690 CALL                             R8 2 1
     1691 CALL                             R8 0 1
     1692 SETTABLEKS                       R8 R4 K486 ["FIntAssistantJobWaitExternalMaxTimeout"]
     1694 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1696 LOADK                            R9 K487 ["AssistantMaxDisplayTextChars"]
     1697 LOADK                            R10 K488 [100000]
     1698 CALL                             R8 2 1
     1699 CALL                             R8 0 1
     1700 SETTABLEKS                       R8 R4 K489 ["FIntAssistantMaxDisplayTextChars"]
     1702 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1704 LOADK                            R9 K490 ["AssistantMaxToolInputStringLen"]
     1705 LOADN                            R10 2000
     1706 CALL                             R8 2 1
     1707 CALL                             R8 0 1
     1708 SETTABLEKS                       R8 R4 K491 ["FIntAssistantMaxToolInputStringLen"]
     1710 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1712 LOADK                            R9 K492 ["AssistantMeshGenMaxTrianglesDefault"]
     1713 LOADN                            R10 10000
     1714 CALL                             R8 2 1
     1715 CALL                             R8 0 1
     1716 SETTABLEKS                       R8 R4 K493 ["FIntAssistantMeshGenMaxTrianglesDefault"]
     1718 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1720 LOADK                            R9 K494 ["AssistantMinPopoverHeight"]
     1721 LOADN                            R10 150
     1722 CALL                             R8 2 1
     1723 CALL                             R8 0 1
     1724 SETTABLEKS                       R8 R4 K495 ["FIntAssistantMinPopoverHeight"]
     1726 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1728 LOADK                            R9 K496 ["AssistantOpenCloudInvokeMaxFileSize"]
     1729 LOADK                            R10 K497 [20971520]
     1730 CALL                             R8 2 1
     1731 CALL                             R8 0 1
     1732 SETTABLEKS                       R8 R4 K498 ["FIntAssistantOpenCloudInvokeMaxFileSize"]
     1734 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1736 LOADK                            R9 K499 ["AssistantPersistenceMessageLoadLimit"]
     1737 LOADN                            R10 5
     1738 CALL                             R8 2 1
     1739 CALL                             R8 0 1
     1740 SETTABLEKS                       R8 R4 K500 ["FIntAssistantPersistenceMessageLoadLimit"]
     1742 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1744 LOADK                            R9 K501 ["AssistantPersistenceThreadLoadLimit"]
     1745 LOADN                            R10 5
     1746 CALL                             R8 2 1
     1747 CALL                             R8 0 1
     1748 SETTABLEKS                       R8 R4 K502 ["FIntAssistantPersistenceThreadLoadLimit"]
     1750 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1752 LOADK                            R9 K503 ["AssistantPostTurnRefreshDelaySeconds"]
     1753 LOADN                            R10 2
     1754 CALL                             R8 2 1
     1755 CALL                             R8 0 1
     1756 SETTABLEKS                       R8 R4 K504 ["FIntAssistantPostTurnRefreshDelaySeconds"]
     1758 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1760 LOADK                            R9 K505 ["AssistantPrimitiveGenMaxConcurrentJobs"]
     1761 LOADN                            R10 999
     1762 CALL                             R8 2 1
     1763 CALL                             R8 0 1
     1764 SETTABLEKS                       R8 R4 K506 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
     1766 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1768 LOADK                            R9 K507 ["AssistantPrimitiveGenPollIntervalMs"]
     1769 LOADN                            R10 2000
     1770 CALL                             R8 2 1
     1771 CALL                             R8 0 1
     1772 SETTABLEKS                       R8 R4 K508 ["FIntAssistantPrimitiveGenPollIntervalMs"]
     1774 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1776 LOADK                            R9 K509 ["AssistantProcessEventTimeoutMS"]
     1777 LOADK                            R10 K510 [60000]
     1778 CALL                             R8 2 1
     1779 CALL                             R8 0 1
     1780 SETTABLEKS                       R8 R4 K511 ["FIntAssistantProcessEventTimeoutMS"]
     1782 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1784 LOADK                            R9 K512 ["AssistantSegmentMeshMaxUserParts"]
     1785 LOADN                            R10 16
     1786 CALL                             R8 2 1
     1787 CALL                             R8 0 1
     1788 SETTABLEKS                       R8 R4 K513 ["FIntAssistantSegmentMeshMaxUserParts"]
     1790 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1792 LOADK                            R9 K514 ["ConvAIMaxHistoryCount"]
     1793 LOADN                            R10 6
     1794 CALL                             R8 2 1
     1795 CALL                             R8 0 1
     1796 SETTABLEKS                       R8 R4 K515 ["FIntConvAIMaxHistoryCount"]
     1798 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1800 LOADK                            R9 K516 ["ExecuteLuauMaxJsonLength"]
     1801 LOADK                            R10 K488 [100000]
     1802 CALL                             R8 2 1
     1803 CALL                             R8 0 1
     1804 SETTABLEKS                       R8 R4 K517 ["FIntExecuteLuauMaxJsonLength"]
     1806 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1808 LOADK                            R9 K518 ["ExecuteLuauMaxStringLength"]
     1809 LOADK                            R10 K488 [100000]
     1810 CALL                             R8 2 1
     1811 CALL                             R8 0 1
     1812 SETTABLEKS                       R8 R4 K519 ["FIntExecuteLuauMaxStringLength"]
     1814 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1816 LOADK                            R9 K520 ["FromHistoryMaxResultChars"]
     1817 LOADK                            R10 K521 [200000]
     1818 CALL                             R8 2 1
     1819 CALL                             R8 0 1
     1820 SETTABLEKS                       R8 R4 K522 ["FIntFromHistoryMaxResultChars"]
     1822 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1824 LOADK                            R9 K523 ["GameTreeDefaultHeadLimit"]
     1825 LOADN                            R10 200
     1826 CALL                             R8 2 1
     1827 CALL                             R8 0 1
     1828 SETTABLEKS                       R8 R4 K524 ["FIntGameTreeDefaultHeadLimit"]
     1830 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1832 LOADK                            R9 K525 ["GameTreeDefaultMaxDepth"]
     1833 LOADN                            R10 3
     1834 CALL                             R8 2 1
     1835 CALL                             R8 0 1
     1836 SETTABLEKS                       R8 R4 K526 ["FIntGameTreeDefaultMaxDepth"]
     1838 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1840 LOADK                            R9 K527 ["GameTreeMaxAbsoluteDepth"]
     1841 LOADN                            R10 10
     1842 CALL                             R8 2 1
     1843 CALL                             R8 0 1
     1844 SETTABLEKS                       R8 R4 K528 ["FIntGameTreeMaxAbsoluteDepth"]
     1846 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1848 LOADK                            R9 K529 ["GameTreeYieldCheckInterval"]
     1849 LOADN                            R10 100
     1850 CALL                             R8 2 1
     1851 CALL                             R8 0 1
     1852 SETTABLEKS                       R8 R4 K530 ["FIntGameTreeYieldCheckInterval"]
     1854 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1856 LOADK                            R9 K531 ["GameTreeYieldFps"]
     1857 LOADN                            R10 60
     1858 CALL                             R8 2 1
     1859 CALL                             R8 0 1
     1860 SETTABLEKS                       R8 R4 K532 ["FIntGameTreeYieldFps"]
     1862 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1864 LOADK                            R9 K533 ["InspectInstanceMaxJsonLength"]
     1865 LOADN                            R10 500
     1866 CALL                             R8 2 1
     1867 CALL                             R8 0 1
     1868 SETTABLEKS                       R8 R4 K534 ["FIntInspectInstanceMaxJsonLength"]
     1870 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1872 LOADK                            R9 K535 ["InspectInstanceMaxMatches"]
     1873 LOADN                            R10 20
     1874 CALL                             R8 2 1
     1875 CALL                             R8 0 1
     1876 SETTABLEKS                       R8 R4 K536 ["FIntInspectInstanceMaxMatches"]
     1878 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1880 LOADK                            R9 K537 ["InspectInstanceMaxStringLength"]
     1881 LOADN                            R10 1000
     1882 CALL                             R8 2 1
     1883 CALL                             R8 0 1
     1884 SETTABLEKS                       R8 R4 K538 ["FIntInspectInstanceMaxStringLength"]
     1886 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1888 LOADK                            R9 K539 ["MCPAssistantGenerationIndicatorWarningTime"]
     1889 LOADN                            R10 10
     1890 CALL                             R8 2 1
     1891 CALL                             R8 0 1
     1892 SETTABLEKS                       R8 R4 K540 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
     1894 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1896 LOADK                            R9 K541 ["MCPAssistantInputAreaCharLimit"]
     1897 LOADN                            R10 4000
     1898 CALL                             R8 2 1
     1899 CALL                             R8 0 1
     1900 SETTABLEKS                       R8 R4 K542 ["FIntMCPAssistantInputAreaCharLimit"]
     1902 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1904 LOADK                            R9 K543 ["MCPAssistantMaxPromptHistory"]
     1905 LOADN                            R10 20
     1906 CALL                             R8 2 1
     1907 CALL                             R8 0 1
     1908 SETTABLEKS                       R8 R4 K544 ["FIntMCPAssistantMaxPromptHistory"]
     1910 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1912 LOADK                            R9 K545 ["MCPAssistantMaxToolCalls"]
     1913 LOADN                            R10 20
     1914 CALL                             R8 2 1
     1915 CALL                             R8 0 1
     1916 SETTABLEKS                       R8 R4 K546 ["FIntMCPAssistantMaxToolCalls"]
     1918 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1920 LOADK                            R9 K547 ["MinimumAssistantFreeTrialRemaining"]
     1921 LOADN                            R10 1
     1922 CALL                             R8 2 1
     1923 CALL                             R8 0 1
     1924 SETTABLEKS                       R8 R4 K548 ["FIntMinimumAssistantFreeTrialRemaining"]
     1926 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1928 LOADK                            R9 K549 ["MinimumAssistantRobuxBalance"]
     1929 LOADN                            R10 100
     1930 CALL                             R8 2 1
     1931 CALL                             R8 0 1
     1932 SETTABLEKS                       R8 R4 K550 ["FIntMinimumAssistantRobuxBalance"]
     1934 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1936 LOADK                            R9 K551 ["PlaytestLookBudget"]
     1937 LOADN                            R10 7
     1938 CALL                             R8 2 1
     1939 CALL                             R8 0 1
     1940 SETTABLEKS                       R8 R4 K552 ["FIntPlaytestLookBudget"]
     1942 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1944 LOADK                            R9 K553 ["PlaytestLookTimeoutMs"]
     1945 LOADK                            R10 K510 [60000]
     1946 CALL                             R8 2 1
     1947 CALL                             R8 0 1
     1948 SETTABLEKS                       R8 R4 K554 ["FIntPlaytestLookTimeoutMs"]
     1950 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1952 LOADK                            R9 K555 ["PlaytestMaxToolCalls"]
     1953 LOADN                            R10 50
     1954 CALL                             R8 2 1
     1955 CALL                             R8 0 1
     1956 SETTABLEKS                       R8 R4 K556 ["FIntPlaytestMaxToolCalls"]
     1958 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1960 LOADK                            R9 K557 ["PrimGenLongRunThresholdSec"]
     1961 LOADN                            R10 120
     1962 CALL                             R8 2 1
     1963 CALL                             R8 0 1
     1964 SETTABLEKS                       R8 R4 K558 ["FIntPrimGenLongRunThresholdSec"]
     1966 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1968 LOADK                            R9 K559 ["PrimGenTextMaxLength"]
     1969 LOADN                            R10 80
     1970 CALL                             R8 2 1
     1971 CALL                             R8 0 1
     1972 SETTABLEKS                       R8 R4 K560 ["FIntPrimGenTextMaxLength"]
     1974 GETTABLEKS                       R8 R3 K466 ["createGetFInt"]
     1976 LOADK                            R9 K561 ["UnitTestSubagentMaxToolCalls"]
     1977 LOADN                            R10 100
     1978 CALL                             R8 2 1
     1979 CALL                             R8 0 1
     1980 SETTABLEKS                       R8 R4 K562 ["FIntUnitTestSubagentMaxToolCalls"]
     1982 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     1984 LOADK                            R9 K564 ["AssistantDebugCreditMeteringBlockReason"]
     1985 LOADK                            R10 K565 [""]
     1986 CALL                             R8 2 1
     1987 CALL                             R8 0 1
     1988 SETTABLEKS                       R8 R4 K566 ["FStringAssistantDebugCreditMeteringBlockReason"]
     1990 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     1992 LOADK                            R9 K567 ["AssistantDisabledSubagents"]
     1993 LOADK                            R10 K565 [""]
     1994 CALL                             R8 2 1
     1995 CALL                             R8 0 1
     1996 SETTABLEKS                       R8 R4 K568 ["FStringAssistantDisabledSubagents"]
     1998 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2000 LOADK                            R9 K569 ["AssistantGen3dDefaultModel"]
     2001 LOADK                            R10 K570 ["Assistant/glm51-h200"]
     2002 CALL                             R8 2 1
     2003 CALL                             R8 0 1
     2004 SETTABLEKS                       R8 R4 K571 ["FStringAssistantGen3dDefaultModel"]
     2006 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2008 LOADK                            R9 K572 ["AssistantJobRunTools"]
     2009 LOADK                            R10 K573 ["generate_procedural_model,generate_mesh,generate_material,generate_avatar,generate_scene"]
     2010 CALL                             R8 2 1
     2011 CALL                             R8 0 1
     2012 SETTABLEKS                       R8 R4 K574 ["FStringAssistantJobRunTools"]
     2014 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2016 LOADK                            R9 K575 ["AssistantMeshGenImageGenModelOverride"]
     2017 LOADK                            R10 K576 ["gemini"]
     2018 CALL                             R8 2 1
     2019 CALL                             R8 0 1
     2020 SETTABLEKS                       R8 R4 K577 ["FStringAssistantMeshGenImageGenModelOverride"]
     2022 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2024 LOADK                            R9 K578 ["AssistantMeshGenImageGenPromptTemplate"]
     2025 LOADK                            R10 K565 [""]
     2026 CALL                             R8 2 1
     2027 CALL                             R8 0 1
     2028 SETTABLEKS                       R8 R4 K579 ["FStringAssistantMeshGenImageGenPromptTemplate"]
     2030 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2032 LOADK                            R9 K580 ["AssistantMeshGenInferenceServiceOverride"]
     2033 LOADK                            R10 K581 ["stage-diff-mesh-gen"]
     2034 CALL                             R8 2 1
     2035 CALL                             R8 0 1
     2036 SETTABLEKS                       R8 R4 K582 ["FStringAssistantMeshGenInferenceServiceOverride"]
     2038 GETIMPORT                        R8 K5 [require]
     2040 GETTABLEKS                       R9 R0 K583 ["FlagUtils"]
     2042 GETTABLEKS                       R9 R9 K584 ["createGetFStringAssistantMeshGenSchemaData"]
     2044 CALL                             R8 1 1
     2045 CALL                             R8 0 1
     2046 SETTABLEKS                       R8 R4 K585 ["FStringAssistantMeshGenSchemaData"]
     2048 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2050 LOADK                            R9 K586 ["AssistantModerateErrorMsg"]
     2051 LOADK                            R10 K587 ["prompt violates Roblox safety policy"]
     2052 CALL                             R8 2 1
     2053 CALL                             R8 0 1
     2054 SETTABLEKS                       R8 R4 K588 ["FStringAssistantModerateErrorMsg"]
     2056 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2058 LOADK                            R9 K589 ["AssistantSkillsAllowlist"]
     2059 LOADK                            R10 K590 ["docs-search: true, scene-analysis: true, device-simulator: true, perf-profiling: true, create-skill: true, unit-test: true, convert-to-streaming: false, import-asset: true"]
     2060 CALL                             R8 2 1
     2061 CALL                             R8 0 1
     2062 SETTABLEKS                       R8 R4 K591 ["FStringAssistantSkillsAllowlist"]
     2064 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2066 LOADK                            R9 K592 ["AssistantTestLLMReasoningEffort"]
     2067 LOADK                            R10 K593 ["high"]
     2068 CALL                             R8 2 1
     2069 CALL                             R8 0 1
     2070 SETTABLEKS                       R8 R4 K594 ["FStringAssistantTestLLMReasoningEffort"]
     2072 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2074 LOADK                            R9 K595 ["AssistantToolsExcludedDirectories"]
     2075 LOADK                            R10 K596 ["CoreGui,PlayerGui,LoadedCode"]
     2076 CALL                             R8 2 1
     2077 CALL                             R8 0 1
     2078 SETTABLEKS                       R8 R4 K597 ["FStringAssistantToolsExcludedDirectories"]
     2080 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2082 LOADK                            R9 K598 ["AssistantToolWidgetMappings"]
     2083 LOADK                            R10 K565 [""]
     2084 CALL                             R8 2 1
     2085 CALL                             R8 0 1
     2086 SETTABLEKS                       R8 R4 K599 ["FStringAssistantToolWidgetMappings"]
     2088 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2090 LOADK                            R9 K600 ["AssistantUnitTestSubagentModel"]
     2091 LOADK                            R10 K601 ["Assistant/glm5"]
     2092 CALL                             R8 2 1
     2093 CALL                             R8 0 1
     2094 SETTABLEKS                       R8 R4 K602 ["FStringAssistantUnitTestSubagentModel"]
     2096 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2098 LOADK                            R9 K603 ["AssistantUntitledChatPlaceholderText"]
     2099 LOADK                            R10 K604 ["Untitled Chat"]
     2100 CALL                             R8 2 1
     2101 CALL                             R8 0 1
     2102 SETTABLEKS                       R8 R4 K605 ["FStringAssistantUntitledChatPlaceholder"]
     2104 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2106 LOADK                            R9 K606 ["MCPAssistantAnthropicModels"]
     2107 LOADK                            R10 K607 ["claude-sonnet-4-6,claude-opus-4-6,claude-sonnet-4-5,claude-haiku-4-5"]
     2108 CALL                             R8 2 1
     2109 CALL                             R8 0 1
     2110 SETTABLEKS                       R8 R4 K608 ["FStringMCPAssistantAnthropicModels"]
     2112 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2114 LOADK                            R9 K609 ["MCPAssistantClaudeAPIKey"]
     2115 LOADK                            R10 K565 [""]
     2116 CALL                             R8 2 1
     2117 CALL                             R8 0 1
     2118 SETTABLEKS                       R8 R4 K610 ["FStringMCPAssistantClaudeAPIKey"]
     2120 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2122 LOADK                            R9 K611 ["MCPAssistantCustomModelName"]
     2123 LOADK                            R10 K565 [""]
     2124 CALL                             R8 2 1
     2125 CALL                             R8 0 1
     2126 SETTABLEKS                       R8 R4 K612 ["FStringMCPAssistantCustomModelName"]
     2128 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2130 LOADK                            R9 K613 ["MCPAssistantGeminiAPIKey"]
     2131 LOADK                            R10 K565 [""]
     2132 CALL                             R8 2 1
     2133 CALL                             R8 0 1
     2134 SETTABLEKS                       R8 R4 K614 ["FStringMCPAssistantGeminiAPIKey"]
     2136 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2138 LOADK                            R9 K615 ["MCPAssistantGeminiModels"]
     2139 LOADK                            R10 K616 ["gemini-3-pro-preview,gemini-3-flash-preview,gemini-2.5-pro"]
     2140 CALL                             R8 2 1
     2141 CALL                             R8 0 1
     2142 SETTABLEKS                       R8 R4 K617 ["FStringMCPAssistantGeminiModels"]
     2144 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2146 LOADK                            R9 K618 ["MCPAssistantOpenAIAPIKey"]
     2147 LOADK                            R10 K565 [""]
     2148 CALL                             R8 2 1
     2149 CALL                             R8 0 1
     2150 SETTABLEKS                       R8 R4 K619 ["FStringMCPAssistantOpenAIAPIKey"]
     2152 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2154 LOADK                            R9 K620 ["MCPAssistantOpenAIModels"]
     2155 LOADK                            R10 K621 ["gpt-5.2,gpt-5,gpt-5-mini,gpt-4.1"]
     2156 CALL                             R8 2 1
     2157 CALL                             R8 0 1
     2158 SETTABLEKS                       R8 R4 K622 ["FStringMCPAssistantOpenAIModels"]
     2160 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2162 LOADK                            R9 K623 ["MCPAssistantOpenAIReasoningEffort"]
     2163 LOADK                            R10 K565 [""]
     2164 CALL                             R8 2 1
     2165 CALL                             R8 0 1
     2166 SETTABLEKS                       R8 R4 K624 ["FStringMCPAssistantOpenAIReasoningEffort"]
     2168 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2170 LOADK                            R9 K625 ["MCPAssistantPrimitiveGenServerURL"]
     2171 LOADK                            R10 K565 [""]
     2172 CALL                             R8 2 1
     2173 CALL                             R8 0 1
     2174 SETTABLEKS                       R8 R4 K626 ["FStringMCPAssistantPrimitiveGenServerURL"]
     2176 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2178 LOADK                            R9 K627 ["MCPAssistantTestLLMAPIKey"]
     2179 LOADK                            R10 K565 [""]
     2180 CALL                             R8 2 1
     2181 CALL                             R8 0 1
     2182 SETTABLEKS                       R8 R4 K628 ["FStringMCPAssistantTestLLMAPIKey"]
     2184 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2186 LOADK                            R9 K629 ["MCPAssistantURLOverride"]
     2187 LOADK                            R10 K565 [""]
     2188 CALL                             R8 2 1
     2189 CALL                             R8 0 1
     2190 SETTABLEKS                       R8 R4 K630 ["FStringMCPAssistantURLOverride"]
     2192 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2194 LOADK                            R9 K631 ["MCPDocsUrl"]
     2195 LOADK                            R10 K632 ["https://create.roblox.com/docs/studio/mcp/"]
     2196 CALL                             R8 2 1
     2197 CALL                             R8 0 1
     2198 SETTABLEKS                       R8 R4 K633 ["FStringMCPDocsUrl"]
     2200 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2202 LOADK                            R9 K634 ["PlaytestConversationURL"]
     2203 LOADK                            R10 K635 ["https://apis.roblox.com/studio-npc-playtest/v1/conversation"]
     2204 CALL                             R8 2 1
     2205 CALL                             R8 0 1
     2206 SETTABLEKS                       R8 R4 K636 ["FStringPlaytestConversationURL"]
     2208 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2210 LOADK                            R9 K637 ["PlaytestModelName"]
     2211 LOADK                            R10 K638 ["Qwen/Qwen35-35B-A3B"]
     2212 CALL                             R8 2 1
     2213 CALL                             R8 0 1
     2214 SETTABLEKS                       R8 R4 K639 ["FStringPlaytestModelName"]
     2216 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2218 LOADK                            R9 K640 ["PrimGenImageGenPromptTemplate"]
     2219 LOADK                            R10 K565 [""]
     2220 CALL                             R8 2 1
     2221 CALL                             R8 0 1
     2222 SETTABLEKS                       R8 R4 K641 ["FStringPrimGenImageGenPromptTemplate"]
     2224 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2226 LOADK                            R9 K642 ["ProceduralScriptCapabilities"]
     2227 LOADK                            R10 K643 ["Basic,CreateInstances,CSG,Logging,Material,RunClientScript,RunServerScript,UI"]
     2228 CALL                             R8 2 1
     2229 CALL                             R8 0 1
     2230 SETTABLEKS                       R8 R4 K644 ["FStringProceduralScriptCapabilities"]
     2232 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2234 LOADK                            R9 K645 ["ScreenCaptureFormat"]
     2235 LOADK                            R10 K565 [""]
     2236 CALL                             R8 2 1
     2237 CALL                             R8 0 1
     2238 SETTABLEKS                       R8 R4 K646 ["FStringScreenCaptureFormat"]
     2240 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2242 LOADK                            R9 K647 ["ScreenCaptureSize"]
     2243 LOADK                            R10 K565 [""]
     2244 CALL                             R8 2 1
     2245 CALL                             R8 0 1
     2246 SETTABLEKS                       R8 R4 K648 ["FStringScreenCaptureSize"]
     2248 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2250 LOADK                            R9 K649 ["ScreenCaptureSubagentModelName"]
     2251 LOADK                            R10 K565 [""]
     2252 CALL                             R8 2 1
     2253 CALL                             R8 0 1
     2254 SETTABLEKS                       R8 R4 K650 ["FStringScreenCaptureSubagentModelName"]
     2256 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2258 LOADK                            R9 K651 ["SubagentExploreModelName"]
     2259 LOADK                            R10 K652 ["Assistant/glm5-b200-server-1"]
     2260 CALL                             R8 2 1
     2261 CALL                             R8 0 1
     2262 SETTABLEKS                       R8 R4 K653 ["FStringSubagentExploreModelName"]
     2264 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2266 LOADK                            R9 K654 ["SubagentURLOverride"]
     2267 LOADK                            R10 K565 [""]
     2268 CALL                             R8 2 1
     2269 CALL                             R8 0 1
     2270 SETTABLEKS                       R8 R4 K655 ["FStringSubagentURLOverride"]
     2272 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2274 LOADK                            R9 K656 ["TestLLMURLOverride"]
     2275 LOADK                            R10 K565 [""]
     2276 CALL                             R8 2 1
     2277 CALL                             R8 0 1
     2278 SETTABLEKS                       R8 R4 K657 ["FStringTestLLMURLOverride"]
     2280 GETTABLEKS                       R8 R3 K563 ["createGetFString"]
     2282 LOADK                            R9 K658 ["TestSubagentURLOverride"]
     2283 LOADK                            R10 K565 [""]
     2284 CALL                             R8 2 1
     2285 CALL                             R8 0 1
     2286 SETTABLEKS                       R8 R4 K659 ["FStringTestSubagentURLOverride"]
     2288 DUPTABLE                         R10 K661 [{"__index", "__newindex"}]
     2289 SETTABLEKS                       R2 R10 K660 ["__index"]
     2291 SETTABLEKS                       R2 R10 K11 ["__newindex"]
     2293 FASTCALL2                        SETMETATABLE R4 R10 ; [+4]
     2295 MOVE                             R9 R4
     2296 GETIMPORT                        R8 K15 [setmetatable]
     2298 CALL                             R8 2 1
     2299 RETURN                           R8 1
