PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["MigratePackagesOffOfWWWPart2"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [game]
        2 LOADK                            R3 K3 ["PackageUIService"]
        3 NAMECALL                         R1 R1 K4 ["GetService"]
        5 CALL                             R1 2 1
        6 ORK                              R0 R1 K0 []
        7 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioAssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["dispatch"]
        6 CALL                             R2 -1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+16]
        9 NEWTABLE                         R2 4 0
       11 GETUPVAL                         R3 3
       12 SETTABLEKS                       R3 R2 K1 ["url"]
       14 JUMPIFNOT                        R0 ; [+2]
       15 LOADN                            R3 200
       16 JUMP                             ; [+1]
       17 LOADN                            R3 255
       18 SETTABLEKS                       R3 R2 K2 ["responseCode"]
       20 SETTABLEKS                       R1 R2 K3 ["responseBody"]
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 5
       28 MOVE                             R5 R1
       29 LOADK                            R6 K4 ["uploadRequest"]
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K0 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SerializeInstances"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Disconnect"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R5 K1 ["UPLOADING_ASSET"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R2 2
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R1 K3 ["https://apis.roblox.com/assets/user-auth/v1/assets"]
       13 JUMP                             ; [+14]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K4 ["constructPostUploadAssetUrl"]
       17 GETUPVAL                         R2 4
       18 LOADK                            R3 K5 ["Model"]
       19 GETUPVAL                         R5 5
       20 ORK                              R4 R5 K6 [""]
       21 GETUPVAL                         R6 6
       22 ORK                              R5 R6 K6 [""]
       23 GETUPVAL                         R6 7
       24 GETUPVAL                         R7 8
       25 GETUPVAL                         R8 9
       26 GETUPVAL                         R9 10
       27 CALL                             R1 8 1
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U13
       34 CAPTURE                          UPVAL U14
       35 GETUPVAL                         R3 2
       36 JUMPIFNOT                        R3 ; [+62]
       37 GETIMPORT                        R3 K8 [pcall]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          UPVAL U15
       41 CAPTURE                          UPVAL U16
       42 CALL                             R3 1 2
       43 JUMPIFNOT                        R3 ; [+50]
       44 GETIMPORT                        R5 K8 [pcall]
       46 NEWCLOSURE                       R6 P2
       47 CAPTURE                          UPVAL U17
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U18
       52 CAPTURE                          UPVAL U19
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U20
       55 CALL                             R5 1 2
       56 JUMPIFNOT                        R5 ; [+22]
       57 GETUPVAL                         R7 15
       58 MOVE                             R9 R6
       59 GETUPVAL                         R11 16
       60 GETTABLEN                        R10 R11 1
       61 LOADB                            R11 1
       62 LOADB                            R12 1
       63 NAMECALL                         R7 R7 K9 ["UpdatePublishedPackage"]
       65 CALL                             R7 5 0
       66 LOADK                            R8 K10 ["Successfully convert to package, assetid: "]
       67 GETTABLEKS                       R9 R6 K11 ["AssetId"]
       69 CONCAT                           R7 R8 R9
       70 MOVE                             R8 R2
       71 LOADB                            R9 1
       72 MOVE                             R10 R7
       73 CALL                             R8 2 0
       74 GETUPVAL                         R8 21
       75 GETTABLEKS                       R9 R6 K11 ["AssetId"]
       77 CALL                             R8 1 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R7 18
       80 JUMPIFNOT                        R7 ; [+8]
       81 MOVE                             R7 R2
       82 LOADB                            R8 0
       83 GETUPVAL                         R9 22
       84 MOVE                             R10 R6
       85 GETUPVAL                         R11 23
       86 CALL                             R9 2 -1
       87 CALL                             R7 -1 0
       88 RETURN                           R0 0
       89 MOVE                             R7 R2
       90 LOADB                            R8 0
       91 LOADK                            R9 K12 ["Publish failed during convert to package"]
       92 CALL                             R7 2 0
       93 RETURN                           R0 0
       94 MOVE                             R5 R2
       95 LOADB                            R6 0
       96 LOADK                            R7 K13 ["Asset serialization failed during convert to package"]
       97 CALL                             R5 2 0
       98 RETURN                           R0 0
       99 LOADNIL                          R3
      100 GETUPVAL                         R5 24
      101 GETTABLEKS                       R4 R5 K14 ["OnConvertToPackageResult"]
      103 NEWCLOSURE                       R6 P3
      104 CAPTURE                          REF R3
      105 CAPTURE                          VAL R2
      106 NAMECALL                         R4 R4 K15 ["Connect"]
      108 CALL                             R4 2 1
      109 MOVE                             R3 R4
      110 GETUPVAL                         R4 24
      111 MOVE                             R6 R1
      112 GETUPVAL                         R7 16
      113 GETUPVAL                         R8 25
      114 NAMECALL                         R4 R4 K16 ["ConvertToPackageUpload"]
      116 CALL                             R4 4 0
      117 CLOSEUPVALS                      R3
      118 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R6
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          VAL R7
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U12
       22 CAPTURE                          UPVAL U13
       23 CAPTURE                          UPVAL U14
       24 CAPTURE                          VAL R9
       25 CAPTURE                          UPVAL U15
       26 CAPTURE                          VAL R8
       27 CLOSEUPVALS                      R2
       28 RETURN                           R10 1

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
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R11 R0 K5 ["Src"]
       59 GETTABLEKS                       R10 R11 K6 ["Util"]
       61 GETTABLEKS                       R9 R10 K14 ["Urls"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R13 R0 K15 ["Packages"]
       68 GETTABLEKS                       R12 R13 K16 ["Framework"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R10 R11 K6 ["Util"]
       73 GETTABLEKS                       R9 R10 K17 ["sendResultToKibana"]
       75 GETIMPORT                        R10 K19 [game]
       77 LOADK                            R12 K20 ["NewPackageAnalyticsWithRefactor2"]
       78 NAMECALL                         R10 R10 K21 ["GetFastFlag"]
       80 CALL                             R10 2 1
       81 GETIMPORT                        R11 K23 [pcall]
       83 DUPCLOSURE                       R12 K24 [PROTO_0]
       84 CALL                             R11 1 2
       85 GETIMPORT                        R13 K19 [game]
       87 LOADK                            R15 K25 ["PackageTranslateUploadError"]
       88 NAMECALL                         R13 R13 K21 ["GetFastFlag"]
       90 CALL                             R13 2 1
       91 GETIMPORT                        R14 K4 [require]
       93 GETTABLEKS                       R17 R0 K5 ["Src"]
       95 GETTABLEKS                       R16 R17 K6 ["Util"]
       97 GETTABLEKS                       R15 R16 K26 ["PublishServiceHelper"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R16 K19 [game]
      102 LOADK                            R18 K28 ["PublishService"]
      103 NAMECALL                         R16 R16 K29 ["GetService"]
      105 CALL                             R16 2 1
      106 ORK                              R15 R16 K27 []
      107 GETIMPORT                        R16 K23 [pcall]
      109 DUPCLOSURE                       R17 K30 [PROTO_1]
      110 CALL                             R16 1 2
      111 GETIMPORT                        R18 K23 [pcall]
      113 DUPCLOSURE                       R19 K31 [PROTO_2]
      114 CALL                             R18 1 2
      115 GETIMPORT                        R20 K19 [game]
      117 LOADK                            R22 K32 ["StudioService"]
      118 NAMECALL                         R20 R20 K29 ["GetService"]
      120 CALL                             R20 2 1
      121 DUPCLOSURE                       R21 K33 [PROTO_8]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R17
      138 RETURN                           R21 1
