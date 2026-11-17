PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AssetId"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+15]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["hasNonEmptyDependencyIssues"]
       15 GETTABLEKS                       R3 R0 K3 ["NonBlockingDependencyIssues"]
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R2 0
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R5 R0 K3 ["NonBlockingDependencyIssues"]
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K1 ["dispatch"]
       26 CALL                             R2 -1 0
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R4 5
       29 LOADB                            R5 1
       30 CALL                             R4 1 -1
       31 NAMECALL                         R2 R2 K1 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

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
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R4 K5 ["UPLOAD_ASSET_RESULT"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Got false response from PostInsertAsset"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R4 K5 ["UPLOAD_ASSET_RESULT"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R4 R4 K7 ["computeTranslatedErrorMessage"]
       25 MOVE                             R5 R0
       26 GETUPVAL                         R6 6
       27 CALL                             R4 2 -1
       28 CALL                             R3 -1 -1
       29 NAMECALL                         R1 R1 K6 ["dispatch"]
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R1 1
       33 GETUPVAL                         R3 7
       34 LOADB                            R4 0
       35 CALL                             R3 1 -1
       36 NAMECALL                         R1 R1 K6 ["dispatch"]
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K3 [Enum.AssetCreatorType.User]
        4 GETUPVAL                         R2 1
        5 GETIMPORT                        R3 K6 [Enum.AssetType.Model]
        7 GETTABLEKS                       R3 R3 K7 ["Name"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+22]
       11 DUPTABLE                         R2 K18 [{["AssetType"], ["AssetName"] = "", ["Description"] = "", ["AssetId"], ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       12 GETUPVAL                         R3 1
       13 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       15 GETUPVAL                         R3 2
       16 SETTABLEKS                       R3 R2 K11 ["AssetId"]
       18 SETTABLEKS                       R0 R2 K12 ["CreatorId"]
       20 SETTABLEKS                       R1 R2 K13 ["CreatorType"]
       22 DUPTABLE                         R3 K21 [{["PublishAsPackage"] = False}]
       23 SETTABLEKS                       R3 R2 K17 ["AdditionalParameters"]
       25 GETUPVAL                         R3 3
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R2
       28 NAMECALL                         R3 R3 K22 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1
       32 GETUPVAL                         R2 3
       33 GETUPVAL                         R4 4
       34 MOVE                             R5 R1
       35 MOVE                             R6 R0
       36 GETUPVAL                         R7 1
       37 GETUPVAL                         R8 2
       38 LOADK                            R9 K9 [""]
       39 LOADK                            R10 K9 [""]
       40 LOADK                            R11 K9 [""]
       41 LOADK                            R12 K15 ["model/x-rbxm"]
       42 LOADN                            R13 0
       43 NAMECALL                         R2 R2 K23 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       45 CALL                             R2 11 -1
       46 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R2 K5 [pcall]
       15 CALL                             R2 1 2
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 4
       22 MOVE                             R5 R3
       23 CALL                             R4 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R5 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U6
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U6
       33 GETUPVAL                         R5 10
       34 GETUPVAL                         R6 11
       35 GETTABLEKS                       R7 R1 K3 ["StudioAssetService"]
       37 CALL                             R5 2 1
       38 NEWCLOSURE                       R7 P3
       39 CAPTURE                          UPVAL U12
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          UPVAL U14
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 MOVE                             R8 R3
       45 NAMECALL                         R5 R5 K4 ["andThen"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

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
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["AssetConfigConstants"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K9 ["getUserId"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R4 K10 ["Actions"]
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
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R4 K15 ["SetNonBlockingDependencyIssues"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R0 K5 ["Src"]
       69 GETTABLEKS                       R10 R10 K6 ["Util"]
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R12 R10 K16 ["SerializeInstances"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R13 R0 K5 ["Src"]
       80 GETTABLEKS                       R13 R13 K17 ["Types"]
       82 GETTABLEKS                       R13 R13 K18 ["AssetUploadAPIPublishInfo"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R14 R10 K19 ["SharedFlags"]
       89 GETTABLEKS                       R14 R14 K20 ["getFFlagToolboxModelCreationWarningWindow"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R10 K21 ["AssetUploadUtil"]
       96 CALL                             R14 1 1
       97 DUPCLOSURE                       R15 K22 [PROTO_6]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R3
      109 RETURN                           R15 1
