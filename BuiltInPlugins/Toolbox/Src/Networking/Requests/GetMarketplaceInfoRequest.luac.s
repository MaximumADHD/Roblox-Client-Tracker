PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K3 [pairs]
        9 GETTABLEKS                       R6 R2 K4 ["data"]
       11 GETTABLEN                        R4 R6 1
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 GETUPVAL                         R8 1
       15 GETUPVAL                         R9 2
       16 MOVE                             R10 R6
       17 CALL                             R9 1 1
       18 SETTABLE                         R7 R8 R9
       19 FORGLOOP                         R3 2 ; [-6]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onAssetConfigDataGet in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R6 K5 ["GET_ASSET_DETAIL_FAILURE"]
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
        7 GETTABLEN                        R3 R1 1
        8 GETTABLEKS                       R2 R3 K1 ["assetId"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onPriceDataFailed in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R6 K5 ["GET_ASSET_DETAIL_FAILURE"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["failed with onAssetPermissionsFailed in GetMarketplaceInfoRequest"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K4 ["NetworkErrors"]
       15 GETTABLEKS                       R5 R6 K5 ["GET_ASSET_DETAIL_FAILURE"]
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R5 P3
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 NEWCLOSURE                       R6 P4
       21 CAPTURE                          VAL R1
       22 NEWCLOSURE                       R7 P5
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 GETUPVAL                         R9 6
       28 GETTABLEKS                       R8 R9 K0 ["all"]
       30 NEWTABLE                         R9 0 3
       32 GETUPVAL                         R10 7
       33 GETUPVAL                         R12 5
       34 NAMECALL                         R10 R10 K1 ["getDevelopAssetMetadata"]
       36 CALL                             R10 2 1
       37 MOVE                             R12 R2
       38 MOVE                             R13 R3
       39 NAMECALL                         R10 R10 K2 ["andThen"]
       41 CALL                             R10 3 1
       42 GETUPVAL                         R11 7
       43 GETUPVAL                         R14 8
       44 GETTABLEKS                       R13 R14 K3 ["TARGET_TYPE_ASSET"]
       46 GETUPVAL                         R15 5
       47 FASTCALL1                        TOSTRING R15 ; [+2]
       48 GETIMPORT                        R14 K5 [tostring]
       50 CALL                             R14 1 1
       51 NAMECALL                         R11 R11 K6 ["getItem"]
       53 CALL                             R11 3 1
       54 MOVE                             R13 R4
       55 MOVE                             R14 R5
       56 NAMECALL                         R11 R11 K2 ["andThen"]
       58 CALL                             R11 3 1
       59 GETUPVAL                         R12 7
       60 GETUPVAL                         R14 5
       61 NAMECALL                         R12 R12 K7 ["getAssetPermissions"]
       63 CALL                             R12 2 1
       64 MOVE                             R14 R6
       65 MOVE                             R15 R7
       66 NAMECALL                         R12 R12 K2 ["andThen"]
       68 CALL                             R12 3 -1
       69 SETLIST                          R9 R10 -1 [1]
       71 CALL                             R8 1 1
       72 NEWCLOSURE                       R10 P6
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R1
       76 NAMECALL                         R8 R8 K2 ["andThen"]
       78 CALL                             R8 2 0
       79 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["firstToUpper"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K3 ["Src"]
       27 GETTABLEKS                       R4 R5 K9 ["Actions"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K10 ["NetworkError"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K11 ["UpdateAssetConfigData"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R10 R0 K3 ["Src"]
       43 GETTABLEKS                       R9 R10 K12 ["Types"]
       45 GETTABLEKS                       R8 R9 K13 ["ConfigTypes"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R0 K14 ["Packages"]
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R8 K15 ["Framework"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R11 R9 K4 ["Util"]
       57 GETTABLEKS                       R10 R11 K16 ["Promise"]
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R14 R0 K3 ["Src"]
       63 GETTABLEKS                       R13 R14 K12 ["Types"]
       65 GETTABLEKS                       R12 R13 K17 ["TargetTypes"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K19 [game]
       70 LOADK                            R14 K20 ["HttpService"]
       71 NAMECALL                         R12 R12 K21 ["GetService"]
       73 CALL                             R12 2 1
       74 DUPCLOSURE                       R13 K22 [PROTO_8]
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 RETURN                           R13 1
