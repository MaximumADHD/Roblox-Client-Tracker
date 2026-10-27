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
       77 CALL                             R2 0 1
       78 JUMPIFNOT                        R2 ; [+17]
       79 GETUPVAL                         R2 10
       80 GETTABLEKS                       R2 R2 K16 ["notifyAnimationPublished"]
       82 DUPTABLE                         R3 K20 [{["assetId"], ["isOverride"] = False, ["deleteLocal"], ["animationClips"]}]
       83 GETTABLEKS                       R4 R0 K10 ["assetId"]
       85 SETTABLEKS                       R4 R3 K10 ["assetId"]
       87 SETTABLEKS                       R1 R3 K15 ["deleteLocal"]
       89 GETUPVAL                         R4 5
       90 GETTABLEKS                       R4 R4 K21 ["instance"]
       92 SETTABLEKS                       R4 R3 K19 ["animationClips"]
       94 CALL                             R2 1 0
       95 RETURN                           R0 0
       96 GETUPVAL                         R2 11
       97 GETTABLEKS                       R3 R0 K10 ["assetId"]
       99 MOVE                             R4 R1
      100 CALL                             R2 2 0
      101 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 LOADB                            R5 1
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R6 R6 K3 ["assetTypeEnum"]
       41 GETIMPORT                        R7 K7 [Enum.AssetType.EmoteAnimation]
       43 JUMPIFEQ                         R6 R7 ; [+10]
       45 NAMECALL                         R6 R0 K8 ["getState"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R6 R6 K9 ["animationPackType"]
       50 JUMPIFEQKS                       R6 K6 ["EmoteAnimation"] ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 JUMPIFNOT                        R5 ; [+59]
       55 GETUPVAL                         R6 11
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+56]
       58 GETUPVAL                         R6 6
       59 GETTABLEKS                       R6 R6 K10 ["publishService"]
       61 JUMPIF                           R6 ; [+6]
       62 GETIMPORT                        R6 K12 [game]
       64 LOADK                            R8 K13 ["PublishService"]
       65 NAMECALL                         R6 R6 K14 ["GetService"]
       67 CALL                             R6 2 1
       68 GETIMPORT                        R7 K16 [pcall]
       70 GETUPVAL                         R8 12
       71 MOVE                             R9 R6
       72 GETUPVAL                         R10 6
       73 GETTABLEKS                       R10 R10 K17 ["instance"]
       75 CALL                             R7 3 2
       76 JUMPIF                           R7 ; [+37]
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R9 R9 K18 ["shouldDebugWarnings"]
       80 CALL                             R9 0 1
       81 JUMPIFNOT                        R9 ; [+4]
       82 GETIMPORT                        R9 K20 [warn]
       84 LOADK                            R10 K21 ["Lua toolbox: TagEmoteAnimation failed"]
       85 CALL                             R9 1 0
       86 GETUPVAL                         R11 3
       87 LOADB                            R12 0
       88 CALL                             R11 1 -1
       89 NAMECALL                         R9 R0 K2 ["dispatch"]
       91 CALL                             R9 -1 0
       92 GETUPVAL                         R11 4
       93 FASTCALL1                        TOSTRING R8 ; [+3]
       94 MOVE                             R13 R8
       95 GETIMPORT                        R12 K23 [tostring]
       97 CALL                             R12 1 1
       98 CALL                             R11 1 -1
       99 NAMECALL                         R9 R0 K2 ["dispatch"]
      101 CALL                             R9 -1 0
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K24 ["incrementUploadAssetFailure"]
      105 GETUPVAL                         R10 6
      106 GETTABLEKS                       R10 R10 K25 ["assetType"]
      108 CALL                             R9 1 0
      109 GETUPVAL                         R9 13
      110 GETTABLEKS                       R9 R9 K26 ["resolve"]
      112 CALL                             R9 0 -1
      113 RETURN                           R9 -1
      114 GETUPVAL                         R6 14
      115 GETUPVAL                         R7 6
      116 GETTABLEKS                       R7 R7 K17 ["instance"]
      118 GETTABLEKS                       R8 R1 K27 ["StudioAssetService"]
      120 CALL                             R6 2 1
      121 NEWCLOSURE                       R8 P3
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R4
      125 MOVE                             R9 R3
      126 NAMECALL                         R6 R6 K28 ["andThen"]
      128 CALL                             R6 3 -1
      129 RETURN                           R6 -1

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
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["AnimationPublishingLibrary"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K8 ["Util"]
       25 GETTABLEKS                       R3 R3 K9 ["Promise"]
       27 GETTABLEKS                       R4 R0 K10 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Util"]
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R4 K11 ["DebugFlags"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R4 K12 ["AssetConfigConstants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R4 K13 ["SerializeInstances"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R4 K14 ["Analytics"]
       50 GETTABLEKS                       R9 R9 K14 ["Analytics"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R4 K15 ["FireAnimationUploadSuccessEvent"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R4 K16 ["tagEmoteAnimationsForUpload"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K10 ["Src"]
       67 GETTABLEKS                       R12 R12 K17 ["Flags"]
       69 GETTABLEKS                       R12 R12 K18 ["getEngineFeatureEngineTagEmoteMaxPartTranslation"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K10 ["Src"]
       76 GETTABLEKS                       R13 R13 K17 ["Flags"]
       78 GETTABLEKS                       R13 R13 K19 ["getFFlagNotifyAnimationPublished"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R0 K10 ["Src"]
       83 GETTABLEKS                       R13 R13 K20 ["Actions"]
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R13 K21 ["NetworkError"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R13 K22 ["SetCurrentScreen"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K5 [require]
       97 GETTABLEKS                       R17 R13 K23 ["UploadResult"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R18 R13 K24 ["SetAssetId"]
      104 CALL                             R17 1 1
      105 DUPCLOSURE                       R18 K25 [PROTO_5]
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R7
      120 RETURN                           R18 1
