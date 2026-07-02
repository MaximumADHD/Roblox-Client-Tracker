PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAssetQualityValidation"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssetQualityValidationTimeoutSeconds"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssetQualityValidationMode"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAssetQualityValidation"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["AssetQualityValidationTimeoutSeconds"]
       11 LOADN                            R3 60
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["AssetQualityValidationMode"]
       18 LOADK                            R3 K7 ["shadow"]
       19 NAMECALL                         R0 R0 K8 ["DefineFastString"]
       21 CALL                             R0 3 0
       22 DUPTABLE                         R0 K12 [{"getFFlagEnableAssetQualityValidation", "getFIntAssetQualityValidationTimeoutSeconds", "getFStringAssetQualityValidationMode"}]
       23 DUPCLOSURE                       R1 K13 [PROTO_0]
       24 SETTABLEKS                       R1 R0 K9 ["getFFlagEnableAssetQualityValidation"]
       26 DUPCLOSURE                       R1 K14 [PROTO_1]
       27 SETTABLEKS                       R1 R0 K10 ["getFIntAssetQualityValidationTimeoutSeconds"]
       29 DUPCLOSURE                       R1 K15 [PROTO_2]
       30 SETTABLEKS                       R1 R0 K11 ["getFStringAssetQualityValidationMode"]
       32 RETURN                           R0 1
