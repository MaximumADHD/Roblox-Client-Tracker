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
        7 NEWTABLE                         R2 4 0
        9 LOADK                            R3 K1 ["https://apis.roblox.com/assets/user-auth/v1/assets"]
       10 SETTABLEKS                       R3 R2 K2 ["url"]
       12 JUMPIFNOT                        R0 ; [+2]
       13 LOADN                            R3 200
       14 JUMP                             ; [+1]
       15 LOADN                            R3 -1
       16 SETTABLEKS                       R3 R2 K3 ["responseCode"]
       18 SETTABLEKS                       R1 R2 K4 ["responseBody"]
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETUPVAL                         R3 0
       25 GETUPVAL                         R5 3
       26 MOVE                             R6 R1
       27 LOADK                            R7 K5 ["uploadRequest"]
       28 CALL                             R5 2 -1
       29 NAMECALL                         R3 R3 K0 ["dispatch"]
       31 CALL                             R3 -1 0
       32 RETURN                           R0 0

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
       25 GETTABLEKS                       R2 R2 K8 ["createAssetWithAddParamErrorJson"]
       27 GETUPVAL                         R3 5
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 GETUPVAL                         R6 3
       31 GETUPVAL                         R7 2
       32 GETUPVAL                         R8 6
       33 CALL                             R2 6 -1
       34 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R4 K1 ["UPLOADING_ASSET"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R2 K4 [pcall]
       21 CALL                             R2 1 2
       22 JUMPIFNOT                        R2 ; [+43]
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U12
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R4 K4 [pcall]
       34 CALL                             R4 1 2
       35 JUMPIFNOT                        R4 ; [+22]
       36 GETUPVAL                         R6 5
       37 MOVE                             R8 R5
       38 GETUPVAL                         R10 6
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
       53 GETUPVAL                         R7 13
       54 GETTABLEKS                       R8 R5 K7 ["AssetId"]
       56 CALL                             R7 1 0
       57 RETURN                           R0 0
       58 MOVE                             R6 R1
       59 LOADB                            R7 0
       60 GETUPVAL                         R8 14
       61 MOVE                             R9 R5
       62 GETUPVAL                         R10 15
       63 CALL                             R8 2 -1
       64 CALL                             R6 -1 0
       65 RETURN                           R0 0
       66 MOVE                             R4 R1
       67 LOADB                            R5 0
       68 LOADK                            R6 K8 ["Asset serialization failed during convert to package"]
       69 CALL                             R4 2 0
       70 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R7
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          VAL R6
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          VAL R9
       17 CLOSEUPVALS                      R2
       18 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["reportUploadedAssetId"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R0 K5 ["Src"]
       29 GETTABLEKS                       R3 R3 K9 ["Actions"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R5 K6 ["Util"]
       37 GETTABLEKS                       R5 R5 K10 ["computeTranslatedErrorMessage"]
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
       57 GETTABLEKS                       R9 R0 K14 ["Packages"]
       59 GETTABLEKS                       R9 R9 K15 ["Framework"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R8 R8 K6 ["Util"]
       64 GETTABLEKS                       R8 R8 K16 ["sendResultToKibana"]
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R10 R0 K5 ["Src"]
       70 GETTABLEKS                       R10 R10 K6 ["Util"]
       72 GETTABLEKS                       R10 R10 K17 ["PublishServiceHelper"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R11 K20 [game]
       77 LOADK                            R13 K21 ["PublishService"]
       78 NAMECALL                         R11 R11 K22 ["GetService"]
       80 CALL                             R11 2 1
       81 ORK                              R10 R11 K18 []
       82 DUPCLOSURE                       R12 K23 [PROTO_0]
       83 FASTPCALL                        pcall 1 ; [+2]
       84 GETIMPORT                        R11 K25 [pcall]
       86 CALL                             R11 1 2
       87 GETIMPORT                        R13 K20 [game]
       89 LOADK                            R15 K26 ["StudioService"]
       90 NAMECALL                         R13 R13 K22 ["GetService"]
       92 CALL                             R13 2 1
       93 DUPCLOSURE                       R14 K27 [PROTO_5]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 RETURN                           R14 1
