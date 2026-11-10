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
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RibbonGenerateTab"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["RibbonEnableGenerateButton"]
       10 NAMECALL                         R0 R0 K5 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_34:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dMeshGen"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_36:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_39:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_40:
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
      178 LOADK                            R2 K28 ["RibbonEnableGenerateButton"]
      179 LOADB                            R3 0
      180 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      182 CALL                             R0 3 0
      183 GETIMPORT                        R0 K1 [game]
      185 LOADK                            R2 K29 ["RibbonEnableGenProceduralModelButton"]
      186 LOADB                            R3 0
      187 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      189 CALL                             R0 3 0
      190 GETIMPORT                        R0 K1 [game]
      192 LOADK                            R2 K30 ["Gen3dMeshGen"]
      193 LOADB                            R3 0
      194 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      196 CALL                             R0 3 0
      197 GETIMPORT                        R0 K1 [game]
      199 LOADK                            R2 K31 ["AssistantTextureGenImageGenModelOverride"]
      200 LOADK                            R3 K32 ["gemini"]
      201 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      203 CALL                             R0 3 0
      204 GETIMPORT                        R0 K1 [game]
      206 LOADK                            R2 K34 ["CubeGenerationGatewayApiKey"]
      207 LOADK                            R3 K35 [""]
      208 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      210 CALL                             R0 3 0
      211 GETIMPORT                        R0 K1 [game]
      213 LOADK                            R2 K36 ["CubeGenerationGatewayBaseUrlOverride"]
      214 LOADK                            R3 K35 [""]
      215 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      217 CALL                             R0 3 0
      218 GETIMPORT                        R0 K1 [game]
      220 LOADK                            R2 K37 ["TextureGenImageGenPromptTemplate"]
      221 LOADK                            R3 K35 [""]
      222 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      224 CALL                             R0 3 0
      225 GETIMPORT                        R0 K1 [game]
      227 LOADK                            R2 K38 ["TextureGenTexturePromptTemplate"]
      228 LOADK                            R3 K35 [""]
      229 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      231 CALL                             R0 3 0
      232 DUPCLOSURE                       R0 K39 [PROTO_1]
      233 GETIMPORT                        R2 K41 [pcall]
      235 LOADK                            R4 K42 ["AssistantImageGenImprovements"]
      236 NEWCLOSURE                       R3 P1
      237 CAPTURE                          VAL R4
      238 CALL                             R2 1 2
      239 JUMPIFNOT                        R2 ; [+2]
      240 MOVE                             R1 R3
      241 JUMPIF                           R1 ; [+1]
      242 LOADB                            R1 0
      243 GETIMPORT                        R3 K41 [pcall]
      245 LOADK                            R5 K43 ["AssistantImageGenSeed"]
      246 NEWCLOSURE                       R4 P1
      247 CAPTURE                          VAL R5
      248 CALL                             R3 1 2
      249 JUMPIFNOT                        R3 ; [+2]
      250 MOVE                             R2 R4
      251 JUMPIF                           R2 ; [+1]
      252 LOADB                            R2 0
      253 GETIMPORT                        R4 K41 [pcall]
      255 LOADK                            R6 K44 ["DebugLogAssistantUI"]
      256 NEWCLOSURE                       R5 P1
      257 CAPTURE                          VAL R6
      258 CALL                             R4 1 2
      259 JUMPIFNOT                        R4 ; [+2]
      260 MOVE                             R3 R5
      261 JUMPIF                           R3 ; [+1]
      262 LOADB                            R3 0
      263 GETIMPORT                        R5 K41 [pcall]
      265 LOADK                            R7 K45 ["AssistantImageGenAbortPollOn4xx"]
      266 NEWCLOSURE                       R6 P1
      267 CAPTURE                          VAL R7
      268 CALL                             R5 1 2
      269 JUMPIFNOT                        R5 ; [+2]
      270 MOVE                             R4 R6
      271 JUMPIF                           R4 ; [+1]
      272 LOADB                            R4 0
      273 GETIMPORT                        R6 K41 [pcall]
      275 DUPCLOSURE                       R7 K46 [PROTO_2]
      276 CALL                             R6 1 2
      277 JUMPIFNOT                        R6 ; [+2]
      278 MOVE                             R5 R7
      279 JUMPIF                           R5 ; [+1]
      280 LOADB                            R5 0
      281 NEWTABLE                         R6 64 0
      283 DUPCLOSURE                       R7 K47 [PROTO_4]
      284 SETTABLEKS                       R7 R6 K48 ["getFFlagEnableTextureGenStudio"]
      286 DUPCLOSURE                       R7 K49 [PROTO_5]
      287 SETTABLEKS                       R7 R6 K50 ["getFFlagTextureGenStudioMultiSelect"]
      289 DUPCLOSURE                       R7 K51 [PROTO_6]
      290 SETTABLEKS                       R7 R6 K52 ["getFFlagTextureGenStudioReplaceInPlace"]
      292 DUPCLOSURE                       R7 K53 [PROTO_7]
      293 SETTABLEKS                       R7 R6 K54 ["getFFlagTextureGenModelSelector"]
      295 DUPCLOSURE                       R7 K55 [PROTO_8]
      296 SETTABLEKS                       R7 R6 K56 ["getFFlagTextureGenReferenceImage"]
      298 DUPCLOSURE                       R7 K57 [PROTO_9]
      299 SETTABLEKS                       R7 R6 K58 ["getFFlagTextureGenAutoSelectView"]
      301 DUPCLOSURE                       R7 K59 [PROTO_10]
      302 SETTABLEKS                       R7 R6 K60 ["getFFlagTextureGenComposerRevamp"]
      304 DUPCLOSURE                       R7 K61 [PROTO_11]
      305 SETTABLEKS                       R7 R6 K62 ["getFFlagTextureGenScrollablePrompt"]
      307 DUPCLOSURE                       R7 K63 [PROTO_12]
      308 SETTABLEKS                       R7 R6 K64 ["getFFlagTextureGenDraggablePopover"]
      310 DUPCLOSURE                       R7 K65 [PROTO_13]
      311 SETTABLEKS                       R7 R6 K66 ["getFFlagGen3dSceneGenSurface"]
      313 DUPCLOSURE                       R7 K67 [PROTO_14]
      314 SETTABLEKS                       R7 R6 K68 ["getFFlagGen3dSceneGenSettings"]
      316 DUPCLOSURE                       R7 K69 [PROTO_15]
      317 SETTABLEKS                       R7 R6 K70 ["getFFlagAssistantGenerateSceneQuality"]
      319 DUPCLOSURE                       R7 K71 [PROTO_16]
      320 SETTABLEKS                       R7 R6 K72 ["getFFlagTextureGenAsyncAssetUpload"]
      322 DUPCLOSURE                       R7 K73 [PROTO_17]
      323 SETTABLEKS                       R7 R6 K74 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      325 DUPCLOSURE                       R7 K75 [PROTO_18]
      326 SETTABLEKS                       R7 R6 K76 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      328 DUPCLOSURE                       R7 K77 [PROTO_19]
      329 SETTABLEKS                       R7 R6 K78 ["getFFlagTextureGenRevertAfterInsert"]
      331 DUPCLOSURE                       R7 K79 [PROTO_20]
      332 SETTABLEKS                       R7 R6 K80 ["getFFlagTextureGenUpgradeToQuality"]
      334 DUPCLOSURE                       R7 K81 [PROTO_21]
      335 SETTABLEKS                       R7 R6 K82 ["getFFlagTextureGenFlatTexturingStatus"]
      337 DUPCLOSURE                       R7 K83 [PROTO_22]
      338 SETTABLEKS                       R7 R6 K84 ["getFFlagTextureGenDebugLog"]
      340 DUPCLOSURE                       R7 K85 [PROTO_23]
      341 SETTABLEKS                       R7 R6 K86 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      343 DUPCLOSURE                       R7 K87 [PROTO_24]
      344 SETTABLEKS                       R7 R6 K88 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      346 DUPCLOSURE                       R7 K89 [PROTO_25]
      347 SETTABLEKS                       R7 R6 K90 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      349 DUPCLOSURE                       R7 K91 [PROTO_26]
      350 SETTABLEKS                       R7 R6 K92 ["getFFlagGen3dSurfaceBackendErrorMessage"]
      352 DUPCLOSURE                       R7 K93 [PROTO_27]
      353 SETTABLEKS                       R7 R6 K94 ["getFFlagGen3dToggleActionUpdateAsync"]
      355 DUPCLOSURE                       R7 K95 [PROTO_28]
      356 SETTABLEKS                       R7 R6 K96 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      358 DUPCLOSURE                       R7 K97 [PROTO_29]
      359 CAPTURE                          VAL R1
      360 SETTABLEKS                       R7 R6 K98 ["getFFlagAssistantImageGenImprovements"]
      362 DUPCLOSURE                       R7 K99 [PROTO_30]
      363 CAPTURE                          VAL R2
      364 SETTABLEKS                       R7 R6 K100 ["getFFlagAssistantImageGenSeed"]
      366 DUPCLOSURE                       R7 K101 [PROTO_31]
      367 CAPTURE                          VAL R3
      368 SETTABLEKS                       R7 R6 K102 ["getFFlagDebugLogAssistantUI"]
      370 DUPCLOSURE                       R7 K103 [PROTO_32]
      371 CAPTURE                          VAL R4
      372 SETTABLEKS                       R7 R6 K104 ["getFFlagAssistantImageGenAbortPollOn4xx"]
      374 DUPCLOSURE                       R7 K105 [PROTO_33]
      375 SETTABLEKS                       R7 R6 K106 ["getFFlagRibbonEnableGenerateButton"]
      377 DUPCLOSURE                       R7 K107 [PROTO_34]
      378 SETTABLEKS                       R7 R6 K108 ["getFFlagGen3dMeshGen"]
      380 DUPCLOSURE                       R7 K109 [PROTO_35]
      381 CAPTURE                          VAL R5
      382 SETTABLEKS                       R7 R6 K110 ["getEngineFeatureAssistantExecuteLuauArguments"]
      384 DUPCLOSURE                       R7 K111 [PROTO_36]
      385 SETTABLEKS                       R7 R6 K112 ["getFStringAssistantTextureGenImageGenModelOverride"]
      387 DUPCLOSURE                       R7 K113 [PROTO_37]
      388 SETTABLEKS                       R7 R6 K114 ["getFStringCubeGenerationGatewayApiKey"]
      390 DUPCLOSURE                       R7 K115 [PROTO_38]
      391 SETTABLEKS                       R7 R6 K116 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      393 DUPCLOSURE                       R7 K117 [PROTO_39]
      394 SETTABLEKS                       R7 R6 K118 ["getFStringTextureGenImageGenPromptTemplate"]
      396 DUPCLOSURE                       R7 K119 [PROTO_40]
      397 SETTABLEKS                       R7 R6 K120 ["getFStringTextureGenTexturePromptTemplate"]
      399 RETURN                           R6 1
