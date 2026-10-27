PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["creator"]
        5 GETTABLEKS                       R1 R1 K1 ["KindCase"]
        7 GETUPVAL                         R2 0
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 JUMPIFEQKN                       R1 K2 [1] ; [+5]
       12 JUMPIFEQKN                       R1 K3 [2] ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 JUMPIFEQKN                       R1 K2 [1] ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 DUPTABLE                         R3 K13 [{"assetId", "assetType", "created", "creatorTargetId", "creatorType", "description", "name", "status", "updated"}]
       21 GETTABLEKS                       R5 R0 K14 ["id"]
       23 FASTCALL1                        TONUMBER R5 ; [+2]
       24 GETIMPORT                        R4 K16 [tonumber]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K4 ["assetId"]
       29 GETTABLEKS                       R4 R0 K17 ["marketplaceItemDetails"]
       31 GETTABLEKS                       R4 R4 K18 ["assetDetails"]
       33 GETTABLEKS                       R4 R4 K5 ["assetType"]
       35 SETTABLEKS                       R4 R3 K5 ["assetType"]
       37 GETTABLEKS                       R4 R0 K19 ["createdTime"]
       39 SETTABLEKS                       R4 R3 K6 ["created"]
       41 JUMPIFNOT                        R2 ; [+7]
       42 GETTABLEKS                       R4 R0 K0 ["creator"]
       44 GETTABLEKS                       R4 R4 K20 ["User"]
       46 GETTABLEKS                       R4 R4 K21 ["UserId"]
       48 JUMP                             ; [+6]
       49 GETTABLEKS                       R4 R0 K0 ["creator"]
       51 GETTABLEKS                       R4 R4 K22 ["Group"]
       53 GETTABLEKS                       R4 R4 K23 ["GroupId"]
       55 SETTABLEKS                       R4 R3 K7 ["creatorTargetId"]
       57 JUMPIFNOT                        R2 ; [+2]
       58 LOADK                            R4 K20 ["User"]
       59 JUMP                             ; [+1]
       60 LOADK                            R4 K22 ["Group"]
       61 SETTABLEKS                       R4 R3 K8 ["creatorType"]
       63 GETTABLEKS                       R4 R0 K9 ["description"]
       65 SETTABLEKS                       R4 R3 K9 ["description"]
       67 GETTABLEKS                       R4 R0 K10 ["name"]
       69 SETTABLEKS                       R4 R3 K10 ["name"]
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R4 R4 K24 ["getStatus"]
       74 GETTABLEKS                       R5 R0 K25 ["moderationStatus"]
       76 GETTABLEKS                       R6 R0 K26 ["saleStatus"]
       78 CALL                             R4 2 1
       79 SETTABLEKS                       R4 R3 K11 ["status"]
       81 GETTABLEKS                       R4 R0 K27 ["updatedTime"]
       83 JUMPIF                           R4 ; [+2]
       84 GETTABLEKS                       R4 R0 K19 ["createdTime"]
       86 SETTABLEKS                       R4 R3 K12 ["updated"]
       88 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R3 R1 K1 ["item"]
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 LOADB                            R2 1
        8 JUMP                             ; [+1]
        9 LOADB                            R2 0
       10 JUMPIFNOT                        R2 ; [+72]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R1 K1 ["item"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+30]
       18 JUMPIFNOTEQKNIL                  R3 ; [+29]
       20 GETIMPORT                        R4 K3 [warn]
       22 LOADK                            R5 K4 ["Toolbox Asset Configuration does not support creator kind %s"]
       23 GETTABLEKS                       R8 R1 K1 ["item"]
       25 GETTABLEKS                       R8 R8 K5 ["creator"]
       27 GETTABLEKS                       R8 R8 K6 ["KindCase"]
       29 FASTCALL1                        TOSTRING R8 ; [+2]
       30 GETIMPORT                        R7 K8 [tostring]
       32 CALL                             R7 1 1
       33 NAMECALL                         R5 R5 K9 ["format"]
       35 CALL                             R5 2 -1
       36 CALL                             R4 -1 0
       37 GETUPVAL                         R4 2
       38 GETUPVAL                         R6 3
       39 LOADK                            R7 K10 ["Unsupported creator type"]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K11 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       43 CALL                             R6 2 -1
       44 NAMECALL                         R4 R4 K12 ["dispatch"]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R4 R3 K13 ["assetId"]
       50 GETUPVAL                         R5 5
       51 JUMPIFNOTEQ                      R4 R5 ; [+31]
       53 NEWTABLE                         R4 0 0
       55 GETIMPORT                        R5 K15 [pairs]
       57 MOVE                             R6 R3
       58 CALL                             R5 1 3
       59 FORGPREP_NEXT                    R5
       60 GETUPVAL                         R10 6
       61 MOVE                             R11 R8
       62 CALL                             R10 1 1
       63 SETTABLE                         R9 R4 R10
       64 FORGLOOP                         R5 2 ; [-5]
       66 GETUPVAL                         R5 7
       67 JUMPIFNOT                        R5 ; [+8]
       68 GETUPVAL                         R5 2
       69 GETUPVAL                         R7 8
       70 MOVE                             R8 R4
       71 CALL                             R7 1 -1
       72 NAMECALL                         R5 R5 K12 ["dispatch"]
       74 CALL                             R5 -1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R5 2
       77 GETUPVAL                         R7 9
       78 MOVE                             R8 R4
       79 CALL                             R7 1 -1
       80 NAMECALL                         R5 R5 K12 ["dispatch"]
       82 CALL                             R5 -1 0
       83 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 GETUPVAL                         R3 9
       15 GETUPVAL                         R5 10
       16 GETTABLEKS                       R5 R5 K0 ["TARGET_TYPE_ASSET"]
       18 GETUPVAL                         R7 4
       19 FASTCALL1                        TOSTRING R7 ; [+2]
       20 GETIMPORT                        R6 K2 [tostring]
       22 CALL                             R6 1 1
       23 NAMECALL                         R3 R3 K3 ["getItem"]
       25 CALL                             R3 3 1
       26 MOVE                             R5 R2
       27 MOVE                             R6 R1
       28 NAMECALL                         R3 R3 K4 ["andThen"]
       30 CALL                             R3 3 0
       31 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["SetAssetConfigData"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Src"]
       24 GETTABLEKS                       R4 R4 K8 ["Util"]
       26 GETTABLEKS                       R4 R4 K9 ["firstToUpper"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K3 ["Src"]
       33 GETTABLEKS                       R5 R5 K4 ["Actions"]
       35 GETTABLEKS                       R5 R5 K10 ["NetworkError"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R1 K11 ["UpdateAssetConfigData"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K3 ["Src"]
       47 GETTABLEKS                       R7 R7 K12 ["Types"]
       49 GETTABLEKS                       R7 R7 K13 ["TargetTypes"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K3 ["Src"]
       56 GETTABLEKS                       R8 R8 K8 ["Util"]
       58 GETTABLEKS                       R8 R8 K14 ["AssetUtil"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K3 ["Src"]
       65 GETTABLEKS                       R9 R9 K12 ["Types"]
       67 GETTABLEKS                       R9 R9 K15 ["ConfigTypes"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K3 ["Src"]
       74 GETTABLEKS                       R10 R10 K16 ["Flags"]
       76 GETTABLEKS                       R10 R10 K17 ["getFFlagToolboxExperienceCreatorTypeAssetConfig"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K18 [PROTO_0]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R11 K19 [PROTO_4]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 RETURN                           R11 1
