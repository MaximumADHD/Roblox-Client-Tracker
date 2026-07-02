PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Delete"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not delete asset media id:"]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K4 ["for asset id:"]
       10 GETUPVAL                         R5 2
       11 LOADK                            R6 K5 ["error:"]
       12 MOVE                             R7 R0
       13 CALL                             R1 6 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K6 ["Delete"]
       17 GETUPVAL                         R2 1
       18 LOADB                            R3 0
       19 SETTABLE                         R3 R1 R2
       20 GETUPVAL                         R1 3
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K7 ["OverallSuccess"]
       24 GETUPVAL                         R1 4
       25 GETUPVAL                         R3 5
       26 MOVE                             R4 R0
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R1 K8 ["dispatch"]
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["deleteAssetMedia"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K1 ["andThen"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 NAMECALL                         R1 R1 K2 ["catch"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetTemporaryId"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["targetId"]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 2
       13 NEWTABLE                         R6 1 0
       15 SETTABLE                         R2 R6 R3
       16 CALL                             R4 2 1
       17 SETUPVAL                         R4 2
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K2 ["Upload"]
       21 LOADB                            R5 1
       22 SETTABLE                         R5 R4 R2
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not upload asset media:"]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K4 ["for asset id:"]
       10 GETUPVAL                         R5 2
       11 LOADK                            R6 K5 ["error:"]
       12 MOVE                             R7 R0
       13 CALL                             R1 6 0
       14 GETUPVAL                         R1 1
       15 NAMECALL                         R1 R1 K6 ["GetTemporaryId"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K7 ["Upload"]
       21 LOADB                            R3 0
       22 SETTABLE                         R3 R2 R1
       23 GETUPVAL                         R2 3
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K8 ["OverallSuccess"]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 CALL                             R4 1 -1
       31 NAMECALL                         R2 R2 K9 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["postUploadAssetMedia"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 NAMECALL                         R1 R1 K2 ["catch"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["SetOrder"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["AssetMediaItemsUpdated"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K2 ["Value"]
       11 GETUPVAL                         R3 4
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not set order for asset media:"]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K4 ["for asset id:"]
       10 GETUPVAL                         R5 2
       11 LOADK                            R6 K5 ["error:"]
       12 MOVE                             R7 R0
       13 CALL                             R1 6 0
       14 GETUPVAL                         R1 3
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K6 ["SetOrder"]
       18 GETUPVAL                         R1 3
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K7 ["OverallSuccess"]
       22 GETUPVAL                         R1 4
       23 GETUPVAL                         R3 5
       24 MOVE                             R4 R0
       25 CALL                             R3 1 -1
       26 NAMECALL                         R1 R1 K8 ["dispatch"]
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["postSetAssetMediaOrder"]
        5 CALL                             R0 3 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U2
       12 NAMECALL                         R0 R0 K1 ["andThen"]
       14 CALL                             R0 2 1
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 NAMECALL                         R0 R0 K2 ["catch"]
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OverallSuccess"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ThumbnailIdsToRemove"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ThumbnailFilesToAdd"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["ThumbnailOrderToChange"]
        9 DUPTABLE                         R4 K8 [{["Delete"], ["Upload"], ["SetOrder"] = True, ["OverallSuccess"] = True}]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K3 ["Delete"]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K4 ["Upload"]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R1
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R2
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          REF R3
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U5
       40 CALL                             R6 2 1
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U5
       51 GETUPVAL                         R8 10
       52 MOVE                             R9 R5
       53 MOVE                             R10 R6
       54 CALL                             R8 2 1
       55 LOADNIL                          R9
       56 LENGTH                           R10 R8
       57 JUMPIFNOTEQKN                    R10 K9 [0] ; [+14]
       59 LENGTH                           R10 R3
       60 JUMPIFNOTEQKN                    R10 K9 [0] ; [+7]
       62 GETUPVAL                         R10 11
       63 GETTABLEKS                       R10 R10 K10 ["resolve"]
       65 CALL                             R10 0 1
       66 MOVE                             R9 R10
       67 JUMP                             ; [+21]
       68 MOVE                             R10 R7
       69 CALL                             R10 0 1
       70 MOVE                             R9 R10
       71 JUMP                             ; [+17]
       72 GETUPVAL                         R10 11
       73 GETTABLEKS                       R10 R10 K11 ["all"]
       75 MOVE                             R11 R8
       76 CALL                             R10 1 1
       77 LENGTH                           R11 R3
       78 JUMPIFNOTEQKN                    R11 K9 [0] ; [+3]
       80 MOVE                             R9 R10
       81 JUMP                             ; [+7]
       82 NEWCLOSURE                       R13 P3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 NAMECALL                         R11 R10 K12 ["andThen"]
       87 CALL                             R11 2 1
       88 MOVE                             R9 R11
       89 NEWCLOSURE                       R12 P4
       90 CAPTURE                          VAL R4
       91 NAMECALL                         R10 R9 K12 ["andThen"]
       93 CALL                             R10 2 -1
       94 CLOSEUPVALS                      R3
       95 RETURN                           R10 -1

PROTO_13:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 RETURN                           R4 1

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
       17 GETTABLEKS                       R3 R1 K7 ["Analytics"]
       19 GETTABLEKS                       R3 R3 K7 ["Analytics"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K8 ["DebugFlags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K3 ["Src"]
       31 GETTABLEKS                       R5 R5 K9 ["Actions"]
       33 GETTABLEKS                       R5 R5 K10 ["NetworkError"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R0 K3 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Types"]
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R7 R5 K12 ["AssetMediaTypes"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R0 K13 ["Packages"]
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R7 K14 ["Framework"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R7 K15 ["Dash"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R9 K16 ["append"]
       59 GETTABLEKS                       R11 R9 K17 ["findIndex"]
       61 GETTABLEKS                       R12 R9 K18 ["join"]
       63 GETTABLEKS                       R13 R9 K19 ["map"]
       65 GETTABLEKS                       R14 R8 K4 ["Util"]
       67 GETTABLEKS                       R14 R14 K20 ["Promise"]
       69 DUPCLOSURE                       R15 K21 [PROTO_13]
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R14
       78 RETURN                           R15 1
