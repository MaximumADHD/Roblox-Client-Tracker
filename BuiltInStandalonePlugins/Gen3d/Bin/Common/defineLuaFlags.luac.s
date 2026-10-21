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
        2 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioMultiSelect"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioReplaceInPlace"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenModelSelector"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenReferenceImage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenAutoSelectView"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenComposerRevamp"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenScrollablePrompt"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDraggablePopover"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenAsyncAssetUpload"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDebugLog"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageCaptureRespectsTransform"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSkipFoundationPanelPrewarm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSurfaceBackendErrorMessage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dToggleActionUpdateAsync"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dTextureGenCancelAbortsJob"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_30:
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
       73 LOADK                            R2 K13 ["TextureGenDebugLog"]
       74 LOADB                            R3 0
       75 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K14 ["Gen3dSeedImageViewportAlignedCapture"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K15 ["Gen3dSeedImageCaptureRespectsTransform"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K16 ["Gen3dSkipFoundationPanelPrewarm"]
       95 LOADB                            R3 0
       96 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K17 ["Gen3dSurfaceBackendErrorMessage"]
      102 LOADB                            R3 0
      103 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      105 CALL                             R0 3 0
      106 GETIMPORT                        R0 K1 [game]
      108 LOADK                            R2 K18 ["Gen3dToggleActionUpdateAsync"]
      109 LOADB                            R3 0
      110 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      112 CALL                             R0 3 0
      113 GETIMPORT                        R0 K1 [game]
      115 LOADK                            R2 K19 ["Gen3dTextureGenCancelAbortsJob"]
      116 LOADB                            R3 0
      117 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      119 CALL                             R0 3 0
      120 GETIMPORT                        R0 K1 [game]
      122 LOADK                            R2 K20 ["TextureGenScrollablePrompt"]
      123 LOADB                            R3 0
      124 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      126 CALL                             R0 3 0
      127 GETIMPORT                        R0 K1 [game]
      129 LOADK                            R2 K21 ["TextureGenDraggablePopover"]
      130 LOADB                            R3 0
      131 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      133 CALL                             R0 3 0
      134 GETIMPORT                        R0 K1 [game]
      136 LOADK                            R2 K22 ["TextureGenAsyncAssetUpload"]
      137 LOADB                            R3 0
      138 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      140 CALL                             R0 3 0
      141 GETIMPORT                        R0 K1 [game]
      143 LOADK                            R2 K23 ["AssistantTextureGenImageGenModelOverride"]
      144 LOADK                            R3 K24 ["gemini"]
      145 NAMECALL                         R0 R0 K25 ["DefineFastString"]
      147 CALL                             R0 3 0
      148 GETIMPORT                        R0 K1 [game]
      150 LOADK                            R2 K26 ["CubeGenerationGatewayApiKey"]
      151 LOADK                            R3 K27 [""]
      152 NAMECALL                         R0 R0 K25 ["DefineFastString"]
      154 CALL                             R0 3 0
      155 GETIMPORT                        R0 K1 [game]
      157 LOADK                            R2 K28 ["CubeGenerationGatewayBaseUrlOverride"]
      158 LOADK                            R3 K27 [""]
      159 NAMECALL                         R0 R0 K25 ["DefineFastString"]
      161 CALL                             R0 3 0
      162 GETIMPORT                        R0 K1 [game]
      164 LOADK                            R2 K29 ["TextureGenImageGenPromptTemplate"]
      165 LOADK                            R3 K27 [""]
      166 NAMECALL                         R0 R0 K25 ["DefineFastString"]
      168 CALL                             R0 3 0
      169 GETIMPORT                        R0 K1 [game]
      171 LOADK                            R2 K30 ["TextureGenTexturePromptTemplate"]
      172 LOADK                            R3 K27 [""]
      173 NAMECALL                         R0 R0 K25 ["DefineFastString"]
      175 CALL                             R0 3 0
      176 DUPCLOSURE                       R0 K31 [PROTO_1]
      177 GETIMPORT                        R2 K33 [pcall]
      179 LOADK                            R4 K34 ["AssistantImageGenImprovements"]
      180 NEWCLOSURE                       R3 P1
      181 CAPTURE                          VAL R4
      182 CALL                             R2 1 2
      183 JUMPIFNOT                        R2 ; [+2]
      184 MOVE                             R1 R3
      185 JUMPIF                           R1 ; [+1]
      186 LOADB                            R1 0
      187 GETIMPORT                        R3 K33 [pcall]
      189 LOADK                            R5 K35 ["AssistantImageGenSeed"]
      190 NEWCLOSURE                       R4 P1
      191 CAPTURE                          VAL R5
      192 CALL                             R3 1 2
      193 JUMPIFNOT                        R3 ; [+2]
      194 MOVE                             R2 R4
      195 JUMPIF                           R2 ; [+1]
      196 LOADB                            R2 0
      197 GETIMPORT                        R4 K33 [pcall]
      199 LOADK                            R6 K36 ["DebugLogAssistantUI"]
      200 NEWCLOSURE                       R5 P1
      201 CAPTURE                          VAL R6
      202 CALL                             R4 1 2
      203 JUMPIFNOT                        R4 ; [+2]
      204 MOVE                             R3 R5
      205 JUMPIF                           R3 ; [+1]
      206 LOADB                            R3 0
      207 GETIMPORT                        R5 K33 [pcall]
      209 LOADK                            R7 K37 ["AssistantImageGenAbortPollOn4xx"]
      210 NEWCLOSURE                       R6 P1
      211 CAPTURE                          VAL R7
      212 CALL                             R5 1 2
      213 JUMPIFNOT                        R5 ; [+2]
      214 MOVE                             R4 R6
      215 JUMPIF                           R4 ; [+1]
      216 LOADB                            R4 0
      217 DUPTABLE                         R5 K67 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenReferenceImage", "getFFlagTextureGenAutoSelectView", "getFFlagTextureGenComposerRevamp", "getFFlagTextureGenScrollablePrompt", "getFFlagTextureGenDraggablePopover", "getFFlagTextureGenAsyncAssetUpload", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagTextureGenDebugLog", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFFlagGen3dSeedImageCaptureRespectsTransform", "getFFlagGen3dSkipFoundationPanelPrewarm", "getFFlagGen3dSurfaceBackendErrorMessage", "getFFlagGen3dToggleActionUpdateAsync", "getFFlagGen3dTextureGenCancelAbortsJob", "getFFlagAssistantImageGenImprovements", "getFFlagAssistantImageGenSeed", "getFFlagDebugLogAssistantUI", "getFFlagAssistantImageGenAbortPollOn4xx", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
      218 DUPCLOSURE                       R6 K68 [PROTO_2]
      219 SETTABLEKS                       R6 R5 K38 ["getFFlagEnableTextureGenStudio"]
      221 DUPCLOSURE                       R6 K69 [PROTO_3]
      222 SETTABLEKS                       R6 R5 K39 ["getFFlagTextureGenStudioMultiSelect"]
      224 DUPCLOSURE                       R6 K70 [PROTO_4]
      225 SETTABLEKS                       R6 R5 K40 ["getFFlagTextureGenStudioReplaceInPlace"]
      227 DUPCLOSURE                       R6 K71 [PROTO_5]
      228 SETTABLEKS                       R6 R5 K41 ["getFFlagTextureGenModelSelector"]
      230 DUPCLOSURE                       R6 K72 [PROTO_6]
      231 SETTABLEKS                       R6 R5 K42 ["getFFlagTextureGenReferenceImage"]
      233 DUPCLOSURE                       R6 K73 [PROTO_7]
      234 SETTABLEKS                       R6 R5 K43 ["getFFlagTextureGenAutoSelectView"]
      236 DUPCLOSURE                       R6 K74 [PROTO_8]
      237 SETTABLEKS                       R6 R5 K44 ["getFFlagTextureGenComposerRevamp"]
      239 DUPCLOSURE                       R6 K75 [PROTO_9]
      240 SETTABLEKS                       R6 R5 K45 ["getFFlagTextureGenScrollablePrompt"]
      242 DUPCLOSURE                       R6 K76 [PROTO_10]
      243 SETTABLEKS                       R6 R5 K46 ["getFFlagTextureGenDraggablePopover"]
      245 DUPCLOSURE                       R6 K77 [PROTO_11]
      246 SETTABLEKS                       R6 R5 K47 ["getFFlagTextureGenAsyncAssetUpload"]
      248 DUPCLOSURE                       R6 K78 [PROTO_12]
      249 SETTABLEKS                       R6 R5 K48 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      251 DUPCLOSURE                       R6 K79 [PROTO_13]
      252 SETTABLEKS                       R6 R5 K49 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      254 DUPCLOSURE                       R6 K80 [PROTO_14]
      255 SETTABLEKS                       R6 R5 K50 ["getFFlagTextureGenRevertAfterInsert"]
      257 DUPCLOSURE                       R6 K81 [PROTO_15]
      258 SETTABLEKS                       R6 R5 K51 ["getFFlagTextureGenDebugLog"]
      260 DUPCLOSURE                       R6 K82 [PROTO_16]
      261 SETTABLEKS                       R6 R5 K52 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      263 DUPCLOSURE                       R6 K83 [PROTO_17]
      264 SETTABLEKS                       R6 R5 K53 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      266 DUPCLOSURE                       R6 K84 [PROTO_18]
      267 SETTABLEKS                       R6 R5 K54 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      269 DUPCLOSURE                       R6 K85 [PROTO_19]
      270 SETTABLEKS                       R6 R5 K55 ["getFFlagGen3dSurfaceBackendErrorMessage"]
      272 DUPCLOSURE                       R6 K86 [PROTO_20]
      273 SETTABLEKS                       R6 R5 K56 ["getFFlagGen3dToggleActionUpdateAsync"]
      275 DUPCLOSURE                       R6 K87 [PROTO_21]
      276 SETTABLEKS                       R6 R5 K57 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      278 DUPCLOSURE                       R6 K88 [PROTO_22]
      279 CAPTURE                          VAL R1
      280 SETTABLEKS                       R6 R5 K58 ["getFFlagAssistantImageGenImprovements"]
      282 DUPCLOSURE                       R6 K89 [PROTO_23]
      283 CAPTURE                          VAL R2
      284 SETTABLEKS                       R6 R5 K59 ["getFFlagAssistantImageGenSeed"]
      286 DUPCLOSURE                       R6 K90 [PROTO_24]
      287 CAPTURE                          VAL R3
      288 SETTABLEKS                       R6 R5 K60 ["getFFlagDebugLogAssistantUI"]
      290 DUPCLOSURE                       R6 K91 [PROTO_25]
      291 CAPTURE                          VAL R4
      292 SETTABLEKS                       R6 R5 K61 ["getFFlagAssistantImageGenAbortPollOn4xx"]
      294 DUPCLOSURE                       R6 K92 [PROTO_26]
      295 SETTABLEKS                       R6 R5 K62 ["getFStringAssistantTextureGenImageGenModelOverride"]
      297 DUPCLOSURE                       R6 K93 [PROTO_27]
      298 SETTABLEKS                       R6 R5 K63 ["getFStringCubeGenerationGatewayApiKey"]
      300 DUPCLOSURE                       R6 K94 [PROTO_28]
      301 SETTABLEKS                       R6 R5 K64 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      303 DUPCLOSURE                       R6 K95 [PROTO_29]
      304 SETTABLEKS                       R6 R5 K65 ["getFStringTextureGenImageGenPromptTemplate"]
      306 DUPCLOSURE                       R6 K96 [PROTO_30]
      307 SETTABLEKS                       R6 R5 K66 ["getFStringTextureGenTexturePromptTemplate"]
      309 RETURN                           R5 1
