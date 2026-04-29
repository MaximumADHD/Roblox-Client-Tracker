PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["parse"]
        7 MOVE                             R4 R0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["TEXTURE_CONTENT_ID_FIELDS"]
       11 MOVE                             R6 R1
       12 CALL                             R3 3 1
       13 NEWTABLE                         R4 0 0
       15 MOVE                             R5 R3
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 DUPTABLE                         R10 K6 [{"fullName", "fieldName", "contentId"}]
       20 GETTABLEKS                       R11 R9 K7 ["instance"]
       22 NAMECALL                         R11 R11 K8 ["GetFullName"]
       24 CALL                             R11 1 1
       25 SETTABLEKS                       R11 R10 K3 ["fullName"]
       27 GETTABLEKS                       R11 R9 K4 ["fieldName"]
       29 SETTABLEKS                       R11 R10 K4 ["fieldName"]
       31 GETTABLEKS                       R12 R9 K7 ["instance"]
       33 GETTABLEKS                       R13 R9 K4 ["fieldName"]
       35 GETTABLE                         R11 R12 R13
       36 SETTABLEKS                       R11 R10 K5 ["contentId"]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R12 R9 K7 ["instance"]
       41 GETTABLEKS                       R13 R9 K4 ["fieldName"]
       43 MOVE                             R14 R1
       44 CALL                             R11 3 2
       45 JUMPIF                           R11 ; [+7]
       46 LOADB                            R13 0
       47 NEWTABLE                         R14 0 1
       49 LOADK                            R15 K9 ["Failed to load texture data"]
       50 SETLIST                          R14 R15 1 [1]
       52 RETURN                           R13 2
       53 SETTABLEKS                       R12 R10 K10 ["editableImage"]
       55 GETTABLEKS                       R14 R9 K11 ["id"]
       57 GETTABLE                         R13 R4 R14
       58 JUMPIF                           R13 ; [+31]
       59 LOADNIL                          R13
       60 GETUPVAL                         R14 4
       61 CALL                             R14 0 1
       62 JUMPIFNOT                        R14 ; [+11]
       63 GETUPVAL                         R15 5
       64 GETTABLEKS                       R14 R15 K12 ["getTextureLimit"]
       66 GETTABLEKS                       R15 R1 K13 ["assetTypeEnum"]
       68 GETTABLEKS                       R16 R9 K7 ["instance"]
       70 GETTABLEKS                       R17 R9 K4 ["fieldName"]
       72 CALL                             R14 3 1
       73 MOVE                             R13 R14
       74 GETUPVAL                         R16 6
       75 MOVE                             R17 R10
       76 LOADNIL                          R18
       77 MOVE                             R19 R1
       78 MOVE                             R20 R13
       79 CALL                             R16 4 -1
       80 NAMECALL                         R14 R2 K14 ["updateReasons"]
       82 CALL                             R14 -1 0
       83 GETTABLEKS                       R14 R9 K11 ["id"]
       85 JUMPIFNOT                        R14 ; [+4]
       86 GETTABLEKS                       R14 R9 K11 ["id"]
       88 LOADB                            R15 1
       89 SETTABLE                         R15 R4 R14
       90 FORGLOOP                         R5 2 ; [-72]
       92 NAMECALL                         R5 R2 K15 ["getFinalResults"]
       94 CALL                             R5 1 -1
       95 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K9 ["validation"]
       28 GETTABLEKS                       R5 R6 K10 ["validateTextureSize"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["util"]
       35 GETTABLEKS                       R6 R7 K11 ["FailureReasonsAccumulator"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["util"]
       42 GETTABLEKS                       R7 R8 K12 ["ParseContentIds"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K5 ["util"]
       49 GETTABLEKS                       R8 R9 K13 ["getEditableImageFromContext"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R0 K14 ["flags"]
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R8 K15 ["getFFlagUGCValidateBodyAssetTextureLimits"]
       58 CALL                             R9 1 1
       59 DUPCLOSURE                       R10 K16 [PROTO_0]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 RETURN                           R10 1
