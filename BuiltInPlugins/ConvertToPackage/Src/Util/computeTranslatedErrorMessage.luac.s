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
       38 GETIMPORT                        R6 K2 [table.concat]
       40 MOVE                             R7 R4
       41 LOADK                            R8 K3 [", "]
       42 CALL                             R6 2 1
       43 LOADK                            R7 K13 [" "]
       44 MOVE                             R8 R3
       45 CONCAT                           R5 R6 R8
       46 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+7]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K3 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K4 ["table"] ; [+7]
       15 LOADK                            R6 K5 ["AssetUploadResult"]
       16 LOADK                            R7 K6 ["SubmissionFailed"]
       17 NAMECALL                         R4 R1 K7 ["getText"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1
       21 GETTABLEKS                       R5 R3 K9 ["reason"]
       23 ORK                              R4 R5 K8 ["Unknown"]
       24 GETTABLEKS                       R5 R3 K10 ["simpleErrorMessage"]
       26 JUMPIF                           R5 ; [+5]
       27 LOADK                            R7 K5 ["AssetUploadResult"]
       28 LOADK                            R8 K6 ["SubmissionFailed"]
       29 NAMECALL                         R5 R1 K7 ["getText"]
       31 CALL                             R5 3 1
       32 GETTABLEKS                       R8 R3 K11 ["metadata"]
       34 FASTCALL1                        TYPE R8 ; [+2]
       35 GETIMPORT                        R7 K13 [type]
       37 CALL                             R7 1 1
       38 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+4]
       40 GETTABLEKS                       R6 R3 K11 ["metadata"]
       42 JUMP                             ; [+2]
       43 NEWTABLE                         R6 0 0
       45 GETTABLEKS                       R7 R6 K14 ["DependencyAssetRestricted"]
       47 JUMPIFNOT                        R7 ; [+16]
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 2
       52 MOVE                             R10 R8
       53 MOVE                             R11 R1
       54 CALL                             R9 2 1
       55 LOADK                            R12 K15 ["AssetConfigUpload"]
       56 MOVE                             R13 R4
       57 DUPTABLE                         R14 K17 [{"assetIds"}]
       58 SETTABLEKS                       R9 R14 K16 ["assetIds"]
       60 NAMECALL                         R10 R1 K7 ["getText"]
       62 CALL                             R10 4 -1
       63 RETURN                           R10 -1
       64 JUMPIFNOTEQKS                    R4 K18 ["DependenciesLimitExceeded"] ; [+17]
       66 LOADK                            R10 K15 ["AssetConfigUpload"]
       67 MOVE                             R11 R4
       68 DUPTABLE                         R12 K20 [{"countLimit"}]
       69 GETTABLEKS                       R15 R6 K19 ["countLimit"]
       71 ORK                              R14 R15 K21 [""]
       72 FASTCALL1                        TOSTRING R14 ; [+2]
       73 GETIMPORT                        R13 K23 [tostring]
       75 CALL                             R13 1 1
       76 SETTABLEKS                       R13 R12 K19 ["countLimit"]
       78 NAMECALL                         R8 R1 K7 ["getText"]
       80 CALL                             R8 4 -1
       81 RETURN                           R8 -1
       82 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ModelPublishFailAssetIdCountLimit"]
       10 NAMECALL                         R1 R1 K5 ["GetFastInt"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K6 [PROTO_0]
       14 DUPCLOSURE                       R3 K7 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R4 K8 [PROTO_3]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 SETGLOBAL                        R4 K9 ["computeTranslatedErrorMessage"]
       22 GETGLOBAL                        R4 K9 ["computeTranslatedErrorMessage"]
       24 RETURN                           R4 1
