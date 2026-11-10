PROTO_0:
        0 MOVE                             R1 R0
        1 NEWTABLE                         R2 0 0
        3 NEWTABLE                         R3 0 0
        5 NEWTABLE                         R4 0 0
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+15]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K4 [table.insert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R5 2
       17 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       19 GETIMPORT                        R3 K4 [table.insert]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K5 ["isAllowedAssetType"]
       26 GETTABLEKS                       R4 R2 K6 ["assetType"]
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+7]
       30 GETUPVAL                         R4 5
       31 GETUPVAL                         R5 2
       32 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       34 GETIMPORT                        R3 K4 [table.insert]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [type]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K0 ["table"] ; [+4]
       14 GETTABLEKS                       R1 R0 K5 ["responseCode"]
       16 JUMP                             ; [+13]
       17 GETIMPORT                        R2 K8 [string.match]
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K10 [tostring]
       23 CALL                             R3 1 1
       24 LOADK                            R4 K11 ["^HTTP error: (%d+)$"]
       25 CALL                             R2 2 -1
       26 FASTCALL                         TONUMBER ; [+2]
       27 GETIMPORT                        R1 K13 [tonumber]
       29 CALL                             R1 -1 1
       30 FASTCALL1                        TYPE R1 ; [+3]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K4 [type]
       34 CALL                             R2 1 1
       35 JUMPIFNOTEQKS                    R2 K14 ["number"] ; [+7]
       37 LOADN                            R2 400
       38 JUMPIFNOTLE                      R2 R1 ; [+4]
       40 LOADN                            R2 499
       41 JUMPIFLE                         R1 R2 ; [+8]
       43 GETUPVAL                         R3 2
       44 GETUPVAL                         R4 1
       45 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       47 GETIMPORT                        R2 K2 [table.insert]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R1 R0
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["results"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R7 R5 K2 ["value"]
       12 FASTCALL1                        TYPE R7 ; [+2]
       13 GETIMPORT                        R6 K4 [type]
       15 CALL                             R6 1 1
       16 JUMPIFEQKS                       R6 K5 ["table"] ; [+10]
       18 GETIMPORT                        R6 K7 [error]
       20 LOADK                            R7 K8 ["No privacy result for asset %*"]
       21 GETUPVAL                         R10 1
       22 GETTABLE                         R9 R10 R4
       23 NAMECALL                         R7 R7 K9 ["format"]
       25 CALL                             R7 2 1
       26 CALL                             R6 1 0
       27 GETTABLEKS                       R6 R5 K2 ["value"]
       29 GETTABLEKS                       R6 R6 K10 ["isOpenUse"]
       31 JUMPIF                           R6 ; [+8]
       32 GETUPVAL                         R9 1
       33 GETTABLE                         R8 R9 R4
       34 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       36 MOVE                             R7 R0
       37 GETIMPORT                        R6 K12 [table.insert]
       39 CALL                             R6 2 0
       40 FORGLOOP                         R1 2 ; [-31]
       42 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R2
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R3 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 4
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["getAvatarAssetsPrivacy"]
        4 CALL                             R2 2 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["andThen"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["new"]
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 NEWTABLE                         R4 0 0
       15 NEWTABLE                         R5 0 0
       17 MOVE                             R6 R1
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R12 R5
       22 MOVE                             R15 R10
       23 NAMECALL                         R13 R0 K3 ["getAsset"]
       25 CALL                             R13 2 1
       26 NEWCLOSURE                       R15 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R10
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R13 R13 K4 ["andThen"]
       35 CALL                             R13 2 1
       36 NEWCLOSURE                       R15 P2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R10
       39 CAPTURE                          VAL R4
       40 NAMECALL                         R13 R13 K5 ["catch"]
       42 CALL                             R13 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R11 K8 [table.insert]
       46 CALL                             R11 -1 0
       47 FORGLOOP                         R6 2 ; [-27]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K9 ["all"]
       52 MOVE                             R7 R5
       53 CALL                             R6 1 1
       54 NAMECALL                         R6 R6 K10 ["await"]
       56 CALL                             R6 1 0
       57 LENGTH                           R6 R2
       58 JUMPIFNOTEQKN                    R6 K0 [0] ; [+9]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K1 ["new"]
       63 NEWCLOSURE                       R7 P3
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CALL                             R6 1 -1
       67 RETURN                           R6 -1
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K1 ["new"]
       71 NEWCLOSURE                       R7 P4
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CALL                             R6 1 -1
       77 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetConfigUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K7 ["Util"]
       25 GETTABLEKS                       R3 R3 K11 ["Promise"]
       27 GETIMPORT                        R4 K13 [game]
       29 LOADK                            R6 K14 ["HttpService"]
       30 NAMECALL                         R4 R4 K15 ["GetService"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K16 [PROTO_8]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
