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
       73 GETTABLEKS                       R3 R0 K9 ["assetId"]
       75 MOVE                             R4 R1
       76 CALL                             R2 2 0
       77 RETURN                           R0 0

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
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U3
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U3
       33 GETUPVAL                         R5 7
       34 GETUPVAL                         R6 8
       35 GETTABLEKS                       R7 R1 K3 ["StudioAssetService"]
       37 CALL                             R5 2 1
       38 NEWCLOSURE                       R7 P3
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 MOVE                             R8 R3
       44 NAMECALL                         R5 R5 K4 ["andThen"]
       46 CALL                             R5 3 -1
       47 RETURN                           R5 -1

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
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 RETURN                           R3 1

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
       19 GETTABLEKS                       R3 R0 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["DebugFlags"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R0 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["AssetConfigConstants"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R0 K9 ["Src"]
       37 GETTABLEKS                       R4 R4 K13 ["Actions"]
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R6 R4 K14 ["NetworkError"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K8 [require]
       46 GETTABLEKS                       R7 R4 K15 ["SetCurrentScreen"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R8 R4 K16 ["UploadResult"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K8 [require]
       56 GETTABLEKS                       R9 R4 K17 ["SetAssetId"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R9 K10 ["Util"]
       63 GETIMPORT                        R10 K8 [require]
       65 GETTABLEKS                       R11 R9 K18 ["SerializeInstances"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K8 [require]
       70 GETTABLEKS                       R12 R9 K19 ["FireAnimationUploadSuccessEvent"]
       72 CALL                             R11 1 1
       73 DUPCLOSURE                       R12 K20 [PROTO_5]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 RETURN                           R12 1
