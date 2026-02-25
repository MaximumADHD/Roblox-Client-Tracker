PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+40]
        3 GETTABLEKS                       R1 R0 K0 ["code"]
        5 JUMPIFEQKNIL                     R1 ; [+37]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["shouldDebugWarnings"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETIMPORT                        R1 K3 [warn]
       14 LOADK                            R2 K4 ["Got false response from PostOverrideAnimation, code:"]
       15 GETTABLEKS                       R3 R0 K0 ["code"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R3 3
       20 LOADB                            R4 0
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R1 K5 ["dispatch"]
       24 CALL                             R1 -1 0
       25 LOADNIL                          R1
       26 JUMPIFNOT                        R0 ; [+7]
       27 GETTABLEKS                       R2 R0 K6 ["message"]
       29 JUMPIFEQKS                       R2 K7 [""] ; [+4]
       31 GETTABLEKS                       R1 R0 K6 ["message"]
       33 JUMP                             ; [+1]
       34 LOADK                            R1 K8 ["Upload failed with unknown error"]
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R4 4
       37 MOVE                             R5 R1
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K5 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 2
       44 GETUPVAL                         R3 5
       45 GETTABLEKS                       R4 R0 K9 ["assetId"]
       47 CALL                             R3 1 -1
       48 NAMECALL                         R1 R1 K5 ["dispatch"]
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 2
       52 GETUPVAL                         R3 6
       53 GETUPVAL                         R6 7
       54 GETTABLEKS                       R5 R6 K10 ["SCREENS"]
       56 GETTABLEKS                       R4 R5 K11 ["UPLOADING_ASSET"]
       58 CALL                             R3 1 -1
       59 NAMECALL                         R1 R1 K5 ["dispatch"]
       61 CALL                             R1 -1 0
       62 GETUPVAL                         R1 2
       63 GETUPVAL                         R3 3
       64 LOADB                            R4 1
       65 CALL                             R3 1 -1
       66 NAMECALL                         R1 R1 K5 ["dispatch"]
       68 CALL                             R1 -1 0
       69 GETUPVAL                         R2 2
       70 NAMECALL                         R2 R2 K12 ["getState"]
       72 CALL                             R2 1 1
       73 GETTABLEKS                       R1 R2 K13 ["deleteLocal"]
       75 GETUPVAL                         R2 8
       76 GETTABLEKS                       R3 R0 K9 ["assetId"]
       78 MOVE                             R4 R1
       79 CALL                             R2 2 0
       80 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R6 R7 K0 ["SCREENS"]
        7 GETTABLEKS                       R5 R6 K1 ["UPLOADING_ASSET"]
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R0 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U7
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U4
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U4
       37 GETUPVAL                         R5 8
       38 GETUPVAL                         R6 9
       39 GETTABLEKS                       R7 R1 K3 ["StudioAssetService"]
       41 CALL                             R5 2 1
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 MOVE                             R8 R3
       48 NAMECALL                         R5 R5 K4 ["andThen"]
       50 CALL                             R5 3 -1
       51 RETURN                           R5 -1

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
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["RobloxPluginGuiService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Util"]
       23 GETTABLEKS                       R3 R4 K11 ["DebugFlags"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETTABLEKS                       R4 R5 K12 ["AssetConfigConstants"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R5 R0 K9 ["Src"]
       37 GETTABLEKS                       R4 R5 K13 ["Actions"]
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
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R10 K10 ["Util"]
       63 GETIMPORT                        R10 K8 [require]
       65 GETTABLEKS                       R11 R9 K18 ["SerializeInstances"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K8 [require]
       70 GETTABLEKS                       R12 R9 K19 ["FireAnimationUploadSuccessEvent"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K8 [require]
       75 GETTABLEKS                       R15 R0 K9 ["Src"]
       77 GETTABLEKS                       R14 R15 K20 ["Flags"]
       79 GETTABLEKS                       R13 R14 K21 ["getFFlagToolboxFixOverrideAnimationError"]
       81 CALL                             R12 1 1
       82 DUPCLOSURE                       R13 K22 [PROTO_5]
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 RETURN                           R13 1
