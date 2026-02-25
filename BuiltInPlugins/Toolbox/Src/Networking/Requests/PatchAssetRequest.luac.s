PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Got false response from PostInsertAsset"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K4 ["dispatch"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R5 K1 ["UPLOADING_ASSET"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K3 ["networkInterface"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R5 R6 K4 ["assetId"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R6 R7 K5 ["name"]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R7 R8 K6 ["description"]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K7 ["commentOn"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K8 ["copyOn"]
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R10 R11 K9 ["locale"]
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R11 R12 K10 ["localName"]
       43 GETUPVAL                         R13 3
       44 GETTABLEKS                       R12 R13 K11 ["localDescription"]
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R13 R14 K12 ["isConvertMarketplaceModelsToPackageEnabled"]
       49 NAMECALL                         R3 R3 K13 ["patchAsset"]
       51 CALL                             R3 10 1
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 NAMECALL                         R3 R3 K14 ["andThen"]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["AssetConfigConstants"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R4 K9 ["Actions"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K10 ["NetworkError"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R3 K11 ["SetCurrentScreen"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R3 K12 ["UploadResult"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R11 R0 K5 ["Src"]
       52 GETTABLEKS                       R10 R11 K13 ["Networking"]
       54 GETTABLEKS                       R9 R10 K14 ["Requests"]
       56 GETTABLEKS                       R8 R9 K15 ["TrySaveSalesThumbnailAssetMediaRequest"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K16 [PROTO_3]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 RETURN                           R8 1
