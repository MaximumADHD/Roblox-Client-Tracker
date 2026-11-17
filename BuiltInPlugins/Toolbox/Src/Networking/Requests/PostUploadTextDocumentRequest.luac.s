PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["AssetId"]
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R1 K1 ["dispatch"]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K0 ["AssetId"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["incrementUploadAssetSuccess"]
       15 GETUPVAL                         R2 4
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETUPVAL                         R3 5
       19 GETUPVAL                         R4 6
       20 GETTABLEKS                       R4 R4 K3 ["SCREENS"]
       22 GETTABLEKS                       R4 R4 K4 ["UPLOADING_ASSET"]
       24 CALL                             R3 1 -1
       25 NAMECALL                         R1 R1 K1 ["dispatch"]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R1 0
       29 GETUPVAL                         R3 7
       30 LOADB                            R4 1
       31 CALL                             R3 1 -1
       32 NAMECALL                         R1 R1 K1 ["dispatch"]
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: TextDocument upload failed"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K4 ["SCREENS"]
       15 GETTABLEKS                       R4 R4 K5 ["UPLOAD_ASSET_RESULT"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R3 4
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K7 ["computeTranslatedErrorMessage"]
       26 FASTCALL1                        TOSTRING R0 ; [+3]
       27 MOVE                             R6 R0
       28 GETIMPORT                        R5 K9 [tostring]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 6
       32 CALL                             R4 2 -1
       33 CALL                             R3 -1 -1
       34 NAMECALL                         R1 R1 K6 ["dispatch"]
       36 CALL                             R1 -1 0
       37 GETUPVAL                         R1 1
       38 GETUPVAL                         R3 7
       39 LOADB                            R4 0
       40 CALL                             R3 1 -1
       41 NAMECALL                         R1 R1 K6 ["dispatch"]
       43 CALL                             R1 -1 0
       44 GETUPVAL                         R1 8
       45 GETTABLEKS                       R1 R1 K10 ["incrementUploadAssetFailure"]
       47 GETUPVAL                         R2 9
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["instance"]
        4 GETTABLEKS                       R2 R2 K1 ["TextContent"]
        6 NAMECALL                         R0 R0 K2 ["ReadTextContentAsync"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 2
       10 MOVE                             R3 R0
       11 DUPTABLE                         R4 K14 [{["AssetType"], ["AssetName"], ["AssetId"], ["ContentType"] = "application/octet-stream", ["CreatorId"], ["CreatorType"], ["Description"], ["Token"] = "", ["AdditionalParameters"]}]
       12 GETUPVAL                         R5 3
       13 SETTABLEKS                       R5 R4 K3 ["AssetType"]
       15 GETUPVAL                         R5 4
       16 SETTABLEKS                       R5 R4 K4 ["AssetName"]
       18 GETUPVAL                         R6 5
       19 ORK                              R5 R6 K15 [0]
       20 SETTABLEKS                       R5 R4 K5 ["AssetId"]
       22 GETUPVAL                         R5 6
       23 SETTABLEKS                       R5 R4 K8 ["CreatorId"]
       25 GETUPVAL                         R5 7
       26 SETTABLEKS                       R5 R4 K9 ["CreatorType"]
       28 GETUPVAL                         R5 8
       29 SETTABLEKS                       R5 R4 K10 ["Description"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K13 ["AdditionalParameters"]
       35 NAMECALL                         R1 R1 K16 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       37 CALL                             R1 3 -1
       38 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R0 K1 [pcall]
       13 CALL                             R0 1 2
       14 JUMPIFNOT                        R0 ; [+15]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K3 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+9]
       22 GETTABLEKS                       R2 R1 K5 ["AssetId"]
       24 JUMPIFEQKNIL                     R2 ; [+5]
       26 GETUPVAL                         R2 9
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 10
       31 JUMPIFNOT                        R0 ; [+2]
       32 LOADK                            R3 K6 ["Upload failed with unknown error"]
       33 JUMP                             ; [+1]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R4 K1 ["UPLOADING_ASSET"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K6 [Enum.AssetType.TextDocument]
       12 GETTABLEKS                       R1 R1 K7 ["Name"]
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 1
       16 GETIMPORT                        R3 K10 [Enum.AssetCreatorType.User]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K11 ["groupId"]
       21 JUMPIFEQKNIL                     R4 ; [+7]
       23 LOADN                            R5 0
       24 JUMPIFNOTLT                      R5 R4 ; [+4]
       26 MOVE                             R2 R4
       27 GETIMPORT                        R3 K13 [Enum.AssetCreatorType.Group]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K14 ["overrideAssetId"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K15 ["name"]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K16 ["description"]
       38 JUMPIFNOT                        R5 ; [+3]
       39 LOADK                            R6 K17 [""]
       40 LOADK                            R7 K17 [""]
       41 JUMP                             ; [+5]
       42 JUMPIFEQKNIL                     R7 ; [+3]
       44 JUMPIFNOTEQKS                    R7 K17 [""] ; [+2]
       46 MOVE                             R7 R6
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U7
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R1
       67 GETUPVAL                         R10 12
       68 GETTABLEKS                       R10 R10 K18 ["new"]
       70 NEWCLOSURE                       R11 P2
       71 CAPTURE                          UPVAL U13
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U14
       74 CAPTURE                          VAL R1
       75 CAPTURE                          REF R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          REF R2
       78 CAPTURE                          REF R3
       79 CAPTURE                          REF R7
       80 CALL                             R10 1 1
       81 MOVE                             R12 R8
       82 MOVE                             R13 R9
       83 NAMECALL                         R10 R10 K19 ["andThen"]
       85 CALL                             R10 3 -1
       86 CLOSEUPVALS                      R2
       87 RETURN                           R10 -1

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 RETURN                           R2 1

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
       27 GETTABLEKS                       R5 R1 K9 ["Analytics"]
       29 GETTABLEKS                       R5 R5 K9 ["Analytics"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K10 ["AssetUploadUtil"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K11 ["getUserId"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K12 ["reportUploadedAssetId"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R1 K13 ["Services"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R0 K3 ["Src"]
       54 GETTABLEKS                       R9 R9 K14 ["Actions"]
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R9 K15 ["NetworkError"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R9 K16 ["SetCurrentScreen"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R9 K17 ["UploadResult"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R9 K18 ["SetAssetId"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R15 R0 K19 ["Packages"]
       80 GETTABLEKS                       R15 R15 K20 ["Framework"]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R14 R14 K4 ["Util"]
       85 GETTABLEKS                       R14 R14 K21 ["Promise"]
       87 GETTABLEKS                       R15 R8 K22 ["GetService"]
       89 LOADK                            R16 K23 ["AssetService"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R16 R8 K22 ["GetService"]
       93 LOADK                            R17 K24 ["PublishService"]
       94 CALL                             R16 1 1
       95 DUPCLOSURE                       R17 K25 [PROTO_6]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R16
      109 RETURN                           R17 1
