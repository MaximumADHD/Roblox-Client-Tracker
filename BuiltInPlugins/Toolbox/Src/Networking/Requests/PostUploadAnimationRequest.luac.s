PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["code"]
        2 JUMPIFEQKNIL                     R1 ; [+34]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["shouldDebugWarnings"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETIMPORT                        R1 K3 [warn]
       11 LOADK                            R2 K4 ["Recieved error code from PostUploadAnimation"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R3 2
       15 LOADB                            R4 0
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K5 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R5 R0 K7 ["message"]
       24 ORK                              R4 R5 K6 ["Upload failed with unknown error"]
       25 CALL                             R3 1 -1
       26 NAMECALL                         R1 R1 K5 ["dispatch"]
       28 CALL                             R1 -1 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K8 ["incrementUploadAssetFailure"]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R2 R2 K9 ["assetType"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 1
       38 GETUPVAL                         R3 6
       39 GETTABLEKS                       R4 R0 K10 ["assetId"]
       41 CALL                             R3 1 -1
       42 NAMECALL                         R1 R1 K5 ["dispatch"]
       44 CALL                             R1 -1 0
       45 GETUPVAL                         R1 1
       46 GETUPVAL                         R3 7
       47 GETUPVAL                         R4 8
       48 GETTABLEKS                       R4 R4 K11 ["SCREENS"]
       50 GETTABLEKS                       R4 R4 K12 ["UPLOADING_ASSET"]
       52 CALL                             R3 1 -1
       53 NAMECALL                         R1 R1 K5 ["dispatch"]
       55 CALL                             R1 -1 0
       56 GETUPVAL                         R1 4
       57 GETTABLEKS                       R1 R1 K13 ["incrementUploadAssetSuccess"]
       59 GETUPVAL                         R2 5
       60 GETTABLEKS                       R2 R2 K9 ["assetType"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 1
       64 GETUPVAL                         R3 2
       65 LOADB                            R4 1
       66 CALL                             R3 1 -1
       67 NAMECALL                         R1 R1 K5 ["dispatch"]
       69 CALL                             R1 -1 0
       70 GETUPVAL                         R1 1
       71 NAMECALL                         R1 R1 K14 ["getState"]
       73 CALL                             R1 1 1
       74 GETTABLEKS                       R1 R1 K15 ["deleteLocal"]
       76 GETUPVAL                         R2 9
       77 GETTABLEKS                       R3 R0 K10 ["assetId"]
       79 MOVE                             R4 R1
       80 CALL                             R2 2 0
       81 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: SerializeInstances failed"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 LOADB                            R4 0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R5 R0
       20 GETIMPORT                        R4 K6 [tostring]
       22 CALL                             R4 1 1
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K4 ["dispatch"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K7 ["incrementUploadAssetFailure"]
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R2 R2 K8 ["assetType"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Got false response from PostInsertAsset"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 LOADB                            R4 0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K4 ["dispatch"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K5 ["incrementUploadAssetFailure"]
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K6 ["assetType"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["networkInterface"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["assetId"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["name"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["description"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["userId"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K5 ["groupId"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K6 ["assetTypeEnum"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K7 ["expectedPrice"]
       24 MOVE                             R10 R0
       25 NAMECALL                         R1 R1 K8 ["postUploadAnimation"]
       27 CALL                             R1 9 1
       28 GETUPVAL                         R3 1
       29 GETUPVAL                         R4 2
       30 NAMECALL                         R1 R1 K9 ["andThen"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R5 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U8
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 GETUPVAL                         R5 9
       36 GETUPVAL                         R6 6
       37 GETTABLEKS                       R6 R6 K3 ["instance"]
       39 GETTABLEKS                       R7 R1 K4 ["StudioAssetService"]
       41 CALL                             R5 2 1
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 MOVE                             R8 R3
       47 NAMECALL                         R5 R5 K5 ["andThen"]
       49 CALL                             R5 3 -1
       50 RETURN                           R5 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["AssetConfigConstants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["SerializeInstances"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K10 ["Analytics"]
       34 GETTABLEKS                       R6 R6 K10 ["Analytics"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K11 ["FireAnimationUploadSuccessEvent"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R0 K3 ["Src"]
       44 GETTABLEKS                       R7 R7 K12 ["Actions"]
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R7 K13 ["NetworkError"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R7 K14 ["SetCurrentScreen"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R7 K15 ["UploadResult"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R7 K16 ["SetAssetId"]
       65 CALL                             R11 1 1
       66 DUPCLOSURE                       R12 K17 [PROTO_5]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 RETURN                           R12 1
