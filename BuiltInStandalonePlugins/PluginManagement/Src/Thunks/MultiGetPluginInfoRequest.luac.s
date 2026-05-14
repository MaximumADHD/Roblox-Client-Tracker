PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K2 [pairs]
        6 GETTABLEKS                       R4 R1 K3 ["data"]
        8 CALL                             R3 1 3
        9 FORGPREP_NEXT                    R3
       10 GETTABLEKS                       R8 R7 K4 ["id"]
       12 DUPTABLE                         R9 K10 [{"assetId", "name", "description", "latestVersion", "updated"}]
       13 GETTABLEKS                       R10 R7 K4 ["id"]
       15 SETTABLEKS                       R10 R9 K5 ["assetId"]
       17 GETTABLEKS                       R10 R7 K6 ["name"]
       19 SETTABLEKS                       R10 R9 K6 ["name"]
       21 GETTABLEKS                       R10 R7 K7 ["description"]
       23 SETTABLEKS                       R10 R9 K7 ["description"]
       25 GETTABLEKS                       R10 R7 K11 ["versionId"]
       27 SETTABLEKS                       R10 R9 K8 ["latestVersion"]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R11 R7 K9 ["updated"]
       32 CALL                             R10 1 1
       33 SETTABLEKS                       R10 R9 K9 ["updated"]
       35 SETTABLE                         R9 R2 R8
       36 FORGLOOP                         R3 2 ; [-27]
       38 GETIMPORT                        R3 K2 [pairs]
       40 GETUPVAL                         R4 1
       41 CALL                             R3 1 3
       42 FORGPREP_NEXT                    R3
       43 GETTABLEKS                       R9 R7 K5 ["assetId"]
       45 GETTABLE                         R8 R2 R9
       46 JUMPIFNOT                        R8 ; [+23]
       47 GETTABLEKS                       R9 R7 K5 ["assetId"]
       49 GETTABLE                         R8 R2 R9
       50 GETTABLEKS                       R9 R7 K12 ["enabled"]
       52 SETTABLEKS                       R9 R8 K12 ["enabled"]
       54 GETTABLEKS                       R9 R7 K13 ["installedVersion"]
       56 SETTABLEKS                       R9 R8 K13 ["installedVersion"]
       58 GETTABLEKS                       R9 R7 K14 ["isModerated"]
       60 SETTABLEKS                       R9 R8 K14 ["isModerated"]
       62 GETTABLEKS                       R9 R7 K15 ["autoUpdateEnabled"]
       64 SETTABLEKS                       R9 R8 K15 ["autoUpdateEnabled"]
       66 GETUPVAL                         R10 2
       67 LENGTH                           R9 R10
       68 JUMPIFEQKN                       R9 K16 [0] ; [+3]
       70 FORGLOOP                         R3 2 ; [-28]
       72 GETUPVAL                         R3 3
       73 GETUPVAL                         R5 4
       74 GETUPVAL                         R6 5
       75 GETUPVAL                         R7 6
       76 MOVE                             R8 R2
       77 CALL                             R5 3 -1
       78 NAMECALL                         R3 R3 K17 ["dispatch"]
       80 CALL                             R3 -1 0
       81 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 50
        3 JUMPIFNOTLT                      R2 R1 ; [+51]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 0
        8 LENGTH                           R4 R5
        9 LOADN                            R2 50
       10 LOADN                            R3 255
       11 FORNPREP                         R2
       12 GETUPVAL                         R8 0
       13 GETTABLE                         R7 R8 R4
       14 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K2 [table.insert]
       19 CALL                             R5 2 0
       20 GETIMPORT                        R5 K4 [table.remove]
       22 GETUPVAL                         R6 0
       23 MOVE                             R7 R4
       24 CALL                             R5 2 0
       25 LENGTH                           R5 R1
       26 JUMPIFNOTEQKN                    R5 K5 [50] ; [+13]
       28 GETUPVAL                         R7 1
       29 GETUPVAL                         R8 2
       30 GETUPVAL                         R9 3
       31 GETUPVAL                         R10 4
       32 MOVE                             R11 R1
       33 GETUPVAL                         R12 5
       34 CALL                             R7 5 -1
       35 NAMECALL                         R5 R0 K6 ["dispatch"]
       37 CALL                             R5 -1 0
       38 NEWTABLE                         R1 0 0
       40 FORNLOOP                         R2
       41 LENGTH                           R2 R1
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R2 ; [+11]
       45 GETUPVAL                         R4 1
       46 GETUPVAL                         R5 2
       47 GETUPVAL                         R6 3
       48 GETUPVAL                         R7 4
       49 MOVE                             R8 R1
       50 GETUPVAL                         R9 5
       51 CALL                             R4 5 -1
       52 NAMECALL                         R2 R0 K6 ["dispatch"]
       54 CALL                             R2 -1 0
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R1 R1 K7 ["Develop"]
       58 GETTABLEKS                       R1 R1 K8 ["v1"]
       60 GETTABLEKS                       R1 R1 K9 ["Plugins"]
       62 GETUPVAL                         R2 0
       63 CALL                             R1 1 1
       64 NEWCLOSURE                       R3 P0
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U4
       72 DUPCLOSURE                       R4 K10 [PROTO_1]
       73 NAMECALL                         R1 R1 K11 ["andThen"]
       75 CALL                             R1 3 -1
       76 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R4
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["FetchMarketplaceAssetInfo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["cleanTimestamp"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_3]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 RETURN                           R3 1
