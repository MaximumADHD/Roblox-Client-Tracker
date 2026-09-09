PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableTextureGenStudio"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioMultiSelect"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenStudioReplaceInPlace"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenModelSelector"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenReferenceImage"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
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
       38 LOADK                            R2 K8 ["TextureGenImageGenPromptTemplateEnabled"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["TextureGenTexturePromptTemplateEnabled"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["TextureGenRevertAfterInsert"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["Gen3dSeedImageViewportAlignedCapture"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["AssistantTextureGenImageGenModelOverride"]
       67 LOADK                            R3 K13 ["gemini"]
       68 NAMECALL                         R0 R0 K14 ["DefineFastString"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K15 ["CubeGenerationGatewayApiKey"]
       74 LOADK                            R3 K16 [""]
       75 NAMECALL                         R0 R0 K14 ["DefineFastString"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K17 ["CubeGenerationGatewayBaseUrlOverride"]
       81 LOADK                            R3 K16 [""]
       82 NAMECALL                         R0 R0 K14 ["DefineFastString"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K18 ["TextureGenImageGenPromptTemplate"]
       88 LOADK                            R3 K16 [""]
       89 NAMECALL                         R0 R0 K14 ["DefineFastString"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K19 ["TextureGenTexturePromptTemplate"]
       95 LOADK                            R3 K16 [""]
       96 NAMECALL                         R0 R0 K14 ["DefineFastString"]
       98 CALL                             R0 3 0
       99 DUPTABLE                         R0 K34 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenReferenceImage", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
      100 DUPCLOSURE                       R1 K35 [PROTO_0]
      101 SETTABLEKS                       R1 R0 K20 ["getFFlagEnableTextureGenStudio"]
      103 DUPCLOSURE                       R1 K36 [PROTO_1]
      104 SETTABLEKS                       R1 R0 K21 ["getFFlagTextureGenStudioMultiSelect"]
      106 DUPCLOSURE                       R1 K37 [PROTO_2]
      107 SETTABLEKS                       R1 R0 K22 ["getFFlagTextureGenStudioReplaceInPlace"]
      109 DUPCLOSURE                       R1 K38 [PROTO_3]
      110 SETTABLEKS                       R1 R0 K23 ["getFFlagTextureGenModelSelector"]
      112 DUPCLOSURE                       R1 K39 [PROTO_4]
      113 SETTABLEKS                       R1 R0 K24 ["getFFlagTextureGenReferenceImage"]
      115 DUPCLOSURE                       R1 K40 [PROTO_5]
      116 SETTABLEKS                       R1 R0 K25 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      118 DUPCLOSURE                       R1 K41 [PROTO_6]
      119 SETTABLEKS                       R1 R0 K26 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      121 DUPCLOSURE                       R1 K42 [PROTO_7]
      122 SETTABLEKS                       R1 R0 K27 ["getFFlagTextureGenRevertAfterInsert"]
      124 DUPCLOSURE                       R1 K43 [PROTO_8]
      125 SETTABLEKS                       R1 R0 K28 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      127 DUPCLOSURE                       R1 K44 [PROTO_9]
      128 SETTABLEKS                       R1 R0 K29 ["getFStringAssistantTextureGenImageGenModelOverride"]
      130 DUPCLOSURE                       R1 K45 [PROTO_10]
      131 SETTABLEKS                       R1 R0 K30 ["getFStringCubeGenerationGatewayApiKey"]
      133 DUPCLOSURE                       R1 K46 [PROTO_11]
      134 SETTABLEKS                       R1 R0 K31 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      136 DUPCLOSURE                       R1 K47 [PROTO_12]
      137 SETTABLEKS                       R1 R0 K32 ["getFStringTextureGenImageGenPromptTemplate"]
      139 DUPCLOSURE                       R1 K48 [PROTO_13]
      140 SETTABLEKS                       R1 R0 K33 ["getFStringTextureGenTexturePromptTemplate"]
      142 RETURN                           R0 1
