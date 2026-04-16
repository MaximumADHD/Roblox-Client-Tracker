PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+37]
        3 GETTABLEKS                       R1 R0 K0 ["code"]
        5 JUMPIFEQKNIL                     R1 ; [+34]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["shouldDebugWarnings"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETIMPORT                        R1 K3 [warn]
       14 LOADK                            R2 K4 ["Recieved error code from PostUploadAnimation"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K5 ["dispatch"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R5 R0 K7 ["message"]
       27 ORK                              R4 R5 K6 ["Upload failed with unknown error"]
       28 CALL                             R3 1 -1
       29 NAMECALL                         R1 R1 K5 ["dispatch"]
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R1 R2 K8 ["incrementUploadAssetFailure"]
       35 GETUPVAL                         R3 6
       36 GETTABLEKS                       R2 R3 K9 ["assetType"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 2
       41 GETUPVAL                         R3 7
       42 GETTABLEKS                       R4 R0 K10 ["assetId"]
       44 CALL                             R3 1 -1
       45 NAMECALL                         R1 R1 K5 ["dispatch"]
       47 CALL                             R1 -1 0
       48 GETUPVAL                         R1 2
       49 GETUPVAL                         R3 8
       50 GETUPVAL                         R6 9
       51 GETTABLEKS                       R5 R6 K11 ["SCREENS"]
       53 GETTABLEKS                       R4 R5 K12 ["UPLOADING_ASSET"]
       55 CALL                             R3 1 -1
       56 NAMECALL                         R1 R1 K5 ["dispatch"]
       58 CALL                             R1 -1 0
       59 GETUPVAL                         R2 5
       60 GETTABLEKS                       R1 R2 K13 ["incrementUploadAssetSuccess"]
       62 GETUPVAL                         R3 6
       63 GETTABLEKS                       R2 R3 K9 ["assetType"]
       65 CALL                             R1 1 0
       66 GETUPVAL                         R1 2
       67 GETUPVAL                         R3 3
       68 LOADB                            R4 1
       69 CALL                             R3 1 -1
       70 NAMECALL                         R1 R1 K5 ["dispatch"]
       72 CALL                             R1 -1 0
       73 GETUPVAL                         R2 2
       74 NAMECALL                         R2 R2 K14 ["getState"]
       76 CALL                             R2 1 1
       77 GETTABLEKS                       R1 R2 K15 ["deleteLocal"]
       79 GETUPVAL                         R2 10
       80 GETTABLEKS                       R3 R0 K10 ["assetId"]
       82 MOVE                             R4 R1
       83 CALL                             R2 2 0
       84 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
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
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R1 R2 K7 ["incrementUploadAssetFailure"]
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R2 R3 K8 ["assetType"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
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
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R1 R2 K5 ["incrementUploadAssetFailure"]
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R2 R3 K6 ["assetType"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["networkInterface"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["assetId"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["name"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["description"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["userId"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K5 ["groupId"]
       18 GETUPVAL                         R9 1
       19 CALL                             R9 0 1
       20 JUMPIFNOT                        R9 ; [+4]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K6 ["assetTypeEnum"]
       24 JUMPIF                           R8 ; [+1]
       25 LOADNIL                          R8
       26 GETUPVAL                         R10 1
       27 CALL                             R10 0 1
       28 JUMPIFNOT                        R10 ; [+4]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K7 ["expectedPrice"]
       32 JUMPIF                           R9 ; [+1]
       33 LOADNIL                          R9
       34 MOVE                             R10 R0
       35 NAMECALL                         R1 R1 K8 ["postUploadAnimation"]
       37 CALL                             R1 9 1
       38 GETUPVAL                         R3 2
       39 GETUPVAL                         R4 3
       40 NAMECALL                         R1 R1 K9 ["andThen"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R6 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U9
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 GETUPVAL                         R5 10
       37 GETUPVAL                         R7 7
       38 GETTABLEKS                       R6 R7 K3 ["instance"]
       40 GETTABLEKS                       R7 R1 K4 ["StudioAssetService"]
       42 CALL                             R5 2 1
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 MOVE                             R8 R3
       49 NAMECALL                         R5 R5 K5 ["andThen"]
       51 CALL                             R5 3 -1
       52 RETURN                           R5 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
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
       32 GETTABLEKS                       R7 R1 K10 ["Analytics"]
       34 GETTABLEKS                       R6 R7 K10 ["Analytics"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K11 ["FireAnimationUploadSuccessEvent"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R8 R0 K3 ["Src"]
       44 GETTABLEKS                       R7 R8 K12 ["Actions"]
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
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R15 R0 K3 ["Src"]
       70 GETTABLEKS                       R14 R15 K17 ["Flags"]
       72 GETTABLEKS                       R13 R14 K18 ["getFFlagEnableUploadingEmote"]
       74 CALL                             R12 1 1
       75 DUPCLOSURE                       R13 K19 [PROTO_5]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 RETURN                           R13 1
