PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["code"]
        2 JUMPIFEQKNIL                     R1 ; [+37]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["shouldDebugWarnings"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETIMPORT                        R1 K3 [warn]
       11 LOADK                            R2 K4 ["Got false response from PostOverrideAnimation, code:"]
       12 GETTABLEKS                       R3 R0 K0 ["code"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R3 2
       17 LOADB                            R4 0
       18 CALL                             R3 1 -1
       19 NAMECALL                         R1 R1 K5 ["dispatch"]
       21 CALL                             R1 -1 0
       22 LOADNIL                          R1
       23 JUMPIFNOT                        R0 ; [+7]
       24 GETTABLEKS                       R2 R0 K6 ["message"]
       26 JUMPIFEQKS                       R2 K7 [""] ; [+4]
       28 GETTABLEKS                       R1 R0 K6 ["message"]
       30 JUMP                             ; [+1]
       31 LOADK                            R1 K8 ["Upload failed with unknown error"]
       32 GETUPVAL                         R2 1
       33 GETUPVAL                         R4 3
       34 MOVE                             R5 R1
       35 CALL                             R4 1 -1
       36 NAMECALL                         R2 R2 K5 ["dispatch"]
       38 CALL                             R2 -1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 1
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R4 R0 K9 ["assetId"]
       44 CALL                             R3 1 -1
       45 NAMECALL                         R1 R1 K5 ["dispatch"]
       47 CALL                             R1 -1 0
       48 GETUPVAL                         R1 1
       49 GETUPVAL                         R3 5
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K10 ["SCREENS"]
       53 GETTABLEKS                       R4 R4 K11 ["UPLOADING_ASSET"]
       55 CALL                             R3 1 -1
       56 NAMECALL                         R1 R1 K5 ["dispatch"]
       58 CALL                             R1 -1 0
       59 GETUPVAL                         R1 1
       60 GETUPVAL                         R3 2
       61 LOADB                            R4 1
       62 CALL                             R3 1 -1
       63 NAMECALL                         R1 R1 K5 ["dispatch"]
       65 CALL                             R1 -1 0
       66 GETUPVAL                         R1 1
       67 NAMECALL                         R1 R1 K12 ["getState"]
       69 CALL                             R1 1 1
       70 GETTABLEKS                       R1 R1 K13 ["deleteLocal"]
       72 GETUPVAL                         R2 7
       73 CALL                             R2 0 1
       74 JUMPIFNOT                        R2 ; [+15]
       75 GETUPVAL                         R2 8
       76 GETTABLEKS                       R2 R2 K14 ["notifyAnimationPublished"]
       78 DUPTABLE                         R3 K18 [{["assetId"], ["isOverride"] = True, ["deleteLocal"], ["animationClips"]}]
       79 GETTABLEKS                       R4 R0 K9 ["assetId"]
       81 SETTABLEKS                       R4 R3 K9 ["assetId"]
       83 SETTABLEKS                       R1 R3 K13 ["deleteLocal"]
       85 GETUPVAL                         R4 9
       86 SETTABLEKS                       R4 R3 K17 ["animationClips"]
       88 CALL                             R2 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R2 10
       91 GETTABLEKS                       R3 R0 K9 ["assetId"]
       93 MOVE                             R4 R1
       94 CALL                             R2 2 0
       95 RETURN                           R0 0

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
       22 MOVE                             R4 R0
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K6 ["dispatch"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 1
       28 GETUPVAL                         R3 5
       29 LOADB                            R4 0
       30 CALL                             R3 1 -1
       31 NAMECALL                         R1 R1 K6 ["dispatch"]
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["postOverrideAnimation"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R1 R1 K1 ["andThen"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

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
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U3
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U3
       36 GETUPVAL                         R5 10
       37 GETUPVAL                         R6 8
       38 GETTABLEKS                       R7 R1 K3 ["StudioAssetService"]
       40 CALL                             R5 2 1
       41 NEWCLOSURE                       R7 P3
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U12
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 MOVE                             R8 R3
       47 NAMECALL                         R5 R5 K4 ["andThen"]
       49 CALL                             R5 3 -1
       50 RETURN                           R5 -1

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["RobloxPluginGuiService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["AnimationPublishingLibrary"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R0 K11 ["Src"]
       28 GETTABLEKS                       R4 R4 K12 ["Util"]
       30 GETTABLEKS                       R4 R4 K13 ["DebugFlags"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R5 R0 K11 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["AssetConfigConstants"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [require]
       44 GETTABLEKS                       R6 R0 K11 ["Src"]
       46 GETTABLEKS                       R6 R6 K15 ["Flags"]
       48 GETTABLEKS                       R6 R6 K16 ["getFFlagNotifyAnimationPublished"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R0 K11 ["Src"]
       53 GETTABLEKS                       R6 R6 K17 ["Actions"]
       55 GETIMPORT                        R7 K8 [require]
       57 GETTABLEKS                       R8 R6 K18 ["NetworkError"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K8 [require]
       62 GETTABLEKS                       R9 R6 K19 ["SetCurrentScreen"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K8 [require]
       67 GETTABLEKS                       R10 R6 K20 ["UploadResult"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K8 [require]
       72 GETTABLEKS                       R11 R6 K21 ["SetAssetId"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R0 K11 ["Src"]
       77 GETTABLEKS                       R11 R11 K12 ["Util"]
       79 GETIMPORT                        R12 K8 [require]
       81 GETTABLEKS                       R13 R11 K22 ["SerializeInstances"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K8 [require]
       86 GETTABLEKS                       R14 R11 K23 ["FireAnimationUploadSuccessEvent"]
       88 CALL                             R13 1 1
       89 DUPCLOSURE                       R14 K24 [PROTO_5]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 RETURN                           R14 1
