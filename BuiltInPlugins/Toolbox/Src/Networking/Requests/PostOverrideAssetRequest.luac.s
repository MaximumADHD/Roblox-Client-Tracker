PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AssetId"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R4 2
       11 LOADB                            R5 1
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K1 ["dispatch"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

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
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R5 K5 ["UPLOAD_ASSET_RESULT"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 4
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R5 R0
       24 GETIMPORT                        R4 K8 [tostring]
       26 CALL                             R4 1 1
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R1 K6 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 1
       32 GETUPVAL                         R3 5
       33 LOADB                            R4 0
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R1 K6 ["dispatch"]
       37 CALL                             R1 -1 0
       38 RETURN                           R0 0

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
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R5 K5 ["UPLOAD_ASSET_RESULT"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R5 5
       23 CALL                             R5 0 1
       24 JUMPIFNOT                        R5 ; [+7]
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R4 R5 K7 ["computeTranslatedErrorMessage"]
       28 MOVE                             R5 R0
       29 GETUPVAL                         R6 7
       30 CALL                             R4 2 1
       31 JUMP                             ; [+1]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 -1
       34 NAMECALL                         R1 R1 K6 ["dispatch"]
       36 CALL                             R1 -1 0
       37 GETUPVAL                         R1 1
       38 GETUPVAL                         R3 8
       39 LOADB                            R4 0
       40 CALL                             R3 1 -1
       41 NAMECALL                         R1 R1 K6 ["dispatch"]
       43 CALL                             R1 -1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K3 [Enum.AssetCreatorType.User]
        4 GETUPVAL                         R2 1
        5 GETIMPORT                        R4 K6 [Enum.AssetType.Model]
        7 GETTABLEKS                       R3 R4 K7 ["Name"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+47]
       11 DUPTABLE                         R2 K16 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
       12 GETUPVAL                         R3 1
       13 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       15 LOADK                            R3 K17 [""]
       16 SETTABLEKS                       R3 R2 K8 ["AssetName"]
       18 LOADK                            R3 K17 [""]
       19 SETTABLEKS                       R3 R2 K9 ["Description"]
       21 GETUPVAL                         R3 2
       22 SETTABLEKS                       R3 R2 K10 ["AssetId"]
       24 SETTABLEKS                       R0 R2 K11 ["CreatorId"]
       26 SETTABLEKS                       R1 R2 K12 ["CreatorType"]
       28 LOADK                            R3 K18 ["model/x-rbxm"]
       29 SETTABLEKS                       R3 R2 K13 ["ContentType"]
       31 LOADK                            R3 K17 [""]
       32 SETTABLEKS                       R3 R2 K14 ["Token"]
       34 DUPTABLE                         R3 K20 [{"PublishAsPackage"}]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K19 ["PublishAsPackage"]
       38 SETTABLEKS                       R3 R2 K15 ["AdditionalParameters"]
       40 GETUPVAL                         R3 3
       41 CALL                             R3 0 1
       42 JUMPIFNOT                        R3 ; [+7]
       43 GETUPVAL                         R3 4
       44 GETUPVAL                         R5 5
       45 MOVE                             R6 R2
       46 NAMECALL                         R3 R3 K21 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1
       50 GETUPVAL                         R3 4
       51 GETUPVAL                         R5 5
       52 MOVE                             R6 R2
       53 NAMECALL                         R3 R3 K22 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
       57 GETUPVAL                         R2 4
       58 GETUPVAL                         R4 5
       59 MOVE                             R5 R1
       60 MOVE                             R6 R0
       61 GETUPVAL                         R7 1
       62 GETUPVAL                         R8 2
       63 LOADK                            R9 K17 [""]
       64 LOADK                            R10 K17 [""]
       65 LOADK                            R11 K17 [""]
       66 LOADK                            R12 K18 ["model/x-rbxm"]
       67 LOADN                            R13 0
       68 NAMECALL                         R2 R2 K23 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       70 CALL                             R2 11 -1
       71 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K5 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CALL                             R2 1 2
       16 JUMPIFNOT                        R2 ; [+17]
       17 GETTABLEKS                       R4 R3 K6 ["AssetId"]
       19 GETUPVAL                         R5 4
       20 GETUPVAL                         R7 5
       21 MOVE                             R8 R4
       22 CALL                             R7 1 -1
       23 NAMECALL                         R5 R5 K7 ["dispatch"]
       25 CALL                             R5 -1 0
       26 GETUPVAL                         R5 4
       27 GETUPVAL                         R7 6
       28 LOADB                            R8 1
       29 CALL                             R7 1 -1
       30 NAMECALL                         R5 R5 K7 ["dispatch"]
       32 CALL                             R5 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 7
       35 MOVE                             R5 R3
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R6 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U3
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U3
       31 GETUPVAL                         R5 9
       32 GETUPVAL                         R6 10
       33 GETTABLEKS                       R7 R1 K3 ["StudioAssetService"]
       35 CALL                             R5 2 1
       36 NEWCLOSURE                       R7 P3
       37 CAPTURE                          UPVAL U11
       38 CAPTURE                          UPVAL U12
       39 CAPTURE                          UPVAL U13
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R4
       45 MOVE                             R8 R3
       46 NAMECALL                         R5 R5 K4 ["andThen"]
       48 CALL                             R5 3 -1
       49 RETURN                           R5 -1

PROTO_6:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 RETURN                           R5 1

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
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K6 ["Util"]
       35 GETTABLEKS                       R4 R5 K9 ["getUserId"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R5 K10 ["Actions"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R4 K11 ["NetworkError"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R7 R4 K12 ["SetCurrentScreen"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R4 K13 ["UploadResult"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R9 R4 K14 ["SetAssetId"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R10 R0 K5 ["Src"]
       64 GETTABLEKS                       R9 R10 K6 ["Util"]
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R11 R9 K15 ["SerializeInstances"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R14 R0 K5 ["Src"]
       75 GETTABLEKS                       R13 R14 K16 ["Types"]
       77 GETTABLEKS                       R12 R13 K17 ["AssetUploadAPIPublishInfo"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R14 R9 K18 ["SharedFlags"]
       84 GETTABLEKS                       R13 R14 K19 ["getFFlagToolboxTranslateUploadError"]
       86 CALL                             R12 1 1
       87 MOVE                             R14 R12
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+6]
       90 GETIMPORT                        R13 K4 [require]
       92 GETTABLEKS                       R14 R9 K20 ["AssetUploadUtil"]
       94 CALL                             R13 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R13
       97 DUPCLOSURE                       R14 K21 [PROTO_6]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R3
      108 RETURN                           R14 1
