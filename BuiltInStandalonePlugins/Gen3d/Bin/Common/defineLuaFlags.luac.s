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
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenTexturePromptTemplateEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenRevertAfterInsert"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
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
       31 LOADK                            R2 K7 ["TextureGenImageGenPromptTemplateEnabled"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["TextureGenTexturePromptTemplateEnabled"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["TextureGenRevertAfterInsert"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["Gen3dSeedImageViewportAlignedCapture"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["AssistantTextureGenImageGenModelOverride"]
       60 LOADK                            R3 K12 ["gemini"]
       61 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K14 ["CubeGenerationGatewayApiKey"]
       67 LOADK                            R3 K15 [""]
       68 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K16 ["CubeGenerationGatewayBaseUrlOverride"]
       74 LOADK                            R3 K15 [""]
       75 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K17 ["TextureGenImageGenPromptTemplate"]
       81 LOADK                            R3 K15 [""]
       82 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K18 ["TextureGenTexturePromptTemplate"]
       88 LOADK                            R3 K15 [""]
       89 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       91 CALL                             R0 3 0
       92 DUPTABLE                         R0 K32 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
       93 DUPCLOSURE                       R1 K33 [PROTO_0]
       94 SETTABLEKS                       R1 R0 K19 ["getFFlagEnableTextureGenStudio"]
       96 DUPCLOSURE                       R1 K34 [PROTO_1]
       97 SETTABLEKS                       R1 R0 K20 ["getFFlagTextureGenStudioMultiSelect"]
       99 DUPCLOSURE                       R1 K35 [PROTO_2]
      100 SETTABLEKS                       R1 R0 K21 ["getFFlagTextureGenStudioReplaceInPlace"]
      102 DUPCLOSURE                       R1 K36 [PROTO_3]
      103 SETTABLEKS                       R1 R0 K22 ["getFFlagTextureGenModelSelector"]
      105 DUPCLOSURE                       R1 K37 [PROTO_4]
      106 SETTABLEKS                       R1 R0 K23 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      108 DUPCLOSURE                       R1 K38 [PROTO_5]
      109 SETTABLEKS                       R1 R0 K24 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      111 DUPCLOSURE                       R1 K39 [PROTO_6]
      112 SETTABLEKS                       R1 R0 K25 ["getFFlagTextureGenRevertAfterInsert"]
      114 DUPCLOSURE                       R1 K40 [PROTO_7]
      115 SETTABLEKS                       R1 R0 K26 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      117 DUPCLOSURE                       R1 K41 [PROTO_8]
      118 SETTABLEKS                       R1 R0 K27 ["getFStringAssistantTextureGenImageGenModelOverride"]
      120 DUPCLOSURE                       R1 K42 [PROTO_9]
      121 SETTABLEKS                       R1 R0 K28 ["getFStringCubeGenerationGatewayApiKey"]
      123 DUPCLOSURE                       R1 K43 [PROTO_10]
      124 SETTABLEKS                       R1 R0 K29 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      126 DUPCLOSURE                       R1 K44 [PROTO_11]
      127 SETTABLEKS                       R1 R0 K30 ["getFStringTextureGenImageGenPromptTemplate"]
      129 DUPCLOSURE                       R1 K45 [PROTO_12]
      130 SETTABLEKS                       R1 R0 K31 ["getFStringTextureGenTexturePromptTemplate"]
      132 RETURN                           R0 1
