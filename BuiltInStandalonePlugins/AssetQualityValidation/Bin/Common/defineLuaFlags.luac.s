PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAssetQualityValidation"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAssetQualityValidationIcon"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssetQualityValidationTimeoutSeconds"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
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
       10 LOADK                            R2 K4 ["EnableAssetQualityValidationIcon"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["AssetQualityValidationTimeoutSeconds"]
       18 LOADN                            R3 60
       19 NAMECALL                         R0 R0 K6 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["AssetQualityValidationMode"]
       25 LOADK                            R3 K8 ["shadow"]
       26 NAMECALL                         R0 R0 K9 ["DefineFastString"]
       28 CALL                             R0 3 0
       29 DUPTABLE                         R0 K14 [{"getFFlagEnableAssetQualityValidation", "getFFlagEnableAssetQualityValidationIcon", "getFIntAssetQualityValidationTimeoutSeconds", "getFStringAssetQualityValidationMode"}]
       30 DUPCLOSURE                       R1 K15 [PROTO_0]
       31 SETTABLEKS                       R1 R0 K10 ["getFFlagEnableAssetQualityValidation"]
       33 DUPCLOSURE                       R1 K16 [PROTO_1]
       34 SETTABLEKS                       R1 R0 K11 ["getFFlagEnableAssetQualityValidationIcon"]
       36 DUPCLOSURE                       R1 K17 [PROTO_2]
       37 SETTABLEKS                       R1 R0 K12 ["getFIntAssetQualityValidationTimeoutSeconds"]
       39 DUPCLOSURE                       R1 K18 [PROTO_3]
       40 SETTABLEKS                       R1 R0 K13 ["getFStringAssetQualityValidationMode"]
       42 RETURN                           R0 1
