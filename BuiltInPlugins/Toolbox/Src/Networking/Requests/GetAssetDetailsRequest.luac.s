PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R3 R0 K0 ["creator"]
        5 GETTABLEKS                       R2 R3 K1 ["KindCase"]
        7 JUMPIFEQKN                       R2 K2 [1] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 DUPTABLE                         R2 K12 [{"assetId", "assetType", "created", "creatorTargetId", "creatorType", "description", "name", "status", "updated"}]
       12 GETTABLEKS                       R4 R0 K13 ["id"]
       14 FASTCALL1                        TONUMBER R4 ; [+2]
       15 GETIMPORT                        R3 K15 [tonumber]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K3 ["assetId"]
       20 GETTABLEKS                       R5 R0 K16 ["marketplaceItemDetails"]
       22 GETTABLEKS                       R4 R5 K17 ["assetDetails"]
       24 GETTABLEKS                       R3 R4 K4 ["assetType"]
       26 SETTABLEKS                       R3 R2 K4 ["assetType"]
       28 GETTABLEKS                       R3 R0 K18 ["createdTime"]
       30 SETTABLEKS                       R3 R2 K5 ["created"]
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETTABLEKS                       R5 R0 K0 ["creator"]
       35 GETTABLEKS                       R4 R5 K19 ["User"]
       37 GETTABLEKS                       R3 R4 K20 ["UserId"]
       39 JUMP                             ; [+6]
       40 GETTABLEKS                       R5 R0 K0 ["creator"]
       42 GETTABLEKS                       R4 R5 K21 ["Group"]
       44 GETTABLEKS                       R3 R4 K22 ["GroupId"]
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
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R3 R4 K23 ["getStatus"]
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
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R4 0
        4 CALL                             R4 0 1
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETTABLEKS                       R4 R1 K1 ["item"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 JUMP                             ; [+6]
       13 LENGTH                           R4 R1
       14 LOADN                            R5 0
       15 JUMPIFLT                         R5 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADB                            R2 1
       21 JUMP                             ; [+1]
       22 LOADB                            R2 0
       23 JUMPIFNOT                        R2 ; [+44]
       24 GETUPVAL                         R4 0
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R4 R1 K1 ["item"]
       30 CALL                             R3 1 1
       31 JUMP                             ; [+1]
       32 GETTABLEN                        R3 R1 1
       33 GETTABLEKS                       R4 R3 K2 ["assetId"]
       35 GETUPVAL                         R5 2
       36 JUMPIFNOTEQ                      R4 R5 ; [+31]
       38 NEWTABLE                         R4 0 0
       40 GETIMPORT                        R5 K4 [pairs]
       42 MOVE                             R6 R3
       43 CALL                             R5 1 3
       44 FORGPREP_NEXT                    R5
       45 GETUPVAL                         R10 3
       46 MOVE                             R11 R8
       47 CALL                             R10 1 1
       48 SETTABLE                         R9 R4 R10
       49 FORGLOOP                         R5 2 ; [-5]
       51 GETUPVAL                         R5 4
       52 JUMPIFNOT                        R5 ; [+8]
       53 GETUPVAL                         R5 5
       54 GETUPVAL                         R7 6
       55 MOVE                             R8 R4
       56 CALL                             R7 1 -1
       57 NAMECALL                         R5 R5 K5 ["dispatch"]
       59 CALL                             R5 -1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 5
       62 GETUPVAL                         R7 7
       63 MOVE                             R8 R4
       64 CALL                             R7 1 -1
       65 NAMECALL                         R5 R5 K5 ["dispatch"]
       67 CALL                             R5 -1 0
       68 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+18]
       15 GETUPVAL                         R3 8
       16 GETUPVAL                         R6 9
       17 GETTABLEKS                       R5 R6 K0 ["TARGET_TYPE_ASSET"]
       19 GETUPVAL                         R7 3
       20 FASTCALL1                        TOSTRING R7 ; [+2]
       21 GETIMPORT                        R6 K2 [tostring]
       23 CALL                             R6 1 1
       24 NAMECALL                         R3 R3 K3 ["getItem"]
       26 CALL                             R3 3 1
       27 MOVE                             R5 R2
       28 MOVE                             R6 R1
       29 NAMECALL                         R3 R3 K4 ["andThen"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 8
       34 NEWTABLE                         R5 0 1
       36 GETUPVAL                         R6 3
       37 SETLIST                          R5 R6 1 [1]
       39 NAMECALL                         R3 R3 K5 ["getAssetCreationDetails"]
       41 CALL                             R3 2 1
       42 MOVE                             R5 R2
       43 MOVE                             R6 R1
       44 NAMECALL                         R3 R3 K4 ["andThen"]
       46 CALL                             R3 3 0
       47 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["SetAssetConfigData"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R6 R0 K3 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Util"]
       26 GETTABLEKS                       R4 R5 K9 ["firstToUpper"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R7 R0 K3 ["Src"]
       33 GETTABLEKS                       R6 R7 K4 ["Actions"]
       35 GETTABLEKS                       R5 R6 K10 ["NetworkError"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R1 K11 ["UpdateAssetConfigData"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R9 R0 K3 ["Src"]
       47 GETTABLEKS                       R8 R9 K12 ["Types"]
       49 GETTABLEKS                       R7 R8 K13 ["TargetTypes"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R10 R0 K3 ["Src"]
       56 GETTABLEKS                       R9 R10 K8 ["Util"]
       58 GETTABLEKS                       R8 R9 K14 ["AssetUtil"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R11 R0 K3 ["Src"]
       65 GETTABLEKS                       R10 R11 K15 ["Flags"]
       67 GETTABLEKS                       R9 R10 K16 ["getFFlagRemoveGetAssetDetails"]
       69 CALL                             R8 1 1
       70 DUPCLOSURE                       R9 K17 [PROTO_0]
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R10 K18 [PROTO_4]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 RETURN                           R10 1
