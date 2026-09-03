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
       35 LOADB                            R5 1
       36 GETUPVAL                         R6 6
       37 GETTABLEKS                       R6 R6 K3 ["assetTypeEnum"]
       39 GETIMPORT                        R7 K7 [Enum.AssetType.EmoteAnimation]
       41 JUMPIFEQ                         R6 R7 ; [+10]
       43 NAMECALL                         R6 R0 K8 ["getState"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R6 R6 K9 ["animationPackType"]
       48 JUMPIFEQKS                       R6 K6 ["EmoteAnimation"] ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 JUMPIFNOT                        R5 ; [+59]
       53 GETUPVAL                         R6 9
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+56]
       56 GETUPVAL                         R6 6
       57 GETTABLEKS                       R6 R6 K10 ["publishService"]
       59 JUMPIF                           R6 ; [+6]
       60 GETIMPORT                        R6 K12 [game]
       62 LOADK                            R8 K13 ["PublishService"]
       63 NAMECALL                         R6 R6 K14 ["GetService"]
       65 CALL                             R6 2 1
       66 GETIMPORT                        R7 K16 [pcall]
       68 GETUPVAL                         R8 10
       69 MOVE                             R9 R6
       70 GETUPVAL                         R10 6
       71 GETTABLEKS                       R10 R10 K17 ["instance"]
       73 CALL                             R7 3 2
       74 JUMPIF                           R7 ; [+37]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K18 ["shouldDebugWarnings"]
       78 CALL                             R9 0 1
       79 JUMPIFNOT                        R9 ; [+4]
       80 GETIMPORT                        R9 K20 [warn]
       82 LOADK                            R10 K21 ["Lua toolbox: TagEmoteAnimation failed"]
       83 CALL                             R9 1 0
       84 GETUPVAL                         R11 3
       85 LOADB                            R12 0
       86 CALL                             R11 1 -1
       87 NAMECALL                         R9 R0 K2 ["dispatch"]
       89 CALL                             R9 -1 0
       90 GETUPVAL                         R11 4
       91 FASTCALL1                        TOSTRING R8 ; [+3]
       92 MOVE                             R13 R8
       93 GETIMPORT                        R12 K23 [tostring]
       95 CALL                             R12 1 1
       96 CALL                             R11 1 -1
       97 NAMECALL                         R9 R0 K2 ["dispatch"]
       99 CALL                             R9 -1 0
      100 GETUPVAL                         R9 5
      101 GETTABLEKS                       R9 R9 K24 ["incrementUploadAssetFailure"]
      103 GETUPVAL                         R10 6
      104 GETTABLEKS                       R10 R10 K25 ["assetType"]
      106 CALL                             R9 1 0
      107 GETUPVAL                         R9 11
      108 GETTABLEKS                       R9 R9 K26 ["resolve"]
      110 CALL                             R9 0 -1
      111 RETURN                           R9 -1
      112 GETUPVAL                         R6 12
      113 GETUPVAL                         R7 6
      114 GETTABLEKS                       R7 R7 K17 ["instance"]
      116 GETTABLEKS                       R8 R1 K27 ["StudioAssetService"]
      118 CALL                             R6 2 1
      119 NEWCLOSURE                       R8 P3
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 MOVE                             R9 R3
      124 NAMECALL                         R6 R6 K28 ["andThen"]
      126 CALL                             R6 3 -1
      127 RETURN                           R6 -1

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
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K8 ["Promise"]
       22 GETTABLEKS                       R3 R0 K9 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R3 K10 ["DebugFlags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R3 K11 ["AssetConfigConstants"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R3 K12 ["SerializeInstances"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R3 K13 ["Analytics"]
       45 GETTABLEKS                       R8 R8 K13 ["Analytics"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R3 K14 ["FireAnimationUploadSuccessEvent"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R3 K15 ["tagEmoteAnimationsForUpload"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K9 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Flags"]
       64 GETTABLEKS                       R11 R11 K17 ["getEngineFeatureEngineTagEmoteMaxPartTranslation"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R0 K9 ["Src"]
       69 GETTABLEKS                       R11 R11 K18 ["Actions"]
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R11 K19 ["NetworkError"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R11 K20 ["SetCurrentScreen"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K5 [require]
       83 GETTABLEKS                       R15 R11 K21 ["UploadResult"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R11 K22 ["SetAssetId"]
       90 CALL                             R15 1 1
       91 DUPCLOSURE                       R16 K23 [PROTO_5]
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 RETURN                           R16 1
