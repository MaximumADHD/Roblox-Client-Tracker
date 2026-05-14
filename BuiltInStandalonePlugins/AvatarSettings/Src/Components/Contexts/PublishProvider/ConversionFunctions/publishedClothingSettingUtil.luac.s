PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["runFunctionForSettingKeys"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 LOADK                            R8 K1 ["clothing setting"]
        7 MOVE                             R9 R2
        8 MOVE                             R10 R3
        9 CALL                             R4 6 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isEqual"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 LOADK                            R6 K1 ["clothing setting"]
        7 CALL                             R2 4 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSetPublishedSettingNonAssetIdValuesFunction"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADK                            R5 K1 ["clothing setting"]
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getSetPublishedSettingAssetIdValuesFunction"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 LOADK                            R6 K1 ["clothing setting"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["runFunctionForSettingKeys"]
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 LOADK                            R8 K1 ["clothing setting"]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R3
       23 CALL                             R4 6 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSetSettingNonAssetIdValuesFunction"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADK                            R5 K1 ["clothing setting"]
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getSetSettingAssetIdValuesFunction"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 LOADK                            R6 K1 ["clothing setting"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["runFunctionForSettingKeys"]
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 LOADK                            R8 K1 ["clothing setting"]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R3
       23 CALL                             R4 6 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["PublishProvider"]
       26 GETTABLEKS                       R3 R3 K12 ["PublishedSettingsTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Components"]
       35 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K11 ["PublishProvider"]
       39 GETTABLEKS                       R4 R4 K13 ["ConversionFunctions"]
       41 GETTABLEKS                       R4 R4 K14 ["TableKeys"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K9 ["Components"]
       50 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       52 GETTABLEKS                       R5 R5 K11 ["PublishProvider"]
       54 GETTABLEKS                       R5 R5 K13 ["ConversionFunctions"]
       56 GETTABLEKS                       R5 R5 K15 ["conversionUtil"]
       58 CALL                             R4 1 1
       59 NEWTABLE                         R5 4 0
       61 DUPTABLE                         R6 K18 [{"nonAssetIdSettingKeys", "assetIdSettingKeys"}]
       62 GETTABLEKS                       R7 R3 K19 ["clothingSettingKeys"]
       64 SETTABLEKS                       R7 R6 K16 ["nonAssetIdSettingKeys"]
       66 GETTABLEKS                       R7 R3 K20 ["clothingSettingAssetIdKeys"]
       68 SETTABLEKS                       R7 R6 K17 ["assetIdSettingKeys"]
       70 DUPCLOSURE                       R7 K21 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R8 K22 [PROTO_1]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R8 R5 K23 ["isEqual"]
       78 DUPCLOSURE                       R8 K24 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R8 R5 K25 ["setPublishedClothingSetting"]
       83 DUPCLOSURE                       R8 K26 [PROTO_3]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R8 R5 K27 ["setUnpublishedClothingSetting"]
       88 RETURN                           R5 1
