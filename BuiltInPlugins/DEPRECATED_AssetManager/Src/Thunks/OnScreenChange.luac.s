PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K1 [{"assets"}]
        2 NEWTABLE                         R5 0 0
        4 SETTABLEKS                       R5 R4 K0 ["assets"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R3 1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 -1
       14 NAMECALL                         R1 R0 K2 ["dispatch"]
       16 CALL                             R1 -1 0
       17 GETUPVAL                         R3 2
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R0 K2 ["dispatch"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R3 3
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 -1
       27 NAMECALL                         R1 R0 K2 ["dispatch"]
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R3 4
       31 NEWTABLE                         R4 0 0
       33 CALL                             R3 1 -1
       34 NAMECALL                         R1 R0 K2 ["dispatch"]
       36 CALL                             R1 -1 0
       37 GETUPVAL                         R3 5
       38 LOADK                            R4 K3 [""]
       39 CALL                             R3 1 -1
       40 NAMECALL                         R1 R0 K2 ["dispatch"]
       42 CALL                             R1 -1 0
       43 GETUPVAL                         R1 6
       44 GETTABLEKS                       R1 R1 K4 ["Path"]
       46 GETUPVAL                         R2 7
       47 GETTABLEKS                       R2 R2 K5 ["MAIN"]
       49 GETTABLEKS                       R2 R2 K4 ["Path"]
       51 JUMPIFEQ                         R1 R2 ; [+10]
       53 GETUPVAL                         R3 8
       54 GETUPVAL                         R4 9
       55 GETUPVAL                         R5 6
       56 GETTABLEKS                       R5 R5 K6 ["AssetType"]
       58 CALL                             R3 2 -1
       59 NAMECALL                         R1 R0 K2 ["dispatch"]
       61 CALL                             R1 -1 0
       62 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAssets"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetAssetsModerationData"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K9 ["SetIsFetchingAssets"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Actions"]
       42 GETTABLEKS                       R5 R5 K10 ["SetEditingAssets"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K6 ["Actions"]
       51 GETTABLEKS                       R6 R6 K11 ["SetSelectedAssets"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K6 ["Actions"]
       60 GETTABLEKS                       R7 R7 K12 ["SetSearchTerm"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETTABLEKS                       R8 R0 K5 ["Src"]
       67 GETTABLEKS                       R8 R8 K13 ["Thunks"]
       69 GETTABLEKS                       R8 R8 K14 ["GetAssets"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K4 [require]
       74 GETTABLEKS                       R9 R0 K5 ["Src"]
       76 GETTABLEKS                       R9 R9 K15 ["Util"]
       78 GETTABLEKS                       R9 R9 K16 ["Screens"]
       80 CALL                             R8 1 1
       81 DUPCLOSURE                       R9 K17 [PROTO_1]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 RETURN                           R9 1
