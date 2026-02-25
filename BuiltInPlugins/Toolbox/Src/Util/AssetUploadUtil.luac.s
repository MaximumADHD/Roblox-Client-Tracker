PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+21]
        3 GETIMPORT                        R2 K2 [string.gmatch]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K3 ["([^,]+)"]
        7 CALL                             R2 2 3
        8 FORGPREP                         R2
        9 FASTCALL1                        TONUMBER R5 ; [+3]
       10 MOVE                             R8 R5
       11 GETIMPORT                        R7 K5 [tonumber]
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R5
       19 GETIMPORT                        R7 K8 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 1 ; [-14]
       24 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+7]
        4 GETIMPORT                        R3 K2 [table.concat]
        6 MOVE                             R4 R0
        7 LOADK                            R5 K3 [", "]
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1
       10 LOADK                            R5 K4 ["AssetConfigUpload"]
       11 LOADK                            R6 K5 ["AdditionalDependentAssetIds"]
       12 DUPTABLE                         R7 K7 [{"assetIdsCount"}]
       13 GETUPVAL                         R10 0
       14 SUB                              R9 R2 R10
       15 FASTCALL1                        TOSTRING R9 ; [+2]
       16 GETIMPORT                        R8 K9 [tostring]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K6 ["assetIdsCount"]
       21 NAMECALL                         R3 R1 K10 ["getText"]
       23 CALL                             R3 4 1
       24 NEWTABLE                         R4 0 0
       26 LOADN                            R7 1
       27 GETUPVAL                         R5 0
       28 LOADN                            R6 1
       29 FORNPREP                         R5
       30 GETTABLE                         R10 R0 R7
       31 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       33 MOVE                             R9 R4
       34 GETIMPORT                        R8 K12 [table.insert]
       36 CALL                             R8 2 0
       37 FORNLOOP                         R5
       38 GETIMPORT                        R9 K2 [table.concat]
       40 MOVE                             R10 R4
       41 LOADK                            R11 K3 [", "]
       42 CALL                             R9 2 1
       43 MOVE                             R6 R9
       44 LOADK                            R7 K13 [" "]
       45 MOVE                             R8 R3
       46 CONCAT                           R5 R6 R8
       47 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFEQKS                       R4 K4 ["table"] ; [+7]
       14 LOADK                            R6 K5 ["AssetUploadResult"]
       15 LOADK                            R7 K6 ["SubmissionFailed"]
       16 NAMECALL                         R4 R1 K7 ["getText"]
       18 CALL                             R4 3 -1
       19 RETURN                           R4 -1
       20 GETTABLEKS                       R5 R3 K9 ["reason"]
       22 ORK                              R4 R5 K8 ["Unknown"]
       23 GETTABLEKS                       R5 R3 K10 ["simpleErrorMessage"]
       25 JUMPIF                           R5 ; [+5]
       26 LOADK                            R7 K5 ["AssetUploadResult"]
       27 LOADK                            R8 K6 ["SubmissionFailed"]
       28 NAMECALL                         R5 R1 K7 ["getText"]
       30 CALL                             R5 3 1
       31 GETTABLEKS                       R8 R3 K11 ["metadata"]
       33 FASTCALL1                        TYPE R8 ; [+2]
       34 GETIMPORT                        R7 K13 [type]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+4]
       39 GETTABLEKS                       R6 R3 K11 ["metadata"]
       41 JUMP                             ; [+2]
       42 NEWTABLE                         R6 0 0
       44 GETTABLEKS                       R7 R6 K14 ["DependencyAssetRestricted"]
       46 JUMPIFNOT                        R7 ; [+16]
       47 GETUPVAL                         R8 1
       48 MOVE                             R9 R7
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 2
       51 MOVE                             R10 R8
       52 MOVE                             R11 R1
       53 CALL                             R9 2 1
       54 LOADK                            R12 K15 ["AssetConfigUpload"]
       55 MOVE                             R13 R4
       56 DUPTABLE                         R14 K17 [{"assetIds"}]
       57 SETTABLEKS                       R9 R14 K16 ["assetIds"]
       59 NAMECALL                         R10 R1 K7 ["getText"]
       61 CALL                             R10 4 -1
       62 RETURN                           R10 -1
       63 JUMPIFNOTEQKS                    R4 K18 ["DependenciesLimitExceeded"] ; [+17]
       65 LOADK                            R10 K15 ["AssetConfigUpload"]
       66 MOVE                             R11 R4
       67 DUPTABLE                         R12 K20 [{"countLimit"}]
       68 GETTABLEKS                       R15 R6 K19 ["countLimit"]
       70 ORK                              R14 R15 K21 [""]
       71 FASTCALL1                        TOSTRING R14 ; [+2]
       72 GETIMPORT                        R13 K23 [tostring]
       74 CALL                             R13 1 1
       75 SETTABLEKS                       R13 R12 K19 ["countLimit"]
       77 NAMECALL                         R8 R1 K7 ["getText"]
       79 CALL                             R8 4 -1
       80 RETURN                           R8 -1
       81 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["ModelPublishFailAssetIdCountLimit"]
       12 NAMECALL                         R2 R2 K5 ["GetFastInt"]
       14 CALL                             R2 2 1
       15 DUPCLOSURE                       R3 K6 [PROTO_0]
       16 DUPCLOSURE                       R4 K7 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 DUPCLOSURE                       R5 K8 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 SETTABLEKS                       R5 R1 K9 ["computeTranslatedErrorMessage"]
       24 RETURN                           R1 1
