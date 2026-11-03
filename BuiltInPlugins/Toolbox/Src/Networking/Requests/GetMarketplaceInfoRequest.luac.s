PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+52]
       10 GETTABLEKS                       R4 R2 K2 ["data"]
       12 GETTABLEN                        R3 R4 1
       13 GETTABLEKS                       R3 R3 K3 ["creator"]
       15 JUMPIFNOT                        R3 ; [+46]
       16 GETTABLEKS                       R4 R3 K4 ["typeId"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["OWNER_TYPES"]
       21 GETTABLEKS                       R5 R5 K6 ["User"]
       23 JUMPIFEQ                         R4 R5 ; [+38]
       25 GETTABLEKS                       R4 R3 K4 ["typeId"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["OWNER_TYPES"]
       30 GETTABLEKS                       R5 R5 K7 ["Group"]
       32 JUMPIFEQ                         R4 R5 ; [+29]
       34 GETTABLEKS                       R4 R3 K4 ["typeId"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K8 ["EXPERIENCE_OWNER_TYPE_ID"]
       39 JUMPIFEQ                         R4 R5 ; [+22]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K9 ["shouldDebugWarnings"]
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+13]
       46 GETIMPORT                        R4 K11 [warn]
       48 LOADK                            R5 K12 ["Toolbox Asset Configuration does not support creator type %s"]
       49 GETTABLEKS                       R8 R3 K4 ["typeId"]
       51 FASTCALL1                        TOSTRING R8 ; [+2]
       52 GETIMPORT                        R7 K14 [tostring]
       54 CALL                             R7 1 1
       55 NAMECALL                         R5 R5 K15 ["format"]
       57 CALL                             R5 2 -1
       58 CALL                             R4 -1 0
       59 LOADB                            R4 1
       60 SETUPVAL                         R4 4
       61 RETURN                           R0 0
       62 GETIMPORT                        R3 K17 [pairs]
       64 GETTABLEKS                       R6 R2 K2 ["data"]
       66 GETTABLEN                        R4 R6 1
       67 CALL                             R3 1 3
       68 FORGPREP_NEXT                    R3
       69 GETUPVAL                         R8 5
       70 GETUPVAL                         R9 6
       71 MOVE                             R10 R6
       72 CALL                             R9 1 1
       73 SETTABLE                         R7 R8 R9
       74 FORGLOOP                         R3 2 ; [-6]
       76 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onAssetConfigDataGet in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R5 K5 ["GET_ASSET_DETAIL_FAILURE"]
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+22]
        3 LENGTH                           R2 R1
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+19]
        7 GETTABLEN                        R2 R1 1
        8 GETTABLEKS                       R2 R2 K1 ["assetId"]
       10 GETUPVAL                         R3 0
       11 JUMPIFNOTEQ                      R2 R3 ; [+13]
       13 GETIMPORT                        R2 K3 [pairs]
       15 GETTABLEN                        R3 R1 1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 GETUPVAL                         R7 1
       19 GETUPVAL                         R8 2
       20 MOVE                             R9 R5
       21 CALL                             R8 1 1
       22 SETTABLE                         R6 R7 R8
       23 FORGLOOP                         R2 2 ; [-6]
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onPriceDataFailed in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R5 K5 ["GET_ASSET_DETAIL_FAILURE"]
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R1 K1 ["results"]
        6 SETTABLEKS                       R3 R2 K2 ["AssetPermissions"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onAssetPermissionsFailed in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R5 K5 ["GET_ASSET_DETAIL_FAILURE"]
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 LOADK                            R3 K0 ["Unsupported creator type"]
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K1 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       11 CALL                             R2 2 -1
       12 NAMECALL                         R0 R0 K2 ["dispatch"]
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R2 5
       18 GETUPVAL                         R3 6
       19 CALL                             R2 1 -1
       20 NAMECALL                         R0 R0 K2 ["dispatch"]
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADB                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          REF R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U2
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 NEWCLOSURE                       R6 P3
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U2
       25 NEWCLOSURE                       R7 P4
       26 CAPTURE                          VAL R1
       27 NEWCLOSURE                       R8 P5
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U2
       32 GETUPVAL                         R9 7
       33 GETTABLEKS                       R9 R9 K0 ["all"]
       35 NEWTABLE                         R10 0 3
       37 GETUPVAL                         R11 8
       38 GETUPVAL                         R13 6
       39 NAMECALL                         R11 R11 K1 ["getDevelopAssetMetadata"]
       41 CALL                             R11 2 1
       42 MOVE                             R13 R3
       43 MOVE                             R14 R4
       44 NAMECALL                         R11 R11 K2 ["andThen"]
       46 CALL                             R11 3 1
       47 GETUPVAL                         R12 8
       48 GETUPVAL                         R14 9
       49 GETTABLEKS                       R14 R14 K3 ["TARGET_TYPE_ASSET"]
       51 GETUPVAL                         R16 6
       52 FASTCALL1                        TOSTRING R16 ; [+2]
       53 GETIMPORT                        R15 K5 [tostring]
       55 CALL                             R15 1 1
       56 NAMECALL                         R12 R12 K6 ["getItem"]
       58 CALL                             R12 3 1
       59 MOVE                             R14 R5
       60 MOVE                             R15 R6
       61 NAMECALL                         R12 R12 K2 ["andThen"]
       63 CALL                             R12 3 1
       64 GETUPVAL                         R13 8
       65 GETUPVAL                         R15 6
       66 NAMECALL                         R13 R13 K7 ["getAssetPermissions"]
       68 CALL                             R13 2 1
       69 MOVE                             R15 R7
       70 MOVE                             R16 R8
       71 NAMECALL                         R13 R13 K2 ["andThen"]
       73 CALL                             R13 3 -1
       74 SETLIST                          R10 R11 -1 [1]
       76 CALL                             R9 1 1
       77 NEWCLOSURE                       R11 P6
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          REF R2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U10
       84 CAPTURE                          VAL R1
       85 NAMECALL                         R9 R9 K2 ["andThen"]
       87 CALL                             R9 2 0
       88 CLOSEUPVALS                      R2
       89 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

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
       22 GETTABLEKS                       R4 R1 K8 ["firstToUpper"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K3 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K10 ["NetworkError"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K11 ["UpdateAssetConfigData"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K3 ["Src"]
       43 GETTABLEKS                       R8 R8 K12 ["Types"]
       45 GETTABLEKS                       R8 R8 K13 ["ConfigTypes"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R0 K14 ["Packages"]
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R8 K15 ["Framework"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K4 ["Util"]
       57 GETTABLEKS                       R10 R10 K16 ["Promise"]
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K3 ["Src"]
       63 GETTABLEKS                       R12 R12 K12 ["Types"]
       65 GETTABLEKS                       R12 R12 K17 ["TargetTypes"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K3 ["Src"]
       72 GETTABLEKS                       R13 R13 K18 ["Flags"]
       74 GETTABLEKS                       R13 R13 K19 ["getFFlagToolboxExperienceCreatorTypeMarketplaceAssetConfig"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K21 [game]
       79 LOADK                            R15 K22 ["HttpService"]
       80 NAMECALL                         R13 R13 K23 ["GetService"]
       82 CALL                             R13 2 1
       83 DUPCLOSURE                       R14 K24 [PROTO_8]
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R6
       93 RETURN                           R14 1
