PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioAssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["dispatch"]
        6 CALL                             R2 -1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+16]
        9 NEWTABLE                         R2 4 0
       11 LOADK                            R3 K1 ["https://apis.roblox.com/assets/user-auth/v1/assets"]
       12 SETTABLEKS                       R3 R2 K2 ["url"]
       14 JUMPIFNOT                        R0 ; [+2]
       15 LOADN                            R3 200
       16 JUMP                             ; [+1]
       17 LOADN                            R3 255
       18 SETTABLEKS                       R3 R2 K3 ["responseCode"]
       20 SETTABLEKS                       R1 R2 K4 ["responseBody"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 4
       28 MOVE                             R5 R1
       29 LOADK                            R6 K5 ["uploadRequest"]
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K0 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SerializeInstances"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [Enum.AssetCreatorType.User]
        6 GETUPVAL                         R2 1
        7 JUMPIFEQKNIL                     R2 ; [+8]
        9 GETUPVAL                         R2 1
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+4]
       13 GETUPVAL                         R0 1
       14 GETIMPORT                        R1 K6 [Enum.AssetCreatorType.Group]
       16 GETUPVAL                         R2 2
       17 JUMPIFEQKNIL                     R2 ; [+4]
       19 GETUPVAL                         R2 2
       20 JUMPIFNOTEQKS                    R2 K7 [""] ; [+3]
       22 GETUPVAL                         R2 3
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 4
       25 JUMPIFNOT                        R2 ; [+11]
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R2 R3 K8 ["createAssetWithAddParamErrorJson"]
       29 GETUPVAL                         R3 6
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 GETUPVAL                         R6 3
       33 GETUPVAL                         R7 2
       34 GETUPVAL                         R8 7
       35 CALL                             R2 6 -1
       36 RETURN                           R2 -1
       37 GETUPVAL                         R2 7
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R1
       40 MOVE                             R6 R0
       41 LOADK                            R7 K9 ["Model"]
       42 LOADN                            R8 0
       43 GETUPVAL                         R9 3
       44 GETUPVAL                         R10 2
       45 LOADK                            R11 K7 [""]
       46 LOADK                            R12 K10 ["model/x-rbxm"]
       47 LOADN                            R13 0
       48 NAMECALL                         R2 R2 K11 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       50 CALL                             R2 11 -1
       51 RETURN                           R2 -1

PROTO_4:
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
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 GETIMPORT                        R2 K4 [pcall]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CALL                             R2 1 2
       22 JUMPIFNOT                        R2 ; [+50]
       23 GETIMPORT                        R4 K4 [pcall]
       25 NEWCLOSURE                       R5 P2
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          UPVAL U12
       31 CAPTURE                          UPVAL U13
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U14
       34 CALL                             R4 1 2
       35 JUMPIFNOT                        R4 ; [+22]
       36 GETUPVAL                         R6 6
       37 MOVE                             R8 R5
       38 GETUPVAL                         R10 7
       39 GETTABLEN                        R9 R10 1
       40 LOADB                            R10 1
       41 LOADB                            R11 1
       42 NAMECALL                         R6 R6 K5 ["UpdatePublishedPackage"]
       44 CALL                             R6 5 0
       45 LOADK                            R7 K6 ["Successfully convert to package, assetid: "]
       46 GETTABLEKS                       R8 R5 K7 ["AssetId"]
       48 CONCAT                           R6 R7 R8
       49 MOVE                             R7 R1
       50 LOADB                            R8 1
       51 MOVE                             R9 R6
       52 CALL                             R7 2 0
       53 GETUPVAL                         R7 15
       54 GETTABLEKS                       R8 R5 K7 ["AssetId"]
       56 CALL                             R7 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R6 12
       59 JUMPIFNOT                        R6 ; [+8]
       60 MOVE                             R6 R1
       61 LOADB                            R7 0
       62 GETUPVAL                         R8 16
       63 MOVE                             R9 R5
       64 GETUPVAL                         R10 17
       65 CALL                             R8 2 -1
       66 CALL                             R6 -1 0
       67 RETURN                           R0 0
       68 MOVE                             R6 R1
       69 LOADB                            R7 0
       70 LOADK                            R8 K8 ["Publish failed during convert to package"]
       71 CALL                             R6 2 0
       72 RETURN                           R0 0
       73 MOVE                             R4 R1
       74 LOADB                            R5 0
       75 LOADK                            R6 K9 ["Asset serialization failed during convert to package"]
       76 CALL                             R4 2 0
       77 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R7
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          VAL R6
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          VAL R9
       19 CLOSEUPVALS                      R2
       20 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["reportUploadedAssetId"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R3 R4 K9 ["Actions"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["Src"]
       35 GETTABLEKS                       R6 R7 K6 ["Util"]
       37 GETTABLEKS                       R5 R6 K10 ["computeTranslatedErrorMessage"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R3 K11 ["NetworkError"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R3 K12 ["SetCurrentScreen"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R3 K13 ["UploadResult"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R10 K4 [require]
       57 GETTABLEKS                       R12 R0 K14 ["Packages"]
       59 GETTABLEKS                       R11 R12 K15 ["Framework"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R9 R10 K6 ["Util"]
       64 GETTABLEKS                       R8 R9 K16 ["sendResultToKibana"]
       66 GETIMPORT                        R9 K18 [game]
       68 LOADK                            R11 K19 ["NewPackageAnalyticsWithRefactor2"]
       69 NAMECALL                         R9 R9 K20 ["GetFastFlag"]
       71 CALL                             R9 2 1
       72 GETIMPORT                        R10 K18 [game]
       74 LOADK                            R12 K21 ["PackageTranslateUploadError"]
       75 NAMECALL                         R10 R10 K20 ["GetFastFlag"]
       77 CALL                             R10 2 1
       78 GETIMPORT                        R11 K4 [require]
       80 GETTABLEKS                       R14 R0 K5 ["Src"]
       82 GETTABLEKS                       R13 R14 K6 ["Util"]
       84 GETTABLEKS                       R12 R13 K22 ["PublishServiceHelper"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R13 K18 [game]
       89 LOADK                            R15 K24 ["PublishService"]
       90 NAMECALL                         R13 R13 K25 ["GetService"]
       92 CALL                             R13 2 1
       93 ORK                              R12 R13 K23 []
       94 GETIMPORT                        R13 K27 [pcall]
       96 DUPCLOSURE                       R14 K28 [PROTO_0]
       97 CALL                             R13 1 2
       98 GETIMPORT                        R15 K18 [game]
      100 LOADK                            R17 K29 ["StudioService"]
      101 NAMECALL                         R15 R15 K25 ["GetService"]
      103 CALL                             R15 2 1
      104 DUPCLOSURE                       R16 K30 [PROTO_5]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R4
      118 RETURN                           R16 1
