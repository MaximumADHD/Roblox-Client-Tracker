PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 JUMPIF                           R3 ; [+1]
        9 LOADB                            R3 0
       10 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantExecuteLuauArguments"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 JUMPIF                           R2 ; [+1]
        8 LOADB                            R2 0
        9 RETURN                           R2 1

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

PROTO_32:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugGen3dMeshGen"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_33:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantMeshGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_35:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_36:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_39:
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
      192 LOADK                            R2 K30 ["DebugGen3dMeshGen"]
      193 LOADB                            R3 0
      194 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      196 CALL                             R0 3 0
      197 GETIMPORT                        R0 K1 [game]
      199 LOADK                            R2 K31 ["AssistantTextureGenImageGenModelOverride"]
      200 LOADK                            R3 K32 ["gemini"]
      201 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      203 CALL                             R0 3 0
      204 GETIMPORT                        R0 K1 [game]
      206 LOADK                            R2 K34 ["AssistantMeshGenImageGenModelOverride"]
      207 LOADK                            R3 K32 ["gemini"]
      208 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      210 CALL                             R0 3 0
      211 GETIMPORT                        R0 K1 [game]
      213 LOADK                            R2 K35 ["CubeGenerationGatewayApiKey"]
      214 LOADK                            R3 K36 [""]
      215 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      217 CALL                             R0 3 0
      218 GETIMPORT                        R0 K1 [game]
      220 LOADK                            R2 K37 ["CubeGenerationGatewayBaseUrlOverride"]
      221 LOADK                            R3 K36 [""]
      222 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      224 CALL                             R0 3 0
      225 GETIMPORT                        R0 K1 [game]
      227 LOADK                            R2 K38 ["TextureGenImageGenPromptTemplate"]
      228 LOADK                            R3 K36 [""]
      229 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      231 CALL                             R0 3 0
      232 GETIMPORT                        R0 K1 [game]
      234 LOADK                            R2 K39 ["TextureGenTexturePromptTemplate"]
      235 LOADK                            R3 K36 [""]
      236 NAMECALL                         R0 R0 K33 ["DefineFastString"]
      238 CALL                             R0 3 0
      239 DUPCLOSURE                       R0 K40 [PROTO_1]
      240 LOADK                            R4 K41 ["DebugLogAssistantUI"]
      241 NEWCLOSURE                       R3 P1
      242 CAPTURE                          VAL R4
      243 FASTPCALL                        pcall 1 ; [+2]
      244 GETIMPORT                        R2 K43 [pcall]
      246 CALL                             R2 1 2
      247 JUMPIFNOT                        R2 ; [+2]
      248 MOVE                             R1 R3
      249 JUMPIF                           R1 ; [+1]
      250 LOADB                            R1 0
      251 LOADK                            R5 K44 ["AssistantImageGenAbortPollOn4xx"]
      252 NEWCLOSURE                       R4 P1
      253 CAPTURE                          VAL R5
      254 FASTPCALL                        pcall 1 ; [+2]
      255 GETIMPORT                        R3 K43 [pcall]
      257 CALL                             R3 1 2
      258 JUMPIFNOT                        R3 ; [+2]
      259 MOVE                             R2 R4
      260 JUMPIF                           R2 ; [+1]
      261 LOADB                            R2 0
      262 DUPCLOSURE                       R5 K45 [PROTO_2]
      263 FASTPCALL                        pcall 1 ; [+2]
      264 GETIMPORT                        R4 K43 [pcall]
      266 CALL                             R4 1 2
      267 JUMPIFNOT                        R4 ; [+2]
      268 MOVE                             R3 R5
      269 JUMPIF                           R3 ; [+1]
      270 LOADB                            R3 0
      271 NEWTABLE                         R4 64 0
      273 DUPCLOSURE                       R5 K46 [PROTO_4]
      274 SETTABLEKS                       R5 R4 K47 ["getFFlagEnableTextureGenStudio"]
      276 DUPCLOSURE                       R5 K48 [PROTO_5]
      277 SETTABLEKS                       R5 R4 K49 ["getFFlagTextureGenStudioMultiSelect"]
      279 DUPCLOSURE                       R5 K50 [PROTO_6]
      280 SETTABLEKS                       R5 R4 K51 ["getFFlagTextureGenStudioReplaceInPlace"]
      282 DUPCLOSURE                       R5 K52 [PROTO_7]
      283 SETTABLEKS                       R5 R4 K53 ["getFFlagTextureGenModelSelector"]
      285 DUPCLOSURE                       R5 K54 [PROTO_8]
      286 SETTABLEKS                       R5 R4 K55 ["getFFlagTextureGenReferenceImage"]
      288 DUPCLOSURE                       R5 K56 [PROTO_9]
      289 SETTABLEKS                       R5 R4 K57 ["getFFlagTextureGenAutoSelectView"]
      291 DUPCLOSURE                       R5 K58 [PROTO_10]
      292 SETTABLEKS                       R5 R4 K59 ["getFFlagTextureGenComposerRevamp"]
      294 DUPCLOSURE                       R5 K60 [PROTO_11]
      295 SETTABLEKS                       R5 R4 K61 ["getFFlagTextureGenScrollablePrompt"]
      297 DUPCLOSURE                       R5 K62 [PROTO_12]
      298 SETTABLEKS                       R5 R4 K63 ["getFFlagTextureGenDraggablePopover"]
      300 DUPCLOSURE                       R5 K64 [PROTO_13]
      301 SETTABLEKS                       R5 R4 K65 ["getFFlagGen3dSceneGenSurface"]
      303 DUPCLOSURE                       R5 K66 [PROTO_14]
      304 SETTABLEKS                       R5 R4 K67 ["getFFlagGen3dSceneGenSettings"]
      306 DUPCLOSURE                       R5 K68 [PROTO_15]
      307 SETTABLEKS                       R5 R4 K69 ["getFFlagAssistantGenerateSceneQuality"]
      309 DUPCLOSURE                       R5 K70 [PROTO_16]
      310 SETTABLEKS                       R5 R4 K71 ["getFFlagTextureGenAsyncAssetUpload"]
      312 DUPCLOSURE                       R5 K72 [PROTO_17]
      313 SETTABLEKS                       R5 R4 K73 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      315 DUPCLOSURE                       R5 K74 [PROTO_18]
      316 SETTABLEKS                       R5 R4 K75 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      318 DUPCLOSURE                       R5 K76 [PROTO_19]
      319 SETTABLEKS                       R5 R4 K77 ["getFFlagTextureGenRevertAfterInsert"]
      321 DUPCLOSURE                       R5 K78 [PROTO_20]
      322 SETTABLEKS                       R5 R4 K79 ["getFFlagTextureGenUpgradeToQuality"]
      324 DUPCLOSURE                       R5 K80 [PROTO_21]
      325 SETTABLEKS                       R5 R4 K81 ["getFFlagTextureGenFlatTexturingStatus"]
      327 DUPCLOSURE                       R5 K82 [PROTO_22]
      328 SETTABLEKS                       R5 R4 K83 ["getFFlagTextureGenDebugLog"]
      330 DUPCLOSURE                       R5 K84 [PROTO_23]
      331 SETTABLEKS                       R5 R4 K85 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      333 DUPCLOSURE                       R5 K86 [PROTO_24]
      334 SETTABLEKS                       R5 R4 K87 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
      336 DUPCLOSURE                       R5 K88 [PROTO_25]
      337 SETTABLEKS                       R5 R4 K89 ["getFFlagGen3dSkipFoundationPanelPrewarm"]
      339 DUPCLOSURE                       R5 K90 [PROTO_26]
      340 SETTABLEKS                       R5 R4 K91 ["getFFlagGen3dSurfaceBackendErrorMessage"]
      342 DUPCLOSURE                       R5 K92 [PROTO_27]
      343 SETTABLEKS                       R5 R4 K93 ["getFFlagGen3dToggleActionUpdateAsync"]
      345 DUPCLOSURE                       R5 K94 [PROTO_28]
      346 SETTABLEKS                       R5 R4 K95 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      348 DUPCLOSURE                       R5 K96 [PROTO_29]
      349 CAPTURE                          VAL R1
      350 SETTABLEKS                       R5 R4 K97 ["getFFlagDebugLogAssistantUI"]
      352 DUPCLOSURE                       R5 K98 [PROTO_30]
      353 CAPTURE                          VAL R2
      354 SETTABLEKS                       R5 R4 K99 ["getFFlagAssistantImageGenAbortPollOn4xx"]
      356 DUPCLOSURE                       R5 K100 [PROTO_31]
      357 SETTABLEKS                       R5 R4 K101 ["getFFlagRibbonEnableGenerateButton"]
      359 DUPCLOSURE                       R5 K102 [PROTO_32]
      360 SETTABLEKS                       R5 R4 K103 ["getFFlagGen3dMeshGen"]
      362 DUPCLOSURE                       R5 K104 [PROTO_33]
      363 SETTABLEKS                       R5 R4 K105 ["getFStringAssistantMeshGenImageGenModelOverride"]
      365 DUPCLOSURE                       R5 K106 [PROTO_34]
      366 CAPTURE                          VAL R3
      367 SETTABLEKS                       R5 R4 K107 ["getEngineFeatureAssistantExecuteLuauArguments"]
      369 DUPCLOSURE                       R5 K108 [PROTO_35]
      370 SETTABLEKS                       R5 R4 K109 ["getFStringAssistantTextureGenImageGenModelOverride"]
      372 DUPCLOSURE                       R5 K110 [PROTO_36]
      373 SETTABLEKS                       R5 R4 K111 ["getFStringCubeGenerationGatewayApiKey"]
      375 DUPCLOSURE                       R5 K112 [PROTO_37]
      376 SETTABLEKS                       R5 R4 K113 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      378 DUPCLOSURE                       R5 K114 [PROTO_38]
      379 SETTABLEKS                       R5 R4 K115 ["getFStringTextureGenImageGenPromptTemplate"]
      381 DUPCLOSURE                       R5 K116 [PROTO_39]
      382 SETTABLEKS                       R5 R4 K117 ["getFStringTextureGenTexturePromptTemplate"]
      384 RETURN                           R4 1
