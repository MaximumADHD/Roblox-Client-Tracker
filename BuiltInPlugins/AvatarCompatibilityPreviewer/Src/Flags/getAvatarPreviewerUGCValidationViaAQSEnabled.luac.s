PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+11]
        6 LOADB                            R0 0
        7 GETUPVAL                         R1 2
        8 JUMPIFEQKNIL                     R1 ; [+8]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["getAssetQualityService"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+2]
       15 LOADB                            R0 0 +1
       16 LOADB                            R0 1
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["UGCValidation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarPreviewerUGCValidationViaAQS"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getEngineFeatureAssetQualityValidationRaw"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K12 ["AssetQualityValidationClient"]
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 RETURN                           R5 1
