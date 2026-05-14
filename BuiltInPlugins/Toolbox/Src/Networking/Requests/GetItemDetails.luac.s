PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPageInfoStale"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K1 ["responseBody"]
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K3 [pairs]
       14 GETTABLEKS                       R4 R1 K4 ["data"]
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K5 ["fromItemDetailsRequest"]
       21 MOVE                             R9 R7
       22 CALL                             R8 1 1
       23 GETTABLEKS                       R9 R8 K6 ["Asset"]
       25 JUMPIFNOT                        R9 ; [+17]
       26 GETTABLEKS                       R9 R8 K6 ["Asset"]
       28 GETTABLEKS                       R9 R9 K7 ["Id"]
       30 JUMPIFNOT                        R9 ; [+12]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K8 ["AddContextToItemDetails"]
       34 MOVE                             R10 R8
       35 GETUPVAL                         R12 4
       36 GETTABLEKS                       R13 R8 K6 ["Asset"]
       38 GETTABLEKS                       R13 R13 K7 ["Id"]
       40 GETTABLE                         R11 R12 R13
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       45 MOVE                             R10 R2
       46 MOVE                             R11 R8
       47 GETIMPORT                        R9 K11 [table.insert]
       49 CALL                             R9 2 0
       50 FORGLOOP                         R3 2 ; [-33]
       52 GETUPVAL                         R3 2
       53 GETUPVAL                         R5 5
       54 MOVE                             R6 R2
       55 GETUPVAL                         R7 6
       56 GETUPVAL                         R8 7
       57 CALL                             R5 3 -1
       58 NAMECALL                         R3 R3 K12 ["dispatch"]
       60 CALL                             R3 -1 0
       61 GETUPVAL                         R3 2
       62 GETUPVAL                         R5 8
       63 GETUPVAL                         R6 9
       64 CALL                             R5 1 -1
       65 NAMECALL                         R3 R3 K12 ["dispatch"]
       67 CALL                             R3 -1 0
       68 GETUPVAL                         R3 2
       69 GETUPVAL                         R5 10
       70 LOADB                            R6 0
       71 CALL                             R5 1 -1
       72 NAMECALL                         R3 R3 K12 ["dispatch"]
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPageInfoStale"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 3
       10 LOADB                            R4 0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K1 ["dispatch"]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 4
       17 MOVE                             R4 R0
       18 CALL                             R3 1 -1
       19 NAMECALL                         R1 R1 K1 ["dispatch"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPageInfoStale"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R0 K1 ["dispatch"]
       13 CALL                             R1 -1 0
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U2
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U10
       32 GETUPVAL                         R4 11
       33 LENGTH                           R3 R4
       34 JUMPIFNOTEQKN                    R3 K2 [0] ; [+12]
       36 MOVE                             R3 R1
       37 DUPTABLE                         R4 K4 [{"responseBody"}]
       38 DUPTABLE                         R5 K6 [{"data"}]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K5 ["data"]
       43 SETTABLEKS                       R5 R4 K3 ["responseBody"]
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 GETUPVAL                         R3 12
       48 GETUPVAL                         R5 11
       49 NAMECALL                         R3 R3 K7 ["getItemDetails"]
       51 CALL                             R3 2 1
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 NAMECALL                         R3 R3 K8 ["andThen"]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R6
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R7
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R5
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 RETURN                           R8 1

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
       17 GETTABLEKS                       R3 R1 K7 ["NetworkError"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["SetLoading"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["GetAssets"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K10 ["SetCurrentPage"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R0 K3 ["Src"]
       37 GETTABLEKS                       R6 R6 K11 ["Util"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R6 K12 ["Analytics"]
       43 GETTABLEKS                       R8 R8 K13 ["AssetAnalytics"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R6 K14 ["PageInfoHelper"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K3 ["Src"]
       55 GETTABLEKS                       R10 R10 K15 ["Models"]
       57 GETTABLEKS                       R10 R10 K16 ["AssetInfo"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K17 [PROTO_3]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 RETURN                           R10 1
