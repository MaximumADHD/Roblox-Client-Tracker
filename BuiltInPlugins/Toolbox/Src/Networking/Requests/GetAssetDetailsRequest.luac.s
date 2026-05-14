PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R2 R0 K0 ["creator"]
        5 GETTABLEKS                       R2 R2 K1 ["KindCase"]
        7 JUMPIFEQKN                       R2 K2 [1] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 DUPTABLE                         R2 K12 [{"assetId", "assetType", "created", "creatorTargetId", "creatorType", "description", "name", "status", "updated"}]
       12 GETTABLEKS                       R4 R0 K13 ["id"]
       14 FASTCALL1                        TONUMBER R4 ; [+2]
       15 GETIMPORT                        R3 K15 [tonumber]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K3 ["assetId"]
       20 GETTABLEKS                       R3 R0 K16 ["marketplaceItemDetails"]
       22 GETTABLEKS                       R3 R3 K17 ["assetDetails"]
       24 GETTABLEKS                       R3 R3 K4 ["assetType"]
       26 SETTABLEKS                       R3 R2 K4 ["assetType"]
       28 GETTABLEKS                       R3 R0 K18 ["createdTime"]
       30 SETTABLEKS                       R3 R2 K5 ["created"]
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETTABLEKS                       R3 R0 K0 ["creator"]
       35 GETTABLEKS                       R3 R3 K19 ["User"]
       37 GETTABLEKS                       R3 R3 K20 ["UserId"]
       39 JUMP                             ; [+6]
       40 GETTABLEKS                       R3 R0 K0 ["creator"]
       42 GETTABLEKS                       R3 R3 K21 ["Group"]
       44 GETTABLEKS                       R3 R3 K22 ["GroupId"]
       46 SETTABLEKS                       R3 R2 K6 ["creatorTargetId"]
       48 JUMPIFNOT                        R1 ; [+2]
       49 LOADK                            R3 K19 ["User"]
       50 JUMP                             ; [+1]
       51 LOADK                            R3 K21 ["Group"]
       52 SETTABLEKS                       R3 R2 K7 ["creatorType"]
       54 GETTABLEKS                       R3 R0 K8 ["description"]
       56 SETTABLEKS                       R3 R2 K8 ["description"]
       58 GETTABLEKS                       R3 R0 K9 ["name"]
       60 SETTABLEKS                       R3 R2 K9 ["name"]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K23 ["getStatus"]
       65 GETTABLEKS                       R4 R0 K24 ["moderationStatus"]
       67 GETTABLEKS                       R5 R0 K25 ["saleStatus"]
       69 CALL                             R3 2 1
       70 SETTABLEKS                       R3 R2 K10 ["status"]
       72 GETTABLEKS                       R3 R0 K26 ["updatedTime"]
       74 JUMPIF                           R3 ; [+2]
       75 GETTABLEKS                       R3 R0 K18 ["createdTime"]
       77 SETTABLEKS                       R3 R2 K11 ["updated"]
       79 RETURN                           R2 1

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
       10 JUMPIFNOT                        R2 ; [+39]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R1 K1 ["item"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K2 ["assetId"]
       17 GETUPVAL                         R5 1
       18 JUMPIFNOTEQ                      R4 R5 ; [+31]
       20 NEWTABLE                         R4 0 0
       22 GETIMPORT                        R5 K4 [pairs]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 3
       26 FORGPREP_NEXT                    R5
       27 GETUPVAL                         R10 2
       28 MOVE                             R11 R8
       29 CALL                             R10 1 1
       30 SETTABLE                         R9 R4 R10
       31 FORGLOOP                         R5 2 ; [-5]
       33 GETUPVAL                         R5 3
       34 JUMPIFNOT                        R5 ; [+8]
       35 GETUPVAL                         R5 4
       36 GETUPVAL                         R7 5
       37 MOVE                             R8 R4
       38 CALL                             R7 1 -1
       39 NAMECALL                         R5 R5 K5 ["dispatch"]
       41 CALL                             R5 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R5 4
       44 GETUPVAL                         R7 6
       45 MOVE                             R8 R4
       46 CALL                             R7 1 -1
       47 NAMECALL                         R5 R5 K5 ["dispatch"]
       49 CALL                             R5 -1 0
       50 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 GETUPVAL                         R3 7
       12 GETUPVAL                         R5 8
       13 GETTABLEKS                       R5 R5 K0 ["TARGET_TYPE_ASSET"]
       15 GETUPVAL                         R7 2
       16 FASTCALL1                        TOSTRING R7 ; [+2]
       17 GETIMPORT                        R6 K2 [tostring]
       19 CALL                             R6 1 1
       20 NAMECALL                         R3 R3 K3 ["getItem"]
       22 CALL                             R3 3 1
       23 MOVE                             R5 R2
       24 MOVE                             R6 R1
       25 NAMECALL                         R3 R3 K4 ["andThen"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 RETURN                           R3 1

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
       61 DUPCLOSURE                       R8 K15 [PROTO_0]
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R9 K16 [PROTO_4]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 RETURN                           R9 1
