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
       75 MOVE                             R7 R2
       76 CALL                             R5 2 -1
       77 NAMECALL                         R3 R3 K17 ["dispatch"]
       79 CALL                             R3 -1 0
       80 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 50
        3 JUMPIFNOTLT                      R2 R1 ; [+49]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 0
        8 LENGTH                           R4 R5
        9 LOADN                            R2 50
       10 LOADN                            R3 -1
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
       26 JUMPIFNOTEQKN                    R5 K5 [50] ; [+12]
       28 GETUPVAL                         R7 1
       29 GETUPVAL                         R8 2
       30 GETUPVAL                         R9 3
       31 MOVE                             R10 R1
       32 GETUPVAL                         R11 4
       33 CALL                             R7 4 -1
       34 NAMECALL                         R5 R0 K6 ["dispatch"]
       36 CALL                             R5 -1 0
       37 NEWTABLE                         R1 0 0
       39 FORNLOOP                         R2
       40 LENGTH                           R2 R1
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R3 R2 ; [+10]
       44 GETUPVAL                         R4 1
       45 GETUPVAL                         R5 2
       46 GETUPVAL                         R6 3
       47 MOVE                             R7 R1
       48 GETUPVAL                         R8 4
       49 CALL                             R4 4 -1
       50 NAMECALL                         R2 R0 K6 ["dispatch"]
       52 CALL                             R2 -1 0
       53 GETUPVAL                         R2 5
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+13]
       56 GETUPVAL                         R1 3
       57 GETTABLEKS                       R1 R1 K7 ["Develop"]
       59 GETTABLEKS                       R1 R1 K8 ["V1"]
       61 GETTABLEKS                       R1 R1 K9 ["plugin"]
       63 GETUPVAL                         R2 0
       64 CALL                             R1 1 1
       65 NAMECALL                         R1 R1 K10 ["makeRequest"]
       67 CALL                             R1 1 1
       68 JUMP                             ; [+9]
       69 GETUPVAL                         R1 3
       70 GETTABLEKS                       R1 R1 K7 ["Develop"]
       72 GETTABLEKS                       R1 R1 K11 ["v1"]
       74 GETTABLEKS                       R1 R1 K12 ["Plugins"]
       76 GETUPVAL                         R2 0
       77 CALL                             R1 1 1
       78 NEWCLOSURE                       R4 P0
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U2
       85 DUPCLOSURE                       R5 K13 [PROTO_1]
       86 NAMECALL                         R2 R1 K14 ["andThen"]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["FetchMarketplaceAssetInfo"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["cleanTimestamp"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K12 [PROTO_3]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 RETURN                           R4 1
