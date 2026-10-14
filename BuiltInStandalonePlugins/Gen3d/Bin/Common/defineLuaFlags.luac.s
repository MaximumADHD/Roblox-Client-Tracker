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
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenDebugLog"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageCaptureRespectsTransform"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSkipFoundationPanelPrewarm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSurfaceBackendErrorMessage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dToggleActionUpdateAsync"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dTextureGenCancelAbortsJob"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_26:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_29:
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
      136 LOADK                            R2 K22 ["AssistantTextureGenImageGenModelOverride"]
      137 LOADK                            R3 K23 ["gemini"]
      138 NAMECALL                         R0 R0 K24 ["DefineFastString"]
      140 CALL                             R0 3 0
      141 GETIMPORT                        R0 K1 [game]
      143 LOADK                            R2 K25 ["CubeGenerationGatewayApiKey"]
      144 LOADK                            R3 K26 [""]
      145 NAMECALL                         R0 R0 K24 ["DefineFastString"]
      147 CALL                             R0 3 0
      148 GETIMPORT                        R0 K1 [game]
      150 LOADK                            R2 K27 ["CubeGenerationGatewayBaseUrlOverride"]
      151 LOADK                            R3 K26 [""]
      152 NAMECALL                         R0 R0 K24 ["DefineFastString"]
      154 CALL                             R0 3 0
      155 GETIMPORT                        R0 K1 [game]
      157 LOADK                            R2 K28 ["TextureGenImageGenPromptTemplate"]
      158 LOADK                            R3 K26 [""]
      159 NAMECALL                         R0 R0 K24 ["DefineFastString"]
      161 CALL                             R0 3 0
      162 GETIMPORT                        R0 K1 [game]
      164 LOADK                            R2 K29 ["TextureGenTexturePromptTemplate"]
      165 LOADK                            R3 K26 [""]
      166 NAMECALL                         R0 R0 K24 ["DefineFastString"]
      168 CALL                             R0 3 0
      169 DUPCLOSURE                       R0 K30 [PROTO_1]
      170 GETIMPORT                        R2 K32 [pcall]
      172 LOADK                            R4 K33 ["AssistantImageGenImprovements"]
      173 NEWCLOSURE                       R3 P1
      174 CAPTURE                          VAL R4
      175 CALL                             R2 1 2
      176 JUMPIFNOT                        R2 ; [+2]
      177 MOVE                             R1 R3
      178 JUMPIF                           R1 ; [+1]
      179 LOADB                            R1 0
      180 GETIMPORT                        R3 K32 [pcall]
      182 LOADK                            R5 K34 ["AssistantImageGenSeed"]
      183 NEWCLOSURE                       R4 P1
      184 CAPTURE                          VAL R5
      185 CALL                             R3 1 2
      186 JUMPIFNOT                        R3 ; [+2]
      187 MOVE                             R2 R4
      188 JUMPIF                           R2 ; [+1]
      189 LOADB                            R2 0
      190 GETIMPORT                        R4 K32 [pcall]
      192 LOADK                            R6 K35 ["DebugLogAssistantUI"]
      193 NEWCLOSURE                       R5 P1
      194 CAPTURE                          VAL R6
      195 CALL                             R4 1 2
      196 JUMPIFNOT                        R4 ; [+2]
      197 MOVE                             R3 R5
      198 JUMPIF                           R3 ; [+1]
      199 LOADB                            R3 0
      200 GETIMPORT                        R5 K32 [pcall]
      202 LOADK                            R7 K36 ["AssistantImageGenAbortPollOn4xx"]
      203 NEWCLOSURE                       R6 P1
      204 CAPTURE                          VAL R7
      205 CALL                             R5 1 2
      206 JUMPIFNOT                        R5 ; [+2]
      207 MOVE                             R4 R6
      208 JUMPIF                           R4 ; [+1]
      209 LOADB                            R4 0
      210 DUPTABLE                         R5 K65 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenReferenceImage", "getFFlagTextureGenAutoSelectView", "getFFlagTextureGenComposerRevamp", "getFFlagTextureGenScrollablePrompt", "getFFlagTextureGenDraggablePopover", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagTextureGenDebugLog", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFFlagGen3dSeedImageCaptureRespectsTransform", "getFFlagGen3dSkipFoundationPanelPrewarm", "getFFlagGen3dSurfaceBackendErrorMessage", "getFFlagGen3dToggleActionUpdateAsync", "getFFlagGen3dTextureGenCancelAbortsJob", "getFFlagAssistantImageGenImprovements", "getFFlagAssistantImageGenSeed", "getFFlagDebugLogAssistantUI", "getFFlagAssistantImageGenAbortPollOn4xx", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
      211 DUPCLOSURE                       R6 K66 [PROTO_2]
      212 SETTABLEKS                       R6 R5 K37 ["getFFlagEnableTextureGenStudio"]
      214 DUPCLOSURE                       R6 K67 [PROTO_3]
      215 SETTABLEKS                       R6 R5 K38 ["getFFlagTextureGenStudioMultiSelect"]
      217 DUPCLOSURE                       R6 K68 [PROTO_4]
      218 SETTABLEKS                       R6 R5 K39 ["getFFlagTextureGenStudioReplaceInPlace"]
      220 DUPCLOSURE                       R6 K69 [PROTO_5]
      221 SETTABLEKS                       R6 R5 K40 ["getFFlagTextureGenModelSelector"]
      223 DUPCLOSURE                       R6 K70 [PROTO_6]
      224 SETTABLEKS                       R6 R5 K41 ["getFFlagTextureGenReferenceImage"]
      226 DUPCLOSURE                       R6 K71 [PROTO_7]
      227 SETTABLEKS                       R6 R5 K42 ["getFFlagTextureGenAutoSelectView"]
      229 DUPCLOSURE                       R6 K72 [PROTO_8]
      230 SETTABLEKS                       R6 R5 K43 ["getFFlagTextureGenComposerRevamp"]
      232 DUPCLOSURE                       R6 K73 [PROTO_9]
      233 SETTABLEKS                       R6 R5 K44 ["getFFlagTextureGenScrollablePrompt"]
      235 DUPCLOSURE                       R6 K74 [PROTO_10]
      236 SETTABLEKS                       R6 R5 K45 ["getFFlagTextureGenDraggablePopover"]
      238 DUPCLOSURE                       R6 K75 [PROTO_11]
      239 SETTABLEKS                       R6 R5 K46 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      241 DUPCLOSURE                       R6 K76 [PROTO_12]
      242 SETTABLEKS                       R6 R5 K47 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      244 DUPCLOSURE                       R6 K77 [PROTO_13]
      245 SETTABLEKS                       R6 R5 K48 ["getFFlagTextureGenRevertAfterInsert"]
      247 DUPCLOSURE                       R6 K78 [PROTO_14]
      248 SETTABLEKS                       R6 R5 K49 ["getFFlagTextureGenDebugLog"]
      250 DUPCLOSURE                       R6 K79 [PROTO_15]
      251 SETTABLEKS                       R6 R5 K50 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      253 DUPCLOSURE                       R6 K80 [PROTO_16]
      254 SETTABLEKS                       R6 R5 K51 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      256 DUPCLOSURE                       R6 K81 [PROTO_17]
      257 SETTABLEKS                       R6 R5 K52 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      259 DUPCLOSURE                       R6 K82 [PROTO_18]
      260 SETTABLEKS                       R6 R5 K53 ["getFFlagGen3dSurfaceBackendErrorMessage"]
      262 DUPCLOSURE                       R6 K83 [PROTO_19]
      263 SETTABLEKS                       R6 R5 K54 ["getFFlagGen3dToggleActionUpdateAsync"]
      265 DUPCLOSURE                       R6 K84 [PROTO_20]
      266 SETTABLEKS                       R6 R5 K55 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      268 DUPCLOSURE                       R6 K85 [PROTO_21]
      269 CAPTURE                          VAL R1
      270 SETTABLEKS                       R6 R5 K56 ["getFFlagAssistantImageGenImprovements"]
      272 DUPCLOSURE                       R6 K86 [PROTO_22]
      273 CAPTURE                          VAL R2
      274 SETTABLEKS                       R6 R5 K57 ["getFFlagAssistantImageGenSeed"]
      276 DUPCLOSURE                       R6 K87 [PROTO_23]
      277 CAPTURE                          VAL R3
      278 SETTABLEKS                       R6 R5 K58 ["getFFlagDebugLogAssistantUI"]
      280 DUPCLOSURE                       R6 K88 [PROTO_24]
      281 CAPTURE                          VAL R4
      282 SETTABLEKS                       R6 R5 K59 ["getFFlagAssistantImageGenAbortPollOn4xx"]
      284 DUPCLOSURE                       R6 K89 [PROTO_25]
      285 SETTABLEKS                       R6 R5 K60 ["getFStringAssistantTextureGenImageGenModelOverride"]
      287 DUPCLOSURE                       R6 K90 [PROTO_26]
      288 SETTABLEKS                       R6 R5 K61 ["getFStringCubeGenerationGatewayApiKey"]
      290 DUPCLOSURE                       R6 K91 [PROTO_27]
      291 SETTABLEKS                       R6 R5 K62 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      293 DUPCLOSURE                       R6 K92 [PROTO_28]
      294 SETTABLEKS                       R6 R5 K63 ["getFStringTextureGenImageGenPromptTemplate"]
      296 DUPCLOSURE                       R6 K93 [PROTO_29]
      297 SETTABLEKS                       R6 R5 K64 ["getFStringTextureGenTexturePromptTemplate"]
      299 RETURN                           R5 1
