PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["data"]
        4 JUMPIFNOT                        R3 ; [+27]
        5 GETIMPORT                        R3 K2 [pairs]
        7 GETTABLEKS                       R4 R0 K0 ["data"]
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETTABLEKS                       R8 R7 K3 ["message"]
       13 LOADK                            R10 K4 ["%s+"]
       14 LOADK                            R11 K5 [""]
       15 NAMECALL                         R8 R8 K6 ["gsub"]
       17 CALL                             R8 3 1
       18 JUMPIFEQKS                       R8 K5 [""] ; [+7]
       20 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       22 GETTABLEKS                       R9 R7 K3 ["message"]
       24 SETTABLE                         R9 R2 R8
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       28 LOADK                            R9 K5 [""]
       29 SETTABLE                         R9 R2 R8
       30 FORGLOOP                         R3 2 ; [-20]
       32 GETIMPORT                        R3 K2 [pairs]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP_NEXT                    R3
       37 GETTABLEKS                       R9 R7 K7 ["assetVersionNumber"]
       39 GETTABLE                         R8 R2 R9
       40 JUMPIF                           R8 ; [+4]
       41 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       43 LOADK                            R9 K5 [""]
       44 SETTABLE                         R9 R2 R8
       45 FORGLOOP                         R3 2 ; [-9]
       47 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K3 [pairs]
        9 GETTABLEKS                       R4 R2 K4 ["data"]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETUPVAL                         R9 1
       14 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K7 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 2 ; [-8]
       22 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADN                            R4 50
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["getVersionsHistory"]
        6 CALL                             R1 4 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R1 R1 K1 ["andThen"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["nextPageCursor"]
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 LOADN                            R6 50
        8 MOVE                             R7 R2
        9 NAMECALL                         R3 R3 K1 ["getVersionsHistory"]
       11 CALL                             R3 4 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R3 R3 K2 ["andThen"]
       17 CALL                             R3 2 1
       18 MOVE                             R1 R3
       19 GETUPVAL                         R3 4
       20 NAMECALL                         R1 R1 K2 ["andThen"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R1 R2 K3 ["resolve"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R2
        9 CALL                             R5 1 -1
       10 NAMECALL                         R3 R3 K1 ["dispatch"]
       12 CALL                             R3 -1 0
       13 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 DUPTABLE                         R8 K4 [{"assetId", "assetVersionNumber"}]
        8 GETUPVAL                         R9 1
        9 SETTABLEKS                       R9 R8 K2 ["assetId"]
       11 GETTABLEKS                       R9 R5 K3 ["assetVersionNumber"]
       13 SETTABLEKS                       R9 R8 K3 ["assetVersionNumber"]
       15 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K7 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 [inext] ; [-15]
       23 GETUPVAL                         R1 2
       24 MOVE                             R3 R0
       25 NAMECALL                         R1 R1 K8 ["getVersionDescriptions"]
       27 CALL                             R1 2 1
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 NAMECALL                         R1 R1 K9 ["andThen"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 4
       37 GETUPVAL                         R3 6
       38 GETUPVAL                         R4 0
       39 CALL                             R3 1 -1
       40 NAMECALL                         R1 R1 K10 ["dispatch"]
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        2 JUMPIFNOT                        R2 ; [+21]
        3 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 LOADN                            R6 50
        8 MOVE                             R7 R2
        9 NAMECALL                         R3 R3 K1 ["getVersionsHistory"]
       11 CALL                             R3 4 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R3 R3 K2 ["andThen"]
       17 CALL                             R3 2 1
       18 MOVE                             R1 R3
       19 GETUPVAL                         R3 4
       20 NAMECALL                         R1 R1 K2 ["andThen"]
       22 CALL                             R1 2 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R1 R2 K3 ["resolve"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 NAMECALL                         R1 R1 K2 ["andThen"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R3
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U1
       14 MOVE                             R8 R1
       15 LOADN                            R9 50
       16 LOADNIL                          R10
       17 NAMECALL                         R6 R0 K0 ["getVersionsHistory"]
       19 CALL                             R6 4 1
       20 NEWCLOSURE                       R8 P2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R6 R6 K1 ["andThen"]
       25 CALL                             R6 2 1
       26 NEWCLOSURE                       R8 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NEWCLOSURE                       R9 P4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U5
       40 NAMECALL                         R6 R6 K1 ["andThen"]
       42 CALL                             R6 3 -1
       43 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["HttpService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Actions"]
       23 GETTABLEKS                       R3 R4 K11 ["NetworkError"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Actions"]
       32 GETTABLEKS                       R4 R5 K12 ["SetPackageDescriptions"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Src"]
       39 GETTABLEKS                       R6 R7 K10 ["Actions"]
       41 GETTABLEKS                       R5 R6 K13 ["SetVersionHistoryData"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Packages"]
       48 GETTABLEKS                       R6 R7 K15 ["Framework"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R7 R5 K16 ["Util"]
       53 GETTABLEKS                       R6 R7 K17 ["Promise"]
       55 DUPCLOSURE                       R7 K18 [PROTO_0]
       56 DUPCLOSURE                       R8 K19 [PROTO_8]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 DUPCLOSURE                       R9 K20 [PROTO_10]
       64 CAPTURE                          VAL R8
       65 RETURN                           R9 1
