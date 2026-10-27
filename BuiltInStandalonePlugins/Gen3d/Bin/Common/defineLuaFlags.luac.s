PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+1]
        8 LOADB                            R3 0
        9 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantExecuteLuauArguments"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_2]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+1]
        7 LOADB                            R2 0
        8 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioMultiSelect"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioReplaceInPlace"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenModelSelector"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenReferenceImage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenAutoSelectView"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenComposerRevamp"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenScrollablePrompt"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDraggablePopover"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSceneGenSurface"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSceneGenSettings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantGenerateSceneQuality"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenAsyncAssetUpload"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenUpgradeToQuality"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenFlatTexturingStatus"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_22:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDebugLog"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_24:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageCaptureRespectsTransform"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSkipFoundationPanelPrewarm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_26:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSurfaceBackendErrorMessage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dToggleActionUpdateAsync"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dTextureGenCancelAbortsJob"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_34:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_35:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_36:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["TextureGenStudioMultiSelect"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["TextureGenStudioReplaceInPlace"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["TextureGenModelSelector"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["TextureGenReferenceImage"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["TextureGenAutoSelectView"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["TextureGenComposerRevamp"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["TextureGenImageGenPromptTemplateEnabled"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["TextureGenTexturePromptTemplateEnabled"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["TextureGenRevertAfterInsert"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K13 ["TextureGenUpgradeToQuality"]
       74 LOADB                            R3 0
       75 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K14 ["TextureGenFlatTexturingStatus"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K15 ["TextureGenDebugLog"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K16 ["Gen3dSeedImageViewportAlignedCapture"]
       95 LOADB                            R3 0
       96 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K17 ["Gen3dSeedImageCaptureRespectsTransform"]
      102 LOADB                            R3 0
      103 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      105 CALL                             R0 3 0
      106 GETIMPORT                        R0 K1 [game]
      108 LOADK                            R2 K18 ["Gen3dSkipFoundationPanelPrewarm"]
      109 LOADB                            R3 0
      110 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      112 CALL                             R0 3 0
      113 GETIMPORT                        R0 K1 [game]
      115 LOADK                            R2 K19 ["Gen3dSurfaceBackendErrorMessage"]
      116 LOADB                            R3 0
      117 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      119 CALL                             R0 3 0
      120 GETIMPORT                        R0 K1 [game]
      122 LOADK                            R2 K20 ["Gen3dToggleActionUpdateAsync"]
      123 LOADB                            R3 0
      124 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      126 CALL                             R0 3 0
      127 GETIMPORT                        R0 K1 [game]
      129 LOADK                            R2 K21 ["Gen3dTextureGenCancelAbortsJob"]
      130 LOADB                            R3 0
      131 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      133 CALL                             R0 3 0
      134 GETIMPORT                        R0 K1 [game]
      136 LOADK                            R2 K22 ["TextureGenScrollablePrompt"]
      137 LOADB                            R3 0
      138 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      140 CALL                             R0 3 0
      141 GETIMPORT                        R0 K1 [game]
      143 LOADK                            R2 K23 ["TextureGenDraggablePopover"]
      144 LOADB                            R3 0
      145 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      147 CALL                             R0 3 0
      148 GETIMPORT                        R0 K1 [game]
      150 LOADK                            R2 K24 ["Gen3dSceneGenSurface"]
      151 LOADB                            R3 0
      152 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      154 CALL                             R0 3 0
      155 GETIMPORT                        R0 K1 [game]
      157 LOADK                            R2 K25 ["Gen3dSceneGenSettings"]
      158 LOADB                            R3 0
      159 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      161 CALL                             R0 3 0
      162 GETIMPORT                        R0 K1 [game]
      164 LOADK                            R2 K26 ["AssistantGenerateSceneQuality"]
      165 LOADB                            R3 0
      166 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      168 CALL                             R0 3 0
      169 GETIMPORT                        R0 K1 [game]
      171 LOADK                            R2 K27 ["TextureGenAsyncAssetUpload"]
      172 LOADB                            R3 0
      173 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      175 CALL                             R0 3 0
      176 GETIMPORT                        R0 K1 [game]
      178 LOADK                            R2 K28 ["AssistantTextureGenImageGenModelOverride"]
      179 LOADK                            R3 K29 ["gemini"]
      180 NAMECALL                         R0 R0 K30 ["DefineFastString"]
      182 CALL                             R0 3 0
      183 GETIMPORT                        R0 K1 [game]
      185 LOADK                            R2 K31 ["CubeGenerationGatewayApiKey"]
      186 LOADK                            R3 K32 [""]
      187 NAMECALL                         R0 R0 K30 ["DefineFastString"]
      189 CALL                             R0 3 0
      190 GETIMPORT                        R0 K1 [game]
      192 LOADK                            R2 K33 ["CubeGenerationGatewayBaseUrlOverride"]
      193 LOADK                            R3 K32 [""]
      194 NAMECALL                         R0 R0 K30 ["DefineFastString"]
      196 CALL                             R0 3 0
      197 GETIMPORT                        R0 K1 [game]
      199 LOADK                            R2 K34 ["TextureGenImageGenPromptTemplate"]
      200 LOADK                            R3 K32 [""]
      201 NAMECALL                         R0 R0 K30 ["DefineFastString"]
      203 CALL                             R0 3 0
      204 GETIMPORT                        R0 K1 [game]
      206 LOADK                            R2 K35 ["TextureGenTexturePromptTemplate"]
      207 LOADK                            R3 K32 [""]
      208 NAMECALL                         R0 R0 K30 ["DefineFastString"]
      210 CALL                             R0 3 0
      211 DUPCLOSURE                       R0 K36 [PROTO_1]
      212 GETIMPORT                        R2 K38 [pcall]
      214 LOADK                            R4 K39 ["AssistantImageGenImprovements"]
      215 NEWCLOSURE                       R3 P1
      216 CAPTURE                          VAL R4
      217 CALL                             R2 1 2
      218 JUMPIFNOT                        R2 ; [+2]
      219 MOVE                             R1 R3
      220 JUMPIF                           R1 ; [+1]
      221 LOADB                            R1 0
      222 GETIMPORT                        R3 K38 [pcall]
      224 LOADK                            R5 K40 ["AssistantImageGenSeed"]
      225 NEWCLOSURE                       R4 P1
      226 CAPTURE                          VAL R5
      227 CALL                             R3 1 2
      228 JUMPIFNOT                        R3 ; [+2]
      229 MOVE                             R2 R4
      230 JUMPIF                           R2 ; [+1]
      231 LOADB                            R2 0
      232 GETIMPORT                        R4 K38 [pcall]
      234 LOADK                            R6 K41 ["DebugLogAssistantUI"]
      235 NEWCLOSURE                       R5 P1
      236 CAPTURE                          VAL R6
      237 CALL                             R4 1 2
      238 JUMPIFNOT                        R4 ; [+2]
      239 MOVE                             R3 R5
      240 JUMPIF                           R3 ; [+1]
      241 LOADB                            R3 0
      242 GETIMPORT                        R5 K38 [pcall]
      244 LOADK                            R7 K42 ["AssistantImageGenAbortPollOn4xx"]
      245 NEWCLOSURE                       R6 P1
      246 CAPTURE                          VAL R7
      247 CALL                             R5 1 2
      248 JUMPIFNOT                        R5 ; [+2]
      249 MOVE                             R4 R6
      250 JUMPIF                           R4 ; [+1]
      251 LOADB                            R4 0
      252 GETIMPORT                        R6 K38 [pcall]
      254 DUPCLOSURE                       R7 K43 [PROTO_2]
      255 CALL                             R6 1 2
      256 JUMPIFNOT                        R6 ; [+2]
      257 MOVE                             R5 R7
      258 JUMPIF                           R5 ; [+1]
      259 LOADB                            R5 0
      260 NEWTABLE                         R6 64 0
      262 DUPCLOSURE                       R7 K44 [PROTO_4]
      263 SETTABLEKS                       R7 R6 K45 ["getFFlagEnableTextureGenStudio"]
      265 DUPCLOSURE                       R7 K46 [PROTO_5]
      266 SETTABLEKS                       R7 R6 K47 ["getFFlagTextureGenStudioMultiSelect"]
      268 DUPCLOSURE                       R7 K48 [PROTO_6]
      269 SETTABLEKS                       R7 R6 K49 ["getFFlagTextureGenStudioReplaceInPlace"]
      271 DUPCLOSURE                       R7 K50 [PROTO_7]
      272 SETTABLEKS                       R7 R6 K51 ["getFFlagTextureGenModelSelector"]
      274 DUPCLOSURE                       R7 K52 [PROTO_8]
      275 SETTABLEKS                       R7 R6 K53 ["getFFlagTextureGenReferenceImage"]
      277 DUPCLOSURE                       R7 K54 [PROTO_9]
      278 SETTABLEKS                       R7 R6 K55 ["getFFlagTextureGenAutoSelectView"]
      280 DUPCLOSURE                       R7 K56 [PROTO_10]
      281 SETTABLEKS                       R7 R6 K57 ["getFFlagTextureGenComposerRevamp"]
      283 DUPCLOSURE                       R7 K58 [PROTO_11]
      284 SETTABLEKS                       R7 R6 K59 ["getFFlagTextureGenScrollablePrompt"]
      286 DUPCLOSURE                       R7 K60 [PROTO_12]
      287 SETTABLEKS                       R7 R6 K61 ["getFFlagTextureGenDraggablePopover"]
      289 DUPCLOSURE                       R7 K62 [PROTO_13]
      290 SETTABLEKS                       R7 R6 K63 ["getFFlagGen3dSceneGenSurface"]
      292 DUPCLOSURE                       R7 K64 [PROTO_14]
      293 SETTABLEKS                       R7 R6 K65 ["getFFlagGen3dSceneGenSettings"]
      295 DUPCLOSURE                       R7 K66 [PROTO_15]
      296 SETTABLEKS                       R7 R6 K67 ["getFFlagAssistantGenerateSceneQuality"]
      298 DUPCLOSURE                       R7 K68 [PROTO_16]
      299 SETTABLEKS                       R7 R6 K69 ["getFFlagTextureGenAsyncAssetUpload"]
      301 DUPCLOSURE                       R7 K70 [PROTO_17]
      302 SETTABLEKS                       R7 R6 K71 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      304 DUPCLOSURE                       R7 K72 [PROTO_18]
      305 SETTABLEKS                       R7 R6 K73 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      307 DUPCLOSURE                       R7 K74 [PROTO_19]
      308 SETTABLEKS                       R7 R6 K75 ["getFFlagTextureGenRevertAfterInsert"]
      310 DUPCLOSURE                       R7 K76 [PROTO_20]
      311 SETTABLEKS                       R7 R6 K77 ["getFFlagTextureGenUpgradeToQuality"]
      313 DUPCLOSURE                       R7 K78 [PROTO_21]
      314 SETTABLEKS                       R7 R6 K79 ["getFFlagTextureGenFlatTexturingStatus"]
      316 DUPCLOSURE                       R7 K80 [PROTO_22]
      317 SETTABLEKS                       R7 R6 K81 ["getFFlagTextureGenDebugLog"]
      319 DUPCLOSURE                       R7 K82 [PROTO_23]
      320 SETTABLEKS                       R7 R6 K83 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      322 DUPCLOSURE                       R7 K84 [PROTO_24]
      323 SETTABLEKS                       R7 R6 K85 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      325 DUPCLOSURE                       R7 K86 [PROTO_25]
      326 SETTABLEKS                       R7 R6 K87 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      328 DUPCLOSURE                       R7 K88 [PROTO_26]
      329 SETTABLEKS                       R7 R6 K89 ["getFFlagGen3dSurfaceBackendErrorMessage"]
      331 DUPCLOSURE                       R7 K90 [PROTO_27]
      332 SETTABLEKS                       R7 R6 K91 ["getFFlagGen3dToggleActionUpdateAsync"]
      334 DUPCLOSURE                       R7 K92 [PROTO_28]
      335 SETTABLEKS                       R7 R6 K93 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      337 DUPCLOSURE                       R7 K94 [PROTO_29]
      338 CAPTURE                          VAL R1
      339 SETTABLEKS                       R7 R6 K95 ["getFFlagAssistantImageGenImprovements"]
      341 DUPCLOSURE                       R7 K96 [PROTO_30]
      342 CAPTURE                          VAL R2
      343 SETTABLEKS                       R7 R6 K97 ["getFFlagAssistantImageGenSeed"]
      345 DUPCLOSURE                       R7 K98 [PROTO_31]
      346 CAPTURE                          VAL R3
      347 SETTABLEKS                       R7 R6 K99 ["getFFlagDebugLogAssistantUI"]
      349 DUPCLOSURE                       R7 K100 [PROTO_32]
      350 CAPTURE                          VAL R4
      351 SETTABLEKS                       R7 R6 K101 ["getFFlagAssistantImageGenAbortPollOn4xx"]
      353 DUPCLOSURE                       R7 K102 [PROTO_33]
      354 CAPTURE                          VAL R5
      355 SETTABLEKS                       R7 R6 K103 ["getEngineFeatureAssistantExecuteLuauArguments"]
      357 DUPCLOSURE                       R7 K104 [PROTO_34]
      358 SETTABLEKS                       R7 R6 K105 ["getFStringAssistantTextureGenImageGenModelOverride"]
      360 DUPCLOSURE                       R7 K106 [PROTO_35]
      361 SETTABLEKS                       R7 R6 K107 ["getFStringCubeGenerationGatewayApiKey"]
      363 DUPCLOSURE                       R7 K108 [PROTO_36]
      364 SETTABLEKS                       R7 R6 K109 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      366 DUPCLOSURE                       R7 K110 [PROTO_37]
      367 SETTABLEKS                       R7 R6 K111 ["getFStringTextureGenImageGenPromptTemplate"]
      369 DUPCLOSURE                       R7 K112 [PROTO_38]
      370 SETTABLEKS                       R7 R6 K113 ["getFStringTextureGenTexturePromptTemplate"]
      372 RETURN                           R6 1
