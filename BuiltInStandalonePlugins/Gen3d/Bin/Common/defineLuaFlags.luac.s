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
        2 LOADK                            R2 K2 ["TextureGenDebugLog"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Gen3dSeedImageViewportAlignedCapture"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantTextureGenImageGenModelOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayApiKey"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CubeGenerationGatewayBaseUrlOverride"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenImageGenPromptTemplate"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
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
       59 LOADK                            R2 K11 ["TextureGenDebugLog"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["Gen3dSeedImageViewportAlignedCapture"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K13 ["AssistantTextureGenImageGenModelOverride"]
       74 LOADK                            R3 K14 ["gemini"]
       75 NAMECALL                         R0 R0 K15 ["DefineFastString"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K16 ["CubeGenerationGatewayApiKey"]
       81 LOADK                            R3 K17 [""]
       82 NAMECALL                         R0 R0 K15 ["DefineFastString"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K18 ["CubeGenerationGatewayBaseUrlOverride"]
       88 LOADK                            R3 K17 [""]
       89 NAMECALL                         R0 R0 K15 ["DefineFastString"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K19 ["TextureGenImageGenPromptTemplate"]
       95 LOADK                            R3 K17 [""]
       96 NAMECALL                         R0 R0 K15 ["DefineFastString"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K20 ["TextureGenTexturePromptTemplate"]
      102 LOADK                            R3 K17 [""]
      103 NAMECALL                         R0 R0 K15 ["DefineFastString"]
      105 CALL                             R0 3 0
      106 DUPTABLE                         R0 K36 [{"getFFlagEnableTextureGenStudio", "getFFlagTextureGenStudioMultiSelect", "getFFlagTextureGenStudioReplaceInPlace", "getFFlagTextureGenModelSelector", "getFFlagTextureGenReferenceImage", "getFFlagTextureGenImageGenPromptTemplateEnabled", "getFFlagTextureGenTexturePromptTemplateEnabled", "getFFlagTextureGenRevertAfterInsert", "getFFlagTextureGenDebugLog", "getFFlagGen3dSeedImageViewportAlignedCapture", "getFStringAssistantTextureGenImageGenModelOverride", "getFStringCubeGenerationGatewayApiKey", "getFStringCubeGenerationGatewayBaseUrlOverride", "getFStringTextureGenImageGenPromptTemplate", "getFStringTextureGenTexturePromptTemplate"}]
      107 DUPCLOSURE                       R1 K37 [PROTO_0]
      108 SETTABLEKS                       R1 R0 K21 ["getFFlagEnableTextureGenStudio"]
      110 DUPCLOSURE                       R1 K38 [PROTO_1]
      111 SETTABLEKS                       R1 R0 K22 ["getFFlagTextureGenStudioMultiSelect"]
      113 DUPCLOSURE                       R1 K39 [PROTO_2]
      114 SETTABLEKS                       R1 R0 K23 ["getFFlagTextureGenStudioReplaceInPlace"]
      116 DUPCLOSURE                       R1 K40 [PROTO_3]
      117 SETTABLEKS                       R1 R0 K24 ["getFFlagTextureGenModelSelector"]
      119 DUPCLOSURE                       R1 K41 [PROTO_4]
      120 SETTABLEKS                       R1 R0 K25 ["getFFlagTextureGenReferenceImage"]
      122 DUPCLOSURE                       R1 K42 [PROTO_5]
      123 SETTABLEKS                       R1 R0 K26 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      125 DUPCLOSURE                       R1 K43 [PROTO_6]
      126 SETTABLEKS                       R1 R0 K27 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      128 DUPCLOSURE                       R1 K44 [PROTO_7]
      129 SETTABLEKS                       R1 R0 K28 ["getFFlagTextureGenRevertAfterInsert"]
      131 DUPCLOSURE                       R1 K45 [PROTO_8]
      132 SETTABLEKS                       R1 R0 K29 ["getFFlagTextureGenDebugLog"]
      134 DUPCLOSURE                       R1 K46 [PROTO_9]
      135 SETTABLEKS                       R1 R0 K30 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
      137 DUPCLOSURE                       R1 K47 [PROTO_10]
      138 SETTABLEKS                       R1 R0 K31 ["getFStringAssistantTextureGenImageGenModelOverride"]
      140 DUPCLOSURE                       R1 K48 [PROTO_11]
      141 SETTABLEKS                       R1 R0 K32 ["getFStringCubeGenerationGatewayApiKey"]
      143 DUPCLOSURE                       R1 K49 [PROTO_12]
      144 SETTABLEKS                       R1 R0 K33 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
      146 DUPCLOSURE                       R1 K50 [PROTO_13]
      147 SETTABLEKS                       R1 R0 K34 ["getFStringTextureGenImageGenPromptTemplate"]
      149 DUPCLOSURE                       R1 K51 [PROTO_14]
      150 SETTABLEKS                       R1 R0 K35 ["getFStringTextureGenTexturePromptTemplate"]
      152 RETURN                           R0 1
